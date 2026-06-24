`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 23:50:49
// Design Name: 
// Module Name: mac_array
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


module mac_array(

input clk,
    input rst,

    input  [7:0] a1, b1,
    input  [7:0] a2, b2,
    input  [7:0] a3, b3,
    input  [7:0] a4, b4,

    input  [15:0] c1, c2, c3, c4,

    output [15:0] y1, y2, y3, y4

    );
    
    mac_unit m1 (.clk(clk), .rst(rst), .a(a1), .b(b1), .c(c1), .y(y1));
    mac_unit m2 (.clk(clk), .rst(rst), .a(a2), .b(b2), .c(c2), .y(y2));
    mac_unit m3 (.clk(clk), .rst(rst), .a(a3), .b(b3), .c(c3), .y(y3));
    mac_unit m4 (.clk(clk), .rst(rst), .a(a4), .b(b4), .c(c4), .y(y4));

endmodule
