`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/29 14:55:02
// Design Name: 
// Module Name: lab6_p4
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


module lab6_p4(
    input A,B,C,D,
    output F
    );
    wire en,sd7,sd6,sd5,sd4,sd3,sd2,sd1,sd0;
    wire snf;
    //assign{en,sd15,sd14,sd13,sd12,sd11,sd10,sd9,sd8,sd7,sd6,sd5,sd4,sd3,sd2,sd1,sd0}=17'b01110_0101_0001_0001;
    // concat to get 16-1 mux
    assign en=1'b0;
    assign sd0=1'b1;
    assign sd1=1'b0;
    assign sd2=D;
    assign sd3=D;
    assign sd4=1'b0;
    assign sd5=D;
    assign sd6=D;
    assign sd7=D;
    MUX74151 MUX_low(.EN(en),.S0(C),.S1(B),.S2(A),
    .D7(sd7),.D6(sd6),.D5(sd5),.D4(sd4),.D3(sd3),.D2(sd2),.D1(sd1),.D0(sd0),
    .Y(F),.W(snf));
    
    
endmodule
