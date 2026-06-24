`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 23:54:24
// Design Name: 
// Module Name: tb_accelerator
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


module tb_accelerator;

    reg clk, rst, start;

    reg [7:0] a1, b1, a2, b2, a3, b3, a4, b4;
    reg [15:0] c1, c2, c3, c4;

    wire [15:0] y1, y2, y3, y4;
    wire done;

    accelerator_top dut (
        .clk(clk),
        .rst(rst),
        .start(start),

        .a1(a1), .b1(b1),
        .a2(a2), .b2(b2),
        .a3(a3), .b3(b3),
        .a4(a4), .b4(b4),

        .c1(c1), .c2(c2), .c3(c3), .c4(c4),

        .y1(y1), .y2(y2), .y3(y3), .y4(y4),
        .done(done)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        start = 0;

        #10 rst = 0;

        // Example inputs
        a1 = 2; b1 = 1; c1 = 9;    // 11
        a2 = 2; b2 = 2; c2 = 12;   // 16
        a3 = 4; b3 = 1; c3 = 15;   // 19
        a4 = 4; b4 = 2; c4 = 20;   // 28

        #10 start = 1;
        #10 start = 0;

        #50 $finish;
    end

endmodule