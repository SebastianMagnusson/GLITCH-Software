----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Read_When_Push is
  generic (
    ADDR_WIDTH : integer := 22;         -- A0-A21
    DATA_WIDTH : integer := 16;         -- DQ0-DQ15
    CLK_FREQ   : integer := 12*1000000  -- 12 MHz FPGA clock (This is not used rightnow)
  );
  port (
    sysclk         : in  std_logic;
    reset_n        : in  std_logic;
    btn1           : in std_logic;
    -- UART computer interface
    i_TX_done     : in std_logic;
    o_TX_DV       : out std_logic;
    o_TX_data     : out std_logic_vector(7 downto 0);
    -- SRAM interface
    A       : out std_logic_vector(ADDR_WIDTH-1 downto 0); -- SRAM adress
    CE_n    : out std_logic;                               -- active low
    WE_n    : out std_logic;                               -- active low
    DQ_i    : in  std_logic_vector(DATA_WIDTH-1 downto 0); -- Signals for using the IOBUF
    DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;

architecture rtl of Read_When_Push is

  type state_type is (
      IDLE,
      READ_START,
      READ,
      READ_CAPTURE,
      SEND_DATA
    );
    
    signal state        : state_type := IDLE;
    
    signal wait_count   : integer range 0 to 255 := 0;
    signal addr_cnt     : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal data_buf     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal btn1_prev    : std_logic; -- Keep tracks of previous btn1 value
    
    -- Convert to cycles (integer math, rounded up)
    constant TAA_CYCLES : integer := 1; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    --constant TWP_CYCLES : integer := 1; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    --constant TOHZ_CYCLES: integer := 1; -- output disable to high-Z

begin

  process(sysclk, reset_n)
  
    variable mess_cnt   : integer range 0 to 1 := 0;  -- Counting messages sent to TX module
  
  begin
  
    if (reset_n = '0') then
      A              <= (others => '0'); -- Adress
      CE_n           <= '1';             -- Select chip   (not selected)     
      WE_n           <= '1';             -- Enable write  (not enabled)    
      wait_count     <= 0;               -- Used for timing  
      addr_cnt       <= (others => '0'); -- Counts adresses  
      btn1_prev      <= '0';  
      mess_cnt       := 0;
      state          <= IDLE;
      
    elsif rising_edge(sysclk) then
      case state is
      
        when IDLE =>
          CE_n     <= '1';
          o_TX_DV  <= '0';
          mess_cnt := 0;
          
          btn1_prev <= btn1;
          if(btn1_prev = '0' and btn1 = '1') then -- Starts when btn1 is pressed
            state    <= READ_START;
          else
            state <= IDLE;
          end if;
        
        when READ_START =>
          A            <= std_logic_vector(addr_cnt);
          CE_n         <= '0';
          wait_count   <= 0;
          state        <= READ;

        -- Wait for address-to-data delay
        when READ =>
          if wait_count < TAA_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            state <= READ_CAPTURE;
          end if;

        -- Capture data and finish
        when READ_CAPTURE =>
          data_buf <= DQ_i; 
          state    <= SEND_DATA;
        
        when SEND_DATA =>
          if(mess_cnt = 0) then
            o_TX_DV   <= '1';                  
            o_TX_data <= data_buf(15 downto 8);
                             
            mess_cnt := mess_cnt + 1;    
          else
            if(i_TX_Done = '1') then
              o_TX_DV   <= '1';                  
              o_TX_data <= data_buf(7 downto 0);
              
              mess_cnt := 0;
              addr_cnt <= addr_cnt + 1;
              state    <= IDLE;
            else
              o_TX_DV <= '0';
            end if;
          end if;

        when others =>
          state <= IDLE;
            
      end case;
    end if;
  end process;
  
  -- Set IOBUF related outputs                                           
  DQ_t <= (others => '1'); -- Always DQ=Z, since we are only reading
  
end rtl;