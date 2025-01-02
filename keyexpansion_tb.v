`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 15:30:00
// Design Name: 
// Module Name: keyexpansion_tb
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


module keyexpansion_tb();
    reg  [3:0] rc;
    reg  [127:0] key;
    wire [127:0] Sub_key;
    
Key_expansion uut5(.rc(rc),.key(key), .Sub_key(Sub_key));
initial begin
rc=4'b0000;key = 0;
#10;
rc=4'b0000;key = 128'ha0_fa_fe_17_88_54_2c_b1_23_a3_39_39_2a_6c_76_05;
#10;rc=4'b0001;
#10;rc=4'b0010;
#10;rc=4'b0011;
#10;rc=4'b0100;
#10;rc=4'b0101;
#10;rc=4'b0110;
#10;rc=4'b0111;
#10;rc=4'b1000;
#10;rc=4'b1001;
end

endmodule
