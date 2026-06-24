`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 23:49:36
// Design Name: 
// Module Name: mac_unit
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


module mac_unit(

 input        clk,
    input        rst,
    input  [7:0] a,
    input  [7:0] b,
    input  [15:0] c,
    output reg [15:0] y

    );
    
     always @(posedge clk or posedge rst) begin
        if (rst)
            y <= 16'd0;
        else
            y <= (a * b) + c;
    end
endmodule
