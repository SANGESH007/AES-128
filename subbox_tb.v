`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 14:47:51
// Design Name: 
// Module Name: subbox_tb
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


module subbox_tb();
reg [127:0]data ;
wire [127:0]sb;

Byte_sub uut(.data(data), .sb(sb));
initial begin
data = 0;
#10;
data = 128'h19_3d_e3_be_a0_f4_e2_2b_9a_c6_8d_2a_e9_f8_48_08;
end
endmodule
