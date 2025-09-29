----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SAY_HEY_switchmod is
  Port (sysclk   : in std_logic;
        CMD6 : in std_logic;
		SAY_HEY_done : in std_logic;
        SAY_HEY_request  : out std_logic := '0';
        led0      : out std_logic := '0');
end SAY_HEY_switchmod;

architecture rtl of SAY_HEY_switchmod is

  type SM_State is (HIGH, LOW);
  signal State : SM_State := LOW;
  
  signal CMD6_prev : std_logic := '0';

begin

  process(sysclk) is
  begin
    if rising_edge(sysclk) then
      case State is
        
        when LOW =>
          SAY_HEY_request <= '0';
          led0     <= '0';
          
          if CMD6 = '1' and CMD6_prev = '0' then
            State <= HIGH;
            SAY_HEY_request <= '1';
            led0     <= '1';
          end if;
          CMD6_prev <= CMD6;
          
        when HIGH =>
          SAY_HEY_request <= '1';
          led0     <= '1';
          
          if SAY_HEY_done = '1' then
            State <= LOW;
            SAY_HEY_request <= '0';
            led0     <= '0';
          end if;
        
        when others =>
          State <= LOW;
          
      end case;
    end if;
  end process;
end rtl;
