----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Pulse_WithDelay_Per_Second is
  generic(CLOCKFREQUENCY : integer := 100000000); -- 100 MHz clockfrequency
  Port (sysclk   : in std_logic;
        reset_n  : in std_logic;
        o_pulse  : out std_logic := '0';
        led0     : out std_logic := '0');
end Pulse_WithDelay_Per_Second;

architecture rtl of Pulse_WithDelay_Per_Second is

  type state_type is (DELAY, COUNT, PULSE);
  
  signal state : state_type := DELAY;
  
begin

  process(sysclk, reset_n) is
  
    variable sec_cnt    : integer range 0 to Clockfrequency := 0;   -- Count to 1 second
  
  begin
  
    if(reset_n = '0') then
      o_pulse <= '0';
      sec_cnt := 0;
      state   <= DELAY;
      led0    <= '0';
      
    elsif rising_edge(sysclk) then
      case state is
        
        when DELAY =>
          o_pulse <= '0';
          if(sec_cnt <= CLOCKFREQUENCY/5) then  
            sec_cnt := sec_cnt + 1;
            state   <= DELAY;
          else
            sec_cnt := 0;
            state   <= COUNT;
          end if;
       
        when COUNT =>
          o_pulse <= '0';
          if(sec_cnt <= CLOCKFREQUENCY-1) then  
            sec_cnt := sec_cnt + 1;
            state   <= COUNT;
          else
            sec_cnt := 0;
            state   <= PULSE;
          end if;

        when PULSE => -- Pulses 1 clock signal every 1 seconds
          o_pulse <= '1';
          state   <= COUNT;
          led0    <= '1';

        when others =>
          state <= COUNT;
          
      end case;
    end if;
  end process;
end rtl;