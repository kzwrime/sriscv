package sriscv

import chisel3._
import chisel3.util._

import ALU._

object BranchFunct3{
    val BEQ  = "b000".U
    val BNE  = "b001".U
    val BLT  = "b100".U
    val BGE  = "b101".U
    val BLTU = "b110".U
    val BGEU = "b111".U
}

import BranchFunct3._

class ALUCtrlIo extends Bundle{
    val funct3    = Input(UInt(3.W))
    val funct7    = Input(UInt(7.W))
    val aluCtrlOp = Input(UInt(2.W))
    val aluOp     = Output(UInt(4.W))

    val aluIn1 = Output(UInt(32.W))
    val aluIn2 = Output(UInt(32.W))

}

class ALUCtrl extends Module{
    val io = IO(new ALUCtrlIo)
    io.aluOp := MuxLookup(io.aluCtrlOp, "b1111".U,
        Array(
            "b00".U -> Cat(0.U, ALU_ADD),
            "b10".U -> Cat(io.funct7(5), io.funct3),
            "b01".U -> MuxLookup(io.funct3, "b1111".U, 
                Array(
                    BEQ  -> ALU_EQ,
                    BNE  -> ALU_NEQ,
                    BLT  -> ALU_SLT,
                    BGE  -> ALU_GE,
                    BLTU -> ALU_SLTU,
                    BGEU -> ALU_GEU
                ))
        ))
}