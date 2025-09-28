----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SRAM_controller is
  generic (
    ADDR_WIDTH : integer := 22;         -- A0-A21
    DATA_WIDTH : integer := 16;         -- DQ0-DQ15
    CLK_FREQ   : integer := 100*1000000  -- 12 MHz FPGA clock (This is not used rightnow)
  );
  port (
    sysclk      : in  std_logic;
    reset_n     : in  std_logic;    -- pulse to start write-then-read
    o_BF_drive  : out std_logic;    -- asserted when read_data is valid

    -- SRAM interface
    A       : out std_logic_vector(ADDR_WIDTH-1 downto 0);
    
    DQ_i    : in  std_logic_vector(DATA_WIDTH-1 downto 0); -- New signals for using the IOBUF
    DQ_o    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    
    dec     : out std_logic_vector(2 downto 0); 
    
    CE_n    : out std_logic;  -- active low
    WE_n    : out std_logic;  -- active low
    
    BF_packet : out std_logic_vector(223 downto 0)
  );
end entity;

architecture rtl of SRAM_controller is

  -- Timing parameters from datasheet
--constant CLK_PERIOD_NS : integer := 83;   -- ns, for 12 MHz, unused for now
--constant TAA_NS        : integer := 55;   -- address-to-output, ns
--constant TWP_NS        : integer := 25;   -- write pulse width, ns

-- Convert to cycles (integer math, rounded up)
constant TAA_CYCLES : integer := 15; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
constant TWP_CYCLES : integer := 15; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
constant TOHZ_CYCLES: integer := 15; -- output disable to high-Z

  type state_type is (
    IDLE,
    WRITE_SETUP,
    WRITE_HOLD,
    TURNAROUND,
    READ_SETUP,
    READ_WAIT,
    READ_CAPTURE,
    SEND_DATA
  );
  signal state       : state_type := IDLE;
  signal wait_count  : integer range 0 to 255 := 0;
  signal data_buf    : std_logic_vector(DATA_WIDTH-1 downto 0);
  
  signal write_active : std_logic; -- Drives DQ
  
  signal write_data   : std_logic_vector(15 downto 0) := "1010101010101010";
  
  signal padding      : std_logic_vector(140 downto 0) := (others => '0');
  
  signal A_buf        : std_logic_vector(21 downto 0);
  
begin
   
  process(sysclk, reset_n)
  
    variable mess_cnt   : integer range 0 to 1 := 0;  -- Counting messages sent to TX module
    variable loop_cnt   : integer range 0 to 1 := 0;  -- Counting amount of times looped through states
  
  begin
  
    if(reset_n = '0') then
      mess_cnt     := 0;
      loop_cnt     := 0;
      write_active <= '0';
      o_BF_drive   <= '0';                                                         
      CE_n         <= '0'; WE_n <= '1';   
      write_data   <= "1010101010101010";       
      dec          <= "010"; 
      state        <= IDLE;
    
    elsif rising_edge(sysclk) then
      case state is
      
        -- Idle: wait for start pulse
        when IDLE =>
          -- begin write sequence
          -- A         <= addr_in; WITHOUT HARDCODING ADRESS
          A            <= (others => '0');
          o_BF_drive   <= '0'; 
          CE_n         <= '1';  -- select chip
          --OE_n         <= '1';  -- disable output, cant do it here
          WE_n         <= '0';  -- enable write
          wait_count   <= 0;
          write_active <= '0';
          
          if(loop_cnt = 0) then
            state <= WRITE_SETUP;
          else
            state <= IDLE;
          end if;

        -- Assert write for TWP_CYCLES
        when WRITE_SETUP =>
          write_active <= '1'; -- See after process, makes DQ into the write data
          if wait_count < TWP_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            state      <= WRITE_HOLD;
            wait_count <= 0;
          end if;

        -- Finish write, deassert WE_n and CE_n
        when WRITE_HOLD =>
          write_active <= '0'; -- See after process, makes DQ into the write data
          WE_n         <= '1';
          CE_n         <= '1';  -- this is not done in the other pcb versions, maybe needed?
          state        <= TURNAROUND;

        -- Wait cycles before enabling read to avoid bus contention
        when TURNAROUND =>
          if wait_count < TOHZ_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            write_active <= '0';
            state <= READ_SETUP;
            wait_count <= 0;
          end if;

        -- Read setup: assert OE_n/CE_n
        when READ_SETUP =>
          A            <= "0000000000000000000001"; -- hardcoded
          A_buf        <= "0000000000000000000001";
          CE_n         <= '1';
          --OE_n         <= '0'; cant do this now
          wait_count   <= 0;
          write_active <= '0';
          state        <= READ_WAIT;

        -- Wait for address-to-data delay
        when READ_WAIT =>
          if wait_count < TAA_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            state <= READ_CAPTURE;
          end if;

        -- Capture data and finish
        when READ_CAPTURE =>
          write_active <= '0';
          data_buf     <= DQ_i;     
          -- deassert signals
          CE_n   <= '1';
          --OE_n   <= '1';
          state  <= SEND_DATA;
        
        when SEND_DATA =>
        
          --             ID &             RTC &                TOT &     NOW &  ADDR &   VALUE & IRRELEVANT DATA & PADDING
          BF_packet  <= "01" & "000000000000000000000000" & "00000000" & "00" & A_buf & data_buf & "000000000" & padding;
          o_BF_drive <= '1';  
                   
          state <= IDLE;

        when others =>
          state <= IDLE;

      end case;
    end if;
  end process;
  
  -- Set IOBUF related outputs
  DQ_o <= write_data; -- Always set as the data to be written
  DQ_t <= (others => '0') when (write_active = '1') else (others => '1'); 

end architecture;