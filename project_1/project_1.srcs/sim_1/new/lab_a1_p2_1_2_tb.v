`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/11 19:56:43
// Design Name: 
// Module Name: lab_a1_p2_1_2_tb
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


module lab_a1_p2_4_5_tb();
reg [1:0]tb_a,tb_b;
wire tb_o1,tb_o2;
lab_a1_p2_7 link1(.a(tb_a),.b(tb_b),.y(tb_o1));
lab_a1_p2_8 link2(.a(tb_a),.b(tb_b),.y(tb_o2));
integer i,j;
initial begin
tb_a=2'b0;
tb_b=2'b0;
for( i=0;i<4;i=i+1) begin
    tb_a=i;
    for (j=0;j<4;j=j+1)begin
        tb_b=j;
        #10;
       
    end
end
$finish;
end

initial $monitor("%d %d %d %d",tb_a, tb_b, tb_o1, tb_o2);
endmodule
