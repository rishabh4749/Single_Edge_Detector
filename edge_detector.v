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


module des (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    reg [7:0] temp;
    
    always @ (posedge clk)
    begin
    temp <= in;
    pedge <= ~temp & in;
    end
    
endmodule
