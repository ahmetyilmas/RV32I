`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 14:45:05
// Design Name: 
// Module Name: dec5e
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


module dec5e (n, master_enable, enable);
    input [4:0] n;
    input master_enable;
    output [31:0] enable;
    
    assign enable = master_enable ? decoder(n) : 32'h00000000;
    
    function [31:0] decoder;
        input [4:0] n;
        case (n)
            5'd00 : decoder = 32'h00000001;
            5'd01 : decoder = 32'h00000002;
            5'd02 : decoder = 32'h00000004;
            5'd03 : decoder = 32'h00000008;
            5'd04 : decoder = 32'h00000010;
            5'd05 : decoder = 32'h00000020;
            5'd06 : decoder = 32'h00000040;
            5'd07 : decoder = 32'h00000080;
            5'd08 : decoder = 32'h00000100;
            5'd09 : decoder = 32'h00000200;
            5'd10 : decoder = 32'h00000400;
            5'd11 : decoder = 32'h00000800;
            5'd12 : decoder = 32'h00001000;
            5'd13 : decoder = 32'h00002000;
            5'd14 : decoder = 32'h00004000;
            5'd15 : decoder = 32'h00008000;
            5'd16 : decoder = 32'h00010000;
            5'd17 : decoder = 32'h00020000;
            5'd18 : decoder = 32'h00040000;
            5'd19 : decoder = 32'h00080000;
            5'd20 : decoder = 32'h00100000;
            5'd21 : decoder = 32'h00200000;
            5'd22 : decoder = 32'h00400000;
            5'd23 : decoder = 32'h00800000;
            5'd24 : decoder = 32'h01000000;
            5'd25 : decoder = 32'h02000000;
            5'd26 : decoder = 32'h04000000;
            5'd27 : decoder = 32'h08000000;
            5'd28 : decoder = 32'h10000000;
            5'd29 : decoder = 32'h20000000;
            5'd30 : decoder = 32'h40000000;
            5'd31 : decoder = 32'h80000000;
        
        endcase
    endfunction
endmodule



