`timescale 1ns / 1ps

module mux_behavioural(
    output out0,
    input in0,
    input in1,
    input sel
    );

assign out0 = (in0 & (~sel)) | (in1 & sel);

endmodule
