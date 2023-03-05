`timescale 1ns / 1ps

module and_gate(
    output out_and,
    input in1_and,
    input in2_and
    );
    
assign out_and = in1_and & in2_and;

endmodule
