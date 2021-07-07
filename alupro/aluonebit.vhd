----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:57:57 04/08/2020 
-- Design Name: 
-- Module Name:    aluonebit - Behavioral 
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
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aluonebit is
Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           oper : in  STD_LOGIC_VECTOR(3 downto 0);
           cin : in  STD_LOGIC;
           carryout : out  STD_LOGIC;
           result : out  STD_LOGIC);
end aluonebit;

architecture Behavioral of aluonebit is

signal add : std_logic_vector ( 1 downto 0 );
signal s : std_logic;
begin

	s <=  not(b)  when oper ="0110" else 
	b ;
	
	 add <= ('0' & a ) + ( '0' & s ) + ('0' & cin ) ; 
	 
	 result <=  a and b when oper  = "0000" else 
	            a or b  when oper = "0001" else					
					add(0) ; 
	carryout <= add(1) ;


end Behavioral;

