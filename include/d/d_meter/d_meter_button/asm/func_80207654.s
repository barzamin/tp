/* 80207654 00204594  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80207658 00204598  7C 08 02 A6 */ mflr r0
/* 8020765C 0020459C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80207660 002045A0  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80207664 002045A4  7C 7F 1B 78 */ mr r31, r3
/* 80207668 002045A8  80 63 00 2C */ lwz r3, 0x2c(r3)
/* 8020766C 002045AC  48 04 E1 BD */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80207670 002045B0  C0 02 AD 4C */ lfs f0, lbl_8045474C-_SDA2_BASE_(r2)
/* 80207674 002045B4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80207678 002045B8  41 82 00 B4 */ beq lbl_8020772C
/* 8020767C 002045BC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80207680 002045C0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80207684 002045C4  88 03 5E 4B */ lbz r0, 0x5e4b(r3)
/* 80207688 002045C8  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 8020768C 002045CC  41 82 00 20 */ beq lbl_802076AC
/* 80207690 002045D0  80 7F 00 2C */ lwz r3, 0x2c(r31)
/* 80207694 002045D4  FC 20 00 90 */ fmr f1, f0
/* 80207698 002045D8  48 04 E1 39 */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 8020769C 002045DC  38 00 00 05 */ li r0, 5
/* 802076A0 002045E0  80 7F 00 2C */ lwz r3, 0x2c(r31)
/* 802076A4 002045E4  B0 03 00 16 */ sth r0, 0x16(r3)
/* 802076A8 002045E8  48 00 00 2C */ b lbl_802076D4
lbl_802076AC:
/* 802076AC 002045EC  80 7F 00 2C */ lwz r3, 0x2c(r31)
/* 802076B0 002045F0  FC 20 00 90 */ fmr f1, f0
/* 802076B4 002045F4  48 04 E1 1D */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 802076B8 002045F8  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 802076BC 002045FC  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 802076C0 00204600  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 802076C4 00204604  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 802076C8 00204608  80 9F 00 2C */ lwz r4, 0x2c(r31)
/* 802076CC 0020460C  38 A0 00 05 */ li r5, 5
/* 802076D0 00204610  48 01 33 D5 */ bl dMeter2Draw_c_NS_setAlphaAnimeMax
lbl_802076D4:
/* 802076D4 00204614  80 7F 00 2C */ lwz r3, 0x2c(r31)
/* 802076D8 00204618  48 04 E1 51 */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 802076DC 0020461C  C0 42 AD 4C */ lfs f2, lbl_8045474C-_SDA2_BASE_(r2)
/* 802076E0 00204620  FC 02 08 00 */ fcmpu cr0, f2, f1
/* 802076E4 00204624  40 82 00 48 */ bne lbl_8020772C
/* 802076E8 00204628  88 1F 04 C4 */ lbz r0, 0x4c4(r31)
/* 802076EC 0020462C  28 00 00 00 */ cmplwi r0, 0
/* 802076F0 00204630  40 82 00 3C */ bne lbl_8020772C
/* 802076F4 00204634  38 00 00 56 */ li r0, 0x56
/* 802076F8 00204638  90 01 00 08 */ stw r0, 8(r1)
/* 802076FC 0020463C  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80207700 00204640  38 81 00 08 */ addi r4, r1, 8
/* 80207704 00204644  38 A0 00 00 */ li r5, 0
/* 80207708 00204648  38 C0 00 00 */ li r6, 0
/* 8020770C 0020464C  38 E0 00 00 */ li r7, 0
/* 80207710 00204650  FC 20 10 90 */ fmr f1, f2
/* 80207714 00204654  C0 62 AD 58 */ lfs f3, lbl_80454758-_SDA2_BASE_(r2)
/* 80207718 00204658  FC 80 18 90 */ fmr f4, f3
/* 8020771C 0020465C  39 00 00 00 */ li r8, 0
/* 80207720 00204660  48 0A 42 65 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80207724 00204664  38 00 00 01 */ li r0, 1
/* 80207728 00204668  98 1F 04 C4 */ stb r0, 0x4c4(r31)
lbl_8020772C:
/* 8020772C 0020466C  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80207730 00204670  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80207734 00204674  7C 08 03 A6 */ mtlr r0
/* 80207738 00204678  38 21 00 20 */ addi r1, r1, 0x20
/* 8020773C 0020467C  4E 80 00 20 */ blr
