----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:41:55 04/08/2020 
-- Design Name: 
-- Module Name:    ALUONEBIT - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUONEBIT is
			Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           aluoper : in  STD_LOGIC_VECTOR(3 downto 0);
           carin : in  STD_LOGIC;
           carout : out  STD_LOGIC;
			  less :in std_logic;
			  set : out std_logic;
           c : out  STD_LOGIC);
	
end ALUONEBIT;
 signal td: std_logic;
 signal ts: std_logic;
 signal tt: std_logic;
 signal tb: std_logic;
 signal te: std_logic;
 signal tf: std_logic;
 signal tmp : std_logic_vector (1 downto 0);
 signal temp : std_logic_vector (1 downto 0);
architecture Behavioral of ALUONEBIT is

begin
		--td <= a and b;
 --ts <= a or b;
 --tb <= b when aluoper = "0010" else
       --not(b) when aluoper = "0110";
--question here for the tt about add and sub is that correct? 
tmp(0) <= aluoper(0);
tmp(1) <= aluoper(1);

 mux0 : mux2 port map (b,not b,aluoper(2),tb);
 -- dh l update bta3 l alu one bit l fe milestone 2 --
 mux22 : mux2 port map (a,not a,aluoper(3),tf);
 td <= tf and tb;
 ts <= tf or tb;
 -- ---------------------------------------  ----
 adder1: adder port map (tf,tb,carin,tt,carout);
 mux1: mux4 port map (tmp,td,ts,tt,less,te);
 set <= tt;
 c <= te;

end Behavioral;

