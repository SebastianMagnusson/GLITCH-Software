----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
-- Write7: Identical to most of the other Writes but this one has been used
--         to write wrong data to multiple or no addresses.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Write_without_fail_100MHZ is
  generic (
    ADDR_WIDTH : integer := 22;          -- A0-A21
    DATA_WIDTH : integer := 16;          -- DQ0-DQ15
    CLK_FREQ   : integer := 100*1000000; -- 100 MHz FPGA clock (This is not used rightnow)
    SRAM_BLOCK : integer := 0            -- Which SRAM block (0, first Block)(1, second Block)
  );
  port (
    sysclk         : in  std_logic;
    reset_n        : in  std_logic;
    write_complete : out std_logic;
    -- UART computer interface
    --i_TX_done     : in std_logic;
    --o_TX_DV       : out std_logic;
    --o_TX_data     : out std_logic_vector(7 downto 0);
    -- SRAM interface
    A       : out std_logic_vector(ADDR_WIDTH-1 downto 0); -- SRAM adress
    CE_n    : out std_logic;                               -- active low
    WE_n    : out std_logic;                               -- active low
    DQ_i    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    DQ_o    : out std_logic_vector(DATA_WIDTH-1 downto 0); -- Signals for using the IOBUF
    DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    -- SRAM decoder
    decoder : out std_logic_vector(2 downto 0)             -- Decoder for which SRAM in the block we are reading
  );
end entity;

architecture rtl of Write_without_fail_100MHZ is

  type state_type is (
      WRITE_START,
      WRITE,
      WRITE_FINISH,
      NEXT_ADDR,
      DONE,
      READ_START,
      READ,
      READ_CAPTURE,
      VALIDATION
    );
    
    signal state        : state_type := WRITE_START;
    
    signal wait_count   : integer range 0 to 255 := 0;
    signal write_data   : std_logic_vector(DATA_WIDTH-1 downto 0) := "1010101010101010";
    signal write_active : std_logic; -- Drives DQ
    signal addr_cnt     : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
    
    signal write_data_buf : std_logic_vector(DATA_WIDTH-1 downto 0);
    
    signal A_buf : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    
    -- Convert to cycles (integer math, rounded up)
    constant TAA_CYCLES : integer := 15; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    constant TWP_CYCLES : integer := 15; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    --constant TOHZ_CYCLES: integer := 1; -- output disable to high-Z
    
    signal wait_aftwr_count   : integer range 0 to 255 := 0;
    signal wait_aftre_count   : integer range 0 to 255 := 0;
    signal looper             : integer range 0 to 255 := 0;
    signal read_buf     : std_logic_vector(DATA_WIDTH-1 downto 0);
    

begin

  process(sysclk, reset_n)
  
  begin
  
    if (reset_n = '0') then
      A              <= (others => '0'); -- Adress
      A_buf          <= (others => '0');
      CE_n           <= '1';             -- Select chip   (not selected)     
      WE_n           <= '1';             -- Enable write  (not enabled)    
      wait_count     <= 0;               -- Used for timing   
      write_active   <= '0';             -- Drives DQ   
      addr_cnt       <= (others => '0'); -- Counts adresses    
      write_data     <= "1010101010101010";     
      write_complete <= '0';
      decoder        <= "010";
      state          <= WRITE_START;
      wait_aftwr_count <= 0;
      wait_aftre_count <= 0;
      looper           <= 0;
      
    elsif rising_edge(sysclk) then
      case state is
      
        when WRITE_START =>
          A              <= std_logic_vector(addr_cnt);
          A_buf          <= std_logic_vector(addr_cnt);
          CE_n           <= '0';             -- Select chip
          WE_n           <= '0';             -- Enable write
          write_active   <= '1';             -- Drives DQ
          wait_count     <= 0;               -- Used for timing
          write_complete <= '0';
          wait_aftwr_count <= 0;
          state        <= WRITE;
        
        when WRITE =>
          if wait_count < TWP_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            wait_count <= 0;
            state      <= WRITE_FINISH;
          end if;
          
        when WRITE_FINISH =>
          WE_n         <= '1';  -- Finish write pulse
          write_active <= '0';  -- Release DQ bus
          
          if(wait_aftwr_count < 11) then
            wait_aftwr_count <= wait_aftwr_count + 1;
            state            <= WRITE_FINISH;
          else
            wait_aftwr_count <= 0;
            state            <= READ_START;
          end if;
          
        when READ_START => -- Starts a read sequence
          A                   <= std_logic_vector(addr_cnt);
          A_buf               <= std_logic_vector(addr_cnt);
          CE_n                <= '0';
          WE_n                <= '1';
          wait_count          <= 0;
          write_active        <= '0';             -- Drives DQ
          wait_aftre_count    <= 0;
          
          state <= READ;
          
        when READ =>
          if wait_count < TAA_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            state <= READ_CAPTURE;
          end if;
        
        when READ_CAPTURE =>
          read_buf <= DQ_i; 
          
          if(wait_aftre_count < 11) then               
            wait_aftre_count <= wait_aftre_count + 1;  
            state <= READ_CAPTURE;                 
          else                                         
            wait_aftre_count <= 0;                     
            state <= VALIDATION;                       
          end if;           
          
        when VALIDATION => -- decides wether to write again or move on to next addr
          if(read_buf = "1010101010101010" or read_buf = "0101010101010101" or read_buf = "0000000000000000") then
            state <= NEXT_ADDR;
          else 
            state <= WRITE_START; -- value is not recognized, it writes to same address again
          end if;
    
        when NEXT_ADDR =>
          if (addr_cnt = (unsigned'(ADDR_WIDTH-1 downto 0 => '1'))) then -- All addresses done
            state <= DONE;
          else                                -- Continue looping                   
            addr_cnt   <= addr_cnt + 1;
            if(A_buf(0) = '0') then
              write_data <= "1010101010101010";
            elsif(A_buf(0) = '1') then
              write_data <= "0101010101010101";
            else
              write_data <= "0000000000000000";
            end if;
            
            state      <= WRITE_START;
          end if;
        
        when DONE =>
          state <= DONE;
          write_complete <= '1';
        
        when others =>
          state <= WRITE_START;
            
      end case;
    end if;
  end process;
  
  -- Set IOBUF related outputs                                           
  DQ_o <= write_data; -- Always set as the data to be written    
  DQ_t <= (others => '0') when (write_active = '1') else (others => '1');
  
  
end rtl;