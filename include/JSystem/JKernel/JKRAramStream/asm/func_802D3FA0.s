/* sync__13JKRAramStreamFP20JKRAramStreamCommandi __ct__13JKRAramStreamFl::sync(JKRAramStreamCommand *, int) */
/* JKRAramStream_NS_sync */
/* 802D3FA0 002D0EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3FA4 002D0EE4  7C 08 02 A6 */	mflr r0
/* 802D3FA8 002D0EE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3FAC 002D0EEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D3FB0 002D0EF0  7C 7F 1B 78 */	mr r31, r3
/* 802D3FB4 002D0EF4  2C 04 00 00 */	cmpwi r4, 0
/* 802D3FB8 002D0EF8  40 82 00 30 */	bne lbl_802D3FE8
/* 802D3FBC 002D0EFC  38 7F 00 30 */	addi r3, r31, 0x30
/* 802D3FC0 002D0F00  38 81 00 08 */	addi r4, r1, 8
/* 802D3FC4 002D0F04  38 A0 00 01 */	li r5, 1
/* 802D3FC8 002D0F08  48 06 AA F5 */	bl OSReceiveMessage
/* 802D3FCC 002D0F0C  80 01 00 08 */	lwz r0, 8(r1)
/* 802D3FD0 002D0F10  28 00 00 00 */	cmplwi r0, 0
/* 802D3FD4 002D0F14  40 82 00 0C */	bne lbl_802D3FE0
/* 802D3FD8 002D0F18  38 60 00 00 */	li r3, 0
/* 802D3FDC 002D0F1C  48 00 00 44 */	b lbl_802D4020
lbl_802D3FE0:
/* 802D3FE0 002D0F20  7F E3 FB 78 */	mr r3, r31
/* 802D3FE4 002D0F24  48 00 00 3C */	b lbl_802D4020
lbl_802D3FE8:
/* 802D3FE8 002D0F28  38 7F 00 30 */	addi r3, r31, 0x30
/* 802D3FEC 002D0F2C  38 81 00 08 */	addi r4, r1, 8
/* 802D3FF0 002D0F30  38 A0 00 00 */	li r5, 0
/* 802D3FF4 002D0F34  48 06 AA C9 */	bl OSReceiveMessage
/* 802D3FF8 002D0F38  2C 03 00 00 */	cmpwi r3, 0
/* 802D3FFC 002D0F3C  40 82 00 0C */	bne lbl_802D4008
/* 802D4000 002D0F40  38 60 00 00 */	li r3, 0
/* 802D4004 002D0F44  48 00 00 1C */	b lbl_802D4020
lbl_802D4008:
/* 802D4008 002D0F48  80 01 00 08 */	lwz r0, 8(r1)
/* 802D400C 002D0F4C  28 00 00 00 */	cmplwi r0, 0
/* 802D4010 002D0F50  40 82 00 0C */	bne lbl_802D401C
/* 802D4014 002D0F54  38 60 00 00 */	li r3, 0
/* 802D4018 002D0F58  48 00 00 08 */	b lbl_802D4020
lbl_802D401C:
/* 802D401C 002D0F5C  7F E3 FB 78 */	mr r3, r31
lbl_802D4020:
/* 802D4020 002D0F60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D4024 002D0F64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4028 002D0F68  7C 08 03 A6 */	mtlr r0
/* 802D402C 002D0F6C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D4030 002D0F70  4E 80 00 20 */	blr
