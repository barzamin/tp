/* 8002C97C 000298BC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002C980 000298C0  7C 08 02 A6 */ mflr r0
/* 8002C984 000298C4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002C988 000298C8  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8002C98C 000298CC  7C 00 07 74 */ extsb r0, r0
/* 8002C990 000298D0  7C 04 03 78 */ mr r4, r0
/* 8002C994 000298D4  2C 00 FF FF */ cmpwi r0, -1
/* 8002C998 000298D8  41 81 00 18 */ bgt lbl_8002C9B0
/* 8002C99C 000298DC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002C9A0 000298E0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C9A4 000298E4  88 03 4E 0A */ lbz r0, 0x4e0a(r3)
/* 8002C9A8 000298E8  7C 00 07 74 */ extsb r0, r0
/* 8002C9AC 000298EC  7C 04 03 78 */ mr r4, r0
lbl_8002C9B0:
/* 8002C9B0 000298F0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002C9B4 000298F4  38 A3 61 C0 */ addi r5, r3, g_dComIfG_gameInfo@l
/* 8002C9B8 000298F8  38 65 4E 00 */ addi r3, r5, 0x4e00
/* 8002C9BC 000298FC  88 05 4E 0B */ lbz r0, 0x4e0b(r5)
/* 8002C9C0 00029900  7C 05 07 74 */ extsb r5, r0
/* 8002C9C4 00029904  4B FF FF 8D */ bl dComIfG_play_c_NS_getLayerNo_common
/* 8002C9C8 00029908  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002C9CC 0002990C  7C 08 03 A6 */ mtlr r0
/* 8002C9D0 00029910  38 21 00 10 */ addi r1, r1, 0x10
/* 8002C9D4 00029914  4E 80 00 20 */ blr
