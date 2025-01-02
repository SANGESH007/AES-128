`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 31.12.2024 18:03:20
// Design Name: 
// Module Name: Add_RoundKey
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


module Add_Roundkey(Msg, Key, result);
    input [127:0] Msg, Key;
    output [127:0] result;
 assign result = Msg ^ Key;
endmodule
