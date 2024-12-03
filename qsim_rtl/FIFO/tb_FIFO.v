
`timescale 1ns/1ps
`define SD #0.010
`define HALF_CLOCK_PERIOD #5000
`define SLOW_HALF_CLOCK_PERIOD #80000
`define QSIM_OUT_FN_1	"./output.txt"
`define MATLAB_0	"./outputA.txt"
module testbench();
	reg 		clk1;
	reg 		clk2;
	reg [15:0]	w;
	reg 		resetn;
	reg 		enable;
	reg		enable_single;
	wire	[63:0]	A;
	integer 	i;
	integer		qsim_out_1;
	integer		a;
	reg		[15:0]val0,val1,val2,val3,val4,val5,val6,val7;
	integer 	error_count;

	FIFO FIFO(
			.resetn	(resetn),
			.enable	(enable),
			.enable_single(enable_single),
			.clk	(clk1),
			.clk2	(clk2),
			.w	(w),
			.A	(A)
	);

	
	always begin
		`HALF_CLOCK_PERIOD;
		clk2 =~clk2;
	end
	
	always begin
		`SLOW_HALF_CLOCK_PERIOD;
		clk1 = ~clk1;
	end

	initial begin
		qsim_out_1 = $fopen(`QSIM_OUT_FN_1,"w");
		a = $fopen(`MATLAB_0,"w");
		error_count = 0;
		clk1	= 0;
		clk2	= 1;
		enable	= 0;
		enable_single = 0;
		resetn	= 0;
		@(posedge clk1);
		resetn	= 1;
		w	= 0;
		enable	= 1;
		enable_single = 1;
		for (i = 0; i < 128*16; i = i+1) begin
			@(posedge clk2);
			if (i%16 == 0) begin
				w <= $urandom%256;
				$fwrite(qsim_out_1, "%d\n", w);
			end
			@(negedge clk2);
			$fwrite(a,"%d\n",A);
			
		end
		@(negedge clk1);
		resetn <= 0;
		@(posedge clk1);
		resetn <= 1;
		for (i = 0; i < 64; i = i+1) begin
			

			@(negedge clk1);
			
			w <= $urandom%65535;
			
			@(posedge clk1);


		end
		@(negedge clk1);

		@(posedge clk1);

		$fclose(qsim_out_1);
		$fclose(a);

		$finish;
	
	end

endmodule	

							
