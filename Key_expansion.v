`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2024 17:12:43
// Design Name: 
// Module Name: Key_expansion
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


module Key_expansion(rc,key, Sub_key);
    input  [3:0] rc;
    input  [127:0] key;
    output [127:0] Sub_key;
    
    wire [31:0] W0, W1, W2, W3, W4, W5, W6, W7, temp;
    
    assign W3 = key[31:0];
    assign W2 = key[63:32];
    assign W1 = key[95:64];
    assign W0 = key[127:96];
   
    sbox a1(.a(W3[23:16]),.c(temp[31:24]));
    sbox a2(.a(W3[15:8]),.c(temp[23:16]));
    sbox a3(.a(W3[7:0]),.c(temp[15:8]));
    sbox a4(.a(W3[31:24]),.c(temp[7:0]));


    assign W4 = temp ^ rcon(rc) ^ W0;
    assign W5 = temp ^ rcon(rc) ^ W0 ^ W1;
    assign W6 = temp ^ rcon(rc) ^ W0 ^ W1 ^ W2;
    assign W7 = temp ^ rcon(rc) ^ W0 ^ W1 ^ W2 ^ W3;
    assign Sub_key = {W4, W5, W6, W7};

    function [31:0] rcon;
    input [3:0] rc;
    case(rc)
    4'h0 : rcon=32'h01_00_00_00;
    4'h1: rcon=32'h02_00_00_00;
    4'h2: rcon=32'h04_00_00_00;
    4'h3: rcon=32'h08_00_00_00;
    4'h4: rcon=32'h10_00_00_00;
    4'h5: rcon=32'h20_00_00_00;
    4'h6: rcon=32'h40_00_00_00;
    4'h7: rcon=32'h80_00_00_00;
    4'h8: rcon=32'h1b_00_00_00;
    4'h9: rcon=32'h36_00_00_00;
    default: rcon=32'h00_00_00_00;
    endcase
    endfunction
    
endmodule
