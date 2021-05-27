package sriscv

import chisel3._
import chisel3.util._

class RegFileIO extends Bundle{
    val regRAddr1 = Input(UInt(5.W))
    val regRAddr2 = Input(UInt(5.W))
    val regWAddr  = Input(UInt(5.W))
    val regWData  = Input(UInt(32.W))
    val wen       = Input(Bool())

    val regRData1 = Output(UInt(32.W))
    val regRData2 = Output(UInt(32.W))
}

class RegFile extends Module{
    val io = IO(new RegFileIO)
    val regs = RegInit(VecInit(Seq.fill(32 - 1)(0.U(32.W))))

    io.regRData1 := Mux(io.regRAddr1.orR(), regs(io.regRAddr1), 0.U)
    io.regRData2 := Mux(io.regRAddr2.orR(), regs(io.regRAddr2), 0.U)
    when(io.wen){
        when(io.regWAddr.orR){
            regs(io.regWAddr) := io.regWData
        }
    }

    // val RData1 = Mux(io.regRAddr1.orR(), regs(io.regRAddr1), 0.U)
    // val RData2 = Mux(io.regRAddr2.orR(), regs(io.regRAddr2), 0.U)

    // when(io.wen){
    //     when(io.regWAddr.orR()){
    //         regs(io.regWAddr) := io.regWData
    //     }
    //     when(io.regRAddr1 === io.regWAddr){
    //         io.regRData1 := io.regWData
    //         io.regRData2 := RData2
    //     }.elsewhen(io.regRAddr2 === io.regWAddr){
    //         io.regRData2 := io.regWData
    //         io.regRData1 := RData1
    //     }.otherwise{
    //         io.regRData1 := RData1
    //         io.regRData2 := RData2
    //     }
    // }.otherwise{
    //     io.regRData1 := RData1
    //     io.regRData2 := RData2
    // }
}