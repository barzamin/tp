/* 8020AE8C 00207DCC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8020AE90 00207DD0  7C 08 02 A6 */ mflr r0
/* 8020AE94 00207DD4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8020AE98 00207DD8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8020AE9C 00207DDC  7C 7F 1B 78 */ mr r31, r3
/* 8020AEA0 00207DE0  3C A0 80 3A */ lis r5, lbl_803A6F88@ha
/* 8020AEA4 00207DE4  38 05 6F 88 */ addi r0, r5, lbl_803A6F88@l
/* 8020AEA8 00207DE8  90 03 00 00 */ stw r0, 0(r3)
/* 8020AEAC 00207DEC  3C A0 80 3C */ lis r5, lbl_803BB6D4@ha
/* 8020AEB0 00207DF0  38 05 B6 D4 */ addi r0, r5, lbl_803BB6D4@l
/* 8020AEB4 00207DF4  90 03 00 00 */ stw r0, 0(r3)
/* 8020AEB8 00207DF8  3C A0 80 3C */ lis r5, lbl_803BF268@ha
/* 8020AEBC 00207DFC  38 05 F2 68 */ addi r0, r5, lbl_803BF268@l
/* 8020AEC0 00207E00  90 03 00 00 */ stw r0, 0(r3)
/* 8020AEC4 00207E04  98 83 00 28 */ stb r4, 0x28(r3)
/* 8020AEC8 00207E08  81 83 00 00 */ lwz r12, 0(r3)
/* 8020AECC 00207E0C  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 8020AED0 00207E10  7D 89 03 A6 */ mtctr r12
/* 8020AED4 00207E14  4E 80 04 21 */ bctrl
/* 8020AED8 00207E18  7F E3 FB 78 */ mr r3, r31
/* 8020AEDC 00207E1C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8020AEE0 00207E20  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8020AEE4 00207E24  7C 08 03 A6 */ mtlr r0
/* 8020AEE8 00207E28  38 21 00 10 */ addi r1, r1, 0x10
/* 8020AEEC 00207E2C  4E 80 00 20 */ blr