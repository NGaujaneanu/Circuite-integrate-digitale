`timescale 1ns / 1ps

module data_clock_alligned();   //modul de test, nu avem lista de porturi
                                //semnalele sunt generate intern

reg clk;         //semnalul de ceas
reg [3:0] data;  //semnalul de 4 biti pe care il vom alinia la frontul ceasului

//generarea semnalului de ceas
initial begin
    data <= 0;
    
    clk = 0;
    forever #5 clk = ~clk;
end
//

integer index;

//generarea semnalului aliniat la frontul ceasului
initial begin
    for(index = 0; index < 16; index = index + 1) begin //repeta de 10 ori
        @(posedge clk) begin //la fiecare front de ceas
            data <= data + 1; //incrementeaza semnalul data
        end
    end 
    #20 $stop();
end
//

endmodule
