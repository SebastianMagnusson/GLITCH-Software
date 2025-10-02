----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity HTR_ROUTER is
  generic (CLK_FREQ   : integer := 100*1000000 -- 100 MHz FPGA clock (This is not used rightnow)
           );
  Port (sysclk   : in std_logic;
        reset_n  : in std_logic;
        HTR_rst  : in std_logic;
        led1     : out std_logic := '0';
        -- Inputs from HTR_CALC
        HTR_request		  : in std_logic; 
        I2C_read_done   : in std_logic;
        --I2C normal
        HTR_request_normal   : out std_logic;
        I2C_read_done_normal : out std_logic;
        temp_data_normal     : in std_logic_vector(31 downto 0);
        temp_DV_normal       : in std_logic;
        --I2C HTR
        HTR_request_heater   : out std_logic;
        I2C_read_done_heater : out std_logic;
        temp_data_heater     : in std_logic_vector(31 downto 0);
        temp_DV_heater       : in std_logic;                   
        -- Outputs to HTR_CALC
        temp_DV   : out std_logic;
        temp_data : out std_logic_vector(31 downto 0)
        );
end HTR_ROUTER;

architecture rtl of HTR_ROUTER is
  
  signal cnt : integer range 0 to 255;

begin

  process(sysclk, reset_n) is
  
  begin
      
    if rising_edge(sysclk) then
      
      case reset_n is
        
        when '0' => -- RESET or HTR
          case HTR_rst is
            when '1' => -- HTR ONLY MODE
              led1 <= '0';                              
                                                        
              HTR_request_heater   <= HTR_request;      
              I2C_read_done_heater <= I2C_read_done;    
              temp_DV              <= temp_DV_heater;   
              temp_data            <= temp_data_heater; 
                                                        
              HTR_request_normal   <= '0';              
              I2C_read_done_normal <= '0';              
                
            when '0' => -- FULL RESET (CUTOFF)
              led1 <= '0';                            
              HTR_request_normal   <= '0';            
              I2C_read_done_normal <= '0';            
              HTR_request_heater   <= '0';            
              I2C_read_done_heater <= '0';            
              temp_DV              <= '0';            
              temp_data            <= (others => '0');
            
            when others =>
              null;
          end case;
          
          
        when '1' => -- NORMAL MODE
          led1 <= '0';                          
            
          HTR_request_normal   <= HTR_request;            
          I2C_read_done_normal <= I2C_read_done;   
          temp_DV              <= temp_DV_normal;            
          temp_data            <= temp_data_normal;
          
          HTR_request_heater   <= '0';            
          I2C_read_done_heater <= '0';              
          
        when others =>
          null;
          
      end case;
    end if;
  end process;
end rtl;