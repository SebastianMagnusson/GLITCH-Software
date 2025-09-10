----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------
-- DO NOT USE THIS VERSION!!! (HAS BEEN CHANGED FROM JUST WRITING VALUES)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Write555 is
  generic (
    ADDR_WIDTH : integer := 22;         -- A0-A21
    DATA_WIDTH : integer := 16;         -- DQ0-DQ15
    CLK_FREQ   : integer := 12*1000000  -- 12 MHz FPGA clock (This is not used rightnow)
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
    DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;

architecture rtl of Write555 is

  type state_type is (
      WRITE_START,
      WRITE,
      WRITE_FINISH,
      NEXT_ADDR,
      DONE
    );
    
    signal state        : state_type := WRITE_START;
    
    signal wait_count   : integer range 0 to 255 := 0;
    signal write_data   : std_logic_vector(DATA_WIDTH-1 downto 0) := "1010101010101010";
    signal write_active : std_logic; -- Drives DQ
    signal addr_cnt     : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
    
    signal write_data_buf : std_logic_vector(DATA_WIDTH-1 downto 0);
    
    -- Convert to cycles (integer math, rounded up)
    --constant TAA_CYCLES : integer := 1; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    constant TWP_CYCLES : integer := 1; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    --constant TOHZ_CYCLES: integer := 1; -- output disable to high-Z

begin

  process(sysclk, reset_n)
  
  begin
  
    if (reset_n = '0') then
      A              <= (others => '0'); -- Adress
      CE_n           <= '1';             -- Select chip   (not selected)     
      WE_n           <= '1';             -- Enable write  (not enabled)    
      wait_count     <= 0;               -- Used for timing   
      write_active   <= '0';             -- Drives DQ   
      addr_cnt       <= (others => '0'); -- Counts adresses    
      write_data     <= "1010101010101010";     
      write_complete <= '0';
      state          <= WRITE_START;
      
    elsif rising_edge(sysclk) then
      case state is
      
        when WRITE_START =>
          A              <= std_logic_vector(addr_cnt);
          CE_n           <= '0';             -- Select chip
          WE_n           <= '0';             -- Enable write
          write_active   <= '1';             -- Drives DQ
          wait_count     <= 0;               -- Used for timing
          write_complete <= '0';
          
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
          
          state <= NEXT_ADDR;
    
        when NEXT_ADDR =>
          if(addr_cnt = "1000010010000000101010") then    -- Random address to give wrong value (the one after this is the one changed)
            addr_cnt   <= addr_cnt + 1;
            write_data <= "1100110001001100";       -- Data written to address
            write_data_buf <= write_data;
            state <= WRITE_START;
          elsif(addr_cnt = "1000010010000000101011") then -- Return to regular pattern
            addr_cnt   <= addr_cnt + 1;
            write_data <= write_data_buf;
            state <= WRITE_START;
          elsif (addr_cnt = (unsigned'(ADDR_WIDTH-1 downto 0 => '1'))) then -- All addresses done
            state <= DONE;
          else                                -- Continue looping                   
            addr_cnt   <= addr_cnt + 1;
            write_data <= not write_data;
            state      <= WRITE_START;
          end if;
        
        when DONE =>
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