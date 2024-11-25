
`timescale 1ns/1ps
`define QSIM_OUT_FN_1 		"./inputs.txt"
`define QSIM_OUT_FN_2 		"./outputs.txt"
`define HALF_CLK_PERIOD 	#10.000
`define QRTR_CLK_PERIOD		#5.000
`define ON 			1'b0
`define OFF 			1'b1
`define HIZ 			{20{1'bZ}}
`define ITER 			256
`define BLKS			1

module testbench();

	integer		i, writing;
	integer		qsim_out_1, qsim_out_2;
	integer		cmem0;
	reg		clk, WEN, CEN;
	wire		[19:0]	Q0;
	reg			[19:0]	D;
	reg	unsigned	[7:0]	CADDR;
	reg	unsigned	[7:0]	A0;

	cmem	DUT(
				.Q0 (Q0), 
				.A0 (A0),
				.D (D),
				.CADDR	(CADDR),
				.clk	(clk),
				.WEN	(WEN),
				.CEN	(CEN)
	);

	integer	CADDR_INT;

	always	begin
		`HALF_CLK_PERIOD
		clk	= ~clk;
	end

	integer	ROM_INDEX, ADDRESS_INDEX, D_INT;

	always	@(negedge clk) begin
		`QRTR_CLK_PERIOD
		if (writing == 1) begin
			CEN		= `ON;
			WEN		= `ON;
			CADDR		= i;
			CADDR_INT	= CADDR;
			ADDRESS_INDEX	= CADDR[7:0];
			D		= $urandom%1048576;
			if (i != 0) begin
				$fwrite(cmem0, "%d\n", D);
			end
			else begin
			end
		end
		else if (writing == 0) begin
			WEN	= `OFF;
			CEN	= `ON;
			D	= `HIZ;
			CADDR	= {8{1'bZ}};
			A0	= $urandom%256;
			if (i != 0) begin
				$fwrite(qsim_out_1, "%d,\n", A0);
			end
			else begin
			end
		end
		else begin
		end
	end

	always	@(posedge clk) begin
		if (writing == 0 && i != 0) begin
			$fwrite(qsim_out_2, "%d\n", Q0);
		end
	end

	initial	begin
		qsim_out_1	= $fopen(`QSIM_OUT_FN_1, "w");
		qsim_out_2	= $fopen(`QSIM_OUT_FN_2, "w");
		cmem0		= $fopen("./cmem.txt", "w");
		clk	= 0;
		writing = 1;
		@(posedge clk);
		for (i = 0; i < `ITER; i = i + 1) begin
			@(posedge clk);
		end
		writing	= 0;
		@(posedge clk);
		for (i = 0; i < `ITER; i = i + 1) begin
			@(posedge clk);
		end
		@(posedge clk);
		$fclose(qsim_out_1);
		$fclose(qsim_out_2);
		$fclose(cmem0);
		$finish;
	end

endmodule /* testbench */

