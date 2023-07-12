`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2023 10:22:47 PM
// Design Name: 
// Module Name: Baud_Generator_tb
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


module Baud_Generator_tb();

    reg clk_in;

	wire clk_out1;
	wire clk_out2;

	Baud_Generator uut (
		.clk_in(clk_in), 
		.clk_out1(clk_out1), 
		.clk_out2(clk_out2)
	);

	initial 
	begin
		clk_in = 0;
		forever #5 clk_in=~clk_in; 
	end
endmodule
