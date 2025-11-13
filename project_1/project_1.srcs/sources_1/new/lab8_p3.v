`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/12 14:49:41
// Design Name: 
// Module Name: lab8_p3
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


module lab8_p3(
    input x_in,clk,rst_n,
    output reg [2:0] state,next_state
    
   );
   parameter s0=3'b001,s1=3'b010,s2=3'b100;
   always @(posedge clk,negedge rst_n) begin
        if(~rst_n) 
            state<=s0;
        else
            state<=next_state;
   end
   
   always @(state,x_in) begin
        case(state)
        s0:if(x_in) next_state=s1; else next_state=s0;
        s1:if(x_in) next_state=s2; else next_state=s1;
        s2:if(x_in) next_state=s0; else next_state=s2;
        endcase
    end
endmodule
