----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- Takes GNSS data and drive and requests RTC, ALT and TEMP when they are needed. 
-- Puts everything together into a packet with ID and padding.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HK_formatter is
    generic (Clockfrequency : integer := 12*1000000; -- 12 MHz
              Baud_Rate      : integer := 400000); -- spi clock frequency
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
		HK_packet_got : in std_logic;
		GNSS_data_DV : in std_logic;
		GNSS_data : in std_logic_vector(383 downto 0);
		RTC_data_DV : in std_logic;
		RTC_data : in std_logic_vector(23 downto 0);
		RTC_request : out std_logic;
		ALT_data_DV : in std_logic;
		ALT_data : in std_logic_vector(23 downto 0);
		ALT_request : out std_logic;
		TEMP_data_DV : in std_logic;
		TEMP_data : in std_logic_vector(31 downto 0);
		TEMP_request : out std_logic;
		I2C_read_done : out std_logic;
		HK_packet_DV : out std_logic;
		HK_packet : out std_logic_vector(471 downto 0);
		led1 : out std_logic
    );
end HK_formatter;

architecture rtl of HK_formatter is
    type state_type is (s_GNSS_idle, s_RTC_idle, s_ALT_idle, s_TEMP_idle, s_HK_send, s_cleanup); -- idle is idle but kinda not, but there is not much else to do here
    signal state : state_type := s_GNSS_idle;
	
	signal GNSS_data_i : std_logic_vector(383 downto 0) := (others => '0');
	
	signal RTC_data_i : std_logic_vector(23 downto 0) := (others => '0');
	
	signal ALT_data_i : std_logic_vector(23 downto 0) := (others => '0');

	signal TEMP_data_i : std_logic_vector(31 downto 0) := (others => '0');
	
	constant ID : std_logic_vector(1 downto 0) := b"00";
	constant padding : std_logic_vector(5 downto 0) := b"000000";
	
begin
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '1' then
				GNSS_data_i <= (others => '0');	
				RTC_data_i <= (others => '0');	
				RTC_request <= '0';
				ALT_data_i <= (others => '0');	
				ALT_request <= '0';
				TEMP_data_i <= (others => '0');		
				TEMP_request <= '0';
				I2C_read_done <= '0';
				HK_packet_DV <= '0';
				HK_packet <= (others => '0');
				state <= s_GNSS_idle;
				led1 <= '0';				
            else
				case state is
					when s_GNSS_idle =>
					    led1 <= '0';
						if GNSS_data_DV = '1' then
							GNSS_data_i <= GNSS_data;
							RTC_request <= '1';
							state <= s_RTC_idle;
						else 				
							HK_packet_DV <= '0';
							state <= s_GNSS_idle;
						end if;							
												
					when s_RTC_idle =>
					    led1 <= '1';										
						if RTC_data_DV = '1' then
                            RTC_request <= '0';
                            I2C_read_done <= '1';
                            RTC_data_i <= RTC_data;
                            ALT_request <= '1';
                            state <= s_ALT_idle;              
						else										
						    I2C_read_done <= '0';
						    state <= s_RTC_idle;
						end if;				
						
					when s_ALT_idle =>	
					    led1 <= '0';			
						if ALT_data_DV = '1' then
                            ALT_request <= '0';
                            I2C_read_done <= '1';
                            ALT_data_i <= ALT_data;                            
                            TEMP_request <= '1';
                            state <= s_TEMP_idle;              
						else						    										
						    I2C_read_done <= '0';
						    state <= s_ALT_idle;
						end if;		
													
					when s_TEMP_idle =>					   
					    led1 <= '0';											
						if TEMP_data_DV = '1' then
                            TEMP_request <= '0';
                            I2C_read_done <= '1';
                            TEMP_data_i <= TEMP_data;
                            state <= s_HK_send;              
						else										
						    I2C_read_done <= '0';
						    state <= s_TEMP_idle;
						end if;		
									
                    when s_HK_send =>
                        
                        HK_packet <= ID & RTC_data_i & GNSS_data_i & TEMP_data_i & ALT_data_i & padding;
                        HK_packet_DV <= '1';	                        
                        if HK_packet_got = '1' then
                            state <= s_cleanup;	
                        else 
                            state <= s_HK_send;
                        end if;        
                                                               
					when s_cleanup =>		
                        GNSS_data_i <= (others => '0');	
                        RTC_data_i <= (others => '0');	
                        RTC_request <= '0';
                        ALT_data_i <= (others => '0');	
                        ALT_request <= '0';
                        TEMP_data_i <= (others => '0');		
                        TEMP_request <= '0';
                        I2C_read_done <= '0';
                        HK_packet_DV <= '0';
                        HK_packet <= (others => '0');
                        state <= s_GNSS_idle;		
					
				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;