`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 15:15:44
// Design Name: 
// Module Name: addroundkey_tb
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


module addroundkey_tb();
   reg [127:0] Msg, Key;
   wire [127:0] result;
   
Add_Roundkey uut4(.Msg(Msg), .Key(Key), .result(result));

initial begin
Msg = 0;
Key = 0;
#10;
Msg = 128'h046681e5e0cb199a48f8d37a2806264c;
Key = 128'ha0_fa_fe_17_88_54_2c_b1_23_a3_39_39_2a_6c_76_05;
end
 
endmodule
