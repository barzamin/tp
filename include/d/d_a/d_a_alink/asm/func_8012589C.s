/* 8012589C 001227DC  94 21 FF 00 */ stwu r1, -0x100(r1)
/* 801258A0 001227E0  7C 08 02 A6 */ mflr r0
/* 801258A4 001227E4  90 01 01 04 */ stw r0, 0x104(r1)
/* 801258A8 001227E8  DB E1 00 F0 */ stfd f31, 0xf0(r1)
/* 801258AC 001227EC  F3 E1 00 F8 */ psq_st f31, 248(r1), 0, 0
/* 801258B0 001227F0  DB C1 00 E0 */ stfd f30, 0xe0(r1)
/* 801258B4 001227F4  F3 C1 00 E8 */ psq_st f30, 232(r1), 0, 0
/* 801258B8 001227F8  39 61 00 E0 */ addi r11, r1, 0xe0
/* 801258BC 001227FC  48 23 C9 05 */ bl _savegpr_22
/* 801258C0 00122800  7C 7C 1B 78 */ mr r28, r3
/* 801258C4 00122804  7C 9D 23 78 */ mr r29, r4
/* 801258C8 00122808  7C BE 2B 78 */ mr r30, r5
/* 801258CC 0012280C  7C DF 33 78 */ mr r31, r6
/* 801258D0 00122810  38 C0 00 31 */ li r6, 0x31
/* 801258D4 00122814  38 60 02 4C */ li r3, 0x24c
/* 801258D8 00122818  38 00 00 32 */ li r0, 0x32
/* 801258DC 0012281C  7C 09 03 A6 */ mtctr r0
lbl_801258E0:
/* 801258E0 00122820  7C 9C 1A 14 */ add r4, r28, r3
/* 801258E4 00122824  C0 04 00 38 */ lfs f0, 0x38(r4)
/* 801258E8 00122828  38 06 00 0A */ addi r0, r6, 0xa
/* 801258EC 0012282C  1C 00 00 0C */ mulli r0, r0, 0xc
/* 801258F0 00122830  7C BC 02 14 */ add r5, r28, r0
/* 801258F4 00122834  D0 05 00 38 */ stfs f0, 0x38(r5)
/* 801258F8 00122838  C0 04 00 3C */ lfs f0, 0x3c(r4)
/* 801258FC 0012283C  D0 05 00 3C */ stfs f0, 0x3c(r5)
/* 80125900 00122840  C0 04 00 40 */ lfs f0, 0x40(r4)
/* 80125904 00122844  D0 05 00 40 */ stfs f0, 0x40(r5)
/* 80125908 00122848  C0 04 03 08 */ lfs f0, 0x308(r4)
/* 8012590C 0012284C  D0 05 03 08 */ stfs f0, 0x308(r5)
/* 80125910 00122850  C0 04 03 0C */ lfs f0, 0x30c(r4)
/* 80125914 00122854  D0 05 03 0C */ stfs f0, 0x30c(r5)
/* 80125918 00122858  C0 04 03 10 */ lfs f0, 0x310(r4)
/* 8012591C 0012285C  D0 05 03 10 */ stfs f0, 0x310(r5)
/* 80125920 00122860  38 C6 FF FF */ addi r6, r6, -1
/* 80125924 00122864  38 63 FF F4 */ addi r3, r3, -12
/* 80125928 00122868  42 00 FF B8 */ bdnz lbl_801258E0
/* 8012592C 0012286C  C3 C2 92 C0 */ lfs f30, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80125930 00122870  38 61 00 74 */ addi r3, r1, 0x74
/* 80125934 00122874  38 9C 00 2C */ addi r4, r28, 0x2c
/* 80125938 00122878  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 8012593C 0012287C  48 14 12 49 */ bl cXyz_NS___ml
/* 80125940 00122880  38 61 00 68 */ addi r3, r1, 0x68
/* 80125944 00122884  3B 5C 03 80 */ addi r26, r28, 0x380
/* 80125948 00122888  7F 44 D3 78 */ mr r4, r26
/* 8012594C 0012288C  38 A1 00 74 */ addi r5, r1, 0x74
/* 80125950 00122890  48 14 11 95 */ bl cXyz_NS___pl
/* 80125954 00122894  C0 01 00 68 */ lfs f0, 0x68(r1)
/* 80125958 00122898  D0 01 00 98 */ stfs f0, 0x98(r1)
/* 8012595C 0012289C  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 80125960 001228A0  D0 01 00 9C */ stfs f0, 0x9c(r1)
/* 80125964 001228A4  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 80125968 001228A8  D0 01 00 A0 */ stfs f0, 0xa0(r1)
/* 8012596C 001228AC  38 61 00 5C */ addi r3, r1, 0x5c
/* 80125970 001228B0  7F E4 FB 78 */ mr r4, r31
/* 80125974 001228B4  C0 22 94 0C */ lfs f1, lbl_80452E0C-_SDA2_BASE_(r2)
/* 80125978 001228B8  48 14 12 0D */ bl cXyz_NS___ml
/* 8012597C 001228BC  38 61 00 50 */ addi r3, r1, 0x50
/* 80125980 001228C0  7F C4 F3 78 */ mr r4, r30
/* 80125984 001228C4  38 A1 00 5C */ addi r5, r1, 0x5c
/* 80125988 001228C8  48 14 11 5D */ bl cXyz_NS___pl
/* 8012598C 001228CC  C0 01 00 50 */ lfs f0, 0x50(r1)
/* 80125990 001228D0  D0 01 00 A4 */ stfs f0, 0xa4(r1)
/* 80125994 001228D4  C0 01 00 54 */ lfs f0, 0x54(r1)
/* 80125998 001228D8  D0 01 00 A8 */ stfs f0, 0xa8(r1)
/* 8012599C 001228DC  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 801259A0 001228E0  D0 01 00 AC */ stfs f0, 0xac(r1)
/* 801259A4 001228E4  38 61 00 44 */ addi r3, r1, 0x44
/* 801259A8 001228E8  38 9C 00 2C */ addi r4, r28, 0x2c
/* 801259AC 001228EC  C0 22 93 B4 */ lfs f1, lbl_80452DB4-_SDA2_BASE_(r2)
/* 801259B0 001228F0  48 14 11 D5 */ bl cXyz_NS___ml
/* 801259B4 001228F4  38 61 00 38 */ addi r3, r1, 0x38
/* 801259B8 001228F8  3B 3C 00 B0 */ addi r25, r28, 0xb0
/* 801259BC 001228FC  7F 24 CB 78 */ mr r4, r25
/* 801259C0 00122900  38 A1 00 44 */ addi r5, r1, 0x44
/* 801259C4 00122904  48 14 11 21 */ bl cXyz_NS___pl
/* 801259C8 00122908  C0 01 00 38 */ lfs f0, 0x38(r1)
/* 801259CC 0012290C  D0 01 00 80 */ stfs f0, 0x80(r1)
/* 801259D0 00122910  C0 01 00 3C */ lfs f0, 0x3c(r1)
/* 801259D4 00122914  D0 01 00 84 */ stfs f0, 0x84(r1)
/* 801259D8 00122918  C0 01 00 40 */ lfs f0, 0x40(r1)
/* 801259DC 0012291C  D0 01 00 88 */ stfs f0, 0x88(r1)
/* 801259E0 00122920  38 61 00 2C */ addi r3, r1, 0x2c
/* 801259E4 00122924  7F E4 FB 78 */ mr r4, r31
/* 801259E8 00122928  C0 22 97 18 */ lfs f1, lbl_80453118-_SDA2_BASE_(r2)
/* 801259EC 0012292C  48 14 11 99 */ bl cXyz_NS___ml
/* 801259F0 00122930  38 61 00 20 */ addi r3, r1, 0x20
/* 801259F4 00122934  7F A4 EB 78 */ mr r4, r29
/* 801259F8 00122938  38 A1 00 2C */ addi r5, r1, 0x2c
/* 801259FC 0012293C  48 14 10 E9 */ bl cXyz_NS___pl
/* 80125A00 00122940  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 80125A04 00122944  D0 01 00 8C */ stfs f0, 0x8c(r1)
/* 80125A08 00122948  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 80125A0C 0012294C  D0 01 00 90 */ stfs f0, 0x90(r1)
/* 80125A10 00122950  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 80125A14 00122954  D0 01 00 94 */ stfs f0, 0x94(r1)
/* 80125A18 00122958  3A C0 00 00 */ li r22, 0
/* 80125A1C 0012295C  3B 60 00 00 */ li r27, 0
/* 80125A20 00122960  C3 E2 93 A0 */ lfs f31, lbl_80452DA0-_SDA2_BASE_(r2)
lbl_80125A24:
/* 80125A24 00122964  7F C3 F3 78 */ mr r3, r30
/* 80125A28 00122968  7F 44 D3 78 */ mr r4, r26
/* 80125A2C 0012296C  38 A1 00 A4 */ addi r5, r1, 0xa4
/* 80125A30 00122970  38 C1 00 98 */ addi r6, r1, 0x98
/* 80125A34 00122974  FC 20 F0 90 */ fmr f1, f30
/* 80125A38 00122978  7F 1C DA 14 */ add r24, r28, r27
/* 80125A3C 0012297C  3A F8 03 08 */ addi r23, r24, 0x308
/* 80125A40 00122980  7E E7 BB 78 */ mr r7, r23
/* 80125A44 00122984  4B FF FD 35 */ bl setBezierPos
/* 80125A48 00122988  7F A3 EB 78 */ mr r3, r29
/* 80125A4C 0012298C  7F 24 CB 78 */ mr r4, r25
/* 80125A50 00122990  38 A1 00 8C */ addi r5, r1, 0x8c
/* 80125A54 00122994  38 C1 00 80 */ addi r6, r1, 0x80
/* 80125A58 00122998  FC 20 F0 90 */ fmr f1, f30
/* 80125A5C 0012299C  3B 18 00 38 */ addi r24, r24, 0x38
/* 80125A60 001229A0  7F 07 C3 78 */ mr r7, r24
/* 80125A64 001229A4  4B FF FD 15 */ bl setBezierPos
/* 80125A68 001229A8  38 61 00 14 */ addi r3, r1, 0x14
/* 80125A6C 001229AC  7F 04 C3 78 */ mr r4, r24
/* 80125A70 001229B0  7E E5 BB 78 */ mr r5, r23
/* 80125A74 001229B4  48 14 10 C1 */ bl cXyz_NS___mi
/* 80125A78 001229B8  38 61 00 08 */ addi r3, r1, 8
/* 80125A7C 001229BC  38 81 00 14 */ addi r4, r1, 0x14
/* 80125A80 001229C0  C0 3C 00 24 */ lfs f1, 0x24(r28)
/* 80125A84 001229C4  48 14 11 01 */ bl cXyz_NS___ml
/* 80125A88 001229C8  7F 03 C3 78 */ mr r3, r24
/* 80125A8C 001229CC  38 81 00 08 */ addi r4, r1, 8
/* 80125A90 001229D0  7F 05 C3 78 */ mr r5, r24
/* 80125A94 001229D4  48 22 15 FD */ bl PSVECAdd
/* 80125A98 001229D8  EF DE F8 2A */ fadds f30, f30, f31
/* 80125A9C 001229DC  3A D6 00 01 */ addi r22, r22, 1
/* 80125AA0 001229E0  2C 16 00 0A */ cmpwi r22, 0xa
/* 80125AA4 001229E4  3B 7B 00 0C */ addi r27, r27, 0xc
/* 80125AA8 001229E8  41 80 FF 7C */ blt lbl_80125A24
/* 80125AAC 001229EC  C0 1F 00 00 */ lfs f0, 0(r31)
/* 80125AB0 001229F0  D0 1C 00 2C */ stfs f0, 0x2c(r28)
/* 80125AB4 001229F4  C0 1F 00 04 */ lfs f0, 4(r31)
/* 80125AB8 001229F8  D0 1C 00 30 */ stfs f0, 0x30(r28)
/* 80125ABC 001229FC  C0 1F 00 08 */ lfs f0, 8(r31)
/* 80125AC0 00122A00  D0 1C 00 34 */ stfs f0, 0x34(r28)
/* 80125AC4 00122A04  80 7C 00 14 */ lwz r3, 0x14(r28)
/* 80125AC8 00122A08  38 03 00 0A */ addi r0, r3, 0xa
/* 80125ACC 00122A0C  90 1C 00 14 */ stw r0, 0x14(r28)
/* 80125AD0 00122A10  80 1C 00 14 */ lwz r0, 0x14(r28)
/* 80125AD4 00122A14  2C 00 00 3B */ cmpwi r0, 0x3b
/* 80125AD8 00122A18  41 80 00 0C */ blt lbl_80125AE4
/* 80125ADC 00122A1C  38 00 00 3A */ li r0, 0x3a
/* 80125AE0 00122A20  90 1C 00 14 */ stw r0, 0x14(r28)
lbl_80125AE4:
/* 80125AE4 00122A24  E3 E1 00 F8 */ psq_l f31, 248(r1), 0, 0
/* 80125AE8 00122A28  CB E1 00 F0 */ lfd f31, 0xf0(r1)
/* 80125AEC 00122A2C  E3 C1 00 E8 */ psq_l f30, 232(r1), 0, 0
/* 80125AF0 00122A30  CB C1 00 E0 */ lfd f30, 0xe0(r1)
/* 80125AF4 00122A34  39 61 00 E0 */ addi r11, r1, 0xe0
/* 80125AF8 00122A38  48 23 C7 15 */ bl func_8036220C
/* 80125AFC 00122A3C  80 01 01 04 */ lwz r0, 0x104(r1)
/* 80125B00 00122A40  7C 08 03 A6 */ mtlr r0
/* 80125B04 00122A44  38 21 01 00 */ addi r1, r1, 0x100
/* 80125B08 00122A48  4E 80 00 20 */ blr
