----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- Module for testing the RTC (seeing how many bits is sent)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2C_RTC is
	generic(Clockfrequency : integer := 12*1000000); -- 12 Mhz
    Port (sysclk 			: in std_logic;
          reset_n 			: in std_logic;
		  
		  i_busy        : in std_logic;
		  i_data_read   : in std_logic_vector(7 downto	0);
		  
		  TX_done 		: in std_logic;
          o_i2c_ena     : out std_logic;
		  o_i2c_address : out std_logic_vector(6 downto 0);
		  o_i2c_rw      : out std_logic;
		  o_i2c_data_wr : out std_logic_vector(7 downto 0);
          RTC_DV 		: out std_logic;
          RTC_data 		: out std_logic_vector(7 downto 0);
          
          led1          : out std_logic    
     );
end I2C_RTC;

architecture rtl of I2C_RTC is
    type state_type is (s_idle, s_RTC, s_RTC_send, s_cleanup);
    signal state : state_type := s_idle;
    
    signal busy_prev : std_logic;
    signal RTC_data_i : std_logic_vector(63 downto 0); -- 8 bytes just for safety (if it turns out the RTC sends more, just add more)
       
    signal TX_done_prev : std_logic := '0';   
    signal led1_i : std_logic := '0';   
       
begin
    process(sysclk)
		variable busy_cnt   : integer range 0 to 9 := 0;                  -- Count busy transisions during one transaction		
		variable mess_cnt   : integer range 0 to 8 := 0;                  -- Counting messages sent to TX module 
		variable timeout 	: integer range 0 to 2*Clockfrequency := 0;	  -- Variable used to stop listening for responses after set time (1 ms)
        variable sec_cnt    : integer range 0 to Clockfrequency := 0;
    begin
    
        if rising_edge(sysclk) then
            if reset_n = '1' then
				busy_cnt := 0;
				mess_cnt := 0;
				timeout := 0;
				sec_cnt := 0;
				
				busy_prev <= '0';
				RTC_data_i <= (others => '0');
			
                o_i2c_address <= (others => '0');
				o_i2c_data_wr <= (others => '0');
				o_i2c_ena <= '0';
				o_i2c_rw <= '0';
				
				RTC_dv <= '0';
				RTC_data <= (others => '0');
				
                led1_i <= not led1_i;
                				
				state <= s_idle;
            else 
				case state is 
					when s_idle =>
					
					    if sec_cnt < Clockfrequency then
					        sec_cnt := sec_cnt + 1;
					        led1 <= led1_i;
					    else
					        sec_cnt := 0;
					        led1 <= not led1_i;					        
					        state <= s_RTC;
					    end if;

					when s_RTC =>
                        if timeout = 2*Clockfrequency then			
						    o_i2c_ena <= '0';
                            state <= s_RTC_send;
                            timeout := 0;
                        else
                            timeout := timeout + 1;
                        end if;
    
                        busy_prev <= i_busy;
    
                        if (busy_prev = '0' and i_busy = '1') then
                            busy_cnt := busy_cnt + 1;
                            timeout := 0;
                        end if;
    
                        case busy_cnt is
                            when 0 =>
                                RTC_DV <= '0';
                                o_i2c_ena     <= '1';
                                o_i2c_address <= "1101000";
                                o_i2c_rw      <= '0';
                                o_i2c_data_wr <= "00000000";
    
                            when 1 =>
                                RTC_DV <= '0';
                                o_i2c_rw <= '1';
    
                            when 2 =>
                                RTC_DV <= '0';
                                if(i_busy = '0') then
                                    RTC_data_i(63 downto 56) <= i_data_read;
                                end if;
    
                            when 3 =>
                                RTC_DV <= '0';
                                if(i_busy = '0') then
                                    RTC_data_i(55 downto 48) <= i_data_read;
                                end if;
    
                            when 4 =>
                                RTC_DV <= '0';
                                if(i_busy = '0') then
                                    RTC_data_i(47 downto 40) <= i_data_read;
                                end if;
    
                            when 5 =>
                                RTC_DV <= '0';
                                if(i_busy = '0') then
                                    RTC_data_i(39 downto 32) <= i_data_read;
                                end if;
    
                            when 6 =>
                                RTC_DV <= '0';
                                if(i_busy = '0') then
                                    RTC_data_i(31 downto 24) <= i_data_read;
                                end if;
    
                            when 7 =>
                                RTC_DV <= '0';
                                if(i_busy = '0') then
                                    RTC_data_i(23 downto 16) <= i_data_read;
                                end if;
    
                            when 8 =>
                                RTC_DV <= '0';
                                if(i_busy = '0') then
                                    RTC_data_i(15 downto 8) <= i_data_read;
                                end if;
    
                            when 9 =>
                                RTC_DV <= '0';
                                o_i2c_ena <= '0';
                                if(i_busy = '0') then
                                    RTC_data_i(7 downto 0) <= i_data_read;
                                    state <= s_RTC_send;
                                end if;
    
                            when others =>
                                null;
                        end case;
                            
					when s_RTC_send =>		
						if mess_cnt <= (busy_cnt - 2) then -- runs through all the bytes received
							TX_done_prev <= TX_done;
							if TX_done = '1' and TX_done_prev = '0' then
								RTC_DV <= '1';
								RTC_data <= RTC_data_i(63-(mess_cnt*8) downto 56-(mess_cnt*8));
							    mess_cnt := mess_cnt + 1;
							else 									
								RTC_DV <= '0';
							end if;
							state <= s_RTC_send;
						else 
							state <= s_cleanup;
						end if;
						                                  
					when s_cleanup =>
								
						busy_cnt := 0;
						mess_cnt := 0;
						timeout := 0;
						sec_cnt := 0;
						
						busy_prev <= '0';
						RTC_data_i <= (others => '0');
					
						o_i2c_address <= (others => '0');
						o_i2c_data_wr <= (others => '0');
						o_i2c_ena <= '0';
						o_i2c_rw <= '0';
						
						led1_i <= not led1_i;
						
						state <= s_idle;
					
				end case;
            end if;
        else
            null;
        end if;  
    end process;
end rtl;
