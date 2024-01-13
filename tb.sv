`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2024 11:42:23
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg [7:0] in;
    wire [7:0] pedge;
    always #5 clk=~clk;
    edge_detector dut(.clk(clk),.in(in),.pedge(pedge));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t in=%b pedge=%b",$time,in,pedge);
    clk<=0;
    in<=0;
    #4 in<=12;
    #10 in<=0;
    #10 in<=78;
    #10 in<=0;
    #10 in<=69;
    #40 $finish;
    end
endmodule
