/* 801AEBA0 001ABAE0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801AEBA4 001ABAE4  7C 08 02 A6 */ mflr r0
/* 801AEBA8 001ABAE8  90 01 00 14 */ stw r0, 0x14(r1)
/* 801AEBAC 001ABAEC  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 801AEBB0 001ABAF0  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 801AEBB4 001ABAF4  C0 04 06 10 */ lfs f0, 0x610(r4)
/* 801AEBB8 001ABAF8  EC 42 00 2A */ fadds f2, f2, f0
/* 801AEBBC 001ABAFC  80 63 00 08 */ lwz r3, 8(r3)
/* 801AEBC0 001ABB00  80 63 00 04 */ lwz r3, 4(r3)
/* 801AEBC4 001ABB04  C0 04 06 0C */ lfs f0, 0x60c(r4)
/* 801AEBC8 001ABB08  EC 01 00 2A */ fadds f0, f1, f0
/* 801AEBCC 001ABB0C  D0 03 00 D4 */ stfs f0, 0xd4(r3)
/* 801AEBD0 001ABB10  D0 43 00 D8 */ stfs f2, 0xd8(r3)
/* 801AEBD4 001ABB14  81 83 00 00 */ lwz r12, 0(r3)
/* 801AEBD8 001ABB18  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 801AEBDC 001ABB1C  7D 89 03 A6 */ mtctr r12
/* 801AEBE0 001ABB20  4E 80 04 21 */ bctrl
/* 801AEBE4 001ABB24  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801AEBE8 001ABB28  7C 08 03 A6 */ mtlr r0
/* 801AEBEC 001ABB2C  38 21 00 10 */ addi r1, r1, 0x10
/* 801AEBF0 001ABB30  4E 80 00 20 */ blr
