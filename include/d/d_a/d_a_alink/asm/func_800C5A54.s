/* 800C5A54 000C2994  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C5A58 000C2998  7C 08 02 A6 */ mflr r0
/* 800C5A5C 000C299C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C5A60 000C29A0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C5A64 000C29A4  93 C1 00 08 */ stw r30, 8(r1)
/* 800C5A68 000C29A8  7C 7E 1B 78 */ mr r30, r3
/* 800C5A6C 000C29AC  7C 9F 23 78 */ mr r31, r4
/* 800C5A70 000C29B0  38 80 00 13 */ li r4, 0x13
/* 800C5A74 000C29B4  4B FF C4 F9 */ bl daAlink_c_NS_commonProcInit
/* 800C5A78 000C29B8  7F C3 F3 78 */ mr r3, r30
/* 800C5A7C 000C29BC  38 80 00 27 */ li r4, 0x27
/* 800C5A80 000C29C0  3C A0 80 39 */ lis r5, lbl_8038D82C@ha
/* 800C5A84 000C29C4  38 A5 D8 2C */ addi r5, r5, lbl_8038D82C@l
/* 800C5A88 000C29C8  38 A5 00 14 */ addi r5, r5, 0x14
/* 800C5A8C 000C29CC  4B FE 76 69 */ bl daAlink_c_NS_setSingleAnimeParam
/* 800C5A90 000C29D0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C5A94 000C29D4  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800C5A98 000C29D8  38 00 00 04 */ li r0, 4
/* 800C5A9C 000C29DC  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
/* 800C5AA0 000C29E0  7F C3 F3 78 */ mr r3, r30
/* 800C5AA4 000C29E4  38 80 00 02 */ li r4, 2
/* 800C5AA8 000C29E8  48 05 B7 19 */ bl daAlink_c_NS_setFootEffectProcType
/* 800C5AAC 000C29EC  80 1E 05 84 */ lwz r0, 0x584(r30)
/* 800C5AB0 000C29F0  60 00 00 30 */ ori r0, r0, 0x30
/* 800C5AB4 000C29F4  90 1E 05 84 */ stw r0, 0x584(r30)
/* 800C5AB8 000C29F8  93 FE 31 98 */ stw r31, 0x3198(r30)
/* 800C5ABC 000C29FC  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800C5AC0 000C2A00  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800C5AC4 000C2A04  38 00 00 0A */ li r0, 0xa
/* 800C5AC8 000C2A08  98 1E 2F CC */ stb r0, 0x2fcc(r30)
/* 800C5ACC 000C2A0C  7F C3 F3 78 */ mr r3, r30
/* 800C5AD0 000C2A10  4B FF 01 95 */ bl daAlink_c_NS_setStepLandVibration
/* 800C5AD4 000C2A14  38 60 00 01 */ li r3, 1
/* 800C5AD8 000C2A18  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C5ADC 000C2A1C  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C5AE0 000C2A20  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C5AE4 000C2A24  7C 08 03 A6 */ mtlr r0
/* 800C5AE8 000C2A28  38 21 00 10 */ addi r1, r1, 0x10
/* 800C5AEC 000C2A2C  4E 80 00 20 */ blr