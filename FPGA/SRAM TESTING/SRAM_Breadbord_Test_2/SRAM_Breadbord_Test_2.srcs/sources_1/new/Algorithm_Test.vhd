----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Algorithm_Test is
  generic (
    ADDR_WIDTH : integer := 22;         -- A0-A21
    DATA_WIDTH : integer := 16;         -- DQ0-DQ15
    CLK_FREQ   : integer := 12*1000000  -- 12 MHz FPGA clock (This is not used rightnow)
  );
  port (
    sysclk      : in  std_logic;
    reset_n     : in  std_logic;    -- pulse to start write-then-read
    -- UART computer interface
    i_TX_done     : in std_logic;
    o_TX_DV       : out std_logic;
    o_TX_data     : out std_logic_vector(7 downto 0);
    -- SRAM interface
    A       : out std_logic_vector(ADDR_WIDTH-1 downto 0); -- SRAM adress
    CE_n    : out std_logic;                               -- active low
    WE_n    : out std_logic;                               -- active low
    DQ_i    : in  std_logic_vector(DATA_WIDTH-1 downto 0); -- Signals for using the IOBUF
    DQ_o    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;

architecture rtl of Algorithm_Test is

  type state_type is (
      START,
      WRITE_SETUP,
      WRITE,
      TURNAROUND,
      READ_SETUP,
      READ_WAIT,
      READ_CAPTURE,
      SEND_DATA
    );
    
    signal state        : state_type := START;
    
    signal wait_count   : integer range 0 to 255 := 0;
    signal data_buf     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal write_active : std_logic; -- Drives DQ
    
    -- Convert to cycles (integer math, rounded up)
    constant TAA_CYCLES : integer := 1; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    constant TWP_CYCLES : integer := 1; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    constant TOHZ_CYCLES: integer := 1; -- output disable to high-Z

begin

  process(sysclk, reset_n)
  
  begin
  
    if (reset_n = '0') then
      A            <= (others => '0');
      CE_n         <= '1';             -- Select chip   (not selected)     
      WE_n         <= '1';             -- Enable write  (not enabled)    
      wait_count   <= 0;               -- Used for timing   
      write_active <= '0';             -- Drives DQ   
      o_TX_DV      <= '0';             -- UART TX to computer
                
      
    elsif rising_edge(sysclk) then
      case state is
      
        when START =>
          A            <= (others => '0'); -- Adress
          CE_n         <= '0';             -- Select chip
          WE_n         <= '0';             -- Enable write
          wait_count   <= 0;               -- Used for timing
          o_TX_DV      <= '0';             -- UART TX to computer
          write_active <= '0';             -- Drives DQ
        
        when WRITE_SETUP =>
          write_active <= '1'; -- See after process, makes DQ into the write data
          if wait_count < TWP_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            state      <= WRITE;
            wait_count <= 0;
          end if;
          
        when WRITE =>
          
    
    
    end if;
  end process;
  
  -- Set IOBUF related outputs                                           
  DQ_o <= "0010001001000100"; -- Always set as the data to be written    
  DQ_t <= (others => '0') when (write_active = '1') else (others => '1');
  
  
end rtl;
