.include "macros.inc"

.section .text, "ax" # 802D7B90

/* 802D7B90 002D4AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7B94 002D4AD4  7C 08 02 A6 */	mflr r0
/* 802D7B98 002D4AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7B9C 002D4ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D7BA0 002D4AE0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D7BA4 002D4AE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D7BA8 002D4AE8  7C 9F 23 78 */	mr r31, r4
/* 802D7BAC 002D4AEC  41 82 00 28 */	beq lbl_802D7BD4
/* 802D7BB0 002D4AF0  3C 80 80 3D */	lis r4, lbl_803CC328@ha
/* 802D7BB4 002D4AF4  38 04 C3 28 */	addi r0, r4, lbl_803CC328@l
/* 802D7BB8 002D4AF8  90 1E 00 00 */	stw r0, 0(r30)
/* 802D7BBC 002D4AFC  38 80 00 00 */	li r4, 0
/* 802D7BC0 002D4B00  4B FF 99 25 */	bl __dt__11JKRDisposerFv
/* 802D7BC4 002D4B04  7F E0 07 35 */	extsh. r0, r31
/* 802D7BC8 002D4B08  40 81 00 0C */	ble lbl_802D7BD4
/* 802D7BCC 002D4B0C  7F C3 F3 78 */	mr r3, r30
/* 802D7BD0 002D4B10  4B FF 71 6D */	bl __dl__FPv
lbl_802D7BD4:
/* 802D7BD4 002D4B14  7F C3 F3 78 */	mr r3, r30
/* 802D7BD8 002D4B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D7BDC 002D4B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D7BE0 002D4B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D7BE4 002D4B24  7C 08 03 A6 */	mtlr r0
/* 802D7BE8 002D4B28  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7BEC 002D4B2C  4E 80 00 20 */	blr
