
`define ON 1'b0
`define OFF 1'b1
`define HIZ {20{1'bZ}}

/* 
 * Timing Information:
 * 	Inputs to sram_8blk must arrive before posedge clk.
 *	Outputs from sram_8blk arrive before the next posedge.
 */
module cmem(
	output	wire	[19:0]	Q0,
	input	wire	[19:0]	D,		/* Limited by Upstream Spec. */
	input	wire	[7:0]	A0,
	input	wire	[7:0]	CADDR,		/* Only Used when Writing Pre-Computed Sums to Memory. */
	input	wire		WEN, CEN,	/* Active Low */
	input	wire		clk
);

	genvar		i;
	wire		clk_bar;
	reg	[7:0]	AI;
	reg	[19:0]	DI;
	reg	[7:0]	CADDRI;
	wire	[19:0]	QI;

	assign	clk_bar	= ~clk;

	always	@(posedge clk) begin
		DI	<= D;
		CADDRI	<= CADDR;
		AI	<= A0;
	end

	assign	Q0	= QI;

	generate
		wire		WENIB;
		wire	[7:0]	AIB;
		/* For Correct Waveforms to appear, CADDRI needs to be defined	*/
		/* Despite the fact that ~WENI && ~CENI condition evaluates to	*/
		/* zero. I.e. in testbench have CADDRI set to 0 not Z.		*/
		assign	WENIB	= (~WEN & ~CEN) ? (`ON) : (`OFF);
		assign	AIB	= (~WENIB) ? CADDRI[7:0] : AI;

		RF1SHD	SRAM_CORE(
						.Q	(QI),
						.A	(AIB),
						.D	(DI),
						.WEN	(WENIB),
						.CEN	(CEN),
						.CLK	(clk_bar)
		);
	endgenerate

endmodule /* sram */

