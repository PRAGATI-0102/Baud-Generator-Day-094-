`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2023 09:41:21 PM
// Design Name: 
// Module Name: Baud_Generator
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


module Baud_Generator(clk_in,clk_out1,clk_out2);

    input clk_in;
    output reg clk_out1=0; // for transmitter
    output reg clk_out2=0; // for reciever
    
    integer counter_1=0;
    integer counter_2=0;
    parameter div_value1=51;
    parameter div_value2=2;
    
    always@(posedge clk_in) 
    begin
        if(counter_1==div_value1) 
        begin
            counter_1=0;
            clk_out1=~clk_out1;
        end
        else 
        begin
            counter_1=counter_1+1;
            clk_out1=clk_out1;
        end
    end
    
    always@(posedge clk_in) 
    begin
        if(counter_2==div_value2) 
        begin
            counter_2=0;
            clk_out2=~clk_out2;
        end
        else 
        begin
            counter_2=counter_2+1;
            clk_out2=clk_out2;
        end
    end
endmodule
