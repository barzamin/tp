/* 80215B18 00212A58  94 21 FF 80 */ stwu r1, -0x80(r1)
/* 80215B1C 00212A5C  7C 08 02 A6 */ mflr r0
/* 80215B20 00212A60  90 01 00 84 */ stw r0, 0x84(r1)
/* 80215B24 00212A64  DB E1 00 70 */ stfd f31, 0x70(r1)
/* 80215B28 00212A68  F3 E1 00 78 */ psq_st f31, 120(r1), 0, 0
/* 80215B2C 00212A6C  DB C1 00 60 */ stfd f30, 0x60(r1)
/* 80215B30 00212A70  F3 C1 00 68 */ psq_st f30, 104(r1), 0, 0
/* 80215B34 00212A74  DB A1 00 50 */ stfd f29, 0x50(r1)
/* 80215B38 00212A78  F3 A1 00 58 */ psq_st f29, 88(r1), 0, 0
/* 80215B3C 00212A7C  DB 81 00 40 */ stfd f28, 0x40(r1)
/* 80215B40 00212A80  F3 81 00 48 */ psq_st f28, 72(r1), 0, 0
/* 80215B44 00212A84  39 61 00 40 */ addi r11, r1, 0x40
/* 80215B48 00212A88  48 14 C6 85 */ bl _savegpr_25
/* 80215B4C 00212A8C  7C 7A 1B 78 */ mr r26, r3
/* 80215B50 00212A90  FF C0 08 90 */ fmr f30, f1
/* 80215B54 00212A94  FF E0 10 90 */ fmr f31, f2
/* 80215B58 00212A98  FF 80 18 90 */ fmr f28, f3
/* 80215B5C 00212A9C  FF A0 20 90 */ fmr f29, f4
/* 80215B60 00212AA0  7C DB 33 78 */ mr r27, r6
/* 80215B64 00212AA4  3B 80 00 00 */ li r28, 0
/* 80215B68 00212AA8  3B 20 00 00 */ li r25, 0
/* 80215B6C 00212AAC  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80215B70 00212AB0  3B E3 EB C8 */ addi r31, r3, lbl_8042EBC8@l
/* 80215B74 00212AB4  54 9D 06 3E */ clrlwi r29, r4, 0x18
lbl_80215B78:
/* 80215B78 00212AB8  7F DA CA 14 */ add r30, r26, r25
/* 80215B7C 00212ABC  80 7E 01 F0 */ lwz r3, 0x1f0(r30)
/* 80215B80 00212AC0  28 03 00 00 */ cmplwi r3, 0
/* 80215B84 00212AC4  41 82 00 28 */ beq lbl_80215BAC
/* 80215B88 00212AC8  C0 1F 0E C4 */ lfs f0, 0xec4(r31)
/* 80215B8C 00212ACC  80 63 00 04 */ lwz r3, 4(r3)
/* 80215B90 00212AD0  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 80215B94 00212AD4  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 80215B98 00212AD8  81 83 00 00 */ lwz r12, 0(r3)
/* 80215B9C 00212ADC  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80215BA0 00212AE0  7D 89 03 A6 */ mtctr r12
/* 80215BA4 00212AE4  4E 80 04 21 */ bctrl
/* 80215BA8 00212AE8  48 00 00 4C */ b lbl_80215BF4
lbl_80215BAC:
/* 80215BAC 00212AEC  C0 1F 0E C4 */ lfs f0, 0xec4(r31)
/* 80215BB0 00212AF0  80 7E 01 F4 */ lwz r3, 0x1f4(r30)
/* 80215BB4 00212AF4  80 63 00 04 */ lwz r3, 4(r3)
/* 80215BB8 00212AF8  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 80215BBC 00212AFC  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 80215BC0 00212B00  81 83 00 00 */ lwz r12, 0(r3)
/* 80215BC4 00212B04  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80215BC8 00212B08  7D 89 03 A6 */ mtctr r12
/* 80215BCC 00212B0C  4E 80 04 21 */ bctrl
/* 80215BD0 00212B10  C0 1F 0E C4 */ lfs f0, 0xec4(r31)
/* 80215BD4 00212B14  80 7E 01 F8 */ lwz r3, 0x1f8(r30)
/* 80215BD8 00212B18  80 63 00 04 */ lwz r3, 4(r3)
/* 80215BDC 00212B1C  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 80215BE0 00212B20  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 80215BE4 00212B24  81 83 00 00 */ lwz r12, 0(r3)
/* 80215BE8 00212B28  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80215BEC 00212B2C  7D 89 03 A6 */ mtctr r12
/* 80215BF0 00212B30  4E 80 04 21 */ bctrl
lbl_80215BF4:
/* 80215BF4 00212B34  7C 1C E8 00 */ cmpw r28, r29
/* 80215BF8 00212B38  40 80 00 58 */ bge lbl_80215C50
/* 80215BFC 00212B3C  80 1F 0E B4 */ lwz r0, 0xeb4(r31)
/* 80215C00 00212B40  90 01 00 10 */ stw r0, 0x10(r1)
/* 80215C04 00212B44  80 1F 0E B8 */ lwz r0, 0xeb8(r31)
/* 80215C08 00212B48  90 01 00 14 */ stw r0, 0x14(r1)
/* 80215C0C 00212B4C  80 7E 01 F4 */ lwz r3, 0x1f4(r30)
/* 80215C10 00212B50  80 63 00 04 */ lwz r3, 4(r3)
/* 80215C14 00212B54  38 81 00 14 */ addi r4, r1, 0x14
/* 80215C18 00212B58  38 A1 00 10 */ addi r5, r1, 0x10
/* 80215C1C 00212B5C  81 83 00 00 */ lwz r12, 0(r3)
/* 80215C20 00212B60  81 8C 01 30 */ lwz r12, 0x130(r12)
/* 80215C24 00212B64  7D 89 03 A6 */ mtctr r12
/* 80215C28 00212B68  4E 80 04 21 */ bctrl
/* 80215C2C 00212B6C  80 7A 01 EC */ lwz r3, 0x1ec(r26)
/* 80215C30 00212B70  48 03 FB F9 */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80215C34 00212B74  80 7E 01 F4 */ lwz r3, 0x1f4(r30)
/* 80215C38 00212B78  48 03 FB 99 */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 80215C3C 00212B7C  80 7A 01 EC */ lwz r3, 0x1ec(r26)
/* 80215C40 00212B80  48 03 FB E9 */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80215C44 00212B84  80 7E 01 F8 */ lwz r3, 0x1f8(r30)
/* 80215C48 00212B88  48 03 FB 89 */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 80215C4C 00212B8C  48 00 00 64 */ b lbl_80215CB0
lbl_80215C50:
/* 80215C50 00212B90  80 1F 0E BC */ lwz r0, 0xebc(r31)
/* 80215C54 00212B94  90 01 00 08 */ stw r0, 8(r1)
/* 80215C58 00212B98  80 1F 0E C0 */ lwz r0, 0xec0(r31)
/* 80215C5C 00212B9C  90 01 00 0C */ stw r0, 0xc(r1)
/* 80215C60 00212BA0  80 7E 01 F4 */ lwz r3, 0x1f4(r30)
/* 80215C64 00212BA4  80 63 00 04 */ lwz r3, 4(r3)
/* 80215C68 00212BA8  38 81 00 0C */ addi r4, r1, 0xc
/* 80215C6C 00212BAC  38 A1 00 08 */ addi r5, r1, 8
/* 80215C70 00212BB0  81 83 00 00 */ lwz r12, 0(r3)
/* 80215C74 00212BB4  81 8C 01 30 */ lwz r12, 0x130(r12)
/* 80215C78 00212BB8  7D 89 03 A6 */ mtctr r12
/* 80215C7C 00212BBC  4E 80 04 21 */ bctrl
/* 80215C80 00212BC0  80 7A 01 EC */ lwz r3, 0x1ec(r26)
/* 80215C84 00212BC4  48 03 FB A5 */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80215C88 00212BC8  C0 02 AE C8 */ lfs f0, lbl_804548C8-_SDA2_BASE_(r2)
/* 80215C8C 00212BCC  EC 20 00 72 */ fmuls f1, f0, f1
/* 80215C90 00212BD0  80 7E 01 F4 */ lwz r3, 0x1f4(r30)
/* 80215C94 00212BD4  48 03 FB 3D */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 80215C98 00212BD8  80 7A 01 EC */ lwz r3, 0x1ec(r26)
/* 80215C9C 00212BDC  48 03 FB 8D */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80215CA0 00212BE0  C0 02 AE C8 */ lfs f0, lbl_804548C8-_SDA2_BASE_(r2)
/* 80215CA4 00212BE4  EC 20 00 72 */ fmuls f1, f0, f1
/* 80215CA8 00212BE8  80 7E 01 F8 */ lwz r3, 0x1f8(r30)
/* 80215CAC 00212BEC  48 03 FB 25 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80215CB0:
/* 80215CB0 00212BF0  3B 9C 00 01 */ addi r28, r28, 1
/* 80215CB4 00212BF4  2C 1C 00 10 */ cmpwi r28, 0x10
/* 80215CB8 00212BF8  3B 39 00 0C */ addi r25, r25, 0xc
/* 80215CBC 00212BFC  41 80 FE BC */ blt lbl_80215B78
/* 80215CC0 00212C00  57 60 06 3E */ clrlwi r0, r27, 0x18
/* 80215CC4 00212C04  28 00 00 01 */ cmplwi r0, 1
/* 80215CC8 00212C08  40 82 00 30 */ bne lbl_80215CF8
/* 80215CCC 00212C0C  9B 7A 07 60 */ stb r27, 0x760(r26)
/* 80215CD0 00212C10  38 00 FF FF */ li r0, -1
/* 80215CD4 00212C14  B0 1A 07 56 */ sth r0, 0x756(r26)
/* 80215CD8 00212C18  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 80215CDC 00212C1C  57 A0 10 3A */ slwi r0, r29, 2
/* 80215CE0 00212C20  7C 7A 02 14 */ add r3, r26, r0
/* 80215CE4 00212C24  C0 03 06 28 */ lfs f0, 0x628(r3)
/* 80215CE8 00212C28  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 80215CEC 00212C2C  40 82 00 0C */ bne lbl_80215CF8
/* 80215CF0 00212C30  C0 02 AE 98 */ lfs f0, lbl_80454898-_SDA2_BASE_(r2)
/* 80215CF4 00212C34  D0 03 06 28 */ stfs f0, 0x628(r3)
lbl_80215CF8:
/* 80215CF8 00212C38  57 60 06 3E */ clrlwi r0, r27, 0x18
/* 80215CFC 00212C3C  28 00 00 02 */ cmplwi r0, 2
/* 80215D00 00212C40  40 82 00 28 */ bne lbl_80215D28
/* 80215D04 00212C44  9B 7A 07 60 */ stb r27, 0x760(r26)
/* 80215D08 00212C48  38 00 00 00 */ li r0, 0
/* 80215D0C 00212C4C  B0 1A 07 56 */ sth r0, 0x756(r26)
/* 80215D10 00212C50  C0 22 AE 80 */ lfs f1, lbl_80454880-_SDA2_BASE_(r2)
/* 80215D14 00212C54  C0 1A 06 2C */ lfs f0, 0x62c(r26)
/* 80215D18 00212C58  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 80215D1C 00212C5C  40 82 00 0C */ bne lbl_80215D28
/* 80215D20 00212C60  C0 02 AE 98 */ lfs f0, lbl_80454898-_SDA2_BASE_(r2)
/* 80215D24 00212C64  D0 1A 06 2C */ stfs f0, 0x62c(r26)
lbl_80215D28:
/* 80215D28 00212C68  D3 BA 06 FC */ stfs f29, 0x6fc(r26)
/* 80215D2C 00212C6C  D3 9A 06 F4 */ stfs f28, 0x6f4(r26)
/* 80215D30 00212C70  C0 3A 06 F4 */ lfs f1, 0x6f4(r26)
/* 80215D34 00212C74  C0 1A 06 F8 */ lfs f0, 0x6f8(r26)
/* 80215D38 00212C78  EC 01 00 32 */ fmuls f0, f1, f0
/* 80215D3C 00212C7C  80 7A 01 E0 */ lwz r3, 0x1e0(r26)
/* 80215D40 00212C80  80 63 00 04 */ lwz r3, 4(r3)
/* 80215D44 00212C84  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 80215D48 00212C88  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 80215D4C 00212C8C  81 83 00 00 */ lwz r12, 0(r3)
/* 80215D50 00212C90  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80215D54 00212C94  7D 89 03 A6 */ mtctr r12
/* 80215D58 00212C98  4E 80 04 21 */ bctrl
/* 80215D5C 00212C9C  80 7A 01 E0 */ lwz r3, 0x1e0(r26)
/* 80215D60 00212CA0  FC 20 F0 90 */ fmr f1, f30
/* 80215D64 00212CA4  FC 40 F8 90 */ fmr f2, f31
/* 80215D68 00212CA8  48 03 E8 49 */ bl CPaneMgr_NS_paneTrans
/* 80215D6C 00212CAC  E3 E1 00 78 */ psq_l f31, 120(r1), 0, 0
/* 80215D70 00212CB0  CB E1 00 70 */ lfd f31, 0x70(r1)
/* 80215D74 00212CB4  E3 C1 00 68 */ psq_l f30, 104(r1), 0, 0
/* 80215D78 00212CB8  CB C1 00 60 */ lfd f30, 0x60(r1)
/* 80215D7C 00212CBC  E3 A1 00 58 */ psq_l f29, 88(r1), 0, 0
/* 80215D80 00212CC0  CB A1 00 50 */ lfd f29, 0x50(r1)
/* 80215D84 00212CC4  E3 81 00 48 */ psq_l f28, 72(r1), 0, 0
/* 80215D88 00212CC8  CB 81 00 40 */ lfd f28, 0x40(r1)
/* 80215D8C 00212CCC  39 61 00 40 */ addi r11, r1, 0x40
/* 80215D90 00212CD0  48 14 C4 89 */ bl _restgpr_25
/* 80215D94 00212CD4  80 01 00 84 */ lwz r0, 0x84(r1)
/* 80215D98 00212CD8  7C 08 03 A6 */ mtlr r0
/* 80215D9C 00212CDC  38 21 00 80 */ addi r1, r1, 0x80
/* 80215DA0 00212CE0  4E 80 00 20 */ blr
