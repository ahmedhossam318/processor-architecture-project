----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:33 04/07/2020 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;
use work.OURLIBRARY.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
Generic(n:natural :=32);
Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;



architecture Behavioral of RegisterFile is

signal outt: STD_LOGIC_VECTOR(31 downto 0);

 signal sgl1: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl2: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl3: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl4: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl5: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl6: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl7: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl8: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl9: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl10: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl11: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl12: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl13: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl14: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl15: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl16: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl17: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl18: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl19: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl20: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl21: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl22: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl23: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl24: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl25: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl26: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl27: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl28: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl29: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl30: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl31: STD_LOGIC_VECTOR(31 downto 0);
 signal sgl32: STD_LOGIC_VECTOR(31 downto 0);
 
 
 
 
 
 
begin

decod : decoder port map (write_sel,'1',outt);
	
  regs1: reg generic map (n) port map(write_data,clk,write_ena and outt(0),'0','0',sgl1);
  regs2: reg generic map (n) port map(write_data,clk,write_ena and outt(1),'0','0',sgl2);
  regs3: reg generic map (n) port map(write_data,clk,write_ena and outt(2),'0','0',sgl3);
  regs4: reg generic map (n) port map(write_data,clk,write_ena and outt(3),'0','0',sgl4);
  regs5: reg generic map (n) port map(write_data,clk,write_ena and outt(4),'0','0',sgl5);
  regs6: reg generic map (n) port map(write_data,clk,write_ena and outt(5),'0','0',sgl6);
  regs7: reg generic map (n) port map(write_data,clk,write_ena and outt(6),'0','0',sgl7);
  regs8: reg generic map (n) port map(write_data,clk,write_ena and outt(7),'0','0',sgl8);
  regs9: reg generic map (n) port map(write_data,clk,write_ena and outt(8),'0','0',sgl9);
  regs10: reg generic map (n) port map(write_data,clk,write_ena and outt(9),'0','0',sgl10);
  regs11: reg generic map (n) port map(write_data,clk,write_ena and outt(10),'0','0',sgl11);
  regs12: reg generic map (n) port map(write_data,clk,write_ena and outt(11),'0','0',sgl12);
  regs13: reg generic map (n) port map(write_data,clk,write_ena and outt(12),'0','0',sgl13);
  regs14: reg generic map (n) port map(write_data,clk,write_ena and outt(13),'0','0',sgl14);
  regs15: reg generic map (n) port map(write_data,clk,write_ena and outt(14),'0','0',sgl15);
  regs16: reg generic map (n) port map(write_data,clk,write_ena and outt(15),'0','0',sgl16);
  regs17: reg generic map (n) port map(write_data,clk,write_ena and outt(16),'0','0',sgl17);
  regs18: reg generic map (n) port map(write_data,clk,write_ena and outt(17),'0','0',sgl18);
  regs19: reg generic map (n) port map(write_data,clk,write_ena and outt(18),'0','0',sgl19);
  regs20: reg generic map (n) port map(write_data,clk,write_ena and outt(19),'0','0',sgl20);
  regs21: reg generic map (n) port map(write_data,clk,write_ena and outt(20),'0','0',sgl21);
  regs22: reg generic map (n) port map(write_data,clk,write_ena and outt(21),'0','0',sgl22);
  regs23: reg generic map (n) port map(write_data,clk,write_ena and outt(22),'0','0',sgl23);
  regs24: reg generic map (n) port map(write_data,clk,write_ena and outt(23),'0','0',sgl24);
  regs25: reg generic map (n) port map(write_data,clk,write_ena and outt(24),'0','0',sgl25);
  regs26: reg generic map (n) port map(write_data,clk,write_ena and outt(25),'0','0',sgl26);
  regs27: reg generic map (n) port map(write_data,clk,write_ena and outt(26),'0','0',sgl27);
  regs28: reg generic map (n) port map(write_data,clk,write_ena and outt(27),'0','0',sgl28);
  regs29: reg generic map (n) port map(write_data,clk,write_ena and outt(28),'0','0',sgl29);
  regs30: reg generic map (n) port map(write_data,clk,write_ena and outt(29),'0','0',sgl30);
  regs31: reg generic map (n) port map(write_data,clk,write_ena and outt(30),'0','0',sgl31);
  regs32: reg generic map (n) port map(write_data,clk,write_ena and outt(31),'0','0',sgl32);
  

	muxx : mux32 port map(data1,read_sel1,sgl1,sgl2,sgl3,sgl4,sgl5,sgl6,sgl7,sgl8,sgl9,sgl10,sgl11,sgl12,sgl13,sgl14,sgl15,sgl16,sgl17,sgl18,sgl19,sgl20,sgl21,sgl22,sgl23,sgl24,sgl25,sgl26,sgl27,sgl28,sgl29,sgl30,sgl31,sgl32);
  muxx2 : mux32 port map(data2,read_sel2,sgl1,sgl2,sgl3,sgl4,sgl5,sgl6,sgl7,sgl8,sgl9,sgl10,sgl11,sgl12,sgl13,sgl14,sgl15,sgl16,sgl17,sgl18,sgl19,sgl20,sgl21,sgl22,sgl23,sgl24,sgl25,sgl26,sgl27,sgl28,sgl29,sgl30,sgl31,sgl32);
  


end Behavioral;

