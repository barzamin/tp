/* 80268074 00264FB4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80268078 00264FB8  7C 08 02 A6 */ mflr r0
/* 8026807C 00264FBC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80268080 00264FC0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80268084 00264FC4  7C 7F 1B 78 */ mr r31, r3
/* 80268088 00264FC8  3C 80 80 3C */ lis r4, lbl_803C3FD0@ha
/* 8026808C 00264FCC  38 04 3F D0 */ addi r0, r4, lbl_803C3FD0@l
/* 80268090 00264FD0  90 03 00 0C */ stw r0, 0xc(r3)
/* 80268094 00264FD4  48 00 00 8D */ bl ClearPi__13cBgS_PolyInfoFv
/* 80268098 00264FD8  7F E3 FB 78 */ mr r3, r31
/* 8026809C 00264FDC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802680A0 00264FE0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802680A4 00264FE4  7C 08 03 A6 */ mtlr r0
/* 802680A8 00264FE8  38 21 00 10 */ addi r1, r1, 0x10
/* 802680AC 00264FEC  4E 80 00 20 */ blr
