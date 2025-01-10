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
forever #5 clk = ~clk;  
end 
initial begin 
//data_in = 0;
//key = 0;
data_in = 128'h32_43_f6_a8_88_5a_30_8d_31_31_98_a2_e0_37_07_34;
key = 128'h2b_7e_15_16_28_ae_d2_a6_ab_f7_15_88_09_cf_4f_3c;
//# 90;
//data_in = 128'h6bc1bee22e409f96e93d7e117393172a;
//key = 128'h2b7e151628aed2a6abf7158809cf4f3c;
//# 90;
//data_in = 128'hae2d8a571e03ac9c9eb76fac45af8e51;
//key = 128'h3c4fcf098815f7aba6d2ae2816157b61;
//# 90;
//data_in = 128'h30c81c46a35ce411e5fbc1191a0a52ef;
//key = 128'h5f72641557f5bc92f7be3b291db9f91a;
//# 90;
//data_in = 128'hf69f2445df4f9b17ad2b417be66c3710;
//key = 128'h7b0c785e27e8ad3f8223207104725dd4;
//# 90;
//data_in = 128'h00112233445566778899aabbccddeeff;
//key = 128'h2d6e7b539fdf24a729ae3e9e4f8f3d1a;
//# 90;
//data_in = 128'hffeeddccbbaa99887766554433221100;
//key = 128'h1a2b3c4d5e6f70818293a4b5c6d7e8f9;
//# 90;
//data_in = 128'h0123456789abcdeffedcba9876543210;
//key = 128'h01010101010101010101010101010101;
//# 90;
//data_in = 128'h00112233445566778899aabbccddeeff;
//key = 128'hfedcba98765432100123456789abcdef;
//# 90;
//data_in = 128'hffeeddccbbaa99887766554433221100;
//key = 128'haabbccddeeff00112233445566778899;
//# 90; 
//data_in = 128'h00112233445566778899aabbccddeeff;
//key = 128'h000102030405060708090a0b0c0d0e0f;
end 
endmodule
