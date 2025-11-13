`timescale 1ns / 1ps



module lab_a2_p2_3(
    input [6:0] ascii,
    output y
);
wire neg_en=ascii[6]&ascii[5]&ascii[4];
wire D={1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0};
endmodule
