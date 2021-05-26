package sriscv.memory

import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum
import chisel3.util.experimental.loadMemoryFromFile

object MemoryOperation extends ChiselEnum {
  val Read, Write, ReadWrite = Value
}
import MemoryOperation._

// A Bundle used for representing a memory access by instruction memory or data memory.
class Request extends Bundle {
  val address      = UInt(32.W)
  val writedata    = UInt(32.W)
  val operation    = MemoryOperation()
}

// A bundle used for representing the memory's response to a memory read operation, which
// is sent back to the issuing memory port.
class Response extends Bundle {
  // The 4-byte-wide block of data being returned by memory
  val data         = UInt(32.W)
}

/**
 * The generic interface for communication between the IMem/DMemPort modules and the backing memory.
 * This interface corresponds with the port <=> memory interface between the
 * memory port and the backing memory.
 *
 * Input:  request, the ready/valid interface for a MemPort module to issue Requests to. Memory
 *         will only accept a request when both request.valid (the MemPort is supplying valid data)
 *         and request.ready (the memory is idling for a request) are high.
 *
 * Output: response, the valid interface for the data outputted by memory if it was requested to read.
 *         the bits in response.bits should only be treated as valid data when response.valid is high.
 */
class MemPortBusIO extends Bundle {
  val request  = Flipped(Decoupled (new Request))
  val response = Valid (new Response)
}

class MemPortIO extends Bundle {
  // Pipeline <=> Port
  val address  = Input(UInt(32.W))
  val valid    = Input(Bool())
  val good     = Output(Bool())
}

class IMemPortIO extends MemPortIO {
  val instruction = Output(UInt(32.W))
  val ready       = Output(Bool())
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

class ICombinMemPort extends BaseIMemPort {
  // When the pipeline is supplying a high valid signal
  when (io.pipeline.valid) {
    val request = Wire(new Request)
    request.address   := io.pipeline.address
    request.operation := Read
    request.writedata := 0.U

    io.bus.request.bits  := request
    io.bus.request.valid := true.B
  } .otherwise {
    io.bus.request.valid := false.B
  }

  // Combinational memory is always ready
  io.pipeline.ready := true.B

  // When the memory is outputting a valid instruction
  io.pipeline.good := true.B
  io.pipeline.instruction := io.bus.response.bits.data
}

abstract class BaseIMemPort extends Module {
  val io = IO (new Bundle {
    val pipeline = new IMemPortIO
    val bus  = Flipped (new MemPortBusIO)
  })

  io.pipeline <> 0.U.asTypeOf (new IMemPortIO)
  // Intentional DontCare:
  // The connections between the ports and the backing memory, along with the
  // ports internally assigning values to the, means that these DontCares
  // should be completely 'overwritten' when the CPU is elaborated
  io.bus      <> DontCare
}



