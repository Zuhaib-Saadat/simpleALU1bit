`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 02:05:03 PM
// Design Name: 
// Module Name: simpleALU_tb
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


// Testbench for mux_4to1_behavioural module
module simpleALU_tb;
// Declare internal reg variables to drive design inputs
reg a, b, clk, rst;
reg [1:0] sel;
// Declare wire signals to collect design output
wire out;
// Instantiate the mux_4to1_behavioural module
simpleALU uut (
.a(a),
.b(b),
.clk(clk),
.rst(rst),
.sel(sel),
.out(out)
);
// Clock generation
always #5 clk = ~clk;
// Initialize inputs
initial begin
clk = 0;
rst = 0;
a = 0;
b = 0;
sel = 2'b00;
// Apply reset
#10 rst = 1;
#10 rst = 0;
// Test different selection lines
#10 a=1;b=1; sel = 2'b00; // Should output a|b
#10 a=0; sel = 2'b01; // Should output a|b
#10 sel = 2'b10; // Should output !a
#10 sel = 2'b11; // Should output !b
// Add more test cases as needed
// Finish simulation
#10 $finish;
end
// Display results
always @(posedge clk) begin
$display("Time=%t, sel=%b, out=%b", $time, sel, out);
end
endmodule

