/* 80267DBC 00264CFC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80267DC0 00264D00  7C 08 02 A6 */ mflr r0
/* 80267DC4 00264D04  90 01 00 14 */ stw r0, 0x14(r1)
/* 80267DC8 00264D08  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80267DCC 00264D0C  93 C1 00 08 */ stw r30, 8(r1)
/* 80267DD0 00264D10  7C 7E 1B 79 */ or. r30, r3, r3
/* 80267DD4 00264D14  7C 9F 23 78 */ mr r31, r4
/* 80267DD8 00264D18  41 82 00 54 */ beq lbl_80267E2C
/* 80267DDC 00264D1C  3C 60 80 3C */ lis r3, lbl_803C3FA8@ha
/* 80267DE0 00264D20  38 63 3F A8 */ addi r3, r3, lbl_803C3FA8@l
/* 80267DE4 00264D24  90 7E 00 10 */ stw r3, 0x10(r30)
/* 80267DE8 00264D28  38 03 00 0C */ addi r0, r3, 0xc
/* 80267DEC 00264D2C  90 1E 00 20 */ stw r0, 0x20(r30)
/* 80267DF0 00264D30  34 1E 00 24 */ addic. r0, r30, 0x24
/* 80267DF4 00264D34  41 82 00 10 */ beq lbl_80267E04
/* 80267DF8 00264D38  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 80267DFC 00264D3C  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 80267E00 00264D40  90 1E 00 3C */ stw r0, 0x3c(r30)
lbl_80267E04:
/* 80267E04 00264D44  38 7E 00 14 */ addi r3, r30, 0x14
/* 80267E08 00264D48  38 80 00 00 */ li r4, 0
/* 80267E0C 00264D4C  48 00 02 A5 */ bl __dt__13cBgS_PolyInfoFv
/* 80267E10 00264D50  7F C3 F3 78 */ mr r3, r30
/* 80267E14 00264D54  38 80 00 00 */ li r4, 0
/* 80267E18 00264D58  4B FF FD 59 */ bl __dt__8cBgS_ChkFv
/* 80267E1C 00264D5C  7F E0 07 35 */ extsh. r0, r31
/* 80267E20 00264D60  40 81 00 0C */ ble lbl_80267E2C
/* 80267E24 00264D64  7F C3 F3 78 */ mr r3, r30
/* 80267E28 00264D68  48 06 6F 15 */ bl __dl__FPv
lbl_80267E2C:
/* 80267E2C 00264D6C  7F C3 F3 78 */ mr r3, r30
/* 80267E30 00264D70  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80267E34 00264D74  83 C1 00 08 */ lwz r30, 8(r1)
/* 80267E38 00264D78  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80267E3C 00264D7C  7C 08 03 A6 */ mtlr r0
/* 80267E40 00264D80  38 21 00 10 */ addi r1, r1, 0x10
/* 80267E44 00264D84  4E 80 00 20 */ blr