package CONSTANTS is
	constant IVDELAY : time := 0.1 ns;
	constant NDDELAY : time := 0.2 ns;
	constant NDDELAYRISE : time := 0.6 ns;
	constant NDDELAYFALL : time := 0.4 ns;
	constant NRDELAY : time := 0.2 ns;
	constant DRCAS : time := 1 ns;
	constant DRCAC : time := 2 ns;
	constant NumBit : integer := 4;	
	constant TP_MUX : time := 0.5 ns;
	
	function log2( i : integer) return integer;

	--function f_log2 (x : positive) return natural;
      	--	variable i : natural;
  	--begin
	--	i := 0;  
	--	while (2**i < x) and i < 31 loop
	--		i := i + 1;
	--	end loop;
	--	return i;
	--end function;

end package CONSTANTS;

package body CONSTANTS is

	function log2( i : integer) return integer is
		variable temp    : integer := i;
		variable ret_val : integer := 0; 
	begin
		
		while temp > 1 loop
			ret_val := ret_val + 1;
			temp    := temp / 2;
		end loop;
		return ret_val;
	end function log2;

end package body CONSTANTS;