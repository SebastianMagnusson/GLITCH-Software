----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------
-- V1.0
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Store_And_Read_mod is
 generic(Clockfrequency : integer := 12*1000000); -- 12 Mhz
 Port(sysclk        : in std_logic;
      reset_n       : in std_logic;
      i_busy        : in std_logic;
      i_data_read   : in std_logic_vector(7 downto 0);
      i_TX_done     : in std_logic;
      i_RX_DV       : in std_logic;
      i_RX_byte     : in std_logic_vector(7 downto 0);
      o_spi_ena     : out std_logic;
      o_spi_cont    : out std_logic;
      o_spi_data    : out std_logic;
      o_TX_DV       : out std_logic;
      o_TX_data     : out std_logic_vector(7 downto 0));
end Store_And_Read_mod;

architecture rtl of Store_And_Read_mod is

begin


end rtl;
