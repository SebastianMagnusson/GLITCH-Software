----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RW_ROUTER4 is
  generic (
      ADDR_WIDTH : integer := 22;         -- A0-A21
      DATA_WIDTH : integer := 16;         -- DQ0-DQ15
      CLK_FREQ   : integer := 12*1000000  -- 12 MHz FPGA clock (This is not used rightnow)
    );
  Port (sysclk   : in std_logic;
        reset_n  : in std_logic;
        led1     : out std_logic := '0';
        -- SRAM interface
        A       : out std_logic_vector(ADDR_WIDTH-1 downto 0); -- SRAM adress
        CE_n    : out std_logic;                               -- active low
        WE_n    : out std_logic;                               -- active low 
        DQ_o    : out std_logic_vector(DATA_WIDTH-1 downto 0); -- Signals for using the IOBUF
        DQ_t    : out std_logic_vector(DATA_WIDTH-1 downto 0);
        -- Inputs from WRITE block
        Toggle     : in std_logic; -- Toggles read/write
        A_write    : in std_logic_vector(ADDR_WIDTH-1 downto 0); -- SRAM adress  
        CE_n_write : in std_logic;                               -- active low   
        WE_n_write : in std_logic;                               -- active low   
        DQ_o_write : in std_logic_vector(DATA_WIDTH-1 downto 0);
        DQ_t_write : in std_logic_vector(DATA_WIDTH-1 downto 0); 
        -- Inputs from READ block
        A_read    : in std_logic_vector(ADDR_WIDTH-1 downto 0); -- SRAM adress
        CE_n_read : in std_logic;                               -- active low
        WE_n_read : in std_logic;                               -- active low
        DQ_t_read : in std_logic_vector(DATA_WIDTH-1 downto 0);
        DQ_o_read : in std_logic_vector(DATA_WIDTH-1 downto 0)
        );
end RW_ROUTER4;

architecture rtl of RW_ROUTER4 is

  type SM_State is (WRITE, READ);
  signal state : SM_State := WRITE;

begin

  process(sysclk, reset_n) is
  
  begin
  
    if(reset_n ='0') then
      led1 <= '0';
      DQ_t <= (others => '1'); -- High Impedence
      state <= WRITE;
      
    elsif rising_edge(sysclk) then
      
      case state is
        
        when WRITE =>
          led1 <= '0';
          A    <= A_write;
          CE_n <= CE_n_write;
          WE_n <= WE_n_write;
          DQ_o <= DQ_o_write;
          DQ_t <= DQ_t_write;
          if(Toggle = '1') then
            state <= READ;
          else
            state <= WRITE;
          end if;
        
        when READ =>
          led1 <= '1';
          A    <= A_read;   
          CE_n <= CE_n_read;
          WE_n <= WE_n_read;
          DQ_o <= DQ_o_read;
          DQ_t <= DQ_t_read;
          
        when others =>
          state <= WRITE;
          
      end case;
    end if;
  end process;
end rtl;