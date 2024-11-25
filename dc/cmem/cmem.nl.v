/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Nov 24 20:10:30 2024
/////////////////////////////////////////////////////////////


module cmem ( Q0, D, A0, CADDR, WEN, CEN, clk );
  output [19:0] Q0;
  input [19:0] D;
  input [7:0] A0;
  input [7:0] CADDR;
  input WEN, CEN, clk;
  wire   n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [19:0] DI;
  wire   [7:0] CADDRI;
  wire   [7:0] AI;
  wire   [7:0] AIB;

  RF1SHD SRAM_CORE ( .Q(Q0), .A(AIB), .D(DI), .CLK(n3), .CEN(n7), .WEN(n10) );
  DFFQX1TS \DI_reg[19]  ( .D(D[19]), .CK(clk), .Q(DI[19]) );
  DFFQX1TS \DI_reg[18]  ( .D(D[18]), .CK(clk), .Q(DI[18]) );
  DFFQX1TS \DI_reg[17]  ( .D(D[17]), .CK(clk), .Q(DI[17]) );
  DFFQX1TS \DI_reg[16]  ( .D(D[16]), .CK(clk), .Q(DI[16]) );
  DFFQX1TS \DI_reg[15]  ( .D(D[15]), .CK(clk), .Q(DI[15]) );
  DFFQX1TS \DI_reg[14]  ( .D(D[14]), .CK(clk), .Q(DI[14]) );
  DFFQX1TS \DI_reg[13]  ( .D(D[13]), .CK(clk), .Q(DI[13]) );
  DFFQX1TS \DI_reg[12]  ( .D(D[12]), .CK(clk), .Q(DI[12]) );
  DFFQX1TS \DI_reg[11]  ( .D(D[11]), .CK(clk), .Q(DI[11]) );
  DFFQX1TS \DI_reg[10]  ( .D(D[10]), .CK(clk), .Q(DI[10]) );
  DFFQX1TS \DI_reg[9]  ( .D(D[9]), .CK(clk), .Q(DI[9]) );
  DFFQX1TS \DI_reg[8]  ( .D(D[8]), .CK(clk), .Q(DI[8]) );
  DFFQX1TS \DI_reg[7]  ( .D(D[7]), .CK(clk), .Q(DI[7]) );
  DFFQX1TS \DI_reg[6]  ( .D(D[6]), .CK(clk), .Q(DI[6]) );
  DFFQX1TS \DI_reg[5]  ( .D(D[5]), .CK(clk), .Q(DI[5]) );
  DFFQX1TS \DI_reg[4]  ( .D(D[4]), .CK(clk), .Q(DI[4]) );
  DFFQX1TS \DI_reg[3]  ( .D(D[3]), .CK(clk), .Q(DI[3]) );
  DFFQX1TS \DI_reg[2]  ( .D(D[2]), .CK(clk), .Q(DI[2]) );
  DFFQX1TS \DI_reg[1]  ( .D(D[1]), .CK(clk), .Q(DI[1]) );
  DFFQX1TS \DI_reg[0]  ( .D(D[0]), .CK(clk), .Q(DI[0]) );
  DFFQX1TS \CADDRI_reg[7]  ( .D(CADDR[7]), .CK(clk), .Q(CADDRI[7]) );
  DFFQX1TS \CADDRI_reg[6]  ( .D(CADDR[6]), .CK(clk), .Q(CADDRI[6]) );
  DFFQX1TS \CADDRI_reg[5]  ( .D(CADDR[5]), .CK(clk), .Q(CADDRI[5]) );
  DFFQX1TS \CADDRI_reg[4]  ( .D(CADDR[4]), .CK(clk), .Q(CADDRI[4]) );
  DFFQX1TS \CADDRI_reg[3]  ( .D(CADDR[3]), .CK(clk), .Q(CADDRI[3]) );
  DFFQX1TS \CADDRI_reg[2]  ( .D(CADDR[2]), .CK(clk), .Q(CADDRI[2]) );
  DFFQX1TS \CADDRI_reg[1]  ( .D(CADDR[1]), .CK(clk), .Q(CADDRI[1]) );
  DFFQX1TS \CADDRI_reg[0]  ( .D(CADDR[0]), .CK(clk), .Q(CADDRI[0]) );
  DFFQX1TS \AI_reg[7]  ( .D(A0[7]), .CK(clk), .Q(AI[7]) );
  DFFQX1TS \AI_reg[6]  ( .D(A0[6]), .CK(clk), .Q(AI[6]) );
  DFFQX1TS \AI_reg[5]  ( .D(A0[5]), .CK(clk), .Q(AI[5]) );
  DFFQX1TS \AI_reg[4]  ( .D(A0[4]), .CK(clk), .Q(AI[4]) );
  DFFQX1TS \AI_reg[3]  ( .D(A0[3]), .CK(clk), .Q(AI[3]) );
  DFFQX1TS \AI_reg[2]  ( .D(A0[2]), .CK(clk), .Q(AI[2]) );
  DFFQX1TS \AI_reg[1]  ( .D(A0[1]), .CK(clk), .Q(AI[1]) );
  DFFQX1TS \AI_reg[0]  ( .D(A0[0]), .CK(clk), .Q(AI[0]) );
  OR2X1TS U14 ( .A(n7), .B(WEN), .Y(n10) );
  INVX2TS U15 ( .A(n4), .Y(n6) );
  INVX2TS U16 ( .A(n4), .Y(n5) );
  AO22XLTS U17 ( .A0(n8), .A1(CADDRI[7]), .B0(n6), .B1(AI[7]), .Y(AIB[7]) );
  AO22XLTS U18 ( .A0(n9), .A1(CADDRI[2]), .B0(n6), .B1(AI[2]), .Y(AIB[2]) );
  AO22XLTS U19 ( .A0(n8), .A1(CADDRI[3]), .B0(n5), .B1(AI[3]), .Y(AIB[3]) );
  AO22XLTS U20 ( .A0(n9), .A1(CADDRI[0]), .B0(n5), .B1(AI[0]), .Y(AIB[0]) );
  AO22XLTS U21 ( .A0(n9), .A1(CADDRI[4]), .B0(n6), .B1(AI[4]), .Y(AIB[4]) );
  AO22XLTS U22 ( .A0(n8), .A1(CADDRI[5]), .B0(n5), .B1(AI[5]), .Y(AIB[5]) );
  AO22XLTS U23 ( .A0(n8), .A1(CADDRI[1]), .B0(n6), .B1(AI[1]), .Y(AIB[1]) );
  AO22XLTS U24 ( .A0(n9), .A1(CADDRI[6]), .B0(n5), .B1(AI[6]), .Y(AIB[6]) );
  INVX2TS U25 ( .A(n10), .Y(n4) );
  CLKBUFX2TS U26 ( .A(CEN), .Y(n7) );
  INVX2TS U27 ( .A(n10), .Y(n8) );
  INVX2TS U28 ( .A(n10), .Y(n9) );
  INVX2TS U29 ( .A(clk), .Y(n3) );
endmodule

