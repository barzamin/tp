/* 802CCA18 002C9958  94 21 FF 50 */ stwu r1, -0xb0(r1)
/* 802CCA1C 002C995C  7C 08 02 A6 */ mflr r0
/* 802CCA20 002C9960  90 01 00 B4 */ stw r0, 0xb4(r1)
/* 802CCA24 002C9964  DB E1 00 A0 */ stfd f31, 0xa0(r1)
/* 802CCA28 002C9968  F3 E1 00 A8 */ psq_st f31, 168(r1), 0, 0
/* 802CCA2C 002C996C  39 61 00 A0 */ addi r11, r1, 0xa0
/* 802CCA30 002C9970  48 09 57 A9 */ bl _savegpr_28
/* 802CCA34 002C9974  7C 7C 1B 78 */ mr r28, r3
/* 802CCA38 002C9978  7C 9D 23 78 */ mr r29, r4
/* 802CCA3C 002C997C  7C BE 2B 78 */ mr r30, r5
/* 802CCA40 002C9980  7C DF 33 78 */ mr r31, r6
/* 802CCA44 002C9984  54 80 06 3F */ clrlwi. r0, r4, 0x18
/* 802CCA48 002C9988  41 82 05 20 */ beq lbl_802CCF68
/* 802CCA4C 002C998C  80 6D 86 00 */ lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802CCA50 002C9990  88 63 00 0C */ lbz r3, 0xc(r3)
/* 802CCA54 002C9994  7C 63 07 74 */ extsb r3, r3
/* 802CCA58 002C9998  4B D6 06 15 */ bl dComIfGp_getReverb
/* 802CCA5C 002C999C  7C 60 07 74 */ extsb r0, r3
/* 802CCA60 002C99A0  C8 22 C5 40 */ lfd f1, lbl_80455F40-_SDA2_BASE_(r2)
/* 802CCA64 002C99A4  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 802CCA68 002C99A8  90 01 00 8C */ stw r0, 0x8c(r1)
/* 802CCA6C 002C99AC  3C 00 43 30 */ lis r0, 0x4330
/* 802CCA70 002C99B0  90 01 00 88 */ stw r0, 0x88(r1)
/* 802CCA74 002C99B4  C8 01 00 88 */ lfd f0, 0x88(r1)
/* 802CCA78 002C99B8  EC 20 08 28 */ fsubs f1, f0, f1
/* 802CCA7C 002C99BC  C0 02 C5 3C */ lfs f0, lbl_80455F3C-_SDA2_BASE_(r2)
/* 802CCA80 002C99C0  EF E1 00 24 */ fdivs f31, f1, f0
/* 802CCA84 002C99C4  88 1C 03 FE */ lbz r0, 0x3fe(r28)
/* 802CCA88 002C99C8  28 00 00 01 */ cmplwi r0, 1
/* 802CCA8C 002C99CC  41 82 00 0C */ beq lbl_802CCA98
/* 802CCA90 002C99D0  28 00 00 02 */ cmplwi r0, 2
/* 802CCA94 002C99D4  40 82 01 6C */ bne lbl_802CCC00
lbl_802CCA98:
/* 802CCA98 002C99D8  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCA9C 002C99DC  2C 00 00 64 */ cmpwi r0, 0x64
/* 802CCAA0 002C99E0  41 82 00 A4 */ beq lbl_802CCB44
/* 802CCAA4 002C99E4  40 80 00 2C */ bge lbl_802CCAD0
/* 802CCAA8 002C99E8  2C 00 00 1E */ cmpwi r0, 0x1e
/* 802CCAAC 002C99EC  41 82 00 5C */ beq lbl_802CCB08
/* 802CCAB0 002C99F0  40 80 00 10 */ bge lbl_802CCAC0
/* 802CCAB4 002C99F4  2C 00 00 19 */ cmpwi r0, 0x19
/* 802CCAB8 002C99F8  41 82 00 3C */ beq lbl_802CCAF4
/* 802CCABC 002C99FC  48 00 04 AC */ b lbl_802CCF68
lbl_802CCAC0:
/* 802CCAC0 002C9A00  2C 00 00 20 */ cmpwi r0, 0x20
/* 802CCAC4 002C9A04  41 82 00 6C */ beq lbl_802CCB30
/* 802CCAC8 002C9A08  40 80 04 A0 */ bge lbl_802CCF68
/* 802CCACC 002C9A0C  48 00 00 50 */ b lbl_802CCB1C
lbl_802CCAD0:
/* 802CCAD0 002C9A10  2C 00 00 67 */ cmpwi r0, 0x67
/* 802CCAD4 002C9A14  41 82 00 AC */ beq lbl_802CCB80
/* 802CCAD8 002C9A18  40 80 00 10 */ bge lbl_802CCAE8
/* 802CCADC 002C9A1C  2C 00 00 66 */ cmpwi r0, 0x66
/* 802CCAE0 002C9A20  40 80 00 8C */ bge lbl_802CCB6C
/* 802CCAE4 002C9A24  48 00 00 74 */ b lbl_802CCB58
lbl_802CCAE8:
/* 802CCAE8 002C9A28  2C 00 00 69 */ cmpwi r0, 0x69
/* 802CCAEC 002C9A2C  40 80 04 7C */ bge lbl_802CCF68
/* 802CCAF0 002C9A30  48 00 00 A4 */ b lbl_802CCB94
lbl_802CCAF4:
/* 802CCAF4 002C9A34  3C 60 00 05 */ lis r3, 0x00050075@ha
/* 802CCAF8 002C9A38  38 03 00 75 */ addi r0, r3, 0x00050075@l
/* 802CCAFC 002C9A3C  90 01 00 7C */ stw r0, 0x7c(r1)
/* 802CCB00 002C9A40  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCB04 002C9A44  48 00 00 A8 */ b lbl_802CCBAC
lbl_802CCB08:
/* 802CCB08 002C9A48  3C 60 00 05 */ lis r3, 0x000500B5@ha
/* 802CCB0C 002C9A4C  38 03 00 B5 */ addi r0, r3, 0x000500B5@l
/* 802CCB10 002C9A50  90 01 00 78 */ stw r0, 0x78(r1)
/* 802CCB14 002C9A54  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCB18 002C9A58  48 00 00 94 */ b lbl_802CCBAC
lbl_802CCB1C:
/* 802CCB1C 002C9A5C  3C 60 00 05 */ lis r3, 0x000500B6@ha
/* 802CCB20 002C9A60  38 03 00 B6 */ addi r0, r3, 0x000500B6@l
/* 802CCB24 002C9A64  90 01 00 74 */ stw r0, 0x74(r1)
/* 802CCB28 002C9A68  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCB2C 002C9A6C  48 00 00 80 */ b lbl_802CCBAC
lbl_802CCB30:
/* 802CCB30 002C9A70  3C 60 00 05 */ lis r3, 0x000500B7@ha
/* 802CCB34 002C9A74  38 03 00 B7 */ addi r0, r3, 0x000500B7@l
/* 802CCB38 002C9A78  90 01 00 70 */ stw r0, 0x70(r1)
/* 802CCB3C 002C9A7C  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCB40 002C9A80  48 00 00 6C */ b lbl_802CCBAC
lbl_802CCB44:
/* 802CCB44 002C9A84  3C 60 00 05 */ lis r3, 0x000501C8@ha
/* 802CCB48 002C9A88  38 03 01 C8 */ addi r0, r3, 0x000501C8@l
/* 802CCB4C 002C9A8C  90 01 00 6C */ stw r0, 0x6c(r1)
/* 802CCB50 002C9A90  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCB54 002C9A94  48 00 00 58 */ b lbl_802CCBAC
lbl_802CCB58:
/* 802CCB58 002C9A98  3C 60 00 05 */ lis r3, 0x000501C9@ha
/* 802CCB5C 002C9A9C  38 03 01 C9 */ addi r0, r3, 0x000501C9@l
/* 802CCB60 002C9AA0  90 01 00 68 */ stw r0, 0x68(r1)
/* 802CCB64 002C9AA4  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCB68 002C9AA8  48 00 00 44 */ b lbl_802CCBAC
lbl_802CCB6C:
/* 802CCB6C 002C9AAC  3C 60 00 05 */ lis r3, 0x000500B8@ha
/* 802CCB70 002C9AB0  38 03 00 B8 */ addi r0, r3, 0x000500B8@l
/* 802CCB74 002C9AB4  90 01 00 64 */ stw r0, 0x64(r1)
/* 802CCB78 002C9AB8  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCB7C 002C9ABC  48 00 00 30 */ b lbl_802CCBAC
lbl_802CCB80:
/* 802CCB80 002C9AC0  3C 60 00 05 */ lis r3, 0x000500B9@ha
/* 802CCB84 002C9AC4  38 03 00 B9 */ addi r0, r3, 0x000500B9@l
/* 802CCB88 002C9AC8  90 01 00 60 */ stw r0, 0x60(r1)
/* 802CCB8C 002C9ACC  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCB90 002C9AD0  48 00 00 1C */ b lbl_802CCBAC
lbl_802CCB94:
/* 802CCB94 002C9AD4  3C 60 00 05 */ lis r3, 0x000500BA@ha
/* 802CCB98 002C9AD8  38 03 00 BA */ addi r0, r3, 0x000500BA@l
/* 802CCB9C 002C9ADC  90 01 00 5C */ stw r0, 0x5c(r1)
/* 802CCBA0 002C9AE0  90 01 00 84 */ stw r0, 0x84(r1)
/* 802CCBA4 002C9AE4  48 00 00 08 */ b lbl_802CCBAC
/* 802CCBA8 002C9AE8  48 00 03 C0 */ b lbl_802CCF68
lbl_802CCBAC:
/* 802CCBAC 002C9AEC  80 61 00 84 */ lwz r3, 0x84(r1)
/* 802CCBB0 002C9AF0  3C 03 00 01 */ addis r0, r3, 1
/* 802CCBB4 002C9AF4  28 00 FF FF */ cmplwi r0, 0xffff
/* 802CCBB8 002C9AF8  41 82 03 B0 */ beq lbl_802CCF68
/* 802CCBBC 002C9AFC  90 61 00 58 */ stw r3, 0x58(r1)
/* 802CCBC0 002C9B00  38 7C 00 0C */ addi r3, r28, 0xc
/* 802CCBC4 002C9B04  38 81 00 58 */ addi r4, r1, 0x58
/* 802CCBC8 002C9B08  7F 85 E3 78 */ mr r5, r28
/* 802CCBCC 002C9B0C  7F E6 FB 78 */ mr r6, r31
/* 802CCBD0 002C9B10  57 A7 06 3E */ clrlwi r7, r29, 0x18
/* 802CCBD4 002C9B14  FC 20 F8 90 */ fmr f1, f31
/* 802CCBD8 002C9B18  C0 42 C5 34 */ lfs f2, lbl_80455F34-_SDA2_BASE_(r2)
/* 802CCBDC 002C9B1C  FC 60 10 90 */ fmr f3, f2
/* 802CCBE0 002C9B20  C0 82 C5 38 */ lfs f4, lbl_80455F38-_SDA2_BASE_(r2)
/* 802CCBE4 002C9B24  FC A0 20 90 */ fmr f5, f4
/* 802CCBE8 002C9B28  39 00 00 00 */ li r8, 0
/* 802CCBEC 002C9B2C  81 9C 00 0C */ lwz r12, 0xc(r28)
/* 802CCBF0 002C9B30  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802CCBF4 002C9B34  7D 89 03 A6 */ mtctr r12
/* 802CCBF8 002C9B38  4E 80 04 21 */ bctrl
/* 802CCBFC 002C9B3C  48 00 03 6C */ b lbl_802CCF68
lbl_802CCC00:
/* 802CCC00 002C9B40  3C 60 00 05 */ lis r3, 0x000500CD@ha
/* 802CCC04 002C9B44  38 03 00 CD */ addi r0, r3, 0x000500CD@l
/* 802CCC08 002C9B48  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCC0C 002C9B4C  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 802CCC10 002C9B50  2C 00 00 2F */ cmpwi r0, 0x2f
/* 802CCC14 002C9B54  41 82 01 78 */ beq lbl_802CCD8C
/* 802CCC18 002C9B58  40 80 00 58 */ bge lbl_802CCC70
/* 802CCC1C 002C9B5C  2C 00 00 20 */ cmpwi r0, 0x20
/* 802CCC20 002C9B60  41 82 01 18 */ beq lbl_802CCD38
/* 802CCC24 002C9B64  40 80 00 28 */ bge lbl_802CCC4C
/* 802CCC28 002C9B68  2C 00 00 1D */ cmpwi r0, 0x1d
/* 802CCC2C 002C9B6C  41 82 00 D8 */ beq lbl_802CCD04
/* 802CCC30 002C9B70  40 80 00 10 */ bge lbl_802CCC40
/* 802CCC34 002C9B74  2C 00 00 03 */ cmpwi r0, 3
/* 802CCC38 002C9B78  41 82 00 90 */ beq lbl_802CCCC8
/* 802CCC3C 002C9B7C  48 00 02 B0 */ b lbl_802CCEEC
lbl_802CCC40:
/* 802CCC40 002C9B80  2C 00 00 1F */ cmpwi r0, 0x1f
/* 802CCC44 002C9B84  40 80 02 A8 */ bge lbl_802CCEEC
/* 802CCC48 002C9B88  48 00 00 A0 */ b lbl_802CCCE8
lbl_802CCC4C:
/* 802CCC4C 002C9B8C  2C 00 00 25 */ cmpwi r0, 0x25
/* 802CCC50 002C9B90  41 82 01 20 */ beq lbl_802CCD70
/* 802CCC54 002C9B94  40 80 00 10 */ bge lbl_802CCC64
/* 802CCC58 002C9B98  2C 00 00 23 */ cmpwi r0, 0x23
/* 802CCC5C 002C9B9C  41 82 00 F8 */ beq lbl_802CCD54
/* 802CCC60 002C9BA0  48 00 02 8C */ b lbl_802CCEEC
lbl_802CCC64:
/* 802CCC64 002C9BA4  2C 00 00 27 */ cmpwi r0, 0x27
/* 802CCC68 002C9BA8  40 80 02 84 */ bge lbl_802CCEEC
/* 802CCC6C 002C9BAC  48 00 02 68 */ b lbl_802CCED4
lbl_802CCC70:
/* 802CCC70 002C9BB0  2C 00 00 4A */ cmpwi r0, 0x4a
/* 802CCC74 002C9BB4  41 82 01 F0 */ beq lbl_802CCE64
/* 802CCC78 002C9BB8  40 80 00 2C */ bge lbl_802CCCA4
/* 802CCC7C 002C9BBC  2C 00 00 47 */ cmpwi r0, 0x47
/* 802CCC80 002C9BC0  41 82 01 90 */ beq lbl_802CCE10
/* 802CCC84 002C9BC4  40 80 00 14 */ bge lbl_802CCC98
/* 802CCC88 002C9BC8  2C 00 00 45 */ cmpwi r0, 0x45
/* 802CCC8C 002C9BCC  41 82 01 34 */ beq lbl_802CCDC0
/* 802CCC90 002C9BD0  40 80 01 64 */ bge lbl_802CCDF4
/* 802CCC94 002C9BD4  48 00 02 58 */ b lbl_802CCEEC
lbl_802CCC98:
/* 802CCC98 002C9BD8  2C 00 00 49 */ cmpwi r0, 0x49
/* 802CCC9C 002C9BDC  40 80 01 AC */ bge lbl_802CCE48
/* 802CCCA0 002C9BE0  48 00 01 8C */ b lbl_802CCE2C
lbl_802CCCA4:
/* 802CCCA4 002C9BE4  2C 00 00 70 */ cmpwi r0, 0x70
/* 802CCCA8 002C9BE8  41 82 02 10 */ beq lbl_802CCEB8
/* 802CCCAC 002C9BEC  40 80 00 10 */ bge lbl_802CCCBC
/* 802CCCB0 002C9BF0  2C 00 00 6B */ cmpwi r0, 0x6b
/* 802CCCB4 002C9BF4  41 82 01 CC */ beq lbl_802CCE80
/* 802CCCB8 002C9BF8  48 00 02 34 */ b lbl_802CCEEC
lbl_802CCCBC:
/* 802CCCBC 002C9BFC  2C 00 00 72 */ cmpwi r0, 0x72
/* 802CCCC0 002C9C00  40 80 02 2C */ bge lbl_802CCEEC
/* 802CCCC4 002C9C04  48 00 01 D8 */ b lbl_802CCE9C
lbl_802CCCC8:
/* 802CCCC8 002C9C08  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCCCC 002C9C0C  28 00 00 01 */ cmplwi r0, 1
/* 802CCCD0 002C9C10  40 82 02 1C */ bne lbl_802CCEEC
/* 802CCCD4 002C9C14  80 6D 86 04 */ lwz r3, lbl_80450B84-_SDA_BASE_(r13)
/* 802CCCD8 002C9C18  3C 80 01 00 */ lis r4, 0x0100000B@ha
/* 802CCCDC 002C9C1C  38 84 00 0B */ addi r4, r4, 0x0100000B@l
/* 802CCCE0 002C9C20  4B FE 27 BD */ bl subBgmStart__8Z2SeqMgrFUl
/* 802CCCE4 002C9C24  48 00 02 84 */ b lbl_802CCF68
lbl_802CCCE8:
/* 802CCCE8 002C9C28  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCCEC 002C9C2C  28 00 00 0F */ cmplwi r0, 0xf
/* 802CCCF0 002C9C30  40 82 01 FC */ bne lbl_802CCEEC
/* 802CCCF4 002C9C34  38 03 00 47 */ addi r0, r3, 0x47
/* 802CCCF8 002C9C38  90 01 00 54 */ stw r0, 0x54(r1)
/* 802CCCFC 002C9C3C  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCD00 002C9C40  48 00 01 EC */ b lbl_802CCEEC
lbl_802CCD04:
/* 802CCD04 002C9C44  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCD08 002C9C48  28 00 00 04 */ cmplwi r0, 4
/* 802CCD0C 002C9C4C  40 82 00 14 */ bne lbl_802CCD20
/* 802CCD10 002C9C50  38 03 00 E2 */ addi r0, r3, 0xe2
/* 802CCD14 002C9C54  90 01 00 50 */ stw r0, 0x50(r1)
/* 802CCD18 002C9C58  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCD1C 002C9C5C  48 00 01 D0 */ b lbl_802CCEEC
lbl_802CCD20:
/* 802CCD20 002C9C60  28 00 00 05 */ cmplwi r0, 5
/* 802CCD24 002C9C64  40 82 01 C8 */ bne lbl_802CCEEC
/* 802CCD28 002C9C68  38 03 00 E3 */ addi r0, r3, 0xe3
/* 802CCD2C 002C9C6C  90 01 00 4C */ stw r0, 0x4c(r1)
/* 802CCD30 002C9C70  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCD34 002C9C74  48 00 01 B8 */ b lbl_802CCEEC
lbl_802CCD38:
/* 802CCD38 002C9C78  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCD3C 002C9C7C  28 00 00 06 */ cmplwi r0, 6
/* 802CCD40 002C9C80  40 82 01 AC */ bne lbl_802CCEEC
/* 802CCD44 002C9C84  38 03 00 DA */ addi r0, r3, 0xda
/* 802CCD48 002C9C88  90 01 00 48 */ stw r0, 0x48(r1)
/* 802CCD4C 002C9C8C  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCD50 002C9C90  48 00 01 9C */ b lbl_802CCEEC
lbl_802CCD54:
/* 802CCD54 002C9C94  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCD58 002C9C98  28 00 00 0A */ cmplwi r0, 0xa
/* 802CCD5C 002C9C9C  40 82 01 90 */ bne lbl_802CCEEC
/* 802CCD60 002C9CA0  38 03 00 E4 */ addi r0, r3, 0xe4
/* 802CCD64 002C9CA4  90 01 00 44 */ stw r0, 0x44(r1)
/* 802CCD68 002C9CA8  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCD6C 002C9CAC  48 00 01 80 */ b lbl_802CCEEC
lbl_802CCD70:
/* 802CCD70 002C9CB0  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCD74 002C9CB4  28 00 00 0A */ cmplwi r0, 0xa
/* 802CCD78 002C9CB8  40 82 01 74 */ bne lbl_802CCEEC
/* 802CCD7C 002C9CBC  38 03 00 D9 */ addi r0, r3, 0xd9
/* 802CCD80 002C9CC0  90 01 00 40 */ stw r0, 0x40(r1)
/* 802CCD84 002C9CC4  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCD88 002C9CC8  48 00 01 64 */ b lbl_802CCEEC
lbl_802CCD8C:
/* 802CCD8C 002C9CCC  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCD90 002C9CD0  28 00 00 0F */ cmplwi r0, 0xf
/* 802CCD94 002C9CD4  40 82 00 14 */ bne lbl_802CCDA8
/* 802CCD98 002C9CD8  38 03 00 EE */ addi r0, r3, 0xee
/* 802CCD9C 002C9CDC  90 01 00 3C */ stw r0, 0x3c(r1)
/* 802CCDA0 002C9CE0  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCDA4 002C9CE4  48 00 01 48 */ b lbl_802CCEEC
lbl_802CCDA8:
/* 802CCDA8 002C9CE8  28 00 00 11 */ cmplwi r0, 0x11
/* 802CCDAC 002C9CEC  40 82 01 40 */ bne lbl_802CCEEC
/* 802CCDB0 002C9CF0  38 03 00 EF */ addi r0, r3, 0xef
/* 802CCDB4 002C9CF4  90 01 00 38 */ stw r0, 0x38(r1)
/* 802CCDB8 002C9CF8  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCDBC 002C9CFC  48 00 01 30 */ b lbl_802CCEEC
lbl_802CCDC0:
/* 802CCDC0 002C9D00  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCDC4 002C9D04  28 00 00 01 */ cmplwi r0, 1
/* 802CCDC8 002C9D08  40 82 00 14 */ bne lbl_802CCDDC
/* 802CCDCC 002C9D0C  38 03 01 CC */ addi r0, r3, 0x1cc
/* 802CCDD0 002C9D10  90 01 00 34 */ stw r0, 0x34(r1)
/* 802CCDD4 002C9D14  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCDD8 002C9D18  48 00 01 14 */ b lbl_802CCEEC
lbl_802CCDDC:
/* 802CCDDC 002C9D1C  28 00 00 02 */ cmplwi r0, 2
/* 802CCDE0 002C9D20  40 82 01 0C */ bne lbl_802CCEEC
/* 802CCDE4 002C9D24  38 03 01 CD */ addi r0, r3, 0x1cd
/* 802CCDE8 002C9D28  90 01 00 30 */ stw r0, 0x30(r1)
/* 802CCDEC 002C9D2C  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCDF0 002C9D30  48 00 00 FC */ b lbl_802CCEEC
lbl_802CCDF4:
/* 802CCDF4 002C9D34  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCDF8 002C9D38  28 00 00 01 */ cmplwi r0, 1
/* 802CCDFC 002C9D3C  40 82 00 F0 */ bne lbl_802CCEEC
/* 802CCE00 002C9D40  38 03 01 CF */ addi r0, r3, 0x1cf
/* 802CCE04 002C9D44  90 01 00 2C */ stw r0, 0x2c(r1)
/* 802CCE08 002C9D48  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCE0C 002C9D4C  48 00 00 E0 */ b lbl_802CCEEC
lbl_802CCE10:
/* 802CCE10 002C9D50  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCE14 002C9D54  28 00 00 01 */ cmplwi r0, 1
/* 802CCE18 002C9D58  40 82 00 D4 */ bne lbl_802CCEEC
/* 802CCE1C 002C9D5C  38 03 01 CA */ addi r0, r3, 0x1ca
/* 802CCE20 002C9D60  90 01 00 28 */ stw r0, 0x28(r1)
/* 802CCE24 002C9D64  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCE28 002C9D68  48 00 00 C4 */ b lbl_802CCEEC
lbl_802CCE2C:
/* 802CCE2C 002C9D6C  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCE30 002C9D70  28 00 00 01 */ cmplwi r0, 1
/* 802CCE34 002C9D74  40 82 00 B8 */ bne lbl_802CCEEC
/* 802CCE38 002C9D78  38 03 01 CB */ addi r0, r3, 0x1cb
/* 802CCE3C 002C9D7C  90 01 00 24 */ stw r0, 0x24(r1)
/* 802CCE40 002C9D80  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCE44 002C9D84  48 00 00 A8 */ b lbl_802CCEEC
lbl_802CCE48:
/* 802CCE48 002C9D88  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCE4C 002C9D8C  28 00 00 01 */ cmplwi r0, 1
/* 802CCE50 002C9D90  40 82 00 9C */ bne lbl_802CCEEC
/* 802CCE54 002C9D94  38 03 01 D0 */ addi r0, r3, 0x1d0
/* 802CCE58 002C9D98  90 01 00 20 */ stw r0, 0x20(r1)
/* 802CCE5C 002C9D9C  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCE60 002C9DA0  48 00 00 8C */ b lbl_802CCEEC
lbl_802CCE64:
/* 802CCE64 002C9DA4  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCE68 002C9DA8  28 00 00 01 */ cmplwi r0, 1
/* 802CCE6C 002C9DAC  40 82 00 80 */ bne lbl_802CCEEC
/* 802CCE70 002C9DB0  38 03 01 CE */ addi r0, r3, 0x1ce
/* 802CCE74 002C9DB4  90 01 00 1C */ stw r0, 0x1c(r1)
/* 802CCE78 002C9DB8  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCE7C 002C9DBC  48 00 00 70 */ b lbl_802CCEEC
lbl_802CCE80:
/* 802CCE80 002C9DC0  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCE84 002C9DC4  28 00 00 01 */ cmplwi r0, 1
/* 802CCE88 002C9DC8  40 82 00 64 */ bne lbl_802CCEEC
/* 802CCE8C 002C9DCC  38 03 01 D1 */ addi r0, r3, 0x1d1
/* 802CCE90 002C9DD0  90 01 00 18 */ stw r0, 0x18(r1)
/* 802CCE94 002C9DD4  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCE98 002C9DD8  48 00 00 54 */ b lbl_802CCEEC
lbl_802CCE9C:
/* 802CCE9C 002C9DDC  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCEA0 002C9DE0  28 00 00 01 */ cmplwi r0, 1
/* 802CCEA4 002C9DE4  40 82 00 48 */ bne lbl_802CCEEC
/* 802CCEA8 002C9DE8  38 03 00 9F */ addi r0, r3, 0x9f
/* 802CCEAC 002C9DEC  90 01 00 14 */ stw r0, 0x14(r1)
/* 802CCEB0 002C9DF0  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCEB4 002C9DF4  48 00 00 38 */ b lbl_802CCEEC
lbl_802CCEB8:
/* 802CCEB8 002C9DF8  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCEBC 002C9DFC  28 00 00 01 */ cmplwi r0, 1
/* 802CCEC0 002C9E00  40 82 00 2C */ bne lbl_802CCEEC
/* 802CCEC4 002C9E04  38 03 00 42 */ addi r0, r3, 0x42
/* 802CCEC8 002C9E08  90 01 00 10 */ stw r0, 0x10(r1)
/* 802CCECC 002C9E0C  90 01 00 80 */ stw r0, 0x80(r1)
/* 802CCED0 002C9E10  48 00 00 1C */ b lbl_802CCEEC
lbl_802CCED4:
/* 802CCED4 002C9E14  57 C0 04 3E */ clrlwi r0, r30, 0x10
/* 802CCED8 002C9E18  28 00 00 04 */ cmplwi r0, 4
/* 802CCEDC 002C9E1C  40 82 00 10 */ bne lbl_802CCEEC
/* 802CCEE0 002C9E20  38 03 02 A0 */ addi r0, r3, 0x2a0
/* 802CCEE4 002C9E24  90 01 00 0C */ stw r0, 0xc(r1)
/* 802CCEE8 002C9E28  90 01 00 80 */ stw r0, 0x80(r1)
lbl_802CCEEC:
/* 802CCEEC 002C9E2C  80 1C 00 00 */ lwz r0, 0(r28)
/* 802CCEF0 002C9E30  28 00 00 00 */ cmplwi r0, 0
/* 802CCEF4 002C9E34  41 82 00 0C */ beq lbl_802CCF00
/* 802CCEF8 002C9E38  7F 83 E3 78 */ mr r3, r28
/* 802CCEFC 002C9E3C  4B FD 52 89 */ bl releaseSound__14JAISoundHandleFv
lbl_802CCF00:
/* 802CCF00 002C9E40  80 01 00 80 */ lwz r0, 0x80(r1)
/* 802CCF04 002C9E44  90 01 00 08 */ stw r0, 8(r1)
/* 802CCF08 002C9E48  38 7C 00 0C */ addi r3, r28, 0xc
/* 802CCF0C 002C9E4C  38 81 00 08 */ addi r4, r1, 8
/* 802CCF10 002C9E50  7F 85 E3 78 */ mr r5, r28
/* 802CCF14 002C9E54  7F E6 FB 78 */ mr r6, r31
/* 802CCF18 002C9E58  57 A7 06 3E */ clrlwi r7, r29, 0x18
/* 802CCF1C 002C9E5C  FC 20 F8 90 */ fmr f1, f31
/* 802CCF20 002C9E60  C0 42 C5 34 */ lfs f2, lbl_80455F34-_SDA2_BASE_(r2)
/* 802CCF24 002C9E64  FC 60 10 90 */ fmr f3, f2
/* 802CCF28 002C9E68  C0 82 C5 38 */ lfs f4, lbl_80455F38-_SDA2_BASE_(r2)
/* 802CCF2C 002C9E6C  FC A0 20 90 */ fmr f5, f4
/* 802CCF30 002C9E70  39 00 00 00 */ li r8, 0
/* 802CCF34 002C9E74  81 9C 00 0C */ lwz r12, 0xc(r28)
/* 802CCF38 002C9E78  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802CCF3C 002C9E7C  7D 89 03 A6 */ mtctr r12
/* 802CCF40 002C9E80  4E 80 04 21 */ bctrl
/* 802CCF44 002C9E84  80 1C 00 00 */ lwz r0, 0(r28)
/* 802CCF48 002C9E88  28 00 00 00 */ cmplwi r0, 0
/* 802CCF4C 002C9E8C  41 82 00 1C */ beq lbl_802CCF68
/* 802CCF50 002C9E90  38 7C 00 0C */ addi r3, r28, 0xc
/* 802CCF54 002C9E94  7F 84 E3 78 */ mr r4, r28
/* 802CCF58 002C9E98  38 A0 00 08 */ li r5, 8
/* 802CCF5C 002C9E9C  7F C6 F3 78 */ mr r6, r30
/* 802CCF60 002C9EA0  38 E0 FF FF */ li r7, -1
/* 802CCF64 002C9EA4  4B FD DF 79 */ bl Z2SoundStarter_NS_setPortData
lbl_802CCF68:
/* 802CCF68 002C9EA8  E3 E1 00 A8 */ psq_l f31, 168(r1), 0, 0
/* 802CCF6C 002C9EAC  CB E1 00 A0 */ lfd f31, 0xa0(r1)
/* 802CCF70 002C9EB0  39 61 00 A0 */ addi r11, r1, 0xa0
/* 802CCF74 002C9EB4  48 09 52 B1 */ bl _restgpr_28
/* 802CCF78 002C9EB8  80 01 00 B4 */ lwz r0, 0xb4(r1)
/* 802CCF7C 002C9EBC  7C 08 03 A6 */ mtlr r0
/* 802CCF80 002C9EC0  38 21 00 B0 */ addi r1, r1, 0xb0
/* 802CCF84 002C9EC4  4E 80 00 20 */ blr
