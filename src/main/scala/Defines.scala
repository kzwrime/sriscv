package sriscv

import chisel3._
import chisel3.util._

object InstrOpDef{
    def LUI      = BitPat("b0110111")
    def AUIPC    = BitPat("b0010111")
    def JAL      = BitPat("b1101111")
    def JALR     = BitPat("b1100111")
    def BRANCH   = BitPat("b1100011")
    def LOAD     = BitPat("b0000011")
    def STORE    = BitPat("b0100011")
    def ALUI     = BitPat("b0010011")
    def ALUR     = BitPat("b0110011")
    def FENCE    = BitPat("b0001111")
    def SYSTEM   = BitPat("b1110011")
}