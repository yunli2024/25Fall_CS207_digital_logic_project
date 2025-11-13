`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/29 14:39:03
// Design Name: 
// Module Name: MUX74151
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


module MUX74151(
        EN,S2,S1,S0,D7,D6,D5,D4,D3,D2,D1,D0,Y,W
    );
    input EN,S2,S1,S0,D7,D6,D5,D4,D3,D2,D1,D0;
    output reg Y;
    output W;
    always @*
    if(~EN)
        case({S2,S1,S0})
        3'b000:Y=D0;
        3'b001:Y=D1;
        3'b010:Y=D2;
        3'b011:Y=D3;
        3'b100:Y=D4;
        3'b101:Y=D5;
        3'b110:Y=D6;
        3'b111:Y=D7;
        endcase
    else
        Y=1'b0;
    assign W=~Y;
endmodule
