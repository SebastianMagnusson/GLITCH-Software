----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SET_RTC_switchmod is
  Port (sysclk   : in std_logic;
        CMD5 : in std_logic;
		SET_RTC_done : in std_logic;
        SET_RTC_request  : out std_logic := '0';
        led0      : out std_logic := '0');
end SET_RTC_switchmod;

architecture rtl of SET_RTC_switchmod is

  type SM_State is (HIGH, LOW);
  signal State : SM_State := LOW;
  
  signal CMD5_prev : std_logic := '0';

begin

  process(sysclk) is
  begin
    if rising_edge(sysclk) then
      case State is
        
        when LOW =>
          SET_RTC_request <= '0';
          led0     <= '0';
          
          if CMD5 = '1' and CMD5_prev = '0' then
            State <= HIGH;
            SET_RTC_request <= '1';
            led0     <= '1';
          end if;
          CMD5_prev <= CMD5;
          
        when HIGH =>
          SET_RTC_request <= '1';
          led0     <= '1';
          
          if SET_RTC_done = '1' then
            State <= LOW;
            SET_RTC_request <= '0';
            led0     <= '0';
          end if;
        
        when others =>
          State <= LOW;
          
      end case;
    end if;
  end process;
end rtl;
