/* 80057D08 00054C48  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80057D0C 00054C4C  7C 08 02 A6 */ mflr r0
/* 80057D10 00054C50  90 01 00 14 */ stw r0, 0x14(r1)
/* 80057D14 00054C54  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80057D18 00054C58  93 C1 00 08 */ stw r30, 8(r1)
/* 80057D1C 00054C5C  7C 7E 1B 79 */ or. r30, r3, r3
/* 80057D20 00054C60  7C 9F 23 78 */ mr r31, r4
/* 80057D24 00054C64  41 82 00 4C */ beq lbl_80057D70
/* 80057D28 00054C68  3C 60 80 3B */ lis r3, lbl_803A9AD4@ha
/* 80057D2C 00054C6C  38 03 9A D4 */ addi r0, r3, lbl_803A9AD4@l
/* 80057D30 00054C70  90 1E 00 00 */ stw r0, 0(r30)
/* 80057D34 00054C74  38 7E 00 18 */ addi r3, r30, 0x18
/*.global EF_MUD_EFF_NS_dtor*/
/* 80057D38 00054C78  3C 80 80 05 */ lis r4, EF_MUD_EFF_NS_dtor@ha
/*.global EF_MUD_EFF_NS_dtor*/
/* 80057D3C 00054C7C  38 84 6F FC */ addi r4, r4, EF_MUD_EFF_NS_dtor@l
/* 80057D40 00054C80  38 A0 00 48 */ li r5, 0x48
/* 80057D44 00054C84  38 C0 00 64 */ li r6, 0x64
/* 80057D48 00054C88  48 30 9F A1 */ bl func_80361CE8
/* 80057D4C 00054C8C  28 1E 00 00 */ cmplwi r30, 0
/* 80057D50 00054C90  41 82 00 10 */ beq lbl_80057D60
/* 80057D54 00054C94  3C 60 80 3D */ lis r3, lbl_803CD97C@ha
/* 80057D58 00054C98  38 03 D9 7C */ addi r0, r3, lbl_803CD97C@l
/* 80057D5C 00054C9C  90 1E 00 00 */ stw r0, 0(r30)
lbl_80057D60:
/* 80057D60 00054CA0  7F E0 07 35 */ extsh. r0, r31
/* 80057D64 00054CA4  40 81 00 0C */ ble lbl_80057D70
/* 80057D68 00054CA8  7F C3 F3 78 */ mr r3, r30
/* 80057D6C 00054CAC  48 27 6F D1 */ bl __dl__FPv
lbl_80057D70:
/* 80057D70 00054CB0  7F C3 F3 78 */ mr r3, r30
/* 80057D74 00054CB4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80057D78 00054CB8  83 C1 00 08 */ lwz r30, 8(r1)
/* 80057D7C 00054CBC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80057D80 00054CC0  7C 08 03 A6 */ mtlr r0
/* 80057D84 00054CC4  38 21 00 10 */ addi r1, r1, 0x10
/* 80057D88 00054CC8  4E 80 00 20 */ blr