`timescale 1ns / 1ps


module D_Latch(
    input EN,D,
    output reg Q,
    output nQ
    );
    assign nQ=~Q;
    always @*
    begin
        if(EN) Q=D;
        else Q=Q;
    end
endmodule
