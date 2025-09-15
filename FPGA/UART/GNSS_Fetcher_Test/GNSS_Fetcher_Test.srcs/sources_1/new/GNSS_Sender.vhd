----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GNSS_Sender is
  port (
    sysclk         : in  std_logic;
    reset_n        : in  std_logic;
    data_ready     : in  std_logic;
    i_gnss_data      : in  std_logic_vector(383 downto 0);
    o_gnss_data      : out std_logic_vector(383 downto 0);
    o_gnss_drive     : out std_logic;
    led1           : out std_logic
  );
end entity;

architecture rtl of GNSS_Sender is

  type state_type is (RECEIVE, SEND);
  
  signal state : state_type := RECEIVE;
  
  signal gnss_data_buf     : std_logic_vector(197 downto 0);
  signal data_ready_prev : std_logic := '0';
  signal gnss_cnt          : std_logic_vector(1 downto 0);

begin

  process(sysclk, reset_n)
  
  begin
  
    if (reset_n = '0') then
      gnss_data_buf     <= (others => '0');
      o_gnss_drive      <= '0';
      data_ready_prev   <= '0';
      gnss_cnt          <= "00";
      led1              <= '0';
      
    elsif rising_edge(sysclk) then
      case state is
      
      when RECEIVE =>
        o_gnss_drive  <= '0';
        data_ready_prev <= data_ready;
        if(data_ready_prev = '0' and data_ready = '1') then
        
          gnss_data_buf <= i_gnss_data;
          
          state       <= SEND;
        else
          state <= RECEIVE;
        end if;
      
      when SEND =>             -- Stays here 1 clock cycle
        o_gnss_drive <= '1';
        state      <= RECEIVE;
        
        led1       <= '1';
      
      when others =>
        state <= RECEIVE;
        
      end case;
    end if;
  end process;
  
  o_gnss_data <= gnss_data_buf;
  
end rtl;