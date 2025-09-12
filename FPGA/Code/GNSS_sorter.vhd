
----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: Rasmus
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GNSS_sorter is
  generic(Clockfrequency : integer := 12*1000000;
          Baud_rate      : integer := 115200);
  Port(sysclk        : in  std_logic;
       i_GNSS_byte   : in  std_logic_vector(7 downto 0);
	   i_GNSS_DV     : in  std_logic;
       o_GNSS_DV     : out std_logic;
       o_GNSS_data   : out std_logic_vector(383 downto 0);
       led1          : out std_logic;
       led2          : out std_logic
       );
end GNSS_sorter;

architecture rtl of GNSS_sorter is

	type t_SM_Main is (s_Idle, s_Read, s_Sort, s_Send, s_Cleanup);
	signal state : t_SM_Main := s_Cleanup;
    
	constant bytes   : integer := 200;
	constant time_limit : integer := Clockfrequency/5;
	constant lookup  : std_logic_vector(7 downto 0) := x"24"; --$GPRMC
	
	signal full_data : std_logic_vector(bytes*8-1 downto 0) := (others => '0');
	signal GNSS_data : std_logic_vector(383 downto 0) := (others => '0');
	
	signal byte_cnt : integer range 0 to bytes := 0;
	signal time_cnt : integer range 0 to time_limit := 0;
	
	signal i_led1 : std_logic := '0';
	signal i_led2 : std_logic := '0';
     
begin
  
	process(sysclk)
	begin
		if rising_edge(sysclk) then
		            
            case state is    
            
                when s_Idle =>
                
                    if i_GNSS_DV = '1' then
                        full_data((bytes-byte_cnt)*8-1 downto (bytes-1-byte_cnt)*8) <= i_GNSS_byte;
                        byte_cnt <= 1;
                        time_cnt <= 0;
                        state <= s_Read;
                    else
                        byte_cnt <= 0;
                        time_cnt <= 0;
                        o_GNSS_DV <= '0';
                        state <= s_Idle;
                    end if;
            
                when s_Read =>
                    
                    if byte_cnt >= bytes then
                        byte_cnt <= 0;
                        time_cnt <= 0;                    
                        state <= s_Sort;                                                                  
                    else
                        if time_cnt >= time_limit and byte_cnt > 0 then                           
                            byte_cnt <= 0;
                            time_cnt <= 0;                    
                            state <= s_Sort;
                        else     
                            if i_GNSS_DV = '0' then
                                time_cnt <= time_cnt + 1;	
                                state <= s_Read;	
                            else 
                                full_data((bytes-byte_cnt)*8-1 downto (bytes-1-byte_cnt)*8) <= i_GNSS_byte;
                                byte_cnt <= byte_cnt + 1;
                                time_cnt <= 0;                    
                                state <= s_Read;
                            end if;				
                        end if;    	
                    end if;                    
                    
				when s_Sort =>
				
				    if byte_cnt + 48 > bytes then
				        o_GNSS_data <= full_data((bytes)*8-1 downto (bytes-48)*8);
				        o_GNSS_DV <= '1';
				        state <= s_Cleanup;				        
				    else    				        
                        if full_data((bytes-byte_cnt)*8-1 downto (bytes-1-byte_cnt)*8) = lookup then
                            GNSS_data <= full_data((bytes-byte_cnt)*8-1 downto (bytes-48-byte_cnt)*8);
                            state <= s_Send;
                            led1 <= i_led1;
                            i_led1 <= not i_led1;
                        else 
                            byte_cnt <= byte_cnt + 1;
                            state <= s_Sort;
                        end if;
                    end if;
				    
                when s_Send	=>
                    
                    o_GNSS_data <= GNSS_data;
                    o_GNSS_DV <= '1';
                    state <= s_Cleanup;
                
                when s_Cleanup =>
                    
                    o_GNSS_data <= (others => '0');
                    o_GNSS_DV   <= '0';
                    GNSS_data   <= (others => '0');
                    
                    byte_cnt <= 0;
					time_cnt <= 0;
					
					led2 <= i_led2;
                    i_led2 <= not i_led2;
					
                    state <= s_Idle;
                    
                when others =>
                    state <= s_Cleanup;
            
            end case;
		end if;
	end process;

end rtl;
