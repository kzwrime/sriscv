package sriscv

import chisel3._
import chisel3.util._
import sriscv._
import sriscv.memory._

class CPUIO extends Bundle{
    val imem = Flipped(new IMemPortIO)
    val dmem = Flipped(new DMemPortIO)
}

class SCPU extends Module{
    val io = IO(new CPUIO())
    dontTouch(io)   // 避免出现奇奇怪怪的端口被优化掉

    val pc       = dontTouch(RegInit(0.U))
    
    val decode   = Module(new Decode())
    val regFile  = Module(new RegFile())
    val aluCtrl  = Module(new ALUCtrl())
    val alu      = Module(new ALU())
    val pcPlus4  = Module(new Adder())
    val brAdd    = Module(new Adder())
    val (cycleCount, _) = Counter(true.B, 1 << 30)

    io.imem.address := pc
    io.imem.valid   := true.B

    pcPlus4.io.inputx := pc
    pcPlus4.io.inputy := 4.U

    val instr = io.imem.instruction
    val opcode = instr(6, 0)
    regFile.io.regRAddr1 := instr(19, 15)
    regFile.io.regRAddr2 := instr(24, 20)
    regFile.io.regWAddr  := instr(11, 7)
    regFile.io.wen       := decode.io.regWrite

    decode.io.instr := instr
    val imm = decode.io.imm

    aluCtrl.io.aluCtrlOp := decode.io.aluCtrlOp
    aluCtrl.io.funct3    := instr(14, 12)
    aluCtrl.io.funct7    := instr(31, 25)

    alu.io.aluOp  := aluCtrl.io.aluOp
    alu.io.aluIn1 := Mux(decode.io.pcAdd, pc, regFile.io.regRData1)
    alu.io.aluIn2 := Mux(decode.io.aluSrc, imm, regFile.io.regRData2)

    val result = MuxLookup(decode.io.resultSel, 0.U, Array(
        0.U -> alu.io.aluOut,
        1.U -> imm,
        2.U -> pcPlus4.io.result
    ))

    io.dmem.address   := alu.io.aluOut
    io.dmem.writeData := regFile.io.regRData2
    io.dmem.memRead   := decode.io.memRead
    io.dmem.memWrite  := decode.io.memWrite
    io.dmem.maskMode  := instr(13,12)
    io.dmem.sext      := ~instr(14)
    when(io.dmem.memRead || io.dmem.memWrite) {
      io.dmem.valid := true.B
    } .otherwise {
      io.dmem.valid := false.B
    }

    regFile.io.regWData := Mux(decode.io.toReg === 1.U, io.dmem.readData, result)

    brAdd.io.inputx := pc
    brAdd.io.inputy := imm

    // NPC
    pc := MuxCase(pcPlus4.io.result, Array(
        (decode.io.branch && alu.io.aluOut(0)) -> brAdd.io.result,
        (decode.io.jump === 1.U) -> brAdd.io.result,
        (decode.io.jump === 2.U) -> (alu.io.aluOut & Cat(Fill(31, 1.U), 0.U))
    ))
}