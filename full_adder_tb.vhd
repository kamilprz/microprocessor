
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity full_adder_tb is
end full_adder_tb;

architecture Behavioral of full_adder_tb is
    COMPONENT full_adder
    Port ( A, B, C_in : in std_logic;
         Z : out std_logic;
         C_out : out std_logic 
    );
    END COMPONENT;
    
    signal A,B,C_in : std_logic := '0';
    signal Z : std_logic := '0';
    signal C_out : std_logic := '0';
    
begin

    uut : full_adder PORT MAP (
        A => A,
        B => B,
        C_in => C_in,
        Z => Z,
        C_out => C_out
    );
    
    
    stim_process: process
    begin
    
    A <= '1';
    B <= '0';
    C_in <= '0';
    wait for 5 ns;
    
    end process;

end Behavioral;