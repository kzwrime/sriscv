package sriscv

import chisel3._
import chisel3.util._

class Adder extends Module {
  val io = IO(new Bundle{
    val inputx    = Input(UInt(32.W))
    val inputy    = Input(UInt(32.W))

    val result    = Output(UInt(32.W))
  })

  io.result := io.inputx + io.inputy
}
