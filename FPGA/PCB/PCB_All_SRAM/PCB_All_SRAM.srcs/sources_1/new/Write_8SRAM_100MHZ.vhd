----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
-- Write_8SRAM: loops through 8 sram with the decoder and writes the pattern to all
--         
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Write_8SRAM_100MHZ is
  generic (
    ADDR_WIDTH : integer := 22;          -- A0-A21
    DATA_WIDTH : integer := 16;          -- DQ0-DQ15
    CLK_FREQ   : integer := 100*1000000; -- 100 MHz FPGA clock (This is not used rightnow)
    SRAM       : integer := 0            -- Indicates which sram
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
    DQ_o    : out std_logic_vector(DATA_WIDTH-1 downto 0); -- Signals for using the IOBUF
    DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    -- SRAM decoder
    decoder : out std_logic_vector(2 downto 0)             -- Decoder for which SRAM in the block we are reading
  );
end entity;

architecture rtl of Write_8SRAM_100MHZ is

  type state_type is (
      WRITE_START,
      WRITE,
      WRITE_FINISH,
      NEXT_ADDR,
      DONE,
      SET_DECODER,
      COMPLETE
    );
    
    signal state        : state_type := WRITE_START;
    
    signal wait_count   : integer range 0 to 255 := 0;
    signal write_data   : std_logic_vector(DATA_WIDTH-1 downto 0) := "1010101010101010";
    signal write_active : std_logic; -- Drives DQ
    signal addr_cnt     : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal decoder_cnt  : unsigned(2 downto 0) := (others => '0');
    signal write_data_buf : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal A_buf : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    
    -- Convert to cycles (integer math, rounded up)
    --constant TAA_CYCLES : integer := 1; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    constant TWP_CYCLES : integer := 6; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    --constant TOHZ_CYCLES: integer := 1; -- output disable to high-Z
    
    signal wait_aftwr_count   : integer range 0 to 255 := 0;
    signal SRAM_cnt           : integer range 0 to 255 := 0;
    signal next_cnt           : integer range 0 to 255 := 0;
    
begin

  process(sysclk, reset_n)
  
  begin
  
    if (reset_n = '0') then
      A              <= (others => '0'); -- Adress
      A_buf          <= (others => '0');
      CE_n           <= '0';             -- Select chip   (not selected)     
      WE_n           <= '1';             -- Enable write  (not enabled)    
      wait_count     <= 0;               -- Used for timing   
      write_active   <= '0';             -- Drives DQ   
      addr_cnt       <= (others => '0'); -- Counts adresses    
      decoder_cnt    <= (others => '0');
      write_data     <= "1010101010101010";     
      write_complete <= '0';
      decoder        <= "000";
      state          <= WRITE_START;
      wait_aftwr_count <= 0;
      SRAM_cnt         <= 0;
      next_cnt         <= 0;
      
    elsif rising_edge(sysclk) then
      case state is
      
        when WRITE_START =>
          A                <= std_logic_vector(addr_cnt);
          A_buf            <= std_logic_vector(addr_cnt);
          decoder          <= std_logic_vector(decoder_cnt);
          CE_n             <= '1';             -- Select chip
          WE_n             <= '0';             -- Enable write
          write_active     <= '1';             -- Drives DQ
          wait_count       <= 0;               -- Used for timing
          write_complete   <= '0';
          wait_aftwr_count <= 0;
          
          state            <= WRITE;
        
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
            state <= WRITE_FINISH;
          else
            wait_aftwr_count <= 0;
            state <= NEXT_ADDR;
          end if;
    
        when NEXT_ADDR =>
          if (addr_cnt = (unsigned'(ADDR_WIDTH-1 downto 0 => '1'))) then -- All addresses done
            state <= DONE;
          elsif(A_buf = "1010001011111000101000" and SRAM = 0) then    -- Random address to give wrong value (the one after this is the one changed)
            addr_cnt   <= addr_cnt + 1;
            write_data <= "1100110001001100";       -- Data written to address
            state      <= WRITE_START;
          elsif(A_buf = "0101110001010110101100" and SRAM = 1) then    -- Random address to give wrong value (the one after this is the one changed)
            addr_cnt   <= addr_cnt + 1;
            write_data <= "1111000011110000";       -- Data written to address
            state      <= WRITE_START;
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
        
          if(SRAM_cnt < 8) then
            SRAM_cnt    <= SRAM_cnt + 1;
            decoder_cnt <= decoder_cnt + 1;
            addr_cnt    <= (others => '0');
            write_data     <= "1010101010101010";   
            
            state       <= SET_DECODER;
          else
            write_complete <= '1';
            state          <= COMPLETE;
          end if;
        
        when SET_DECODER =>
          decoder <= std_logic_vector(decoder_cnt);
          if(next_cnt < 11) then
            next_cnt <= next_cnt + 1;
            state <= SET_DECODER;
          else
            next_cnt <= 0;
            state    <= WRITE_START;
          end if;
            
        
        when COMPLETE =>
          write_complete <= '1';
          state          <= COMPLETE;
        
        when others =>
          state <= WRITE_START;
            
      end case;
    end if;
  end process;
  
  -- Set IOBUF related outputs                                           
  DQ_o <= write_data; -- Always set as the data to be written    
  DQ_t <= (others => '0') when (write_active = '1') else (others => '1');
  
  
end rtl;