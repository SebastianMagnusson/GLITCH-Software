----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
-- V2.0 This version incorparates the i_dump signal. It makes it send its data
--      and clear all its data buffers. The idea is to have this happen once every 
--      second.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BF_Data_Collector_Draft2 is
  port (
    sysclk         : in  std_logic;
    reset_n        : in  std_logic;
    data_ready     : in  std_logic;
    i_dump         : in std_logic;
    i_BF_data      : in  std_logic_vector(46 downto 0);
    o_BF_data      : out std_logic_vector(197 downto 0);
    o_BF_drive     : out std_logic;
    led1           : out std_logic
  );
end entity;

architecture rtl of BF_Data_Collector_Draft2 is
  
  signal just_dumped : std_logic := '0'; -- Indicates that previous clc cycle was a dump
  
  signal flip_cnt     : integer range 0 to 4 := 0;    -- Flips per BF_Packet
  signal flight_total : integer range 0 to 255 := 0;  -- Flips per reset (or flight)
  
  signal BF_data_buf     : std_logic_vector(197 downto 0);
  signal data_ready_prev : std_logic := '0';

begin

  process(sysclk, reset_n)
  
  begin
  
    if (reset_n = '0') then
      BF_data_buf     <= (others => '0');
      o_BF_drive      <= '0';
      data_ready_prev <= '0';
      flip_cnt        <= 0;
      flight_total    <= 0;
      just_dumped     <= '0';
      
      led1            <= '0';
      
    elsif rising_edge(sysclk) then
    
      case i_dump is  -- i_dump is high 1 clc cycle every second. (Dumps one time per second)
      
        when '0' => -- RECEIVE
          o_BF_drive  <= '0';
          data_ready_prev <= data_ready;
          
          if(just_dumped = '1') then                              -- Cleans up previous data
            BF_data_buf(189 downto 0) <= (others => '0');         -- Clears everything but the total counter
            flip_cnt                  <= 0;
            just_dumped               <= '0';
            
          elsif(data_ready_prev = '0' and data_ready = '1') then  -- New bitflip data
          
            if(flight_total = 255) then         -- Overflow
              flight_total <= 0;
              BF_data_buf(197 downto 190) <= (others => '0');
            else
              flight_total <= flight_total + 1; -- Counts total ampount of flips since reset.
              BF_data_buf(197 downto 190) <= std_logic_vector(to_unsigned((flight_total+1), 8));
            end if;
            
            
            case flip_cnt is 
              when 0 =>                                  -- 1 bitflip
                BF_data_buf(189 downto 188) <= "00";
                BF_data_buf(187 downto 141) <= i_BF_data;
                flip_cnt                    <= flip_cnt + 1;
              
              when 1 =>                                  -- 2 bitflips
                BF_data_buf(189 downto 188) <= "01";
                BF_data_buf(140 downto 94)  <= i_BF_data;
                flip_cnt                    <= flip_cnt + 1;
              
              when 2 =>                                  -- 3 bitflips
                BF_data_buf(189 downto 188) <= "10";
                BF_data_buf(93 downto 47)   <= i_BF_data;
                flip_cnt                    <= flip_cnt + 1;
              
              when 3 =>                                  -- 4 bitflips
                BF_data_buf(189 downto 188) <= "11";
                BF_data_buf(46 downto 0)    <= i_BF_data;
                flip_cnt                    <= flip_cnt + 1;
                
              when 4 =>       -- Does nothing, waits for i_dump to go high
                null;   
                
              when others =>
                null;
              
            end case;
          end if;
        
        when '1' => -- DUMP           -- Stays here 1 clock cycle
          o_BF_drive <= '1';
          just_dumped <= '1'; 
          
          led1       <= '1';
        
        when others =>
          null;
          
      end case;
    end if;
  end process;
  
  o_BF_data <= BF_data_buf;
  
end rtl;