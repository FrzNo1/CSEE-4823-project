`timescale 1ns/1ps
`define SD #0.010
`define HALF_CLOCK_PERIOD #5

module testbench();
// Inputs
  reg [15:0] X;
  reg [15:0] B;
  reg R;
  reg clk;
  reg valid_in;  // Added the valid_in signal

  // Output
  wire [38:0] y;

  // Instantiate the ALU
  ALU uut (
    .X(X),
    .B(B),
    .R(R),
    .y(y),
    .clk(clk),
    .valid_in(valid_in)  // Connect valid_in to the ALU
  );

  // Clock Generation
  always begin
    `HALF_CLOCK_PERIOD;
    clk = ~clk;  // Toggle clock every 5ns (period = 10ns, freq = 100MHz)
  end

  // Stimulus
  initial begin
    // Initialize Inputs
    clk = 0;
    R = 0;
    X = 0;
    B = 0;
    valid_in = 1;

    // Apply reset and observe the output
    $display("Test 1: Resetting ALU");
    R = 1;  // Apply reset
    #10;    // Wait for a few clock cycles
    R = 0;  // Release reset
    @(posedge clk); // Wait for a positive edge

    // Test Case 1: X = 2, B = 3 (Multiplication and Addition)
    X = 2;
    B = 3;
    @(posedge clk); // Apply inputs and wait for positive edge
    $display("Test 2: X = 2, B = 3");
    $display("Expected multiplier result: 2 * 3 = 6");
    $display("Expected final result: 6 + 0 = 6");
    $display("ALU Output y = %d", y);

    // Test Case 2: X = 5, B = 4 (Multiplication and Addition)
    X = 5;
    B = 4;
    @(posedge clk); // Apply inputs and wait for positive edge
    $display("Test 3: X = 5, B = 4");
    $display("Expected multiplier result: 5 * 4 = 20");
    $display("Expected final result: 20 + 6 = 26");
    $display("ALU Output y = %d", y);

    // Test Case 3: X = 1, B = 1 (Multiplication and Addition)
    X = 1;
    B = 1;
    @(posedge clk); // Apply inputs and wait for positive edge
    $display("Test 4: X = 1, B = 1");
    $display("Expected multiplier result: 1 * 1 = 1");
    $display("Expected final result: 1 + 26 = 27");
    $display("ALU Output y = %d", y);

    // Test Case 4: X = 16, B = 3 (Multiplication and Addition)
    X = 16;
    B = 3;
    @(posedge clk); // Apply inputs and wait for positive edge
    $display("Test 5: X = 16, B = 3");
    $display("Expected multiplier result: 16 * 3 = 48");
    $display("Expected final result: 48 + 27 = 75");
    $display("ALU Output y = %d", y);

    valid_in = 0;  // Disable further addition (keep the result at 75)

    @(posedge clk); // Apply inputs and wait for positive edge
    @(posedge clk); // Apply inputs and wait for positive edge
    @(posedge clk); // Apply inputs and wait for positive edge

    // Test finished
    $display("Test finished.");
    $finish;
  end

endmodule
