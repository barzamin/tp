/* 800E9BD0 000E6B10  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 800E9BD4 000E6B14  7C 08 02 A6 */ mflr r0
/* 800E9BD8 000E6B18  90 01 00 44 */ stw r0, 0x44(r1)
/* 800E9BDC 000E6B1C  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 800E9BE0 000E6B20  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 800E9BE4 000E6B24  DB C1 00 20 */ stfd f30, 0x20(r1)
/* 800E9BE8 000E6B28  F3 C1 00 28 */ psq_st f30, 40(r1), 0, 0
/* 800E9BEC 000E6B2C  39 61 00 20 */ addi r11, r1, 0x20
/* 800E9BF0 000E6B30  48 27 85 E5 */ bl _savegpr_27
/* 800E9BF4 000E6B34  7C 7C 1B 78 */ mr r28, r3
/* 800E9BF8 000E6B38  3B BC 1F D0 */ addi r29, r28, 0x1fd0
/* 800E9BFC 000E6B3C  83 E3 28 10 */ lwz r31, 0x2810(r3)
/* 800E9C00 000E6B40  AB DF 00 08 */ lha r30, 8(r31)
/* 800E9C04 000E6B44  A8 03 30 0C */ lha r0, 0x300c(r3)
/* 800E9C08 000E6B48  2C 00 00 00 */ cmpwi r0, 0
/* 800E9C0C 000E6B4C  41 82 00 20 */ beq lbl_800E9C2C
/* 800E9C10 000E6B50  A8 1C 30 0A */ lha r0, 0x300a(r28)
/* 800E9C14 000E6B54  2C 00 00 00 */ cmpwi r0, 0
/* 800E9C18 000E6B58  40 82 00 1C */ bne lbl_800E9C34
/* 800E9C1C 000E6B5C  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 800E9C20 000E6B60  C0 02 93 C4 */ lfs f0, lbl_80452DC4-_SDA2_BASE_(r2)
/* 800E9C24 000E6B64  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E9C28 000E6B68  40 80 00 0C */ bge lbl_800E9C34
lbl_800E9C2C:
/* 800E9C2C 000E6B6C  A8 9C 2F F0 */ lha r4, 0x2ff0(r28)
/* 800E9C30 000E6B70  48 00 00 08 */ b lbl_800E9C38
lbl_800E9C34:
/* 800E9C34 000E6B74  38 80 00 00 */ li r4, 0
lbl_800E9C38:
/* 800E9C38 000E6B78  38 7C 04 E4 */ addi r3, r28, 0x4e4
/* 800E9C3C 000E6B7C  38 A0 00 05 */ li r5, 5
/* 800E9C40 000E6B80  38 C0 20 00 */ li r6, 0x2000
/* 800E9C44 000E6B84  38 E0 04 00 */ li r7, 0x400
/* 800E9C48 000E6B88  48 18 68 F9 */ bl cLib_addCalcAngleS__FPsssss
/* 800E9C4C 000E6B8C  28 1F 00 00 */ cmplwi r31, 0
/* 800E9C50 000E6B90  40 82 00 44 */ bne lbl_800E9C94
/* 800E9C54 000E6B94  88 1C 05 6A */ lbz r0, 0x56a(r28)
/* 800E9C58 000E6B98  28 00 00 2A */ cmplwi r0, 0x2a
/* 800E9C5C 000E6B9C  41 82 00 24 */ beq lbl_800E9C80
/* 800E9C60 000E6BA0  7F 83 E3 78 */ mr r3, r28
/* 800E9C64 000E6BA4  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800E9C68 000E6BA8  81 8C 02 28 */ lwz r12, 0x228(r12)
/* 800E9C6C 000E6BAC  7D 89 03 A6 */ mtctr r12
/* 800E9C70 000E6BB0  4E 80 04 21 */ bctrl
/* 800E9C74 000E6BB4  7F 83 E3 78 */ mr r3, r28
/* 800E9C78 000E6BB8  48 02 E0 81 */ bl daAlink_c_NS_endDemoMode
/* 800E9C7C 000E6BBC  48 00 00 0C */ b lbl_800E9C88
lbl_800E9C80:
/* 800E9C80 000E6BC0  7F 83 E3 78 */ mr r3, r28
/* 800E9C84 000E6BC4  4B FF E6 15 */ bl daAlink_c_NS_offGoatStopGame
lbl_800E9C88:
/* 800E9C88 000E6BC8  7F 83 E3 78 */ mr r3, r28
/* 800E9C8C 000E6BCC  4B FD 97 2D */ bl daAlink_c_NS_procWaitInit
/* 800E9C90 000E6BD0  48 00 05 F0 */ b lbl_800EA280
lbl_800E9C94:
/* 800E9C94 000E6BD4  80 1C 19 9C */ lwz r0, 0x199c(r28)
/* 800E9C98 000E6BD8  54 04 06 B5 */ rlwinm. r4, r0, 0, 0x1a, 0x1a
/* 800E9C9C 000E6BDC  40 82 00 38 */ bne lbl_800E9CD4
/* 800E9CA0 000E6BE0  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800E9CA4 000E6BE4  2C 00 00 00 */ cmpwi r0, 0
/* 800E9CA8 000E6BE8  40 82 00 2C */ bne lbl_800E9CD4
/* 800E9CAC 000E6BEC  80 7C 05 70 */ lwz r3, 0x570(r28)
/* 800E9CB0 000E6BF0  54 60 04 E7 */ rlwinm. r0, r3, 0, 0x13, 0x13
/* 800E9CB4 000E6BF4  41 82 00 0C */ beq lbl_800E9CC0
/* 800E9CB8 000E6BF8  54 60 04 A5 */ rlwinm. r0, r3, 0, 0x12, 0x12
/* 800E9CBC 000E6BFC  40 82 00 18 */ bne lbl_800E9CD4
lbl_800E9CC0:
/* 800E9CC0 000E6C00  7F 83 E3 78 */ mr r3, r28
/* 800E9CC4 000E6C04  7F E4 FB 78 */ mr r4, r31
/* 800E9CC8 000E6C08  4B FF F5 49 */ bl daAlink_c_NS_setGoatStopGameFail
/* 800E9CCC 000E6C0C  38 60 00 01 */ li r3, 1
/* 800E9CD0 000E6C10  48 00 05 B0 */ b lbl_800EA280
lbl_800E9CD4:
/* 800E9CD4 000E6C14  A8 1C 30 0C */ lha r0, 0x300c(r28)
/* 800E9CD8 000E6C18  2C 00 00 00 */ cmpwi r0, 0
/* 800E9CDC 000E6C1C  41 82 02 0C */ beq lbl_800E9EE8
/* 800E9CE0 000E6C20  A8 7C 30 0A */ lha r3, 0x300a(r28)
/* 800E9CE4 000E6C24  2C 03 00 00 */ cmpwi r3, 0
/* 800E9CE8 000E6C28  40 82 01 B0 */ bne lbl_800E9E98
/* 800E9CEC 000E6C2C  38 00 00 05 */ li r0, 5
/* 800E9CF0 000E6C30  98 1C 2F 99 */ stb r0, 0x2f99(r28)
/* 800E9CF4 000E6C34  80 1C 05 88 */ lwz r0, 0x588(r28)
/* 800E9CF8 000E6C38  64 00 08 00 */ oris r0, r0, 0x800
/* 800E9CFC 000E6C3C  90 1C 05 88 */ stw r0, 0x588(r28)
/* 800E9D00 000E6C40  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 800E9D04 000E6C44  C0 02 94 B0 */ lfs f0, lbl_80452EB0-_SDA2_BASE_(r2)
/* 800E9D08 000E6C48  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E9D0C 000E6C4C  4C 41 13 82 */ cror 2, 1, 2
/* 800E9D10 000E6C50  40 82 00 18 */ bne lbl_800E9D28
/* 800E9D14 000E6C54  38 00 00 01 */ li r0, 1
/* 800E9D18 000E6C58  98 1C 2F 92 */ stb r0, 0x2f92(r28)
/* 800E9D1C 000E6C5C  38 00 00 06 */ li r0, 6
/* 800E9D20 000E6C60  98 1C 2F 93 */ stb r0, 0x2f93(r28)
/* 800E9D24 000E6C64  48 00 00 48 */ b lbl_800E9D6C
lbl_800E9D28:
/* 800E9D28 000E6C68  C0 02 93 7C */ lfs f0, lbl_80452D7C-_SDA2_BASE_(r2)
/* 800E9D2C 000E6C6C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E9D30 000E6C70  4C 41 13 82 */ cror 2, 1, 2
/* 800E9D34 000E6C74  40 82 00 14 */ bne lbl_800E9D48
/* 800E9D38 000E6C78  80 1C 31 A0 */ lwz r0, 0x31a0(r28)
/* 800E9D3C 000E6C7C  60 00 01 00 */ ori r0, r0, 0x100
/* 800E9D40 000E6C80  90 1C 31 A0 */ stw r0, 0x31a0(r28)
/* 800E9D44 000E6C84  48 00 00 28 */ b lbl_800E9D6C
lbl_800E9D48:
/* 800E9D48 000E6C88  C0 02 94 28 */ lfs f0, lbl_80452E28-_SDA2_BASE_(r2)
/* 800E9D4C 000E6C8C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E9D50 000E6C90  4C 41 13 82 */ cror 2, 1, 2
/* 800E9D54 000E6C94  40 82 00 18 */ bne lbl_800E9D6C
/* 800E9D58 000E6C98  38 00 00 FE */ li r0, 0xfe
/* 800E9D5C 000E6C9C  98 1C 2F 92 */ stb r0, 0x2f92(r28)
/* 800E9D60 000E6CA0  98 1C 2F 93 */ stb r0, 0x2f93(r28)
/* 800E9D64 000E6CA4  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E9D68 000E6CA8  D0 1C 34 78 */ stfs f0, 0x3478(r28)
lbl_800E9D6C:
/* 800E9D6C 000E6CAC  7F A3 EB 78 */ mr r3, r29
/* 800E9D70 000E6CB0  48 07 47 5D */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800E9D74 000E6CB4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E9D78 000E6CB8  41 82 01 68 */ beq lbl_800E9EE0
/* 800E9D7C 000E6CBC  A8 1C 30 12 */ lha r0, 0x3012(r28)
/* 800E9D80 000E6CC0  2C 00 00 00 */ cmpwi r0, 0
/* 800E9D84 000E6CC4  40 82 00 38 */ bne lbl_800E9DBC
/* 800E9D88 000E6CC8  7F 83 E3 78 */ mr r3, r28
/* 800E9D8C 000E6CCC  38 80 00 00 */ li r4, 0
/* 800E9D90 000E6CD0  38 A0 80 00 */ li r5, -32768
/* 800E9D94 000E6CD4  38 C0 00 00 */ li r6, 0
/* 800E9D98 000E6CD8  4B FC 3D E1 */ bl daAlink_c_NS_setOldRootQuaternion
/* 800E9D9C 000E6CDC  A8 7C 04 E6 */ lha r3, 0x4e6(r28)
/* 800E9DA0 000E6CE0  3C 63 00 01 */ addis r3, r3, 1
/* 800E9DA4 000E6CE4  38 03 80 00 */ addi r0, r3, -32768
/* 800E9DA8 000E6CE8  B0 1C 04 E6 */ sth r0, 0x4e6(r28)
/* 800E9DAC 000E6CEC  A8 1C 04 E6 */ lha r0, 0x4e6(r28)
/* 800E9DB0 000E6CF0  B0 1C 04 DE */ sth r0, 0x4de(r28)
/* 800E9DB4 000E6CF4  A8 1C 04 E6 */ lha r0, 0x4e6(r28)
/* 800E9DB8 000E6CF8  B0 1C 2F E4 */ sth r0, 0x2fe4(r28)
lbl_800E9DBC:
/* 800E9DBC 000E6CFC  2C 1E 00 21 */ cmpwi r30, 0x21
/* 800E9DC0 000E6D00  40 82 00 44 */ bne lbl_800E9E04
/* 800E9DC4 000E6D04  38 00 00 30 */ li r0, 0x30
/* 800E9DC8 000E6D08  98 1C 2F 99 */ stb r0, 0x2f99(r28)
/* 800E9DCC 000E6D0C  7F 83 E3 78 */ mr r3, r28
/* 800E9DD0 000E6D10  38 80 00 1A */ li r4, 0x1a
/* 800E9DD4 000E6D14  3C A0 80 39 */ lis r5, lbl_8038D6BC@ha
/* 800E9DD8 000E6D18  38 A5 D6 BC */ addi r5, r5, lbl_8038D6BC@l
/* 800E9DDC 000E6D1C  C0 25 00 1C */ lfs f1, 0x1c(r5)
/* 800E9DE0 000E6D20  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800E9DE4 000E6D24  4B FC 31 FD */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
/* 800E9DE8 000E6D28  80 1C 31 A0 */ lwz r0, 0x31a0(r28)
/* 800E9DEC 000E6D2C  54 00 04 5E */ rlwinm r0, r0, 0, 0x11, 0xf
/* 800E9DF0 000E6D30  90 1C 31 A0 */ stw r0, 0x31a0(r28)
/* 800E9DF4 000E6D34  38 00 00 1E */ li r0, 0x1e
/* 800E9DF8 000E6D38  B0 1C 30 0A */ sth r0, 0x300a(r28)
/* 800E9DFC 000E6D3C  38 60 00 01 */ li r3, 1
/* 800E9E00 000E6D40  48 00 04 80 */ b lbl_800EA280
lbl_800E9E04:
/* 800E9E04 000E6D44  88 1C 05 6A */ lbz r0, 0x56a(r28)
/* 800E9E08 000E6D48  28 00 00 2A */ cmplwi r0, 0x2a
/* 800E9E0C 000E6D4C  41 82 00 24 */ beq lbl_800E9E30
/* 800E9E10 000E6D50  7F 83 E3 78 */ mr r3, r28
/* 800E9E14 000E6D54  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800E9E18 000E6D58  81 8C 02 28 */ lwz r12, 0x228(r12)
/* 800E9E1C 000E6D5C  7D 89 03 A6 */ mtctr r12
/* 800E9E20 000E6D60  4E 80 04 21 */ bctrl
/* 800E9E24 000E6D64  7F 83 E3 78 */ mr r3, r28
/* 800E9E28 000E6D68  48 02 DE D1 */ bl daAlink_c_NS_endDemoMode
/* 800E9E2C 000E6D6C  48 00 00 60 */ b lbl_800E9E8C
lbl_800E9E30:
/* 800E9E30 000E6D70  7F 83 E3 78 */ mr r3, r28
/* 800E9E34 000E6D74  4B FF E4 65 */ bl daAlink_c_NS_offGoatStopGame
/* 800E9E38 000E6D78  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E9E3C 000E6D7C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E9E40 000E6D80  3B 63 07 F0 */ addi r27, r3, 0x7f0
/* 800E9E44 000E6D84  7F 63 DB 78 */ mr r3, r27
/* 800E9E48 000E6D88  3C 80 80 3A */ lis r4, lbl_803A7288@ha
/* 800E9E4C 000E6D8C  38 84 72 88 */ addi r4, r4, lbl_803A7288@l
/* 800E9E50 000E6D90  A0 84 04 6A */ lhz r4, 0x46a(r4)
/* 800E9E54 000E6D94  4B F4 AB 69 */ bl isEventBit__11dSv_event_cCFUs
/* 800E9E58 000E6D98  2C 03 00 00 */ cmpwi r3, 0
/* 800E9E5C 000E6D9C  41 82 00 1C */ beq lbl_800E9E78
/* 800E9E60 000E6DA0  7F 63 DB 78 */ mr r3, r27
/* 800E9E64 000E6DA4  3C 80 80 3A */ lis r4, lbl_803A7288@ha
/* 800E9E68 000E6DA8  38 84 72 88 */ addi r4, r4, lbl_803A7288@l
/* 800E9E6C 000E6DAC  A0 84 04 96 */ lhz r4, 0x496(r4)
/* 800E9E70 000E6DB0  4B F4 AB 1D */ bl onEventBit__11dSv_event_cFUs
/* 800E9E74 000E6DB4  48 00 00 18 */ b lbl_800E9E8C
lbl_800E9E78:
/* 800E9E78 000E6DB8  7F 63 DB 78 */ mr r3, r27
/* 800E9E7C 000E6DBC  3C 80 80 3A */ lis r4, lbl_803A7288@ha
/* 800E9E80 000E6DC0  38 84 72 88 */ addi r4, r4, lbl_803A7288@l
/* 800E9E84 000E6DC4  A0 84 01 64 */ lhz r4, 0x164(r4)
/* 800E9E88 000E6DC8  4B F4 AB 05 */ bl onEventBit__11dSv_event_cFUs
lbl_800E9E8C:
/* 800E9E8C 000E6DCC  7F 83 E3 78 */ mr r3, r28
/* 800E9E90 000E6DD0  4B FD 95 29 */ bl daAlink_c_NS_procWaitInit
/* 800E9E94 000E6DD4  48 00 03 EC */ b lbl_800EA280
lbl_800E9E98:
/* 800E9E98 000E6DD8  38 03 FF FF */ addi r0, r3, -1
/* 800E9E9C 000E6DDC  B0 1C 30 0A */ sth r0, 0x300a(r28)
/* 800E9EA0 000E6DE0  A8 1C 30 0A */ lha r0, 0x300a(r28)
/* 800E9EA4 000E6DE4  2C 00 00 00 */ cmpwi r0, 0
/* 800E9EA8 000E6DE8  40 82 00 38 */ bne lbl_800E9EE0
/* 800E9EAC 000E6DEC  80 1C 05 88 */ lwz r0, 0x588(r28)
/* 800E9EB0 000E6DF0  64 00 08 00 */ oris r0, r0, 0x800
/* 800E9EB4 000E6DF4  90 1C 05 88 */ stw r0, 0x588(r28)
/* 800E9EB8 000E6DF8  7F 83 E3 78 */ mr r3, r28
/* 800E9EBC 000E6DFC  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800E9EC0 000E6E00  81 8C 02 28 */ lwz r12, 0x228(r12)
/* 800E9EC4 000E6E04  7D 89 03 A6 */ mtctr r12
/* 800E9EC8 000E6E08  4E 80 04 21 */ bctrl
/* 800E9ECC 000E6E0C  7F 83 E3 78 */ mr r3, r28
/* 800E9ED0 000E6E10  48 02 DE 29 */ bl daAlink_c_NS_endDemoMode
/* 800E9ED4 000E6E14  7F 83 E3 78 */ mr r3, r28
/* 800E9ED8 000E6E18  4B FD 94 E1 */ bl daAlink_c_NS_procWaitInit
/* 800E9EDC 000E6E1C  48 00 03 A4 */ b lbl_800EA280
lbl_800E9EE0:
/* 800E9EE0 000E6E20  38 60 00 01 */ li r3, 1
/* 800E9EE4 000E6E24  48 00 03 9C */ b lbl_800EA280
lbl_800E9EE8:
/* 800E9EE8 000E6E28  88 1C 2F 8E */ lbz r0, 0x2f8e(r28)
/* 800E9EEC 000E6E2C  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E9EF0 000E6E30  41 82 00 40 */ beq lbl_800E9F30
/* 800E9EF4 000E6E34  28 04 00 00 */ cmplwi r4, 0
/* 800E9EF8 000E6E38  40 82 00 18 */ bne lbl_800E9F10
/* 800E9EFC 000E6E3C  80 7C 05 70 */ lwz r3, 0x570(r28)
/* 800E9F00 000E6E40  54 60 04 E7 */ rlwinm. r0, r3, 0, 0x13, 0x13
/* 800E9F04 000E6E44  41 82 00 2C */ beq lbl_800E9F30
/* 800E9F08 000E6E48  54 60 04 A5 */ rlwinm. r0, r3, 0, 0x12, 0x12
/* 800E9F0C 000E6E4C  41 82 00 24 */ beq lbl_800E9F30
lbl_800E9F10:
/* 800E9F10 000E6E50  80 1C 31 98 */ lwz r0, 0x3198(r28)
/* 800E9F14 000E6E54  2C 00 00 00 */ cmpwi r0, 0
/* 800E9F18 000E6E58  40 81 00 40 */ ble lbl_800E9F58
/* 800E9F1C 000E6E5C  C0 3C 33 98 */ lfs f1, 0x3398(r28)
/* 800E9F20 000E6E60  C0 02 92 E0 */ lfs f0, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800E9F24 000E6E64  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E9F28 000E6E68  4C 41 13 82 */ cror 2, 1, 2
/* 800E9F2C 000E6E6C  40 82 00 2C */ bne lbl_800E9F58
lbl_800E9F30:
/* 800E9F30 000E6E70  80 1C 05 70 */ lwz r0, 0x570(r28)
/* 800E9F34 000E6E74  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E9F38 000E6E78  41 82 00 0C */ beq lbl_800E9F44
/* 800E9F3C 000E6E7C  7F 83 E3 78 */ mr r3, r28
/* 800E9F40 000E6E80  4B FF 8E 85 */ bl daAlink_c_NS_cancelMagneBootsOn
lbl_800E9F44:
/* 800E9F44 000E6E84  7F 83 E3 78 */ mr r3, r28
/* 800E9F48 000E6E88  7F E4 FB 78 */ mr r4, r31
/* 800E9F4C 000E6E8C  4B FF F2 C5 */ bl daAlink_c_NS_setGoatStopGameFail
/* 800E9F50 000E6E90  38 60 00 01 */ li r3, 1
/* 800E9F54 000E6E94  48 00 03 2C */ b lbl_800EA280
lbl_800E9F58:
/* 800E9F58 000E6E98  7F 83 E3 78 */ mr r3, r28
/* 800E9F5C 000E6E9C  38 80 00 15 */ li r4, 0x15
/* 800E9F60 000E6EA0  4B FC 93 09 */ bl daAlink_c_NS_setDoStatusEmphasys
/* 800E9F64 000E6EA4  A8 7C 04 E6 */ lha r3, 0x4e6(r28)
/* 800E9F68 000E6EA8  A8 1C 2F E2 */ lha r0, 0x2fe2(r28)
/* 800E9F6C 000E6EAC  7C 03 00 50 */ subf r0, r3, r0
/* 800E9F70 000E6EB0  7C 03 07 34 */ extsh r3, r0
/* 800E9F74 000E6EB4  4B FC 95 21 */ bl daAlink_c_NS_getDirectionFromAngle
/* 800E9F78 000E6EB8  7C 7B 1B 78 */ mr r27, r3
/* 800E9F7C 000E6EBC  C0 3C 33 98 */ lfs f1, 0x3398(r28)
/* 800E9F80 000E6EC0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E9F84 000E6EC4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800E9F88 000E6EC8  40 81 01 48 */ ble lbl_800EA0D0
/* 800E9F8C 000E6ECC  C3 FD 00 10 */ lfs f31, 0x10(r29)
/* 800E9F90 000E6ED0  7F A3 EB 78 */ mr r3, r29
/* 800E9F94 000E6ED4  48 07 45 39 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800E9F98 000E6ED8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E9F9C 000E6EDC  41 82 00 10 */ beq lbl_800E9FAC
/* 800E9FA0 000E6EE0  7F 83 E3 78 */ mr r3, r28
/* 800E9FA4 000E6EE4  38 80 01 1C */ li r4, 0x11c
/* 800E9FA8 000E6EE8  4B FC 2F D9 */ bl daAlink_c_NS_setSingleAnimeBase
lbl_800E9FAC:
/* 800E9FAC 000E6EEC  38 00 00 60 */ li r0, 0x60
/* 800E9FB0 000E6EF0  98 1C 2F 9D */ stb r0, 0x2f9d(r28)
/* 800E9FB4 000E6EF4  80 7C 31 98 */ lwz r3, 0x3198(r28)
/* 800E9FB8 000E6EF8  2C 03 00 00 */ cmpwi r3, 0
/* 800E9FBC 000E6EFC  40 81 00 20 */ ble lbl_800E9FDC
/* 800E9FC0 000E6F00  38 03 00 01 */ addi r0, r3, 1
/* 800E9FC4 000E6F04  90 1C 31 98 */ stw r0, 0x3198(r28)
/* 800E9FC8 000E6F08  38 7C 33 98 */ addi r3, r28, 0x3398
/* 800E9FCC 000E6F0C  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800E9FD0 000E6F10  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E9FD4 000E6F14  48 18 67 6D */ bl cLib_chaseF__FPfff
/* 800E9FD8 000E6F18  48 00 00 AC */ b lbl_800EA084
lbl_800E9FDC:
/* 800E9FDC 000E6F1C  C3 C2 92 B8 */ lfs f30, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800E9FE0 000E6F20  2C 1E 00 21 */ cmpwi r30, 0x21
/* 800E9FE4 000E6F24  41 82 00 0C */ beq lbl_800E9FF0
/* 800E9FE8 000E6F28  2C 1E 01 B1 */ cmpwi r30, 0x1b1
/* 800E9FEC 000E6F2C  40 82 00 30 */ bne lbl_800EA01C
lbl_800E9FF0:
/* 800E9FF0 000E6F30  7F 83 E3 78 */ mr r3, r28
/* 800E9FF4 000E6F34  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800E9FF8 000E6F38  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800E9FFC 000E6F3C  7D 89 03 A6 */ mtctr r12
/* 800EA000 000E6F40  4E 80 04 21 */ bctrl
/* 800EA004 000E6F44  2C 03 00 00 */ cmpwi r3, 0
/* 800EA008 000E6F48  40 82 00 14 */ bne lbl_800EA01C
/* 800EA00C 000E6F4C  80 7C 31 98 */ lwz r3, 0x3198(r28)
/* 800EA010 000E6F50  38 03 00 01 */ addi r0, r3, 1
/* 800EA014 000E6F54  90 1C 31 98 */ stw r0, 0x3198(r28)
/* 800EA018 000E6F58  48 00 00 24 */ b lbl_800EA03C
lbl_800EA01C:
/* 800EA01C 000E6F5C  C0 3C 33 AC */ lfs f1, 0x33ac(r28)
/* 800EA020 000E6F60  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800EA024 000E6F64  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EA028 000E6F68  40 81 00 14 */ ble lbl_800EA03C
/* 800EA02C 000E6F6C  2C 1B 00 00 */ cmpwi r27, 0
/* 800EA030 000E6F70  40 82 00 0C */ bne lbl_800EA03C
/* 800EA034 000E6F74  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800EA038 000E6F78  EF DE 00 2A */ fadds f30, f30, f0
lbl_800EA03C:
/* 800EA03C 000E6F7C  7F 83 E3 78 */ mr r3, r28
/* 800EA040 000E6F80  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800EA044 000E6F84  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800EA048 000E6F88  7D 89 03 A6 */ mtctr r12
/* 800EA04C 000E6F8C  4E 80 04 21 */ bctrl
/* 800EA050 000E6F90  2C 03 00 00 */ cmpwi r3, 0
/* 800EA054 000E6F94  41 82 00 0C */ beq lbl_800EA060
/* 800EA058 000E6F98  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800EA05C 000E6F9C  EF DE 00 2A */ fadds f30, f30, f0
lbl_800EA060:
/* 800EA060 000E6FA0  38 7C 33 98 */ addi r3, r28, 0x3398
/* 800EA064 000E6FA4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EA068 000E6FA8  FC 40 F0 90 */ fmr f2, f30
/* 800EA06C 000E6FAC  48 18 66 D5 */ bl cLib_chaseF__FPfff
/* 800EA070 000E6FB0  C0 3C 33 98 */ lfs f1, 0x3398(r28)
/* 800EA074 000E6FB4  C0 02 93 A0 */ lfs f0, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800EA078 000E6FB8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EA07C 000E6FBC  40 80 00 08 */ bge lbl_800EA084
/* 800EA080 000E6FC0  D0 1C 33 98 */ stfs f0, 0x3398(r28)
lbl_800EA084:
/* 800EA084 000E6FC4  7F 83 E3 78 */ mr r3, r28
/* 800EA088 000E6FC8  38 80 01 1C */ li r4, 0x11c
/* 800EA08C 000E6FCC  4B FC 24 CD */ bl daAlink_c_NS_checkUnderMove0BckNoArc
/* 800EA090 000E6FD0  2C 03 00 00 */ cmpwi r3, 0
/* 800EA094 000E6FD4  40 82 00 1C */ bne lbl_800EA0B0
/* 800EA098 000E6FD8  7F 83 E3 78 */ mr r3, r28
/* 800EA09C 000E6FDC  38 80 01 1C */ li r4, 0x11c
/* 800EA0A0 000E6FE0  4B FC 2E E1 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800EA0A4 000E6FE4  D3 FD 00 10 */ stfs f31, 0x10(r29)
/* 800EA0A8 000E6FE8  80 7C 1F 2C */ lwz r3, 0x1f2c(r28)
/* 800EA0AC 000E6FEC  D3 E3 00 08 */ stfs f31, 8(r3)
lbl_800EA0B0:
/* 800EA0B0 000E6FF0  7F 83 E3 78 */ mr r3, r28
/* 800EA0B4 000E6FF4  3C 80 00 03 */ lis r4, 0x00030017@ha
/* 800EA0B8 000E6FF8  38 84 00 17 */ addi r4, r4, 0x00030017@l
/* 800EA0BC 000E6FFC  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800EA0C0 000E7000  81 8C 01 1C */ lwz r12, 0x11c(r12)
/* 800EA0C4 000E7004  7D 89 03 A6 */ mtctr r12
/* 800EA0C8 000E7008  4E 80 04 21 */ bctrl
/* 800EA0CC 000E700C  48 00 01 B0 */ b lbl_800EA27C
lbl_800EA0D0:
/* 800EA0D0 000E7010  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800EA0D4 000E7014  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EA0D8 000E7018  40 81 00 34 */ ble lbl_800EA10C
/* 800EA0DC 000E701C  D0 1C 33 98 */ stfs f0, 0x3398(r28)
/* 800EA0E0 000E7020  7F 83 E3 78 */ mr r3, r28
/* 800EA0E4 000E7024  38 80 01 1E */ li r4, 0x11e
/* 800EA0E8 000E7028  4B FC 2E 99 */ bl daAlink_c_NS_setSingleAnimeBase
/* 800EA0EC 000E702C  7F 83 E3 78 */ mr r3, r28
/* 800EA0F0 000E7030  3C 80 00 01 */ lis r4, 0x00010010@ha
/* 800EA0F4 000E7034  38 84 00 10 */ addi r4, r4, 0x00010010@l
/* 800EA0F8 000E7038  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800EA0FC 000E703C  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800EA100 000E7040  7D 89 03 A6 */ mtctr r12
/* 800EA104 000E7044  4E 80 04 21 */ bctrl
/* 800EA108 000E7048  48 00 00 3C */ b lbl_800EA144
lbl_800EA10C:
/* 800EA10C 000E704C  7F A3 EB 78 */ mr r3, r29
/* 800EA110 000E7050  48 07 43 BD */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800EA114 000E7054  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EA118 000E7058  41 82 00 2C */ beq lbl_800EA144
/* 800EA11C 000E705C  88 1C 05 6A */ lbz r0, 0x56a(r28)
/* 800EA120 000E7060  28 00 00 2A */ cmplwi r0, 0x2a
/* 800EA124 000E7064  40 82 00 20 */ bne lbl_800EA144
/* 800EA128 000E7068  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800EA12C 000E706C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800EA130 000E7070  38 63 0D D8 */ addi r3, r3, 0xdd8
/* 800EA134 000E7074  3C 80 80 38 */ lis r4, lbl_803790C0@ha
/* 800EA138 000E7078  38 84 90 C0 */ addi r4, r4, lbl_803790C0@l
/* 800EA13C 000E707C  A0 84 00 46 */ lhz r4, 0x46(r4)
/* 800EA140 000E7080  4B F4 A8 4D */ bl onEventBit__11dSv_event_cFUs
lbl_800EA144:
/* 800EA144 000E7084  38 00 00 04 */ li r0, 4
/* 800EA148 000E7088  98 1C 2F 99 */ stb r0, 0x2f99(r28)
/* 800EA14C 000E708C  7F A3 EB 78 */ mr r3, r29
/* 800EA150 000E7090  48 07 43 7D */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800EA154 000E7094  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800EA158 000E7098  41 82 01 24 */ beq lbl_800EA27C
/* 800EA15C 000E709C  2C 1E 01 B1 */ cmpwi r30, 0x1b1
/* 800EA160 000E70A0  40 82 00 34 */ bne lbl_800EA194
/* 800EA164 000E70A4  7F 83 E3 78 */ mr r3, r28
/* 800EA168 000E70A8  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800EA16C 000E70AC  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800EA170 000E70B0  7D 89 03 A6 */ mtctr r12
/* 800EA174 000E70B4  4E 80 04 21 */ bctrl
/* 800EA178 000E70B8  2C 03 00 00 */ cmpwi r3, 0
/* 800EA17C 000E70BC  40 82 00 18 */ bne lbl_800EA194
/* 800EA180 000E70C0  7F 83 E3 78 */ mr r3, r28
/* 800EA184 000E70C4  7F E4 FB 78 */ mr r4, r31
/* 800EA188 000E70C8  4B FF F0 89 */ bl daAlink_c_NS_setGoatStopGameFail
/* 800EA18C 000E70CC  38 60 00 01 */ li r3, 1
/* 800EA190 000E70D0  48 00 00 F0 */ b lbl_800EA280
lbl_800EA194:
/* 800EA194 000E70D4  C0 3C 33 AC */ lfs f1, 0x33ac(r28)
/* 800EA198 000E70D8  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800EA19C 000E70DC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EA1A0 000E70E0  40 81 00 18 */ ble lbl_800EA1B8
/* 800EA1A4 000E70E4  2C 1B 00 02 */ cmpwi r27, 2
/* 800EA1A8 000E70E8  41 82 00 0C */ beq lbl_800EA1B4
/* 800EA1AC 000E70EC  2C 1B 00 03 */ cmpwi r27, 3
/* 800EA1B0 000E70F0  40 82 00 08 */ bne lbl_800EA1B8
lbl_800EA1B4:
/* 800EA1B4 000E70F4  B3 7C 30 0E */ sth r27, 0x300e(r28)
lbl_800EA1B8:
/* 800EA1B8 000E70F8  A8 1C 30 0E */ lha r0, 0x300e(r28)
/* 800EA1BC 000E70FC  2C 00 00 02 */ cmpwi r0, 2
/* 800EA1C0 000E7100  40 82 00 48 */ bne lbl_800EA208
/* 800EA1C4 000E7104  2C 1E 00 21 */ cmpwi r30, 0x21
/* 800EA1C8 000E7108  40 82 00 14 */ bne lbl_800EA1DC
/* 800EA1CC 000E710C  A0 1F 0A 48 */ lhz r0, 0xa48(r31)
/* 800EA1D0 000E7110  60 00 00 08 */ ori r0, r0, 8
/* 800EA1D4 000E7114  B0 1F 0A 48 */ sth r0, 0xa48(r31)
/* 800EA1D8 000E7118  48 00 00 28 */ b lbl_800EA200
lbl_800EA1DC:
/* 800EA1DC 000E711C  2C 1E 01 06 */ cmpwi r30, 0x106
/* 800EA1E0 000E7120  40 82 00 14 */ bne lbl_800EA1F4
/* 800EA1E4 000E7124  A0 1F 05 68 */ lhz r0, 0x568(r31)
/* 800EA1E8 000E7128  60 00 00 08 */ ori r0, r0, 8
/* 800EA1EC 000E712C  B0 1F 05 68 */ sth r0, 0x568(r31)
/* 800EA1F0 000E7130  48 00 00 10 */ b lbl_800EA200
lbl_800EA1F4:
/* 800EA1F4 000E7134  88 1F 05 8D */ lbz r0, 0x58d(r31)
/* 800EA1F8 000E7138  60 00 00 08 */ ori r0, r0, 8
/* 800EA1FC 000E713C  98 1F 05 8D */ stb r0, 0x58d(r31)
lbl_800EA200:
/* 800EA200 000E7140  38 80 01 1F */ li r4, 0x11f
/* 800EA204 000E7144  48 00 00 44 */ b lbl_800EA248
lbl_800EA208:
/* 800EA208 000E7148  2C 1E 00 21 */ cmpwi r30, 0x21
/* 800EA20C 000E714C  40 82 00 14 */ bne lbl_800EA220
/* 800EA210 000E7150  A0 1F 0A 48 */ lhz r0, 0xa48(r31)
/* 800EA214 000E7154  60 00 00 10 */ ori r0, r0, 0x10
/* 800EA218 000E7158  B0 1F 0A 48 */ sth r0, 0xa48(r31)
/* 800EA21C 000E715C  48 00 00 28 */ b lbl_800EA244
lbl_800EA220:
/* 800EA220 000E7160  2C 1E 01 06 */ cmpwi r30, 0x106
/* 800EA224 000E7164  40 82 00 14 */ bne lbl_800EA238
/* 800EA228 000E7168  A0 1F 05 68 */ lhz r0, 0x568(r31)
/* 800EA22C 000E716C  60 00 00 10 */ ori r0, r0, 0x10
/* 800EA230 000E7170  B0 1F 05 68 */ sth r0, 0x568(r31)
/* 800EA234 000E7174  48 00 00 10 */ b lbl_800EA244
lbl_800EA238:
/* 800EA238 000E7178  88 1F 05 8D */ lbz r0, 0x58d(r31)
/* 800EA23C 000E717C  60 00 00 10 */ ori r0, r0, 0x10
/* 800EA240 000E7180  98 1F 05 8D */ stb r0, 0x58d(r31)
lbl_800EA244:
/* 800EA244 000E7184  38 80 01 20 */ li r4, 0x120
lbl_800EA248:
/* 800EA248 000E7188  38 00 00 01 */ li r0, 1
/* 800EA24C 000E718C  B0 1C 30 0C */ sth r0, 0x300c(r28)
/* 800EA250 000E7190  7F 83 E3 78 */ mr r3, r28
/* 800EA254 000E7194  4B FC 2D 2D */ bl daAlink_c_NS_setSingleAnimeBase
/* 800EA258 000E7198  38 00 00 0C */ li r0, 0xc
/* 800EA25C 000E719C  98 1C 2F 99 */ stb r0, 0x2f99(r28)
/* 800EA260 000E71A0  7F 83 E3 78 */ mr r3, r28
/* 800EA264 000E71A4  3C 80 00 01 */ lis r4, 0x00010059@ha
/* 800EA268 000E71A8  38 84 00 59 */ addi r4, r4, 0x00010059@l
/* 800EA26C 000E71AC  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800EA270 000E71B0  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800EA274 000E71B4  7D 89 03 A6 */ mtctr r12
/* 800EA278 000E71B8  4E 80 04 21 */ bctrl
lbl_800EA27C:
/* 800EA27C 000E71BC  38 60 00 01 */ li r3, 1
lbl_800EA280:
/* 800EA280 000E71C0  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 800EA284 000E71C4  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 800EA288 000E71C8  E3 C1 00 28 */ psq_l f30, 40(r1), 0, 0
/* 800EA28C 000E71CC  CB C1 00 20 */ lfd f30, 0x20(r1)
/* 800EA290 000E71D0  39 61 00 20 */ addi r11, r1, 0x20
/* 800EA294 000E71D4  48 27 7F 8D */ bl _restgpr_27
/* 800EA298 000E71D8  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800EA29C 000E71DC  7C 08 03 A6 */ mtlr r0
/* 800EA2A0 000E71E0  38 21 00 40 */ addi r1, r1, 0x40
/* 800EA2A4 000E71E4  4E 80 00 20 */ blr
