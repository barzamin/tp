/* 80056D10 00053C50  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80056D14 00053C54  7C 08 02 A6 */ mflr r0
/* 80056D18 00053C58  90 01 00 14 */ stw r0, 0x14(r1)
/* 80056D1C 00053C5C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80056D20 00053C60  7C 7F 1B 78 */ mr r31, r3
/* 80056D24 00053C64  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80056D28 00053C68  38 63 4A C8 */ addi r3, r3, lbl_80434AC8@l
/* 80056D2C 00053C6C  38 9F 00 10 */ addi r4, r31, 0x10
/* 80056D30 00053C70  48 00 F3 19 */ bl dKyr_drawSibuki
/* 80056D34 00053C74  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80056D38 00053C78  38 63 4A C8 */ addi r3, r3, lbl_80434AC8@l
/* 80056D3C 00053C7C  38 9F 00 10 */ addi r4, r31, 0x10
/* 80056D40 00053C80  48 00 E8 ED */ bl dKyr_drawRain
/* 80056D44 00053C84  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80056D48 00053C88  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80056D4C 00053C8C  7C 08 03 A6 */ mtlr r0
/* 80056D50 00053C90  38 21 00 10 */ addi r1, r1, 0x10
/* 80056D54 00053C94  4E 80 00 20 */ blr