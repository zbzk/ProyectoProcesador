--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:41 04/21/2016
-- Design Name:   
-- Module Name:   C:/P1P3 ZaBuZa/UTP 1er SEMESTRE 2015/ARQ DE COMPUTADORES/Xilinx/ProcesacorMonocido/tb_MULTIPLEXOR.vhd
-- Project Name:  ProcesacorMonocido
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MULTIPLEXOR
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
 
ENTITY tb_MULTIPLEXOR IS
END tb_MULTIPLEXOR;
 
ARCHITECTURE behavior OF tb_MULTIPLEXOR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MULTIPLEXOR
    PORT(
         crs2 : IN  std_logic_vector(31 downto 0);
         inmediato : IN  std_logic_vector(31 downto 0);
         i : IN  std_logic;
         salida_mux : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal inmediato : std_logic_vector(31 downto 0) := (others => '0');
   signal i : std_logic := '0';

 	--Outputs
   signal salida_mux : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MULTIPLEXOR PORT MAP (
          crs2 => crs2,
          inmediato => inmediato,
          i => i,
          salida_mux => salida_mux
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      crs2 <= X"00000003";
		inmediato<= X"00000002";
		i<= '1';
		
		 wait for 100 ns;
		 
		 crs2 <= X"00000003";
		inmediato<= X"00000002";
		i<= '0';
		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
