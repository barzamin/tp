/* 8020D258 0020A198  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8020D25C 0020A19C  7C 08 02 A6 */ mflr r0
/* 8020D260 0020A1A0  90 01 00 14 */ stw r0, 0x14(r1)
/* 8020D264 0020A1A4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8020D268 0020A1A8  7C 7F 1B 78 */ mr r31, r3
/* 8020D26C 0020A1AC  80 63 00 2C */ lwz r3, 0x2c(r3)
/* 8020D270 0020A1B0  48 04 85 B9 */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 8020D274 0020A1B4  C0 02 AE 00 */ lfs f0, lbl_80454800-_SDA2_BASE_(r2)
/* 8020D278 0020A1B8  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8020D27C 0020A1BC  41 82 00 34 */ beq lbl_8020D2B0
/* 8020D280 0020A1C0  80 7F 00 2C */ lwz r3, 0x2c(r31)
/* 8020D284 0020A1C4  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 8020D288 0020A1C8  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 8020D28C 0020A1CC  C0 24 03 A0 */ lfs f1, 0x3a0(r4)
/* 8020D290 0020A1D0  48 04 85 41 */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 8020D294 0020A1D4  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8020D298 0020A1D8  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8020D29C 0020A1DC  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 8020D2A0 0020A1E0  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 8020D2A4 0020A1E4  80 9F 00 2C */ lwz r4, 0x2c(r31)
/* 8020D2A8 0020A1E8  38 A0 00 05 */ li r5, 5
/* 8020D2AC 0020A1EC  48 00 D7 1D */ bl dMeter2Draw_c_NS_setAlphaAnimeMin
lbl_8020D2B0:
/* 8020D2B0 0020A1F0  80 7F 00 30 */ lwz r3, 0x30(r31)
/* 8020D2B4 0020A1F4  48 04 85 75 */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 8020D2B8 0020A1F8  C0 02 AE 00 */ lfs f0, lbl_80454800-_SDA2_BASE_(r2)
/* 8020D2BC 0020A1FC  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8020D2C0 0020A200  41 82 00 34 */ beq lbl_8020D2F4
/* 8020D2C4 0020A204  80 7F 00 30 */ lwz r3, 0x30(r31)
/* 8020D2C8 0020A208  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 8020D2CC 0020A20C  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 8020D2D0 0020A210  C0 24 03 A8 */ lfs f1, 0x3a8(r4)
/* 8020D2D4 0020A214  48 04 84 FD */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 8020D2D8 0020A218  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8020D2DC 0020A21C  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8020D2E0 0020A220  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 8020D2E4 0020A224  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 8020D2E8 0020A228  80 9F 00 30 */ lwz r4, 0x30(r31)
/* 8020D2EC 0020A22C  38 A0 00 05 */ li r5, 5
/* 8020D2F0 0020A230  48 00 D6 D9 */ bl dMeter2Draw_c_NS_setAlphaAnimeMin
lbl_8020D2F4:
/* 8020D2F4 0020A234  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8020D2F8 0020A238  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8020D2FC 0020A23C  7C 08 03 A6 */ mtlr r0
/* 8020D300 0020A240  38 21 00 10 */ addi r1, r1, 0x10
/* 8020D304 0020A244  4E 80 00 20 */ blr