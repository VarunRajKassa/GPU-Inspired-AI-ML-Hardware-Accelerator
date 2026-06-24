`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 23:52:51
// Design Name: 
// Module Name: accelerator_top
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


module accelerator_top(

 input clk,
    input rst,
    input start,

    input [7:0] a1, b1,
    input [7:0] a2, b2,
    input [7:0] a3, b3,
    input [7:0] a4, b4,

    input [15:0] c1, c2, c3, c4,

    output [15:0] y1, y2, y3, y4,
    output done

    );
    
    wire compute_en;

    // Controller
    controller ctrl (
        .clk(clk),
        .rst(rst),
        .start(start),
        .compute_en(compute_en),
        .done(done)
    );

    // MAC Array
    mac_array macs (
        .clk(clk),
        .rst(rst),

        .a1(a1), .b1(b1),
        .a2(a2), .b2(b2),
        .a3(a3), .b3(b3),
        .a4(a4), .b4(b4),

        .c1(c1), .c2(c2), .c3(c3), .c4(c4),

        .y1(y1), .y2(y2), .y3(y3), .y4(y4)
    );

endmodule
