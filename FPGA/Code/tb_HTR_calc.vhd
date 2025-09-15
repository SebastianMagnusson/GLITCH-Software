library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_HTR_CALC is
end entity;

architecture sim of tb_HTR_CALC is
    -- DUT component
    component HTR_CALC
        generic (Clockfrequency : integer := 12*1000000);
        port (
            clk           : in  std_logic;
            rst           : in  std_logic;
            temp_data     : in  std_logic_vector(31 downto 0);
            temp_DV       : in  std_logic;
            HTR_request   : out std_logic;
            I2C_read_done : out std_logic;
            o_DV          : out std_logic;
            o_byte        : out std_logic_vector(7 downto 0);
            led1          : out std_logic
        );
    end component;

    -- Signals
    signal clk           : std_logic := '0';
    signal rst           : std_logic := '1';
    signal temp_data     : std_logic_vector(31 downto 0) := (others => '0');
    signal temp_DV       : std_logic := '0';
    signal HTR_request   : std_logic;
    signal I2C_read_done : std_logic;
    signal o_DV          : std_logic;
    signal o_byte        : std_logic_vector(7 downto 0);
    signal led1          : std_logic;

    -- Clock period
    constant CLK_PERIOD : time := 83 ns;  -- ~12 MHz
begin
    -- Instantiate DUT
    uut: HTR_CALC
        generic map (
            Clockfrequency => 12_000_000
        )
        port map (
            clk           => clk,
            rst           => rst,
            temp_data     => temp_data,
            temp_DV       => temp_DV,
            HTR_request   => HTR_request,
            I2C_read_done => I2C_read_done,
            o_DV          => o_DV,
            o_byte        => o_byte,
            led1          => led1
        );

    -- Clock process
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc : process
    begin
        -- Reset
        rst <= '1';
        wait for 200 ns;
        rst <= '0';

        -- Wait a little before sending data
        wait for 2 ms;

        -- Provide a temperature sample (example: raw values)
        temp_data <= x"426855F0";  -- temp_raw_2=0x0000, temp_raw_1=0xA000
        temp_DV   <= '1';
        wait for CLK_PERIOD;
        temp_DV   <= '0';

        wait for 5 ms;

        -- Provide another sample
        temp_data <= x"61A80BB8";
        temp_DV   <= '1';
        wait for CLK_PERIOD;
        temp_DV   <= '0';

        wait for 10 ms;

        -- End simulation
        assert false report "Simulation finished" severity failure;
    end process;

end architecture;
