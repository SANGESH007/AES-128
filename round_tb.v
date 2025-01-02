`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 15:56:45
// Design Name: 
// Module Name: round_tb
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


module round_tb();
reg clk;
reg [3:0] rc;
reg [127:0] key;
reg [127:0] msg;
wire [127:0] keyout;
wire [127:0] roundout;

round_1 uut6(.clk(clk), .rc(rc), .sub_key(key), .state_arr(msg), .keyout(keyout), .roundout(roundout));
initial begin
clk=0;
forever #10 clk = ~clk;  
end 

initial begin
rc=0;key=0;msg=0; #10;
rc = 4'b0000;
//key =   128'ha0_fa_fe_17_88_54_2c_b1_23_a3_39_39_2a_6c_76_05;
key = 128'h2b_7e_15_16_28_ae_d2_a6_ab_f7_15_88_09_cf_4f_3c;
msg = 128'h19_3d_e3_be_a0_f4_e2_2b_9a_c6_8d_2a_e9_f8_48_08;

end
endmodule
