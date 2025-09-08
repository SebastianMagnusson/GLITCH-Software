----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Read_WithError is
  generic (
    ADDR_WIDTH : integer := 22;         -- A0-A21
    DATA_WIDTH : integer := 16;         -- DQ0-DQ15
    CLK_FREQ   : integer := 12*1000000  -- 12 MHz FPGA clock (This is not used rightnow)
  );
  port (
    sysclk         : in  std_logic;
    reset_n        : in  std_logic;
    read_complete  : out std_logic;
    write_complete : in std_logic;
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

architecture rtl of Read_WithError is

  type state_type is (
      READ_START,
      READ,
      READ_CAPTURE,
      DATA_VALIDATION,
      NEXT_ADDR,
      SEND_DATA,
      DONE
    );
    
    signal state        : state_type := READ_START;
    
    signal wait_count   : integer range 0 to 255 := 0;
    signal addr_cnt     : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal data_buf     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal data_exp     : std_logic_vector(DATA_WIDTH-1 downto 0); -- Expected data
    
    -- Convert to cycles (integer math, rounded up)
    constant TAA_CYCLES : integer := 1; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    --constant TWP_CYCLES : integer := 1; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    --constant TOHZ_CYCLES: integer := 1; -- output disable to high-Z

begin

  process(sysclk, reset_n)
  
    variable mess_cnt   : integer range 0 to 1 := 0;  -- Counting messages sent to TX module
  
  begin
  
    if(reset_n = '0') then
      A              <= (others => '0'); -- Adress
      CE_n           <= '1';             -- Select chip   (not selected)     
      WE_n           <= '1';             -- Enable write  (not enabled)    
      wait_count     <= 0;               -- Used for timing  
      addr_cnt       <= (others => '0'); -- Counts adresses 
      read_complete  <= '0';
      o_TX_DV  <= '0';
      mess_cnt       := 0;
      data_exp       <= "1010101010101010"; -- First expected data
      state          <= READ_START;
    
    elsif rising_edge(sysclk) then
      case state is
      
        when READ_START =>
          A            <= std_logic_vector(addr_cnt);
          CE_n         <= '0';
          wait_count   <= 0;
          o_TX_DV  <= '0';
          read_complete  <= '0';
          
          if(write_complete = '1') then -- Checks if write is complete
            state <= READ;
          else
            state <= READ_START;
          end if;

        when READ =>
          if wait_count < TAA_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            state <= READ_CAPTURE;
          end if;

        -- Capture data and finish
        when READ_CAPTURE =>
          data_buf <= DQ_i; 
          state    <= DATA_VALIDATION;
          
        when DATA_VALIDATION =>
          if(addr_cnt = (unsigned'(ADDR_WIDTH-1 downto 0 => '1'))) then -- Last address, send data
            state <= SEND_DATA;
          elsif(data_buf = data_exp) then -- Data is correct
            state <= NEXT_ADDR;
          else                         -- Data is incorrect, send data
            state <= SEND_DATA;
          end if;
          
        when NEXT_ADDR =>
          o_TX_DV   <= '0';
          addr_cnt   <= addr_cnt + 1;
          data_exp <= not data_exp;   -- Expected data osscialtes
          if (addr_cnt = (unsigned'(ADDR_WIDTH-1 downto 0 => '1'))) then -- All addresses done
            state <= DONE;
          else                                -- Continue looping                   
            state <= READ_START;
          end if;

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
              state    <= NEXT_ADDR;
            else
              o_TX_DV <= '0';
            end if;
          end if;
          
        when DONE =>
          read_complete <= '1';

        when others =>
          state <= READ_START;

      end case;
    end if;
  end process;
  
  -- Set IOBUF related outputs                                           
  DQ_t <= (others => '1'); -- Always DQ=Z, since we are only reading

end architecture;
