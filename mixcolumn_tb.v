`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 15:03:34
// Design Name: 
// Module Name: mixcolumn_tb
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


module mixcolumn_tb();
reg clk;
reg [127:0] data_in;
wire  [127:0] data_out;

mixcolumn uut2(.clk(clk),.data_in(data_in),.data_out(data_out));
initial begin
clk=0;
forever #10 clk = ~clk;  
end 

initial begin
data_in = 0;
#10;
data_in = 128'hd4bf5d30e0b452aeb84111f11e2798e5;
end

endmodule
