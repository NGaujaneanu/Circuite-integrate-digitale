`timescale 1ns / 1ps

module mux_primitive(
    output out0,
    input in0,
    input in1,
    input sel
    );
    
and and_1(w1, in0, w0);
and and_2(w2, sel, in1);
not not_1(w0, sel);
or or_1(out0, w1, w2);

endmodule
