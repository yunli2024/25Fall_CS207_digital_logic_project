`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/17 15:18:19
// Design Name: 
// Module Name: lab2_test
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


module lab2_test(
    input x,y,z,
    output out
    );
    wire nx,ny,and1,and2,and3;
    not n1(nx,x);
    not n2(ny,y);
    and a1(and1,nx,ny,z);
    and a2(and2,nx,y,z);
    and a3(and3,x,ny);
    or o1(out,and1,and2,and3);
    
endmodule
