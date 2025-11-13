`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/22 14:53:38
// Design Name: 
// Module Name: lab5_p2
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


module lab5_p2(
    input [1:0] in,
    output tub_sel,
    output reg [7:0] tub_control
    );
    assign tub_sel=1'b1;
    always @ * begin    
        case(in)
        2'b00:tub_control=8'b00001010; // rock = 00
        2'b01:tub_control=8'b10110110; //sessior = 01
        2'b10:tub_control=8'b11001110; // paper =10
        default: tub_control=8'b1001_1110; // E=11
        endcase
    end    
endmodule
