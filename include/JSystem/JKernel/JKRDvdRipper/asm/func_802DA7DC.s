/* __sinit_JKRDvdRipper_cpp __sinit_JKRDvdRipper_cpp */
/* missing reference */
/* 802DA7DC 002D771C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DA7E0 002D7720  7C 08 02 A6 */	mflr r0
/* 802DA7E4 002D7724  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DA7E8 002D7728  3C 60 80 43 */	lis r3, lbl_80434384@ha
/* 802DA7EC 002D772C  38 63 43 84 */	addi r3, r3, lbl_80434384@l
/* 802DA7F0 002D7730  48 00 17 25 */	bl initiate__10JSUPtrListFv
/* 802DA7F4 002D7734  3C 60 80 43 */	lis r3, lbl_80434384@ha
/* 802DA7F8 002D7738  38 63 43 84 */	addi r3, r3, lbl_80434384@l
/* 802DA7FC 002D773C  3C 80 80 2E */	lis r4, JSUList_NS_dtor_X8_@ha
/* 802DA800 002D7740  38 84 A8 20 */	addi r4, r4, JSUList_NS_dtor_X8_@l
/* 802DA804 002D7744  3C A0 80 43 */	lis r5, lbl_80434378@ha
/* 802DA808 002D7748  38 A5 43 78 */	addi r5, r5, lbl_80434378@l
/* 802DA80C 002D774C  48 08 74 19 */	bl func_80361C24
/* 802DA810 002D7750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DA814 002D7754  7C 08 03 A6 */	mtlr r0
/* 802DA818 002D7758  38 21 00 10 */	addi r1, r1, 0x10
/* 802DA81C 002D775C  4E 80 00 20 */	blr
