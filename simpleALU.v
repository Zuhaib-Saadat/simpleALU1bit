`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 02:03:18 PM
// Design Name: 
// Module Name: simpleALU
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


module simpleALU (
    input a,b,clk,rst,
    input [1:0] sel,      // Selection lines
    output reg out         // Output
);

always @(posedge clk) begin //behavioral modeling scheme
if(!rst)
    case(sel)
        2'b00: out = a&b;
        2'b01: out = a|b;
        2'b10: out = !a;
        2'b11: out = !b;
    endcase
    else
    out=0;
 end
endmodule
