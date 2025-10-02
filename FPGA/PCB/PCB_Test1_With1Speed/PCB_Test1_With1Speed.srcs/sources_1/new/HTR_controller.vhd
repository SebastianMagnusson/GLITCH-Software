--------------------------------------
--- Logic:   HTR_CONTROLLER MODULE ---
--- Author:  Matej Nespor ------------
--- Date:    13-05-2025 --------------
--------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HTR_controller is
    port (
        clk        : in  std_logic;
        HTR_rst        : in  std_logic;
        HTR_DUTY   : in  integer;
        nmos_out   : out std_logic;
        diag_out   : out std_logic
    );
end entity;

architecture rtl of HTR_controller is
    signal counter       : integer range 0 to 9 := 0; -- ticks 0 to 9...
    signal pwm_level     : integer range 0 to 10 := 0; -- duty level from 0 to 10!
    signal pwm_sig       : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if HTR_rst = '0' then
                counter   <= 0;
            else
                if counter = 9 then
                    counter <= 0;
                else
                    counter <= counter + 1;
                end if;
            end if;

            -- HTR_DUTY to pwm_level 0 to 10, else 0!
            if HTR_DUTY >= 1 and HTR_DUTY <= 10 then
                pwm_level <= HTR_DUTY;
            else
                pwm_level <= 0;
            end if;

            -- pwm ctrl logic
            if counter >= 10 - pwm_level then
                pwm_sig <= '1';
            else
                pwm_sig <= '0';
            end if;
        end if;
    end process;

    -- outputs
    nmos_out <= pwm_sig;
    diag_out <= pwm_sig;

end architecture;