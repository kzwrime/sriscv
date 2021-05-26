package sriscv

import chisel3._
import chisel3.util._

import InstrOpDef._

object Control {

    val default = List(false.B, false.B, false.B,  false.B,  false.B,  0.U,   0.U,     false.B, false.B, "b0000000".U,   0.U,   false.B)
    val map = 
      Array(        /* branch,  jump,  memRead,  memWrite, regWrite, toReg, resultSel, aluSrc,  pcAdd,     RISBUJZ type  aluCtl, validInst */
      LUI      -> List(false.B, 0.U,   false.B,  false.B,  true.B,   0.U,   1.U,       false.B, false.B, "b0000100".U,   0.U,    true.B),
      AUIPC    -> List(false.B, 0.U,   false.B,  false.B,  true.B,   0.U,   0.U,       true.B,  true.B,  "b0000100".U,   0.U,    true.B),
      JAL      -> List(false.B, 1.U,   false.B,  false.B,  true.B,   0.U,   2.U,       false.B, false.B, "b0000010".U,   0.U,    true.B),
      JALR     -> List(false.B, 2.U,   false.B,  false.B,  true.B,   0.U,   2.U,       true.B,  false.B, "b0100000".U,   0.U,    true.B),
      BRANCH   -> List(true.B,  0.U,   false.B,  false.B,  false.B,  0.U,   0.U,       false.B, false.B, "b0001000".U,   1.U,    true.B),
      LOAD     -> List(false.B, 0.U,   true.B,   false.B,  true.B,   1.U,   0.U,       true.B,  false.B, "b0100000".U,   0.U,    true.B),
      STORE    -> List(false.B, 0.U,   false.B,  true.B,   false.B,  0.U,   0.U,       true.B,  false.B, "b0100000".U,   0.U,    true.B),
      ALUI     -> List(false.B, 0.U,   false.B,  false.B,  true.B,   0.U,   0.U,       true.B,  false.B, "b0100000".U,   2.U,    true.B),
      ALUR     -> List(false.B, 0.U,   false.B,  false.B,  true.B,   0.U,   0.U,       false.B, false.B, "b1000000".U,   2.U,    true.B),
    //   FENCE  -> List(false.B, false.B, false.B,   false.B,  true.B,   0.U,   0.U,          false.B, false.B, false.B, 2.U,   true.B),
    //   SYSTEM -> List(false.B, false.B, false.B,   false.B,  true.B,   0.U,   0.U,          false.B, false.B, false.B, 2.U,   true.B),
      ) // Array
}

class DecodeSignals extends Bundle{
    // val opcode = Input(UInt(7.W))
    val instr = Input(UInt(32.W))

    val branch    = Output(Bool())       // branch or jal, PC = PC + IMM
    // val pcFromALU = Output(Bool())       // PC = ALU
    val jump      = Output(UInt(2.W))    // 1: jal: pc=pc+imm, 2: jalr: pc=[rs1]+imm
    val memRead   = Output(Bool())       // read memory
    val memWrite  = Output(Bool())       // write memory
    val regWrite  = Output(Bool())       // write reg files
    val toReg     = Output(UInt(1.W))    // 0: exu, 1: memory
    val resultSel = Output(UInt(2.W))    // 00: alu, 01: imm, 10: pc+4
    val aluSrc    = Output(Bool())       // 0: (rs2), 1: imm
    val pcAdd     = Output(Bool())       // ALU <= PC
    val types     = Output(UInt(7.W))       // type
    val aluCtrlOp = Output(UInt(2.W))    // 00: l/s, 10
    val validInst = Output(Bool())

    val csrctl    = Output(UInt(3.W))

    val imm       = Output(UInt(32.W))
}

class Decode extends Module{
    val io = IO(new DecodeSignals)
    val signals = ListLookup(io.instr, Control.default, Control.map)

    io.branch    := signals(0)
    // io.pcFromALU := signals(1)
    io.jump      := signals(1)
    io.memRead   := signals(2)
    io.memWrite  := signals(3)
    io.regWrite  := signals(4)
    io.toReg     := signals(5)
    io.resultSel := signals(6)
    io.aluSrc    := signals(7)
    io.pcAdd     := signals(8)
    io.types     := signals(9)
    io.aluCtrlOp := signals(10)
    io.validInst := signals(11)

    // TODO all use asSInt
    io.imm := Mux1H(Seq(
      /* R-type*/ io.types(0) -> 32.U,
      /* I-type*/ io.types(1) -> io.instr(31, 20).asSInt,
      /* S-type*/ io.types(2) -> Cat(Fill(20, io.instr(31)), io.instr(31, 25), io.instr(11, 7)),
      /* B-type*/ io.types(3) -> Cat(Fill(19, io.instr(31)), io.instr(31), io.instr(7), io.instr(30, 25), io.instr(11, 8)),
      /* U-type*/ io.types(4) -> Cat(io.instr(31, 12), Fill(12, 0.U)),
      /* J-type*/ io.types(5) -> Cat(Fill(11, io.instr(31)), io.instr(31), io.instr(19, 12), io.instr(20), io.instr(30, 21)),
      /* Z-type*/ io.types(5) -> io.instr(19, 15).zext,
    ))
}