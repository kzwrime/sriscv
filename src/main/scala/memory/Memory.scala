package sriscv.memory

import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum
import chisel3.util.experimental.loadMemoryFromFile

class MemPortIO extends Bundle {
  // Pipeline <=> Port
  val address  = Input(UInt(32.W))
  // val valid    = Input(Bool())
  // val good     = Output(Bool())
}

class IMemPortIO extends MemPortIO {
  val instruction = Output(UInt(32.W))
  // val ready       = Output(Bool())
}

class DMemPortIO extends MemPortIO {
  // Pipeline <=> Port
  val writeData = Input(UInt(32.W))
  val memRead   = Input(Bool())
  val memWrite  = Input(Bool())
  val maskMode  = Input(UInt(2.W))
  val sext      = Input(Bool())

  val readData  = Output(UInt(32.W))
}

class IMem extends Module{
  val io = IO(new IMemPortIO)
  val I_MEM = Mem(256, UInt(32.W))  // Mem 允许异步读，不会使用 SRAM
  io.instruction := I_MEM.read(io.address(9, 2))
}

class DMem extends Module{
  val io = IO(new DMemPortIO)
  val D_MEM = Mem(256, Vec(4, UInt(8.W)))
  val rdwrPort = D_MEM(io.address(9, 2))
  io.readData := DontCare
  when(io.memRead){
    io.readData := MuxLookup(io.maskMode, 0.U(32.W), Array(
      "b00".U -> MuxLookup(io.address(1, 0), 0.U(32.W), Array(
        0.U -> Cat(Fill(24, io.sext & rdwrPort(0)(7)), rdwrPort(0)),
        1.U -> Cat(Fill(24, io.sext & rdwrPort(1)(7)), rdwrPort(1)),
        2.U -> Cat(Fill(24, io.sext & rdwrPort(2)(7)), rdwrPort(2)),
        3.U -> Cat(Fill(24, io.sext & rdwrPort(3)(7)), rdwrPort(3)),
      )),
      "b01".U -> MuxLookup(io.address(1), 0.U(32.W), Array(
        0.U -> Cat(Fill(16, io.sext & rdwrPort(1)(7)), rdwrPort(1), rdwrPort(0)),
        1.U -> Cat(Fill(16, io.sext & rdwrPort(3)(7)), rdwrPort(3), rdwrPort(2))
      )),
      "b10".U -> Cat(rdwrPort(3), rdwrPort(2), rdwrPort(1), rdwrPort(0))
    ))
  }

}