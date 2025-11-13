`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/12 15:03:25
// Design Name: 
// Module Name: lab8_p3_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab8_p3_tb();
reg clk,rst_n,x_in;
wire[2:0] state,next_state;
lab8_p3 u(x_in,clk,rst_n,state,next_state);
initial #80 $finish;
initial begin
    clk=1'b0;
    rst_n=1'b0;
    forever #5 clk=~clk;
end

initial begin
    x_in=1'b0;
    #2 rst_n=1'b1;
    #10 x_in=1'b1;
    #16 x_in=1'b0;
    #18 x_in=1'b1;
    #8 x_in=1'b0;
    #6 x_in=1'b1;
end
endmodule
