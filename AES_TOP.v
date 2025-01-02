`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 00:39:13
// Design Name: 
// Module Name: AES_TOP
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


module AES_TOP(clk, data_in, key, data_out);
input clk;
input [127:0]data_in, key;
output [127:0] data_out;

wire [127:0] s1, s2, s3, s4, s5, s6, s7, s8, s9, s10;
wire [127:0] k1, k2, k3 ,k4, k5, k6 ,k7, k8, k9, k10;
wire [127:0] state_arr0;
assign state_arr0 = data_in ^ key;

round_1 r1(.clk(clk), .rc(4'b0000), .sub_key(key), .state_arr(state_arr0), .keyout(k1), .roundout(s1));
round_1 r2(.clk(clk), .rc(4'b0001), .sub_key(k1), .state_arr(s1), .keyout(k2), .roundout(s2));
round_1 r3(.clk(clk), .rc(4'b0010), .sub_key(k2), .state_arr(s2), .keyout(k3), .roundout(s3));
round_1 r4(.clk(clk), .rc(4'b0011), .sub_key(k3), .state_arr(s3), .keyout(k4), .roundout(s4));
round_1 r5(.clk(clk), .rc(4'b0100), .sub_key(k4), .state_arr(s4), .keyout(k5), .roundout(s5));
round_1 r6(.clk(clk), .rc(4'b0101), .sub_key(k5), .state_arr(s5), .keyout(k6), .roundout(s6));
round_1 r7(.clk(clk), .rc(4'b0110), .sub_key(k6), .state_arr(s6), .keyout(k7), .roundout(s7));
round_1 r8(.clk(clk), .rc(4'b0111), .sub_key(k7), .state_arr(s7), .keyout(k8), .roundout(s8));
round_1 r9(.clk(clk), .rc(4'b1000), .sub_key(k8), .state_arr(s8), .keyout(k9), .roundout(s9));
lastround r10 (.clk(clk), .rc(4'b1001), .last_sub_key(k9), .last_state_arr(s9), .last_keyout(k10), .out_last(data_out));
endmodule
