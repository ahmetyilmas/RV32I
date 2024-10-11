`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 14:35:36
// Design Name: 
// Module Name: reg_1
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


module dffe32(data, clock, reset, write_enable, q);
    input [31:0] data;
    input clock, reset;
    input write_enable;
    output reg [31:0] q;
    
    
    always @ (posedge clock or negedge reset) begin
        if (!reset) begin
            q <= 0;
        end else if (write_enable) begin
            q <= data;
        end
    end
endmodule
