----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:34:02 04/08/2020 
-- Design Name: 
-- Module Name:    alucontrol - Behavioral 
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
use work.OURLIBRARY.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alucontrol is
		 Port ( F : in  STD_LOGIC_VECTOR(5 downto 0);
           aluop0 : in  STD_LOGIC;
           aluop1 : in  STD_LOGIC;
           opertion : out  STD_LOGIC_VECTOR(3 downto 0));

end alucontrol;
signal tmp: std_logic_vector(3 downto 0);
architecture Behavioral of alucontrol is

begin
			tmp(3) <= (F(0) and F(1)) and aluop1;
			tmp(2) <= (F(1) and aluop1) or aluop0;
			tmp(1) <= not(F(2)) or not(aluop1);
			tmp(0) <= ((F(0) or F(3)) and aluop1) and not(tmp(3));
			opertion <= tmp;

end Behavioral;

