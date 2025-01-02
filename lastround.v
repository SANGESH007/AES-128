`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 00:30:21
// Design Name: 
// Module Name: lastround
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


module lastround(clk, rc, last_sub_key, last_state_arr, last_keyout, out_last);
input clk;
input [3:0] rc;
input [127:0] last_sub_key;
input [127:0] last_state_arr;
output [127:0] last_keyout;
output [127:0] out_last;

wire [127:0] sb,sr;
Key_expansion h1(.rc(rc),.key(last_sub_key), .Sub_key(last_keyout));
Byte_sub h2(.data(last_state_arr), .sb(sb));
Shift_rows h3(.sub(sb), .sr(sr));
Add_Roundkey h4(.Msg(sr), .Key(last_keyout), .result(out_last));
endmodule