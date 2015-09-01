`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:34 05/24/2015 
// Design Name: 
// Module Name:    clk_div 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk_div(
input wire clk,
input wire rst,
input wire SW2,
output reg[31:0] clkdiv,
output wire Clk_CPU
    );
wire clk_out;

assign clk_out = (SW2)? clkdiv[25] : clkdiv[3];
BUFG cc(Clk_CPU,clk_out);

always@(posedge clk or posedge rst) begin
	if(rst) clkdiv <= 0;
	else clkdiv <= clkdiv + 1'b1;
end

endmodule
