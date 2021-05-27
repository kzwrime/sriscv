package sriscv

import chisel3._

import sriscv.memory._

class Top extends Module{
    val io = IO(new Bundle{
        val nothing = Output(Bool())
    })
    io.nothing := DontCare
    val cpu = Module(new SCPU)
    val IMEM = Module(new IMem)
    val DMEM = Module(new DMem)
    cpu.io.imem <> IMEM.io
    cpu.io.dmem <> DMEM.io
}