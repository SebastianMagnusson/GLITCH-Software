----------------------------------------------------------------------------------
-- Testbench for I2C_RTC
-- Engineer: ChatGPT
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_I2C_RTC is
end tb_I2C_RTC;

architecture sim of tb_I2C_RTC is

    -- Component declaration
    component I2C_RTC
        generic(Clockfrequency : integer := 12*1000000);
        port(
            sysclk           : in  std_logic;
            reset_n           : in  std_logic;

            i_busy        : in  std_logic;
            i_data_read   : in  std_logic_vector(7 downto 0);

            TX_done       : in  std_logic;
            o_i2c_ena     : out std_logic;
            o_i2c_address : out std_logic_vector(6 downto 0);
            o_i2c_rw      : out std_logic;
            o_i2c_data_wr : out std_logic_vector(7 downto 0);
            RTC_DV        : out std_logic;
            RTC_data      : out std_logic_vector(7 downto 0);
            
            led1          : out std_logic
        );
    end component;

    -- Signals for testbench
    signal sysclk           : std_logic := '0';
    signal reset_n           : std_logic := '0';
    signal i_busy        : std_logic := '0';
    signal i_data_read   : std_logic_vector(7 downto 0) := (others => '0');
    signal TX_done       : std_logic := '0';
    signal o_i2c_ena     : std_logic;
    signal o_i2c_address : std_logic_vector(6 downto 0);
    signal o_i2c_rw      : std_logic;
    signal o_i2c_data_wr : std_logic_vector(7 downto 0);
    signal RTC_DV        : std_logic;
    signal RTC_data      : std_logic_vector(7 downto 0);
    signal led1          : std_logic;

    constant sysclk_PERIOD : time := 83.333 ns;  -- 12 MHz clock

begin

    -- DUT instantiation
    uut: I2C_RTC
        port map (
            sysclk           => sysclk,
            reset_n           => reset_n,
            i_busy        => i_busy,
            i_data_read   => i_data_read,
            TX_done       => TX_done,
            o_i2c_ena     => o_i2c_ena,
            o_i2c_address => o_i2c_address,
            o_i2c_rw      => o_i2c_rw,
            o_i2c_data_wr => o_i2c_data_wr,
            RTC_DV        => RTC_DV,
            RTC_data      => RTC_data,
            led1          => led1
        );

    -- Clock generation
    sysclk_process : process
    begin
        sysclk <= '0';
        wait for sysclk_PERIOD/2;
        sysclk <= '1';
        wait for sysclk_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset sequence
        reset_n <= '1';
        wait for 200 ns;
        reset_n <= '0';
        wait for 500 ns;
        
        wait for 1000 ms;

        -- Simulate I2C transactions
        -- Fireset_n transition: module enables I2C write
        i_busy <= '1';
        wait for 2*sysclk_PERIOD;
        i_busy <= '0';
        
        -- Second thing
        i_busy <= '1';
        wait for 2*sysclk_PERIOD;
        i_busy <= '0';

        -- Provide fake data for reading (simulate RTC response)
        wait for 5*sysclk_PERIOD;
        i_data_read <= x"12";  -- Byte 1
        i_busy <= '1';
        wait for 2*sysclk_PERIOD;
        i_busy <= '0';

        wait for 5*sysclk_PERIOD;
        i_data_read <= x"34";  -- Byte 2
        i_busy <= '1';
        wait for 2*sysclk_PERIOD;
        i_busy <= '0';

        wait for 5*sysclk_PERIOD;
        i_data_read <= x"56";  -- Byte 3
        i_busy <= '1';
        wait for 2*sysclk_PERIOD;
        i_busy <= '0';

        wait for 5*sysclk_PERIOD;
        i_data_read <= x"78";  -- Byte 4
        i_busy <= '1';
        wait for 2*sysclk_PERIOD;
        i_busy <= '0';

        -- Simulate TX_done handshakes
        wait for 2 ms;
        TX_done <= '1';
        wait for sysclk_PERIOD;
        TX_done <= '0';
        wait for sysclk_PERIOD;
        TX_done <= '1';
        wait for sysclk_PERIOD;
        TX_done <= '0';
        wait for sysclk_PERIOD;
        TX_done <= '1';
        wait for sysclk_PERIOD;
        TX_done <= '0';
        wait for sysclk_PERIOD;
        TX_done <= '1';
        wait for sysclk_PERIOD;
        TX_done <= '0';
        wait for sysclk_PERIOD;

        -- End simulation
        wait for 2 us;
        assert false report "Simulation finished" severity failure;
    end process;

end sim;
