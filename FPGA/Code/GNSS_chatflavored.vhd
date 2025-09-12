library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GNSS_PACKET_FINDER is
  generic (
    CLK_FREQ        : integer := 12_000_000;   -- sysclk (for reference only)
    BYTE_LIMIT      : integer := 200;         -- max bytes to collect before forcing search
    TIMEOUT_CYCLES  : integer := 1_000_000     -- cycles of sysclk without byte = force search
  );
  port (
    sysclk     : in  std_logic;
    rst        : in  std_logic;                -- synchronous active-high reset
    i_RX_DV    : in  std_logic;                -- pulse when byte valid (from UART_RXmod)
    i_RX_Byte  : in  std_logic_vector(7 downto 0);

    o_OUT_READY: out std_logic;                -- one-clock pulse when output data valid
    o_OUT_DATA : out std_logic_vector(8*48-1 downto 0)  -- 48 bytes = "$GPRMC" + 42 bytes following
  );
end GNSS_PACKET_FINDER;

architecture rtl of GNSS_PACKET_FINDER is

  subtype byte_t is std_logic_vector(7 downto 0);
  type ram_t is array(0 to BYTE_LIMIT-1) of byte_t;

  signal data_buffer : ram_t := (others => (others => '0'));
  signal write_ptr   : integer range 0 to BYTE_LIMIT := 0; -- next write index
  signal byte_count  : integer range 0 to BYTE_LIMIT := 0; -- number of valid bytes in data_buffer
  signal timeout_cnt : integer range 0 to TIMEOUT_CYCLES := 0;

  -- Search FSM
  type t_state is (S_IDLE, S_WAIT_FOR_TRIGGER, S_SEARCH, S_FOUND, S_OUTPUT, S_CLEAR);
  signal state       : t_state := S_IDLE;

  -- search variables
  constant PAT_LEN : integer := 6; -- length of "$GPRMC"
  constant OUT_LEN : integer := 48; -- 6 + 42
  constant PAT0    : byte_t := x"24"; -- '$' (0x24)
  constant PAT1    : byte_t := x"47"; -- 'G'
  constant PAT2    : byte_t := x"50"; -- 'P'
  constant PAT3    : byte_t := x"52"; -- 'R'
  constant PAT4    : byte_t := x"4D"; -- 'M'
  constant PAT5    : byte_t := x"43"; -- 'C'

  signal search_index : integer range 0 to BYTE_LIMIT := 0;
  signal found_index  : integer range 0 to BYTE_LIMIT := 0;
  signal out_data_reg : std_logic_vector(8*OUT_LEN-1 downto 0) := (others => '0');
  signal out_ready_reg: std_logic := '0';

begin

  -- Output assignments
  o_OUT_DATA  <= out_data_reg;
  o_OUT_READY <= out_ready_reg;

  ----------------------------------------------------------------
  -- Receive / Append process
  -- Append incoming bytes to data_buffer on i_RX_DV. Reset timeout counter.
  ----------------------------------------------------------------
  p_receive : process(sysclk)
  begin
    if rising_edge(sysclk) then
      if rst = '1' then
        write_ptr   <= 0;
        byte_count  <= 0;
        timeout_cnt <= 0;
      else
        -- default: increment timeout
        if i_RX_DV = '1' then
          -- store incoming byte (if data_buffer full, saturate at BYTE_LIMIT)
          if byte_count < BYTE_LIMIT then
            data_buffer(write_ptr) <= i_RX_Byte;
            write_ptr <= (write_ptr + 1) mod BYTE_LIMIT;
            byte_count <= byte_count + 1;
          else
            -- data_buffer is full, keep write_ptr where it is (optionally, could overwrite)
            -- We'll saturate: no more writes until search triggers and clears data_buffer
            write_ptr <= write_ptr;
            byte_count <= BYTE_LIMIT;
          end if;
          timeout_cnt <= 0;
        else
          -- no new byte, increment timeout (saturate at TIMEOUT_CYCLES)
          if timeout_cnt < TIMEOUT_CYCLES then
            timeout_cnt <= timeout_cnt + 1;
          else
            timeout_cnt <= TIMEOUT_CYCLES;
          end if;
        end if;
      end if;
    end if;
  end process p_receive;

  ----------------------------------------------------------------
  -- Controller / Search FSM
  ----------------------------------------------------------------
  p_fsm : process(sysclk)
    variable cmp_ok : boolean;
    variable j      : integer;
    variable k : integer;
    variable b : std_logic_vector(8*OUT_LEN-1 downto 0);            
  begin
    if rising_edge(sysclk) then
      if rst = '1' then
        state         <= S_IDLE;
        search_index  <= 0;
        found_index   <= 0;
        out_data_reg  <= (others => '0');
        out_ready_reg <= '0';
      else
        -- Default output pulse low
        out_ready_reg <= '0';

        case state is
          when S_IDLE =>
            -- start collecting immediately
            search_index <= 0;
            if byte_count > 0 then
              state <= S_WAIT_FOR_TRIGGER;
            else
              state <= S_IDLE;
            end if;

          when S_WAIT_FOR_TRIGGER =>
            -- trigger search when byte_count >= BYTE_LIMIT or timeout expired
            if (byte_count >= BYTE_LIMIT) or (timeout_cnt >= TIMEOUT_CYCLES) then
              -- only search if we have at least PAT_LEN bytes
              if byte_count >= PAT_LEN then
                -- start searching from 0..(byte_count - OUT_LEN)
                if byte_count >= OUT_LEN then
                  search_index <= 0;
                  state <= S_SEARCH;
                else
                  -- not enough bytes to produce full OUT_LEN if pattern found -> just clear data_buffer
                  state <= S_CLEAR;
                end if;
              else
                -- too few bytes -> clear data_buffer
                state <= S_CLEAR;
              end if;
            else
              state <= S_WAIT_FOR_TRIGGER;
            end if;

          when S_SEARCH =>
            -- iterate search_index from 0 to (byte_count - OUT_LEN)
            if search_index <= (byte_count - OUT_LEN) then
              -- compare pattern bytes at search_index..search_index+5
              cmp_ok := true;
              if data_buffer(search_index) /= PAT0 then cmp_ok := false; end if;
              if data_buffer(search_index+1) /= PAT1 then cmp_ok := false; end if;
              if data_buffer(search_index+2) /= PAT2 then cmp_ok := false; end if;
              if data_buffer(search_index+3) /= PAT3 then cmp_ok := false; end if;
              if data_buffer(search_index+4) /= PAT4 then cmp_ok := false; end if;
              if data_buffer(search_index+5) /= PAT5 then cmp_ok := false; end if;

              if cmp_ok then
                found_index <= search_index;
                state <= S_FOUND;
              else
                search_index <= search_index + 1;
                state <= S_SEARCH;
              end if;
            else
              -- finished search, not found
              state <= S_CLEAR;
            end if;

          when S_FOUND =>
            -- Build output vector: bytes found_index .. found_index+OUT_LEN-1
            -- We place first byte (earliest) at the MSB side so o_OUT_DATA(8*OUT_LEN-1 downto 8*(OUT_LEN-1)) = data_buffer(found_index)
            b := (others => '0');
            for k in 0 to OUT_LEN-1 loop
              b(8*(OUT_LEN - k)-1 downto 8*(OUT_LEN - k - 1)) := data_buffer(found_index + k);
            end loop;
            out_data_reg <= b;
            state <= S_OUTPUT;

          when S_OUTPUT =>
            -- Pulse ready for exactly one sysclk cycle
            out_ready_reg <= '1';
            state <= S_CLEAR;

          when S_CLEAR =>
            -- clear data_buffer and counters and return to wait
            write_ptr   <= 0;
            byte_count  <= 0;
            timeout_cnt <= 0;
            search_index<= 0;
            found_index <= 0;
            -- keep out_data_reg until next found; out_ready already pulsed
            state <= S_WAIT_FOR_TRIGGER;

          when others =>
            state <= S_IDLE;
        end case;
      end if;
    end if;
  end process p_fsm;

end rtl;
