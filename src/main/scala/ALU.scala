package sriscv

import chisel3._
import chisel3.util._

object ALU {     //  - -   3, 1: sub
  val ALU_ADD    = "b0000".U(4.W)
  val ALU_SUB    = "b1000".U(4.W)
  val ALU_SLL    = "b0001".U(4.W)
  val ALU_SLT    = "b0010".U(4.W)
  val ALU_SLTU   = "b0011".U(4.W)
  val ALU_XOR    = "b0100".U(4.W)
  val ALU_SRL    = "b0101".U(4.W)
  val ALU_SRA    = "b1101".U(4.W)
  val ALU_OR     = "b0110".U(4.W)
  val ALU_AND    = "b0111".U(4.W)

  val ALU_EQ     = "b1001".U(4.W)
  val ALU_NEQ    = "b1010".U(4.W)
  val ALU_GE     = "b1100".U(4.W)
  val ALU_GEU    = "b1011".U(4.W)
//   val ALU_COPY_A = "b1010".U(4.W)
//   val ALU_COPY_B = "b1011".U(4.W)
  val ALU_XXX    = "b1111".U(4.W)
}

class ALUIo extends Bundle{
  val aluIn1 = Input(UInt(32.W))
  val aluIn2 = Input(UInt(32.W))
  val aluOp = Input(UInt(4.W))
  val aluOut = Output(UInt(32.W))
//   val aluSum = Output(UInt(32.W))
}

import ALU._

class ALU extends Module{ 
    val io = IO(new ALUIo)
    val sum    = io.aluIn1 + Mux(io.aluOp(3) | io.aluOp(1), -io.aluIn2, io.aluIn2)
    val neq    = sum.orR
    val cmp    = Mux(io.aluIn1(31) === io.aluIn2(31), sum(31),   // aluOp(1) == 1 : unsigned
                 Mux(io.aluOp(0), io.aluIn2(31), io.aluIn1(31))) // A >= B : 0
    val shamt  = io.aluIn2(4,0).asUInt
    val shin   = Mux(io.aluOp(3), io.aluIn1, Reverse(io.aluIn1))
    val shiftr = (Cat(io.aluOp(0) && shin(31), shin).asSInt >> shamt)(31, 0)
    val shiftl = Reverse(shiftr)

    val out = MuxLookup(io.aluOp, 0.U,
        Array(
            ALU_ADD  -> sum,
            ALU_SUB  -> sum,
            ALU_SLL  -> shiftl,
            ALU_SLT  -> cmp,
            ALU_SLTU -> cmp,
            ALU_XOR  -> (io.aluIn1 ^ io.aluIn2),
            ALU_SRL  -> shiftr,
            ALU_SRA  -> shiftr,
            ALU_OR   -> (io.aluIn1 | io.aluIn2),
            ALU_AND  -> (io.aluIn1 & io.aluIn2), 

            ALU_EQ   -> !neq,
            ALU_NEQ  -> neq,
            ALU_GE   -> ~cmp,
            ALU_GEU  -> ~cmp
        ))

    io.aluOut := out
    // io.aluSum := sum
}
