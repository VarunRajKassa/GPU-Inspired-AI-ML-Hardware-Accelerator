`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 23:51:41
// Design Name: 
// Module Name: controller
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


module controller(

input clk,
    input rst,
    input start,
    output reg compute_en,
    output reg done

    );
    
    reg [1:0] state;

    parameter IDLE    = 2'b00,
              COMPUTE = 2'b01,
              DONE    = 2'b10;

    // State transition
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= IDLE;
        else begin
            case (state)

                IDLE: begin
                    if (start)
                        state <= COMPUTE;
                end

                COMPUTE: begin
                    state <= DONE;
                end

                DONE: begin
                    state <= IDLE;
                end

            endcase
        end
    end

    // Output logic
    always @(*) begin
        compute_en = 0;
        done = 0;

        case (state)
            COMPUTE: compute_en = 1;
            DONE:    done = 1;
        endcase
    end
endmodule
