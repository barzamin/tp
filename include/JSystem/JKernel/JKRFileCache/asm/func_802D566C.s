/* __ct__Q212JKRFileCache11CCacheBlockFUlUlPCv __ct__12JKRFileCacheFPCcPCc::CCacheBlock::__ct( (unsigned long, unsigned long, void const *)) */
/* JKRFileCache_NS_CCacheBlock */
/* 802D566C 002D25AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5670 002D25B0  7C 08 02 A6 */	mflr r0
/* 802D5674 002D25B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5678 002D25B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D567C 002D25BC  48 08 CB 5D */	bl _savegpr_28
/* 802D5680 002D25C0  7C 7C 1B 78 */	mr r28, r3
/* 802D5684 002D25C4  7C 9D 23 78 */	mr r29, r4
/* 802D5688 002D25C8  7C BE 2B 78 */	mr r30, r5
/* 802D568C 002D25CC  7C DF 33 78 */	mr r31, r6
/* 802D5690 002D25D0  7F 84 E3 78 */	mr r4, r28
/* 802D5694 002D25D4  48 00 67 69 */	bl __ct__10JSUPtrLinkFPv
/* 802D5698 002D25D8  38 00 00 01 */	li r0, 1
/* 802D569C 002D25DC  90 1C 00 10 */	stw r0, 0x10(r28)
/* 802D56A0 002D25E0  93 BC 00 14 */	stw r29, 0x14(r28)
/* 802D56A4 002D25E4  93 DC 00 18 */	stw r30, 0x18(r28)
/* 802D56A8 002D25E8  93 FC 00 1C */	stw r31, 0x1c(r28)
/* 802D56AC 002D25EC  7F 83 E3 78 */	mr r3, r28
/* 802D56B0 002D25F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D56B4 002D25F4  48 08 CB 71 */	bl _restgpr_28
/* 802D56B8 002D25F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D56BC 002D25FC  7C 08 03 A6 */	mtlr r0
/* 802D56C0 002D2600  38 21 00 20 */	addi r1, r1, 0x20
/* 802D56C4 002D2604  4E 80 00 20 */	blr
