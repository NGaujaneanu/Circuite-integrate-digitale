`timescale 1ns / 1ps

module nand_gate_tb();

reg a,b;
wire c;

nand_gate nand_gate1(
    .out_nand(c),
    .in1_nand(a),
    .in2_nand(b)
    );

initial begin
    a = 0;
    b = 0;
 #5 a = 1;
 #5 a = 0;
    b = 1;
 #5 a = 1;
 #5 a = 0;
    b = 0;
 #5 $stop();
 
end
endmodule
