
----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GNSS_fetcher is
  generic(Clockfrequency : integer := 12*1000000);
  Port(sysclk      : in  std_logic;
       i_GNSS_byte : in  std_logic_vector(7 downto 0);
	   i_GNSS_DV   : in  std_logic;
       o_RX_GNSS_DV     : out std_logic;
       o_RX_GNSS_data   : out std_logic_vector(383 downto 0);
       led1             : out std_logic
       );
end GNSS_fetcher;

architecture rtl of GNSS_fetcher is

	type t_SM_Main is (s_Idle, s_Before_count, s_GNSS_count, s_After_count, s_Send, s_Cleanup);
	signal state : t_SM_Main := s_Idle;
  
	signal GNSS_data : std_logic_vector(383 downto 0) := (others => '0');
	
	signal i_GNSS_DV_prev : std_logic := '0';
     
begin
  
	process(sysclk)
		variable byte_cnt : integer range 0 to 67 := 0;
		
	begin
		if rising_edge(sysclk) then
            case state is
                when s_Idle =>
                    led1 <= '0';
                    i_GNSS_DV_prev <= i_GNSS_DV;
                    if i_GNSS_DV = '1' and i_GNSS_DV_prev = '0' then
                        state <= s_Before_count;
                        byte_cnt := 1;
                        i_GNSS_DV_prev <= '1';
                    else
                        state <= s_idle;
                    end if;
                    
                when s_Before_count =>
                    led1 <= '1';                    
                    i_GNSS_DV_prev <= i_GNSS_DV;
                    if i_GNSS_DV = '1' and i_GNSS_DV_prev = '0' then
                        if byte_cnt < 67 then
                            byte_cnt := byte_cnt + 1;
                            state <= s_Before_count;
                        else 
                            byte_cnt := 0;
                            state <= s_GNSS_count;
                        end if;
                        i_GNSS_DV_prev <= '1';
                    else 
                        state <= s_Before_count;
                    end if;
                
                when s_GNSS_count => 
                    led1 <= '0';
                    i_GNSS_DV_prev <= i_GNSS_DV;
                    if i_GNSS_DV = '1' and i_GNSS_DV_prev = '0' then
                        if byte_cnt < 48 then
                            byte_cnt := byte_cnt + 1;
                            GNSS_data((48-byte_cnt)*8-1 downto (47-byte_cnt)*8) <= i_GNSS_byte;                            							
                        else
                            byte_cnt := 0;
                            state <= s_After_count;
                        end if;
                        i_GNSS_DV_prev <= '1';
                    else 
                        state <= s_GNSS_count;
                    end if;
                
                when s_After_count =>
                    led1 <= '1';
                    i_GNSS_DV_prev <= i_GNSS_DV;
                    if i_GNSS_DV = '1' and i_GNSS_DV_prev = '0' then
                        if byte_cnt < 36 then
                            byte_cnt := byte_cnt + 1;
                            state <= s_After_count;
                        else 
                            byte_cnt := 0;
                            state <= s_Send;
                        end if;
                        i_GNSS_DV_prev <= '1';
                    else 
                        state <= s_After_count;
                    end if;
                    
                when s_Send	=>
                    
                    o_RX_GNSS_data <= GNSS_data;
                    o_RX_GNSS_DV <= '1';
                    state <= s_Cleanup;
                
                when s_Cleanup =>
                    
                    o_RX_GNSS_data <= (others => '0');
                    o_RX_GNSS_DV <= '0';
                    GNSS_data <= (others => '0');
                    
                    byte_cnt := 0;
                    state <= s_idle;
                    
                when others =>
                    state <= s_Cleanup;
            
            end case;
		end if;
	end process;

end rtl;
