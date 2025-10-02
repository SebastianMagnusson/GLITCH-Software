--------------------------------------
--- Logic:   HTR_CALC ---
--- Author:  Rasmus		  ------------
--------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HTR_CALC is
	generic (Clockfrequency : integer := 100*1000000);
    port (
        clk        : in std_logic;
        HTR_rst    : in std_logic;
		    temp_data  : in std_logic_vector(31 downto 0);
		    temp_DV	   : in std_logic;
		    HTR_request		  : out std_logic;
		    I2C_read_done   : out std_logic;
		    command_htr1    : out integer;
		    command_htr2    : out integer;
		    led1            : out std_logic
    );
end entity;

architecture rtl of HTR_CALC is

	type state_type is (IDLE, REQUEST, CONVERT, CALC, SEND, CLEAN);
	signal state : state_type := CLEAN;
	
	signal temp_data_i : std_logic_vector(31 downto 0) := (others => '0');
	signal temp_raw_1	   : unsigned(15 downto 0); 
	signal temp_raw_2	   : unsigned(15 downto 0); 
	signal temp_calculated_1 : integer := 0;
	signal temp_calculated_2 : integer := 0;
	
	constant C1 : integer := 17572; 
    constant C2 : integer := 4685;
    
    signal sec_cnt : integer range 0 to Clockfrequency := 0;
	
begin

    process(clk)
		variable product_1 : unsigned(31 downto 0);
		variable product_2 : unsigned(31 downto 0);
		variable shifted_1 : unsigned(15 downto 0);
		variable shifted_2 : unsigned(15 downto 0);
    begin
        if rising_edge(clk) then
            if HTR_rst = '0' then
				
                sec_cnt <= 0;
                temp_data_i <= (others => '0');
                temp_raw_1 <= to_unsigned(0, 16);
                temp_raw_2 <= to_unsigned(0, 16);
                temp_calculated_1 <= 0;
                temp_calculated_2 <= 0;
                
                command_htr1 <= 0;
                command_htr2 <= 0;
                
                state <= IDLE;
                
            else
				case state is 
					when IDLE => 
					
						if sec_cnt < Clockfrequency then
							sec_cnt <= sec_cnt + 1;
							state <= IDLE;
						else 
							sec_cnt <= 0;
							state <= REQUEST;							
						end if;				
					
					when REQUEST =>
					    led1 <= '0';
						HTR_request <= '1';
						if temp_DV = '1' then
							temp_data_i <= temp_data;
							HTR_request <= '0';
							I2C_read_done <= '1';
							state <= CONVERT;
						else
							state <= REQUEST;
						end if;
						
					when CONVERT =>
					    led1 <= '0';
					    I2C_read_done <= '0';
						temp_raw_1 <= unsigned(temp_data_i(15 downto 0));
						temp_raw_2 <= unsigned(temp_data_i(31 downto 16));
						state <= CALC;
						
					when CALC =>
					    led1 <= '0';
					    product_1 := temp_raw_1 * C1;					    
					    product_2 := temp_raw_2 * C1;
					    shifted_1 := product_1(31 downto 16);
					    shifted_2 := product_2(31 downto 16);
					    temp_calculated_1 <= to_integer(shifted_1) - C2;
					    temp_calculated_2 <= to_integer(shifted_2) - C2;
					    state <= SEND;
					    
					when SEND => 
					    led1 <= '0';
					    
						if temp_calculated_1 > 20*100 then
							command_htr1 <= 0;
						elsif 20*100 > temp_calculated_1 then
							command_htr1 <= 10;
						else
							command_htr1 <= 0;
						end if;
						
						if temp_calculated_2 > 20*100 then
							command_htr2 <= 0;
						elsif 20*100 > temp_calculated_2 then
							command_htr2 <= 10;
						else
							command_htr2 <= 0;
						end if;
						
						state <= CLEAN;
													
					when CLEAN =>
					
						sec_cnt <= 0;
						I2C_read_done <= '0';
						temp_data_i <= (others => '0');
						temp_raw_1 <= to_unsigned(0, 16);
						temp_raw_2 <= to_unsigned(0, 16);
						temp_calculated_1 <= 0;
						temp_calculated_2 <= 0;
						state <= IDLE;
												
				end case;
			end if;
		end if;
    end process;
end architecture;

