/* 802BEBDC 002BBB1C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802BEBE0 002BBB20  7C 08 02 A6 */ mflr r0
/* 802BEBE4 002BBB24  90 01 00 14 */ stw r0, 0x14(r1)
/* 802BEBE8 002BBB28  4B FF F3 C9 */ bl Z2SoundObjBase_NS_init
/* 802BEBEC 002BBB2C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802BEBF0 002BBB30  7C 08 03 A6 */ mtlr r0
/* 802BEBF4 002BBB34  38 21 00 10 */ addi r1, r1, 0x10
/* 802BEBF8 002BBB38  4E 80 00 20 */ blr
