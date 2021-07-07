--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.ALL;


package OURLIBRARY is
			COMPONENT mux32 IS
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

			  
			  
   END COMPONENT;  
	
	COMPONENT decoder IS
		 GENERIC(n:natural :=32);
		 Port ( input : in  STD_LOGIC_VECTOR(4 downto 0);
				  enable : in  STD_LOGIC;
				  output : out  STD_LOGIC_VECTOR(n-1 downto 0));
	END COMPONENT;
	 
	 COMPONENT reg IS
		GENERIC(n:NATURAL);
		PORT (
		I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		CLK, LOD, INC, CLR: IN STD_LOGIC;
		O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
	END COMPONENT;
	
	
	  COMPONENT mux2 IS
     Port ( inp1 : in  STD_LOGIC;
           inp2 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           outtt : out  STD_LOGIC);
	END COMPONENT;
 
 
	  COMPONENT RegisterFile IS
	 Generic(n:natural :=32);
    Port ( read_sel1 : in  STD_LOGIC_VECTOR(4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR(4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR(4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR(31 downto 0);
           data1 : out  STD_LOGIC_VECTOR(31 downto 0);
           data2 : out  STD_LOGIC_VECTOR(31 downto 0));
	END COMPONENT;
 
 	 COMPONENT adder IS
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  cain : in STD_LOGIC;
           z : out  STD_LOGIC;
           cout : out  STD_LOGIC);
  END COMPONENT;
  
  COMPONENT aluonebit IS
	  Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           aluoper : in  STD_LOGIC_VECTOR(3 downto 0);
           carin : in  STD_LOGIC;
           carout : out  STD_LOGIC;
			  less :in std_logic;
			  set : out std_logic;
           c : out  STD_LOGIC);
  END COMPONENT;

COMPONENT alucontrol IS
	  Port ( F : in  STD_LOGIC_VECTOR(5 downto 0);
           aluop0 : in  STD_LOGIC;
           aluop1 : in  STD_LOGIC;
           opertion : out  STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;

   COMPONENT ALU IS
      Port ( data1 : in  STD_LOGIC_VECTOR(31 downto 0);
           data2 : in  STD_LOGIC_VECTOR(31 downto 0);
           aluop : in  STD_LOGIC_VECTOR(3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR(31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
   END COMPONENT;

 
end OURLIBRARY;
