/* 8020D9EC 0020A92C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8020D9F0 0020A930  7C 08 02 A6 */ mflr r0
/* 8020D9F4 0020A934  90 01 00 34 */ stw r0, 0x34(r1)
/* 8020D9F8 0020A938  39 61 00 30 */ addi r11, r1, 0x30
/* 8020D9FC 0020A93C  48 15 47 D9 */ bl _savegpr_27
/* 8020DA00 0020A940  7C 7F 1B 78 */ mr r31, r3
/* 8020DA04 0020A944  4B FF FB 25 */ bl dMeterMap_c_NS_getMapDispSizeTypeNo
/* 8020DA08 0020A948  4B FF FB 21 */ bl dMeterMap_c_NS_getMapDispSizeTypeNo
/* 8020DA0C 0020A94C  2C 03 00 03 */ cmpwi r3, 3
/* 8020DA10 0020A950  41 82 00 58 */ beq lbl_8020DA68
/* 8020DA14 0020A954  40 80 00 1C */ bge lbl_8020DA30
/* 8020DA18 0020A958  2C 03 00 01 */ cmpwi r3, 1
/* 8020DA1C 0020A95C  41 82 00 24 */ beq lbl_8020DA40
/* 8020DA20 0020A960  40 80 00 34 */ bge lbl_8020DA54
/* 8020DA24 0020A964  2C 03 00 00 */ cmpwi r3, 0
/* 8020DA28 0020A968  40 80 00 54 */ bge lbl_8020DA7C
/* 8020DA2C 0020A96C  48 00 00 74 */ b lbl_8020DAA0
lbl_8020DA30:
/* 8020DA30 0020A970  2C 03 00 05 */ cmpwi r3, 5
/* 8020DA34 0020A974  41 82 00 5C */ beq lbl_8020DA90
/* 8020DA38 0020A978  40 80 00 68 */ bge lbl_8020DAA0
/* 8020DA3C 0020A97C  48 00 00 40 */ b lbl_8020DA7C
lbl_8020DA40:
/* 8020DA40 0020A980  3B 80 00 D8 */ li r28, 0xd8
/* 8020DA44 0020A984  3B 60 00 D8 */ li r27, 0xd8
/* 8020DA48 0020A988  3B C0 00 90 */ li r30, 0x90
/* 8020DA4C 0020A98C  3B A0 00 90 */ li r29, 0x90
/* 8020DA50 0020A990  48 00 00 50 */ b lbl_8020DAA0
lbl_8020DA54:
/* 8020DA54 0020A994  3B 80 00 D8 */ li r28, 0xd8
/* 8020DA58 0020A998  3B 60 00 D8 */ li r27, 0xd8
/* 8020DA5C 0020A99C  3B C0 00 D8 */ li r30, 0xd8
/* 8020DA60 0020A9A0  3B A0 00 D8 */ li r29, 0xd8
/* 8020DA64 0020A9A4  48 00 00 3C */ b lbl_8020DAA0
lbl_8020DA68:
/* 8020DA68 0020A9A8  3B 80 00 D8 */ li r28, 0xd8
/* 8020DA6C 0020A9AC  3B 60 00 D8 */ li r27, 0xd8
/* 8020DA70 0020A9B0  3B C0 00 60 */ li r30, 0x60
/* 8020DA74 0020A9B4  3B A0 00 60 */ li r29, 0x60
/* 8020DA78 0020A9B8  48 00 00 28 */ b lbl_8020DAA0
lbl_8020DA7C:
/* 8020DA7C 0020A9BC  3B 80 00 90 */ li r28, 0x90
/* 8020DA80 0020A9C0  3B 60 00 90 */ li r27, 0x90
/* 8020DA84 0020A9C4  3B C0 00 90 */ li r30, 0x90
/* 8020DA88 0020A9C8  3B A0 00 90 */ li r29, 0x90
/* 8020DA8C 0020A9CC  48 00 00 14 */ b lbl_8020DAA0
lbl_8020DA90:
/* 8020DA90 0020A9D0  3B 80 00 90 */ li r28, 0x90
/* 8020DA94 0020A9D4  3B 60 00 90 */ li r27, 0x90
/* 8020DA98 0020A9D8  3B C0 00 60 */ li r30, 0x60
/* 8020DA9C 0020A9DC  3B A0 00 60 */ li r29, 0x60
lbl_8020DAA0:
/* 8020DAA0 0020A9E0  7F C0 07 34 */ extsh r0, r30
/* 8020DAA4 0020A9E4  C8 22 AE 28 */ lfd f1, lbl_80454828-_SDA2_BASE_(r2)
/* 8020DAA8 0020A9E8  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020DAAC 0020A9EC  90 01 00 0C */ stw r0, 0xc(r1)
/* 8020DAB0 0020A9F0  3C 60 43 30 */ lis r3, 0x4330
/* 8020DAB4 0020A9F4  90 61 00 08 */ stw r3, 8(r1)
/* 8020DAB8 0020A9F8  C8 01 00 08 */ lfd f0, 8(r1)
/* 8020DABC 0020A9FC  EC 00 08 28 */ fsubs f0, f0, f1
/* 8020DAC0 0020AA00  D0 1F 00 20 */ stfs f0, 0x20(r31)
/* 8020DAC4 0020AA04  7F A0 07 34 */ extsh r0, r29
/* 8020DAC8 0020AA08  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8020DACC 0020AA0C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8020DAD0 0020AA10  90 61 00 10 */ stw r3, 0x10(r1)
/* 8020DAD4 0020AA14  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 8020DAD8 0020AA18  EC 00 08 28 */ fsubs f0, f0, f1
/* 8020DADC 0020AA1C  D0 1F 00 24 */ stfs f0, 0x24(r31)
/* 8020DAE0 0020AA20  38 60 00 94 */ li r3, 0x94
/* 8020DAE4 0020AA24  48 0C 11 69 */ bl __nw__FUl
/* 8020DAE8 0020AA28  7C 60 1B 79 */ or. r0, r3, r3
/* 8020DAEC 0020AA2C  41 82 00 1C */ beq lbl_8020DB08
/* 8020DAF0 0020AA30  7F C4 F3 78 */ mr r4, r30
/* 8020DAF4 0020AA34  7F A5 EB 78 */ mr r5, r29
/* 8020DAF8 0020AA38  7F 86 E3 78 */ mr r6, r28
/* 8020DAFC 0020AA3C  7F 67 DB 78 */ mr r7, r27
/* 8020DB00 0020AA40  4B E1 BD 75 */ bl dMap_c
/* 8020DB04 0020AA44  7C 60 1B 78 */ mr r0, r3
lbl_8020DB08:
/* 8020DB08 0020AA48  90 1F 00 08 */ stw r0, 8(r31)
/* 8020DB0C 0020AA4C  38 60 01 50 */ li r3, 0x150
/* 8020DB10 0020AA50  48 0C 11 3D */ bl __nw__FUl
/* 8020DB14 0020AA54  7C 60 1B 79 */ or. r0, r3, r3
/* 8020DB18 0020AA58  41 82 00 14 */ beq lbl_8020DB2C
/* 8020DB1C 0020AA5C  80 9F 00 08 */ lwz r4, 8(r31)
/* 8020DB20 0020AA60  80 84 00 48 */ lwz r4, 0x48(r4)
/* 8020DB24 0020AA64  48 0E EB E5 */ bl J2DPicture_X3_
/* 8020DB28 0020AA68  7C 60 1B 78 */ mr r0, r3
lbl_8020DB2C:
/* 8020DB2C 0020AA6C  90 1F 00 04 */ stw r0, 4(r31)
/* 8020DB30 0020AA70  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8020DB34 0020AA74  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DB38 0020AA78  3B C3 09 58 */ addi r30, r3, 0x958
/* 8020DB3C 0020AA7C  7F C3 F3 78 */ mr r3, r30
/* 8020DB40 0020AA80  38 80 00 01 */ li r4, 1
/* 8020DB44 0020AA84  4B E2 6D F1 */ bl isDungeonItem__12dSv_memBit_cCFi
/* 8020DB48 0020AA88  90 7F 00 0C */ stw r3, 0xc(r31)
/* 8020DB4C 0020AA8C  7F C3 F3 78 */ mr r3, r30
/* 8020DB50 0020AA90  38 80 00 00 */ li r4, 0
/* 8020DB54 0020AA94  4B E2 6D E1 */ bl isDungeonItem__12dSv_memBit_cCFi
/* 8020DB58 0020AA98  90 7F 00 10 */ stw r3, 0x10(r31)
/* 8020DB5C 0020AA9C  38 00 00 00 */ li r0, 0
/* 8020DB60 0020AAA0  90 1F 00 14 */ stw r0, 0x14(r31)
/* 8020DB64 0020AAA4  98 1F 00 2A */ stb r0, 0x2a(r31)
/* 8020DB68 0020AAA8  4B E2 05 41 */ bl dComIfGp_checkMapShow
/* 8020DB6C 0020AAAC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8020DB70 0020AAB0  41 82 00 38 */ beq lbl_8020DBA8
/* 8020DB74 0020AAB4  38 00 00 01 */ li r0, 1
/* 8020DB78 0020AAB8  98 1F 00 2D */ stb r0, 0x2d(r31)
/* 8020DB7C 0020AABC  4B FF FA D5 */ bl dMeterMap_c_NS_isEnableDispMapAndMapDispSizeTypeNo
/* 8020DB80 0020AAC0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8020DB84 0020AAC4  40 82 00 0C */ bne lbl_8020DB90
/* 8020DB88 0020AAC8  38 00 00 00 */ li r0, 0
/* 8020DB8C 0020AACC  98 1F 00 2D */ stb r0, 0x2d(r31)
lbl_8020DB90:
/* 8020DB90 0020AAD0  4B FF FD 71 */ bl dMeterMap_c_NS_isMapOpenCheck
/* 8020DB94 0020AAD4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8020DB98 0020AAD8  40 82 00 18 */ bne lbl_8020DBB0
/* 8020DB9C 0020AADC  38 00 00 00 */ li r0, 0
/* 8020DBA0 0020AAE0  98 1F 00 2D */ stb r0, 0x2d(r31)
/* 8020DBA4 0020AAE4  48 00 00 0C */ b lbl_8020DBB0
lbl_8020DBA8:
/* 8020DBA8 0020AAE8  38 00 00 00 */ li r0, 0
/* 8020DBAC 0020AAEC  98 1F 00 2D */ stb r0, 0x2d(r31)
lbl_8020DBB0:
/* 8020DBB0 0020AAF0  88 1F 00 2D */ lbz r0, 0x2d(r31)
/* 8020DBB4 0020AAF4  28 00 00 00 */ cmplwi r0, 0
/* 8020DBB8 0020AAF8  41 82 00 2C */ beq lbl_8020DBE4
/* 8020DBBC 0020AAFC  38 00 00 01 */ li r0, 1
/* 8020DBC0 0020AB00  98 1F 00 2D */ stb r0, 0x2d(r31)
/* 8020DBC4 0020AB04  7F E3 FB 78 */ mr r3, r31
/* 8020DBC8 0020AB08  4B FF FC 1D */ bl dMeterMap_c_NS_getDispPosInside_OffsetX
/* 8020DBCC 0020AB0C  B0 7F 00 28 */ sth r3, 0x28(r31)
/* 8020DBD0 0020AB10  38 00 00 01 */ li r0, 1
/* 8020DBD4 0020AB14  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8020DBD8 0020AB18  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8020DBDC 0020AB1C  98 03 00 BF */ stb r0, 0xbf(r3)
/* 8020DBE0 0020AB20  48 00 00 28 */ b lbl_8020DC08
lbl_8020DBE4:
/* 8020DBE4 0020AB24  38 00 00 00 */ li r0, 0
/* 8020DBE8 0020AB28  98 1F 00 2D */ stb r0, 0x2d(r31)
/* 8020DBEC 0020AB2C  7F E3 FB 78 */ mr r3, r31
/* 8020DBF0 0020AB30  4B FF FB FD */ bl dMeterMap_c_NS_getDispPosOutSide_OffsetX
/* 8020DBF4 0020AB34  B0 7F 00 28 */ sth r3, 0x28(r31)
/* 8020DBF8 0020AB38  38 00 00 00 */ li r0, 0
/* 8020DBFC 0020AB3C  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8020DC00 0020AB40  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8020DC04 0020AB44  98 03 00 BF */ stb r0, 0xbf(r3)
lbl_8020DC08:
/* 8020DC08 0020AB48  38 00 00 00 */ li r0, 0
/* 8020DC0C 0020AB4C  98 1F 00 2E */ stb r0, 0x2e(r31)
/* 8020DC10 0020AB50  B0 1F 00 28 */ sth r0, 0x28(r31)
/* 8020DC14 0020AB54  90 1F 00 30 */ stw r0, 0x30(r31)
/* 8020DC18 0020AB58  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8020DC1C 0020AB5C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DC20 0020AB60  38 63 07 F0 */ addi r3, r3, 0x7f0
/* 8020DC24 0020AB64  3C 80 80 3A */ lis r4, lbl_803A7288@ha
/* 8020DC28 0020AB68  38 84 72 88 */ addi r4, r4, lbl_803A7288@l
/* 8020DC2C 0020AB6C  A0 84 00 EC */ lhz r4, 0xec(r4)
/* 8020DC30 0020AB70  4B E2 6D 8D */ bl isEventBit__11dSv_event_cCFUs
/* 8020DC34 0020AB74  98 7F 00 2B */ stb r3, 0x2b(r31)
/* 8020DC38 0020AB78  39 61 00 30 */ addi r11, r1, 0x30
/* 8020DC3C 0020AB7C  48 15 45 E5 */ bl _restgpr_27
/* 8020DC40 0020AB80  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8020DC44 0020AB84  7C 08 03 A6 */ mtlr r0
/* 8020DC48 0020AB88  38 21 00 30 */ addi r1, r1, 0x30
/* 8020DC4C 0020AB8C  4E 80 00 20 */ blr