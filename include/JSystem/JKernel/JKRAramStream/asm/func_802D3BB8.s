/* __ct__13JKRAramStreamFl __ct__13JKRAramStreamFl::__ct(long) */
/* JKRAramStream */
/* 802D3BB8 002D0AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3BBC 002D0AFC  7C 08 02 A6 */	mflr r0
/* 802D3BC0 002D0B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3BC4 002D0B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3BC8 002D0B08  7C 7F 1B 78 */	mr r31, r3
/* 802D3BCC 002D0B0C  7C 86 23 78 */	mr r6, r4
/* 802D3BD0 002D0B10  38 80 0C 00 */	li r4, 0xc00
/* 802D3BD4 002D0B14  38 A0 00 10 */	li r5, 0x10
/* 802D3BD8 002D0B18  4B FF D9 91 */	bl __ct__9JKRThreadFUlii
/* 802D3BDC 002D0B1C  3C 60 80 3D */	lis r3, lbl_803CC1B8@ha
/* 802D3BE0 002D0B20  38 03 C1 B8 */	addi r0, r3, lbl_803CC1B8@l
/* 802D3BE4 002D0B24  90 1F 00 00 */	stw r0, 0(r31)
/* 802D3BE8 002D0B28  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802D3BEC 002D0B2C  48 06 DB C9 */	bl OSResumeThread
/* 802D3BF0 002D0B30  7F E3 FB 78 */	mr r3, r31
/* 802D3BF4 002D0B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3BF8 002D0B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3BFC 002D0B3C  7C 08 03 A6 */	mtlr r0
/* 802D3C00 002D0B40  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3C04 002D0B44  4E 80 00 20 */	blr
