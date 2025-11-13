`timescale 1ns / 1ps
module dff(
    input clk,D,rst,
    output reg Q,
    output nQ
    );
    always @(posedge clk or negedge rst) begin
        if(~rst) Q<=1'b0;
        else Q<=D;
    end
endmodule
