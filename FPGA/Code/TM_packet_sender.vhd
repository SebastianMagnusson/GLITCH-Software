----------------------------------------------------------------------------------
-- Company: GLITCH
-- Engineer: Rasmus

-- takes the packets and sends them to uart module while waiting for uart completion.
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TM_packet_sender is
    generic (Clockfrequency : integer := 12*1000000; -- 12 MHz
              Baud_Rate      : integer := 400000); -- spi clock frequency
    Port ( 
        clk : in std_logic;
        rst : in std_logic;
		i_HK_data : in std_logic_vector(471 downto 0);
		i_BF_data : in std_logic_vector(223 downto 0);
		i_RAD_data : in std_logic_vector(10007 downto 0);
		i_HK_DV : in std_logic;
		i_BF_DV : in std_logic;
		i_RAD_DV : in std_logic;
		i_TX_done : in std_logic;
		i_TX_active : in std_logic;
		o_TX_DV: out std_logic;
		o_TX_byte : out std_logic_vector(7 downto 0);
		o_HK_got : out std_logic;
		o_BF_got : out std_logic;
		o_RAD_got : out std_logic;
		led1 : out std_logic;
		led2 : out std_logic
    );
end TM_packet_sender;

architecture rtl of TM_packet_sender is
	type state_type is (s_idle, s_send_HK_first, s_send_HK, s_send_BF_first, s_send_BF, s_send_RAD_first, s_send_RAD, s_clean);
	signal state : state_type := s_idle;

	signal i_HK_data_i : std_logic_vector(471 downto 0);
	signal i_BF_data_i : std_logic_vector(223 downto 0);
	signal i_RAD_data_i : std_logic_vector(10007 downto 0);
	
	signal i_TX_done_prev : std_logic;
	signal bit_cnt : integer := 0;
	
	signal led : std_logic := '1';
    
begin
    process(clk)
    begin
    
        if rising_edge(clk) then
            if rst = '0' then                       
              i_HK_data_i <= (others => '0');      
              i_BF_data_i <= (others => '0');      
              i_RAD_data_i <= (others => '0');      
              o_TX_DV <= '0';                      
              o_TX_byte <= (others => '0');          
              o_HK_got <= '0';                       
              o_BF_got <= '0';                       
              o_RAD_got <= '0';                      
              bit_cnt <= 0;                         
              state <= s_idle;                       
              i_TX_done_prev <= '0';
            else
				case state is
					when s_idle =>
						if i_HK_DV = '1' then
							i_HK_data_i <= i_HK_data;
							o_HK_got <= '1';
							state <= s_send_HK_first;
						elsif i_BF_DV = '1' then
							i_BF_data_i <= i_BF_data;
							o_BF_got <= '1';
							state <= s_send_BF_first;
						elsif i_RAD_DV = '1' then
							i_RAD_data_i <= i_RAD_data;
							o_RAD_got <= '1';
							state <= s_send_RAD_first;
						else
							state <= s_idle;
						end if;
					
					when s_send_HK_first => 	
					  if(i_TX_active /= '1') then
						  o_HK_got <= '0';                    
              o_TX_DV <= '1';
              o_TX_byte <= i_HK_data_i(471 downto 464);
              bit_cnt <= 463;           
		  	      state <= s_send_HK;
		  	    else
		  	      state <= s_send_HK_first;
		  	    end if;
					    
					when s_send_HK =>	
						i_TX_done_prev <= i_TX_done;
						if i_TX_done = '1' and i_TX_done_prev = '0' then
							o_TX_DV <= '1';
							o_TX_byte <= i_HK_data_i(bit_cnt downto bit_cnt-7);
							i_TX_done_prev <= '1';
							if bit_cnt-7 <= 0 then
								state <= s_clean;
							else 
								bit_cnt <= bit_cnt-8;
							end if;
						else
							o_TX_DV <= '0';
						end if;
										
					when s_send_BF_first => 
            if(i_TX_active /= '1') then
						  o_BF_got <= '0';
              o_TX_DV <= '1';
              o_TX_byte <= i_BF_data_i(223 downto 216);
              bit_cnt <= 215;           
					    state <= s_send_BF;
					  else
					    state <= s_send_BF_first;
					  end if;
					
					when s_send_BF =>	
					    
					    led1 <= led;	
						i_TX_done_prev <= i_TX_done;
						if i_TX_done = '1' and i_TX_done_prev = '0' then
						    led1 <= led;    
							o_TX_DV <= '1';
							o_TX_byte <= i_BF_data_i(bit_cnt downto bit_cnt-7);
							i_TX_done_prev <= '1';
							if bit_cnt-7 <= 0 then
							    led2 <= led;
								state <= s_clean;
							else 
								bit_cnt <= bit_cnt-8;
							end if;
						else
							o_TX_DV <= '0';
						end if;	
						
					when s_send_RAD_first => 
            if(i_TX_active /= '1') then        
						  o_RAD_got <= '0';
              o_TX_DV <= '1';
              o_TX_byte <= i_RAD_data_i(10007 downto 10000);
              bit_cnt <= 9999;           
					    state <= s_send_RAD;
					  else
					    state <= s_send_RAD_first;
					  end if;
						
					when s_send_RAD =>		
						i_TX_done_prev <= i_TX_done;
						if i_TX_done = '1' and i_TX_done_prev = '0' then
							o_TX_DV <= '1';
							o_TX_byte <= i_RAD_data_i(bit_cnt downto bit_cnt-7);
							i_TX_done_prev <= '1';
							if bit_cnt-7 <= 0 then
								state <= s_clean;
							else 
								bit_cnt <= bit_cnt-8;
							end if;
						else
							o_TX_DV <= '0';
						end if;	
						
					when s_clean =>		
					    
					    led <= not led;				
						i_HK_data_i <= (others => '0');
						i_BF_data_i <= (others => '0');
						i_RAD_data_i <= (others => '0');
						o_TX_DV <= '0';
						o_TX_byte <= (others => '0');
						o_HK_got <= '0';
						o_BF_got <= '0';
						o_RAD_got <= '0';
						i_TX_done_prev <= '0';
            bit_cnt <= 0;
						state <= s_idle;
						
				end case;
            end if;
        else
            null;    
        end if;        

    end process;

end rtl;