`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/15 14:53:42
// Design Name: 
// Module Name: lab4_p2_tb
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


module lab4_p2_tb();
reg [1:0]simp1,simp2;
wire out1,out2,out3;
lab4_p2 link(.p1(simp1),.p2(simp2),.o1(out1),.o2(out2),.o3(out3));
integer i,j;
initial 
begin
    for(i=0;i<3;i=i+1)
        begin
        for(j=0;j<3;j=j+1)
            begin
            simp1=i;
            simp2=j;
            #10;
        end
    end
    #10 $finish;
end
        
endmodule
