`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 19:04:17
// Design Name: 
// Module Name: round_1
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


module round_1(clk, rc, sub_key, state_arr, keyout, roundout);
input clk;
input [3:0] rc;
input [127:0] sub_key;
input [127:0] state_arr;
output [127:0] keyout;
output [127:0] roundout;

wire [127:0] sb, sr, mixcol;
Key_expansion y1(.rc(rc),.key(sub_key), .Sub_key(keyout));
Byte_sub y2(.data(state_arr), .sb(sb));
Shift_rows y3(.sub(sb), .sr(sr));
mixcolumn y4(.clk(clk),.data_in(sr),.data_out(mixcol));
Add_Roundkey y5(.Msg(mixcol), .Key(keyout), .result(roundout));
endmodule
