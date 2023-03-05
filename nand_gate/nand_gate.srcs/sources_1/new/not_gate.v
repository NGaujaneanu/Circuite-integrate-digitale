`timescale 1ns/1ps

module not_gate(
    output out_not,
    input  in_not
    );

assign out_not = ~in_not;

endmodule