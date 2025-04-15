/*
    This file was generated automatically by Alchitry Labs 2.0.28-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module game_regfiles (
        input wire clk,
        input wire rst,
        input wire [3:0] wa,
        input wire we,
        input wire [31:0] data,
        input wire [3:0] ra1,
        input wire [3:0] ra2,
        output reg [31:0] rd1,
        output reg [31:0] rd2,
        output reg [31:0] timer_out,
        output reg [31:0] score_out,
        output reg [31:0] button1_out,
        output reg [31:0] button2_out,
        output reg [31:0] button3_out,
        output reg [31:0] highscore_out,
        output reg [31:0] flag_out,
        output reg [31:0] debug
    );
    logic [31:0] D_game_flag_d, D_game_flag_q = 1'h0;
    logic [31:0] D_timer_d, D_timer_q = 1'h0;
    logic [31:0] D_score_d, D_score_q = 1'h0;
    logic [31:0] D_curr_button_d, D_curr_button_q = 1'h0;
    logic [31:0] D_button1_d, D_button1_q = 4'h8;
    logic [31:0] D_button2_d, D_button2_q = 4'h8;
    logic [31:0] D_button3_d, D_button3_q = 4'h8;
    logic [31:0] D_temp_d, D_temp_q = 1'h0;
    logic [31:0] D_highscore_d, D_highscore_q = 1'h0;
    logic [31:0] D_rng_d, D_rng_q = 1'h0;
    always @* begin
        D_game_flag_d = D_game_flag_q;
        D_curr_button_d = D_curr_button_q;
        D_button1_d = D_button1_q;
        D_button2_d = D_button2_q;
        D_button3_d = D_button3_q;
        D_score_d = D_score_q;
        D_rng_d = D_rng_q;
        D_timer_d = D_timer_q;
        D_temp_d = D_temp_q;
        D_highscore_d = D_highscore_q;
        
        if (we) begin
            
            case (wa)
                1'h0: begin
                    D_game_flag_d = data;
                end
                1'h1: begin
                    D_curr_button_d = data;
                end
                2'h2: begin
                    D_button1_d = data;
                end
                2'h3: begin
                    D_button2_d = data;
                end
                3'h4: begin
                    D_button3_d = data;
                end
                3'h5: begin
                    D_score_d = data;
                end
                3'h6: begin
                    D_rng_d = data;
                end
                3'h7: begin
                    D_timer_d = data;
                end
                4'h8: begin
                    D_temp_d = data;
                end
                4'h9: begin
                    D_highscore_d = data;
                end
            endcase
        end
        
        case (ra1)
            1'h0: begin
                rd1 = D_game_flag_q;
            end
            1'h1: begin
                rd1 = D_curr_button_q;
            end
            2'h2: begin
                rd1 = D_button1_q;
            end
            2'h3: begin
                rd1 = D_button2_q;
            end
            3'h4: begin
                rd1 = D_button3_q;
            end
            3'h5: begin
                rd1 = D_score_q;
            end
            3'h6: begin
                rd1 = D_rng_q;
            end
            3'h7: begin
                rd1 = D_timer_q;
            end
            4'h8: begin
                rd1 = D_temp_q;
            end
            4'h9: begin
                rd1 = D_highscore_q;
            end
            default: begin
                rd1 = 1'h0;
            end
        endcase
        
        case (ra2)
            1'h0: begin
                rd2 = D_game_flag_q;
            end
            1'h1: begin
                rd2 = D_curr_button_q;
            end
            2'h2: begin
                rd2 = D_button1_q;
            end
            2'h3: begin
                rd2 = D_button2_q;
            end
            3'h4: begin
                rd2 = D_button3_q;
            end
            3'h5: begin
                rd2 = D_score_q;
            end
            3'h6: begin
                rd2 = D_rng_q;
            end
            3'h7: begin
                rd2 = D_timer_q;
            end
            4'h8: begin
                rd2 = D_temp_q;
            end
            4'h9: begin
                rd2 = D_highscore_q;
            end
            default: begin
                rd2 = 1'h0;
            end
        endcase
        timer_out = D_timer_q;
        score_out = D_score_q;
        button1_out = D_button1_q;
        button2_out = D_button2_q;
        button3_out = D_button3_q;
        highscore_out = D_highscore_q;
        flag_out = D_game_flag_q;
        debug = D_highscore_q;
    end
    
    
    always @(posedge (clk)) begin
        if ((rst) == 1'b1) begin
            D_game_flag_q <= 1'h0;
            D_timer_q <= 1'h0;
            D_score_q <= 1'h0;
            D_curr_button_q <= 1'h0;
            D_button1_q <= 4'h8;
            D_button2_q <= 4'h8;
            D_button3_q <= 4'h8;
            D_temp_q <= 1'h0;
            D_highscore_q <= 1'h0;
            D_rng_q <= 1'h0;
        end else begin
            D_game_flag_q <= D_game_flag_d;
            D_timer_q <= D_timer_d;
            D_score_q <= D_score_d;
            D_curr_button_q <= D_curr_button_d;
            D_button1_q <= D_button1_d;
            D_button2_q <= D_button2_d;
            D_button3_q <= D_button3_d;
            D_temp_q <= D_temp_d;
            D_highscore_q <= D_highscore_d;
            D_rng_q <= D_rng_d;
        end
    end
endmodule