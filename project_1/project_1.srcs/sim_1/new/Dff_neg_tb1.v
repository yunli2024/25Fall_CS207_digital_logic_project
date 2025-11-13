`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/05 15:01:02
// Design Name: 
// Module Name: Dff_neg_tb1
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


module Dff_neg_tb1();
reg clk,D;
wire Q;
Dff_negedge u(clk,D,Q);

initial begin
clk=1'b0;
forever #5 clk=~clk;
end

initial begin
D=1'b0;
forever #7 D=~D;
end

initial begin
#60 $finish();
end

endmodule
