/* d_attention.cpp autogenerated by split.py v0.3 at 2020-12-27 23:23:47.875657 */

#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "d/d_a/d_a_alink/d_a_alink.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "f/f_pc/f_pc_searcher.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "global.h"

extern "C" {
// padLockButton__25@unnamed@d_attention_cpp@Fl
// @unnamed@d_attention_cpp@::padLockButton(long)
asm void _unnamed_d_attention_cpp__NS_padLockButton(void) {
    nofralloc
#include "d/d_attention/asm/func_80070018.s"
}

// __ct__11dAttParam_cFl
// dAttParam_c::dAttParam_c(long)
asm void dAttParam_c(void) {
    nofralloc
#include "d/d_attention/asm/func_80070038.s"
}

// __dt__11dAttParam_cFv
// dAttParam_c::~dAttParam_c(void)
asm void dAttParam_c_NS_dtor(void) {
    nofralloc
#include "d/d_attention/asm/func_80070110.s"
}

// __ct__15dAttDrawParam_cFv
// dAttDrawParam_c::dAttDrawParam_c(void)
asm void dAttDrawParam_c(void) {
    nofralloc
#include "d/d_attention/asm/func_80070158.s"
}

// execute__19dAttDraw_CallBack_cFUsP16J3DTransformInfo
// dAttDraw_CallBack_c::execute(unsigned short, J3DTransformInfo*)
asm void func_80070178(void) {
    nofralloc
#include "d/d_attention/asm/func_80070178.s"
}

// __ct__12dAttention_cFP10fopAc_ac_cUl
// dAttention_c::dAttention_c(fopAc_ac_c*, unsigned long)
asm void dAttention_c(void) {
    nofralloc
#include "d/d_attention/asm/func_80070198.s"
}

// __dt__12dAttention_cFv
// dAttention_c::~dAttention_c(void)
asm void dAttention_c_NS_dtor(void) {
    nofralloc
#include "d/d_attention/asm/func_80070774.s"
}

// GetLockonList__12dAttention_cFl
// dAttention_c::GetLockonList(long)
asm void dAttention_c_NS_GetLockonList(void) {
    nofralloc
#include "d/d_attention/asm/func_80070844.s"
}

// getActionBtnB__12dAttention_cFv
// dAttention_c::getActionBtnB(void)
asm void dAttention_c_NS_getActionBtnB(void) {
    nofralloc
#include "d/d_attention/asm/func_80070880.s"
}

// getActionBtnXY__12dAttention_cFv
// dAttention_c::getActionBtnXY(void)
asm void dAttention_c_NS_getActionBtnXY(void) {
    nofralloc
#include "d/d_attention/asm/func_80070974.s"
}

// chkAttMask__12dAttention_cFUlUl
// dAttention_c::chkAttMask(unsigned long, unsigned long)
asm void dAttention_c_NS_chkAttMask(void) {
    nofralloc
#include "d/d_attention/asm/func_80070A70.s"
}

// check_event_condition__FUlUs
// check_event_condition(unsigned long, unsigned short)
asm void check_event_condition(void) {
    nofralloc
#include "d/d_attention/asm/func_80070AC0.s"
}

// check_flontofplayer__FUlss
// check_flontofplayer(unsigned long, short, short)
asm void check_flontofplayer(void) {
    nofralloc
#include "d/d_attention/asm/func_80070B2C.s"
}

// distace_weight__Ffsf
// distace_weight(float, short, float)
asm void distace_weight(void) {
    nofralloc
#include "d/d_attention/asm/func_80070BF4.s"
}

// distace_angle_adjust__Ffsf
// distace_angle_adjust(float, short, float)
asm void distace_angle_adjust(void) {
    nofralloc
#include "d/d_attention/asm/func_80070C40.s"
}

// check_distace__FP4cXyzsP4cXyzffff
// check_distace(cXyz*, short, cXyz*, float, float, float, float)
asm void check_distace(void) {
    nofralloc
#include "d/d_attention/asm/func_80070CA0.s"
}

// calcWeight__12dAttention_cFiP10fopAc_ac_cfssPUl
// dAttention_c::calcWeight(int, fopAc_ac_c*, float, short, short, unsigned long*)
asm void dAttention_c_NS_calcWeight(void) {
    nofralloc
#include "d/d_attention/asm/func_80070E90.s"
}

// setList__12dAttention_cFiP10fopAc_ac_cff7cSAngleUl
// dAttention_c::setList(int, fopAc_ac_c*, float, float, cSAngle, unsigned long)
asm void dAttention_c_NS_setList(void) {
    nofralloc
#include "d/d_attention/asm/func_800710C0.s"
}

// initList__12dAttention_cFUl
// dAttention_c::initList(unsigned long)
asm void dAttention_c_NS_initList(void) {
    nofralloc
#include "d/d_attention/asm/func_80071240.s"
}

// select_attention__FP10fopAc_ac_cPv
// select_attention(fopAc_ac_c*, void*)
asm void select_attention(void) {
    nofralloc
#include "d/d_attention/asm/func_8007138C.s"
}

// makeList__12dAttention_cFv
// dAttention_c::makeList(void)
asm void dAttention_c_NS_makeList(void) {
    nofralloc
#include "d/d_attention/asm/func_800713CC.s"
}

// setOwnerAttentionPos__12dAttention_cFv
// dAttention_c::setOwnerAttentionPos(void)
asm void dAttention_c_NS_setOwnerAttentionPos(void) {
    nofralloc
#include "d/d_attention/asm/func_80071424.s"
}

// SelectAttention__12dAttention_cFP10fopAc_ac_c
// dAttention_c::SelectAttention(fopAc_ac_c*)
asm void dAttention_c_NS_SelectAttention(void) {
    nofralloc
#include "d/d_attention/asm/func_80071488.s"
}

// __dt__7cSGlobeFv
// cSGlobe::~cSGlobe(void)
asm void cSGlobe_NS_dtor(void) {
    nofralloc
#include "d/d_attention/asm/func_8007167C.s"
}

// sortList__12dAttention_cFv
// dAttention_c::sortList(void)
asm void dAttention_c_NS_sortList(void) {
    nofralloc
#include "d/d_attention/asm/func_800716B8.s"
}

// stockAttention__12dAttention_cFv
// dAttention_c::stockAttention(void)
asm void dAttention_c_NS_stockAttention(void) {
    nofralloc
#include "d/d_attention/asm/func_800718A4.s"
}

// nextAttention__12dAttention_cFv
// dAttention_c::nextAttention(void)
asm void dAttention_c_NS_nextAttention(void) {
    nofralloc
#include "d/d_attention/asm/func_80071960.s"
}

// freeAttention__12dAttention_cFv
// dAttention_c::freeAttention(void)
asm void dAttention_c_NS_freeAttention(void) {
    nofralloc
#include "d/d_attention/asm/func_80071A68.s"
}

// chaseAttention__12dAttention_cFv
// dAttention_c::chaseAttention(void)
asm void dAttention_c_NS_chaseAttention(void) {
    nofralloc
#include "d/d_attention/asm/func_80071A98.s"
}

// EnemyDistance__12dAttention_cFP10fopAc_ac_c
// dAttention_c::EnemyDistance(fopAc_ac_c*)
asm void dAttention_c_NS_EnemyDistance(void) {
    nofralloc
#include "d/d_attention/asm/func_80071CC0.s"
}

// sound_attention__FP10fopAc_ac_cPv
// sound_attention(fopAc_ac_c*, void*)
asm void sound_attention(void) {
    nofralloc
#include "d/d_attention/asm/func_80071D6C.s"
}

// runSoundProc__12dAttention_cFv
// dAttention_c::runSoundProc(void)
asm void dAttention_c_NS_runSoundProc(void) {
    nofralloc
#include "d/d_attention/asm/func_80071DEC.s"
}

// runDrawProc__12dAttention_cFv
// dAttention_c::runDrawProc(void)
asm void dAttention_c_NS_runDrawProc(void) {
    nofralloc
#include "d/d_attention/asm/func_80071E84.s"
}

// runDebugDisp__12dAttention_cFv
// dAttention_c::runDebugDisp(void)
asm void dAttention_c_NS_runDebugDisp(void) {
    nofralloc
#include "d/d_attention/asm/func_800720F4.s"
}

// checkButton__12dAttention_cFv
// dAttention_c::checkButton(void)
asm void dAttention_c_NS_checkButton(void) {
    nofralloc
#include "d/d_attention/asm/func_800720F8.s"
}

// triggerProc__12dAttention_cFv
// dAttention_c::triggerProc(void)
asm void dAttention_c_NS_triggerProc(void) {
    nofralloc
#include "d/d_attention/asm/func_800722A0.s"
}

// lostCheck__12dAttention_cFv
// dAttention_c::lostCheck(void)
asm void dAttention_c_NS_lostCheck(void) {
    nofralloc
#include "d/d_attention/asm/func_800722EC.s"
}

// judgementStatus4Hold__12dAttention_cFv
// dAttention_c::judgementStatus4Hold(void)
asm void dAttention_c_NS_judgementStatus4Hold(void) {
    nofralloc
#include "d/d_attention/asm/func_80072344.s"
}

// judgementStatus4Switch__12dAttention_cFv
// dAttention_c::judgementStatus4Switch(void)
asm void dAttention_c_NS_judgementStatus4Switch(void) {
    nofralloc
#include "d/d_attention/asm/func_800725F0.s"
}

// Run__12dAttention_cFv
// dAttention_c::Run(void)
asm void dAttention_c_NS_Run(void) {
    nofralloc
#include "d/d_attention/asm/func_80072924.s"
}

// Draw__12dAttention_cFv
// dAttention_c::Draw(void)
asm void dAttention_c_NS_Draw(void) {
    nofralloc
#include "d/d_attention/asm/func_80072BD4.s"
}

// lockSoundStart__12dAttention_cFUl
// dAttention_c::lockSoundStart(unsigned long)
asm void dAttention_c_NS_lockSoundStart(void) {
    nofralloc
#include "d/d_attention/asm/func_80072D80.s"
}

// setAnm__10dAttDraw_cFUcf
// dAttDraw_c::setAnm(unsigned char, float)
asm void dAttDraw_c_NS_setAnm(void) {
    nofralloc
#include "d/d_attention/asm/func_80072DD8.s"
}

// setAlphaAnm__10dAttDraw_cFUcUc
// dAttDraw_c::setAlphaAnm(unsigned char, unsigned char)
asm void dAttDraw_c_NS_setAlphaAnm(void) {
    nofralloc
#include "d/d_attention/asm/func_80072FE8.s"
}

// alphaAnm__10dAttDraw_cFv
// dAttDraw_c::alphaAnm(void)
asm void dAttDraw_c_NS_alphaAnm(void) {
    nofralloc
#include "d/d_attention/asm/func_80073004.s"
}

// setTevKColor__11J3DTevBlockFUlPC10J3DGXColor
// J3DTevBlock::setTevKColor(unsigned long, const J3DGXColor*)
asm void func_800732AC(void) {
    nofralloc
#include "d/d_attention/asm/func_800732AC.s"
}

// draw__10dAttDraw_cFR4cXyzPA4_f
asm void dAttDraw_c_NS_draw(void) {
    nofralloc
#include "d/d_attention/asm/func_800732B0.s"
}

// LockonTarget__12dAttention_cFl
// dAttention_c::LockonTarget(long)
asm void dAttention_c_NS_LockonTarget(void) {
    nofralloc
#include "d/d_attention/asm/func_8007353C.s"
}

// LockonReleaseDistanse__12dAttention_cFv
// dAttention_c::LockonReleaseDistanse(void)
asm void dAttention_c_NS_LockonReleaseDistanse(void) {
    nofralloc
#include "d/d_attention/asm/func_800735DC.s"
}

// LockonTargetPId__12dAttention_cFl
// dAttention_c::LockonTargetPId(long)
asm void dAttention_c_NS_LockonTargetPId(void) {
    nofralloc
#include "d/d_attention/asm/func_800736CC.s"
}

// ActionTarget__12dAttention_cFl
// dAttention_c::ActionTarget(long)
asm void dAttention_c_NS_ActionTarget(void) {
    nofralloc
#include "d/d_attention/asm/func_80073734.s"
}

// CheckObjectTarget__12dAttention_cFl
// dAttention_c::CheckObjectTarget(long)
asm void dAttention_c_NS_CheckObjectTarget(void) {
    nofralloc
#include "d/d_attention/asm/func_8007378C.s"
}

// LockonTruth__12dAttention_cFv
// dAttention_c::LockonTruth(void)
asm void dAttention_c_NS_LockonTruth(void) {
    nofralloc
#include "d/d_attention/asm/func_800737E4.s"
}

// checkDistance__12dAttention_cFP4cXyzsP4cXyzffff
// dAttention_c::checkDistance(cXyz*, short, cXyz*, float, float, float, float)
asm void dAttention_c_NS_checkDistance(void) {
    nofralloc
#include "d/d_attention/asm/func_80073838.s"
}

// getActor__10dAttList_cFv
// dAttList_c::getActor(void)
asm void dAttList_c_NS_getActor(void) {
    nofralloc
#include "d/d_attention/asm/func_80073864.s"
}

// setActor__10dAttList_cFP10fopAc_ac_c
// dAttList_c::setActor(fopAc_ac_c*)
asm void dAttList_c_NS_setActor(void) {
    nofralloc
#include "d/d_attention/asm/func_80073898.s"
}

// getPId__10dAttHint_cFPv
// dAttHint_c::getPId(void*)
asm void dAttHint_c_NS_getPId(void) {
    nofralloc
#include "d/d_attention/asm/func_800738B4.s"
}

// convPId__10dAttHint_cFUi
// dAttHint_c::convPId(unsigned int)
asm void dAttHint_c_NS_convPId(void) {
    nofralloc
#include "d/d_attention/asm/func_800738CC.s"
}

// request__10dAttHint_cFP10fopAc_ac_ci
// dAttHint_c::request(fopAc_ac_c*, int)
asm void func_800738FC(void) {
    nofralloc
#include "d/d_attention/asm/func_800738FC.s"
}

// init__10dAttHint_cFv
// dAttHint_c::init(void)
asm void dAttHint_c_NS_init(void) {
    nofralloc
#include "d/d_attention/asm/func_80073958.s"
}

// proc__10dAttHint_cFv
// dAttHint_c::proc(void)
asm void dAttHint_c_NS_proc(void) {
    nofralloc
#include "d/d_attention/asm/func_80073970.s"
}

// convPId__11dAttCatch_cFUi
// dAttCatch_c::convPId(unsigned int)
asm void dAttCatch_c_NS_convPId(void) {
    nofralloc
#include "d/d_attention/asm/func_8007398C.s"
}

// init__11dAttCatch_cFv
// dAttCatch_c::init(void)
asm void dAttCatch_c_NS_init(void) {
    nofralloc
#include "d/d_attention/asm/func_800739BC.s"
}

// proc__11dAttCatch_cFv
// dAttCatch_c::proc(void)
asm void dAttCatch_c_NS_proc(void) {
    nofralloc
#include "d/d_attention/asm/func_800739DC.s"
}

// request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
// dAttCatch_c::request(fopAc_ac_c*, unsigned char, float, float, float, short, int)
asm void func_80073A08(void) {
    nofralloc
#include "d/d_attention/asm/func_80073A08.s"
}

// convPId__10dAttLook_cFUi
// dAttLook_c::convPId(unsigned int)
asm void dAttLook_c_NS_convPId(void) {
    nofralloc
#include "d/d_attention/asm/func_80073CA4.s"
}

// init__10dAttLook_cFv
// dAttLook_c::init(void)
asm void dAttLook_c_NS_init(void) {
    nofralloc
#include "d/d_attention/asm/func_80073CD4.s"
}

// proc__10dAttLook_cFv
// dAttLook_c::proc(void)
asm void dAttLook_c_NS_proc(void) {
    nofralloc
#include "d/d_attention/asm/func_80073CEC.s"
}

// request__10dAttLook_cFP10fopAc_ac_cfffsi
// dAttLook_c::request(fopAc_ac_c*, float, float, float, short, int)
asm void func_80073D08(void) {
    nofralloc
#include "d/d_attention/asm/func_80073D08.s"
}

// __dt__15dAttDrawParam_cFv
// dAttDrawParam_c::~dAttDrawParam_c(void)
asm void dAttDrawParam_c_NS_dtor(void) {
    nofralloc
#include "d/d_attention/asm/func_80073FC4.s"
}

// __sinit_d_attention_cpp
asm void func_8007400C(void) {
    nofralloc
#include "d/d_attention/asm/func_8007400C.s"
}
};
