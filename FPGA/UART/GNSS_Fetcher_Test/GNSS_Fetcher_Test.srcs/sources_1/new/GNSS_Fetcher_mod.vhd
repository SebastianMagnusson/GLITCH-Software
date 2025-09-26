----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GNSS_Fetcher_mod is
  port (
    sysclk         : in  std_logic;
    reset_n        : in  std_logic;
    -- Receive from GNSS interface
    i_RX_drive      : in std_logic;
    i_gnss_data     : in std_logic_vector(7 downto 0);
    -- Interface to the gnns sender
    o_gnss_data  : out std_logic_vector(383 downto 0);
    o_gnss_drive : out std_logic;
    -- LEDS
    led1 : out std_logic
  );
end entity;

architecture rtl of GNSS_Fetcher_mod is

  type state_type is (
      SEARCH,
      CAPTURE,
      SEND
    );
    
    signal state : state_type := SEARCH;
    
    signal gnss_data_buf  : std_logic_vector(383 downto 0);
    
    signal RX_prev : std_logic := '0';

begin

  process(sysclk, reset_n)
  
    variable ready_cnt : integer range 0 to 3 := 0;
    variable byte_cnt  : integer range 0 to 48 := 0;
  
  begin
  
    if(reset_n = '0') then
      gnss_data_buf <= (others => '0');
      o_gnss_drive <= '0';
      state <= SEARCH;
      ready_cnt := 0;
      gnss_data_buf(383 downto 352) <= "00100100010001110101000001010010"; -- $GPR
      RX_prev <= i_RX_drive;
      
      led1 <= '0';
 
    elsif rising_edge(sysclk) then
      case state is
     
        when SEARCH =>
          byte_cnt := 0;
          o_gnss_drive <= '0';
          RX_prev <= i_RX_drive;
          if(i_RX_drive = '1' and RX_prev = '0') then
              if(i_gnss_data = "01010010") then -- Search for "R" (GPRM line)
                led1 <= '1';
                state <= CAPTURE;
              else
                state <= SEARCH;
              end if; 
          else
            state <= SEARCH;
          end if;
         
         
        when CAPTURE =>
        
          RX_prev <= i_RX_drive;
          if(i_RX_drive = '1' and RX_prev = '0') then
            if(byte_cnt = 44) then
              state <= SEND;
            else
              gnss_data_buf(8*(44-byte_cnt)-1 downto (8*(44-byte_cnt) - 8)) <= i_gnss_data;
              byte_cnt := byte_cnt + 1;
              state <= CAPTURE;
            end if;
          else
            state <= CAPTURE;
          end if;
          
        when SEND =>
          o_gnss_drive <= '1';
        
          state <= SEARCH;
          
        when others =>
          state <= SEARCH;

      end case;
    end if;
  end process;

  o_gnss_data <= gnss_data_buf;
  
end architecture;