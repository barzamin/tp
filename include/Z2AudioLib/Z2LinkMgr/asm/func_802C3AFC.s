/* 802C3AFC 002C0A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3B00 002C0A40  7C 08 02 A6 */	mflr r0
/* 802C3B04 002C0A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3B08 002C0A48  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C3B0C 002C0A4C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802C3B10 002C0A50  98 03 00 CB */	stb r0, 0xcb(r3)
/* 802C3B14 002C0A54  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C3B18 002C0A58  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802C3B1C 002C0A5C  41 82 00 58 */	beq lbl_802C3B74
/* 802C3B20 002C0A60  3C 60 00 02 */	lis r3, 0x00020050@ha
/* 802C3B24 002C0A64  38 03 00 50 */	addi r0, r3, 0x00020050@l
/* 802C3B28 002C0A68  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C3B2C 002C0A6C  80 6D 86 08 */	lwz r3, lbl_80450B88-_SDA_BASE_(r13)
/* 802C3B30 002C0A70  38 81 00 0C */	addi r4, r1, 0xc
/* 802C3B34 002C0A74  38 A0 00 00 */	li r5, 0
/* 802C3B38 002C0A78  38 C0 00 00 */	li r6, 0
/* 802C3B3C 002C0A7C  38 E0 00 00 */	li r7, 0
/* 802C3B40 002C0A80  C0 22 C2 98 */	lfs f1, lbl_80455C98-_SDA2_BASE_(r2)
/* 802C3B44 002C0A84  FC 40 08 90 */	fmr f2, f1
/* 802C3B48 002C0A88  C0 62 C2 9C */	lfs f3, lbl_80455C9C-_SDA2_BASE_(r2)
/* 802C3B4C 002C0A8C  FC 80 18 90 */	fmr f4, f3
/* 802C3B50 002C0A90  39 00 00 00 */	li r8, 0
/* 802C3B54 002C0A94  4B FE 7E 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802C3B58 002C0A98  80 6D 85 C0 */	lwz r3, lbl_80450B40-_SDA_BASE_(r13)
/* 802C3B5C 002C0A9C  38 80 00 01 */	li r4, 1
/* 802C3B60 002C0AA0  4B FF 72 BD */	bl Z2FxLineMgr_NS_setFxForceOff
/* 802C3B64 002C0AA4  80 6D 85 C8 */	lwz r3, lbl_80450B48-_SDA_BASE_(r13)
/* 802C3B68 002C0AA8  38 80 00 20 */	li r4, 0x20
/* 802C3B6C 002C0AAC  4B FF C4 81 */	bl Z2SoundObjMgr_NS_setGhostEnemyState
/* 802C3B70 002C0AB0  48 00 00 54 */	b lbl_802C3BC4
lbl_802C3B74:
/* 802C3B74 002C0AB4  3C 60 00 02 */	lis r3, 0x00020095@ha
/* 802C3B78 002C0AB8  38 03 00 95 */	addi r0, r3, 0x00020095@l
/* 802C3B7C 002C0ABC  90 01 00 08 */	stw r0, 8(r1)
/* 802C3B80 002C0AC0  80 6D 86 08 */	lwz r3, lbl_80450B88-_SDA_BASE_(r13)
/* 802C3B84 002C0AC4  38 81 00 08 */	addi r4, r1, 8
/* 802C3B88 002C0AC8  38 A0 00 00 */	li r5, 0
/* 802C3B8C 002C0ACC  38 C0 00 00 */	li r6, 0
/* 802C3B90 002C0AD0  38 E0 00 00 */	li r7, 0
/* 802C3B94 002C0AD4  C0 22 C2 98 */	lfs f1, lbl_80455C98-_SDA2_BASE_(r2)
/* 802C3B98 002C0AD8  FC 40 08 90 */	fmr f2, f1
/* 802C3B9C 002C0ADC  C0 62 C2 9C */	lfs f3, lbl_80455C9C-_SDA2_BASE_(r2)
/* 802C3BA0 002C0AE0  FC 80 18 90 */	fmr f4, f3
/* 802C3BA4 002C0AE4  39 00 00 00 */	li r8, 0
/* 802C3BA8 002C0AE8  4B FE 7D DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802C3BAC 002C0AEC  80 6D 85 C0 */	lwz r3, lbl_80450B40-_SDA_BASE_(r13)
/* 802C3BB0 002C0AF0  38 80 00 00 */	li r4, 0
/* 802C3BB4 002C0AF4  4B FF 72 69 */	bl Z2FxLineMgr_NS_setFxForceOff
/* 802C3BB8 002C0AF8  80 6D 85 C8 */	lwz r3, lbl_80450B48-_SDA_BASE_(r13)
/* 802C3BBC 002C0AFC  38 80 00 10 */	li r4, 0x10
/* 802C3BC0 002C0B00  4B FF C4 2D */	bl Z2SoundObjMgr_NS_setGhostEnemyState
lbl_802C3BC4:
/* 802C3BC4 002C0B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3BC8 002C0B08  7C 08 03 A6 */	mtlr r0
/* 802C3BCC 002C0B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3BD0 002C0B10  4E 80 00 20 */	blr 