#include "JSystem/JKernel/JKRAramStream/JKRAramStream.h"
#include "global.h"

/* fucky
   wenis
   */

INCLUDE_ASM(void JKRAramStream::create(long), "JSystem/JKernel/JKRAramStream", "func_802D3B48");

INCLUDE_ASM(JKRAramStream::JKRAramStream(long), "JSystem/JKernel/JKRAramStream", "func_802D3BB8");

INCLUDE_ASM(JKRAramStream::~JKRAramStream(), "JSystem/JKernel/JKRAramStream", "func_802D3C08");

INCLUDE_ASM(void* JKRAramStream::run(void), "JSystem/JKernel/JKRAramStream", "func_802D3C68");

INCLUDE_ASM(void JKRAramStream::readFromAram(void), "JSystem/JKernel/JKRAramStream", "func_802D3CD8");

INCLUDE_ASM(void JKRAramStream::writeToAram(JKRAramStreamCommand*), "JSystem/JKernel/JKRAramStream", "func_802D3CE0");

INCLUDE_ASM(void JKRAramStream::write_StreamToAram_Async(JSUFileInputStream*, u32, u32, u32, u32*), "JSystem/JKernel/JKRAramStream", "func_802D3ED0");

INCLUDE_ASM(void JKRAramStream::sync(JKRAramStreamCommand*, int), "JSystem/JKernel/JKRAramStream", "func_802D3FA0");

INCLUDE_ASM(void JKRAramStream::setTransBuffer(u8*, u32, JKRHeap*), "JSystem/JKernel/JKRAramStream", "func_802D4034");

INCLUDE_ASM(JKRAramStreamCommand::JKRAramStreamCommand(void), "JSystem/JKernel/JKRAramStream", "func_802D4088");

INCLUDE_ASM(void JSURandomInputStream::getAvailable(void) const, "JSystem/JKernel/JKRAramStream", "func_802D4094");
