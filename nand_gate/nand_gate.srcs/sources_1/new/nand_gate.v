`timescale 1ns/1ps

module nand_gate(
    output out_nand,
    input in1_nand,
    input in2_nand
    );

and_gate and_gate1(
    .out_and(w0),
    .in1_and(in1_nand),
    .in2_and(in2_nand)
    );
    
not_gate not_gate1(
    .out_not(out_nand),
    .in_not(w0)
    );
    
endmodule
