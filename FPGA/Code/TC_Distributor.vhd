----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus
--
-- Takes a byte input (preferably from the UART module) along with a DV signal
-- Compares it to the available commands and sends a pulse through the correct cmd output.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TC_distributor is
    generic (
        Clockfrequency : integer := 100 * 1000000 -- 100 MHz
    );
    Port ( 
        clk   : in  std_logic;
        rst   : in  std_logic;
        TC    : in  std_logic_vector(7 downto 0);
        TC_DV : in  std_logic;
        cmd0  : out std_logic;
        cmd1  : out std_logic;
        cmd2  : out std_logic;
        cmd3  : out std_logic;
        cmd4  : out std_logic;
        cmd5  : out std_logic;
        cmd6  : out std_logic;
        led0  : out std_logic := '0'
    );
end TC_distributor;

architecture rtl of TC_distributor is

    -- State machine declaration
    type state_type is (s_idle, s_TC_check);
    signal state : state_type := s_idle;

    -- Internal signals
    signal TC_i : std_logic_vector(7 downto 0) := (others => '0');
    signal TC_prev : std_logic;

    -- Command lookup constants
    constant CMD0_lookup : std_logic_vector(0 to 7) := x"AA";
    constant CMD1_lookup : std_logic_vector(0 to 7) := x"55";
    constant CMD2_lookup : std_logic_vector(0 to 7) := x"CC";
    constant CMD3_lookup : std_logic_vector(0 to 7) := x"E4";
    constant CMD4_lookup : std_logic_vector(0 to 7) := x"94";
    constant CMD5_lookup : std_logic_vector(0 to 7) := x"33";
    constant CMD6_lookup : std_logic_vector(0 to 7) := x"1B";

begin
    process(clk)
    
      variable wait_cnt : integer range 0 to Clockfrequency := 0;
    
    begin
        if rising_edge(clk) then

              if(wait_cnt < Clockfrequency-1) then
                wait_cnt := wait_cnt + 1;
                
                cmd0 <= '0';
                cmd1 <= '0';
                cmd2 <= '0';
                cmd3 <= '0';
                cmd4 <= '0';
                cmd5 <= '0';
                cmd6 <= '0';
              else
                case state is

                    
                    -- Idle state: wait for data valid
                    when s_idle =>
                        cmd0 <= '0';
                        cmd1 <= '0';
                        cmd2 <= '0';
                        cmd3 <= '0';
                        cmd4 <= '0';
                        cmd5 <= '0';
                        cmd6 <= '0';

                        TC_prev <= TC_DV;
                        if(TC_DV = '1' and TC_prev = '0') then
                            TC_i  <= TC;
                            state <= s_TC_check;
                        else
                            TC_i  <= (others => '0');
                            state <= s_idle;
                        end if;

                    -- Check state: compare command byte
                    when s_TC_check =>
                        if  TC_i = CMD0_lookup then
                            cmd0 <= '1';
                            wait_cnt := 0;
                        elsif TC_i = CMD1_lookup then
                            cmd1 <= '1';
                            wait_cnt := 0;
                        elsif TC_i = CMD2_lookup then
                            cmd2 <= '1';
                            wait_cnt := 0;
                        elsif TC_i = CMD3_lookup then
                            cmd3 <= '1';
                            led0 <= '1';
                            wait_cnt := 0;
                        elsif TC_i = CMD4_lookup then
                            cmd4 <= '1';
                            wait_cnt := 0;
                        elsif TC_i = CMD5_lookup then
                            cmd5 <= '1';
                            wait_cnt := 0;
                        elsif TC_i = CMD6_lookup then
                            cmd6 <= '1';
                            wait_cnt := 0;
                        else
                            null;
                        end if;

                        -- Return to idle after command
                        TC_i  <= (others => '0');
                        state <= s_idle;

                end case;
            end if;
          end if;
    end process;

end rtl;
