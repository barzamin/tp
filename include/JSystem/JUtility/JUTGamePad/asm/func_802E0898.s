/* 802E0898 002DD7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E089C 002DD7DC  7C 08 02 A6 */	mflr r0
/* 802E08A0 002DD7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E08A4 002DD7E4  38 60 00 05 */	li r3, 5
/* 802E08A8 002DD7E8  48 06 E9 B1 */	bl PADSetSpec
/* 802E08AC 002DD7EC  38 00 00 03 */	li r0, 3
/* 802E08B0 002DD7F0  90 0D 8F 5C */	stw r0, lbl_804514DC-_SDA_BASE_(r13)
/* 802E08B4 002DD7F4  38 60 00 03 */	li r3, 3
/* 802E08B8 002DD7F8  48 06 F1 59 */	bl PADSetAnalogMode
/* 802E08BC 002DD7FC  48 06 E4 95 */	bl PADInit
/* 802E08C0 002DD800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E08C4 002DD804  7C 08 03 A6 */	mtlr r0
/* 802E08C8 002DD808  38 21 00 10 */	addi r1, r1, 0x10
/* 802E08CC 002DD80C  4E 80 00 20 */	blr 