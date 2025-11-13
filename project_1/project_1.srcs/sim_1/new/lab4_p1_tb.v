`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/15 13:31:25
// Design Name: 
// Module Name: lab4_p1_tb
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


module lab4_p1_tb();
reg [1:0] sima,simb;
wire out1,out2,out3;
lab4_p1 link(.a(sima),.b(simb),.o1(out1),.o2(out2),.o3(out3));
integer i;
// 00 shitou 01 bu 10 jiandao
initial 
begin
    for(i=0;i<16;i=i+1)
    begin
        {sima,simb}=i;
        #10;
    end
    $finish;
end
endmodule
