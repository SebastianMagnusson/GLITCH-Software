----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
-- V1.0 Right now the system does not send the entire address when a bit flip is found, will change when the
--      rest of the stuff is working.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Read555 is
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
    i_TX_active   : in std_logic;
    i_TX_done     : in std_logic;
    o_TX_DV       : out std_logic;
    o_TX_data     : out std_logic_vector(7 downto 0);
    -- SRAM interface
    A       : out std_logic_vector(ADDR_WIDTH-1 downto 0); -- SRAM adress
    CE_n    : out std_logic;                               -- active low
    WE_n    : out std_logic;                               -- active low
    DQ_i    : in  std_logic_vector(DATA_WIDTH-1 downto 0); -- Signals for using the IOBUF
    DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0);
    DQ_o    : out std_logic_vector(DATA_WIDTH-1 downto 0)
  );
end entity;

architecture rtl of Read555 is

  type state_type is (
      READ_START,
      READ,
      READ_CAPTURE,
      DATA_VALIDATION,
      NEXT_ADDR,
      SEND_DATA_AND_ADDR,
      SEND_DATA,
      WRITE_FIX_START,
      WRITE_FIX,
      WRITE_FIX_FINISH,
      DONE
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
    
    signal TX_done_prev : std_logic;
    
    -- Convert to cycles (integer math, rounded up)
    constant TAA_CYCLES : integer := 1; --(TAA_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    constant TWP_CYCLES : integer := 1; --(TWP_NS + CLK_PERIOD_NS - 1) / CLK_PERIOD_NS;
    --constant TOHZ_CYCLES: integer := 1; -- output disable to high-Z

begin

  process(sysclk, reset_n)
  
    variable mess_cnt   : integer range 0 to 3 := 0;  -- Counting messages sent to TX module
    variable loop_cnt   : integer range 0 to 9 := 0;  -- Counting amount of times that a bit flip has been looped
  
  begin
  
    if(reset_n = '0') then
      A                   <= (others => '0'); -- Adress
      A_buf               <= (others => '0'); -- Adress_buffer
      CE_n                <= '1';             -- Select chip   (not selected)     
      WE_n                <= '1';             -- Enable write  (not enabled)    
      wait_count          <= 0;               -- Used for timing  
      addr_cnt            <= (others => '0'); -- Counts adresses 
      read_complete       <= '0';
      o_TX_DV             <= '0';
      mess_cnt            := 0;
      loop_cnt            := 0;
      data_exp            <= "1010101010101010"; -- First expected data
      write_active        <= '0';             -- Drives DQ
      TX_done_prev        <= '1';
      bitflip_flag        <= '0';
      data_rewritten_flag <= '0';
      state               <= READ_START;
    
    elsif rising_edge(sysclk) then
      case state is
      
        when READ_START =>
          A              <= std_logic_vector(addr_cnt);
          A_buf          <= std_logic_vector(addr_cnt);
          CE_n           <= '0';
          WE_n           <= '1';
          wait_count     <= 0;
          o_TX_DV        <= '0';
          read_complete  <= '0';
          write_active   <= '0';             -- Drives DQ
          
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
          if(bitflip_flag = '1') then     -- Corrected data, double check its correct now
            if(loop_cnt = 9) then
              bitflip_flag <= '0';
            end if;
            state <= SEND_DATA_AND_ADDR;
          elsif(data_buf = data_exp) then -- Data is correct
            if(data_rewritten_flag = '1') then
              state               <= SEND_DATA;
              data_rewritten_flag <= '0';
            else
              state <= NEXT_ADDR;
            end if;
          else                            -- Data is incorrect, send data
            bitflip_flag <= '1';
            loop_cnt     := 0;
            
            state <= SEND_DATA_AND_ADDR;
          end if;
          
        when NEXT_ADDR =>
          o_TX_DV   <= '0';
          addr_cnt  <= addr_cnt + 1;
          data_exp  <= not data_exp;   -- Expected data osscialtes
          if (addr_cnt = (unsigned'(ADDR_WIDTH-1 downto 0 => '1'))) then -- All addresses done
            state <= DONE;
          else                                -- Continue looping                   
            state <= READ_START;
          end if;

        when SEND_DATA_AND_ADDR =>
          if(mess_cnt = 0) then
            if(i_TX_active = '0') then
              o_TX_DV   <= '1';                  
              o_TX_data <= A_buf(15 downto 8);
                               
              mess_cnt := mess_cnt + 1; 
            end if;
          elsif(mess_cnt = 1) then
            if(i_TX_Done = '1') then
              o_TX_DV   <= '1';                  
              o_TX_data <= A_buf(7 downto 0);
              
              mess_cnt := mess_cnt + 1; 
              --mess_cnt := 0;
              --state    <= NEXT_ADDR;
            else
              o_TX_DV <= '0';
            end if;
          elsif(mess_cnt = 2) then
            TX_done_prev <= i_TX_done;                       -- Makes sure previous message is sent
            if(i_TX_done = '1' and TX_done_prev = '0') then  -- Waits for previous transmission to be done
              o_TX_DV   <= '1';                  
              o_TX_data <= Data_buf(15 downto 8);
              
              TX_done_prev <= '1';
              mess_cnt := mess_cnt + 1; 
              --mess_cnt := 0;
              --state    <= NEXT_ADDR;
            else
              o_TX_DV <= '0';
            end if;
          else
            TX_done_prev <= i_TX_done;                       -- Makes sure previous message is sent
            if(i_TX_done = '1' and TX_done_prev = '0') then  -- Waits for previous transmission to be done
              o_TX_DV   <= '1';                  
              o_TX_data <= Data_buf(7 downto 0);
              
              TX_done_prev <= '1';
              mess_cnt := 0; 
              
              if(loop_cnt < 9) then
                state    <= READ_START;
                loop_cnt := loop_cnt + 1;
              else
                state    <= WRITE_FIX_START;
              end if;
            else
              o_TX_DV <= '0';
            end if;
          end if;
          
        when SEND_DATA =>
          if(mess_cnt = 0) then
            if(i_TX_active = '0') then
              o_TX_DV   <= '1';                  
              o_TX_data <= data_buf(15 downto 8);
                               
              mess_cnt := mess_cnt + 1;    
            end if;
          else
            TX_done_prev <= i_TX_done;                       -- Makes sure previous message is sent
            if(i_TX_done = '1' and TX_done_prev = '0') then
              o_TX_DV   <= '1';                  
              o_TX_data <= data_buf(7 downto 0);
              
              mess_cnt := 0;
              state    <= NEXT_ADDR;
            else
              o_TX_DV <= '0';
            end if;
          end if;
          
        when WRITE_FIX_START =>
          A              <= std_logic_vector(addr_cnt);
          CE_n           <= '0';             -- Select chip
          WE_n           <= '0';             -- Enable write
          write_active   <= '1';             -- Drives DQ
          wait_count     <= 0;               -- Used for timing
   
          o_TX_DV             <= '0'; 
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
          
          state <= READ_START;
          
        when DONE =>
          read_complete <= '1';

        when others =>
          state <= READ_START;

      end case;
    end if;
  end process;
  
  -- Set IOBUF related outputs                                           
  DQ_o <= data_exp; -- Always set as the data to be written    
  DQ_t <= (others => '0') when (write_active = '1') else (others => '1');
  
end architecture;
