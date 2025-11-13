`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/15 14:47:42
// Design Name: 
// Module Name: lab4_p2
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


module lab4_p2(
       input[1:0]p1,p2,
       output reg o1,o2,o3
    );
    always @*
    begin
    // 00 = r 01=s 10 =p
        case({p1,p2})
            4'b0000,4'b0101,4'b1010: 
                {o1,o2,o3}=3'b100; // p1=p2
            4'b0001,4'b0110,4'b1000:
                {o1,o2,o3}=3'b010; // p1>p2
            default:
                {o1,o2,o3}=3'b001; // p1<p2
         endcase
    end
endmodule
