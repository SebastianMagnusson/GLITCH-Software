----------------------------------------------------------------------------------
-- Company:  GLITH
-- Engineer: SEB, Rasmus
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity I2C_HTR_TEMP is
    generic(
        Clockfrequency : integer := 100 * 1000000  -- 12 MHz
    );
    Port(
        clk                : in  std_logic;
        HTR_rst            : in  std_logic;
        i_busy             : in  std_logic;
        i_data_read        : in  std_logic_vector(7 downto 0);
        i_TX_done_HTR      : in  std_logic;
		    i_HTR_TEMP_request : in std_logic;

        o_i2c_ena      : out std_logic;
        o_i2c_address  : out std_logic_vector(6 downto 0);
        o_i2c_rw       : out std_logic;
        o_i2c_data_wr  : out std_logic_vector(7 downto 0);
		    o_TX_DV_HTR	   : out std_logic;
        o_TX_TEMP_data : out std_logic_vector(31 downto 0);
        
        led1 : out std_logic;
        led2 : out std_logic;
        led3 : out std_logic
    );
end I2C_HTR_TEMP;

architecture rtl of I2C_HTR_TEMP is

    type SM_Main is (
        IDLE, TEMP, SEND_TEMP, CLEANUP);
    signal state : SM_Main := IDLE;

    type Who_requested_state is (HTR);
    signal who_requested : Who_requested_state;

    signal busy_prev   : std_logic;
    signal temp_data   : std_logic_vector(15 downto 0);

begin

    process(clk)
        variable busy_cnt    : integer range 0 to 5 := 0;
        variable conv_cnt    : integer range 0 to Clockfrequency/100 := 0; -- Wait 10 ms for pressure conversion
		    variable start_cnt   : integer range 0 to Clockfrequency/2 := 0;
		    variable waiting_cnt : integer range 0 to Clockfrequency/2 := 0;
    begin
        if rising_edge(clk) then
            if HTR_rst = '0' then
                busy_cnt      := 0;
                conv_cnt      := 0;
                start_cnt     := 0;
                waiting_cnt   := 0;
                temp_data     <= (others => '0');
                o_i2c_ena     <= '0';
				        o_TX_DV_HTR   <= '0';
                busy_prev     <= '0';
                state         <= IDLE;
                led2 <= '0';
                led1 <= '0';
                led3 <= '0';

            else
                case state is

                    -- =========================================================
                    -- IDLE STATE
                    -- =========================================================
                    when IDLE =>
						          o_TX_DV_HTR <= '0';
						
						          start_cnt   := 0;
						          waiting_cnt := 0;

						          if i_HTR_TEMP_request = '1' then
						          	who_requested <= HTR;
						          	state <= TEMP;
                      else
                        state <= IDLE;
                      end if;

                    -- =========================================================
                    -- TEMP SENSOR DATA FETCH
                    -- =========================================================
                    when TEMP =>
                        led3 <= '1';
                        busy_prev <= i_busy;
                        if busy_prev = '0' and i_busy = '1' then
                            busy_cnt := busy_cnt + 1;
                        end if;

                        case busy_cnt is
                            when 0 =>
                                o_i2c_ena     <= '1';
                                o_i2c_address <= "1000000";
                                o_i2c_rw      <= '0';
                                o_i2c_data_wr <= "11100011";
                            when 1 =>
                                o_i2c_rw    <= '1';
                            when 2 =>
                                if i_busy = '0' then
                                    temp_data(15 downto 8) <= i_data_read;
                                end if;
                            when 3 =>
                                o_i2c_ena <= '0';
                                if i_busy = '0' then
                                    busy_cnt := 0;
                                    temp_data(7 downto 0) <= i_data_read;
                                    state <= SEND_TEMP;
                                end if;
                            when others =>
                                null;
                        end case;

                    -- =========================================================
                    -- SEND TEMP DATA
                    -- =========================================================
                    when SEND_TEMP =>
					
						          case who_requested is
						          	when HTR => o_TX_DV_HTR <= '1';
						          	when others => null;
						          end case;
						
                      o_TX_TEMP_data <= temp_data & temp_data; -- Temp replicated 3x
                      state <= CLEANUP;



					
                    when CLEANUP =>
                      busy_cnt      := 0;
                      conv_cnt      := 0;
                      temp_data     <= (others => '0');
                      o_TX_TEMP_data <= (others => '0');
                      o_i2c_ena     <= '0';
                      o_i2c_address <= (others => '0');
                      o_i2c_rw      <= '0';
                      o_i2c_data_wr <= (others => '0');
						          o_TX_DV_HTR   <= '0';
                      busy_prev     <= '0';
                      state         <= IDLE;
                      
                      led1 <= '0';
                      led2 <= '0';
                      led3 <= '0';
                            
                    when others =>
                        state <= CLEANUP;
                        
                end case;
            end if;
        end if;
    end process;

end rtl;