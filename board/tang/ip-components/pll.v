/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	/home/forth32/dvk-fpga/board/tang/ip-components/pll.v
 ** Date	:	2021 03 19
 ** TD version	:	4.6.18154
\************************************************************/

///////////////////////////////////////////////////////////////////////////////
//	Input frequency:             24.000Mhz
//	Clock multiplication factor: 4
//	Clock division factor:       1
//	Clock information:
//		Clock name	| Frequency 	| Phase shift
//		C0        	| 60.000000 MHZ	| 0  DEG     
//		C1        	| 60.000000 MHZ	| 180DEG     
//		C2        	| 12.000000 MHZ	| 0  DEG     
//		C3        	| 48.000000 MHZ	| 0  DEG     
//		C4        	| 96.000000 MHZ	| 0  DEG     
///////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 100 fs

module pll(refclk,
		reset,
		extlock,
		clk0_out,
		clk1_out,
		clk2_out,
		clk3_out,
		clk4_out);

	input refclk;
	input reset;
	output extlock;
	output clk0_out;
	output clk1_out;
	output clk2_out;
	output clk3_out;
	output clk4_out;

	wire clk4_buf;

	EG_LOGIC_BUFG bufg_feedback( .i(clk4_buf), .o(clk4_out) );

	EG_PHY_PLL #(.DPHASE_SOURCE("DISABLE"),
		.DYNCFG("DISABLE"),
		.FIN("24.000"),
		.FEEDBK_MODE("NORMAL"),
		.FEEDBK_PATH("CLKC4_EXT"),
		.STDBY_ENABLE("DISABLE"),
		.PLLRST_ENA("ENABLE"),
		.SYNC_ENABLE("DISABLE"),
		.DERIVE_PLL_CLOCKS("ENABLE"),
		.GEN_BASIC_CLOCK("ENABLE"),
		.GMC_GAIN(2),
		.ICP_CURRENT(9),
		.KVCO(2),
		.LPF_CAPACITOR(1),
		.LPF_RESISTOR(8),
		.REFCLK_DIV(1),
		.FBCLK_DIV(4),
		.CLKC0_ENABLE("ENABLE"),
		.CLKC0_DIV(16),
		.CLKC0_CPHASE(15),
		.CLKC0_FPHASE(0),
		.CLKC1_ENABLE("ENABLE"),
		.CLKC1_DIV(16),
		.CLKC1_CPHASE(7),
		.CLKC1_FPHASE(0),
		.CLKC2_ENABLE("ENABLE"),
		.CLKC2_DIV(80),
		.CLKC2_CPHASE(79),
		.CLKC2_FPHASE(0),
		.CLKC3_ENABLE("ENABLE"),
		.CLKC3_DIV(20),
		.CLKC3_CPHASE(19),
		.CLKC3_FPHASE(0),
		.CLKC4_ENABLE("ENABLE"),
		.CLKC4_DIV(10),
		.CLKC4_CPHASE(9),
		.CLKC4_FPHASE(0)	)
	pll_inst (.refclk(refclk),
		.reset(reset),
		.stdby(1'b0),
		.extlock(extlock),
		.psclk(1'b0),
		.psdown(1'b0),
		.psstep(1'b0),
		.psclksel(3'b000),
		.psdone(open),
		.dclk(1'b0),
		.dcs(1'b0),
		.dwe(1'b0),
		.di(8'b00000000),
		.daddr(6'b000000),
		.do({open, open, open, open, open, open, open, open}),
		.fbclk(clk4_out),
		.clkc({clk4_buf, clk3_out, clk2_out, clk1_out, clk0_out}));

endmodule
