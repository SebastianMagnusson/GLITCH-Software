--------------------------------------
--- Logic:   HTR_CONTROLLER MODULE ---
--- Author:  Rasmus ------------
--- Date:    13-05-2025 --------------
--------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BF_data_gen is
	generic (Clockfrequency : integer := 12*1000000);
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
		SRAM_DV    : out std_logic;
		SRAM_data  : out std_logic_vector(197 downto 0);
		led1       : out std_logic
    );
end entity;

architecture rtl of BF_data_gen is

	type state_type is (IDLE, SEND, CLEAN);
	signal state : state_type := CLEAN;
	
	signal led : std_logic := '0';

begin

    process(clk)
		variable sec_cnt : integer range 0 to Clockfrequency := 0;
    begin
        if rising_edge(clk) then
			
			case state is
			
				when IDLE => 
				
					if sec_cnt < Clockfrequency then
						sec_cnt := sec_cnt + 1;
						state <= IDLE;
					else
						sec_cnt := 0;
						state <= SEND;
					end if;
					
				when SEND =>
					
					led1 <= led;
					SRAM_DV <= '1';
					SRAM_data(197 downto 192) <= (others => '0');
					SRAM_data(191 downto 184) <= (others => '1');
					SRAM_data(7 downto 0) <= (others => '1');
					state <= CLEAN;
					
				when CLEAN =>
				
				    led <= not led;
					SRAM_data <= (others => '0');
					SRAM_DV <= '0';
					sec_cnt := 0;
					state <= IDLE;
					
			end case;
        end if;
    end process;
end architecture;

