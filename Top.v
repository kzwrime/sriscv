module Decode(
  input  [31:0] io_instr,
  output        io_branch,
  output [1:0]  io_jump,
  output        io_memRead,
  output        io_memWrite,
  output        io_regWrite,
  output        io_toReg,
  output [1:0]  io_resultSel,
  output        io_aluSrc,
  output        io_pcAdd,
  output [6:0]  io_types,
  output [1:0]  io_aluCtrlOp,
  output [31:0] io_imm
);
  wire [31:0] _signals_T = io_instr & 32'h7f; // @[Lookup.scala 31:38]
  wire  _signals_T_1 = 32'h37 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_3 = 32'h17 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_5 = 32'h6f == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_7 = 32'h67 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_9 = 32'h63 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_11 = 32'h3 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_13 = 32'h23 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_15 = 32'h13 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_17 = 32'h33 == _signals_T; // @[Lookup.scala 31:38]
  wire  _signals_T_23 = _signals_T_7 ? 1'h0 : _signals_T_9; // @[Lookup.scala 33:37]
  wire  _signals_T_24 = _signals_T_5 ? 1'h0 : _signals_T_23; // @[Lookup.scala 33:37]
  wire  _signals_T_25 = _signals_T_3 ? 1'h0 : _signals_T_24; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_31 = _signals_T_7 ? 2'h2 : 2'h0; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_32 = _signals_T_5 ? 2'h1 : _signals_T_31; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_33 = _signals_T_3 ? 2'h0 : _signals_T_32; // @[Lookup.scala 33:37]
  wire  _signals_T_38 = _signals_T_9 ? 1'h0 : _signals_T_11; // @[Lookup.scala 33:37]
  wire  _signals_T_39 = _signals_T_7 ? 1'h0 : _signals_T_38; // @[Lookup.scala 33:37]
  wire  _signals_T_40 = _signals_T_5 ? 1'h0 : _signals_T_39; // @[Lookup.scala 33:37]
  wire  _signals_T_41 = _signals_T_3 ? 1'h0 : _signals_T_40; // @[Lookup.scala 33:37]
  wire  _signals_T_45 = _signals_T_11 ? 1'h0 : _signals_T_13; // @[Lookup.scala 33:37]
  wire  _signals_T_46 = _signals_T_9 ? 1'h0 : _signals_T_45; // @[Lookup.scala 33:37]
  wire  _signals_T_47 = _signals_T_7 ? 1'h0 : _signals_T_46; // @[Lookup.scala 33:37]
  wire  _signals_T_48 = _signals_T_5 ? 1'h0 : _signals_T_47; // @[Lookup.scala 33:37]
  wire  _signals_T_49 = _signals_T_3 ? 1'h0 : _signals_T_48; // @[Lookup.scala 33:37]
  wire  _signals_T_52 = _signals_T_13 ? 1'h0 : _signals_T_15 | _signals_T_17; // @[Lookup.scala 33:37]
  wire  _signals_T_54 = _signals_T_9 ? 1'h0 : _signals_T_11 | _signals_T_52; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_72 = _signals_T_5 ? 2'h2 : _signals_T_31; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_73 = _signals_T_3 ? 2'h0 : _signals_T_72; // @[Lookup.scala 33:37]
  wire  _signals_T_78 = _signals_T_9 ? 1'h0 : _signals_T_11 | (_signals_T_13 | _signals_T_15); // @[Lookup.scala 33:37]
  wire  _signals_T_80 = _signals_T_5 ? 1'h0 : _signals_T_7 | _signals_T_78; // @[Lookup.scala 33:37]
  wire [6:0] _signals_T_90 = _signals_T_17 ? 7'h40 : 7'h0; // @[Lookup.scala 33:37]
  wire [6:0] _signals_T_91 = _signals_T_15 ? 7'h20 : _signals_T_90; // @[Lookup.scala 33:37]
  wire [6:0] _signals_T_92 = _signals_T_13 ? 7'h20 : _signals_T_91; // @[Lookup.scala 33:37]
  wire [6:0] _signals_T_93 = _signals_T_11 ? 7'h20 : _signals_T_92; // @[Lookup.scala 33:37]
  wire [6:0] _signals_T_94 = _signals_T_9 ? 7'h8 : _signals_T_93; // @[Lookup.scala 33:37]
  wire [6:0] _signals_T_95 = _signals_T_7 ? 7'h20 : _signals_T_94; // @[Lookup.scala 33:37]
  wire [6:0] _signals_T_96 = _signals_T_5 ? 7'h2 : _signals_T_95; // @[Lookup.scala 33:37]
  wire [6:0] _signals_T_97 = _signals_T_3 ? 7'h4 : _signals_T_96; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_98 = _signals_T_17 ? 2'h2 : 2'h0; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_99 = _signals_T_15 ? 2'h2 : _signals_T_98; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_100 = _signals_T_13 ? 2'h0 : _signals_T_99; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_101 = _signals_T_11 ? 2'h0 : _signals_T_100; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_102 = _signals_T_9 ? 2'h1 : _signals_T_101; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_103 = _signals_T_7 ? 2'h0 : _signals_T_102; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_104 = _signals_T_5 ? 2'h0 : _signals_T_103; // @[Lookup.scala 33:37]
  wire [1:0] _signals_T_105 = _signals_T_3 ? 2'h0 : _signals_T_104; // @[Lookup.scala 33:37]
  wire [11:0] _io_imm_T_4 = io_instr[31:20]; // @[Decode.scala 71:58]
  wire [19:0] io_imm_hi_hi = io_instr[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  wire [6:0] io_imm_hi_lo = io_instr[31:25]; // @[Decode.scala 72:70]
  wire [4:0] io_imm_lo = io_instr[11:7]; // @[Decode.scala 72:88]
  wire [31:0] _io_imm_T_8 = {io_imm_hi_hi,io_imm_hi_lo,io_imm_lo}; // @[Cat.scala 30:58]
  wire [18:0] io_imm_hi_hi_hi = io_instr[31] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 72:12]
  wire  io_imm_hi_lo_1 = io_instr[7]; // @[Decode.scala 73:84]
  wire [5:0] io_imm_lo_hi = io_instr[30:25]; // @[Decode.scala 73:97]
  wire [3:0] io_imm_lo_lo = io_instr[11:8]; // @[Decode.scala 73:115]
  wire [30:0] _io_imm_T_12 = {io_imm_hi_hi_hi,io_instr[31],io_imm_hi_lo_1,io_imm_lo_hi,io_imm_lo_lo}; // @[Cat.scala 30:58]
  wire [19:0] io_imm_hi_2 = io_instr[31:12]; // @[Decode.scala 74:46]
  wire [31:0] _io_imm_T_14 = {io_imm_hi_2,12'h0}; // @[Cat.scala 30:58]
  wire [10:0] io_imm_hi_hi_hi_1 = io_instr[31] ? 11'h7ff : 11'h0; // @[Bitwise.scala 72:12]
  wire [7:0] io_imm_hi_lo_2 = io_instr[19:12]; // @[Decode.scala 75:84]
  wire  io_imm_lo_hi_1 = io_instr[20]; // @[Decode.scala 75:102]
  wire [9:0] io_imm_lo_lo_1 = io_instr[30:21]; // @[Decode.scala 75:116]
  wire [30:0] _io_imm_T_18 = {io_imm_hi_hi_hi_1,io_instr[31],io_imm_hi_lo_2,io_imm_lo_hi_1,io_imm_lo_lo_1}; // @[Cat.scala 30:58]
  wire [5:0] _io_imm_T_22 = {1'b0,$signed(io_instr[19:15])}; // @[Decode.scala 76:56]
  wire [5:0] _io_imm_T_23 = io_types[6] ? 6'h20 : 6'h0; // @[Mux.scala 27:72]
  wire [11:0] _io_imm_T_24 = io_types[5] ? _io_imm_T_4 : 12'h0; // @[Mux.scala 27:72]
  wire [31:0] _io_imm_T_25 = io_types[4] ? _io_imm_T_8 : 32'h0; // @[Mux.scala 27:72]
  wire [30:0] _io_imm_T_26 = io_types[3] ? _io_imm_T_12 : 31'h0; // @[Mux.scala 27:72]
  wire [31:0] _io_imm_T_27 = io_types[2] ? _io_imm_T_14 : 32'h0; // @[Mux.scala 27:72]
  wire [30:0] _io_imm_T_28 = io_types[1] ? _io_imm_T_18 : 31'h0; // @[Mux.scala 27:72]
  wire [5:0] _io_imm_T_29 = io_types[0] ? _io_imm_T_22 : 6'h0; // @[Mux.scala 27:72]
  wire [11:0] _GEN_0 = {{6'd0}, _io_imm_T_23}; // @[Mux.scala 27:72]
  wire [11:0] _io_imm_T_30 = _GEN_0 | _io_imm_T_24; // @[Mux.scala 27:72]
  wire [31:0] _GEN_1 = {{20'd0}, _io_imm_T_30}; // @[Mux.scala 27:72]
  wire [31:0] _io_imm_T_31 = _GEN_1 | _io_imm_T_25; // @[Mux.scala 27:72]
  wire [31:0] _GEN_2 = {{1'd0}, _io_imm_T_26}; // @[Mux.scala 27:72]
  wire [31:0] _io_imm_T_32 = _io_imm_T_31 | _GEN_2; // @[Mux.scala 27:72]
  wire [31:0] _io_imm_T_33 = _io_imm_T_32 | _io_imm_T_27; // @[Mux.scala 27:72]
  wire [31:0] _GEN_3 = {{1'd0}, _io_imm_T_28}; // @[Mux.scala 27:72]
  wire [31:0] _io_imm_T_34 = _io_imm_T_33 | _GEN_3; // @[Mux.scala 27:72]
  wire [31:0] _GEN_4 = {{26'd0}, _io_imm_T_29}; // @[Mux.scala 27:72]
  assign io_branch = _signals_T_1 ? 1'h0 : _signals_T_25; // @[Lookup.scala 33:37]
  assign io_jump = _signals_T_1 ? 2'h0 : _signals_T_33; // @[Lookup.scala 33:37]
  assign io_memRead = _signals_T_1 ? 1'h0 : _signals_T_41; // @[Lookup.scala 33:37]
  assign io_memWrite = _signals_T_1 ? 1'h0 : _signals_T_49; // @[Lookup.scala 33:37]
  assign io_regWrite = _signals_T_1 | (_signals_T_3 | (_signals_T_5 | (_signals_T_7 | _signals_T_54))); // @[Lookup.scala 33:37]
  assign io_toReg = _signals_T_1 ? 1'h0 : _signals_T_41; // @[Lookup.scala 33:37]
  assign io_resultSel = _signals_T_1 ? 2'h1 : _signals_T_73; // @[Lookup.scala 33:37]
  assign io_aluSrc = _signals_T_1 ? 1'h0 : _signals_T_3 | _signals_T_80; // @[Lookup.scala 33:37]
  assign io_pcAdd = _signals_T_1 ? 1'h0 : _signals_T_3; // @[Lookup.scala 33:37]
  assign io_types = _signals_T_1 ? 7'h4 : _signals_T_97; // @[Lookup.scala 33:37]
  assign io_aluCtrlOp = _signals_T_1 ? 2'h0 : _signals_T_105; // @[Lookup.scala 33:37]
  assign io_imm = _io_imm_T_34 | _GEN_4; // @[Mux.scala 27:72]
endmodule
module RegFile(
  input         clock,
  input         reset,
  input  [4:0]  io_regRAddr1,
  input  [4:0]  io_regRAddr2,
  input  [4:0]  io_regWAddr,
  input  [31:0] io_regWData,
  input         io_wen,
  output [31:0] io_regRData1,
  output [31:0] io_regRData2
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regs_0; // @[RegFile.scala 19:23]
  reg [31:0] regs_1; // @[RegFile.scala 19:23]
  reg [31:0] regs_2; // @[RegFile.scala 19:23]
  reg [31:0] regs_3; // @[RegFile.scala 19:23]
  reg [31:0] regs_4; // @[RegFile.scala 19:23]
  reg [31:0] regs_5; // @[RegFile.scala 19:23]
  reg [31:0] regs_6; // @[RegFile.scala 19:23]
  reg [31:0] regs_7; // @[RegFile.scala 19:23]
  reg [31:0] regs_8; // @[RegFile.scala 19:23]
  reg [31:0] regs_9; // @[RegFile.scala 19:23]
  reg [31:0] regs_10; // @[RegFile.scala 19:23]
  reg [31:0] regs_11; // @[RegFile.scala 19:23]
  reg [31:0] regs_12; // @[RegFile.scala 19:23]
  reg [31:0] regs_13; // @[RegFile.scala 19:23]
  reg [31:0] regs_14; // @[RegFile.scala 19:23]
  reg [31:0] regs_15; // @[RegFile.scala 19:23]
  reg [31:0] regs_16; // @[RegFile.scala 19:23]
  reg [31:0] regs_17; // @[RegFile.scala 19:23]
  reg [31:0] regs_18; // @[RegFile.scala 19:23]
  reg [31:0] regs_19; // @[RegFile.scala 19:23]
  reg [31:0] regs_20; // @[RegFile.scala 19:23]
  reg [31:0] regs_21; // @[RegFile.scala 19:23]
  reg [31:0] regs_22; // @[RegFile.scala 19:23]
  reg [31:0] regs_23; // @[RegFile.scala 19:23]
  reg [31:0] regs_24; // @[RegFile.scala 19:23]
  reg [31:0] regs_25; // @[RegFile.scala 19:23]
  reg [31:0] regs_26; // @[RegFile.scala 19:23]
  reg [31:0] regs_27; // @[RegFile.scala 19:23]
  reg [31:0] regs_28; // @[RegFile.scala 19:23]
  reg [31:0] regs_29; // @[RegFile.scala 19:23]
  reg [31:0] regs_30; // @[RegFile.scala 19:23]
  wire [31:0] _GEN_1 = 5'h1 == io_regRAddr1 ? regs_1 : regs_0; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_2 = 5'h2 == io_regRAddr1 ? regs_2 : _GEN_1; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_3 = 5'h3 == io_regRAddr1 ? regs_3 : _GEN_2; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_4 = 5'h4 == io_regRAddr1 ? regs_4 : _GEN_3; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_5 = 5'h5 == io_regRAddr1 ? regs_5 : _GEN_4; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_6 = 5'h6 == io_regRAddr1 ? regs_6 : _GEN_5; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_7 = 5'h7 == io_regRAddr1 ? regs_7 : _GEN_6; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_8 = 5'h8 == io_regRAddr1 ? regs_8 : _GEN_7; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_9 = 5'h9 == io_regRAddr1 ? regs_9 : _GEN_8; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_10 = 5'ha == io_regRAddr1 ? regs_10 : _GEN_9; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_11 = 5'hb == io_regRAddr1 ? regs_11 : _GEN_10; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_12 = 5'hc == io_regRAddr1 ? regs_12 : _GEN_11; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_13 = 5'hd == io_regRAddr1 ? regs_13 : _GEN_12; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_14 = 5'he == io_regRAddr1 ? regs_14 : _GEN_13; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_15 = 5'hf == io_regRAddr1 ? regs_15 : _GEN_14; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_16 = 5'h10 == io_regRAddr1 ? regs_16 : _GEN_15; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_17 = 5'h11 == io_regRAddr1 ? regs_17 : _GEN_16; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_18 = 5'h12 == io_regRAddr1 ? regs_18 : _GEN_17; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_19 = 5'h13 == io_regRAddr1 ? regs_19 : _GEN_18; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_20 = 5'h14 == io_regRAddr1 ? regs_20 : _GEN_19; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_21 = 5'h15 == io_regRAddr1 ? regs_21 : _GEN_20; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_22 = 5'h16 == io_regRAddr1 ? regs_22 : _GEN_21; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_23 = 5'h17 == io_regRAddr1 ? regs_23 : _GEN_22; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_24 = 5'h18 == io_regRAddr1 ? regs_24 : _GEN_23; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_25 = 5'h19 == io_regRAddr1 ? regs_25 : _GEN_24; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_26 = 5'h1a == io_regRAddr1 ? regs_26 : _GEN_25; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_27 = 5'h1b == io_regRAddr1 ? regs_27 : _GEN_26; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_28 = 5'h1c == io_regRAddr1 ? regs_28 : _GEN_27; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_29 = 5'h1d == io_regRAddr1 ? regs_29 : _GEN_28; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_30 = 5'h1e == io_regRAddr1 ? regs_30 : _GEN_29; // @[RegFile.scala 21:24 RegFile.scala 21:24]
  wire [31:0] _GEN_32 = 5'h1 == io_regRAddr2 ? regs_1 : regs_0; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_33 = 5'h2 == io_regRAddr2 ? regs_2 : _GEN_32; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_34 = 5'h3 == io_regRAddr2 ? regs_3 : _GEN_33; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_35 = 5'h4 == io_regRAddr2 ? regs_4 : _GEN_34; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_36 = 5'h5 == io_regRAddr2 ? regs_5 : _GEN_35; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_37 = 5'h6 == io_regRAddr2 ? regs_6 : _GEN_36; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_38 = 5'h7 == io_regRAddr2 ? regs_7 : _GEN_37; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_39 = 5'h8 == io_regRAddr2 ? regs_8 : _GEN_38; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_40 = 5'h9 == io_regRAddr2 ? regs_9 : _GEN_39; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_41 = 5'ha == io_regRAddr2 ? regs_10 : _GEN_40; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_42 = 5'hb == io_regRAddr2 ? regs_11 : _GEN_41; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_43 = 5'hc == io_regRAddr2 ? regs_12 : _GEN_42; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_44 = 5'hd == io_regRAddr2 ? regs_13 : _GEN_43; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_45 = 5'he == io_regRAddr2 ? regs_14 : _GEN_44; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_46 = 5'hf == io_regRAddr2 ? regs_15 : _GEN_45; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_47 = 5'h10 == io_regRAddr2 ? regs_16 : _GEN_46; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_48 = 5'h11 == io_regRAddr2 ? regs_17 : _GEN_47; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_49 = 5'h12 == io_regRAddr2 ? regs_18 : _GEN_48; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_50 = 5'h13 == io_regRAddr2 ? regs_19 : _GEN_49; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_51 = 5'h14 == io_regRAddr2 ? regs_20 : _GEN_50; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_52 = 5'h15 == io_regRAddr2 ? regs_21 : _GEN_51; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_53 = 5'h16 == io_regRAddr2 ? regs_22 : _GEN_52; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_54 = 5'h17 == io_regRAddr2 ? regs_23 : _GEN_53; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_55 = 5'h18 == io_regRAddr2 ? regs_24 : _GEN_54; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_56 = 5'h19 == io_regRAddr2 ? regs_25 : _GEN_55; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_57 = 5'h1a == io_regRAddr2 ? regs_26 : _GEN_56; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_58 = 5'h1b == io_regRAddr2 ? regs_27 : _GEN_57; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_59 = 5'h1c == io_regRAddr2 ? regs_28 : _GEN_58; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_60 = 5'h1d == io_regRAddr2 ? regs_29 : _GEN_59; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  wire [31:0] _GEN_61 = 5'h1e == io_regRAddr2 ? regs_30 : _GEN_60; // @[RegFile.scala 22:24 RegFile.scala 22:24]
  assign io_regRData1 = |io_regRAddr1 ? _GEN_30 : 32'h0; // @[RegFile.scala 21:24]
  assign io_regRData2 = |io_regRAddr2 ? _GEN_61 : 32'h0; // @[RegFile.scala 22:24]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 19:23]
      regs_0 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h0 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_0 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_1 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h1 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_1 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_2 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h2 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_2 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_3 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h3 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_3 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_4 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h4 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_4 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_5 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h5 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_5 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_6 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h6 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_6 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_7 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h7 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_7 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_8 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h8 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_8 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_9 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h9 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_9 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_10 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'ha == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_10 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_11 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'hb == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_11 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_12 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'hc == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_12 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_13 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'hd == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_13 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_14 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'he == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_14 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_15 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'hf == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_15 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_16 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h10 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_16 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_17 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h11 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_17 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_18 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h12 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_18 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_19 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h13 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_19 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_20 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h14 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_20 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_21 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h15 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_21 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_22 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h16 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_22 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_23 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h17 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_23 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_24 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h18 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_24 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_25 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h19 == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_25 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_26 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h1a == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_26 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_27 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h1b == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_27 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_28 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h1c == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_28 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_29 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h1d == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_29 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
    if (reset) begin // @[RegFile.scala 19:23]
      regs_30 <= 32'h0; // @[RegFile.scala 19:23]
    end else if (io_wen) begin // @[RegFile.scala 23:17]
      if (|io_regWAddr) begin // @[RegFile.scala 24:30]
        if (5'h1e == io_regWAddr) begin // @[RegFile.scala 25:31]
          regs_30 <= io_regWData; // @[RegFile.scala 25:31]
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regs_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regs_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regs_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regs_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  regs_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  regs_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  regs_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  regs_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  regs_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  regs_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  regs_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  regs_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  regs_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  regs_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  regs_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  regs_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  regs_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  regs_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  regs_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  regs_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  regs_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  regs_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  regs_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  regs_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  regs_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  regs_30 = _RAND_30[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ALUCtrl(
  input  [2:0] io_funct3,
  input  [6:0] io_funct7,
  input  [1:0] io_aluCtrlOp,
  output [3:0] io_aluOp
);
  wire  io_aluOp_hi = io_funct7[5]; // @[ALUCtrl.scala 34:37]
  wire [3:0] _io_aluOp_T_1 = {io_aluOp_hi,io_funct3}; // @[Cat.scala 30:58]
  wire [3:0] _io_aluOp_T_3 = 3'h0 == io_funct3 ? 4'h9 : 4'hf; // @[Mux.scala 80:57]
  wire [3:0] _io_aluOp_T_5 = 3'h1 == io_funct3 ? 4'ha : _io_aluOp_T_3; // @[Mux.scala 80:57]
  wire [3:0] _io_aluOp_T_7 = 3'h4 == io_funct3 ? 4'h2 : _io_aluOp_T_5; // @[Mux.scala 80:57]
  wire [3:0] _io_aluOp_T_9 = 3'h5 == io_funct3 ? 4'hc : _io_aluOp_T_7; // @[Mux.scala 80:57]
  wire [3:0] _io_aluOp_T_11 = 3'h6 == io_funct3 ? 4'h3 : _io_aluOp_T_9; // @[Mux.scala 80:57]
  wire [3:0] _io_aluOp_T_13 = 3'h7 == io_funct3 ? 4'hb : _io_aluOp_T_11; // @[Mux.scala 80:57]
  wire [4:0] _io_aluOp_T_15 = 2'h0 == io_aluCtrlOp ? 5'h0 : 5'hf; // @[Mux.scala 80:57]
  wire [4:0] _io_aluOp_T_17 = 2'h2 == io_aluCtrlOp ? {{1'd0}, _io_aluOp_T_1} : _io_aluOp_T_15; // @[Mux.scala 80:57]
  wire [4:0] _io_aluOp_T_19 = 2'h1 == io_aluCtrlOp ? {{1'd0}, _io_aluOp_T_13} : _io_aluOp_T_17; // @[Mux.scala 80:57]
  assign io_aluOp = _io_aluOp_T_19[3:0]; // @[ALUCtrl.scala 31:14]
endmodule
module ALU(
  input  [31:0] io_aluIn1,
  input  [31:0] io_aluIn2,
  input  [3:0]  io_aluOp,
  output [31:0] io_aluOut
);
  wire [31:0] _sum_T_4 = 32'h0 - io_aluIn2; // @[ALU.scala 39:61]
  wire [31:0] _sum_T_5 = io_aluOp[3] | io_aluOp[1] ? _sum_T_4 : io_aluIn2; // @[ALU.scala 39:33]
  wire [31:0] sum = io_aluIn1 + _sum_T_5; // @[ALU.scala 39:28]
  wire  neq = |sum; // @[ALU.scala 40:22]
  wire  _cmp_T_7 = io_aluOp[0] ? io_aluIn2[31] : io_aluIn1[31]; // @[ALU.scala 42:21]
  wire  cmp = io_aluIn1[31] == io_aluIn2[31] ? sum[31] : _cmp_T_7; // @[ALU.scala 41:21]
  wire [4:0] shamt = io_aluIn2[4:0]; // @[ALU.scala 43:27]
  wire [31:0] _shin_T_4 = {{16'd0}, io_aluIn1[31:16]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_6 = {io_aluIn1[15:0], 16'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shin_T_8 = _shin_T_6 & 32'hffff0000; // @[Bitwise.scala 103:75]
  wire [31:0] _shin_T_9 = _shin_T_4 | _shin_T_8; // @[Bitwise.scala 103:39]
  wire [31:0] _GEN_0 = {{8'd0}, _shin_T_9[31:8]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_14 = _GEN_0 & 32'hff00ff; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_16 = {_shin_T_9[23:0], 8'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shin_T_18 = _shin_T_16 & 32'hff00ff00; // @[Bitwise.scala 103:75]
  wire [31:0] _shin_T_19 = _shin_T_14 | _shin_T_18; // @[Bitwise.scala 103:39]
  wire [31:0] _GEN_1 = {{4'd0}, _shin_T_19[31:4]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_24 = _GEN_1 & 32'hf0f0f0f; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_26 = {_shin_T_19[27:0], 4'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shin_T_28 = _shin_T_26 & 32'hf0f0f0f0; // @[Bitwise.scala 103:75]
  wire [31:0] _shin_T_29 = _shin_T_24 | _shin_T_28; // @[Bitwise.scala 103:39]
  wire [31:0] _GEN_2 = {{2'd0}, _shin_T_29[31:2]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_34 = _GEN_2 & 32'h33333333; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_36 = {_shin_T_29[29:0], 2'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shin_T_38 = _shin_T_36 & 32'hcccccccc; // @[Bitwise.scala 103:75]
  wire [31:0] _shin_T_39 = _shin_T_34 | _shin_T_38; // @[Bitwise.scala 103:39]
  wire [31:0] _GEN_3 = {{1'd0}, _shin_T_39[31:1]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_44 = _GEN_3 & 32'h55555555; // @[Bitwise.scala 103:31]
  wire [31:0] _shin_T_46 = {_shin_T_39[30:0], 1'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shin_T_48 = _shin_T_46 & 32'haaaaaaaa; // @[Bitwise.scala 103:75]
  wire [31:0] _shin_T_49 = _shin_T_44 | _shin_T_48; // @[Bitwise.scala 103:39]
  wire [31:0] shin = io_aluOp[3] ? io_aluIn1 : _shin_T_49; // @[ALU.scala 44:21]
  wire  shiftr_hi = io_aluOp[0] & shin[31]; // @[ALU.scala 45:35]
  wire [32:0] _shiftr_T_3 = {shiftr_hi,shin}; // @[ALU.scala 45:54]
  wire [32:0] _shiftr_T_4 = $signed(_shiftr_T_3) >>> shamt; // @[ALU.scala 45:61]
  wire [31:0] shiftr = _shiftr_T_4[31:0]; // @[ALU.scala 45:70]
  wire [31:0] _shiftl_T_3 = {{16'd0}, shiftr[31:16]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_5 = {shiftr[15:0], 16'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shiftl_T_7 = _shiftl_T_5 & 32'hffff0000; // @[Bitwise.scala 103:75]
  wire [31:0] _shiftl_T_8 = _shiftl_T_3 | _shiftl_T_7; // @[Bitwise.scala 103:39]
  wire [31:0] _GEN_4 = {{8'd0}, _shiftl_T_8[31:8]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_13 = _GEN_4 & 32'hff00ff; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_15 = {_shiftl_T_8[23:0], 8'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shiftl_T_17 = _shiftl_T_15 & 32'hff00ff00; // @[Bitwise.scala 103:75]
  wire [31:0] _shiftl_T_18 = _shiftl_T_13 | _shiftl_T_17; // @[Bitwise.scala 103:39]
  wire [31:0] _GEN_5 = {{4'd0}, _shiftl_T_18[31:4]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_23 = _GEN_5 & 32'hf0f0f0f; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_25 = {_shiftl_T_18[27:0], 4'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shiftl_T_27 = _shiftl_T_25 & 32'hf0f0f0f0; // @[Bitwise.scala 103:75]
  wire [31:0] _shiftl_T_28 = _shiftl_T_23 | _shiftl_T_27; // @[Bitwise.scala 103:39]
  wire [31:0] _GEN_6 = {{2'd0}, _shiftl_T_28[31:2]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_33 = _GEN_6 & 32'h33333333; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_35 = {_shiftl_T_28[29:0], 2'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shiftl_T_37 = _shiftl_T_35 & 32'hcccccccc; // @[Bitwise.scala 103:75]
  wire [31:0] _shiftl_T_38 = _shiftl_T_33 | _shiftl_T_37; // @[Bitwise.scala 103:39]
  wire [31:0] _GEN_7 = {{1'd0}, _shiftl_T_38[31:1]}; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_43 = _GEN_7 & 32'h55555555; // @[Bitwise.scala 103:31]
  wire [31:0] _shiftl_T_45 = {_shiftl_T_38[30:0], 1'h0}; // @[Bitwise.scala 103:65]
  wire [31:0] _shiftl_T_47 = _shiftl_T_45 & 32'haaaaaaaa; // @[Bitwise.scala 103:75]
  wire [31:0] shiftl = _shiftl_T_43 | _shiftl_T_47; // @[Bitwise.scala 103:39]
  wire [31:0] _out_T = io_aluIn1 ^ io_aluIn2; // @[ALU.scala 55:36]
  wire [31:0] _out_T_1 = io_aluIn1 | io_aluIn2; // @[ALU.scala 58:36]
  wire [31:0] _out_T_2 = io_aluIn1 & io_aluIn2; // @[ALU.scala 59:36]
  wire  _out_T_3 = ~neq; // @[ALU.scala 61:25]
  wire  _out_T_4 = ~cmp; // @[ALU.scala 63:25]
  wire [31:0] _out_T_7 = 4'h0 == io_aluOp ? sum : 32'h0; // @[Mux.scala 80:57]
  wire [31:0] _out_T_9 = 4'h8 == io_aluOp ? sum : _out_T_7; // @[Mux.scala 80:57]
  wire [31:0] _out_T_11 = 4'h1 == io_aluOp ? shiftl : _out_T_9; // @[Mux.scala 80:57]
  wire [31:0] _out_T_13 = 4'h2 == io_aluOp ? {{31'd0}, cmp} : _out_T_11; // @[Mux.scala 80:57]
  wire [31:0] _out_T_15 = 4'h3 == io_aluOp ? {{31'd0}, cmp} : _out_T_13; // @[Mux.scala 80:57]
  wire [31:0] _out_T_17 = 4'h4 == io_aluOp ? _out_T : _out_T_15; // @[Mux.scala 80:57]
  wire [31:0] _out_T_19 = 4'h5 == io_aluOp ? shiftr : _out_T_17; // @[Mux.scala 80:57]
  wire [31:0] _out_T_21 = 4'hd == io_aluOp ? shiftr : _out_T_19; // @[Mux.scala 80:57]
  wire [31:0] _out_T_23 = 4'h6 == io_aluOp ? _out_T_1 : _out_T_21; // @[Mux.scala 80:57]
  wire [31:0] _out_T_25 = 4'h7 == io_aluOp ? _out_T_2 : _out_T_23; // @[Mux.scala 80:57]
  wire [31:0] _out_T_27 = 4'h9 == io_aluOp ? {{31'd0}, _out_T_3} : _out_T_25; // @[Mux.scala 80:57]
  wire [31:0] _out_T_29 = 4'ha == io_aluOp ? {{31'd0}, neq} : _out_T_27; // @[Mux.scala 80:57]
  wire [31:0] _out_T_31 = 4'hc == io_aluOp ? {{31'd0}, _out_T_4} : _out_T_29; // @[Mux.scala 80:57]
  assign io_aluOut = 4'hb == io_aluOp ? {{31'd0}, _out_T_4} : _out_T_31; // @[Mux.scala 80:57]
endmodule
module Adder(
  input  [31:0] io_inputx,
  input  [31:0] io_inputy,
  output [31:0] io_result
);
  assign io_result = io_inputx + io_inputy; // @[Utils.scala 14:26]
endmodule
module SCPU(
  input         clock,
  input         reset,
  output [31:0] io_imem_address,
  input  [31:0] io_imem_instruction,
  output [31:0] io_dmem_address,
  output [31:0] io_dmem_writeData,
  output        io_dmem_memRead,
  output        io_dmem_memWrite,
  output [1:0]  io_dmem_maskMode,
  output        io_dmem_sext,
  input  [31:0] io_dmem_readData
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] decode_io_instr; // @[CPU.scala 19:26]
  wire  decode_io_branch; // @[CPU.scala 19:26]
  wire [1:0] decode_io_jump; // @[CPU.scala 19:26]
  wire  decode_io_memRead; // @[CPU.scala 19:26]
  wire  decode_io_memWrite; // @[CPU.scala 19:26]
  wire  decode_io_regWrite; // @[CPU.scala 19:26]
  wire  decode_io_toReg; // @[CPU.scala 19:26]
  wire [1:0] decode_io_resultSel; // @[CPU.scala 19:26]
  wire  decode_io_aluSrc; // @[CPU.scala 19:26]
  wire  decode_io_pcAdd; // @[CPU.scala 19:26]
  wire [6:0] decode_io_types; // @[CPU.scala 19:26]
  wire [1:0] decode_io_aluCtrlOp; // @[CPU.scala 19:26]
  wire [31:0] decode_io_imm; // @[CPU.scala 19:26]
  wire  regFile_clock; // @[CPU.scala 20:26]
  wire  regFile_reset; // @[CPU.scala 20:26]
  wire [4:0] regFile_io_regRAddr1; // @[CPU.scala 20:26]
  wire [4:0] regFile_io_regRAddr2; // @[CPU.scala 20:26]
  wire [4:0] regFile_io_regWAddr; // @[CPU.scala 20:26]
  wire [31:0] regFile_io_regWData; // @[CPU.scala 20:26]
  wire  regFile_io_wen; // @[CPU.scala 20:26]
  wire [31:0] regFile_io_regRData1; // @[CPU.scala 20:26]
  wire [31:0] regFile_io_regRData2; // @[CPU.scala 20:26]
  wire [2:0] aluCtrl_io_funct3; // @[CPU.scala 21:26]
  wire [6:0] aluCtrl_io_funct7; // @[CPU.scala 21:26]
  wire [1:0] aluCtrl_io_aluCtrlOp; // @[CPU.scala 21:26]
  wire [3:0] aluCtrl_io_aluOp; // @[CPU.scala 21:26]
  wire [31:0] alu_io_aluIn1; // @[CPU.scala 22:26]
  wire [31:0] alu_io_aluIn2; // @[CPU.scala 22:26]
  wire [3:0] alu_io_aluOp; // @[CPU.scala 22:26]
  wire [31:0] alu_io_aluOut; // @[CPU.scala 22:26]
  wire [31:0] pcPlus4_io_inputx; // @[CPU.scala 23:26]
  wire [31:0] pcPlus4_io_inputy; // @[CPU.scala 23:26]
  wire [31:0] pcPlus4_io_result; // @[CPU.scala 23:26]
  wire [31:0] brAdd_io_inputx; // @[CPU.scala 24:26]
  wire [31:0] brAdd_io_inputy; // @[CPU.scala 24:26]
  wire [31:0] brAdd_io_result; // @[CPU.scala 24:26]
  reg [31:0] pc; // @[CPU.scala 17:37]
  wire [31:0] _result_T_1 = 2'h0 == decode_io_resultSel ? alu_io_aluOut : 32'h0; // @[Mux.scala 80:57]
  wire [31:0] _result_T_3 = 2'h1 == decode_io_resultSel ? decode_io_imm : _result_T_1; // @[Mux.scala 80:57]
  wire [31:0] result = 2'h2 == decode_io_resultSel ? pcPlus4_io_result : _result_T_3; // @[Mux.scala 80:57]
  wire  _pc_T_1 = decode_io_branch & alu_io_aluOut[0]; // @[CPU.scala 76:27]
  wire  _pc_T_2 = decode_io_jump == 2'h1; // @[CPU.scala 77:25]
  wire  _pc_T_3 = decode_io_jump == 2'h2; // @[CPU.scala 78:25]
  wire [31:0] _pc_T_5 = alu_io_aluOut & 32'hfffffffe; // @[CPU.scala 78:52]
  Decode decode ( // @[CPU.scala 19:26]
    .io_instr(decode_io_instr),
    .io_branch(decode_io_branch),
    .io_jump(decode_io_jump),
    .io_memRead(decode_io_memRead),
    .io_memWrite(decode_io_memWrite),
    .io_regWrite(decode_io_regWrite),
    .io_toReg(decode_io_toReg),
    .io_resultSel(decode_io_resultSel),
    .io_aluSrc(decode_io_aluSrc),
    .io_pcAdd(decode_io_pcAdd),
    .io_types(decode_io_types),
    .io_aluCtrlOp(decode_io_aluCtrlOp),
    .io_imm(decode_io_imm)
  );
  RegFile regFile ( // @[CPU.scala 20:26]
    .clock(regFile_clock),
    .reset(regFile_reset),
    .io_regRAddr1(regFile_io_regRAddr1),
    .io_regRAddr2(regFile_io_regRAddr2),
    .io_regWAddr(regFile_io_regWAddr),
    .io_regWData(regFile_io_regWData),
    .io_wen(regFile_io_wen),
    .io_regRData1(regFile_io_regRData1),
    .io_regRData2(regFile_io_regRData2)
  );
  ALUCtrl aluCtrl ( // @[CPU.scala 21:26]
    .io_funct3(aluCtrl_io_funct3),
    .io_funct7(aluCtrl_io_funct7),
    .io_aluCtrlOp(aluCtrl_io_aluCtrlOp),
    .io_aluOp(aluCtrl_io_aluOp)
  );
  ALU alu ( // @[CPU.scala 22:26]
    .io_aluIn1(alu_io_aluIn1),
    .io_aluIn2(alu_io_aluIn2),
    .io_aluOp(alu_io_aluOp),
    .io_aluOut(alu_io_aluOut)
  );
  Adder pcPlus4 ( // @[CPU.scala 23:26]
    .io_inputx(pcPlus4_io_inputx),
    .io_inputy(pcPlus4_io_inputy),
    .io_result(pcPlus4_io_result)
  );
  Adder brAdd ( // @[CPU.scala 24:26]
    .io_inputx(brAdd_io_inputx),
    .io_inputy(brAdd_io_inputy),
    .io_result(brAdd_io_result)
  );
  assign io_imem_address = pc; // @[CPU.scala 27:21]
  assign io_dmem_address = alu_io_aluOut; // @[CPU.scala 57:23]
  assign io_dmem_writeData = regFile_io_regRData2; // @[CPU.scala 58:23]
  assign io_dmem_memRead = decode_io_memRead; // @[CPU.scala 59:23]
  assign io_dmem_memWrite = decode_io_memWrite; // @[CPU.scala 60:23]
  assign io_dmem_maskMode = io_imem_instruction[13:12]; // @[CPU.scala 61:31]
  assign io_dmem_sext = ~io_imem_instruction[14]; // @[CPU.scala 62:26]
  assign decode_io_instr = io_imem_instruction; // @[CPU.scala 40:21]
  assign regFile_clock = clock;
  assign regFile_reset = reset;
  assign regFile_io_regRAddr1 = io_imem_instruction[19:15]; // @[CPU.scala 35:34]
  assign regFile_io_regRAddr2 = io_imem_instruction[24:20]; // @[CPU.scala 36:34]
  assign regFile_io_regWAddr = io_imem_instruction[11:7]; // @[CPU.scala 37:34]
  assign regFile_io_regWData = decode_io_toReg ? io_dmem_readData : result; // @[CPU.scala 69:31]
  assign regFile_io_wen = decode_io_regWrite; // @[CPU.scala 38:26]
  assign aluCtrl_io_funct3 = io_imem_instruction[14:12]; // @[CPU.scala 44:34]
  assign aluCtrl_io_funct7 = io_imem_instruction[31:25]; // @[CPU.scala 45:34]
  assign aluCtrl_io_aluCtrlOp = decode_io_aluCtrlOp; // @[CPU.scala 43:26]
  assign alu_io_aluIn1 = decode_io_pcAdd ? pc : regFile_io_regRData1; // @[CPU.scala 48:25]
  assign alu_io_aluIn2 = decode_io_aluSrc ? decode_io_imm : regFile_io_regRData2; // @[CPU.scala 49:25]
  assign alu_io_aluOp = aluCtrl_io_aluOp; // @[CPU.scala 47:19]
  assign pcPlus4_io_inputx = pc; // @[CPU.scala 30:23]
  assign pcPlus4_io_inputy = 32'h4; // @[CPU.scala 31:23]
  assign brAdd_io_inputx = pc; // @[CPU.scala 71:21]
  assign brAdd_io_inputy = decode_io_imm; // @[CPU.scala 72:21]
  always @(posedge clock) begin
    if (reset) begin // @[CPU.scala 17:37]
      pc <= 32'h0; // @[CPU.scala 17:37]
    end else if (_pc_T_1) begin // @[Mux.scala 98:16]
      pc <= brAdd_io_result;
    end else if (_pc_T_2) begin // @[Mux.scala 98:16]
      pc <= brAdd_io_result;
    end else if (_pc_T_3) begin // @[Mux.scala 98:16]
      pc <= _pc_T_5;
    end else begin
      pc <= pcPlus4_io_result;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module IMem(
  input         clock,
  input  [31:0] io_address,
  output [31:0] io_instruction
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] I_MEM [0:255]; // @[Memory.scala 33:18]
  wire [31:0] I_MEM_io_instruction_MPORT_data; // @[Memory.scala 33:18]
  wire [7:0] I_MEM_io_instruction_MPORT_addr; // @[Memory.scala 33:18]
  assign I_MEM_io_instruction_MPORT_addr = io_address[9:2];
  assign I_MEM_io_instruction_MPORT_data = I_MEM[I_MEM_io_instruction_MPORT_addr]; // @[Memory.scala 33:18]
  assign io_instruction = I_MEM_io_instruction_MPORT_data; // @[Memory.scala 34:18]
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    I_MEM[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module DMem(
  input         clock,
  input  [31:0] io_address,
  input  [1:0]  io_maskMode,
  input         io_sext,
  output [31:0] io_readData
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_MEM_INIT
  reg [7:0] D_MEM_0 [0:255]; // @[Memory.scala 39:18]
  wire [7:0] D_MEM_0_rdwrPort_data; // @[Memory.scala 39:18]
  wire [7:0] D_MEM_0_rdwrPort_addr; // @[Memory.scala 39:18]
  reg [7:0] D_MEM_1 [0:255]; // @[Memory.scala 39:18]
  wire [7:0] D_MEM_1_rdwrPort_data; // @[Memory.scala 39:18]
  wire [7:0] D_MEM_1_rdwrPort_addr; // @[Memory.scala 39:18]
  reg [7:0] D_MEM_2 [0:255]; // @[Memory.scala 39:18]
  wire [7:0] D_MEM_2_rdwrPort_data; // @[Memory.scala 39:18]
  wire [7:0] D_MEM_2_rdwrPort_addr; // @[Memory.scala 39:18]
  reg [7:0] D_MEM_3 [0:255]; // @[Memory.scala 39:18]
  wire [7:0] D_MEM_3_rdwrPort_data; // @[Memory.scala 39:18]
  wire [7:0] D_MEM_3_rdwrPort_addr; // @[Memory.scala 39:18]
  wire  _io_readData_T_2 = io_sext & D_MEM_0_rdwrPort_data[7]; // @[Memory.scala 45:37]
  wire [23:0] io_readData_hi = _io_readData_T_2 ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_readData_T_4 = {io_readData_hi,D_MEM_0_rdwrPort_data}; // @[Cat.scala 30:58]
  wire  _io_readData_T_6 = io_sext & D_MEM_1_rdwrPort_data[7]; // @[Memory.scala 46:37]
  wire [23:0] io_readData_hi_1 = _io_readData_T_6 ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_readData_T_8 = {io_readData_hi_1,D_MEM_1_rdwrPort_data}; // @[Cat.scala 30:58]
  wire  _io_readData_T_10 = io_sext & D_MEM_2_rdwrPort_data[7]; // @[Memory.scala 47:37]
  wire [23:0] io_readData_hi_2 = _io_readData_T_10 ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_readData_T_12 = {io_readData_hi_2,D_MEM_2_rdwrPort_data}; // @[Cat.scala 30:58]
  wire  _io_readData_T_14 = io_sext & D_MEM_3_rdwrPort_data[7]; // @[Memory.scala 48:37]
  wire [23:0] io_readData_hi_3 = _io_readData_T_14 ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_readData_T_16 = {io_readData_hi_3,D_MEM_3_rdwrPort_data}; // @[Cat.scala 30:58]
  wire [31:0] _io_readData_T_18 = 2'h1 == io_address[1:0] ? _io_readData_T_8 : _io_readData_T_4; // @[Mux.scala 80:57]
  wire [31:0] _io_readData_T_20 = 2'h2 == io_address[1:0] ? _io_readData_T_12 : _io_readData_T_18; // @[Mux.scala 80:57]
  wire [31:0] _io_readData_T_22 = 2'h3 == io_address[1:0] ? _io_readData_T_16 : _io_readData_T_20; // @[Mux.scala 80:57]
  wire [15:0] io_readData_hi_hi = _io_readData_T_6 ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_readData_T_27 = {io_readData_hi_hi,D_MEM_1_rdwrPort_data,D_MEM_0_rdwrPort_data}; // @[Cat.scala 30:58]
  wire [15:0] io_readData_hi_hi_1 = _io_readData_T_14 ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  wire [31:0] _io_readData_T_31 = {io_readData_hi_hi_1,D_MEM_3_rdwrPort_data,D_MEM_2_rdwrPort_data}; // @[Cat.scala 30:58]
  wire [31:0] _io_readData_T_33 = io_address[1] ? _io_readData_T_31 : _io_readData_T_27; // @[Mux.scala 80:57]
  wire [31:0] _io_readData_T_34 = {D_MEM_3_rdwrPort_data,D_MEM_2_rdwrPort_data,D_MEM_1_rdwrPort_data,
    D_MEM_0_rdwrPort_data}; // @[Cat.scala 30:58]
  wire [31:0] _io_readData_T_36 = 2'h0 == io_maskMode ? _io_readData_T_22 : 32'h0; // @[Mux.scala 80:57]
  wire [31:0] _io_readData_T_38 = 2'h1 == io_maskMode ? _io_readData_T_33 : _io_readData_T_36; // @[Mux.scala 80:57]
  assign D_MEM_0_rdwrPort_addr = io_address[9:2];
  assign D_MEM_0_rdwrPort_data = D_MEM_0[D_MEM_0_rdwrPort_addr]; // @[Memory.scala 39:18]
  assign D_MEM_1_rdwrPort_addr = io_address[9:2];
  assign D_MEM_1_rdwrPort_data = D_MEM_1[D_MEM_1_rdwrPort_addr]; // @[Memory.scala 39:18]
  assign D_MEM_2_rdwrPort_addr = io_address[9:2];
  assign D_MEM_2_rdwrPort_data = D_MEM_2[D_MEM_2_rdwrPort_addr]; // @[Memory.scala 39:18]
  assign D_MEM_3_rdwrPort_addr = io_address[9:2];
  assign D_MEM_3_rdwrPort_data = D_MEM_3[D_MEM_3_rdwrPort_addr]; // @[Memory.scala 39:18]
  assign io_readData = 2'h2 == io_maskMode ? _io_readData_T_34 : _io_readData_T_38; // @[Mux.scala 80:57]
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    D_MEM_0[initvar] = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    D_MEM_1[initvar] = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    D_MEM_2[initvar] = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    D_MEM_3[initvar] = _RAND_3[7:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Top(
  input   clock,
  input   reset,
  output  io_nothing
);
  wire  cpu_clock; // @[Top.scala 12:21]
  wire  cpu_reset; // @[Top.scala 12:21]
  wire [31:0] cpu_io_imem_address; // @[Top.scala 12:21]
  wire [31:0] cpu_io_imem_instruction; // @[Top.scala 12:21]
  wire [31:0] cpu_io_dmem_address; // @[Top.scala 12:21]
  wire [31:0] cpu_io_dmem_writeData; // @[Top.scala 12:21]
  wire  cpu_io_dmem_memRead; // @[Top.scala 12:21]
  wire  cpu_io_dmem_memWrite; // @[Top.scala 12:21]
  wire [1:0] cpu_io_dmem_maskMode; // @[Top.scala 12:21]
  wire  cpu_io_dmem_sext; // @[Top.scala 12:21]
  wire [31:0] cpu_io_dmem_readData; // @[Top.scala 12:21]
  wire  IMEM_clock; // @[Top.scala 13:22]
  wire [31:0] IMEM_io_address; // @[Top.scala 13:22]
  wire [31:0] IMEM_io_instruction; // @[Top.scala 13:22]
  wire  DMEM_clock; // @[Top.scala 14:22]
  wire [31:0] DMEM_io_address; // @[Top.scala 14:22]
  wire [1:0] DMEM_io_maskMode; // @[Top.scala 14:22]
  wire  DMEM_io_sext; // @[Top.scala 14:22]
  wire [31:0] DMEM_io_readData; // @[Top.scala 14:22]
  SCPU cpu ( // @[Top.scala 12:21]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_imem_address(cpu_io_imem_address),
    .io_imem_instruction(cpu_io_imem_instruction),
    .io_dmem_address(cpu_io_dmem_address),
    .io_dmem_writeData(cpu_io_dmem_writeData),
    .io_dmem_memRead(cpu_io_dmem_memRead),
    .io_dmem_memWrite(cpu_io_dmem_memWrite),
    .io_dmem_maskMode(cpu_io_dmem_maskMode),
    .io_dmem_sext(cpu_io_dmem_sext),
    .io_dmem_readData(cpu_io_dmem_readData)
  );
  IMem IMEM ( // @[Top.scala 13:22]
    .clock(IMEM_clock),
    .io_address(IMEM_io_address),
    .io_instruction(IMEM_io_instruction)
  );
  DMem DMEM ( // @[Top.scala 14:22]
    .clock(DMEM_clock),
    .io_address(DMEM_io_address),
    .io_maskMode(DMEM_io_maskMode),
    .io_sext(DMEM_io_sext),
    .io_readData(DMEM_io_readData)
  );
  assign io_nothing = 1'h0;
  assign cpu_clock = clock;
  assign cpu_reset = reset;
  assign cpu_io_imem_instruction = IMEM_io_instruction; // @[Top.scala 15:17]
  assign cpu_io_dmem_readData = DMEM_io_readData; // @[Top.scala 16:17]
  assign IMEM_clock = clock;
  assign IMEM_io_address = cpu_io_imem_address; // @[Top.scala 15:17]
  assign DMEM_clock = clock;
  assign DMEM_io_address = cpu_io_dmem_address; // @[Top.scala 16:17]
  assign DMEM_io_maskMode = cpu_io_dmem_maskMode; // @[Top.scala 16:17]
  assign DMEM_io_sext = cpu_io_dmem_sext; // @[Top.scala 16:17]
endmodule
