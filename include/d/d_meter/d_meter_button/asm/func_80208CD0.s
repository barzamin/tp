/* 80208CD0 00205C10  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80208CD4 00205C14  7C 08 02 A6 */ mflr r0
/* 80208CD8 00205C18  90 01 00 24 */ stw r0, 0x24(r1)
/* 80208CDC 00205C1C  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80208CE0 00205C20  7C 7F 1B 78 */ mr r31, r3
/* 80208CE4 00205C24  80 63 00 64 */ lwz r3, 0x64(r3)
/* 80208CE8 00205C28  28 03 00 00 */ cmplwi r3, 0
/* 80208CEC 00205C2C  41 82 00 84 */ beq lbl_80208D70
/* 80208CF0 00205C30  48 04 CB 39 */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80208CF4 00205C34  C0 02 AD 4C */ lfs f0, lbl_8045474C-_SDA2_BASE_(r2)
/* 80208CF8 00205C38  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80208CFC 00205C3C  41 82 00 74 */ beq lbl_80208D70
/* 80208D00 00205C40  80 7F 00 64 */ lwz r3, 0x64(r31)
/* 80208D04 00205C44  FC 20 00 90 */ fmr f1, f0
/* 80208D08 00205C48  48 04 CA C9 */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 80208D0C 00205C4C  38 00 00 05 */ li r0, 5
/* 80208D10 00205C50  80 7F 00 64 */ lwz r3, 0x64(r31)
/* 80208D14 00205C54  B0 03 00 16 */ sth r0, 0x16(r3)
/* 80208D18 00205C58  80 7F 00 64 */ lwz r3, 0x64(r31)
/* 80208D1C 00205C5C  48 04 CB 0D */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80208D20 00205C60  C0 42 AD 4C */ lfs f2, lbl_8045474C-_SDA2_BASE_(r2)
/* 80208D24 00205C64  FC 02 08 00 */ fcmpu cr0, f2, f1
/* 80208D28 00205C68  40 82 00 48 */ bne lbl_80208D70
/* 80208D2C 00205C6C  88 1F 04 D2 */ lbz r0, 0x4d2(r31)
/* 80208D30 00205C70  28 00 00 00 */ cmplwi r0, 0
/* 80208D34 00205C74  40 82 00 3C */ bne lbl_80208D70
/* 80208D38 00205C78  38 00 00 56 */ li r0, 0x56
/* 80208D3C 00205C7C  90 01 00 08 */ stw r0, 8(r1)
/* 80208D40 00205C80  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80208D44 00205C84  38 81 00 08 */ addi r4, r1, 8
/* 80208D48 00205C88  38 A0 00 00 */ li r5, 0
/* 80208D4C 00205C8C  38 C0 00 00 */ li r6, 0
/* 80208D50 00205C90  38 E0 00 00 */ li r7, 0
/* 80208D54 00205C94  FC 20 10 90 */ fmr f1, f2
/* 80208D58 00205C98  C0 62 AD 58 */ lfs f3, lbl_80454758-_SDA2_BASE_(r2)
/* 80208D5C 00205C9C  FC 80 18 90 */ fmr f4, f3
/* 80208D60 00205CA0  39 00 00 00 */ li r8, 0
/* 80208D64 00205CA4  48 0A 2C 21 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80208D68 00205CA8  38 00 00 01 */ li r0, 1
/* 80208D6C 00205CAC  98 1F 04 D2 */ stb r0, 0x4d2(r31)
lbl_80208D70:
/* 80208D70 00205CB0  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80208D74 00205CB4  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80208D78 00205CB8  7C 08 03 A6 */ mtlr r0
/* 80208D7C 00205CBC  38 21 00 20 */ addi r1, r1, 0x20
/* 80208D80 00205CC0  4E 80 00 20 */ blr
