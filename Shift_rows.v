`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2024 18:20:10
// Design Name: 
// Module Name: Shift_rows
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


module Shift_rows(sub, sr);
input  [127:0] sub;
output [127:0] sr;

assign sr[127:120] = sub[127:120];  
assign sr[119:112] = sub[87:80];
assign sr[111:104] = sub[47:40];
assign sr[103:96]  = sub[7:0];
   
assign sr[95:88] = sub[95:88];
assign sr[87:80] = sub[55:48];
assign sr[79:72] = sub[15:8];
assign sr[71:64] = sub[103:96];
   
assign sr[63:56] = sub[63:56];
assign sr[55:48] = sub[23:16];
assign sr[47:40] = sub[111:104];
assign sr[39:32] = sub[71:64];
   
assign sr[31:24] = sub[31:24];
assign sr[23:16] = sub[119:112];
assign sr[15:8]  = sub[79:72];
assign sr[7:0]   = sub[39:32]; 
endmodule
