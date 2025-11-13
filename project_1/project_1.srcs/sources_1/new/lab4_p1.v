`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/15 12:07:28
// Design Name: 
// Module Name: lab4_p1
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


module lab4_p1(
    input [1:0]a,b,
    output o1,o2,o3
    );
    
    reg o1,o2,o3;// the assigned object must be reg!! declare it!
    always @*
    begin
    if(a==b)
        {o1,o2,o3}=3'b100;
    else if(a<b)
        {o1,o2,o3}=3'b010;
    else 
        {o1,o2,o3}=3'b001;
    end
endmodule
