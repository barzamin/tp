/* 8021EA14 0021B954  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8021EA18 0021B958  7C 08 02 A6 */ mflr r0
/* 8021EA1C 0021B95C  90 01 00 34 */ stw r0, 0x34(r1)
/* 8021EA20 0021B960  39 61 00 30 */ addi r11, r1, 0x30
/* 8021EA24 0021B964  48 14 37 A9 */ bl _savegpr_25
/* 8021EA28 0021B968  7C 7F 1B 78 */ mr r31, r3
/* 8021EA2C 0021B96C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021EA30 0021B970  3B 63 61 C0 */ addi r27, r3, g_dComIfG_gameInfo@l
/* 8021EA34 0021B974  38 7B 4E 20 */ addi r3, r27, 0x4e20
/* 8021EA38 0021B978  81 9B 4E 20 */ lwz r12, 0x4e20(r27)
/* 8021EA3C 0021B97C  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 8021EA40 0021B980  7D 89 03 A6 */ mtctr r12
/* 8021EA44 0021B984  4E 80 04 21 */ bctrl
/* 8021EA48 0021B988  A0 03 00 0A */ lhz r0, 0xa(r3)
/* 8021EA4C 0021B98C  54 00 07 7E */ clrlwi r0, r0, 0x1d
/* 8021EA50 0021B990  2C 00 00 01 */ cmpwi r0, 1
/* 8021EA54 0021B994  40 82 00 1C */ bne lbl_8021EA70
/* 8021EA58 0021B998  3C 60 00 06 */ lis r3, 0x0005A400@ha
/* 8021EA5C 0021B99C  38 63 A4 00 */ addi r3, r3, 0x0005A400@l
/* 8021EA60 0021B9A0  38 80 00 00 */ li r4, 0
/* 8021EA64 0021B9A4  4B E0 19 39 */ bl fopMsgM_createExpHeap
/* 8021EA68 0021B9A8  90 7F 01 00 */ stw r3, 0x100(r31)
/* 8021EA6C 0021B9AC  48 00 00 18 */ b lbl_8021EA84
lbl_8021EA70:
/* 8021EA70 0021B9B0  3C 60 00 06 */ lis r3, 0x00060800@ha
/* 8021EA74 0021B9B4  38 63 08 00 */ addi r3, r3, 0x00060800@l
/* 8021EA78 0021B9B8  38 80 00 00 */ li r4, 0
/* 8021EA7C 0021B9BC  4B E0 19 21 */ bl fopMsgM_createExpHeap
/* 8021EA80 0021B9C0  90 7F 01 00 */ stw r3, 0x100(r31)
lbl_8021EA84:
/* 8021EA84 0021B9C4  80 7F 01 00 */ lwz r3, 0x100(r31)
/* 8021EA88 0021B9C8  4B DF 07 45 */ bl mDoExt_setCurrentHeap
/* 8021EA8C 0021B9CC  7C 7E 1B 78 */ mr r30, r3
/* 8021EA90 0021B9D0  80 7F 01 00 */ lwz r3, 0x100(r31)
/* 8021EA94 0021B9D4  48 0A FC F1 */ bl getTotalFreeSize__7JKRHeapCFv
/* 8021EA98 0021B9D8  38 7B 4E 00 */ addi r3, r27, 0x4e00
/* 8021EA9C 0021B9DC  3C 80 80 3A */ lis r4, lbl_80399338@ha
/* 8021EAA0 0021B9E0  38 84 93 38 */ addi r4, r4, lbl_80399338@l
/* 8021EAA4 0021B9E4  48 14 9E F1 */ bl strcmp
/* 8021EAA8 0021B9E8  2C 03 00 00 */ cmpwi r3, 0
/* 8021EAAC 0021B9EC  40 82 00 18 */ bne lbl_8021EAC4
/* 8021EAB0 0021B9F0  38 00 00 00 */ li r0, 0
/* 8021EAB4 0021B9F4  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8021EAB8 0021B9F8  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8021EABC 0021B9FC  98 03 00 BC */ stb r0, 0xbc(r3)
/* 8021EAC0 0021BA00  98 03 00 BB */ stb r0, 0xbb(r3)
lbl_8021EAC4:
/* 8021EAC4 0021BA04  38 60 00 00 */ li r3, 0
/* 8021EAC8 0021BA08  90 7F 01 28 */ stw r3, 0x128(r31)
/* 8021EACC 0021BA0C  80 1F 01 28 */ lwz r0, 0x128(r31)
/* 8021EAD0 0021BA10  90 1F 01 2C */ stw r0, 0x12c(r31)
/* 8021EAD4 0021BA14  90 7F 01 24 */ stw r3, 0x124(r31)
/* 8021EAD8 0021BA18  98 7F 01 E5 */ stb r3, 0x1e5(r31)
/* 8021EADC 0021BA1C  B0 7F 01 B6 */ sth r3, 0x1b6(r31)
/* 8021EAE0 0021BA20  98 7F 01 E6 */ stb r3, 0x1e6(r31)
/* 8021EAE4 0021BA24  98 7F 01 E7 */ stb r3, 0x1e7(r31)
/* 8021EAE8 0021BA28  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021EAEC 0021BA2C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021EAF0 0021BA30  3B A3 00 F8 */ addi r29, r3, 0xf8
/* 8021EAF4 0021BA34  88 03 00 F8 */ lbz r0, 0xf8(r3)
/* 8021EAF8 0021BA38  98 1F 01 FB */ stb r0, 0x1fb(r31)
/* 8021EAFC 0021BA3C  3B 83 00 EC */ addi r28, r3, 0xec
/* 8021EB00 0021BA40  88 03 00 EC */ lbz r0, 0xec(r3)
/* 8021EB04 0021BA44  98 1F 01 DA */ stb r0, 0x1da(r31)
/* 8021EB08 0021BA48  38 00 00 32 */ li r0, 0x32
/* 8021EB0C 0021BA4C  98 1F 01 FC */ stb r0, 0x1fc(r31)
/* 8021EB10 0021BA50  88 03 00 F4 */ lbz r0, 0xf4(r3)
/* 8021EB14 0021BA54  98 1F 01 DB */ stb r0, 0x1db(r31)
/* 8021EB18 0021BA58  3B 20 00 00 */ li r25, 0
/* 8021EB1C 0021BA5C  3B 63 00 9C */ addi r27, r3, 0x9c
lbl_8021EB20:
/* 8021EB20 0021BA60  7F 63 DB 78 */ mr r3, r27
/* 8021EB24 0021BA64  38 19 00 0F */ addi r0, r25, 0xf
/* 8021EB28 0021BA68  54 04 06 3E */ clrlwi r4, r0, 0x18
/* 8021EB2C 0021BA6C  38 A0 00 01 */ li r5, 1
/* 8021EB30 0021BA70  4B E1 45 01 */ bl getItem__17dSv_player_item_cCFib
/* 8021EB34 0021BA74  7C 64 1B 78 */ mr r4, r3
/* 8021EB38 0021BA78  7F A3 EB 78 */ mr r3, r29
/* 8021EB3C 0021BA7C  4B E1 55 BD */ bl getBombNum__21dSv_player_item_max_cCFUc
/* 8021EB40 0021BA80  7F 5F CA 14 */ add r26, r31, r25
/* 8021EB44 0021BA84  98 7A 01 F6 */ stb r3, 0x1f6(r26)
/* 8021EB48 0021BA88  7F 83 E3 78 */ mr r3, r28
/* 8021EB4C 0021BA8C  57 24 06 3E */ clrlwi r4, r25, 0x18
/* 8021EB50 0021BA90  4B E1 54 2D */ bl getBombNum__24dSv_player_item_record_cCFUc
/* 8021EB54 0021BA94  98 7A 01 F3 */ stb r3, 0x1f3(r26)
/* 8021EB58 0021BA98  3B 39 00 01 */ addi r25, r25, 1
/* 8021EB5C 0021BA9C  2C 19 00 03 */ cmpwi r25, 3
/* 8021EB60 0021BAA0  41 80 FF C0 */ blt lbl_8021EB20
/* 8021EB64 0021BAA4  3B 20 00 00 */ li r25, 0
/* 8021EB68 0021BAA8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021EB6C 0021BAAC  3B 63 61 C0 */ addi r27, r3, g_dComIfG_gameInfo@l
lbl_8021EB70:
/* 8021EB70 0021BAB0  7F 63 DB 78 */ mr r3, r27
/* 8021EB74 0021BAB4  7F 24 CB 78 */ mr r4, r25
/* 8021EB78 0021BAB8  4B E1 3E E5 */ bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8021EB7C 0021BABC  38 19 01 F9 */ addi r0, r25, 0x1f9
/* 8021EB80 0021BAC0  7C 7F 01 AE */ stbx r3, r31, r0
/* 8021EB84 0021BAC4  3B 39 00 01 */ addi r25, r25, 1
/* 8021EB88 0021BAC8  2C 19 00 02 */ cmpwi r25, 2
/* 8021EB8C 0021BACC  41 80 FF E4 */ blt lbl_8021EB70
/* 8021EB90 0021BAD0  3B 20 00 00 */ li r25, 0
lbl_8021EB94:
/* 8021EB94 0021BAD4  7F 83 E3 78 */ mr r3, r28
/* 8021EB98 0021BAD8  57 24 06 3E */ clrlwi r4, r25, 0x18
/* 8021EB9C 0021BADC  4B E1 54 95 */ bl getBottleNum__24dSv_player_item_record_cCFUc
/* 8021EBA0 0021BAE0  38 19 01 EF */ addi r0, r25, 0x1ef
/* 8021EBA4 0021BAE4  7C 7F 01 AE */ stbx r3, r31, r0
/* 8021EBA8 0021BAE8  3B 39 00 01 */ addi r25, r25, 1
/* 8021EBAC 0021BAEC  2C 19 00 04 */ cmpwi r25, 4
/* 8021EBB0 0021BAF0  41 80 FF E4 */ blt lbl_8021EB94
/* 8021EBB4 0021BAF4  38 80 00 00 */ li r4, 0
/* 8021EBB8 0021BAF8  98 9F 01 E8 */ stb r4, 0x1e8(r31)
/* 8021EBBC 0021BAFC  98 9F 01 E9 */ stb r4, 0x1e9(r31)
/* 8021EBC0 0021BB00  98 9F 01 EA */ stb r4, 0x1ea(r31)
/* 8021EBC4 0021BB04  98 9F 01 EB */ stb r4, 0x1eb(r31)
/* 8021EBC8 0021BB08  7C 83 23 78 */ mr r3, r4
/* 8021EBCC 0021BB0C  38 00 00 05 */ li r0, 5
/* 8021EBD0 0021BB10  7C 09 03 A6 */ mtctr r0
lbl_8021EBD4:
/* 8021EBD4 0021BB14  38 03 01 B8 */ addi r0, r3, 0x1b8
/* 8021EBD8 0021BB18  7C 9F 03 2E */ sthx r4, r31, r0
/* 8021EBDC 0021BB1C  38 63 00 02 */ addi r3, r3, 2
/* 8021EBE0 0021BB20  42 00 FF F4 */ bdnz lbl_8021EBD4
/* 8021EBE4 0021BB24  38 00 00 00 */ li r0, 0
/* 8021EBE8 0021BB28  98 1F 01 EC */ stb r0, 0x1ec(r31)
/* 8021EBEC 0021BB2C  98 1F 01 ED */ stb r0, 0x1ed(r31)
/* 8021EBF0 0021BB30  98 1F 01 EE */ stb r0, 0x1ee(r31)
/* 8021EBF4 0021BB34  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021EBF8 0021BB38  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 8021EBFC 0021BB3C  A0 04 00 02 */ lhz r0, 2(r4)
/* 8021EC00 0021BB40  B0 1F 01 92 */ sth r0, 0x192(r31)
/* 8021EC04 0021BB44  A8 1F 01 92 */ lha r0, 0x192(r31)
/* 8021EC08 0021BB48  54 00 06 3E */ clrlwi r0, r0, 0x18
/* 8021EC0C 0021BB4C  B0 04 5E 16 */ sth r0, 0x5e16(r4)
/* 8021EC10 0021BB50  A0 04 00 00 */ lhz r0, 0(r4)
/* 8021EC14 0021BB54  B0 1F 01 94 */ sth r0, 0x194(r31)
/* 8021EC18 0021BB58  88 04 00 1B */ lbz r0, 0x1b(r4)
/* 8021EC1C 0021BB5C  B0 1F 01 96 */ sth r0, 0x196(r31)
/* 8021EC20 0021BB60  A8 1F 01 96 */ lha r0, 0x196(r31)
/* 8021EC24 0021BB64  B0 04 5D CE */ sth r0, 0x5dce(r4)
/* 8021EC28 0021BB68  88 04 00 1A */ lbz r0, 0x1a(r4)
/* 8021EC2C 0021BB6C  B0 1F 01 98 */ sth r0, 0x198(r31)
/* 8021EC30 0021BB70  A0 04 00 08 */ lhz r0, 8(r4)
/* 8021EC34 0021BB74  7C 00 07 34 */ extsh r0, r0
/* 8021EC38 0021BB78  90 1F 01 9C */ stw r0, 0x19c(r31)
/* 8021EC3C 0021BB7C  80 1F 01 9C */ lwz r0, 0x19c(r31)
/* 8021EC40 0021BB80  90 04 5D D8 */ stw r0, 0x5dd8(r4)
/* 8021EC44 0021BB84  A0 04 00 06 */ lhz r0, 6(r4)
/* 8021EC48 0021BB88  7C 00 07 34 */ extsh r0, r0
/* 8021EC4C 0021BB8C  90 1F 01 A0 */ stw r0, 0x1a0(r31)
/* 8021EC50 0021BB90  80 04 5D E0 */ lwz r0, 0x5de0(r4)
/* 8021EC54 0021BB94  90 1F 01 A4 */ stw r0, 0x1a4(r31)
/* 8021EC58 0021BB98  80 1F 01 A4 */ lwz r0, 0x1a4(r31)
/* 8021EC5C 0021BB9C  90 04 5D E4 */ stw r0, 0x5de4(r4)
/* 8021EC60 0021BBA0  80 04 5D E8 */ lwz r0, 0x5de8(r4)
/* 8021EC64 0021BBA4  90 1F 01 A8 */ stw r0, 0x1a8(r31)
/* 8021EC68 0021BBA8  C0 02 AF C8 */ lfs f0, lbl_804549C8-_SDA2_BASE_(r2)
/* 8021EC6C 0021BBAC  D0 1F 01 30 */ stfs f0, 0x130(r31)
/* 8021EC70 0021BBB0  38 64 01 14 */ addi r3, r4, 0x114
/* 8021EC74 0021BBB4  88 84 4E 0C */ lbz r4, 0x4e0c(r4)
/* 8021EC78 0021BBB8  4B E1 56 C9 */ bl getLightDropNum__16dSv_light_drop_cCFUc
/* 8021EC7C 0021BBBC  98 7F 01 C2 */ stb r3, 0x1c2(r31)
/* 8021EC80 0021BBC0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021EC84 0021BBC4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021EC88 0021BBC8  88 03 5E A1 */ lbz r0, 0x5ea1(r3)
/* 8021EC8C 0021BBCC  98 1F 01 C3 */ stb r0, 0x1c3(r31)
/* 8021EC90 0021BBD0  A0 03 00 04 */ lhz r0, 4(r3)
/* 8021EC94 0021BBD4  B0 1F 01 B0 */ sth r0, 0x1b0(r31)
/* 8021EC98 0021BBD8  88 03 09 74 */ lbz r0, 0x974(r3)
/* 8021EC9C 0021BBDC  B0 1F 01 B2 */ sth r0, 0x1b2(r31)
/* 8021ECA0 0021BBE0  88 03 5E 24 */ lbz r0, 0x5e24(r3)
/* 8021ECA4 0021BBE4  98 1F 01 C4 */ stb r0, 0x1c4(r31)
/* 8021ECA8 0021BBE8  88 03 5E 4A */ lbz r0, 0x5e4a(r3)
/* 8021ECAC 0021BBEC  54 00 FF FE */ rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ECB0 0021BBF0  98 1F 01 DC */ stb r0, 0x1dc(r31)
/* 8021ECB4 0021BBF4  38 60 00 00 */ li r3, 0
/* 8021ECB8 0021BBF8  C0 02 AF C8 */ lfs f0, lbl_804549C8-_SDA2_BASE_(r2)
/* 8021ECBC 0021BBFC  38 00 00 02 */ li r0, 2
/* 8021ECC0 0021BC00  7C 09 03 A6 */ mtctr r0
lbl_8021ECC4:
/* 8021ECC4 0021BC04  7C 9F 1A 14 */ add r4, r31, r3
/* 8021ECC8 0021BC08  D0 04 01 34 */ stfs f0, 0x134(r4)
/* 8021ECCC 0021BC0C  D0 04 01 3C */ stfs f0, 0x13c(r4)
/* 8021ECD0 0021BC10  38 63 00 04 */ addi r3, r3, 4
/* 8021ECD4 0021BC14  42 00 FF F0 */ bdnz lbl_8021ECC4
/* 8021ECD8 0021BC18  C0 02 AF CC */ lfs f0, lbl_804549CC-_SDA2_BASE_(r2)
/* 8021ECDC 0021BC1C  D0 1F 01 44 */ stfs f0, 0x144(r31)
/* 8021ECE0 0021BC20  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021ECE4 0021BC24  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021ECE8 0021BC28  88 03 5E 1D */ lbz r0, 0x5e1d(r3)
/* 8021ECEC 0021BC2C  98 1F 01 C5 */ stb r0, 0x1c5(r31)
/* 8021ECF0 0021BC30  38 00 00 00 */ li r0, 0
/* 8021ECF4 0021BC34  98 1F 01 C6 */ stb r0, 0x1c6(r31)
/* 8021ECF8 0021BC38  88 03 5E 43 */ lbz r0, 0x5e43(r3)
/* 8021ECFC 0021BC3C  54 00 FF FE */ rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ED00 0021BC40  98 1F 01 DD */ stb r0, 0x1dd(r31)
/* 8021ED04 0021BC44  38 60 00 00 */ li r3, 0
/* 8021ED08 0021BC48  C0 02 AF C8 */ lfs f0, lbl_804549C8-_SDA2_BASE_(r2)
/* 8021ED0C 0021BC4C  38 00 00 02 */ li r0, 2
/* 8021ED10 0021BC50  7C 09 03 A6 */ mtctr r0
lbl_8021ED14:
/* 8021ED14 0021BC54  7C 9F 1A 14 */ add r4, r31, r3
/* 8021ED18 0021BC58  D0 04 01 48 */ stfs f0, 0x148(r4)
/* 8021ED1C 0021BC5C  D0 04 01 50 */ stfs f0, 0x150(r4)
/* 8021ED20 0021BC60  38 63 00 04 */ addi r3, r3, 4
/* 8021ED24 0021BC64  42 00 FF F0 */ bdnz lbl_8021ED14
/* 8021ED28 0021BC68  C0 02 AF CC */ lfs f0, lbl_804549CC-_SDA2_BASE_(r2)
/* 8021ED2C 0021BC6C  D0 1F 01 58 */ stfs f0, 0x158(r31)
/* 8021ED30 0021BC70  38 80 00 00 */ li r4, 0
/* 8021ED34 0021BC74  98 9F 01 E4 */ stb r4, 0x1e4(r31)
/* 8021ED38 0021BC78  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021ED3C 0021BC7C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021ED40 0021BC80  88 03 00 14 */ lbz r0, 0x14(r3)
/* 8021ED44 0021BC84  98 1F 01 E2 */ stb r0, 0x1e2(r31)
/* 8021ED48 0021BC88  98 9F 01 E3 */ stb r4, 0x1e3(r31)
/* 8021ED4C 0021BC8C  98 9F 01 FE */ stb r4, 0x1fe(r31)
/* 8021ED50 0021BC90  98 9F 01 FD */ stb r4, 0x1fd(r31)
/* 8021ED54 0021BC94  98 9F 01 FF */ stb r4, 0x1ff(r31)
/* 8021ED58 0021BC98  98 9F 02 00 */ stb r4, 0x200(r31)
/* 8021ED5C 0021BC9C  98 9F 02 01 */ stb r4, 0x201(r31)
/* 8021ED60 0021BCA0  88 03 00 16 */ lbz r0, 0x16(r3)
/* 8021ED64 0021BCA4  98 1F 01 C7 */ stb r0, 0x1c7(r31)
/* 8021ED68 0021BCA8  88 03 5E 1C */ lbz r0, 0x5e1c(r3)
/* 8021ED6C 0021BCAC  98 1F 01 C8 */ stb r0, 0x1c8(r31)
/* 8021ED70 0021BCB0  88 03 5E 42 */ lbz r0, 0x5e42(r3)
/* 8021ED74 0021BCB4  54 00 FF FE */ rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ED78 0021BCB8  98 1F 01 DE */ stb r0, 0x1de(r31)
/* 8021ED7C 0021BCBC  88 03 5E 5E */ lbz r0, 0x5e5e(r3)
/* 8021ED80 0021BCC0  54 00 FF FE */ rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ED84 0021BCC4  98 1F 01 DF */ stb r0, 0x1df(r31)
/* 8021ED88 0021BCC8  88 03 5E 62 */ lbz r0, 0x5e62(r3)
/* 8021ED8C 0021BCCC  54 00 FF FE */ rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ED90 0021BCD0  98 1F 01 E0 */ stb r0, 0x1e0(r31)
/* 8021ED94 0021BCD4  3B 20 00 00 */ li r25, 0
lbl_8021ED98:
/* 8021ED98 0021BCD8  7F 23 CB 78 */ mr r3, r25
/* 8021ED9C 0021BCDC  4B E0 F0 59 */ bl dComIfGp_setSelectItem
/* 8021EDA0 0021BCE0  3B 39 00 01 */ addi r25, r25, 1
/* 8021EDA4 0021BCE4  2C 19 00 02 */ cmpwi r25, 2
/* 8021EDA8 0021BCE8  41 80 FF F0 */ blt lbl_8021ED98
/* 8021EDAC 0021BCEC  38 60 00 00 */ li r3, 0
/* 8021EDB0 0021BCF0  4B E0 F1 6D */ bl dComIfGp_getSelectItem
/* 8021EDB4 0021BCF4  98 7F 01 D2 */ stb r3, 0x1d2(r31)
/* 8021EDB8 0021BCF8  38 60 00 01 */ li r3, 1
/* 8021EDBC 0021BCFC  4B E0 F1 61 */ bl dComIfGp_getSelectItem
/* 8021EDC0 0021BD00  98 7F 01 D4 */ stb r3, 0x1d4(r31)
/* 8021EDC4 0021BD04  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021EDC8 0021BD08  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021EDCC 0021BD0C  88 03 5E 5C */ lbz r0, 0x5e5c(r3)
/* 8021EDD0 0021BD10  98 1F 01 D3 */ stb r0, 0x1d3(r31)
/* 8021EDD4 0021BD14  88 03 5E 60 */ lbz r0, 0x5e60(r3)
/* 8021EDD8 0021BD18  98 1F 01 D5 */ stb r0, 0x1d5(r31)
/* 8021EDDC 0021BD1C  C0 02 AF C8 */ lfs f0, lbl_804549C8-_SDA2_BASE_(r2)
/* 8021EDE0 0021BD20  D0 1F 01 88 */ stfs f0, 0x188(r31)
/* 8021EDE4 0021BD24  D0 1F 01 8C */ stfs f0, 0x18c(r31)
/* 8021EDE8 0021BD28  3B 20 00 00 */ li r25, 0
/* 8021EDEC 0021BD2C  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8021EDF0 0021BD30  3B 63 01 88 */ addi r27, r3, lbl_80430188@l
lbl_8021EDF4:
/* 8021EDF4 0021BD34  7F 63 DB 78 */ mr r3, r27
/* 8021EDF8 0021BD38  7F 24 CB 78 */ mr r4, r25
/* 8021EDFC 0021BD3C  4B FF DB 55 */ bl dMeter2Info_c_NS_isDirectUseItem
/* 8021EE00 0021BD40  7F 5F CA 14 */ add r26, r31, r25
/* 8021EE04 0021BD44  98 7A 01 D6 */ stb r3, 0x1d6(r26)
/* 8021EE08 0021BD48  7F 23 CB 78 */ mr r3, r25
/* 8021EE0C 0021BD4C  4B E0 F7 B5 */ bl dComIfGp_getSelectItemNum
/* 8021EE10 0021BD50  98 7A 01 D8 */ stb r3, 0x1d8(r26)
/* 8021EE14 0021BD54  3B 39 00 01 */ addi r25, r25, 1
/* 8021EE18 0021BD58  2C 19 00 02 */ cmpwi r25, 2
/* 8021EE1C 0021BD5C  41 80 FF D8 */ blt lbl_8021EDF4
/* 8021EE20 0021BD60  38 00 00 00 */ li r0, 0
/* 8021EE24 0021BD64  98 1F 01 E1 */ stb r0, 0x1e1(r31)
/* 8021EE28 0021BD68  B0 1F 01 B4 */ sth r0, 0x1b4(r31)
/* 8021EE2C 0021BD6C  C0 02 AF C8 */ lfs f0, lbl_804549C8-_SDA2_BASE_(r2)
/* 8021EE30 0021BD70  D0 1F 01 5C */ stfs f0, 0x15c(r31)
/* 8021EE34 0021BD74  38 60 00 00 */ li r3, 0
/* 8021EE38 0021BD78  38 00 00 04 */ li r0, 4
/* 8021EE3C 0021BD7C  7C 09 03 A6 */ mtctr r0
lbl_8021EE40:
/* 8021EE40 0021BD80  7C 9F 1A 14 */ add r4, r31, r3
/* 8021EE44 0021BD84  D0 04 01 60 */ stfs f0, 0x160(r4)
/* 8021EE48 0021BD88  D0 04 01 74 */ stfs f0, 0x174(r4)
/* 8021EE4C 0021BD8C  38 63 00 04 */ addi r3, r3, 4
/* 8021EE50 0021BD90  42 00 FF F0 */ bdnz lbl_8021EE40
/* 8021EE54 0021BD94  38 80 00 00 */ li r4, 0
/* 8021EE58 0021BD98  B0 9F 01 90 */ sth r4, 0x190(r31)
/* 8021EE5C 0021BD9C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021EE60 0021BDA0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021EE64 0021BDA4  88 03 5E 33 */ lbz r0, 0x5e33(r3)
/* 8021EE68 0021BDA8  98 1F 01 C9 */ stb r0, 0x1c9(r31)
/* 8021EE6C 0021BDAC  88 03 5E 26 */ lbz r0, 0x5e26(r3)
/* 8021EE70 0021BDB0  98 1F 01 CA */ stb r0, 0x1ca(r31)
/* 8021EE74 0021BDB4  88 03 5E 2F */ lbz r0, 0x5e2f(r3)
/* 8021EE78 0021BDB8  98 1F 01 CB */ stb r0, 0x1cb(r31)
/* 8021EE7C 0021BDBC  88 03 5E 32 */ lbz r0, 0x5e32(r3)
/* 8021EE80 0021BDC0  98 1F 01 CC */ stb r0, 0x1cc(r31)
/* 8021EE84 0021BDC4  88 03 5E 1F */ lbz r0, 0x5e1f(r3)
/* 8021EE88 0021BDC8  98 1F 01 CD */ stb r0, 0x1cd(r31)
/* 8021EE8C 0021BDCC  88 03 5E 21 */ lbz r0, 0x5e21(r3)
/* 8021EE90 0021BDD0  98 1F 01 CE */ stb r0, 0x1ce(r31)
/* 8021EE94 0021BDD4  88 03 5E 64 */ lbz r0, 0x5e64(r3)
/* 8021EE98 0021BDD8  98 1F 01 CF */ stb r0, 0x1cf(r31)
/* 8021EE9C 0021BDDC  88 03 5E 68 */ lbz r0, 0x5e68(r3)
/* 8021EEA0 0021BDE0  98 1F 01 D0 */ stb r0, 0x1d0(r31)
/* 8021EEA4 0021BDE4  88 03 5E 20 */ lbz r0, 0x5e20(r3)
/* 8021EEA8 0021BDE8  98 1F 01 D1 */ stb r0, 0x1d1(r31)
/* 8021EEAC 0021BDEC  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8021EEB0 0021BDF0  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8021EEB4 0021BDF4  A0 03 00 AE */ lhz r0, 0xae(r3)
/* 8021EEB8 0021BDF8  54 00 E7 FE */ rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 8021EEBC 0021BDFC  90 1F 01 AC */ stw r0, 0x1ac(r31)
/* 8021EEC0 0021BE00  B0 9F 01 9A */ sth r4, 0x19a(r31)
/* 8021EEC4 0021BE04  38 60 08 64 */ li r3, 0x864
/* 8021EEC8 0021BE08  48 0A FD 85 */ bl __nw__FUl
/* 8021EECC 0021BE0C  7C 60 1B 79 */ or. r0, r3, r3
/* 8021EED0 0021BE10  41 82 00 10 */ beq lbl_8021EEE0
/* 8021EED4 0021BE14  80 9F 01 00 */ lwz r4, 0x100(r31)
/* 8021EED8 0021BE18  4B FF 0B DD */ bl dMeter2Draw_c
/* 8021EEDC 0021BE1C  7C 60 1B 78 */ mr r0, r3
lbl_8021EEE0:
/* 8021EEE0 0021BE20  90 1F 01 0C */ stw r0, 0x10c(r31)
/* 8021EEE4 0021BE24  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 8021EEE8 0021BE28  4B FF 6E C1 */ bl dMeter2Draw_c_NS_getNowLightDropRateCalc
/* 8021EEEC 0021BE2C  D0 3F 01 30 */ stfs f1, 0x130(r31)
/* 8021EEF0 0021BE30  80 7F 01 00 */ lwz r3, 0x100(r31)
/* 8021EEF4 0021BE34  48 0A F8 91 */ bl getTotalFreeSize__7JKRHeapCFv
/* 8021EEF8 0021BE38  3B 20 00 00 */ li r25, 0
/* 8021EEFC 0021BE3C  3B 80 00 00 */ li r28, 0
lbl_8021EF00:
/* 8021EF00 0021BE40  80 1F 01 28 */ lwz r0, 0x128(r31)
/* 8021EF04 0021BE44  28 00 00 00 */ cmplwi r0, 0
/* 8021EF08 0021BE48  40 82 01 48 */ bne lbl_8021F050
/* 8021EF0C 0021BE4C  38 1C 01 D2 */ addi r0, r28, 0x1d2
/* 8021EF10 0021BE50  7C 1F 00 AE */ lbzx r0, r31, r0
/* 8021EF14 0021BE54  28 00 00 50 */ cmplwi r0, 0x50
/* 8021EF18 0021BE58  41 82 00 1C */ beq lbl_8021EF34
/* 8021EF1C 0021BE5C  28 00 00 70 */ cmplwi r0, 0x70
/* 8021EF20 0021BE60  41 82 00 14 */ beq lbl_8021EF34
/* 8021EF24 0021BE64  28 00 00 71 */ cmplwi r0, 0x71
/* 8021EF28 0021BE68  41 82 00 0C */ beq lbl_8021EF34
/* 8021EF2C 0021BE6C  28 00 00 72 */ cmplwi r0, 0x72
/* 8021EF30 0021BE70  40 82 00 30 */ bne lbl_8021EF60
lbl_8021EF34:
/* 8021EF34 0021BE74  7F 23 CB 78 */ mr r3, r25
/* 8021EF38 0021BE78  4B E0 F7 51 */ bl dComIfGp_getSelectItemMaxNum
/* 8021EF3C 0021BE7C  54 7B 06 3E */ clrlwi r27, r3, 0x18
/* 8021EF40 0021BE80  7F 23 CB 78 */ mr r3, r25
/* 8021EF44 0021BE84  4B E0 F6 7D */ bl dComIfGp_getSelectItemNum
/* 8021EF48 0021BE88  54 65 06 3E */ clrlwi r5, r3, 0x18
/* 8021EF4C 0021BE8C  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 8021EF50 0021BE90  57 24 06 3E */ clrlwi r4, r25, 0x18
/* 8021EF54 0021BE94  7F 66 DB 78 */ mr r6, r27
/* 8021EF58 0021BE98  4B FF BC 2D */ bl dMeter2Draw_c_NS_setItemNum
/* 8021EF5C 0021BE9C  48 00 00 F4 */ b lbl_8021F050
lbl_8021EF60:
/* 8021EF60 0021BEA0  28 00 00 76 */ cmplwi r0, 0x76
/* 8021EF64 0021BEA4  40 82 00 30 */ bne lbl_8021EF94
/* 8021EF68 0021BEA8  7F 23 CB 78 */ mr r3, r25
/* 8021EF6C 0021BEAC  4B E0 F7 1D */ bl dComIfGp_getSelectItemMaxNum
/* 8021EF70 0021BEB0  54 7B 06 3E */ clrlwi r27, r3, 0x18
/* 8021EF74 0021BEB4  7F 23 CB 78 */ mr r3, r25
/* 8021EF78 0021BEB8  4B E0 F6 49 */ bl dComIfGp_getSelectItemNum
/* 8021EF7C 0021BEBC  54 65 06 3E */ clrlwi r5, r3, 0x18
/* 8021EF80 0021BEC0  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 8021EF84 0021BEC4  57 24 06 3E */ clrlwi r4, r25, 0x18
/* 8021EF88 0021BEC8  7F 66 DB 78 */ mr r6, r27
/* 8021EF8C 0021BECC  4B FF BB F9 */ bl dMeter2Draw_c_NS_setItemNum
/* 8021EF90 0021BED0  48 00 00 C0 */ b lbl_8021F050
lbl_8021EF94:
/* 8021EF94 0021BED4  28 00 00 43 */ cmplwi r0, 0x43
/* 8021EF98 0021BED8  41 82 00 2C */ beq lbl_8021EFC4
/* 8021EF9C 0021BEDC  28 00 00 53 */ cmplwi r0, 0x53
/* 8021EFA0 0021BEE0  41 82 00 24 */ beq lbl_8021EFC4
/* 8021EFA4 0021BEE4  28 00 00 54 */ cmplwi r0, 0x54
/* 8021EFA8 0021BEE8  41 82 00 1C */ beq lbl_8021EFC4
/* 8021EFAC 0021BEEC  28 00 00 55 */ cmplwi r0, 0x55
/* 8021EFB0 0021BEF0  41 82 00 14 */ beq lbl_8021EFC4
/* 8021EFB4 0021BEF4  28 00 00 56 */ cmplwi r0, 0x56
/* 8021EFB8 0021BEF8  41 82 00 0C */ beq lbl_8021EFC4
/* 8021EFBC 0021BEFC  28 00 00 5A */ cmplwi r0, 0x5a
/* 8021EFC0 0021BF00  40 82 00 1C */ bne lbl_8021EFDC
lbl_8021EFC4:
/* 8021EFC4 0021BF04  88 DD 00 00 */ lbz r6, 0(r29)
/* 8021EFC8 0021BF08  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 8021EFCC 0021BF0C  57 24 06 3E */ clrlwi r4, r25, 0x18
/* 8021EFD0 0021BF10  88 BF 01 DA */ lbz r5, 0x1da(r31)
/* 8021EFD4 0021BF14  4B FF BB B1 */ bl dMeter2Draw_c_NS_setItemNum
/* 8021EFD8 0021BF18  48 00 00 78 */ b lbl_8021F050
lbl_8021EFDC:
/* 8021EFDC 0021BF1C  28 00 00 4B */ cmplwi r0, 0x4b
/* 8021EFE0 0021BF20  40 82 00 1C */ bne lbl_8021EFFC
/* 8021EFE4 0021BF24  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 8021EFE8 0021BF28  57 24 06 3E */ clrlwi r4, r25, 0x18
/* 8021EFEC 0021BF2C  88 BF 01 DB */ lbz r5, 0x1db(r31)
/* 8021EFF0 0021BF30  38 C0 00 32 */ li r6, 0x32
/* 8021EFF4 0021BF34  4B FF BB 91 */ bl dMeter2Draw_c_NS_setItemNum
/* 8021EFF8 0021BF38  48 00 00 58 */ b lbl_8021F050
lbl_8021EFFC:
/* 8021EFFC 0021BF3C  28 00 00 59 */ cmplwi r0, 0x59
/* 8021F000 0021BF40  40 82 00 50 */ bne lbl_8021F050
/* 8021F004 0021BF44  7F 23 CB 78 */ mr r3, r25
/* 8021F008 0021BF48  4B E0 F5 B9 */ bl dComIfGp_getSelectItemNum
/* 8021F00C 0021BF4C  54 7A 06 3E */ clrlwi r26, r3, 0x18
/* 8021F010 0021BF50  7F 23 CB 78 */ mr r3, r25
/* 8021F014 0021BF54  4B E0 F6 75 */ bl dComIfGp_getSelectItemMaxNum
/* 8021F018 0021BF58  54 66 06 3E */ clrlwi r6, r3, 0x18
/* 8021F01C 0021BF5C  88 1F 01 DA */ lbz r0, 0x1da(r31)
/* 8021F020 0021BF60  7C 1A 00 40 */ cmplw r26, r0
/* 8021F024 0021BF64  40 81 00 08 */ ble lbl_8021F02C
/* 8021F028 0021BF68  7C 1A 03 78 */ mr r26, r0
lbl_8021F02C:
/* 8021F02C 0021BF6C  88 7D 00 00 */ lbz r3, 0(r29)
/* 8021F030 0021BF70  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8021F034 0021BF74  7C 06 00 40 */ cmplw r6, r0
/* 8021F038 0021BF78  40 80 00 08 */ bge lbl_8021F040
/* 8021F03C 0021BF7C  7C 66 1B 78 */ mr r6, r3
lbl_8021F040:
/* 8021F040 0021BF80  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 8021F044 0021BF84  57 24 06 3E */ clrlwi r4, r25, 0x18
/* 8021F048 0021BF88  7F 45 D3 78 */ mr r5, r26
/* 8021F04C 0021BF8C  4B FF BB 39 */ bl dMeter2Draw_c_NS_setItemNum
lbl_8021F050:
/* 8021F050 0021BF90  3B 39 00 01 */ addi r25, r25, 1
/* 8021F054 0021BF94  2C 19 00 02 */ cmpwi r25, 2
/* 8021F058 0021BF98  3B 9C 00 02 */ addi r28, r28, 2
/* 8021F05C 0021BF9C  41 80 FE A4 */ blt lbl_8021EF00
/* 8021F060 0021BFA0  38 00 00 00 */ li r0, 0
/* 8021F064 0021BFA4  90 1F 01 20 */ stw r0, 0x120(r31)
/* 8021F068 0021BFA8  4B FE E5 E9 */ bl dMeterMap_c_NS_isEnableDispMapAndMapDispSizeTypeNo
/* 8021F06C 0021BFAC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8021F070 0021BFB0  41 82 00 2C */ beq lbl_8021F09C
/* 8021F074 0021BFB4  38 60 00 34 */ li r3, 0x34
/* 8021F078 0021BFB8  48 0A FB D5 */ bl __nw__FUl
/* 8021F07C 0021BFBC  7C 60 1B 79 */ or. r0, r3, r3
/* 8021F080 0021BFC0  41 82 00 14 */ beq lbl_8021F094
/* 8021F084 0021BFC4  80 9F 01 0C */ lwz r4, 0x10c(r31)
/* 8021F088 0021BFC8  80 84 00 78 */ lwz r4, 0x78(r4)
/* 8021F08C 0021BFCC  4B FE E8 BD */ bl dMeterMap_c
/* 8021F090 0021BFD0  7C 60 1B 78 */ mr r0, r3
lbl_8021F094:
/* 8021F094 0021BFD4  90 1F 01 20 */ stw r0, 0x120(r31)
/* 8021F098 0021BFD8  48 00 00 20 */ b lbl_8021F0B8
lbl_8021F09C:
/* 8021F09C 0021BFDC  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8021F0A0 0021BFE0  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8021F0A4 0021BFE4  88 03 00 BF */ lbz r0, 0xbf(r3)
/* 8021F0A8 0021BFE8  28 00 00 02 */ cmplwi r0, 2
/* 8021F0AC 0021BFEC  40 82 00 0C */ bne lbl_8021F0B8
/* 8021F0B0 0021BFF0  38 00 00 00 */ li r0, 0
/* 8021F0B4 0021BFF4  98 03 00 BF */ stb r0, 0xbf(r3)
lbl_8021F0B8:
/* 8021F0B8 0021BFF8  80 1F 01 20 */ lwz r0, 0x120(r31)
/* 8021F0BC 0021BFFC  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8021F0C0 0021C000  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8021F0C4 0021C004  90 03 00 20 */ stw r0, 0x20(r3)
/* 8021F0C8 0021C008  80 7F 01 00 */ lwz r3, 0x100(r31)
/* 8021F0CC 0021C00C  48 0A F6 B9 */ bl getTotalFreeSize__7JKRHeapCFv
/* 8021F0D0 0021C010  38 60 50 00 */ li r3, 0x5000
/* 8021F0D4 0021C014  80 9F 01 00 */ lwz r4, 0x100(r31)
/* 8021F0D8 0021C018  4B E0 12 C5 */ bl fopMsgM_createExpHeap
/* 8021F0DC 0021C01C  90 7F 01 04 */ stw r3, 0x104(r31)
/* 8021F0E0 0021C020  38 00 00 00 */ li r0, 0
/* 8021F0E4 0021C024  90 1F 01 08 */ stw r0, 0x108(r31)
/* 8021F0E8 0021C028  90 1F 01 10 */ stw r0, 0x110(r31)
/* 8021F0EC 0021C02C  90 1F 01 14 */ stw r0, 0x114(r31)
/* 8021F0F0 0021C030  90 1F 01 18 */ stw r0, 0x118(r31)
/* 8021F0F4 0021C034  80 7F 01 00 */ lwz r3, 0x100(r31)
/* 8021F0F8 0021C038  48 0A F6 8D */ bl getTotalFreeSize__7JKRHeapCFv
/* 8021F0FC 0021C03C  38 00 00 00 */ li r0, 0
/* 8021F100 0021C040  90 1F 01 1C */ stw r0, 0x11c(r31)
/* 8021F104 0021C044  7F C3 F3 78 */ mr r3, r30
/* 8021F108 0021C048  4B DF 00 C5 */ bl mDoExt_setCurrentHeap
/* 8021F10C 0021C04C  38 60 00 04 */ li r3, 4
/* 8021F110 0021C050  39 61 00 30 */ addi r11, r1, 0x30
/* 8021F114 0021C054  48 14 31 05 */ bl _restgpr_25
/* 8021F118 0021C058  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8021F11C 0021C05C  7C 08 03 A6 */ mtlr r0
/* 8021F120 0021C060  38 21 00 30 */ addi r1, r1, 0x30
/* 8021F124 0021C064  4E 80 00 20 */ blr
