/* 80107900 00104840  94 21 FE A0 */ stwu r1, -0x160(r1)
/* 80107904 00104844  7C 08 02 A6 */ mflr r0
/* 80107908 00104848  90 01 01 64 */ stw r0, 0x164(r1)
/* 8010790C 0010484C  DB E1 01 50 */ stfd f31, 0x150(r1)
/* 80107910 00104850  F3 E1 01 58 */ psq_st f31, 344(r1), 0, 0
/* 80107914 00104854  DB C1 01 40 */ stfd f30, 0x140(r1)
/* 80107918 00104858  F3 C1 01 48 */ psq_st f30, 328(r1), 0, 0
/* 8010791C 0010485C  DB A1 01 30 */ stfd f29, 0x130(r1)
/* 80107920 00104860  F3 A1 01 38 */ psq_st f29, 312(r1), 0, 0
/* 80107924 00104864  DB 81 01 20 */ stfd f28, 0x120(r1)
/* 80107928 00104868  F3 81 01 28 */ psq_st f28, 296(r1), 0, 0
/* 8010792C 0010486C  DB 61 01 10 */ stfd f27, 0x110(r1)
/* 80107930 00104870  F3 61 01 18 */ psq_st f27, 280(r1), 0, 0
/* 80107934 00104874  DB 41 01 00 */ stfd f26, 0x100(r1)
/* 80107938 00104878  F3 41 01 08 */ psq_st f26, 264(r1), 0, 0
/* 8010793C 0010487C  DB 21 00 F0 */ stfd f25, 0xf0(r1)
/* 80107940 00104880  F3 21 00 F8 */ psq_st f25, 248(r1), 0, 0
/* 80107944 00104884  39 61 00 F0 */ addi r11, r1, 0xf0
/* 80107948 00104888  48 25 A8 75 */ bl _savegpr_21
/* 8010794C 0010488C  83 A3 00 0C */ lwz r29, 0xc(r3)
/* 80107950 00104890  80 9D 07 68 */ lwz r4, 0x768(r29)
/* 80107954 00104894  80 64 00 60 */ lwz r3, 0x60(r4)
/* 80107958 00104898  83 C3 00 00 */ lwz r30, 0(r3)
/* 8010795C 0010489C  3A DD 01 0C */ addi r22, r29, 0x10c
/* 80107960 001048A0  80 04 00 A0 */ lwz r0, 0xa0(r4)
/* 80107964 001048A4  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80107968 001048A8  38 63 4A C8 */ addi r3, r3, lbl_80434AC8@l
/* 8010796C 001048AC  90 03 01 0C */ stw r0, 0x10c(r3)
/* 80107970 001048B0  80 04 00 A4 */ lwz r0, 0xa4(r4)
/* 80107974 001048B4  90 03 01 10 */ stw r0, 0x110(r3)
/* 80107978 001048B8  80 04 00 AC */ lwz r0, 0xac(r4)
/* 8010797C 001048BC  90 03 01 14 */ stw r0, 0x114(r3)
/* 80107980 001048C0  38 00 00 00 */ li r0, 0
/* 80107984 001048C4  90 0D 90 50 */ stw r0, lbl_804515D0-_SDA_BASE_(r13)
/* 80107988 001048C8  7F C3 F3 78 */ mr r3, r30
/* 8010798C 001048CC  81 9E 00 00 */ lwz r12, 0(r30)
/* 80107990 001048D0  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 80107994 001048D4  7D 89 03 A6 */ mtctr r12
/* 80107998 001048D8  4E 80 04 21 */ bctrl
/* 8010799C 001048DC  80 7E 00 08 */ lwz r3, 8(r30)
/* 801079A0 001048E0  48 20 D9 61 */ bl J3DShape_NS_loadPreDrawSetting
/* 801079A4 001048E4  A8 16 03 48 */ lha r0, 0x348(r22)
/* 801079A8 001048E8  98 01 00 20 */ stb r0, 0x20(r1)
/* 801079AC 001048EC  A8 16 03 4A */ lha r0, 0x34a(r22)
/* 801079B0 001048F0  98 01 00 21 */ stb r0, 0x21(r1)
/* 801079B4 001048F4  A8 16 03 4C */ lha r0, 0x34c(r22)
/* 801079B8 001048F8  98 01 00 22 */ stb r0, 0x22(r1)
/* 801079BC 001048FC  A8 16 03 4E */ lha r0, 0x34e(r22)
/* 801079C0 00104900  98 01 00 23 */ stb r0, 0x23(r1)
/* 801079C4 00104904  80 01 00 20 */ lwz r0, 0x20(r1)
/* 801079C8 00104908  90 01 00 1C */ stw r0, 0x1c(r1)
/* 801079CC 0010490C  38 60 00 04 */ li r3, 4
/* 801079D0 00104910  38 81 00 1C */ addi r4, r1, 0x1c
/* 801079D4 00104914  48 25 5F 8D */ bl GXSetChanAmbColor
/* 801079D8 00104918  80 0D 80 88 */ lwz r0, lbl_80450608-_SDA_BASE_(r13)
/* 801079DC 0010491C  90 01 00 18 */ stw r0, 0x18(r1)
/* 801079E0 00104920  38 60 00 04 */ li r3, 4
/* 801079E4 00104924  38 81 00 18 */ addi r4, r1, 0x18
/* 801079E8 00104928  48 25 60 61 */ bl GXSetChanMatColor
/* 801079EC 0010492C  48 09 FB D5 */ bl dKy_setLight_again
/* 801079F0 00104930  7E C3 B3 78 */ mr r3, r22
/* 801079F4 00104934  48 0A 0C 5D */ bl dKy_GxFog_tevstr_set
/* 801079F8 00104938  38 76 00 34 */ addi r3, r22, 0x34
/* 801079FC 0010493C  38 80 00 01 */ li r4, 1
/* 80107A00 00104940  48 25 5E E5 */ bl GXLoadLightObjImm
/* 80107A04 00104944  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 80107A08 00104948  28 00 00 42 */ cmplwi r0, 0x42
/* 80107A0C 0010494C  40 82 04 7C */ bne lbl_80107E88
/* 80107A10 00104950  83 3D 38 40 */ lwz r25, 0x3840(r29)
/* 80107A14 00104954  83 5D 38 44 */ lwz r26, 0x3844(r29)
/* 80107A18 00104958  3B 60 00 00 */ li r27, 0
/* 80107A1C 0010495C  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80107A20 00104960  3B 03 4A C8 */ addi r24, r3, lbl_80434AC8@l
/* 80107A24 00104964  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80107A28 00104968  3A E3 D4 70 */ addi r23, r3, lbl_803DD470@l
/* 80107A2C 0010496C  7E F6 BB 78 */ mr r22, r23
/* 80107A30 00104970  3B 39 00 0C */ addi r25, r25, 0xc
/* 80107A34 00104974  3B 5A 00 06 */ addi r26, r26, 6
lbl_80107A38:
/* 80107A38 00104978  7F 03 C3 78 */ mr r3, r24
/* 80107A3C 0010497C  7E E4 BB 78 */ mr r4, r23
/* 80107A40 00104980  48 23 EA 71 */ bl PSMTXCopy
/* 80107A44 00104984  7F 23 CB 78 */ mr r3, r25
/* 80107A48 00104988  4B F0 53 8D */ bl mDoMtx_stack_c_NS_transM_X1_
/* 80107A4C 0010498C  7F 43 D3 78 */ mr r3, r26
/* 80107A50 00104990  4B F0 54 F5 */ bl mDoMtx_stack_c_NS_ZXYrotM
/* 80107A54 00104994  C0 22 93 14 */ lfs f1, lbl_80452D14-_SDA2_BASE_(r2)
/* 80107A58 00104998  FC 40 08 90 */ fmr f2, f1
/* 80107A5C 0010499C  FC 60 08 90 */ fmr f3, f1
/* 80107A60 001049A0  4B F0 53 D9 */ bl mDoMtx_stack_c_NS_scaleM
/* 80107A64 001049A4  7E E3 BB 78 */ mr r3, r23
/* 80107A68 001049A8  38 80 00 00 */ li r4, 0
/* 80107A6C 001049AC  48 25 87 E1 */ bl GXLoadPosMtxImm
/* 80107A70 001049B0  7E C3 B3 78 */ mr r3, r22
/* 80107A74 001049B4  38 80 00 00 */ li r4, 0
/* 80107A78 001049B8  48 25 88 25 */ bl GXLoadNrmMtxImm
/* 80107A7C 001049BC  80 7E 00 08 */ lwz r3, 8(r30)
/* 80107A80 001049C0  81 83 00 00 */ lwz r12, 0(r3)
/* 80107A84 001049C4  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 80107A88 001049C8  7D 89 03 A6 */ mtctr r12
/* 80107A8C 001049CC  4E 80 04 21 */ bctrl
/* 80107A90 001049D0  3B 7B 00 01 */ addi r27, r27, 1
/* 80107A94 001049D4  2C 1B 00 65 */ cmpwi r27, 0x65
/* 80107A98 001049D8  3B 39 00 0C */ addi r25, r25, 0xc
/* 80107A9C 001049DC  3B 5A 00 06 */ addi r26, r26, 6
/* 80107AA0 001049E0  41 80 FF 98 */ blt lbl_80107A38
/* 80107AA4 001049E4  3B E0 00 00 */ li r31, 0
/* 80107AA8 001049E8  C3 C2 92 C0 */ lfs f30, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80107AAC 001049EC  C3 E2 93 3C */ lfs f31, lbl_80452D3C-_SDA2_BASE_(r2)
lbl_80107AB0:
/* 80107AB0 001049F0  2C 1F 00 00 */ cmpwi r31, 0
/* 80107AB4 001049F4  40 82 00 54 */ bne lbl_80107B08
/* 80107AB8 001049F8  80 7D 38 40 */ lwz r3, 0x3840(r29)
/* 80107ABC 001049FC  A8 1D 30 1A */ lha r0, 0x301a(r29)
/* 80107AC0 00104A00  1C 00 00 0C */ mulli r0, r0, 0xc
/* 80107AC4 00104A04  7F 83 02 14 */ add r28, r3, r0
/* 80107AC8 00104A08  38 61 00 70 */ addi r3, r1, 0x70
/* 80107ACC 00104A0C  38 9D 37 EC */ addi r4, r29, 0x37ec
/* 80107AD0 00104A10  7F 85 E3 78 */ mr r5, r28
/* 80107AD4 00104A14  48 15 F0 61 */ bl cXyz_NS___mi
/* 80107AD8 00104A18  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 80107ADC 00104A1C  D0 01 00 AC */ stfs f0, 0xac(r1)
/* 80107AE0 00104A20  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 80107AE4 00104A24  D0 01 00 B0 */ stfs f0, 0xb0(r1)
/* 80107AE8 00104A28  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 80107AEC 00104A2C  D0 01 00 B4 */ stfs f0, 0xb4(r1)
/* 80107AF0 00104A30  80 7D 38 44 */ lwz r3, 0x3844(r29)
/* 80107AF4 00104A34  A8 1D 30 1A */ lha r0, 0x301a(r29)
/* 80107AF8 00104A38  1C 00 00 06 */ mulli r0, r0, 6
/* 80107AFC 00104A3C  7C 63 02 14 */ add r3, r3, r0
/* 80107B00 00104A40  3B 20 30 00 */ li r25, 0x3000
/* 80107B04 00104A44  48 00 00 54 */ b lbl_80107B58
lbl_80107B08:
/* 80107B08 00104A48  82 DD 38 40 */ lwz r22, 0x3840(r29)
/* 80107B0C 00104A4C  7E DC B3 78 */ mr r28, r22
/* 80107B10 00104A50  38 76 00 0C */ addi r3, r22, 0xc
/* 80107B14 00104A54  4B F0 52 51 */ bl mDoMtx_stack_c_NS_transS
/* 80107B18 00104A58  80 7D 38 44 */ lwz r3, 0x3844(r29)
/* 80107B1C 00104A5C  38 63 00 06 */ addi r3, r3, 6
/* 80107B20 00104A60  4B F0 54 25 */ bl mDoMtx_stack_c_NS_ZXYrotM
/* 80107B24 00104A64  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80107B28 00104A68  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 80107B2C 00104A6C  3C 80 80 39 */ lis r4, lbl_8038FB44@ha
/* 80107B30 00104A70  38 84 FB 44 */ addi r4, r4, lbl_8038FB44@l
/* 80107B34 00104A74  38 A1 00 AC */ addi r5, r1, 0xac
/* 80107B38 00104A78  48 23 F2 35 */ bl PSMTXMultVec
/* 80107B3C 00104A7C  38 61 00 AC */ addi r3, r1, 0xac
/* 80107B40 00104A80  7E C4 B3 78 */ mr r4, r22
/* 80107B44 00104A84  7C 65 1B 78 */ mr r5, r3
/* 80107B48 00104A88  48 23 F5 6D */ bl PSVECSubtract
/* 80107B4C 00104A8C  80 7D 38 44 */ lwz r3, 0x3844(r29)
/* 80107B50 00104A90  38 63 00 06 */ addi r3, r3, 6
/* 80107B54 00104A94  3B 20 D0 00 */ li r25, -12288
lbl_80107B58:
/* 80107B58 00104A98  AB 43 00 02 */ lha r26, 2(r3)
/* 80107B5C 00104A9C  A8 03 00 04 */ lha r0, 4(r3)
/* 80107B60 00104AA0  7C 00 CA 14 */ add r0, r0, r25
/* 80107B64 00104AA4  7C 1B 07 34 */ extsh r27, r0
/* 80107B68 00104AA8  38 61 00 AC */ addi r3, r1, 0xac
/* 80107B6C 00104AAC  48 23 F5 CD */ bl PSVECSquareMag
/* 80107B70 00104AB0  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 80107B74 00104AB4  40 81 00 58 */ ble lbl_80107BCC
/* 80107B78 00104AB8  FC 00 08 34 */ frsqrte f0, f1
/* 80107B7C 00104ABC  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 80107B80 00104AC0  FC 44 00 32 */ fmul f2, f4, f0
/* 80107B84 00104AC4  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 80107B88 00104AC8  FC 00 00 32 */ fmul f0, f0, f0
/* 80107B8C 00104ACC  FC 01 00 32 */ fmul f0, f1, f0
/* 80107B90 00104AD0  FC 03 00 28 */ fsub f0, f3, f0
/* 80107B94 00104AD4  FC 02 00 32 */ fmul f0, f2, f0
/* 80107B98 00104AD8  FC 44 00 32 */ fmul f2, f4, f0
/* 80107B9C 00104ADC  FC 00 00 32 */ fmul f0, f0, f0
/* 80107BA0 00104AE0  FC 01 00 32 */ fmul f0, f1, f0
/* 80107BA4 00104AE4  FC 03 00 28 */ fsub f0, f3, f0
/* 80107BA8 00104AE8  FC 02 00 32 */ fmul f0, f2, f0
/* 80107BAC 00104AEC  FC 44 00 32 */ fmul f2, f4, f0
/* 80107BB0 00104AF0  FC 00 00 32 */ fmul f0, f0, f0
/* 80107BB4 00104AF4  FC 01 00 32 */ fmul f0, f1, f0
/* 80107BB8 00104AF8  FC 03 00 28 */ fsub f0, f3, f0
/* 80107BBC 00104AFC  FC 02 00 32 */ fmul f0, f2, f0
/* 80107BC0 00104B00  FF A1 00 32 */ fmul f29, f1, f0
/* 80107BC4 00104B04  FF A0 E8 18 */ frsp f29, f29
/* 80107BC8 00104B08  48 00 00 90 */ b lbl_80107C58
lbl_80107BCC:
/* 80107BCC 00104B0C  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 80107BD0 00104B10  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107BD4 00104B14  40 80 00 10 */ bge lbl_80107BE4
/* 80107BD8 00104B18  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80107BDC 00104B1C  C3 A3 0A E0 */ lfs f29, lbl_80450AE0@l(r3)
/* 80107BE0 00104B20  48 00 00 78 */ b lbl_80107C58
lbl_80107BE4:
/* 80107BE4 00104B24  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 80107BE8 00104B28  80 81 00 14 */ lwz r4, 0x14(r1)
/* 80107BEC 00104B2C  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80107BF0 00104B30  3C 00 7F 80 */ lis r0, 0x7f80
/* 80107BF4 00104B34  7C 03 00 00 */ cmpw r3, r0
/* 80107BF8 00104B38  41 82 00 14 */ beq lbl_80107C0C
/* 80107BFC 00104B3C  40 80 00 40 */ bge lbl_80107C3C
/* 80107C00 00104B40  2C 03 00 00 */ cmpwi r3, 0
/* 80107C04 00104B44  41 82 00 20 */ beq lbl_80107C24
/* 80107C08 00104B48  48 00 00 34 */ b lbl_80107C3C
lbl_80107C0C:
/* 80107C0C 00104B4C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80107C10 00104B50  41 82 00 0C */ beq lbl_80107C1C
/* 80107C14 00104B54  38 00 00 01 */ li r0, 1
/* 80107C18 00104B58  48 00 00 28 */ b lbl_80107C40
lbl_80107C1C:
/* 80107C1C 00104B5C  38 00 00 02 */ li r0, 2
/* 80107C20 00104B60  48 00 00 20 */ b lbl_80107C40
lbl_80107C24:
/* 80107C24 00104B64  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80107C28 00104B68  41 82 00 0C */ beq lbl_80107C34
/* 80107C2C 00104B6C  38 00 00 05 */ li r0, 5
/* 80107C30 00104B70  48 00 00 10 */ b lbl_80107C40
lbl_80107C34:
/* 80107C34 00104B74  38 00 00 03 */ li r0, 3
/* 80107C38 00104B78  48 00 00 08 */ b lbl_80107C40
lbl_80107C3C:
/* 80107C3C 00104B7C  38 00 00 04 */ li r0, 4
lbl_80107C40:
/* 80107C40 00104B80  2C 00 00 01 */ cmpwi r0, 1
/* 80107C44 00104B84  40 82 00 10 */ bne lbl_80107C54
/* 80107C48 00104B88  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80107C4C 00104B8C  C3 A3 0A E0 */ lfs f29, lbl_80450AE0@l(r3)
/* 80107C50 00104B90  48 00 00 08 */ b lbl_80107C58
lbl_80107C54:
/* 80107C54 00104B94  FF A0 08 90 */ fmr f29, f1
lbl_80107C58:
/* 80107C58 00104B98  C0 1C 00 00 */ lfs f0, 0(r28)
/* 80107C5C 00104B9C  D0 01 00 A0 */ stfs f0, 0xa0(r1)
/* 80107C60 00104BA0  C0 1C 00 04 */ lfs f0, 4(r28)
/* 80107C64 00104BA4  D0 01 00 A4 */ stfs f0, 0xa4(r1)
/* 80107C68 00104BA8  C0 1C 00 08 */ lfs f0, 8(r28)
/* 80107C6C 00104BAC  D0 01 00 A8 */ stfs f0, 0xa8(r1)
/* 80107C70 00104BB0  FC 1D F8 40 */ fcmpo cr0, f29, f31
/* 80107C74 00104BB4  40 81 02 04 */ ble lbl_80107E78
/* 80107C78 00104BB8  C0 01 00 AC */ lfs f0, 0xac(r1)
/* 80107C7C 00104BBC  D0 01 00 34 */ stfs f0, 0x34(r1)
/* 80107C80 00104BC0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80107C84 00104BC4  D0 01 00 38 */ stfs f0, 0x38(r1)
/* 80107C88 00104BC8  C0 01 00 B4 */ lfs f0, 0xb4(r1)
/* 80107C8C 00104BCC  D0 01 00 3C */ stfs f0, 0x3c(r1)
/* 80107C90 00104BD0  38 61 00 34 */ addi r3, r1, 0x34
/* 80107C94 00104BD4  48 23 F4 A5 */ bl PSVECSquareMag
/* 80107C98 00104BD8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80107C9C 00104BDC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107CA0 00104BE0  40 81 00 58 */ ble lbl_80107CF8
/* 80107CA4 00104BE4  FC 00 08 34 */ frsqrte f0, f1
/* 80107CA8 00104BE8  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 80107CAC 00104BEC  FC 44 00 32 */ fmul f2, f4, f0
/* 80107CB0 00104BF0  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 80107CB4 00104BF4  FC 00 00 32 */ fmul f0, f0, f0
/* 80107CB8 00104BF8  FC 01 00 32 */ fmul f0, f1, f0
/* 80107CBC 00104BFC  FC 03 00 28 */ fsub f0, f3, f0
/* 80107CC0 00104C00  FC 02 00 32 */ fmul f0, f2, f0
/* 80107CC4 00104C04  FC 44 00 32 */ fmul f2, f4, f0
/* 80107CC8 00104C08  FC 00 00 32 */ fmul f0, f0, f0
/* 80107CCC 00104C0C  FC 01 00 32 */ fmul f0, f1, f0
/* 80107CD0 00104C10  FC 03 00 28 */ fsub f0, f3, f0
/* 80107CD4 00104C14  FC 02 00 32 */ fmul f0, f2, f0
/* 80107CD8 00104C18  FC 44 00 32 */ fmul f2, f4, f0
/* 80107CDC 00104C1C  FC 00 00 32 */ fmul f0, f0, f0
/* 80107CE0 00104C20  FC 01 00 32 */ fmul f0, f1, f0
/* 80107CE4 00104C24  FC 03 00 28 */ fsub f0, f3, f0
/* 80107CE8 00104C28  FC 02 00 32 */ fmul f0, f2, f0
/* 80107CEC 00104C2C  FC 21 00 32 */ fmul f1, f1, f0
/* 80107CF0 00104C30  FC 20 08 18 */ frsp f1, f1
/* 80107CF4 00104C34  48 00 00 88 */ b lbl_80107D7C
lbl_80107CF8:
/* 80107CF8 00104C38  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 80107CFC 00104C3C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107D00 00104C40  40 80 00 10 */ bge lbl_80107D10
/* 80107D04 00104C44  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80107D08 00104C48  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 80107D0C 00104C4C  48 00 00 70 */ b lbl_80107D7C
lbl_80107D10:
/* 80107D10 00104C50  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 80107D14 00104C54  80 81 00 10 */ lwz r4, 0x10(r1)
/* 80107D18 00104C58  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80107D1C 00104C5C  3C 00 7F 80 */ lis r0, 0x7f80
/* 80107D20 00104C60  7C 03 00 00 */ cmpw r3, r0
/* 80107D24 00104C64  41 82 00 14 */ beq lbl_80107D38
/* 80107D28 00104C68  40 80 00 40 */ bge lbl_80107D68
/* 80107D2C 00104C6C  2C 03 00 00 */ cmpwi r3, 0
/* 80107D30 00104C70  41 82 00 20 */ beq lbl_80107D50
/* 80107D34 00104C74  48 00 00 34 */ b lbl_80107D68
lbl_80107D38:
/* 80107D38 00104C78  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80107D3C 00104C7C  41 82 00 0C */ beq lbl_80107D48
/* 80107D40 00104C80  38 00 00 01 */ li r0, 1
/* 80107D44 00104C84  48 00 00 28 */ b lbl_80107D6C
lbl_80107D48:
/* 80107D48 00104C88  38 00 00 02 */ li r0, 2
/* 80107D4C 00104C8C  48 00 00 20 */ b lbl_80107D6C
lbl_80107D50:
/* 80107D50 00104C90  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80107D54 00104C94  41 82 00 0C */ beq lbl_80107D60
/* 80107D58 00104C98  38 00 00 05 */ li r0, 5
/* 80107D5C 00104C9C  48 00 00 10 */ b lbl_80107D6C
lbl_80107D60:
/* 80107D60 00104CA0  38 00 00 03 */ li r0, 3
/* 80107D64 00104CA4  48 00 00 08 */ b lbl_80107D6C
lbl_80107D68:
/* 80107D68 00104CA8  38 00 00 04 */ li r0, 4
lbl_80107D6C:
/* 80107D6C 00104CAC  2C 00 00 01 */ cmpwi r0, 1
/* 80107D70 00104CB0  40 82 00 0C */ bne lbl_80107D7C
/* 80107D74 00104CB4  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80107D78 00104CB8  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_80107D7C:
/* 80107D7C 00104CBC  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80107D80 00104CC0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107D84 00104CC4  4C 41 13 82 */ cror 2, 1, 2
/* 80107D88 00104CC8  40 82 00 10 */ bne lbl_80107D98
/* 80107D8C 00104CCC  38 61 00 AC */ addi r3, r1, 0xac
/* 80107D90 00104CD0  48 15 F3 99 */ bl cXyz_NS_atan2sX_Z
/* 80107D94 00104CD4  7C 7A 1B 78 */ mr r26, r3
lbl_80107D98:
/* 80107D98 00104CD8  38 61 00 AC */ addi r3, r1, 0xac
/* 80107D9C 00104CDC  48 15 F3 B5 */ bl cXyz_NS_atan2sY_XZ
/* 80107DA0 00104CE0  7C 75 1B 78 */ mr r21, r3
/* 80107DA4 00104CE4  38 61 00 64 */ addi r3, r1, 0x64
/* 80107DA8 00104CE8  38 81 00 AC */ addi r4, r1, 0xac
/* 80107DAC 00104CEC  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 80107DB0 00104CF0  EC 20 E8 24 */ fdivs f1, f0, f29
/* 80107DB4 00104CF4  48 15 ED D1 */ bl cXyz_NS___ml
/* 80107DB8 00104CF8  C0 01 00 64 */ lfs f0, 0x64(r1)
/* 80107DBC 00104CFC  D0 01 00 94 */ stfs f0, 0x94(r1)
/* 80107DC0 00104D00  C0 01 00 68 */ lfs f0, 0x68(r1)
/* 80107DC4 00104D04  D0 01 00 98 */ stfs f0, 0x98(r1)
/* 80107DC8 00104D08  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 80107DCC 00104D0C  D0 01 00 9C */ stfs f0, 0x9c(r1)
/* 80107DD0 00104D10  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80107DD4 00104D14  3B 83 4A C8 */ addi r28, r3, lbl_80434AC8@l
/* 80107DD8 00104D18  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80107DDC 00104D1C  3B 03 D4 70 */ addi r24, r3, lbl_803DD470@l
/* 80107DE0 00104D20  7F 17 C3 78 */ mr r23, r24
/* 80107DE4 00104D24  7F 16 C3 78 */ mr r22, r24
/* 80107DE8 00104D28  C3 62 93 30 */ lfs f27, lbl_80452D30-_SDA2_BASE_(r2)
/* 80107DEC 00104D2C  C3 82 93 3C */ lfs f28, lbl_80452D3C-_SDA2_BASE_(r2)
/* 80107DF0 00104D30  48 00 00 80 */ b lbl_80107E70
lbl_80107DF4:
/* 80107DF4 00104D34  7F 83 E3 78 */ mr r3, r28
/* 80107DF8 00104D38  7F 04 C3 78 */ mr r4, r24
/* 80107DFC 00104D3C  48 23 E6 B5 */ bl PSMTXCopy
/* 80107E00 00104D40  38 61 00 A0 */ addi r3, r1, 0xa0
/* 80107E04 00104D44  4B F0 4F D1 */ bl mDoMtx_stack_c_NS_transM_X1_
/* 80107E08 00104D48  7F 03 C3 78 */ mr r3, r24
/* 80107E0C 00104D4C  7E A4 AB 78 */ mr r4, r21
/* 80107E10 00104D50  7F 45 D3 78 */ mr r5, r26
/* 80107E14 00104D54  7F 66 DB 78 */ mr r6, r27
/* 80107E18 00104D58  4B F0 44 89 */ bl mDoMtx_ZXYrotM
/* 80107E1C 00104D5C  C0 22 93 14 */ lfs f1, lbl_80452D14-_SDA2_BASE_(r2)
/* 80107E20 00104D60  FC 40 08 90 */ fmr f2, f1
/* 80107E24 00104D64  FC 60 08 90 */ fmr f3, f1
/* 80107E28 00104D68  4B F0 50 11 */ bl mDoMtx_stack_c_NS_scaleM
/* 80107E2C 00104D6C  7E E3 BB 78 */ mr r3, r23
/* 80107E30 00104D70  38 80 00 00 */ li r4, 0
/* 80107E34 00104D74  48 25 84 19 */ bl GXLoadPosMtxImm
/* 80107E38 00104D78  7E C3 B3 78 */ mr r3, r22
/* 80107E3C 00104D7C  38 80 00 00 */ li r4, 0
/* 80107E40 00104D80  48 25 84 5D */ bl GXLoadNrmMtxImm
/* 80107E44 00104D84  80 7E 00 08 */ lwz r3, 8(r30)
/* 80107E48 00104D88  81 83 00 00 */ lwz r12, 0(r3)
/* 80107E4C 00104D8C  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 80107E50 00104D90  7D 89 03 A6 */ mtctr r12
/* 80107E54 00104D94  4E 80 04 21 */ bctrl
/* 80107E58 00104D98  38 61 00 A0 */ addi r3, r1, 0xa0
/* 80107E5C 00104D9C  38 81 00 94 */ addi r4, r1, 0x94
/* 80107E60 00104DA0  7C 65 1B 78 */ mr r5, r3
/* 80107E64 00104DA4  48 23 F2 2D */ bl PSVECAdd
/* 80107E68 00104DA8  EF BD D8 28 */ fsubs f29, f29, f27
/* 80107E6C 00104DAC  7F 7B CA 14 */ add r27, r27, r25
lbl_80107E70:
/* 80107E70 00104DB0  FC 1D E0 40 */ fcmpo cr0, f29, f28
/* 80107E74 00104DB4  41 81 FF 80 */ bgt lbl_80107DF4
lbl_80107E78:
/* 80107E78 00104DB8  3B FF 00 01 */ addi r31, r31, 1
/* 80107E7C 00104DBC  2C 1F 00 02 */ cmpwi r31, 2
/* 80107E80 00104DC0  41 80 FC 30 */ blt lbl_80107AB0
/* 80107E84 00104DC4  48 00 04 F4 */ b lbl_80108378
lbl_80107E88:
/* 80107E88 00104DC8  38 9D 37 E0 */ addi r4, r29, 0x37e0
/* 80107E8C 00104DCC  3A FD 37 EC */ addi r23, r29, 0x37ec
/* 80107E90 00104DD0  38 61 00 58 */ addi r3, r1, 0x58
/* 80107E94 00104DD4  7E E5 BB 78 */ mr r5, r23
/* 80107E98 00104DD8  48 15 EC 9D */ bl cXyz_NS___mi
/* 80107E9C 00104DDC  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 80107EA0 00104DE0  D0 01 00 88 */ stfs f0, 0x88(r1)
/* 80107EA4 00104DE4  C0 01 00 5C */ lfs f0, 0x5c(r1)
/* 80107EA8 00104DE8  D0 01 00 8C */ stfs f0, 0x8c(r1)
/* 80107EAC 00104DEC  C0 01 00 60 */ lfs f0, 0x60(r1)
/* 80107EB0 00104DF0  D0 01 00 90 */ stfs f0, 0x90(r1)
/* 80107EB4 00104DF4  38 61 00 88 */ addi r3, r1, 0x88
/* 80107EB8 00104DF8  48 23 F2 81 */ bl PSVECSquareMag
/* 80107EBC 00104DFC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80107EC0 00104E00  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107EC4 00104E04  40 81 00 58 */ ble lbl_80107F1C
/* 80107EC8 00104E08  FC 00 08 34 */ frsqrte f0, f1
/* 80107ECC 00104E0C  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 80107ED0 00104E10  FC 44 00 32 */ fmul f2, f4, f0
/* 80107ED4 00104E14  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 80107ED8 00104E18  FC 00 00 32 */ fmul f0, f0, f0
/* 80107EDC 00104E1C  FC 01 00 32 */ fmul f0, f1, f0
/* 80107EE0 00104E20  FC 03 00 28 */ fsub f0, f3, f0
/* 80107EE4 00104E24  FC 02 00 32 */ fmul f0, f2, f0
/* 80107EE8 00104E28  FC 44 00 32 */ fmul f2, f4, f0
/* 80107EEC 00104E2C  FC 00 00 32 */ fmul f0, f0, f0
/* 80107EF0 00104E30  FC 01 00 32 */ fmul f0, f1, f0
/* 80107EF4 00104E34  FC 03 00 28 */ fsub f0, f3, f0
/* 80107EF8 00104E38  FC 02 00 32 */ fmul f0, f2, f0
/* 80107EFC 00104E3C  FC 44 00 32 */ fmul f2, f4, f0
/* 80107F00 00104E40  FC 00 00 32 */ fmul f0, f0, f0
/* 80107F04 00104E44  FC 01 00 32 */ fmul f0, f1, f0
/* 80107F08 00104E48  FC 03 00 28 */ fsub f0, f3, f0
/* 80107F0C 00104E4C  FC 02 00 32 */ fmul f0, f2, f0
/* 80107F10 00104E50  FF 61 00 32 */ fmul f27, f1, f0
/* 80107F14 00104E54  FF 60 D8 18 */ frsp f27, f27
/* 80107F18 00104E58  48 00 00 90 */ b lbl_80107FA8
lbl_80107F1C:
/* 80107F1C 00104E5C  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 80107F20 00104E60  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80107F24 00104E64  40 80 00 10 */ bge lbl_80107F34
/* 80107F28 00104E68  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80107F2C 00104E6C  C3 63 0A E0 */ lfs f27, lbl_80450AE0@l(r3)
/* 80107F30 00104E70  48 00 00 78 */ b lbl_80107FA8
lbl_80107F34:
/* 80107F34 00104E74  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 80107F38 00104E78  80 81 00 0C */ lwz r4, 0xc(r1)
/* 80107F3C 00104E7C  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80107F40 00104E80  3C 00 7F 80 */ lis r0, 0x7f80
/* 80107F44 00104E84  7C 03 00 00 */ cmpw r3, r0
/* 80107F48 00104E88  41 82 00 14 */ beq lbl_80107F5C
/* 80107F4C 00104E8C  40 80 00 40 */ bge lbl_80107F8C
/* 80107F50 00104E90  2C 03 00 00 */ cmpwi r3, 0
/* 80107F54 00104E94  41 82 00 20 */ beq lbl_80107F74
/* 80107F58 00104E98  48 00 00 34 */ b lbl_80107F8C
lbl_80107F5C:
/* 80107F5C 00104E9C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80107F60 00104EA0  41 82 00 0C */ beq lbl_80107F6C
/* 80107F64 00104EA4  38 00 00 01 */ li r0, 1
/* 80107F68 00104EA8  48 00 00 28 */ b lbl_80107F90
lbl_80107F6C:
/* 80107F6C 00104EAC  38 00 00 02 */ li r0, 2
/* 80107F70 00104EB0  48 00 00 20 */ b lbl_80107F90
lbl_80107F74:
/* 80107F74 00104EB4  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80107F78 00104EB8  41 82 00 0C */ beq lbl_80107F84
/* 80107F7C 00104EBC  38 00 00 05 */ li r0, 5
/* 80107F80 00104EC0  48 00 00 10 */ b lbl_80107F90
lbl_80107F84:
/* 80107F84 00104EC4  38 00 00 03 */ li r0, 3
/* 80107F88 00104EC8  48 00 00 08 */ b lbl_80107F90
lbl_80107F8C:
/* 80107F8C 00104ECC  38 00 00 04 */ li r0, 4
lbl_80107F90:
/* 80107F90 00104ED0  2C 00 00 01 */ cmpwi r0, 1
/* 80107F94 00104ED4  40 82 00 10 */ bne lbl_80107FA4
/* 80107F98 00104ED8  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80107F9C 00104EDC  C3 63 0A E0 */ lfs f27, lbl_80450AE0@l(r3)
/* 80107FA0 00104EE0  48 00 00 08 */ b lbl_80107FA8
lbl_80107FA4:
/* 80107FA4 00104EE4  FF 60 08 90 */ fmr f27, f1
lbl_80107FA8:
/* 80107FA8 00104EE8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80107FAC 00104EEC  FC 1B 00 40 */ fcmpo cr0, f27, f0
/* 80107FB0 00104EF0  40 81 01 B0 */ ble lbl_80108160
/* 80107FB4 00104EF4  38 61 00 88 */ addi r3, r1, 0x88
/* 80107FB8 00104EF8  7C 64 1B 78 */ mr r4, r3
/* 80107FBC 00104EFC  EC 20 D8 24 */ fdivs f1, f0, f27
/* 80107FC0 00104F00  48 23 F1 19 */ bl PSVECScale
/* 80107FC4 00104F04  C3 A2 92 C0 */ lfs f29, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80107FC8 00104F08  C0 17 00 00 */ lfs f0, 0(r23)
/* 80107FCC 00104F0C  D0 01 00 7C */ stfs f0, 0x7c(r1)
/* 80107FD0 00104F10  C0 17 00 04 */ lfs f0, 4(r23)
/* 80107FD4 00104F14  D0 01 00 80 */ stfs f0, 0x80(r1)
/* 80107FD8 00104F18  C0 17 00 08 */ lfs f0, 8(r23)
/* 80107FDC 00104F1C  D0 01 00 84 */ stfs f0, 0x84(r1)
/* 80107FE0 00104F20  38 61 00 88 */ addi r3, r1, 0x88
/* 80107FE4 00104F24  48 15 F1 45 */ bl cXyz_NS_atan2sX_Z
/* 80107FE8 00104F28  7C 76 1B 78 */ mr r22, r3
/* 80107FEC 00104F2C  38 61 00 88 */ addi r3, r1, 0x88
/* 80107FF0 00104F30  48 15 F1 61 */ bl cXyz_NS_atan2sY_XZ
/* 80107FF4 00104F34  B0 61 00 2C */ sth r3, 0x2c(r1)
/* 80107FF8 00104F38  B2 C1 00 2E */ sth r22, 0x2e(r1)
/* 80107FFC 00104F3C  38 60 00 00 */ li r3, 0
/* 80108000 00104F40  B0 61 00 30 */ sth r3, 0x30(r1)
/* 80108004 00104F44  C0 17 00 00 */ lfs f0, 0(r23)
/* 80108008 00104F48  D0 01 00 7C */ stfs f0, 0x7c(r1)
/* 8010800C 00104F4C  C0 17 00 04 */ lfs f0, 4(r23)
/* 80108010 00104F50  D0 01 00 80 */ stfs f0, 0x80(r1)
/* 80108014 00104F54  C0 17 00 08 */ lfs f0, 8(r23)
/* 80108018 00104F58  D0 01 00 84 */ stfs f0, 0x84(r1)
/* 8010801C 00104F5C  80 01 00 2C */ lwz r0, 0x2c(r1)
/* 80108020 00104F60  90 01 00 24 */ stw r0, 0x24(r1)
/* 80108024 00104F64  B0 61 00 28 */ sth r3, 0x28(r1)
/* 80108028 00104F68  C0 02 93 AC */ lfs f0, lbl_80452DAC-_SDA2_BASE_(r2)
/* 8010802C 00104F6C  EF 80 D8 24 */ fdivs f28, f0, f27
/* 80108030 00104F70  C3 42 92 C0 */ lfs f26, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80108034 00104F74  C0 42 93 D8 */ lfs f2, lbl_80452DD8-_SDA2_BASE_(r2)
/* 80108038 00104F78  A8 7D 30 26 */ lha r3, 0x3026(r29)
/* 8010803C 00104F7C  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 80108040 00104F80  6C 60 80 00 */ xoris r0, r3, 0x8000
/* 80108044 00104F84  90 01 00 BC */ stw r0, 0xbc(r1)
/* 80108048 00104F88  3C 00 43 30 */ lis r0, 0x4330
/* 8010804C 00104F8C  90 01 00 B8 */ stw r0, 0xb8(r1)
/* 80108050 00104F90  C8 01 00 B8 */ lfd f0, 0xb8(r1)
/* 80108054 00104F94  EC 00 08 28 */ fsubs f0, f0, f1
/* 80108058 00104F98  EF 22 00 32 */ fmuls f25, f2, f0
/* 8010805C 00104F9C  54 60 07 FF */ clrlwi. r0, r3, 0x1f
/* 80108060 00104FA0  41 82 00 0C */ beq lbl_8010806C
/* 80108064 00104FA4  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 80108068 00104FA8  EF 39 00 32 */ fmuls f25, f25, f0
lbl_8010806C:
/* 8010806C 00104FAC  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 80108070 00104FB0  3B E3 9A 20 */ addi r31, r3, lbl_80439A20@l
/* 80108074 00104FB4  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80108078 00104FB8  3A E3 D4 70 */ addi r23, r3, lbl_803DD470@l
/* 8010807C 00104FBC  3C 60 80 39 */ lis r3, lbl_803919FC@ha
/* 80108080 00104FC0  3B 03 19 FC */ addi r24, r3, lbl_803919FC@l
/* 80108084 00104FC4  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 80108088 00104FC8  3B 83 4A C8 */ addi r28, r3, lbl_80434AC8@l
/* 8010808C 00104FCC  7E FB BB 78 */ mr r27, r23
/* 80108090 00104FD0  7E FA BB 78 */ mr r26, r23
/* 80108094 00104FD4  7E F9 BB 78 */ mr r25, r23
/* 80108098 00104FD8  C3 C2 93 3C */ lfs f30, lbl_80452D3C-_SDA2_BASE_(r2)
/* 8010809C 00104FDC  48 00 00 BC */ b lbl_80108158
lbl_801080A0:
/* 801080A0 00104FE0  EC 3C 07 72 */ fmuls f1, f28, f29
/* 801080A4 00104FE4  48 15 F5 41 */ bl cM_rad2s
/* 801080A8 00104FE8  54 60 04 38 */ rlwinm r0, r3, 0, 0x10, 0x1c
/* 801080AC 00104FEC  7C 1F 04 2E */ lfsx f0, r31, r0
/* 801080B0 00104FF0  EF F9 00 32 */ fmuls f31, f25, f0
/* 801080B4 00104FF4  EC 3F D0 28 */ fsubs f1, f31, f26
/* 801080B8 00104FF8  C0 42 93 3C */ lfs f2, lbl_80452D3C-_SDA2_BASE_(r2)
/* 801080BC 00104FFC  48 15 F5 B9 */ bl cM_atan2s
/* 801080C0 00105000  7C 76 1B 78 */ mr r22, r3
/* 801080C4 00105004  A8 01 00 2C */ lha r0, 0x2c(r1)
/* 801080C8 00105008  7C 00 B2 14 */ add r0, r0, r22
/* 801080CC 0010500C  B0 01 00 24 */ sth r0, 0x24(r1)
/* 801080D0 00105010  38 61 00 7C */ addi r3, r1, 0x7c
/* 801080D4 00105014  4B F0 4C 91 */ bl mDoMtx_stack_c_NS_transS
/* 801080D8 00105018  38 61 00 24 */ addi r3, r1, 0x24
/* 801080DC 0010501C  4B F0 4E 69 */ bl mDoMtx_stack_c_NS_ZXYrotM
/* 801080E0 00105020  7E E3 BB 78 */ mr r3, r23
/* 801080E4 00105024  7F 04 C3 78 */ mr r4, r24
/* 801080E8 00105028  38 A1 00 7C */ addi r5, r1, 0x7c
/* 801080EC 0010502C  48 23 EC 81 */ bl PSMTXMultVec
/* 801080F0 00105030  7F 83 E3 78 */ mr r3, r28
/* 801080F4 00105034  7E E4 BB 78 */ mr r4, r23
/* 801080F8 00105038  7F 65 DB 78 */ mr r5, r27
/* 801080FC 0010503C  48 23 E3 E9 */ bl PSMTXConcat
/* 80108100 00105040  7F 43 D3 78 */ mr r3, r26
/* 80108104 00105044  38 80 00 00 */ li r4, 0
/* 80108108 00105048  48 25 81 45 */ bl GXLoadPosMtxImm
/* 8010810C 0010504C  7F 23 CB 78 */ mr r3, r25
/* 80108110 00105050  38 80 00 00 */ li r4, 0
/* 80108114 00105054  48 25 81 89 */ bl GXLoadNrmMtxImm
/* 80108118 00105058  80 7E 00 08 */ lwz r3, 8(r30)
/* 8010811C 0010505C  81 83 00 00 */ lwz r12, 0(r3)
/* 80108120 00105060  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 80108124 00105064  7D 89 03 A6 */ mtctr r12
/* 80108128 00105068  4E 80 04 21 */ bctrl
/* 8010812C 0010506C  A8 61 00 28 */ lha r3, 0x28(r1)
/* 80108130 00105070  38 03 30 00 */ addi r0, r3, 0x3000
/* 80108134 00105074  B0 01 00 28 */ sth r0, 0x28(r1)
/* 80108138 00105078  FF 40 F8 90 */ fmr f26, f31
/* 8010813C 0010507C  56 C0 04 38 */ rlwinm r0, r22, 0, 0x10, 0x1c
/* 80108140 00105080  7C 7F 02 14 */ add r3, r31, r0
/* 80108144 00105084  C0 03 00 04 */ lfs f0, 4(r3)
/* 80108148 00105088  FC 00 02 10 */ fabs f0, f0
/* 8010814C 0010508C  FC 00 00 18 */ frsp f0, f0
/* 80108150 00105090  EC 1E 00 32 */ fmuls f0, f30, f0
/* 80108154 00105094  EF BD 00 2A */ fadds f29, f29, f0
lbl_80108158:
/* 80108158 00105098  FC 1B E8 40 */ fcmpo cr0, f27, f29
/* 8010815C 0010509C  41 81 FF 44 */ bgt lbl_801080A0
lbl_80108160:
/* 80108160 001050A0  38 9D 38 10 */ addi r4, r29, 0x3810
/* 80108164 001050A4  3A DD 38 04 */ addi r22, r29, 0x3804
/* 80108168 001050A8  38 61 00 4C */ addi r3, r1, 0x4c
/* 8010816C 001050AC  7E C5 B3 78 */ mr r5, r22
/* 80108170 001050B0  48 15 E9 C5 */ bl cXyz_NS___mi
/* 80108174 001050B4  C0 01 00 4C */ lfs f0, 0x4c(r1)
/* 80108178 001050B8  D0 01 00 88 */ stfs f0, 0x88(r1)
/* 8010817C 001050BC  C0 01 00 50 */ lfs f0, 0x50(r1)
/* 80108180 001050C0  D0 01 00 8C */ stfs f0, 0x8c(r1)
/* 80108184 001050C4  C0 01 00 54 */ lfs f0, 0x54(r1)
/* 80108188 001050C8  D0 01 00 90 */ stfs f0, 0x90(r1)
/* 8010818C 001050CC  38 61 00 88 */ addi r3, r1, 0x88
/* 80108190 001050D0  48 23 EF A9 */ bl PSVECSquareMag
/* 80108194 001050D4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80108198 001050D8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010819C 001050DC  40 81 00 58 */ ble lbl_801081F4
/* 801081A0 001050E0  FC 00 08 34 */ frsqrte f0, f1
/* 801081A4 001050E4  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 801081A8 001050E8  FC 44 00 32 */ fmul f2, f4, f0
/* 801081AC 001050EC  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 801081B0 001050F0  FC 00 00 32 */ fmul f0, f0, f0
/* 801081B4 001050F4  FC 01 00 32 */ fmul f0, f1, f0
/* 801081B8 001050F8  FC 03 00 28 */ fsub f0, f3, f0
/* 801081BC 001050FC  FC 02 00 32 */ fmul f0, f2, f0
/* 801081C0 00105100  FC 44 00 32 */ fmul f2, f4, f0
/* 801081C4 00105104  FC 00 00 32 */ fmul f0, f0, f0
/* 801081C8 00105108  FC 01 00 32 */ fmul f0, f1, f0
/* 801081CC 0010510C  FC 03 00 28 */ fsub f0, f3, f0
/* 801081D0 00105110  FC 02 00 32 */ fmul f0, f2, f0
/* 801081D4 00105114  FC 44 00 32 */ fmul f2, f4, f0
/* 801081D8 00105118  FC 00 00 32 */ fmul f0, f0, f0
/* 801081DC 0010511C  FC 01 00 32 */ fmul f0, f1, f0
/* 801081E0 00105120  FC 03 00 28 */ fsub f0, f3, f0
/* 801081E4 00105124  FC 02 00 32 */ fmul f0, f2, f0
/* 801081E8 00105128  FF 61 00 32 */ fmul f27, f1, f0
/* 801081EC 0010512C  FF 60 D8 18 */ frsp f27, f27
/* 801081F0 00105130  48 00 00 90 */ b lbl_80108280
lbl_801081F4:
/* 801081F4 00105134  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 801081F8 00105138  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801081FC 0010513C  40 80 00 10 */ bge lbl_8010820C
/* 80108200 00105140  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80108204 00105144  C3 63 0A E0 */ lfs f27, lbl_80450AE0@l(r3)
/* 80108208 00105148  48 00 00 78 */ b lbl_80108280
lbl_8010820C:
/* 8010820C 0010514C  D0 21 00 08 */ stfs f1, 8(r1)
/* 80108210 00105150  80 81 00 08 */ lwz r4, 8(r1)
/* 80108214 00105154  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80108218 00105158  3C 00 7F 80 */ lis r0, 0x7f80
/* 8010821C 0010515C  7C 03 00 00 */ cmpw r3, r0
/* 80108220 00105160  41 82 00 14 */ beq lbl_80108234
/* 80108224 00105164  40 80 00 40 */ bge lbl_80108264
/* 80108228 00105168  2C 03 00 00 */ cmpwi r3, 0
/* 8010822C 0010516C  41 82 00 20 */ beq lbl_8010824C
/* 80108230 00105170  48 00 00 34 */ b lbl_80108264
lbl_80108234:
/* 80108234 00105174  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80108238 00105178  41 82 00 0C */ beq lbl_80108244
/* 8010823C 0010517C  38 00 00 01 */ li r0, 1
/* 80108240 00105180  48 00 00 28 */ b lbl_80108268
lbl_80108244:
/* 80108244 00105184  38 00 00 02 */ li r0, 2
/* 80108248 00105188  48 00 00 20 */ b lbl_80108268
lbl_8010824C:
/* 8010824C 0010518C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80108250 00105190  41 82 00 0C */ beq lbl_8010825C
/* 80108254 00105194  38 00 00 05 */ li r0, 5
/* 80108258 00105198  48 00 00 10 */ b lbl_80108268
lbl_8010825C:
/* 8010825C 0010519C  38 00 00 03 */ li r0, 3
/* 80108260 001051A0  48 00 00 08 */ b lbl_80108268
lbl_80108264:
/* 80108264 001051A4  38 00 00 04 */ li r0, 4
lbl_80108268:
/* 80108268 001051A8  2C 00 00 01 */ cmpwi r0, 1
/* 8010826C 001051AC  40 82 00 10 */ bne lbl_8010827C
/* 80108270 001051B0  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80108274 001051B4  C3 63 0A E0 */ lfs f27, lbl_80450AE0@l(r3)
/* 80108278 001051B8  48 00 00 08 */ b lbl_80108280
lbl_8010827C:
/* 8010827C 001051BC  FF 60 08 90 */ fmr f27, f1
lbl_80108280:
/* 80108280 001051C0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80108284 001051C4  FC 1B 00 40 */ fcmpo cr0, f27, f0
/* 80108288 001051C8  40 81 00 F0 */ ble lbl_80108378
/* 8010828C 001051CC  38 61 00 88 */ addi r3, r1, 0x88
/* 80108290 001051D0  7C 64 1B 78 */ mr r4, r3
/* 80108294 001051D4  EC 20 D8 24 */ fdivs f1, f0, f27
/* 80108298 001051D8  48 23 EE 41 */ bl PSVECScale
/* 8010829C 001051DC  C3 82 92 C0 */ lfs f28, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801082A0 001051E0  C0 16 00 00 */ lfs f0, 0(r22)
/* 801082A4 001051E4  D0 01 00 7C */ stfs f0, 0x7c(r1)
/* 801082A8 001051E8  C0 16 00 04 */ lfs f0, 4(r22)
/* 801082AC 001051EC  D0 01 00 80 */ stfs f0, 0x80(r1)
/* 801082B0 001051F0  C0 16 00 08 */ lfs f0, 8(r22)
/* 801082B4 001051F4  D0 01 00 84 */ stfs f0, 0x84(r1)
/* 801082B8 001051F8  38 61 00 88 */ addi r3, r1, 0x88
/* 801082BC 001051FC  48 15 EE 6D */ bl cXyz_NS_atan2sX_Z
/* 801082C0 00105200  7C 79 1B 78 */ mr r25, r3
/* 801082C4 00105204  38 61 00 88 */ addi r3, r1, 0x88
/* 801082C8 00105208  48 15 EE 89 */ bl cXyz_NS_atan2sY_XZ
/* 801082CC 0010520C  B0 61 00 2C */ sth r3, 0x2c(r1)
/* 801082D0 00105210  B3 21 00 2E */ sth r25, 0x2e(r1)
/* 801082D4 00105214  38 00 00 00 */ li r0, 0
/* 801082D8 00105218  B0 01 00 30 */ sth r0, 0x30(r1)
/* 801082DC 0010521C  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 801082E0 00105220  3B 63 4A C8 */ addi r27, r3, lbl_80434AC8@l
/* 801082E4 00105224  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 801082E8 00105228  3B 43 D4 70 */ addi r26, r3, lbl_803DD470@l
/* 801082EC 0010522C  7F 59 D3 78 */ mr r25, r26
/* 801082F0 00105230  C3 A2 93 3C */ lfs f29, lbl_80452D3C-_SDA2_BASE_(r2)
/* 801082F4 00105234  48 00 00 7C */ b lbl_80108370
lbl_801082F8:
/* 801082F8 00105238  7F 63 DB 78 */ mr r3, r27
/* 801082FC 0010523C  7F 44 D3 78 */ mr r4, r26
/* 80108300 00105240  48 23 E1 B1 */ bl PSMTXCopy
/* 80108304 00105244  38 61 00 7C */ addi r3, r1, 0x7c
/* 80108308 00105248  4B F0 4A CD */ bl mDoMtx_stack_c_NS_transM_X1_
/* 8010830C 0010524C  38 61 00 2C */ addi r3, r1, 0x2c
/* 80108310 00105250  4B F0 4C 35 */ bl mDoMtx_stack_c_NS_ZXYrotM
/* 80108314 00105254  7F 43 D3 78 */ mr r3, r26
/* 80108318 00105258  38 80 00 00 */ li r4, 0
/* 8010831C 0010525C  48 25 7F 31 */ bl GXLoadPosMtxImm
/* 80108320 00105260  7F 23 CB 78 */ mr r3, r25
/* 80108324 00105264  38 80 00 00 */ li r4, 0
/* 80108328 00105268  48 25 7F 75 */ bl GXLoadNrmMtxImm
/* 8010832C 0010526C  80 7E 00 08 */ lwz r3, 8(r30)
/* 80108330 00105270  81 83 00 00 */ lwz r12, 0(r3)
/* 80108334 00105274  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 80108338 00105278  7D 89 03 A6 */ mtctr r12
/* 8010833C 0010527C  4E 80 04 21 */ bctrl
/* 80108340 00105280  38 61 00 40 */ addi r3, r1, 0x40
/* 80108344 00105284  38 81 00 88 */ addi r4, r1, 0x88
/* 80108348 00105288  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 8010834C 0010528C  48 15 E8 39 */ bl cXyz_NS___ml
/* 80108350 00105290  38 61 00 7C */ addi r3, r1, 0x7c
/* 80108354 00105294  38 81 00 40 */ addi r4, r1, 0x40
/* 80108358 00105298  7C 65 1B 78 */ mr r5, r3
/* 8010835C 0010529C  48 23 ED 35 */ bl PSVECAdd
/* 80108360 001052A0  A8 61 00 30 */ lha r3, 0x30(r1)
/* 80108364 001052A4  38 03 30 00 */ addi r0, r3, 0x3000
/* 80108368 001052A8  B0 01 00 30 */ sth r0, 0x30(r1)
/* 8010836C 001052AC  EF 9C E8 2A */ fadds f28, f28, f29
lbl_80108370:
/* 80108370 001052B0  FC 1B E0 40 */ fcmpo cr0, f27, f28
/* 80108374 001052B4  41 81 FF 84 */ bgt lbl_801082F8
lbl_80108378:
/* 80108378 001052B8  E3 E1 01 58 */ psq_l f31, 344(r1), 0, 0
/* 8010837C 001052BC  CB E1 01 50 */ lfd f31, 0x150(r1)
/* 80108380 001052C0  E3 C1 01 48 */ psq_l f30, 328(r1), 0, 0
/* 80108384 001052C4  CB C1 01 40 */ lfd f30, 0x140(r1)
/* 80108388 001052C8  E3 A1 01 38 */ psq_l f29, 312(r1), 0, 0
/* 8010838C 001052CC  CB A1 01 30 */ lfd f29, 0x130(r1)
/* 80108390 001052D0  E3 81 01 28 */ psq_l f28, 296(r1), 0, 0
/* 80108394 001052D4  CB 81 01 20 */ lfd f28, 0x120(r1)
/* 80108398 001052D8  E3 61 01 18 */ psq_l f27, 280(r1), 0, 0
/* 8010839C 001052DC  CB 61 01 10 */ lfd f27, 0x110(r1)
/* 801083A0 001052E0  E3 41 01 08 */ psq_l f26, 264(r1), 0, 0
/* 801083A4 001052E4  CB 41 01 00 */ lfd f26, 0x100(r1)
/* 801083A8 001052E8  E3 21 00 F8 */ psq_l f25, 248(r1), 0, 0
/* 801083AC 001052EC  CB 21 00 F0 */ lfd f25, 0xf0(r1)
/* 801083B0 001052F0  39 61 00 F0 */ addi r11, r1, 0xf0
/* 801083B4 001052F4  48 25 9E 55 */ bl _restgpr_21
/* 801083B8 001052F8  80 01 01 64 */ lwz r0, 0x164(r1)
/* 801083BC 001052FC  7C 08 03 A6 */ mtlr r0
/* 801083C0 00105300  38 21 01 60 */ addi r1, r1, 0x160
/* 801083C4 00105304  4E 80 00 20 */ blr
