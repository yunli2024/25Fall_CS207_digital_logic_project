`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/12 19:02:51
// Design Name: 
// Module Name: lab8_p2
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


module lab8_p2(
        input[4:0] x_in,
        input clk,rst_n,// reset is important in our project
        output y_out
    );
    reg[2:0] state,next_state;
    parameter[2:0] s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
    // state register: generate state
    always @(posedge clk,negedge rst_n) begin
        if(~rst_n) state=s0;
        else state=next_state;
    end
    // nextstate combinational logic
    always @(x_in) begin
        
endmodule
