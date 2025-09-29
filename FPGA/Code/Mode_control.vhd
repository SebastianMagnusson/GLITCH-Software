----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mode_control is
  Port (sysclk   : in std_logic;
        Set_power_save : in std_logic;
		Set_power_on   : in std_logic;
        o_signal  : out std_logic := '0';
        led0      : out std_logic := '0');
end Mode_control;

architecture rtl of Mode_control is

  type SM_State is (Power_on, Power_save);
  signal State : SM_State := Power_save;
  
  signal Set_power_on_prev : std_logic := '0';
  signal Set_power_save_prev : std_logic := '0';

begin

  process(sysclk) is
  begin
    if rising_edge(sysclk) then
      case State is
        
        when Power_save =>
          o_signal <= '0';
          led0     <= '0';
          
          if Set_power_on = '1' and Set_power_on_prev = '0' then
            State <= Power_on;
            o_signal <= '1';
            led0     <= '1';
          end if;
          Set_power_on_prev <= Set_power_on;
          Set_power_save_prev <= Set_power_save;
          
        when Power_on =>
          o_signal <= '1';
          led0     <= '1';
          
          if Set_power_save = '1' and Set_power_save_prev = '0' then
            State <= Power_save;
            o_signal <= '0';
            led0     <= '0';
          end if;
          Set_power_on_prev <= Set_power_on;
          Set_power_save_prev <= Set_power_save;
        
        when others =>
          State <= Power_save;
          
      end case;
    end if;
  end process;
end rtl;
