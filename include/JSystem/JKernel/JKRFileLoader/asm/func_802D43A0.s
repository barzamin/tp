/* detachResource__13JKRFileLoaderFPvP13JKRFileLoader __ct__13JKRFileLoaderFv::detachResource(void *, JKRFileLoader *) */
/* JKRFileLoader_NS_detachResource */
/* 802D43A0 002D12E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D43A4 002D12E4  7C 08 02 A6 */	mflr r0
/* 802D43A8 002D12E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D43AC 002D12EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D43B0 002D12F0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D43B4 002D12F4  7C 7E 1B 78 */	mr r30, r3
/* 802D43B8 002D12F8  28 04 00 00 */	cmplwi r4, 0
/* 802D43BC 002D12FC  41 82 00 20 */	beq lbl_802D43DC
/* 802D43C0 002D1300  7C 83 23 78 */	mr r3, r4
/* 802D43C4 002D1304  7F C4 F3 78 */	mr r4, r30
/* 802D43C8 002D1308  81 83 00 00 */	lwz r12, 0(r3)
/* 802D43CC 002D130C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802D43D0 002D1310  7D 89 03 A6 */	mtctr r12
/* 802D43D4 002D1314  4E 80 04 21 */	bctrl
/* 802D43D8 002D1318  48 00 00 48 */	b lbl_802D4420
lbl_802D43DC:
/* 802D43DC 002D131C  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D43E0 002D1320  83 E3 43 54 */	lwz r31, sVolumeList__13JKRFileLoader@l(r3)
/* 802D43E4 002D1324  48 00 00 30 */	b lbl_802D4414
lbl_802D43E8:
/* 802D43E8 002D1328  80 7F 00 00 */	lwz r3, 0(r31)
/* 802D43EC 002D132C  7F C4 F3 78 */	mr r4, r30
/* 802D43F0 002D1330  81 83 00 00 */	lwz r12, 0(r3)
/* 802D43F4 002D1334  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802D43F8 002D1338  7D 89 03 A6 */	mtctr r12
/* 802D43FC 002D133C  4E 80 04 21 */	bctrl
/* 802D4400 002D1340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D4404 002D1344  41 82 00 0C */	beq lbl_802D4410
/* 802D4408 002D1348  38 60 00 01 */	li r3, 1
/* 802D440C 002D134C  48 00 00 14 */	b lbl_802D4420
lbl_802D4410:
/* 802D4410 002D1350  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802D4414:
/* 802D4414 002D1354  28 1F 00 00 */	cmplwi r31, 0
/* 802D4418 002D1358  40 82 FF D0 */	bne lbl_802D43E8
/* 802D441C 002D135C  38 60 00 00 */	li r3, 0
lbl_802D4420:
/* 802D4420 002D1360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4424 002D1364  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D4428 002D1368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D442C 002D136C  7C 08 03 A6 */	mtlr r0
/* 802D4430 002D1370  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4434 002D1374  4E 80 00 20 */	blr
