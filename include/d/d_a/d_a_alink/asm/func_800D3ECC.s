/* 800D3ECC 000D0E0C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D3ED0 000D0E10  7C 08 02 A6 */ mflr r0
/* 800D3ED4 000D0E14  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D3ED8 000D0E18  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D3EDC 000D0E1C  93 C1 00 08 */ stw r30, 8(r1)
/* 800D3EE0 000D0E20  7C 7E 1B 78 */ mr r30, r3
/* 800D3EE4 000D0E24  4B FE 60 6D */ bl daAlink_c_NS_checkGroundSpecialMode
/* 800D3EE8 000D0E28  2C 03 00 00 */ cmpwi r3, 0
/* 800D3EEC 000D0E2C  41 82 00 0C */ beq lbl_800D3EF8
/* 800D3EF0 000D0E30  38 60 00 01 */ li r3, 1
/* 800D3EF4 000D0E34  48 00 01 5C */ b lbl_800D4050
lbl_800D3EF8:
/* 800D3EF8 000D0E38  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800D3EFC 000D0E3C  80 1E 05 88 */ lwz r0, 0x588(r30)
/* 800D3F00 000D0E40  64 00 08 00 */ oris r0, r0, 0x800
/* 800D3F04 000D0E44  90 1E 05 88 */ stw r0, 0x588(r30)
/* 800D3F08 000D0E48  7F C3 F3 78 */ mr r3, r30
/* 800D3F0C 000D0E4C  4B FF E1 F1 */ bl daAlink_c_NS_setComboReserb
/* 800D3F10 000D0E50  7F C3 F3 78 */ mr r3, r30
/* 800D3F14 000D0E54  4B FF E7 71 */ bl daAlink_c_NS_checkCutTurnCharge_X1_
/* 800D3F18 000D0E58  38 00 00 04 */ li r0, 4
/* 800D3F1C 000D0E5C  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800D3F20 000D0E60  7F C3 F3 78 */ mr r3, r30
/* 800D3F24 000D0E64  4B FF ED 31 */ bl daAlink_c_NS_checkCutAtnActorChange
/* 800D3F28 000D0E68  7F E3 FB 78 */ mr r3, r31
/* 800D3F2C 000D0E6C  48 08 A5 A1 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800D3F30 000D0E70  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800D3F34 000D0E74  41 82 00 88 */ beq lbl_800D3FBC
/* 800D3F38 000D0E78  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800D3F3C 000D0E7C  28 00 00 52 */ cmplwi r0, 0x52
/* 800D3F40 000D0E80  40 82 00 1C */ bne lbl_800D3F5C
/* 800D3F44 000D0E84  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D3F48 000D0E88  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D3F4C 000D0E8C  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800D3F50 000D0E90  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 800D3F54 000D0E94  4B F7 42 29 */ bl dEvent_manager_c_NS_cutEnd
/* 800D3F58 000D0E98  48 00 00 F4 */ b lbl_800D404C
lbl_800D3F5C:
/* 800D3F5C 000D0E9C  A8 1E 30 08 */ lha r0, 0x3008(r30)
/* 800D3F60 000D0EA0  2C 00 00 00 */ cmpwi r0, 0
/* 800D3F64 000D0EA4  40 81 00 38 */ ble lbl_800D3F9C
/* 800D3F68 000D0EA8  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3F6C 000D0EAC  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800D3F70 000D0EB0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3F74 000D0EB4  40 81 00 18 */ ble lbl_800D3F8C
/* 800D3F78 000D0EB8  7F C3 F3 78 */ mr r3, r30
/* 800D3F7C 000D0EBC  38 80 00 03 */ li r4, 3
/* 800D3F80 000D0EC0  4B FF E7 E1 */ bl daAlink_c_NS_checkCutCancelNextMode
/* 800D3F84 000D0EC4  2C 03 00 00 */ cmpwi r3, 0
/* 800D3F88 000D0EC8  40 82 00 C4 */ bne lbl_800D404C
lbl_800D3F8C:
/* 800D3F8C 000D0ECC  A8 7E 30 08 */ lha r3, 0x3008(r30)
/* 800D3F90 000D0ED0  38 03 FF FF */ addi r0, r3, -1
/* 800D3F94 000D0ED4  B0 1E 30 08 */ sth r0, 0x3008(r30)
/* 800D3F98 000D0ED8  48 00 00 B4 */ b lbl_800D404C
lbl_800D3F9C:
/* 800D3F9C 000D0EDC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D3FA0 000D0EE0  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800D3FA4 000D0EE4  38 00 00 02 */ li r0, 2
/* 800D3FA8 000D0EE8  98 1E 2F 98 */ stb r0, 0x2f98(r30)
/* 800D3FAC 000D0EEC  7F C3 F3 78 */ mr r3, r30
/* 800D3FB0 000D0EF0  38 80 00 00 */ li r4, 0
/* 800D3FB4 000D0EF4  4B FE 61 1D */ bl daAlink_c_NS_checkNextAction
/* 800D3FB8 000D0EF8  48 00 00 94 */ b lbl_800D404C
lbl_800D3FBC:
/* 800D3FBC 000D0EFC  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3FC0 000D0F00  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800D3FC4 000D0F04  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3FC8 000D0F08  40 81 00 18 */ ble lbl_800D3FE0
/* 800D3FCC 000D0F0C  7F C3 F3 78 */ mr r3, r30
/* 800D3FD0 000D0F10  38 80 00 03 */ li r4, 3
/* 800D3FD4 000D0F14  4B FF E7 8D */ bl daAlink_c_NS_checkCutCancelNextMode
/* 800D3FD8 000D0F18  2C 03 00 00 */ cmpwi r3, 0
/* 800D3FDC 000D0F1C  40 82 00 70 */ bne lbl_800D404C
lbl_800D3FE0:
/* 800D3FE0 000D0F20  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3FE4 000D0F24  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800D3FE8 000D0F28  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3FEC 000D0F2C  40 81 00 10 */ ble lbl_800D3FFC
/* 800D3FF0 000D0F30  7F C3 F3 78 */ mr r3, r30
/* 800D3FF4 000D0F34  38 80 00 01 */ li r4, 1
/* 800D3FF8 000D0F38  4B FF D4 39 */ bl daAlink_c_NS_resetCombo
lbl_800D3FFC:
/* 800D3FFC 000D0F3C  7F C3 F3 78 */ mr r3, r30
/* 800D4000 000D0F40  A8 9E 30 10 */ lha r4, 0x3010(r30)
/* 800D4004 000D0F44  4B FD F7 31 */ bl daAlink_c_NS_setShapeAngleToAtnActor
/* 800D4008 000D0F48  7F C3 F3 78 */ mr r3, r30
/* 800D400C 000D0F4C  4B FD F6 25 */ bl daAlink_c_NS_getShapeAngleYAtnActor
/* 800D4010 000D0F50  A8 9E 04 E6 */ lha r4, 0x4e6(r30)
/* 800D4014 000D0F54  48 19 CE 11 */ bl cLib_distanceAngleS__Fss
/* 800D4018 000D0F58  2C 03 08 00 */ cmpwi r3, 0x800
/* 800D401C 000D0F5C  40 80 00 0C */ bge lbl_800D4028
/* 800D4020 000D0F60  38 00 00 01 */ li r0, 1
/* 800D4024 000D0F64  B0 1E 30 10 */ sth r0, 0x3010(r30)
lbl_800D4028:
/* 800D4028 000D0F68  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800D402C 000D0F6C  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800D4030 000D0F70  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D4034 000D0F74  C0 02 93 34 */ lfs f0, lbl_80452D34-_SDA2_BASE_(r2)
/* 800D4038 000D0F78  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D403C 000D0F7C  4C 41 13 82 */ cror 2, 1, 2
/* 800D4040 000D0F80  40 82 00 0C */ bne lbl_800D404C
/* 800D4044 000D0F84  38 00 00 00 */ li r0, 0
/* 800D4048 000D0F88  98 1E 2F 92 */ stb r0, 0x2f92(r30)
lbl_800D404C:
/* 800D404C 000D0F8C  38 60 00 01 */ li r3, 1
lbl_800D4050:
/* 800D4050 000D0F90  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D4054 000D0F94  83 C1 00 08 */ lwz r30, 8(r1)
/* 800D4058 000D0F98  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D405C 000D0F9C  7C 08 03 A6 */ mtlr r0
/* 800D4060 000D0FA0  38 21 00 10 */ addi r1, r1, 0x10
/* 800D4064 000D0FA4  4E 80 00 20 */ blr
