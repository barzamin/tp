/* 802C1FFC 002BEF3C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 802C2000 002BEF40  7C 08 02 A6 */ mflr r0
/* 802C2004 002BEF44  90 01 00 34 */ stw r0, 0x34(r1)
/* 802C2008 002BEF48  39 61 00 30 */ addi r11, r1, 0x30
/* 802C200C 002BEF4C  48 0A 01 B9 */ bl _savegpr_23
/* 802C2010 002BEF50  7C 77 1B 78 */ mr r23, r3
/* 802C2014 002BEF54  7C D8 33 78 */ mr r24, r6
/* 802C2018 002BEF58  7C F9 3B 78 */ mr r25, r7
/* 802C201C 002BEF5C  7D 1A 43 78 */ mr r26, r8
/* 802C2020 002BEF60  7D 3B 4B 78 */ mr r27, r9
/* 802C2024 002BEF64  88 E1 00 3B */ lbz r7, 0x3b(r1)
/* 802C2028 002BEF68  8B 81 00 3F */ lbz r28, 0x3f(r1)
/* 802C202C 002BEF6C  8B A1 00 43 */ lbz r29, 0x43(r1)
/* 802C2030 002BEF70  8B C1 00 47 */ lbz r30, 0x47(r1)
/* 802C2034 002BEF74  8B E1 00 4B */ lbz r31, 0x4b(r1)
/* 802C2038 002BEF78  7D 46 53 78 */ mr r6, r10
/* 802C203C 002BEF7C  4B FF E4 F5 */ bl Z2Creature_NS_init
/* 802C2040 002BEF80  28 18 00 00 */ cmplwi r24, 0
/* 802C2044 002BEF84  41 82 00 20 */ beq lbl_802C2064
/* 802C2048 002BEF88  38 77 00 A4 */ addi r3, r23, 0xa4
/* 802C204C 002BEF8C  7F 04 C3 78 */ mr r4, r24
/* 802C2050 002BEF90  7F 85 E3 78 */ mr r5, r28
/* 802C2054 002BEF94  81 97 00 B4 */ lwz r12, 0xb4(r23)
/* 802C2058 002BEF98  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 802C205C 002BEF9C  7D 89 03 A6 */ mtctr r12
/* 802C2060 002BEFA0  4E 80 04 21 */ bctrl
lbl_802C2064:
/* 802C2064 002BEFA4  28 19 00 00 */ cmplwi r25, 0
/* 802C2068 002BEFA8  41 82 00 20 */ beq lbl_802C2088
/* 802C206C 002BEFAC  38 77 00 C4 */ addi r3, r23, 0xc4
/* 802C2070 002BEFB0  7F 24 CB 78 */ mr r4, r25
/* 802C2074 002BEFB4  7F A5 EB 78 */ mr r5, r29
/* 802C2078 002BEFB8  81 97 00 D4 */ lwz r12, 0xd4(r23)
/* 802C207C 002BEFBC  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 802C2080 002BEFC0  7D 89 03 A6 */ mtctr r12
/* 802C2084 002BEFC4  4E 80 04 21 */ bctrl
lbl_802C2088:
/* 802C2088 002BEFC8  28 1A 00 00 */ cmplwi r26, 0
/* 802C208C 002BEFCC  41 82 00 20 */ beq lbl_802C20AC
/* 802C2090 002BEFD0  38 77 00 E4 */ addi r3, r23, 0xe4
/* 802C2094 002BEFD4  7F 44 D3 78 */ mr r4, r26
/* 802C2098 002BEFD8  7F C5 F3 78 */ mr r5, r30
/* 802C209C 002BEFDC  81 97 00 F4 */ lwz r12, 0xf4(r23)
/* 802C20A0 002BEFE0  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 802C20A4 002BEFE4  7D 89 03 A6 */ mtctr r12
/* 802C20A8 002BEFE8  4E 80 04 21 */ bctrl
lbl_802C20AC:
/* 802C20AC 002BEFEC  28 1B 00 00 */ cmplwi r27, 0
/* 802C20B0 002BEFF0  41 82 00 20 */ beq lbl_802C20D0
/* 802C20B4 002BEFF4  38 77 01 04 */ addi r3, r23, 0x104
/* 802C20B8 002BEFF8  7F 64 DB 78 */ mr r4, r27
/* 802C20BC 002BEFFC  7F E5 FB 78 */ mr r5, r31
/* 802C20C0 002BF000  81 97 01 14 */ lwz r12, 0x114(r23)
/* 802C20C4 002BF004  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 802C20C8 002BF008  7D 89 03 A6 */ mtctr r12
/* 802C20CC 002BF00C  4E 80 04 21 */ bctrl
lbl_802C20D0:
/* 802C20D0 002BF010  39 61 00 30 */ addi r11, r1, 0x30
/* 802C20D4 002BF014  48 0A 01 3D */ bl _restgpr_23
/* 802C20D8 002BF018  80 01 00 34 */ lwz r0, 0x34(r1)
/* 802C20DC 002BF01C  7C 08 03 A6 */ mtlr r0
/* 802C20E0 002BF020  38 21 00 30 */ addi r1, r1, 0x30
/* 802C20E4 002BF024  4E 80 00 20 */ blr