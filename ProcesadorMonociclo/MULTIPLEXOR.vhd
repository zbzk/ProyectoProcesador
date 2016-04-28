----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:58 04/21/2016 
-- Design Name: 
-- Module Name:    MULTIPLEXOR - ArqProcesador 
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

entity MULTIPLEXOR is
    Port ( crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           inmediato : in  STD_LOGIC_VECTOR (31 downto 0);
           i : in  STD_LOGIC;
           salida_mux : out  STD_LOGIC_VECTOR (31 downto 0));
end MULTIPLEXOR;

architecture ArqProcesador of MULTIPLEXOR is

begin

 process(crs2,inmediato,i)
	begin
		if(i = '1')then
			salida_mux <= inmediato;
		else
			if(i = '0')then
				salida_mux <= crs2;
			end if;
		end if;
	end process;

end ArqProcesador;

