// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Fri Jul 17 01:54:13 2020"

module HW7(
	Clear,
	Clock,
	Reg_Write,
	Read_Reg_Num_1,
	Read_Reg_Num_2,
	Write_Data,
	Write_Reg_Num,
	Read_Data_1,
	Read_Data_2
);


input wire	Clear;
input wire	Clock;
input wire	Reg_Write;
input wire	[4:0] Read_Reg_Num_1;
input wire	[4:0] Read_Reg_Num_2;
input wire	[31:0] Write_Data;
input wire	[4:0] Write_Reg_Num;
output wire	[31:0] Read_Data_1;
output wire	[31:0] Read_Data_2;

wire	SYNTHESIZED_WIRE_193;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	[31:0] SYNTHESIZED_WIRE_194;
wire	[31:0] SYNTHESIZED_WIRE_195;
wire	[31:0] SYNTHESIZED_WIRE_196;
wire	[31:0] SYNTHESIZED_WIRE_197;
wire	[31:0] SYNTHESIZED_WIRE_198;
wire	[31:0] SYNTHESIZED_WIRE_199;
wire	[31:0] SYNTHESIZED_WIRE_200;
wire	[31:0] SYNTHESIZED_WIRE_201;
wire	[31:0] SYNTHESIZED_WIRE_202;
wire	[31:0] SYNTHESIZED_WIRE_203;
wire	[31:0] SYNTHESIZED_WIRE_204;
wire	[31:0] SYNTHESIZED_WIRE_205;
wire	[31:0] SYNTHESIZED_WIRE_206;
wire	[31:0] SYNTHESIZED_WIRE_207;
wire	[31:0] SYNTHESIZED_WIRE_208;
wire	[31:0] SYNTHESIZED_WIRE_209;
wire	[31:0] SYNTHESIZED_WIRE_210;
wire	[31:0] SYNTHESIZED_WIRE_211;
wire	[31:0] SYNTHESIZED_WIRE_212;
wire	[31:0] SYNTHESIZED_WIRE_213;
wire	[31:0] SYNTHESIZED_WIRE_214;
wire	[31:0] SYNTHESIZED_WIRE_215;
wire	[31:0] SYNTHESIZED_WIRE_216;
wire	[31:0] SYNTHESIZED_WIRE_217;
wire	[31:0] SYNTHESIZED_WIRE_218;
wire	[31:0] SYNTHESIZED_WIRE_219;
wire	[31:0] SYNTHESIZED_WIRE_220;
wire	[31:0] SYNTHESIZED_WIRE_221;
wire	[31:0] SYNTHESIZED_WIRE_222;
wire	[31:0] SYNTHESIZED_WIRE_223;
wire	[31:0] SYNTHESIZED_WIRE_224;
wire	[31:0] SYNTHESIZED_WIRE_225;
wire	SYNTHESIZED_WIRE_226;
wire	[31:0] SYNTHESIZED_WIRE_68;
wire	[31:0] SYNTHESIZED_WIRE_70;
wire	[31:0] SYNTHESIZED_WIRE_72;
wire	[31:0] SYNTHESIZED_WIRE_74;
wire	[31:0] SYNTHESIZED_WIRE_76;
wire	[31:0] SYNTHESIZED_WIRE_78;
wire	[31:0] SYNTHESIZED_WIRE_80;
wire	[31:0] SYNTHESIZED_WIRE_82;
wire	[31:0] SYNTHESIZED_WIRE_84;
wire	[31:0] SYNTHESIZED_WIRE_86;
wire	[31:0] SYNTHESIZED_WIRE_88;
wire	[31:0] SYNTHESIZED_WIRE_90;
wire	[31:0] SYNTHESIZED_WIRE_92;
wire	[31:0] SYNTHESIZED_WIRE_94;
wire	[31:0] SYNTHESIZED_WIRE_96;
wire	[31:0] SYNTHESIZED_WIRE_98;
wire	[31:0] SYNTHESIZED_WIRE_100;
wire	[31:0] SYNTHESIZED_WIRE_102;
wire	[31:0] SYNTHESIZED_WIRE_104;
wire	[31:0] SYNTHESIZED_WIRE_106;
wire	[31:0] SYNTHESIZED_WIRE_108;
wire	[31:0] SYNTHESIZED_WIRE_110;
wire	[31:0] SYNTHESIZED_WIRE_112;
wire	[31:0] SYNTHESIZED_WIRE_114;
wire	[31:0] SYNTHESIZED_WIRE_116;
wire	[31:0] SYNTHESIZED_WIRE_118;
wire	[31:0] SYNTHESIZED_WIRE_120;
wire	[31:0] SYNTHESIZED_WIRE_122;
wire	[31:0] SYNTHESIZED_WIRE_124;
wire	SYNTHESIZED_WIRE_125;
wire	[31:0] SYNTHESIZED_WIRE_127;
wire	[31:0] SYNTHESIZED_WIRE_129;
wire	SYNTHESIZED_WIRE_130;
wire	SYNTHESIZED_WIRE_131;
wire	SYNTHESIZED_WIRE_133;
wire	SYNTHESIZED_WIRE_135;
wire	SYNTHESIZED_WIRE_137;
wire	SYNTHESIZED_WIRE_139;
wire	SYNTHESIZED_WIRE_141;
wire	SYNTHESIZED_WIRE_143;
wire	SYNTHESIZED_WIRE_145;
wire	SYNTHESIZED_WIRE_147;
wire	SYNTHESIZED_WIRE_149;
wire	SYNTHESIZED_WIRE_151;
wire	SYNTHESIZED_WIRE_153;
wire	SYNTHESIZED_WIRE_155;
wire	SYNTHESIZED_WIRE_157;
wire	SYNTHESIZED_WIRE_159;
wire	SYNTHESIZED_WIRE_161;
wire	SYNTHESIZED_WIRE_163;
wire	SYNTHESIZED_WIRE_165;
wire	SYNTHESIZED_WIRE_167;
wire	SYNTHESIZED_WIRE_169;
wire	SYNTHESIZED_WIRE_171;
wire	SYNTHESIZED_WIRE_173;
wire	SYNTHESIZED_WIRE_175;
wire	SYNTHESIZED_WIRE_177;
wire	SYNTHESIZED_WIRE_179;
wire	SYNTHESIZED_WIRE_181;
wire	SYNTHESIZED_WIRE_183;
wire	SYNTHESIZED_WIRE_185;
wire	SYNTHESIZED_WIRE_187;
wire	SYNTHESIZED_WIRE_189;
wire	SYNTHESIZED_WIRE_191;

assign	SYNTHESIZED_WIRE_193 = 1;
assign	SYNTHESIZED_WIRE_226 = 1;




lpm_shiftreg0	b2v_inst(
	.sclr(SYNTHESIZED_WIRE_193),
	.load(SYNTHESIZED_WIRE_193),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_2),
	.q(SYNTHESIZED_WIRE_194));


lpm_mux0	b2v_inst10(
	.data0x(SYNTHESIZED_WIRE_194),
	.data10x(SYNTHESIZED_WIRE_195),
	.data11x(SYNTHESIZED_WIRE_196),
	.data12x(SYNTHESIZED_WIRE_197),
	.data13x(SYNTHESIZED_WIRE_198),
	.data14x(SYNTHESIZED_WIRE_199),
	.data15x(SYNTHESIZED_WIRE_200),
	.data16x(SYNTHESIZED_WIRE_201),
	.data17x(SYNTHESIZED_WIRE_202),
	.data18x(SYNTHESIZED_WIRE_203),
	.data19x(SYNTHESIZED_WIRE_204),
	.data1x(SYNTHESIZED_WIRE_205),
	.data20x(SYNTHESIZED_WIRE_206),
	.data21x(SYNTHESIZED_WIRE_207),
	.data22x(SYNTHESIZED_WIRE_208),
	.data23x(SYNTHESIZED_WIRE_209),
	.data24x(SYNTHESIZED_WIRE_210),
	.data25x(SYNTHESIZED_WIRE_211),
	.data26x(SYNTHESIZED_WIRE_212),
	.data27x(SYNTHESIZED_WIRE_213),
	.data28x(SYNTHESIZED_WIRE_214),
	.data29x(SYNTHESIZED_WIRE_215),
	.data2x(SYNTHESIZED_WIRE_216),
	.data30x(SYNTHESIZED_WIRE_217),
	.data31x(SYNTHESIZED_WIRE_218),
	.data3x(SYNTHESIZED_WIRE_219),
	.data4x(SYNTHESIZED_WIRE_220),
	.data5x(SYNTHESIZED_WIRE_221),
	.data6x(SYNTHESIZED_WIRE_222),
	.data7x(SYNTHESIZED_WIRE_223),
	.data8x(SYNTHESIZED_WIRE_224),
	.data9x(SYNTHESIZED_WIRE_225),
	.sel(Read_Reg_Num_2),
	.result(Read_Data_2));


lpm_mux0	b2v_inst11(
	.data0x(SYNTHESIZED_WIRE_194),
	.data10x(SYNTHESIZED_WIRE_195),
	.data11x(SYNTHESIZED_WIRE_196),
	.data12x(SYNTHESIZED_WIRE_197),
	.data13x(SYNTHESIZED_WIRE_198),
	.data14x(SYNTHESIZED_WIRE_199),
	.data15x(SYNTHESIZED_WIRE_200),
	.data16x(SYNTHESIZED_WIRE_201),
	.data17x(SYNTHESIZED_WIRE_202),
	.data18x(SYNTHESIZED_WIRE_203),
	.data19x(SYNTHESIZED_WIRE_204),
	.data1x(SYNTHESIZED_WIRE_205),
	.data20x(SYNTHESIZED_WIRE_206),
	.data21x(SYNTHESIZED_WIRE_207),
	.data22x(SYNTHESIZED_WIRE_208),
	.data23x(SYNTHESIZED_WIRE_209),
	.data24x(SYNTHESIZED_WIRE_210),
	.data25x(SYNTHESIZED_WIRE_211),
	.data26x(SYNTHESIZED_WIRE_212),
	.data27x(SYNTHESIZED_WIRE_213),
	.data28x(SYNTHESIZED_WIRE_214),
	.data29x(SYNTHESIZED_WIRE_215),
	.data2x(SYNTHESIZED_WIRE_216),
	.data30x(SYNTHESIZED_WIRE_217),
	.data31x(SYNTHESIZED_WIRE_218),
	.data3x(SYNTHESIZED_WIRE_219),
	.data4x(SYNTHESIZED_WIRE_220),
	.data5x(SYNTHESIZED_WIRE_221),
	.data6x(SYNTHESIZED_WIRE_222),
	.data7x(SYNTHESIZED_WIRE_223),
	.data8x(SYNTHESIZED_WIRE_224),
	.data9x(SYNTHESIZED_WIRE_225),
	.sel(Read_Reg_Num_1),
	.result(Read_Data_1));


lpm_shiftreg0	b2v_inst21(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_68),
	.q(SYNTHESIZED_WIRE_216));


lpm_shiftreg0	b2v_inst22(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_70),
	.q(SYNTHESIZED_WIRE_219));


lpm_shiftreg0	b2v_inst23(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_72),
	.q(SYNTHESIZED_WIRE_220));


lpm_shiftreg0	b2v_inst24(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_74),
	.q(SYNTHESIZED_WIRE_221));


lpm_shiftreg0	b2v_inst25(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_76),
	.q(SYNTHESIZED_WIRE_222));


lpm_shiftreg0	b2v_inst26(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_78),
	.q(SYNTHESIZED_WIRE_223));


lpm_shiftreg0	b2v_inst27(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_80),
	.q(SYNTHESIZED_WIRE_224));


lpm_shiftreg0	b2v_inst28(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_82),
	.q(SYNTHESIZED_WIRE_225));


lpm_shiftreg0	b2v_inst29(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_84),
	.q(SYNTHESIZED_WIRE_195));


lpm_shiftreg0	b2v_inst30(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_86),
	.q(SYNTHESIZED_WIRE_196));


lpm_shiftreg0	b2v_inst31(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_88),
	.q(SYNTHESIZED_WIRE_197));


lpm_shiftreg0	b2v_inst32(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_90),
	.q(SYNTHESIZED_WIRE_198));


lpm_shiftreg0	b2v_inst33(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_92),
	.q(SYNTHESIZED_WIRE_199));


lpm_shiftreg0	b2v_inst34(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_94),
	.q(SYNTHESIZED_WIRE_200));


lpm_shiftreg0	b2v_inst35(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_96),
	.q(SYNTHESIZED_WIRE_201));


lpm_shiftreg0	b2v_inst36(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_98),
	.q(SYNTHESIZED_WIRE_202));


lpm_shiftreg0	b2v_inst37(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_100),
	.q(SYNTHESIZED_WIRE_203));


lpm_shiftreg0	b2v_inst38(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_102),
	.q(SYNTHESIZED_WIRE_204));


lpm_shiftreg0	b2v_inst39(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_104),
	.q(SYNTHESIZED_WIRE_206));


lpm_shiftreg0	b2v_inst40(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_106),
	.q(SYNTHESIZED_WIRE_207));


lpm_shiftreg0	b2v_inst41(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_108),
	.q(SYNTHESIZED_WIRE_208));


lpm_shiftreg0	b2v_inst42(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_110),
	.q(SYNTHESIZED_WIRE_209));


lpm_shiftreg0	b2v_inst43(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_112),
	.q(SYNTHESIZED_WIRE_210));


lpm_shiftreg0	b2v_inst44(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_114),
	.q(SYNTHESIZED_WIRE_211));


lpm_shiftreg0	b2v_inst45(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_116),
	.q(SYNTHESIZED_WIRE_212));


lpm_shiftreg0	b2v_inst46(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_118),
	.q(SYNTHESIZED_WIRE_213));


lpm_shiftreg0	b2v_inst48(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_120),
	.q(SYNTHESIZED_WIRE_215));


lpm_shiftreg0	b2v_inst49(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_122),
	.q(SYNTHESIZED_WIRE_217));


lpm_shiftreg0	b2v_inst50(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_124),
	.q(SYNTHESIZED_WIRE_218));


lpm_decode1	b2v_inst51(
	.enable(SYNTHESIZED_WIRE_125),
	.data(Write_Reg_Num),
	
	.eq1(SYNTHESIZED_WIRE_131),
	.eq10(SYNTHESIZED_WIRE_149),
	.eq11(SYNTHESIZED_WIRE_151),
	.eq12(SYNTHESIZED_WIRE_153),
	.eq13(SYNTHESIZED_WIRE_155),
	.eq14(SYNTHESIZED_WIRE_157),
	.eq15(SYNTHESIZED_WIRE_159),
	.eq16(SYNTHESIZED_WIRE_161),
	.eq17(SYNTHESIZED_WIRE_163),
	.eq18(SYNTHESIZED_WIRE_165),
	.eq19(SYNTHESIZED_WIRE_167),
	.eq2(SYNTHESIZED_WIRE_133),
	.eq20(SYNTHESIZED_WIRE_169),
	.eq21(SYNTHESIZED_WIRE_171),
	.eq22(SYNTHESIZED_WIRE_173),
	.eq23(SYNTHESIZED_WIRE_175),
	.eq24(SYNTHESIZED_WIRE_177),
	.eq25(SYNTHESIZED_WIRE_179),
	.eq26(SYNTHESIZED_WIRE_181),
	.eq27(SYNTHESIZED_WIRE_183),
	.eq28(SYNTHESIZED_WIRE_185),
	.eq29(SYNTHESIZED_WIRE_187),
	.eq3(SYNTHESIZED_WIRE_135),
	.eq30(SYNTHESIZED_WIRE_189),
	.eq31(SYNTHESIZED_WIRE_191),
	.eq4(SYNTHESIZED_WIRE_137),
	.eq5(SYNTHESIZED_WIRE_139),
	.eq6(SYNTHESIZED_WIRE_141),
	.eq7(SYNTHESIZED_WIRE_143),
	.eq8(SYNTHESIZED_WIRE_145),
	.eq9(SYNTHESIZED_WIRE_147));


lpm_shiftreg0	b2v_inst53(
	.clock(Clock),
	.load(SYNTHESIZED_WIRE_226),
	.sclr(Clear),
	.data(SYNTHESIZED_WIRE_127),
	.q(SYNTHESIZED_WIRE_205));


lpm_shiftreg0	b2v_inst54(
	.sclr(Clear),
	.load(SYNTHESIZED_WIRE_226),
	.clock(Clock),
	.data(SYNTHESIZED_WIRE_129),
	.q(SYNTHESIZED_WIRE_214));

assign	SYNTHESIZED_WIRE_130 =  ~Clear;

assign	SYNTHESIZED_WIRE_125 = SYNTHESIZED_WIRE_130 & Reg_Write;


lpm_mux1	b2v_inst59(
	.sel(SYNTHESIZED_WIRE_131),
	.data0x(SYNTHESIZED_WIRE_205),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_127));



lpm_mux1	b2v_inst60(
	.sel(SYNTHESIZED_WIRE_133),
	.data0x(SYNTHESIZED_WIRE_216),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_68));


lpm_mux1	b2v_inst61(
	.sel(SYNTHESIZED_WIRE_135),
	.data0x(SYNTHESIZED_WIRE_219),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_70));


lpm_mux1	b2v_inst62(
	.sel(SYNTHESIZED_WIRE_137),
	.data0x(SYNTHESIZED_WIRE_220),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_72));


lpm_mux1	b2v_inst63(
	.sel(SYNTHESIZED_WIRE_139),
	.data0x(SYNTHESIZED_WIRE_221),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_74));


lpm_mux1	b2v_inst64(
	.sel(SYNTHESIZED_WIRE_141),
	.data0x(SYNTHESIZED_WIRE_222),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_76));


lpm_mux1	b2v_inst65(
	.sel(SYNTHESIZED_WIRE_143),
	.data0x(SYNTHESIZED_WIRE_223),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_78));


lpm_mux1	b2v_inst66(
	.sel(SYNTHESIZED_WIRE_145),
	.data0x(SYNTHESIZED_WIRE_224),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_80));


lpm_mux1	b2v_inst67(
	.sel(SYNTHESIZED_WIRE_147),
	.data0x(SYNTHESIZED_WIRE_225),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_82));


lpm_mux1	b2v_inst68(
	.sel(SYNTHESIZED_WIRE_149),
	.data0x(SYNTHESIZED_WIRE_195),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_84));


lpm_mux1	b2v_inst69(
	.sel(SYNTHESIZED_WIRE_151),
	.data0x(SYNTHESIZED_WIRE_196),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_86));


lpm_constant0	b2v_inst7(
	.result(SYNTHESIZED_WIRE_2));


lpm_mux1	b2v_inst70(
	.sel(SYNTHESIZED_WIRE_153),
	.data0x(SYNTHESIZED_WIRE_197),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_88));


lpm_mux1	b2v_inst71(
	.sel(SYNTHESIZED_WIRE_155),
	.data0x(SYNTHESIZED_WIRE_198),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_90));


lpm_mux1	b2v_inst72(
	.sel(SYNTHESIZED_WIRE_157),
	.data0x(SYNTHESIZED_WIRE_199),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_92));


lpm_mux1	b2v_inst73(
	.sel(SYNTHESIZED_WIRE_159),
	.data0x(SYNTHESIZED_WIRE_200),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_94));


lpm_mux1	b2v_inst74(
	.sel(SYNTHESIZED_WIRE_161),
	.data0x(SYNTHESIZED_WIRE_201),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_96));


lpm_mux1	b2v_inst75(
	.sel(SYNTHESIZED_WIRE_163),
	.data0x(SYNTHESIZED_WIRE_202),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_98));


lpm_mux1	b2v_inst76(
	.sel(SYNTHESIZED_WIRE_165),
	.data0x(SYNTHESIZED_WIRE_203),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_100));


lpm_mux1	b2v_inst77(
	.sel(SYNTHESIZED_WIRE_167),
	.data0x(SYNTHESIZED_WIRE_204),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_102));


lpm_mux1	b2v_inst78(
	.sel(SYNTHESIZED_WIRE_169),
	.data0x(SYNTHESIZED_WIRE_206),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_104));


lpm_mux1	b2v_inst79(
	.sel(SYNTHESIZED_WIRE_171),
	.data0x(SYNTHESIZED_WIRE_207),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_106));


lpm_mux1	b2v_inst80(
	.sel(SYNTHESIZED_WIRE_173),
	.data0x(SYNTHESIZED_WIRE_208),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_108));


lpm_mux1	b2v_inst81(
	.sel(SYNTHESIZED_WIRE_175),
	.data0x(SYNTHESIZED_WIRE_209),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_110));


lpm_mux1	b2v_inst82(
	.sel(SYNTHESIZED_WIRE_177),
	.data0x(SYNTHESIZED_WIRE_210),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_112));


lpm_mux1	b2v_inst83(
	.sel(SYNTHESIZED_WIRE_179),
	.data0x(SYNTHESIZED_WIRE_211),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_114));


lpm_mux1	b2v_inst84(
	.sel(SYNTHESIZED_WIRE_181),
	.data0x(SYNTHESIZED_WIRE_212),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_116));


lpm_mux1	b2v_inst85(
	.sel(SYNTHESIZED_WIRE_183),
	.data0x(SYNTHESIZED_WIRE_213),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_118));


lpm_mux1	b2v_inst86(
	.sel(SYNTHESIZED_WIRE_185),
	.data0x(SYNTHESIZED_WIRE_214),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_129));


lpm_mux1	b2v_inst87(
	.sel(SYNTHESIZED_WIRE_187),
	.data0x(SYNTHESIZED_WIRE_215),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_120));


lpm_mux1	b2v_inst88(
	.sel(SYNTHESIZED_WIRE_189),
	.data0x(SYNTHESIZED_WIRE_217),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_122));


lpm_mux1	b2v_inst89(
	.sel(SYNTHESIZED_WIRE_191),
	.data0x(SYNTHESIZED_WIRE_218),
	.data1x(Write_Data),
	.result(SYNTHESIZED_WIRE_124));



endmodule
