`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/22 15:14:09
// Design Name: 
// Module Name: lab5_game
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


module lab5_game(
    input [1:0] p1,
    input [1:0] p2,
    output o1,o2,o3,
    output tub_sel1,tub_sel2,
    output [7:0] tub_control1,tub_control2
    );
    
    // initialize
    lab4_p2 comp(.p1(p1),.p2(p2),.o1(o1),.o2(o2),.o3(o3));
    //? assign
    assign tub_sel1=1'b1;
    assign tub_sel2=1'b1;
    lab5_p2 player1(.tub_sel(tub_sel1),.tub_control(tub_control1),.in(p1));
    lab5_p2 player2(.tub_sel(tub_sel2),.tub_control(tub_control2),.in(p2));
    
    
endmodule
