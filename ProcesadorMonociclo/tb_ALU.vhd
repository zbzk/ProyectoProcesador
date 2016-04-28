--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:47 04/21/2016
-- Design Name:   
-- Module Name:   C:/P1P3 ZaBuZa/UTP 1er SEMESTRE 2015/ARQ DE COMPUTADORES/Xilinx/ProcesacorMonocido/tb_ALU.vhd
-- Project Name:  ProcesacorMonocido
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         operando1 : IN  std_logic_vector(31 downto 0);
         operando2 : IN  std_logic_vector(31 downto 0);
         alu_op : IN  std_logic_vector(5 downto 0);
         salida_alu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal operando1 : std_logic_vector(31 downto 0) := (others => '0');
   signal operando2 : std_logic_vector(31 downto 0) := (others => '0');
   signal alu_op : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal salida_alu : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          operando1 => operando1,
          operando2 => operando2,
          alu_op => alu_op,
          salida_alu => salida_alu
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      operando1 <= X"00000002";
		operando2 <= X"00000003";
	   alu_op <= "000000";
		wait for 100 ns;
		
		operando1 <= X"00000002";
		operando2 <= X"00000003";
	   alu_op <= "000001";
		wait for 100 ns;

      wait;
   end process;

END;
