/* 802149F4 00211934  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 802149F8 00211938  7C 08 02 A6 */ mflr r0
/* 802149FC 0021193C  90 01 00 44 */ stw r0, 0x44(r1)
/* 80214A00 00211940  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 80214A04 00211944  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 80214A08 00211948  DB C1 00 20 */ stfd f30, 0x20(r1)
/* 80214A0C 0021194C  F3 C1 00 28 */ psq_st f30, 40(r1), 0, 0
/* 80214A10 00211950  39 61 00 20 */ addi r11, r1, 0x20
/* 80214A14 00211954  48 14 D7 BD */ bl _savegpr_26
/* 80214A18 00211958  7C 7F 1B 78 */ mr r31, r3
/* 80214A1C 0021195C  FF C0 08 90 */ fmr f30, f1
/* 80214A20 00211960  FF E0 10 90 */ fmr f31, f2
/* 80214A24 00211964  7C 83 07 34 */ extsh r3, r4
/* 80214A28 00211968  38 00 00 05 */ li r0, 5
/* 80214A2C 0021196C  7C 03 03 D6 */ divw r0, r3, r0
/* 80214A30 00211970  7C 1C 07 34 */ extsh r28, r0
/* 80214A34 00211974  7C A4 07 34 */ extsh r4, r5
/* 80214A38 00211978  7C 80 16 70 */ srawi r0, r4, 2
/* 80214A3C 0021197C  7C 00 01 94 */ addze r0, r0
/* 80214A40 00211980  7C 1D 07 34 */ extsh r29, r0
/* 80214A44 00211984  54 80 F0 02 */ slwi r0, r4, 0x1e
/* 80214A48 00211988  54 83 0F FE */ srwi r3, r4, 0x1f
/* 80214A4C 0021198C  7C 03 00 50 */ subf r0, r3, r0
/* 80214A50 00211990  54 00 10 3E */ rotlwi r0, r0, 2
/* 80214A54 00211994  7C 00 1A 14 */ add r0, r0, r3
/* 80214A58 00211998  7C 1B 07 34 */ extsh r27, r0
/* 80214A5C 0021199C  57 80 10 3A */ slwi r0, r28, 2
/* 80214A60 002119A0  7C 04 00 00 */ cmpw r4, r0
/* 80214A64 002119A4  40 82 00 08 */ bne lbl_80214A6C
/* 80214A68 002119A8  3B 60 00 00 */ li r27, 0
lbl_80214A6C:
/* 80214A6C 002119AC  7F 60 07 35 */ extsh. r0, r27
/* 80214A70 002119B0  40 82 00 08 */ bne lbl_80214A78
/* 80214A74 002119B4  3B BD FF FF */ addi r29, r29, -1
lbl_80214A78:
/* 80214A78 002119B8  7C A0 07 35 */ extsh. r0, r5
/* 80214A7C 002119BC  40 82 00 10 */ bne lbl_80214A8C
/* 80214A80 002119C0  80 7F 01 C8 */ lwz r3, 0x1c8(r31)
/* 80214A84 002119C4  48 04 0B 85 */ bl CPaneMgrAlpha_NS_hide
/* 80214A88 002119C8  48 00 00 0C */ b lbl_80214A94
lbl_80214A8C:
/* 80214A8C 002119CC  80 7F 01 C8 */ lwz r3, 0x1c8(r31)
/* 80214A90 002119D0  48 04 0B 39 */ bl CPaneMgrAlpha_NS_show
lbl_80214A94:
/* 80214A94 002119D4  3B 40 00 00 */ li r26, 0
/* 80214A98 002119D8  3B C0 00 00 */ li r30, 0
/* 80214A9C 002119DC  7F BD 07 34 */ extsh r29, r29
lbl_80214AA0:
/* 80214AA0 002119E0  7C 1A E0 00 */ cmpw r26, r28
/* 80214AA4 002119E4  40 80 00 64 */ bge lbl_80214B08
/* 80214AA8 002119E8  38 1E 01 28 */ addi r0, r30, 0x128
/* 80214AAC 002119EC  7C 7F 00 2E */ lwzx r3, r31, r0
/* 80214AB0 002119F0  48 04 0B 19 */ bl CPaneMgrAlpha_NS_show
/* 80214AB4 002119F4  7C 1A E8 00 */ cmpw r26, r29
/* 80214AB8 002119F8  40 82 00 1C */ bne lbl_80214AD4
/* 80214ABC 002119FC  7F E3 FB 78 */ mr r3, r31
/* 80214AC0 00211A00  7F 44 D3 78 */ mr r4, r26
/* 80214AC4 00211A04  38 A0 00 01 */ li r5, 1
/* 80214AC8 00211A08  57 66 06 3E */ clrlwi r6, r27, 0x18
/* 80214ACC 00211A0C  4B FF FD 01 */ bl dMeter2Draw_c_NS_changeTextureLife
/* 80214AD0 00211A10  48 00 00 58 */ b lbl_80214B28
lbl_80214AD4:
/* 80214AD4 00211A14  40 80 00 1C */ bge lbl_80214AF0
/* 80214AD8 00211A18  7F E3 FB 78 */ mr r3, r31
/* 80214ADC 00211A1C  7F 44 D3 78 */ mr r4, r26
/* 80214AE0 00211A20  38 A0 00 01 */ li r5, 1
/* 80214AE4 00211A24  38 C0 00 FF */ li r6, 0xff
/* 80214AE8 00211A28  4B FF FC E5 */ bl dMeter2Draw_c_NS_changeTextureLife
/* 80214AEC 00211A2C  48 00 00 3C */ b lbl_80214B28
lbl_80214AF0:
/* 80214AF0 00211A30  7F E3 FB 78 */ mr r3, r31
/* 80214AF4 00211A34  7F 44 D3 78 */ mr r4, r26
/* 80214AF8 00211A38  38 A0 00 00 */ li r5, 0
/* 80214AFC 00211A3C  38 C0 00 FF */ li r6, 0xff
/* 80214B00 00211A40  4B FF FC CD */ bl dMeter2Draw_c_NS_changeTextureLife
/* 80214B04 00211A44  48 00 00 24 */ b lbl_80214B28
lbl_80214B08:
/* 80214B08 00211A48  38 1E 01 28 */ addi r0, r30, 0x128
/* 80214B0C 00211A4C  7C 7F 00 2E */ lwzx r3, r31, r0
/* 80214B10 00211A50  48 04 0A F9 */ bl CPaneMgrAlpha_NS_hide
/* 80214B14 00211A54  7F E3 FB 78 */ mr r3, r31
/* 80214B18 00211A58  7F 44 D3 78 */ mr r4, r26
/* 80214B1C 00211A5C  38 A0 00 00 */ li r5, 0
/* 80214B20 00211A60  38 C0 00 FF */ li r6, 0xff
/* 80214B24 00211A64  4B FF FC A9 */ bl dMeter2Draw_c_NS_changeTextureLife
lbl_80214B28:
/* 80214B28 00211A68  3B 5A 00 01 */ addi r26, r26, 1
/* 80214B2C 00211A6C  2C 1A 00 14 */ cmpwi r26, 0x14
/* 80214B30 00211A70  3B DE 00 04 */ addi r30, r30, 4
/* 80214B34 00211A74  41 80 FF 6C */ blt lbl_80214AA0
/* 80214B38 00211A78  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80214B3C 00211A7C  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80214B40 00211A80  C0 03 00 1C */ lfs f0, 0x1c(r3)
/* 80214B44 00211A84  80 7F 01 24 */ lwz r3, 0x124(r31)
/* 80214B48 00211A88  80 63 00 04 */ lwz r3, 4(r3)
/* 80214B4C 00211A8C  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 80214B50 00211A90  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 80214B54 00211A94  81 83 00 00 */ lwz r12, 0(r3)
/* 80214B58 00211A98  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80214B5C 00211A9C  7D 89 03 A6 */ mtctr r12
/* 80214B60 00211AA0  4E 80 04 21 */ bctrl
/* 80214B64 00211AA4  3B 40 00 00 */ li r26, 0
/* 80214B68 00211AA8  3B C0 00 00 */ li r30, 0
/* 80214B6C 00211AAC  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80214B70 00211AB0  3B A3 EB C8 */ addi r29, r3, lbl_8042EBC8@l
lbl_80214B74:
/* 80214B74 00211AB4  C0 1D 00 30 */ lfs f0, 0x30(r29)
/* 80214B78 00211AB8  38 1E 01 78 */ addi r0, r30, 0x178
/* 80214B7C 00211ABC  7C 7F 00 2E */ lwzx r3, r31, r0
/* 80214B80 00211AC0  80 63 00 04 */ lwz r3, 4(r3)
/* 80214B84 00211AC4  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 80214B88 00211AC8  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 80214B8C 00211ACC  81 83 00 00 */ lwz r12, 0(r3)
/* 80214B90 00211AD0  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80214B94 00211AD4  7D 89 03 A6 */ mtctr r12
/* 80214B98 00211AD8  4E 80 04 21 */ bctrl
/* 80214B9C 00211ADC  3B 5A 00 01 */ addi r26, r26, 1
/* 80214BA0 00211AE0  2C 1A 00 14 */ cmpwi r26, 0x14
/* 80214BA4 00211AE4  3B DE 00 04 */ addi r30, r30, 4
/* 80214BA8 00211AE8  41 80 FF CC */ blt lbl_80214B74
/* 80214BAC 00211AEC  3B 40 00 00 */ li r26, 0
/* 80214BB0 00211AF0  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80214BB4 00211AF4  3B C3 EB C8 */ addi r30, r3, lbl_8042EBC8@l
lbl_80214BB8:
/* 80214BB8 00211AF8  C0 1E 00 38 */ lfs f0, 0x38(r30)
/* 80214BBC 00211AFC  80 7F 01 C8 */ lwz r3, 0x1c8(r31)
/* 80214BC0 00211B00  80 63 00 04 */ lwz r3, 4(r3)
/* 80214BC4 00211B04  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 80214BC8 00211B08  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 80214BCC 00211B0C  81 83 00 00 */ lwz r12, 0(r3)
/* 80214BD0 00211B10  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80214BD4 00211B14  7D 89 03 A6 */ mtctr r12
/* 80214BD8 00211B18  4E 80 04 21 */ bctrl
/* 80214BDC 00211B1C  3B 5A 00 01 */ addi r26, r26, 1
/* 80214BE0 00211B20  2C 1A 00 14 */ cmpwi r26, 0x14
/* 80214BE4 00211B24  41 80 FF D4 */ blt lbl_80214BB8
/* 80214BE8 00211B28  80 7F 01 24 */ lwz r3, 0x124(r31)
/* 80214BEC 00211B2C  FC 20 F0 90 */ fmr f1, f30
/* 80214BF0 00211B30  FC 40 F8 90 */ fmr f2, f31
/* 80214BF4 00211B34  48 03 F9 BD */ bl CPaneMgr_NS_paneTrans
/* 80214BF8 00211B38  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 80214BFC 00211B3C  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 80214C00 00211B40  E3 C1 00 28 */ psq_l f30, 40(r1), 0, 0
/* 80214C04 00211B44  CB C1 00 20 */ lfd f30, 0x20(r1)
/* 80214C08 00211B48  39 61 00 20 */ addi r11, r1, 0x20
/* 80214C0C 00211B4C  48 14 D6 11 */ bl _restgpr_26
/* 80214C10 00211B50  80 01 00 44 */ lwz r0, 0x44(r1)
/* 80214C14 00211B54  7C 08 03 A6 */ mtlr r0
/* 80214C18 00211B58  38 21 00 40 */ addi r1, r1, 0x40
/* 80214C1C 00211B5C  4E 80 00 20 */ blr
