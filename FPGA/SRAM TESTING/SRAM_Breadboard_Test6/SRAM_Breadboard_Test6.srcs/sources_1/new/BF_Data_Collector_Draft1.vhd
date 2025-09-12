----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------
-- DO NOT USE THIS VERSION!!! (HAS BEEN CHANGED FROM JUST WRITING VALUES)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BF_Data_Collector_Draft1 is
  port (
    sysclk         : in  std_logic;
    reset_n        : in  std_logic;
    data_ready     : in  std_logic;
    i_BF_data      : in  std_logic_vector(46 downto 0);
    o_BF_data      : out std_logic_vector(197 downto 0);
    o_BF_drive     : out std_logic
  );
end entity;

architecture rtl of BF_Data_Collector_Draft1 is

  type state_type is (RECEIVE, SEND);
  
  signal state : state_type := RECEIVE;
  
  signal BF_data_buf     : std_logic_vector(197 downto 0);
  signal data_ready_prev : std_logic := '0';
  signal BF_cnt          : std_logic_vector(1 downto 0);

begin

  process(sysclk, reset_n)
  
  begin
  
    if (reset_n = '0') then
      o_BF_data       <= (others => '0');
      BF_data_buf     <= (others => '0');
      o_BF_drive      <= '0';
      data_ready_prev <= '0';
      BF_cnt          <= "00";
      
    elsif rising_edge(sysclk) then
      case state is
      
      when RECEIVE =>
        o_BF_drive  <= '0';
        data_ready_prev <= data_ready;
        if(data_ready_prev = '0' and data_ready = '1') then
        
          ----------------------------------------------------
          -- change when real, this is temporary for test bit
          BF_data_buf(197 downto 188) <= (others => '1'); -- Fake data for now
          BF_data_buf(187 downto 141) <= i_BF_data;       -- Bit flip data duplicated
          BF_data_buf(140 downto 94) <= i_BF_data;       -- Bit flip data duplicated
          BF_data_buf(93 downto 47) <= i_BF_data;       -- Bit flip data duplicated
          BF_data_buf(46 downto 0) <= i_BF_data;       -- Bit flip data duplicated
          -- change when real, this is temporary for test bit
          -----------------------------------------------------
          
          state       <= SEND;
        else
          state <= RECEIVE;
        end if;
      
      when SEND =>             -- Stays here 1 clock cycle
        o_BF_drive <= '1';
        state      <= RECEIVE;
      
      when others =>
        state <= RECEIVE;
        
      end case;
    end if;
  end process;
  
  o_BF_data <= BF_data_buf;
  
end rtl;