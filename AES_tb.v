`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 01:03:03
// Design Name: 
// Module Name: AES_tb
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


module AES_tb();
reg clk;
reg [127:0] data_in, key;
wire [127:0] data_out;

AES_TOP dut(.clk(clk), .data_in(data_in), .key(key), .data_out(data_out));
initial begin
clk=0;
forever #10 clk = ~clk;  
end 
initial begin 
data_in = 0;
key = 0;
# 100;
 data_in = 128'h32_43_f6_a8_88_5a_30_8d_31_31_98_a2_e0_37_07_34;
  key = 128'h2b_7e_15_16_28_ae_d2_a6_ab_f7_15_88_09_cf_4f_3c;
end 
endmodule
