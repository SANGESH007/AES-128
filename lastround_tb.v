`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 19:58:58
// Design Name: 
// Module Name: lastround_tb
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


module lastround_tb();

reg clk;
reg [3:0] rc;
reg [127:0] last_sub_key;
reg [127:0] last_state_arr;
wire [127:0] last_keyout;
wire [127:0] out_last;

lastround uut7 (.clk(clk), .rc(rc), .last_sub_key(last_sub_key), .last_state_arr(last_state_arr), .last_keyout(last_keyout), .out_last(out_last));

initial begin
clk=0;
forever #10 clk = ~clk;  
end 

initial begin
rc=0;last_sub_key=0;last_state_arr=0; #10;
rc = 4'b1001;
//key =   128'ha0_fa_fe_17_88_54_2c_b1_23_a3_39_39_2a_6c_76_05;
last_sub_key   = 128'hac_77_66_f3_19_fa_dc_21_28_d1_29_41_57_5c_00_6e;
last_state_arr = 128'heb_40_f2_1e_59_2e_38_84_8b_a1_13_e7_1b_c3_42_d2;

end


endmodule
