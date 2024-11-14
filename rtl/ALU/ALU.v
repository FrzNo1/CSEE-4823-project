`timescale 1ns/1ps
module ALU(X, B, R, y, valid_in, clk);
    input [15:0] X, B;
    input clk;
    input R;
	input valid_in;  // Add the new control signal
    output reg [38:0] y;

    wire [38:0] multiplier_out;
    wire [38:0] adder_out;

	// Instantiate the multiplier and adder modules
    multiplier multiplier (.A(X), .B(B), .Out(multiplier_out));
    addern adder (.X(multiplier_out), .Y(y), .S(adder_out), .valid_in(valid_in), .clk(clk));  // Pass valid_in to the adder

    // Clocked logic
    always @(posedge clk) begin
        if (R) 
            y <= 39'b0;  // Reset y to zero when R is active
        else
            y <= adder_out;  // Update y with the adder's output
    end
endmodule


module multiplier(A,B,Out);
	
	input wire [15:0]A,B;
	output wire [38:0]Out;
	
	assign Out[31:0] = A * B;
	assign Out[38:32] = {7{Out[31]}};
endmodule


module addern(X, Y, S, valid_in, clk);
    parameter n = 38; // Update to 38 for 39-bit width
    input wire [n:0] X, Y;
    input wire valid_in, clk;
    output wire [n:0] S;

	assign S = valid_in ? X + Y : Y;
endmodule

