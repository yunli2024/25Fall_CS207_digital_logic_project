`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/05 14:56:09
// Design Name: 
// Module Name: Dff_negedge
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


module Dff_negedge(
    input clk,D,
    output Q
    );
    wire P,nq1,nq2;
    D_Latch master(clk,D,P,nq1);
    D_Latch slaver(~clk,P,Q,nq2);
endmodule
