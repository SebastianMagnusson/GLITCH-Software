----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2025 15:26:00
-- Design Name: 
-- Module Name: Pulsemod - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Pulsemod is
  generic(PULSE_LENGTH : integer := 2); -- Clk signals
  Port (sysclk   : in std_logic;
        i_signal : in std_logic;
        o_pulse  : out std_logic := '0');
end Pulsemod;

architecture rtl of Pulsemod is

  signal Counter : integer range 0 to 2 := 0;
  signal Active  : std_logic := '0';

begin

  process(i_signal,sysclk) is
  begin
  
    if rising_edge(i_signal) then
      Counter <= 0;
      Active  <= '1';
    end if;
    
    if rising_edge(sysclk) then
      if Active = '1' then
        if Counter < 2 then
          Counter <= Counter + 1;
          o_pulse <= '1';
        else
          o_pulse <= '0';
          Counter <= 0;
        end if;
      else
        o_pulse <= '0';
      end if;
    end if;
    
  end process;
end rtl;
