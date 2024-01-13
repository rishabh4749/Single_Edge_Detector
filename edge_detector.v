`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2024 11:41:58
// Design Name: 
// Module Name: edge_detector
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


module edge_detector(
    input clk,
    input [7:0] in,
    output reg [7:0] pedge
    );
    reg temp;
    always @ (posedge clk) begin
    if(pedge!=0)
    pedge<=0;
    else begin
    if(temp==in)
    pedge<=0;
    else begin
    pedge<=in;
    end
    end
    temp<=in;
    end
endmodule
