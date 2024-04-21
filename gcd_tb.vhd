

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity gcd_tb is
end gcd_tb;

architecture behav of gcd_tb is
component gcd
port (
       go,clk,rst : in std_logic; 
       x,y: in std_logic_vector (7 downto 0);
         d: out std_logic_vector (7 downto 0));
end component;

signal go,rst : std_logic;
signal x, y,d : std_logic_vector (7 downto 0);
signal clk :std_logic := '1';
begin
dut : gcd port map( go,clk,rst,x,y,d);

x<= "00001111";
y<= "00001010";
rst<='1','0'after 70 ns;
go<='0','1' after 220 ns,'0' after 420 ns;
clk <= not (clk) after 50 ns;


rst<='1','0'after 70 ns;
x<= "00011110";
y<= "00001011";
rst<='1','0'after 70 ns;
go<='0','1' after 220 ns,'0' after 420 ns;
clk <= not (clk) after 50 ns;




end behav;
