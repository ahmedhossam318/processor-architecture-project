----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:28:36 04/08/2020 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu is
   Port ( data1 : in  STD_LOGIC_VECTOR(31 downto 0);
           data2 : in  STD_LOGIC_VECTOR(31 downto 0);
           aluop : in  STD_LOGIC_VECTOR(3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR(31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end alu;

architecture Behavioral of alu is
signal car : STD_LOGIC_VECTOR (31 downto 0);
	signal res : STD_LOGIC_VECTOR (31 downto 0);
	signal tmpp : std_logic_vector (31 downto 0);
	signal tem : STD_LOGIC;
	signal sett : std_logic;
begin
		 alu1bit : aluonebit port map (data1(0),data2(0),aluop,aluop(2),car(0),sett,tmpp(0),res(0));
 alu2bit : aluonebit port map (data1(1),data2(1),aluop,car(0),car(1),'0',tmpp(1),res(1)); 
 alu3bit : aluonebit port map (data1(2),data2(2),aluop,car(1),car(2),'0',tmpp(2),res(2));
 alu4bit : aluonebit port map (data1(3),data2(3),aluop,car(2),car(3),'0',tmpp(3),res(3));
 alu5bit : aluonebit port map (data1(4),data2(4),aluop,car(3),car(4),'0',tmpp(4),res(4));
 alu6bit : aluonebit port map (data1(5),data2(5),aluop,car(4),car(5),'0',tmpp(5),res(5));
 alu7bit : aluonebit port map (data1(6),data2(6),aluop,car(5),car(6),'0',tmpp(6),res(6));
 alu8bit : aluonebit port map (data1(7),data2(7),aluop,car(6),car(7),'0',tmpp(7),res(7));
 alu9bit : aluonebit port map (data1(8),data2(8),aluop,car(7),car(8),'0',tmpp(8),res(8));
 alu10bit : aluonebit port map (data1(9),data2(9),aluop,car(8),car(9),'0',tmpp(9),res(9));
 alu11bit : aluonebit port map (data1(10),data2(10),aluop,car(9),car(10),'0',tmpp(10),res(10));
 alu12bit : aluonebit port map (data1(11),data2(11),aluop,car(10),car(11),'0',tmpp(11),res(11));
 alu13bit : aluonebit port map (data1(12),data2(12),aluop,car(11),car(12),'0',tmpp(12),res(12));
 alu14bit : aluonebit port map (data1(13),data2(13),aluop,car(12),car(13),'0',tmpp(13),res(13));
 alu15bit : aluonebit port map (data1(14),data2(14),aluop,car(13),car(14),'0',tmpp(14),res(14));
 alu16bit : aluonebit port map (data1(15),data2(15),aluop,car(14),car(15),'0',tmpp(15),res(15));
 alu17bit : aluonebit port map (data1(16),data2(16),aluop,car(15),car(16),'0',tmpp(16),res(16));
 alu18bit : aluonebit port map (data1(17),data2(17),aluop,car(16),car(17),'0',tmpp(17),res(17));
 alu19bit : aluonebit port map (data1(18),data2(18),aluop,car(17),car(18),'0',tmpp(18),res(18));
 alu20bit : aluonebit port map (data1(19),data2(19),aluop,car(18),car(19),'0',tmpp(19),res(19));
 alu21bit : aluonebit port map (data1(20),data2(20),aluop,car(19),car(20),'0',tmpp(20),res(20));
 alu22bit : aluonebit port map (data1(21),data2(21),aluop,car(20),car(21),'0',tmpp(21),res(21));
 alu23bit : aluonebit port map (data1(22),data2(22),aluop,car(21),car(22),'0',tmpp(22),res(22));
 alu24bit : aluonebit port map (data1(23),data2(23),aluop,car(22),car(23),'0',tmpp(23),res(23));
 alu25bit : aluonebit port map (data1(24),data2(24),aluop,car(23),car(24),'0',tmpp(24),res(24));
 alu26bit : aluonebit port map (data1(25),data2(25),aluop,car(24),car(25),'0',tmpp(25),res(25));
 alu27bit : aluonebit port map (data1(26),data2(26),aluop,car(25),car(26),'0',tmpp(26),res(26));
 alu28bit : aluonebit port map (data1(27),data2(27),aluop,car(26),car(27),'0',tmpp(27),res(27));
 alu29bit : aluonebit port map (data1(28),data2(28),aluop,car(27),car(28),'0',tmpp(28),res(28));
 alu30bit : aluonebit port map (data1(29),data2(29),aluop,car(28),car(29),'0',tmpp(29),res(29));
 alu31bit : aluonebit port map (data1(30),data2(30),aluop,car(29),car(30),'0',tmpp(30),res(30));
 alu32bit : aluonebit port map (data1(31),data2(31),aluop,car(30),car(31),'0',sett,res(31));
 dataout <= res;
 cflag <= car(31);
 oflag <= car(30) xor car (31);
 tem <= res(0) or res(1) or res(2) or res(3) or res(4) or res(5) or res(6) or res(7) or res(8) or res(9) or res(10) or res(11) or res(12) or res(13) or res(14) or res(15) or res(16) or res(17) or res(18) or res(19) or res(20) or res(21) or res(22) or res(23) or res(24) or res(25) or res(26) or res(27) or res(28) or res(29) or res(30) or res(31);
 zflag <= not(tem);

end Behavioral;

