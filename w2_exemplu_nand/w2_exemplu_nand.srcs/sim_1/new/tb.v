`timescale 1ns / 1ps


module tb(); // din/in tb nu intra si iese nimic. niciodata.

reg tb_a;	// ce va fi intrare pentru dut, aici e declarat ca "reg", ca sa poata tine valori 
reg tb_b;	
wire tb_c;	// ce e declarat ca iesire pentru dut, aici e declarat ca "wire" pentru ca device-ul ii va da valorile

top dut	// instantierea modulului de tip "top" sub numele "dut" 
	(
		.a(tb_a),
		.b(tb_b),
		.c(tb_c)
    );

initial
begin // in loc de { ... } din c/c++, in Verilog se pune begin ... end 
	#10;		// dupa 10 unitati de timp 
	tb_a = 0;		// tb_a ia valoarea 0
	tb_b = 0;
	#10;		// dupa inca 10 unitati de timp, deci in total la 20
	tb_a = 1;
	tb_b = 0;
	#10;
	tb_a = 0;
	tb_b = 1;
	#10;
	tb_a = 1;
	tb_b = 1;
	#10;
	tb_a = 0;
	tb_b = 0;
	
	#20 $stop();	// oprirea simularii 
end //end pentru initial 

endmodule


