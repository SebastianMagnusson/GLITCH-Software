----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity I2C_HTR_ROUTER is
  generic (CLK_FREQ   : integer := 100*1000000 -- 100 MHz FPGA clock (This is not used rightnow)
           );
  Port (sysclk   : in std_logic;
        reset_n  : in std_logic;
        HTR_rst  : in std_logic;
        led1     : out std_logic := '0';
        -- I2C_mod
        reset_i2c   : out std_logic;
        i_busy      : in std_logic;
        i_data_read : in std_logic_vector(7 downto 0);
        o_i2c_ena     : out std_logic;
        o_i2c_address : out std_logic_vector(6 downto 0);
        o_i2c_rw      : out std_logic;
        o_i2c_data_wr : out std_logic_vector(7 downto 0);
        -- heater I2C
        o_i2c_ena_heater     : in std_logic;
        o_i2c_address_heater : in std_logic_vector(6 downto 0);
        o_i2c_rw_heater      : in std_logic;
        o_i2c_data_wr_heater : in std_logic_vector(7 downto 0);
        i_busy_heater        : out std_logic;
        i_data_read_heater   : out std_logic_vector(7 downto 0);
        -- normal I2C
        o_i2c_ena_normal     : in std_logic;                   
        o_i2c_address_normal : in std_logic_vector(6 downto 0);
        o_i2c_rw_normal      : in std_logic;                   
        o_i2c_data_wr_normal : in std_logic_vector(7 downto 0);
        i_busy_normal        : out std_logic;                   
        i_data_read_normal   : out std_logic_vector(7 downto 0)
        );
end I2C_HTR_ROUTER;

architecture rtl of I2C_HTR_ROUTER is
  
  signal cnt : integer range 0 to 255;

begin

  process(sysclk, reset_n) is
  
  begin
      
    if rising_edge(sysclk) then
      
      case reset_n is
        
        when '0' => -- RESET or HTR
          case HTR_rst is
            when '1' => -- HTR ONLY MODE
              reset_i2c <= '1';                                
                                             
              o_i2c_ena          <= o_i2c_ena_heater;      
              o_i2c_address      <= o_i2c_address_heater;  
              o_i2c_rw           <= o_i2c_rw_heater;       
              o_i2c_data_wr      <= o_i2c_data_wr_heater;  
              i_busy_heater      <= i_busy;                
              i_data_read_heater <= i_data_read;           
                                                           
              i_busy_normal      <= '0';                   
              i_data_read_normal <= (others => '0');       
                    
            when '0' => -- FULL RESET (CUTOFF)
              reset_i2c <= '0';
              
              o_i2c_ena           <= '0'; 
              o_i2c_address       <= (others => '0'); 
              o_i2c_rw            <= '0'; 
              o_i2c_data_wr       <= (others => '0');
              i_busy_heater       <= '0'; 
              i_data_read_heater  <= (others => '0'); 
              
              i_busy_normal       <= '0';               
              i_data_read_normal  <= (others => '0');   




            
            when others =>
              null;
          end case;
          
          
        when '1' => -- NORMAL MODE
          reset_i2c <= '1';                          
            
          o_i2c_ena          <= o_i2c_ena_normal;    
          o_i2c_address      <= o_i2c_address_normal;
          o_i2c_rw           <= o_i2c_rw_normal;     
          o_i2c_data_wr      <= o_i2c_data_wr_normal;       
          i_busy_normal      <= i_busy;
          i_data_read_normal <= i_data_read;
    
          i_busy_heater      <= '0';
          i_data_read_heater <= (others => '0');       
          
        when others =>
          null;
          
      end case;
    end if;
  end process;
end rtl;