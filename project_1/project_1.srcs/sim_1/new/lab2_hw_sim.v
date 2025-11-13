`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/17 14:54:49
// Design Name: 
// Module Name: lab2_hw_sim
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


module lab2_hw_sim();
   reg tb_x;
   reg tb_y;
   reg tb_z;
   wire tb_out;
   
   // link design and simulation
   lab2_hw link(
   .x(tb_x),
   .y(tb_y),
   .z(tb_z),
   .out(tb_out)
);

initial begin
 {tb_x,tb_y,tb_z} = 3'b000;
end

always begin
  #10 {tb_x,tb_y,tb_z}={tb_x,tb_y,tb_z}+1;
end
  
   
endmodule
