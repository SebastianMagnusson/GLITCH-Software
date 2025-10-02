----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
-- V1.0 This does not verify an address again once it has been rewritten to. This is
--      incase the address is corrupt, causing the program to get stuck reading
--      the same address over and again.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Read_8SRAM_100MHZ is
  generic (
    ADDR_WIDTH : integer := 22;          -- A0-A21
    DATA_WIDTH : integer := 16;          -- DQ0-DQ15
    CLK_FREQ   : integer := 100*1000000; -- 12 MHz FPGA clock (This is not used rightnow)
    SRAM_BLOCK : integer := 0            -- 0 => SRAM_BLOCK1,  1 => SRAM_BLOCK2
  );
  port (
    sysclk         : in  std_logic;
    reset_n        : in  std_logic;
    read_complete  : out std_logic; -- not really used rn
    write_complete : in std_logic;
    -- SRAM interface
    A       : out std_logic_vector(ADDR_WIDTH-1 downto 0); -- SRAM adress
    CE_n    : out std_logic;                               -- active low
    WE_n    : out std_logic;                               -- active low
    DQ_i    : in  std_logic_vector(DATA_WIDTH-1 downto 0); -- Signals for using the IOBUF
    DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    DQ_o    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    -- decoder
    decoder : out std_logic_vector(2 downto 0); -- which SRAM in the block is being read
    -- Bit Flip data
    o_BF_data           : out std_logic_vector(46 downto 0);  
      -- 46 downto 25 = Address
      -- 24 downto 9  = Data in address
      -- 8  downto 5  = Which SRAM (4 bits for 16 SRAM)
      -- 4            = Temporary or not
      -- 3  downto 0  = Number of oscilations (loops 10 times)
    o_BF_drive          : out std_logic;
    addresses_searched  : out std_logic;
    -- LEDS
    led0 : out std_logic;
    led1 : out std_logic;
    led2 : out std_logic
  );
end entity;

architecture rtl of Read_8SRAM_100MHZ is

  type state_type is (
      READ_START,
      READ,
      READ_CAPTURE,
      DATA_VALIDATION,
      NEXT_ADDR,
      SEND_TO_FETCHER,
      OSCILLATOR,
      WRITE_FIX_START,
      WRITE_FIX,
      WRITE_FIX_FINISH,
      DONE,
      SET_DECODER
    );
    
    signal state        : state_type := READ_START;
    
    signal wait_count   : integer range 0 to 255 := 0;
    signal addr_cnt     : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal data_buf     : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal data_exp     : std_logic_vector(DATA_WIDTH-1 downto 0); -- Expected data
    
    signal write_active : std_logic; -- Drives DQ
    
    signal bitflip_flag        : std_logic := '0'; -- Signals that a memory value is not the expected vaule
    signal data_rewritten_flag : std_logic := '0'; -- Signals that memory has been corrected (bit flip has been changed back)
    signal A_buf               : std_logic_vector(ADDR_WIDTH-1 downto 0); -- Address buffer
    signal decoder_cnt         : unsigned(2 downto 0) := (others => '0');
    
    -- Convert to cycles (integer math, rounded up, by itself, so really rounded down)
    constant TAA_CYCLES : integer := 6; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    constant TWP_CYCLES : integer := 6; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    
    signal BF_data_buf : std_logic_vector(46 downto 0) := (others => '0'); 
    signal SRAM        : std_logic_vector(3 downto 0)  := (others => '0'); -- Indicate which SRAM
    signal oscilations : std_logic_vector(3 downto 0)  := (others => '0'); -- Amount of oscilations
    signal data_prev   : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0'); -- Keeps track of previous read data
    
    signal wait_aftwr_count  : integer range 0 to 255 := 0;
    signal wait_aftre_count  : integer range 0 to 255 := 0;
    signal SRAM_cnt          : integer range 0 to 255 := 0;
    signal next_cnt          : integer range 0 to 255 := 0;

begin

  process(sysclk, reset_n)
  
    variable mess_cnt   : integer range 0 to 3 := 0;  -- Counting messages sent to TX module
    variable loop_cnt   : integer range 0 to 9 := 0;  -- Counting amount of times that a bit flip has been looped
    variable osc_cnt    : integer range 0 to 9 := 0;  -- Counting amount of times that a bit flip has changed value during loop
  
  begin
  
    if(reset_n = '0') then
      A                   <= (others => '0'); -- Adress
      A_buf               <= (others => '0'); -- Adress_buffer
      CE_n                <= '0';             -- Select chip   (not selected)     
      WE_n                <= '1';             -- Enable write  (not enabled)    
      wait_count          <= 0;               -- Used for timing  
      addr_cnt            <= (others => '0'); -- Counts adresses 
      decoder_cnt         <= (others => '0');
      read_complete       <= '0';
      mess_cnt            := 0;
      loop_cnt            := 0;
      data_exp            <= "1010101010101010"; -- First expected data
      write_active        <= '0';                -- Drives DQ
      bitflip_flag        <= '0';
      data_rewritten_flag <= '0';
      
      wait_aftwr_count <= 0;
      wait_aftre_count <= 0;
      SRAM_cnt         <= 0;
      next_cnt         <= 0;
      
      
      SRAM                <= "0000"; --- SRAM 0000 is set as the default unit
      addresses_searched  <= '0';
      data_prev           <= (others => '0');
      o_BF_drive          <= '0';
      
      decoder             <= "000";
      
      state               <= READ_START;
      
      led0 <= '0';
      led1 <= '0';
      led2 <= '0';
    
    elsif rising_edge(sysclk) then
      case state is
      
        when READ_START =>
          A                   <= std_logic_vector(addr_cnt);
          A_buf               <= std_logic_vector(addr_cnt);
          decoder             <= std_logic_vector(decoder_cnt);
          CE_n                <= '1';
          WE_n                <= '1';
          wait_count          <= 0;
          read_complete       <= '0';
          write_active        <= '0';             -- Drives DQ
          o_BF_drive          <= '0';
          addresses_searched  <= '0';
          wait_aftwr_count <= 0;
          wait_aftre_count <= 0;
          
          -- Sets which SRAM we are on (used if a bitflip occurs)
          if(SRAM_BLOCK = 0) then -- Block 1
            SRAM <= "0" & std_logic_vector(decoder_cnt);
          else                    -- Block 2
            SRAM <= "1" & std_logic_vector(decoder_cnt);
          end if;
          
          -- Stay here until write is complete
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
          
          if(wait_aftre_count < 11) then               
            wait_aftre_count <= wait_aftre_count + 1;  
            state <= READ_CAPTURE;                 
          else                                         
            wait_aftre_count <= 0;                     
            state <= DATA_VALIDATION;                       
          end if;            
          
        when DATA_VALIDATION =>
          data_prev <= data_buf;
          
          if(data_rewritten_flag = '1') then
              state               <= SEND_TO_FETCHER;
              data_rewritten_flag <= '0';
              
          elsif(bitflip_flag = '1') then     -- Corrected data, looping to find oscilations
            if(loop_cnt = 9) then         -- Has looped 10 times, going back to normal next time
              bitflip_flag <= '0';
            end if;
            
            if(data_buf /= data_prev) then -- If the bit is still flippin'
              osc_cnt  := osc_cnt + 1;
            end if;
            
            state <= OSCILLATOR;
            
          elsif(data_buf = "1010101010101010" or data_buf = "0101010101010101" or data_buf = "0000000000000000") then -- Data is correct --
              state <= NEXT_ADDR;
              led2 <= '1';
          else                            -- Bitflip detected, start looping and save some data
            bitflip_flag <= '1';
            loop_cnt     := 0;
            
            BF_data_buf(46 downto 25) <= A_buf;
            BF_data_buf(24 downto 9)  <= data_buf;
            BF_data_buf(8 downto 5)   <= SRAM;     -- indicates which SRAM we are on
            
            state <= OSCILLATOR;
          
          end if;
         
        when NEXT_ADDR =>
          o_BF_drive <= '0';
          addr_cnt   <= addr_cnt + 1; 
          
          if(A_buf(0) = '0') then
            data_exp <= "1010101010101010";
          end if;
          if(A_buf(0) = '1') then
            data_exp <= "0101010101010101";
          end if;
          
          if (addr_cnt = (unsigned'(ADDR_WIDTH-1 downto 0 => '1'))) then -- All addresses done
            state <= DONE;
          else                                -- Continue looping                   
            state <= READ_START;
          end if;
          
        when SEND_TO_FETCHER => -- New bitflip data available
          o_BF_drive <= '1';
          
          state <= NEXT_ADDR;
          
          led0 <= '1';

        when OSCILLATOR =>   
          if(loop_cnt < 9) then          -- Keep looping address
            state    <= READ_START;
            loop_cnt := loop_cnt + 1;
          else                           -- Address looped 10 times, move on
            BF_data_buf(3 downto 0) <= std_logic_vector(to_unsigned(osc_cnt, 4));
            if(osc_cnt > 0) then
              BF_data_buf(4) <= '1';    -- 1 if it has oscilated
            else                        
              BF_data_buf(4) <= '0';    -- 0 if no oscilation
            end if;
            state                   <= WRITE_FIX_START;
          end if;
          
        when WRITE_FIX_START =>
          A              <= std_logic_vector(addr_cnt);
          CE_n           <= '1';             -- Select chip
          WE_n           <= '0';             -- Enable write
          write_active   <= '1';             -- Drives DQ
          wait_count     <= 0;               -- Used for timing
          osc_cnt        := 0;
   
          data_rewritten_flag <= '1';
          
          state        <= WRITE_FIX;
        
        when WRITE_FIX =>
          if wait_count < TWP_CYCLES-1 then
            wait_count <= wait_count + 1;
          else
            wait_count <= 0;
            state      <= WRITE_FIX_FINISH;
          end if;
          
        when WRITE_FIX_FINISH =>
          WE_n         <= '1';  -- Finish write pulse
          write_active <= '0';  -- Release DQ bus
          
          if(wait_aftwr_count < 11) then               
            wait_aftwr_count <= wait_aftwr_count + 1;  
            state <= WRITE_FIX_FINISH;                     
          else                                         
            wait_aftwr_count <= 0;                     
            state <= READ_START;                        
          end if;                                      

          --state <= READ_START;
          
        when DONE =>
          if(SRAM_cnt < 8) then
            SRAM_cnt           <= SRAM_cnt + 1;
            decoder_cnt        <= decoder_cnt + 1;
            addr_cnt           <= (others => '0'); -- Reset address counter 
            data_exp           <= "1010101010101010"; -- First expected data
            addresses_searched <= '1';
            
            state <= SET_DECODER;
          else     -- Restart on SRAM 1
            SRAM_cnt           <= 0;
            decoder_cnt        <= (others => '0');
            addr_cnt           <= (others => '0');
            data_exp           <= "1010101010101010"; -- First expected data
            addresses_searched <= '1';
            read_complete      <= '1';
            
            state <= SET_DECODER;
          end if;

        when SET_DECODER =>
          decoder <= std_logic_vector(decoder_cnt);
            if(next_cnt < 11) then
              next_cnt <= next_cnt + 1;
              state    <= SET_DECODER;
            else
              next_cnt <= 0;
              state    <= READ_START;
            end if;

        when others =>
          state <= READ_START;

      end case;
    end if;
  end process;
  
  -- Set IOBUF related outputs                                           
  DQ_o <= data_exp; -- Always set as the data to be written    
  DQ_t <= (others => '0') when (write_active = '1') else (others => '1');
  
  -- BF data
  o_BF_data <= BF_data_buf;
  
end architecture;