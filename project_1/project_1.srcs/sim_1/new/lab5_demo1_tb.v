`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/22 14:29:25
// Design Name: 
// Module Name: lab5_demo1_tb
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


module lab5_demo1_tb(

    );
    reg [3:0] in_b4_sim;
    wire tub_sel_sim;
    wire[7:0] tub_control_sim;
    
    lab5_demo1 dut(in_b4_sim,tub_sel_sim,tub_control_sim);
    initial begin
    in_b4_sim=4'b1001;
    end
endmodule
