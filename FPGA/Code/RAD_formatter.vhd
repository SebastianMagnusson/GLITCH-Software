----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- Takes the radiation data, radiation drive, RTC data and RTC drive.
-- Sends out an RTC request signal to get an RTC module to gather data from the RTC and send it over.
-- Returns the RAD packet with the data in the right order and ID at the start, padded to byte size.
-- Also returns a RAD packet drive to signal packet ready.
-- The ID needs to be updated to the correct one.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAD_formatter is
    generic (Clockfrequency : integer := 100*1000000);
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
		RAD_packet_got : in std_logic;
		RAD_data_DV : in std_logic;
		RAD_data : in std_logic_vector(7 downto 0);
		RTC_data_DV : in std_logic;
		RTC_data : in std_logic_vector(23 downto 0);
		RTC_request : out std_logic;
		I2C_read_done : out std_logic;
		RAD_packet_DV : out std_logic;
		RAD_packet : out std_logic_vector(5015 downto 0);
		led0 : out std_logic;
		led1 : out std_logic;
		led2 : out std_logic
    );
end RAD_formatter;

architecture rtl of RAD_formatter is
    type state_type is (s_RAD_idle, s_RTC_idle, s_RAD_send, s_cleanup); -- idle is idle but kinda not, but there is not much else to do here
    signal state : state_type := s_RAD_idle;
	
	signal RAD_bit_cnt : integer range 0 to 4983 := 4983; -- index for the radiation data (signal below)
	signal RAD_data_i : std_logic_vector(4983 downto 0) := (others => '0');
	
	signal RTC_data_i : std_logic_vector(23 downto 0) := (others => '0');
	
	constant ID : std_logic_vector(1 downto 0) := b"10";
	constant padding : std_logic_vector(5 downto 0) := b"000000";
	
	signal drive_prev : std_logic := '0';
	
begin
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '0' then
				      RAD_bit_cnt <= 4983;
				      RAD_data_i <= (others => '0');
				      RTC_data_i <= (others => '0');
				      RTC_request <= '0';
				      I2C_read_done <= '0';
				      RAD_packet_DV <= '0';
				      RAD_packet <= (others => '0');
				      state <= s_RAD_idle;
				      led0 <= '0';
				      led1 <= '0';
				      led2 <= '0';
            else
				case state is
					when s_RAD_idle =>
						led1 <= '1';
						drive_prev <= RAD_data_DV;
            if RAD_bit_cnt > 0 then
              if RAD_data_DV = '1' and drive_prev = '0' then
                led2 <= '1';
                RAD_data_i(RAD_bit_cnt downto (RAD_bit_cnt-7)) <= RAD_data;
                RAD_bit_cnt <= RAD_bit_cnt - 8;
                state <= s_RAD_idle;							
              else 				
                RAD_packet_DV <= '0';
                state <= s_RAD_idle;
              end if;
            else             
              RTC_request <= '1';
              state <= s_RTC_idle;	
						end if;
						
					when s_RTC_idle => 
            led0 <= '1';
					
					  drive_prev <= RTC_data_DV;										
						if(RTC_data_DV = '1' and drive_prev = '0') then
              RTC_request <= '0';
              I2C_read_done <= '1';
              RTC_data_i <= RTC_data;
              state <= s_RAD_send;              
						else										
						  I2C_read_done <= '0';
						  state <= s_RTC_idle;
						end if;				

						
          when s_RAD_send =>
              RAD_packet <= ID & RTC_data_i & RAD_data_i & padding;
              RAD_packet_DV <= '1';
              if RAD_packet_got = '1' then
                  state <= s_cleanup;
              else 
                  state <= s_RAD_send;
              end if;
                        
					when s_cleanup =>		
						
						drive_prev <= '0';
            RAD_bit_cnt <= 4983;
            RAD_data_i <= (others => '0');
            RTC_data_i <= (others => '0');
            RTC_request <= '0';
            I2C_read_done <= '0';
            RAD_packet_DV <= '0';
            RAD_packet <= (others => '0');
            
            state <= s_RAD_idle;	
                
				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;