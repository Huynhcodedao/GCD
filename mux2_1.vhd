
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity mux2_1 IS
port(a,b:in std_logic_vector(7 downto 0);
     s:in std_logic;
     y: out std_logic_vector(7 downto 0));
end mux2_1 ;

architecture rtl of mux2_1 is

begin

process(s,a)
 begin
  if (s='0')then 
	y<=a;
  else 
	y<=b;
  end if;
end process;

end rtl;
