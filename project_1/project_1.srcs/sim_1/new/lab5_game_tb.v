`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/22 15:28:14
// Design Name: 
// Module Name: lab5_game_tb
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


module lab5_game_tb();
    reg [1:0] p1,p2;
    wire o1,o2,o3;
    wire tub_sel1,tub_sel2;
    wire [7:0] tub_control1,tub_control2;
    lab5_game(.p1(p1),.p2(p2),.o1(o1),.o2(o2),.o3(o3),.tub_sel1(tub_sel1),.tub_control1(tub_control1),.tub_sel2(tub_sel2),.tub_control2(tub_control2));
    
    initial begin
    
endmodule
