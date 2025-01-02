`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 14:58:29
// Design Name: 
// Module Name: shiftrows_tb
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


module shiftrows_tb();
reg [127:0]sub ;
wire [127:0]sr;

Shift_rows uut1(.sub(sub), .sr(sr));
initial begin
sub = 0;
#10;
sub = 128'hd42711aee0bf98f1b8b45de51e415230;
end

endmodule
