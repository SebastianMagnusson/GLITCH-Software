library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_GNSS is
end tb_GNSS;

architecture sim of tb_GNSS is
    -- Generics
    constant Clockfrequency : integer := 12_000_000; -- 12 MHz
    constant Baud_Rate      : integer := 115200;
    constant Clks_Per_Bit   : integer := Clockfrequency / Baud_Rate;

    -- Signals
    signal sysclk      : std_logic := '0';
    signal uart_tx     : std_logic := '1';  -- idle high
    signal o_RX_DV     : std_logic;
    signal o_RX_byte   : std_logic_vector(7 downto 0);
    signal o_GNSS_DV   : std_logic;
    signal o_GNSS_data : std_logic_vector(383 downto 0);
    signal led1, led2  : std_logic;

    -- DUTs
    component UART_RXmod
        generic(Clockfrequency : integer := 12*1000000;
                Baud_Rate      : integer := 115200);
        Port(sysclk      : in  std_logic;
             i_RX_Serial : in  std_logic;
             o_RX_DV     : out std_logic;
             o_RX_byte   : out std_logic_vector(7 downto 0));
    end component;

    component GNSS_sorter
        generic(Clockfrequency : integer := 12*1000000);
        Port(sysclk      : in  std_logic;
             i_GNSS_byte : in  std_logic_vector(7 downto 0);
             i_GNSS_DV   : in  std_logic;
             o_GNSS_DV   : out std_logic;
             o_GNSS_data : out std_logic_vector(383 downto 0);
             led1        : out std_logic;
             led2        : out std_logic);
    end component;
    --------------------------------------------------------------------
    -- UART transmitter procedure (to mimic sensor)
    --------------------------------------------------------------------
   
    procedure UART_WRITE_BYTE (
        signal tx      : out std_logic;
        constant data  : in  std_logic_vector(7 downto 0)) is
    begin
        -- Start bit
        tx <= '0';
        wait for Clks_Per_Bit * 83.333 ns; -- bit time

        -- Data bits LSB first
        for i in 0 to 7 loop
            tx <= data(i);
            wait for Clks_Per_Bit * 83.333 ns;
        end loop;

        -- Stop bit
        tx <= '1';
        wait for Clks_Per_Bit * 83.333 ns;
    end procedure;



begin
    --------------------------------------------------------------------
    -- Clock generation
    --------------------------------------------------------------------
    sysclk <= not sysclk after 41.666 ns;  -- 12 MHz clock

    --------------------------------------------------------------------
    -- DUT instantiations
    --------------------------------------------------------------------
    UUT_RX : UART_RXmod
        generic map(Clockfrequency => Clockfrequency,
                    Baud_Rate      => Baud_Rate)
        port map(sysclk      => sysclk,
                 i_RX_Serial => uart_tx,
                 o_RX_DV     => o_RX_DV,
                 o_RX_byte   => o_RX_byte);

    UUT_sorter : GNSS_sorter
        generic map(Clockfrequency => Clockfrequency)
        port map(sysclk      => sysclk,
                 i_GNSS_byte => o_RX_byte,
                 i_GNSS_DV   => o_RX_DV,
                 o_GNSS_DV   => o_GNSS_DV,
                 o_GNSS_data => o_GNSS_data,
                 led1        => led1,
                 led2        => led2);

   
    --------------------------------------------------------------------
    -- Stimulus process
    --------------------------------------------------------------------
    stim_proc : process
    begin
        wait for 1 ms; -- reset time

        -- Send "$GPRMC"
        UART_WRITE_BYTE(uart_tx, x"24"); -- $
        UART_WRITE_BYTE(uart_tx, x"47"); -- G
        UART_WRITE_BYTE(uart_tx, x"50"); -- P
        UART_WRITE_BYTE(uart_tx, x"52"); -- R
        UART_WRITE_BYTE(uart_tx, x"4D"); -- M
        UART_WRITE_BYTE(uart_tx, x"43"); -- C

        -- You can extend this with comma, time, etc.
        UART_WRITE_BYTE(uart_tx, x"0D"); -- CR
        UART_WRITE_BYTE(uart_tx, x"0A"); -- LF

        wait for 5 ms; -- Let sorter process
        assert false report "Simulation finished" severity failure;
    end process;
end sim;
