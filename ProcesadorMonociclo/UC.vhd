----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:06 04/21/2016 
-- Design Name: 
-- Module Name:    UC - ArqProcesador 
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

entity UC is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           alu_op : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture ArqProcesador of UC is

begin

   process(op, op3)
	begin
	
   	if(op = "10")then				
						case op3 is
							when "000000" => -- ADD
							   alu_op <= "000000";
								
							when "000001" => -- AND
							   alu_op <= "000001";
								
							when "000010" => -- OR
							   alu_op <= "000010";
							
							when "000011" => -- XOR
							   alu_op <= "000011";
								 
							when "000100" => -- SUB
							   alu_op <= "000100";
																
							when "000101" => -- ANDN
							   alu_op <= "000101";
															 
							when "000110" => -- ORN
							   alu_op <= "000110";
								 
						   when "000111" => -- XORN
							   alu_op <= "000111";
							
							when others => 
							   alu_op <= "000000";
								 
					   end case;
		end if;
   end process;

end ArqProcesador;

