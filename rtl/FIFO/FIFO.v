`timescale 1ns/1ps

module rshiftregne#(
	parameter			n=16
)
(
	output	wire			Q,
	input	wire	[(n-1):0]	X,
	input	wire			shift_in,
	input	wire			load,
	input	wire			enable,
	input	wire			clk,
	input	wire			resetn
);


	reg	[(n-1):0]	Y;
	assign	Q	= Y[(n-1)];

	always	@(negedge clk) begin
		if (~resetn) begin
			Y	<= 16'b0;
		end
		else if (load) begin
			Y	<= X;
		end
		else if (enable) begin
			Y 	<= Y << 1;
			Y[0]	<= shift_in;
		end
		else begin
		end
	end
endmodule /* rshiftregne */

module fifo_interface(
	output	wire	[63:0]	A, 
	input	wire	[15:0]	X63, X62, X61, X60, 
	input	wire	[15:0]	X59, X58, X57, X56, 
	input	wire	[15:0]	X55, X54, X53, X52, 
	input	wire	[15:0]	X51, X50, X49, X48, 
	input	wire	[15:0]	X47, X46, X45, X44, 
	input	wire	[15:0]	X43, X42, X41, X40, 
	input	wire	[15:0]	X39, X38, X37, X36, 
	input	wire	[15:0]	X35, X34, X33, X32, 
	input	wire	[15:0]	X31, X30, X29, X28, 
	input	wire	[15:0]	X27, X26, X25, X24, 
	input	wire	[15:0]	X23, X22, X21, X20, 
	input	wire	[15:0]	X19, X18, X17, X16, 
	input	wire	[15:0]	X15, X14, X13, X12, 
	input	wire	[15:0]	X11, X10, X9, X8, 
	input	wire	[15:0]	X7, X6, X5, X4, 
	input	wire	[15:0]	X3, X2, X1, X0,
	input	wire	clk, resetn, enable,load
);

	rshiftregne	SREG_0(
			.Q		(A[0]),
			.X		(X0),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_1(
			.Q		(A[1]),
			.X		(X1),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_2(
			.Q		(A[2]),
			.X		(X2),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);


	rshiftregne	SREG_3(
			.Q		(A[3]),
			.X		(X3),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);


	rshiftregne	SREG_4(
			.Q		(A[4]),
			.X		(X4),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);


	rshiftregne	SREG_5(
			.Q		(A[5]),
			.X		(X5),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);


	rshiftregne	SREG_6(
			.Q		(A[6]),
			.X		(X6),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);


	rshiftregne	SREG_7(
			.Q		(A[7]),
			.X		(X7),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);


	rshiftregne	SREG_8(
			.Q		(A[8]),
			.X		(X8),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);


	rshiftregne	SREG_9(
			.Q		(A[9]),
			.X		(X9),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);


	rshiftregne	SREG_10(
			.Q		(A[10]),
			.X		(X10),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_11(
			.Q		(A[11]),
			.X		(X11),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_12(
			.Q		(A[12]),
			.X		(X12),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_13(
			.Q		(A[13]),
			.X		(X13),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_14(
			.Q		(A[14]),
			.X		(X14),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_15(
			.Q		(A[15]),
			.X		(X15),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_16(
			.Q		(A[16]),
			.X		(X16),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_17(
			.Q		(A[17]),
			.X		(X17),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_18(
			.Q		(A[18]),
			.X		(X18),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_19(
			.Q		(A[19]),
			.X		(X19),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_20(
			.Q		(A[20]),
			.X		(X20),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_21(
			.Q		(A[21]),
			.X		(X21),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_22(
			.Q		(A[22]),
			.X		(X22),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_23(
			.Q		(A[23]),
			.X		(X23),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_24(
			.Q		(A[24]),
			.X		(X24),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_25(
			.Q		(A[25]),
			.X		(X25),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_26(
			.Q		(A[26]),
			.X		(X26),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_27(
			.Q		(A[27]),
			.X		(X27),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_28(
			.Q		(A[28]),
			.X		(X28),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_29(
			.Q		(A[29]),
			.X		(X29),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_30(
			.Q		(A[30]),
			.X		(X30),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_31(
			.Q		(A[31]),
			.X		(X31),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_32(
			.Q		(A[32]),
			.X		(X32),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_33(
			.Q		(A[33]),
			.X		(X33),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_34(
			.Q		(A[34]),
			.X		(X34),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_35(
			.Q		(A[35]),
			.X		(X35),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_36(
			.Q		(A[36]),
			.X		(X36),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_37(
			.Q		(A[37]),
			.X		(X37),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);
	rshiftregne	SREG_38(
			.Q		(A[38]),
			.X		(X38),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_39(
			.Q		(A[39]),
			.X		(X39),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_40(
			.Q		(A[40]),
			.X		(X40),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_41(
			.Q		(A[41]),
			.X		(X41),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_42(
			.Q		(A[42]),
			.X		(X42),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_43(
			.Q		(A[43]),
			.X		(X43),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_44(
			.Q		(A[44]),
			.X		(X44),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_45(
			.Q		(A[45]),
			.X		(X45),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_46(
			.Q		(A[46]),
			.X		(X46),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_47(
			.Q		(A[47]),
			.X		(X47),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_48(
			.Q		(A[48]),
			.X		(X48),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_49(
			.Q		(A[49]),
			.X		(X49),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_50(
			.Q		(A[50]),
			.X		(X50),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_51(
			.Q		(A[51]),
			.X		(X51),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_52(
			.Q		(A[52]),
			.X		(X52),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_53(
			.Q		(A[53]),
			.X		(X53),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_54(
			.Q		(A[54]),
			.X		(X54),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_55(
			.Q		(A[55]),
			.X		(X55),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_56(
			.Q		(A[56]),
			.X		(X56),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_57(
			.Q		(A[57]),
			.X		(X57),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_58(
			.Q		(A[58]),
			.X		(X58),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_59(
			.Q		(A[59]),
			.X		(X59),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_60(
			.Q		(A[60]),
			.X		(X60),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_61(
			.Q		(A[61]),
			.X		(X61),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_62(
			.Q		(A[62]),
			.X		(X62),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

	rshiftregne	SREG_63(
			.Q		(A[63]),
			.X		(X63),
			.shift_in	(1'b0),
			.load		(load),
			.enable		(enable),
			.clk		(clk),
			.resetn		(resetn)
			);

endmodule /* fifo_interface */

module FIFO(
	output	wire	[63:0]	A,
	output	wire		load_ext,start_ext,
	input		[15:0]	w,
	input			enable,enable_single,clk,clk2,resetn
);	
	wire		[63:0]	I;
	reg		[15:0]	array	[0:63];
	reg 		load;
	reg 		start;
	integer 	k;
	integer 	i;
	integer 	x;
	fifo_interface		fifo_interface(
				.A		(I),
				.X63		(array[63]),
				.X62		(array[62]),
				.X61		(array[61]),
				.X60		(array[60]),
				.X59		(array[59]),
				.X58		(array[58]),
				.X57		(array[57]),
				.X56		(array[56]),
				.X55		(array[55]),
				.X54		(array[54]),
				.X53		(array[53]),
				.X52		(array[52]),
				.X51		(array[51]),
				.X50		(array[50]),
				.X49		(array[49]),
				.X48		(array[48]),
				.X47		(array[47]),
				.X46		(array[46]),
				.X45		(array[45]),
				.X44		(array[44]),
				.X43		(array[43]),
				.X42		(array[42]),
				.X41		(array[41]),
				.X40		(array[40]),
				.X39		(array[39]),
				.X38		(array[38]),
				.X37		(array[37]),
				.X36		(array[36]),
				.X35		(array[35]),
				.X34		(array[34]),
				.X33		(array[33]),
				.X32		(array[32]),
				.X31		(array[31]),
				.X30		(array[30]),
				.X29		(array[29]),
				.X28		(array[28]),
				.X27		(array[27]),
				.X26		(array[26]),
				.X25		(array[25]),
				.X24		(array[24]),
				.X23		(array[23]),
				.X22		(array[22]),
				.X21		(array[21]),
				.X20		(array[20]),
				.X19		(array[19]),
				.X18		(array[18]),
				.X17		(array[17]),
				.X16		(array[16]),
				.X15		(array[15]),
				.X14		(array[14]),
				.X13		(array[13]),
				.X12		(array[12]),
				.X11		(array[11]),
				.X10		(array[10]),
				.X9		(array[9]),
				.X8		(array[8]),
				.X7		(array[7]),
				.X6		(array[6]),
				.X5		(array[5]),
				.X4		(array[4]),
				.X3		(array[3]),
				.X2		(array[2]),
				.X1		(array[1]),
				.X0		(array[0]),
				.clk		(clk2),
				.resetn		(resetn),
				.enable		(enable_single),
				.load		(load)
				);
	assign A = resetn ? I: 64'b0;			
	assign load_ext = load;
	assign start_ext = start;	
	always @(posedge clk) begin

		if (!resetn) begin
			for (k = 63; k >= 0; k = k-1) begin
				array[k] = 16'b0;
			end
		end
		else if(enable) begin
			
				for (k = 63; k >= 1; k = k-1) begin
					array[k] = array[k-1];
				end
				
				array[0] = w;

		end
		else begin
		
		end
		
	end
	
	always @(negedge clk2) begin
		
		if (!resetn) begin
			i <= 0;
			load <= 0;
		end
		else begin 
			if (i == 191) begin
				i <= 0;
				load <= 1;
			end
			else begin
				i <= i + 1;
				load <= 0;
			end

		end
	end
	always @(posedge clk2) begin
		if(!resetn) begin
			x <= 0;
			start <= 0;
		end
		else begin	
			if (x == 11) begin
				x <= 0;
				start <= 1;
			end
			else begin
				x <= x + 1;
				start <= 0;
			end
		end
	end
endmodule
