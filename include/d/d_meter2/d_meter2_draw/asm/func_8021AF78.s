/* 8021AF78 00217EB8  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 8021AF7C 00217EBC  7C 08 02 A6 */ mflr r0
/* 8021AF80 00217EC0  90 01 00 74 */ stw r0, 0x74(r1)
/* 8021AF84 00217EC4  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 8021AF88 00217EC8  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 8021AF8C 00217ECC  39 61 00 60 */ addi r11, r1, 0x60
/* 8021AF90 00217ED0  48 14 72 4D */ bl _savegpr_29
/* 8021AF94 00217ED4  7C 7D 1B 78 */ mr r29, r3
/* 8021AF98 00217ED8  FF E0 08 90 */ fmr f31, f1
/* 8021AF9C 00217EDC  54 9E 15 BA */ rlwinm r30, r4, 2, 0x16, 0x1d
/* 8021AFA0 00217EE0  7C 7D F2 14 */ add r3, r29, r30
/* 8021AFA4 00217EE4  83 E3 03 2C */ lwz r31, 0x32c(r3)
/* 8021AFA8 00217EE8  80 62 D1 90 */ lwz r3, lbl_80456B90-_SDA2_BASE_(r2)
/* 8021AFAC 00217EEC  80 02 D1 94 */ lwz r0, lbl_80456B94-_SDA2_BASE_(r2)
/* 8021AFB0 00217EF0  90 61 00 10 */ stw r3, 0x10(r1)
/* 8021AFB4 00217EF4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8021AFB8 00217EF8  80 62 D1 98 */ lwz r3, lbl_80456B98-_SDA2_BASE_(r2)
/* 8021AFBC 00217EFC  80 02 D1 9C */ lwz r0, lbl_80456B9C-_SDA2_BASE_(r2)
/* 8021AFC0 00217F00  90 61 00 08 */ stw r3, 8(r1)
/* 8021AFC4 00217F04  90 01 00 0C */ stw r0, 0xc(r1)
/* 8021AFC8 00217F08  C0 02 AE 84 */ lfs f0, lbl_80454884-_SDA2_BASE_(r2)
/* 8021AFCC 00217F0C  FC 00 F8 00 */ fcmpu cr0, f0, f31
/* 8021AFD0 00217F10  40 82 00 10 */ bne lbl_8021AFE0
/* 8021AFD4 00217F14  7F E3 FB 78 */ mr r3, r31
/* 8021AFD8 00217F18  48 03 A8 51 */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 8021AFDC 00217F1C  FF E0 08 90 */ fmr f31, f1
lbl_8021AFE0:
/* 8021AFE0 00217F20  38 61 00 24 */ addi r3, r1, 0x24
/* 8021AFE4 00217F24  80 9F 00 04 */ lwz r4, 4(r31)
/* 8021AFE8 00217F28  38 A0 00 00 */ li r5, 0
/* 8021AFEC 00217F2C  48 0D C9 BD */ bl J2DPane_NS_getGlbVtx
/* 8021AFF0 00217F30  80 61 00 24 */ lwz r3, 0x24(r1)
/* 8021AFF4 00217F34  80 01 00 28 */ lwz r0, 0x28(r1)
/* 8021AFF8 00217F38  90 61 00 3C */ stw r3, 0x3c(r1)
/* 8021AFFC 00217F3C  90 01 00 40 */ stw r0, 0x40(r1)
/* 8021B000 00217F40  80 01 00 2C */ lwz r0, 0x2c(r1)
/* 8021B004 00217F44  90 01 00 44 */ stw r0, 0x44(r1)
/* 8021B008 00217F48  38 61 00 18 */ addi r3, r1, 0x18
/* 8021B00C 00217F4C  80 9F 00 04 */ lwz r4, 4(r31)
/* 8021B010 00217F50  38 A0 00 03 */ li r5, 3
/* 8021B014 00217F54  48 0D C9 95 */ bl J2DPane_NS_getGlbVtx
/* 8021B018 00217F58  80 61 00 18 */ lwz r3, 0x18(r1)
/* 8021B01C 00217F5C  80 01 00 1C */ lwz r0, 0x1c(r1)
/* 8021B020 00217F60  90 61 00 30 */ stw r3, 0x30(r1)
/* 8021B024 00217F64  90 01 00 34 */ stw r0, 0x34(r1)
/* 8021B028 00217F68  80 01 00 20 */ lwz r0, 0x20(r1)
/* 8021B02C 00217F6C  90 01 00 38 */ stw r0, 0x38(r1)
/* 8021B030 00217F70  7F FD F2 14 */ add r31, r29, r30
/* 8021B034 00217F74  80 7F 00 AC */ lwz r3, 0xac(r31)
/* 8021B038 00217F78  C0 62 AE E0 */ lfs f3, lbl_804548E0-_SDA2_BASE_(r2)
/* 8021B03C 00217F7C  C0 42 AE 94 */ lfs f2, lbl_80454894-_SDA2_BASE_(r2)
/* 8021B040 00217F80  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 8021B044 00217F84  C0 01 00 30 */ lfs f0, 0x30(r1)
/* 8021B048 00217F88  EC 01 00 2A */ fadds f0, f1, f0
/* 8021B04C 00217F8C  EC 02 00 32 */ fmuls f0, f2, f0
/* 8021B050 00217F90  EC 23 00 2A */ fadds f1, f3, f0
/* 8021B054 00217F94  38 81 00 10 */ addi r4, r1, 0x10
/* 8021B058 00217F98  7C 04 F4 2E */ lfsx f0, r4, r30
/* 8021B05C 00217F9C  EC 21 00 2A */ fadds f1, f1, f0
/* 8021B060 00217FA0  C0 41 00 34 */ lfs f2, 0x34(r1)
/* 8021B064 00217FA4  38 81 00 08 */ addi r4, r1, 8
/* 8021B068 00217FA8  7C 04 F4 2E */ lfsx f0, r4, r30
/* 8021B06C 00217FAC  EC 42 00 2A */ fadds f2, f2, f0
/* 8021B070 00217FB0  4B F9 3B 31 */ bl dKantera_icon_c_NS_setPos
/* 8021B074 00217FB4  80 7F 00 AC */ lwz r3, 0xac(r31)
/* 8021B078 00217FB8  C0 22 AE E4 */ lfs f1, lbl_804548E4-_SDA2_BASE_(r2)
/* 8021B07C 00217FBC  FC 40 08 90 */ fmr f2, f1
/* 8021B080 00217FC0  4B F9 3B 75 */ bl dKantera_icon_c_NS_setScale
/* 8021B084 00217FC4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021B088 00217FC8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021B08C 00217FCC  A0 A3 00 08 */ lhz r5, 8(r3)
/* 8021B090 00217FD0  A0 83 00 06 */ lhz r4, 6(r3)
/* 8021B094 00217FD4  80 7F 00 AC */ lwz r3, 0xac(r31)
/* 8021B098 00217FD8  4B F9 3B AD */ bl dKantera_icon_c_NS_setNowGauge
/* 8021B09C 00217FDC  80 7F 00 AC */ lwz r3, 0xac(r31)
/* 8021B0A0 00217FE0  FC 20 F8 90 */ fmr f1, f31
/* 8021B0A4 00217FE4  4B F9 3A D9 */ bl dKantera_icon_c_NS_setAlphaRate
/* 8021B0A8 00217FE8  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 8021B0AC 00217FEC  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 8021B0B0 00217FF0  39 61 00 60 */ addi r11, r1, 0x60
/* 8021B0B4 00217FF4  48 14 71 75 */ bl _restgpr_29
/* 8021B0B8 00217FF8  80 01 00 74 */ lwz r0, 0x74(r1)
/* 8021B0BC 00217FFC  7C 08 03 A6 */ mtlr r0
/* 8021B0C0 00218000  38 21 00 70 */ addi r1, r1, 0x70
/* 8021B0C4 00218004  4E 80 00 20 */ blr