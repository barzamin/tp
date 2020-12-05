extern "C" { 
    void J2DScreen_NS_draw(void);
    void PSMTXCopy(void);
    void PSMTXConcat(void);
    void PSMTXScale(void);
    void screenSet__12dFile_info_cFv(void);
    void dFile_info_c_NS_screenSet(void);
    void mDoExt_removeMesgFont(void);
    void func_80362210(void);
    void JKRAramHeap_NS_getTotalFreeSize(void);
    void JKRAramHeap_NS_getFreeSize(void);
    void heapDisplay__9HeapCheckCFv(void);
    void func_803621C4(void);
    void init__20dSv_player_collect_cFv(void);
    void dComIfGp_setSelectItem(int);
    void getUsedCount__9HeapCheckCFv(void);
    void isEventBit__11dSv_event_cCFUs(void);
    void dComIfGs_setMixItemIndex(void);
    void dComIfGs_setSelectItemIndex(void);
    void dComIfGs_getMixItemIndex(void);
    void dComIfGs_getBottleMax(void);
    char* strcpy(char*,const char*);
    int strcmp(char*,char*);
    void setBombNum__21dSv_player_item_max_cFUcUc(void);
    void func_80362224(void);
    void func_803621D8(void);
    void func_803621CC(void);
    void func_80362218(void);
    void _restgpr_26(void);
    void _savegpr_26(void);
    void _restgpr_29(void);
    void _savegpr_29(void);
    void _restgpr_28(void);
    void _savegpr_28(void);
    void _restgpr_27(void);
    void _savegpr_27(void);
    void _savegpr_26(void);
    void _restgpr_26(void);
    void JKRAramHeap_NS_dump(void);
    void dRes_control_c_NS_dump(void);
    void JUTConsole_NS_getLineOffset(void);
    void JUTConsole_NS_dumpToTerminal(void);
    void JUTConsole_NS_scroll(void);
    void JUTConsole_NS_clear(void);
    void JUTReport_X1_(void);
    void JUTAssertion_NS_setMessageCount(void);
    void DynamicModuleControlBase_NS_dump(void);
    unsigned int getSelectItemIndex__21dSv_player_status_a_cCFi(int);
    void setLineUpItem__17dSv_player_item_cFv(void);
    void dMeter2Info_c_NS_setHotSpringTimer(void);
    void setItem__17dSv_player_item_cFiUc(void);
    void dSv_item_rename__FUc(void);
    void setBottleItemIn__17dSv_player_item_cFUcUc(void);
    void getItem__17dSv_player_item_cCFib(void);
    void setEquipBottleItemIn__17dSv_player_item_cFUcUc(u8,u8);
    void isFirstBit__21dSv_player_get_item_cCFUc(void);
    void setBombNum__24dSv_player_item_record_cFUcUc(void);
    void getBombNum__21dSv_player_item_max_cCFUc(void);
    void setItem__17dSv_player_item_cFiUc(void);
    void dMeter2Info_c_NS_getString(void);
    void Z2AudioMgr_NS_setOutputMode(u32,unsigned long);    
    void dComIfG_play_c_NS_getNowVibration(void);
    void setInitEventBit(void);
    void daObjCarry_c_NS_clrSaveFlag(void);
    void daObjCarry_c_NS_setSaveFlag(void);
    void init__14dSv_MiniGame_cFv(void);
    void init__11dSv_event_cFv(void);
    void init__13dSv_memory2_cFv(void);
    void init__12dSv_memory_cFv(void);
    void init__12dSv_player_cFv(void);
    void init__10dSv_info_cFvZone(void);
    void init__10dSv_zone_cFi(void);
    void onOneSwitch__13dSv_zoneBit_cFi(void);
    void onSwitch__13dSv_zoneBit_cFi(void);
    int dStage_roomControl_c_NS_getZoneNo(int,int);
    void onSwitch__12dSv_danBit_cFi(void);
    void onSwitch__12dSv_memBit_cFi(void);
    void revOneSwitch__13dSv_zoneBit_cFi(void);
    void revSwitch__13dSv_zoneBit_cFi(void);
    void revSwitch__12dSv_danBit_cFi(void);
    void revSwitch__12dSv_memBit_cFi(void);
    void isOneSwitch__13dSv_zoneBit_cCFi(void);
    void isSwitch__13dSv_zoneBit_cCFi(void);
    void isSwitch__12dSv_danBit_cCFi(void);
    void isSwitch__12dSv_memBit_cCFi(void);
    void isOneItem__13dSv_zoneBit_cCFi(void);
    void isItem__13dSv_zoneBit_cCFi(void);
    void isItem__12dSv_memBit_cCFi(void);
    void isItem__12dSv_danBit_cCFi(void);
    void off__15dSv_zoneActor_cFi(void);
    void is__15dSv_zoneActor_cCFi(void);
    void func_8036220C(void);
    void onEventBit__11dSv_event_cFUs(void);
    void func_8036687C(void);
    void func_80003540(void);
    void func_80362324(void);
    void func_8036221C(void);
    void func_8036221C(void);
    void countUsed__FP10JKRExpHeap(void);
    void JUTReport(void);
    void func_803621D0(void);
    void offEventBit__11dSv_event_cFUs(void);
    void func_803621C0(void);
    void dMeter2Info_c_NS_setSaveStageName(void);
    void dComIfG_play_c_NS_setNowVibration(void);
    void getVibration__19dSv_player_config_cFv(void);
    void dComIfGs_setKeyNum(void);
    void getSound__19dSv_player_config_cFv(void);
    void setSound__19dSv_player_config_cFUc(void);
    void getTotalUsedSize__10JKRExpHeapCFv(void);
    void HeapCheck_NS_getUsedCount(void);
    void CheckHeap1__9HeapCheckFv(void);
    void JUTException_NS_panic_f(const char* filename, int line, const char* format, ...);
    void Debug_console__FUl(void);
    void debugDisplay__Fv(void);
    void CheckHeap__FUl(void);
    void debug__Fv(void);
    void mDoAud_Execute(void);
    void fapGm_Execute(void);
    void mDoCPd_c_NS_read(void);
    void mDoMemCd_Ctrl_c_NS_update(void);
    void JKRSolidHeap_NS_create(void);
    void cDyl_InitAsync(void);
    void fopAcM_initManager(void);
    void fapGm_Create(void);
    void mDoDvdThd_callback_c_NS_create(void);
    void mDoExt_getCommandHeap(void);
    void mDoExt_getHostIOHeap(void);
    void mDoExt_getJ2dHeap(void);
    void mDoExt_getArchiveHeap(void);
    void mDoExt_getGameHeap(void);
    void mDoExt_getZeldaHeap(void);
    void mDoCPd_c_NS_create(void);
    void mDoGph_Create(void);
    void mDoMch_Create(void);
    void init__10dSv_save_cFv(void);
    void func_80361D60(void);
    void dComIfG_inf_c_NS_ct(void);
    void version_check__Fv(void);
    void J2DTextBox_NS_getStringPtr(void);
    void J2DTextBox_NS_setString_X1_(void);
    void CPaneMgrAlpha_X1_(void);
    void mDoExt_getMesgFont(void);
    void J2DScreen_NS_setPriority(void);
    void __ct__9J2DScreenFv(void);
    void dFile_info_c_NS_setPlayTime(void);
    void dFile_info_c_NS_setSaveDate(void);
    void dFile_info_c_NS_setHeartCnt(void);
    void setHeartCnt__12dFile_info_cFP10dSv_save_c(void);
    void setSaveDate__12dFile_info_cFP10dSv_save_c(void);
    void func_803664DC(void);
    void setPlayTime__12dFile_info_cFP10dSv_save_c(void);
    void func_80362540(void);
    void dDlst_list_c_NS_set(void);
    void init__14dComIfG_play_cFv(void);
    void func_80003458(void);
    void dStage_roomControl_c_NS_initZone(void);
    void checkItemGet(u8,int);
}

// DVD
extern "C" {
    void DVDClose(void);
    void DVDReadPrio(void);
    void DVDOpen(void);
    void DVDGetCurrentDiskID(void);
}

// JSupport/JSUList.h
extern "C" {
    void __ct__10JSUPtrLinkFPv(void);
    void __dt__10JSUPtrLinkFv(void);
    void __ct__10JSUPtrListFb(void);
    void __dt__10JSUPtrListFv(void);
    void initiate__10JSUPtrListFv(void);
    void setFirst__10JSUPtrListFP10JSUPtrLink(void);
    void append__10JSUPtrListFP10JSUPtrLink(void);
    void prepend__10JSUPtrListFP10JSUPtrLink(void);
    void insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink(void);
    void remove__10JSUPtrListFP10JSUPtrLink(void);
    void getNthLink__10JSUPtrListCFUl(void);
}

// JKernel/JKRDisposer.h
extern "C" {
    void __ct__11JKRDisposerFv(void);
    void __dt__11JKRDisposerFv(void);
}

// JKernel/JKRHeap.h
extern "C" {
    void becomeCurrentHeap__7JKRHeapFv(void);
    void becomeSystemHeap__7JKRHeapFv(void);
    void destroy__7JKRHeapFv(void);
    void alloc__7JKRHeapFUliP7JKRHeap(void);
    void alloc__7JKRHeapFUli(void);
    void free__7JKRHeapFPvP7JKRHeap(void);
    void free__7JKRHeapFPv(void);
    void callAllDisposer__7JKRHeapFv(void);
    void freeAll__7JKRHeapFv(void);
    void freeTail__7JKRHeapFv(void);
    void resize__7JKRHeapFPvUlP7JKRHeap(void);
    void resize__7JKRHeapFPvUl(void);
    void getSize__7JKRHeapFPvP7JKRHeap(void);
    void getSize__7JKRHeapFPv(void);
    void getFreeSize__7JKRHeapFv(void);
    void getMaxFreeBlock__7JKRHeapFv(void);
    void getTotalFreeSize__7JKRHeapFv(void);
    void changeGroupID__7JKRHeapFUc(void);
    void getMaxAllocatableSize__7JKRHeapFi(void);
    void findFromRoot__7JKRHeapFPv(void);
    void find__7JKRHeapCFPv(void);
    void findAllHeap__7JKRHeapCFPv(void);
    void dispose_subroutine__7JKRHeapFUlUl(void);
    void dispose__7JKRHeapFPvUl(void);
    void dispose__7JKRHeapFPvPv(void);
    void dispose__7JKRHeapFv(void);
    void copyMemory__7JKRHeapFPvPvUl(void);
    void JKRDefaultMemoryErrorRoutine__FPvUli(void);
    void setErrorFlag__7JKRHeapFb(void);
    void setErrorHandler__7JKRHeapFPFPvUli_v(void);
    void isSubHeap__7JKRHeapCFP7JKRHeap(void);
    void __nw__FUl(void);
    void __nw__FUli(void);
    void __nw__FUlP7JKRHeapi(void);
    void __nwa__FUl(void);
    void __nwa__FUli(void);
    void __nwa__FUlP7JKRHeapi(void);
    void __dl__FPv(void);
    void __dla__FPv(void);
}

extern "C" {
struct TColor;

extern void GXBegin(u8, u8, u16);
extern void GXLoadTexObj(u32*, s32);
extern void GXInitTexObjLOD(f32, f32, f32, u32*, s32, s32, u32, u8, u32);
extern void GXInitTexObj(u32*, u32, u32, u32, u32, u32, u8);

extern void GXSetNumChans(u32);
extern void GXSetNumTevStages(u32);
extern void GXSetNumTexGens(u32);
extern void GXSetTevOrder(u32, u32, u32, u32);
extern void GXSetChanCtrl(u32, u32, u32, u32, u32, u32, s32);
extern void GXSetTevOp(s32, s32);
extern void GXSetTevColor(s32, TColor);
extern void GXSetTevColorIn(s32, u32, u32, u32, u32);
extern void GXSetTevAlphaIn(s32, u32, u32, u32, u32);
extern void GXSetTevColorOp(s32, u32, u32, u32, u32, u32);
extern void GXSetTevAlphaOp(s32, u32, u32, u32, u32, u32);
extern void GXSetBlendMode(u32, u32, u32, u32);
extern void GXSetVtxAttrFmt(u32, u32, u32, u32, u32);
extern void GXClearVtxDesc();
extern void GXSetVtxDesc(u32, u32);
}

extern "C" {
    void JUTReport__FiiPCce(int, int, const char*, ...);
    extern void JUTReportConsole(const char*);
}

// m_Do_main.h
extern "C" {
    void mDoMch_HeapCheckAll(void);
}

//Z2SoundMgr
extern "C"{
    void resetFilterAll__10Z2SoundMgrFv(void);
    void seMoveVolumeAll__7Z2SeMgrFfUl(void);
    void moveVolume__18JAISoundParamsMoveFfUl(void);
    void Z2SeqMgr_NS_setBattleBgmOff(void);
    void setSceneExist__10Z2SceneMgrFb(void);
    void Z2StatusMgr_NS_menuOut(void);
    void func_803621F4(void);
    void Z2SceneMgr_NS_sceneChange(void);
    void __ct__10JAISoundIDFRC10JAISoundID(void);
    void Z2EnvSeMgr_NS_initSceneEnvSe(void);
    void setFieldBgmPlay__8Z2SeqMgrFb(void);
    void Z2SeqMgr_NS_setTimeProcVolMod(void);
    void Z2SeqMgr_NS_setHeightVolMod(void);
    void JAISound_NS_stop(void);
    void JAUSoundTable_NS_getTypeID(void);
    void JAIStreamMgr_NS_isActive(void);
    void JAISound_NS_getID(void);
    void JSUList_X1_(void);
    void dComIfGs_isStageSwitch(void);
    void dComIfGs_getStartPoint(void);
    void Z2StatusMgr_NS_checkDayTime(void);
    void Z2SeqMgr_NS_bgmStop(void);
    void isSwitch__10dSv_info_cCFii(void);
    void Z2SoundObjMgr_NS_setForceBattleArea(void);
    void Z2SeqMgr_NS_unMuteSceneBgm(void);
    void Z2SeqMgr_NS_muteSceneBgm(void);
    void dComIfGs_isEventBit(void);
    void Z2SeqMgr_NS_changeBgmStatus(void);
    void JAISoundID_NS___as(void);
    void dComIfGs_isSaveSwitch(void);
    void Z2StatusMgr_NS_setDemoName(void);
    void Z2SeMgr_NS_resetModY(void);
    void Z2SoundObjMgr_NS_setGhostEnemyState(void);
    void Z2SeMgr_NS_resetCrowdSize(void);
    void Z2SeqMgr_NS_setTwilightGateVol(void);
    void Z2SeqMgr_NS_setWindStoneVol(void);
    void Z2SeqMgr_NS_resetBattleBgmParams(void);
    void JAISoundID_X1_(void);
    void func_803621A8(void);
    void moveVolume__18JAISoundParamsMoveFfUl(void);
    void seMoveVolumeAll__7Z2SeMgrFfUl(void);
}
// Z2LinkMgr
extern "C" {
    void Z2CreatureLink_NS_startLinkSound(void);
    void Z2SoundObjSimple(void);
    void Z2LinkSoundStarter(void);
    void Z2Creature(void);
    void JAISoundStarter_NS_dtor(void);
    void Z2Creature_NS_dtor(void);
    void Z2SoundObjBase_NS_dtor(void);
    void Z2Creature_NS_deleteObject(void);
    void deleteKantera__14Z2CreatureLinkFv(void);
    void Z2Creature_NS_init_X1_(void);
    void Z2SoundObjBase_NS_deleteObject(void);
    void PSVECSquareDistance(void);
    void moveVolume__18JAISoundParamsMoveFfUl(void);
    void Z2CreatureLink_NS_startLinkSoundLevel(void);
    void Z2SeMgr_NS_seStartLevel(void);
    void Z2Creature_NS_framework(void);
    void Z2Audience_NS_setTargetVolume(void);
    void Z2SoundObjMgr_NS_setGhostEnemyState(void);
    void Z2FxLineMgr_NS_setFxForceOff(void);
    void Z2SeMgr_NS_seStart(void);
    void JAISoundParamsMove_NS_movePitch(void);
    void Z2Calc_NS_linearTransform(void);
    void JAISound_NS_stop(void);
    void Z2SoundHandles_NS_getHandleSoundID(void);
    void Z2SeqMgr_NS_setBattleSeqState(void);
    void startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc(void);
    void startLinkSoundLevel__14Z2CreatureLinkF10JAISoundIDUlSc(void);
    void Z2SoundStarter_NS_setPortData(void);
    void Z2SoundObjBase_NS_startCollisionSE(void);
    void Z2SeqMgr_NS_setBattleLastHit(void);
}

// Z2Calc
extern "C" {
    void linearTransform__6Z2CalcFfffffb(void);
    void func_8036C740(void);
    void func_8036C780(void);
    void getRandom_0_1__6Z2CalcFv(void);
    void getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign(void);
    void JMath_NS_TRandom_fast_(void);
}

// d_a_horse_static
extern "C"{
    void Z2CreatureRide_NS_setLinkRiding(void);
    void checkDownDamage__10e_wb_classFv(void);
}