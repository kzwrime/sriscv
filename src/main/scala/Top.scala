package sriscv

import chisel3._

class Top extends Module{
    val io = IO(new Bundle{
        val nothing = Output(Bool())
    })
    io.nothing := DontCare
    val cpu = Module(new SCPU)

}