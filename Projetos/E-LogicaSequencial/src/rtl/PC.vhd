-- Elementos de Sistemas
-- developed by Luciano Soares
-- file: PC.vhd
-- date: 4/4/2017

-- Contador de 16bits
-- if (reset[t] == 1) out[t+1] = 0
-- else if (load[t] == 1)  out[t+1] = in[t]
-- else if (inc[t] == 1) out[t+1] = out[t] + 1
-- else out[t+1] = out[t]

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    port(
        clock     : in  STD_LOGIC;
        increment : in  STD_LOGIC;
        load      : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        input     : in  STD_LOGIC_VECTOR(15 downto 0);
        output    : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity;

architecture arch of PC is
  signal toout : STD_LOGIC_VECTOR(15 downto 0);
begin

  process (reset,load,increment, clock) begin

    if (reset = '1') then
      toout <= "0000000000000000";
    elsif (load = '1') then
      toout <= input;
    elsif (inc = '1') then
      hmmm : Inc16 port map (toout,toout);
    else
      toout <= toout;

  end if;

  output <= toout;

end architecture;
