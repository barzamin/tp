/* 802E085C 002DD79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0860 002DD7A0  7C 08 02 A6 */	mflr r0
/* 802E0864 002DD7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E0868 002DD7A8  88 0D 8F 50 */	lbz r0, lbl_804514D0-_SDA_BASE_(r13)
/* 802E086C 002DD7AC  28 00 00 00 */	cmplwi r0, 0
/* 802E0870 002DD7B0  40 82 00 18 */	bne lbl_802E0888
/* 802E0874 002DD7B4  3C 60 80 43 */	lis r3, lbl_804343E4@ha
/* 802E0878 002DD7B8  38 63 43 E4 */	addi r3, r3, lbl_804343E4@l
/* 802E087C 002DD7BC  4B FF B6 99 */	bl initiate__10JSUPtrListFv
/* 802E0880 002DD7C0  38 00 00 01 */	li r0, 1
/* 802E0884 002DD7C4  98 0D 8F 50 */	stb r0, lbl_804514D0-_SDA_BASE_(r13)
lbl_802E0888:
/* 802E0888 002DD7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E088C 002DD7CC  7C 08 03 A6 */	mtlr r0
/* 802E0890 002DD7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0894 002DD7D4  4E 80 00 20 */	blr 