----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- takes the packets and sends them to uart module while waiting for uart completion.
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Packet_chopper is
    generic (Clockfrequency : integer := 12*1000000);
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
		i_data : in std_logic_vector(383 downto 0);
		i_DV : in std_logic;
		i_TX_done : in std_logic;
		o_TX_DV: out std_logic;
		o_TX_byte : out std_logic_vector(7 downto 0);
		led2 : out std_logic
    );
end Packet_chopper;

architecture rtl of Packet_chopper is
	type state_type is (s_idle, s_first_send, s_send, s_clean);
	signal state : state_type := s_clean;

	signal i_data_i : std_logic_vector(383 downto 0);
	
	signal i_TX_done_prev : std_logic;
    
begin
    process(clk)
        variable bit_cnt : integer range 0 to 383 := 383;
    begin
    
        if rising_edge(clk) then
            if rst = '1' then
				i_data_i <= (others => '0');
				o_TX_DV <= '0';
				o_TX_byte <= (others => '0');
				state <= s_idle;
            else
				case state is
					when s_idle =>
					    led2 <= '0';
						if i_DV = '1' then
							i_data_i <= i_data;
							state <= s_first_send;							
						else
							state <= s_idle;
						end if;
						
				    when s_first_send => 
				        o_TX_DV <= '1';
				        o_TX_byte <= i_data_i(bit_cnt downto bit_cnt-7);
				        bit_cnt := bit_cnt - 8;
					
					when s_send =>	
					    led2 <= '1';	
						i_TX_done_prev <= i_TX_done;
						if i_TX_done = '1' and i_TX_done_prev = '0' then
							o_TX_DV <= '1';
							o_TX_byte <= i_data_i(bit_cnt downto bit_cnt-7);
							i_TX_done_prev <= '1';
							if bit_cnt-7 <= 0 then
								state <= s_clean;
							else 
								bit_cnt := bit_cnt-8;
							end if;
						else
							o_TX_DV <= '0';
						end if;
						
					when s_clean =>						
						i_data_i <= (others => '0');
						o_TX_DV <= '0';
						o_TX_byte <= (others => '0');
						i_TX_done_prev <= '0';
						
						bit_cnt := 383;
						
						state <= s_idle;
						
				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;