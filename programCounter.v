`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 13:14:34
// Design Name: 
// Module Name: program_counter
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


module program_counter(clk, res, next_pc, wr_en, pc);
    input clk;
    input res;
    input [31:0]next_pc;
    input wr_en;
    output reg [31:0]pc;
    
    initial begin
        pc <= 32'h00000000;
    end
    
    always @(posedge clk or negedge res) begin
        if(!res) begin
            pc <= 32'b0;
        end else if (wr_en) begin
            pc <= next_pc;
        end else begin
            pc <= pc + 32'h00000004;
        end
    end
endmodule
