
----------------------------------------------------------------------------------
-- Company:  GLITCH
-- Engineer: SEB
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Packet_gen is
    generic(Clockfrequency : integer := 12*1000000; -- 12 MHz
            Baud_Rate      : integer := 115200);
    Port(sysclk      : in  std_logic;
		 o_DV_HK		 : out std_logic;
		 o_Data_HK 	 : out std_logic_vector(487 downto 0);
		 o_DV_BF		 : out std_logic;
		 o_Data_BF 	 : out std_logic_vector(199 downto 0);
		 o_DV_RAD		 : out std_logic;
		 o_Data_RAD 	 : out std_logic_vector(10007 downto 0));
end Packet_gen;

architecture rtl of Packet_gen is

	type state_type is (IDLE, SEND_HK, SEND_BF, SEND_RAD, CLEAN);
	signal state : state_type := CLEAN;

	constant ID_HK  : std_logic_vector(1 downto 0)  := b"00";
	constant RTC : std_logic_vector(23 downto 0) := b"110011101010100101010111";
	constant ALT : std_logic_vector(23 downto 0) := b"110011101010100101010111";
	constant TEMP : std_logic_vector(47 downto 0) := b"110011101010100101010100110011101010100101010111";
	constant GNSS : std_logic_vector(383 downto 0) := (others => '0');
	constant Padding_HK : std_logic_vector(5 downto 0) := b"000000";
	
	constant ID_BF  : std_logic_vector(1 downto 0)  := b"01";
	constant SRAM : std_logic_vector(171 downto 0)  := (others => '0');
	constant Padding_BF : std_logic_vector(1 downto 0) := b"00";
	
	constant ID_RAD  : std_logic_vector(1 downto 0)  := b"10";
	constant RAD : std_logic_vector(9981 downto 0)  := (others => '0');	
		
begin

	process(sysclk)
		variable time_cnt : integer range 0 to Clockfrequency := 0;
		variable packet_type : integer range 0 to 2 := 0;
	begin
		
		if rising_edge(sysclk) then
			case state is 
				when IDLE =>
				
					if time_cnt >= Clockfrequency then
						time_cnt := 0;
						
						if packet_type = 0 then						
							state <= SEND_HK;
						elsif packet_type = 1 then
							state <= SEND_BF;
						else 
						    state <= SEND_RAD;
						end if;
						
					else
						time_cnt := time_cnt + 1;
					end if;
				
				when SEND_HK =>
				
					o_DV_HK <= '1';
					o_Data_HK <= ID_HK & RTC & GNSS & TEMP & ALT & Padding_HK;
					state <= CLEAN;
					
				when SEND_BF =>
				
					o_DV_BF <= '1';
					o_Data_BF <= ID_BF & RTC & SRAM & Padding_BF;
					state <= CLEAN;
					
				when SEND_RAD =>
				
					o_DV_RAD <= '1';
					o_Data_RAD <= ID_RAD & RTC & RAD;
					state <= CLEAN;
					
				when CLEAN =>
				
					if packet_type = 2 then
						packet_type := 0;
					else 
						packet_type := packet_type + 1;
					end if;
				
					time_cnt := 0;					
					o_DV_HK <= '0';
					o_Data_HK <= (others => '0');
					o_DV_BF <= '0';
					o_Data_BF <= (others => '0');
					o_DV_RAD <= '0';
					o_Data_RAD <= (others => '0');
					state <= IDLE;
					
				when others => 
				
					state <= CLEAN;
					
			end case;
			
		else
			null;
		end if;


	end process;
end rtl;
