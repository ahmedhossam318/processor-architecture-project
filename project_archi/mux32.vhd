----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:12:37 04/08/2020 
-- Design Name: 
-- Module Name:    mux32 - Behavioral 
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

entity mux32 is
GENERIC(n:NATURAL := 32);
	 Port ( op : out  STD_LOGIC_VECTOR(n-1 downto 0);
           selector : in  STD_LOGIC_VECTOR(4 downto 0);
			  r1 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r2 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r3 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r4 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r5 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r6 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r7 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r8 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r9 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r10 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r11 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r12 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r13 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r14 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r15 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r16 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r17 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r18 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r19 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r20 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r21 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r22 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r23 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r24 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r25 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r26 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r27 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r28 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r29 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r30 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r31 : in STD_LOGIC_VECTOR(n-1 downto 0);
			  r32 : in STD_LOGIC_VECTOR(n-1 downto 0)
			  );
end mux32;

architecture Behavioral of mux32 is

begin
op <= r1 when selector="00000" else
       r2 when selector="00001" else
		 r3 when selector="00010" else
       r4 when selector="00011" else 
       r5 when selector="00100" else 
       r6 when selector="00101" else
       r7 when selector="00110" else
       r8 when selector="00111" else
       r9 when selector="01000" else
       r10 when selector="01001" else
       r11 when selector="01010" else
       r12 when selector="01011" else
       r13 when selector="01100" else
		 r14 when selector="01101" else
		 r15 when selector="01110" else
		 r16 when selector="01111" else
		 r17 when selector="10000" else
		 r18 when selector="10001" else
		 r19 when selector="10010" else
		 r20 when selector="10011" else
		 r21 when selector="10100" else
		 r22 when selector="10101" else
		 r23 when selector="10110" else
		 r24 when selector="10111" else
		 r25 when selector="11000" else
		 r26 when selector="11001" else
		 r27 when selector="11010" else
		 r28 when selector="11011" else
		 r29 when selector="11100" else
		 r30 when selector="11101" else
		 r31 when selector="11110" else
		 r32 when selector="11111" else
      "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";	

end Behavioral;

