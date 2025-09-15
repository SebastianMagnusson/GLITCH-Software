----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- Takes the SRAM data and an SRAM drive, along with RTC stuff and formats it for sending
-- OBS: Right now the SRAM data is done bytewise (can be changed easily if the bit-flip algorithm gives the entire thing at once)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BF_formatter is
    generic (Clockfrequency : integer := 12*1000000; -- 12 MHz
              Baud_Rate      : integer := 400000); -- spi clock frequency
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
		BF_packet_got : in std_logic;
		SRAM_data_DV : in std_logic;
		SRAM_data : in std_logic_vector(197 downto 0);
		RTC_data_DV : in std_logic;
		RTC_data : in std_logic_vector(23 downto 0);
		RTC_request : out std_logic;
		I2C_read_done : out std_logic;
		BF_packet_DV : out std_logic;
		BF_packet : out std_logic_vector(223 downto 0);
		led1 : out std_logic
    );
end BF_formatter;

architecture rtl of BF_formatter is
    type state_type is (s_SRAM_idle, s_RTC_idle, s_BF_send, s_cleanup); -- idle is idle but kinda not, but there is not much else to do here
    signal state : state_type := s_SRAM_idle;
	
	signal SRAM_data_i : std_logic_vector(197 downto 0) := (others => '0');
	
	signal RTC_data_i : std_logic_vector(23 downto 0) := (others => '0');
	
	signal led : std_logic := '1';
	
	constant ID : std_logic_vector(1 downto 0) := b"01";
	
begin
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '0' then
				SRAM_data_i <= (others => '0');	
				RTC_data_i <= (others => '0');
				RTC_request <= '0';
				I2C_read_done <= '0';
				BF_packet_DV <= '0';
				BF_packet <= (others => '0');
				state <= s_SRAM_idle;
            else
				case state is
					when s_SRAM_idle =>
					
						if SRAM_data_DV = '1' then
							SRAM_data_i <= SRAM_data;
							RTC_request <= '1';
							state <= s_RTC_idle;
						else 				
							BF_packet_DV <= '0';
							state <= s_SRAM_idle;
						end if;	
											
					when s_RTC_idle =>
					
					 led1 <= led;
					
						I2C_read_done <= '0';							
						if RTC_data_DV = '1' then
                            RTC_request <= '0';
                            I2C_read_done <= '1';
                            RTC_data_i <= RTC_data;
                            state <= s_BF_send;              
						else
						    state <= s_RTC_idle;
						end if;	
                    
                    when s_BF_send =>               
                        
                        BF_packet <= ID & RTC_data_i & SRAM_data_i;
                        BF_packet_DV <= '1';
                        I2C_read_done <= '1';
                        if BF_packet_got = '1' then                        
                            state <= s_cleanup;
						else 
						    state <= s_BF_send;
                        end if;
                                      
					when s_cleanup =>	
													
                        led <= not led;                                   
                        SRAM_data_i <= (others => '0');
                        RTC_data_i <= (others => '0');
                        RTC_request <= '0';
                        I2C_read_done <= '0';
                        BF_packet_DV <= '0';
                        BF_packet <= (others => '0');
                        
                        state <= s_SRAM_idle;		
						
				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;