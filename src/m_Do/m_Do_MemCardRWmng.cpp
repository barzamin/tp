/* m_Do_MemCardRWmng.cpp autogenerated by split.py v0.4 at 2021-01-31 21:17:23.731222 */

#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"

// additional symbols needed for m_Do_MemCardRWmng.cpp
// autogenerated by split.py v0.4 at 2021-01-31 21:17:23.731252
extern "C" {
void CARDGetSerialNo(void);
void CARDGetStatus(void);
void CARDRead(void);
void CARDSetStatus(void);
void CARDWrite(void);
void _restgpr_20(void);
void _restgpr_28(void);
void _savegpr_20(void);
void _savegpr_28(void);
void snprintf(void);
void mDoMemCdRWm_BuildHeader(void);
void mDoMemCdRWm_CalcCheckSum(void);
void mDoMemCdRWm_CalcCheckSumGameData(void);
void mDoMemCdRWm_CheckCardStat(void);
void mDoMemCdRWm_Restore(void);
void mDoMemCdRWm_SetCardStat(void);
void mDoMemCdRWm_SetCheckSumGameData(void);
void mDoMemCdRWm_Store(void);
void mDoMemCdRWm_TestCheckSumGameData(void);
void memcpy(void);
void memset(void);
}

// additional symbols needed for m_Do_MemCardRWmng.cpp
// autogenerated by split.py v0.4 at 2021-01-31 21:17:23.731257
extern u8 lbl_80374408;
extern u8 lbl_803ECF40;

extern "C" {
// mDoMemCdRWm_Store__FP12CARDFileInfoPvUl
// mDoMemCdRWm_Store(CARDFileInfo*, void*, u32)
asm void mDoMemCdRWm_Store(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_80017498.s"
}

// mDoMemCdRWm_Restore__FP12CARDFileInfoPvUl
// mDoMemCdRWm_Restore(CARDFileInfo*, void*, u32)
asm void mDoMemCdRWm_Restore(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_8001769C.s"
}

// mDoMemCdRWm_BuildHeader__FP22mDoMemCdRWm_HeaderData
// mDoMemCdRWm_BuildHeader(mDoMemCdRWm_HeaderData*)
asm void mDoMemCdRWm_BuildHeader(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_8001787C.s"
}

// mDoMemCdRWm_SetCardStat__FP12CARDFileInfo
// mDoMemCdRWm_SetCardStat(CARDFileInfo*)
asm void mDoMemCdRWm_SetCardStat(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_800179E4.s"
}

// mDoMemCdRWm_CheckCardStat__FP12CARDFileInfo
// mDoMemCdRWm_CheckCardStat(CARDFileInfo*)
asm void mDoMemCdRWm_CheckCardStat(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_80017B4C.s"
}

// mDoMemCdRWm_CalcCheckSum__FPvUl
// mDoMemCdRWm_CalcCheckSum(void*, u32)
asm void mDoMemCdRWm_CalcCheckSum(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_80017C74.s"
}

// mDoMemCdRWm_CalcCheckSumGameData__FPvUl
// mDoMemCdRWm_CalcCheckSumGameData(void*, u32)
asm void mDoMemCdRWm_CalcCheckSumGameData(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_80017CB4.s"
}

// mDoMemCdRWm_TestCheckSumGameData__FPv
// mDoMemCdRWm_TestCheckSumGameData(void*)
asm void mDoMemCdRWm_TestCheckSumGameData(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_80017CEC.s"
}

// mDoMemCdRWm_SetCheckSumGameData__FPUcUc
// mDoMemCdRWm_SetCheckSumGameData(u8*, u8)
asm void mDoMemCdRWm_SetCheckSumGameData(void) {
    nofralloc
#include "m_Do/m_Do_MemCardRWmng/asm/func_80017D38.s"
}
};
