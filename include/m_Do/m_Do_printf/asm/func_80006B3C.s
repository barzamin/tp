/* 80006B3C 00003A7C  94 21 FF 80 */ stwu r1, -0x80(r1)
/* 80006B40 00003A80  7C 08 02 A6 */ mflr r0
/* 80006B44 00003A84  90 01 00 84 */ stw r0, 0x84(r1)
/* 80006B48 00003A88  93 E1 00 7C */ stw r31, 0x7c(r1)
/* 80006B4C 00003A8C  7C 7F 1B 78 */ mr r31, r3
/* 80006B50 00003A90  40 86 00 24 */ bne cr1, lbl_80006B74
/* 80006B54 00003A94  D8 21 00 28 */ stfd f1, 0x28(r1)
/* 80006B58 00003A98  D8 41 00 30 */ stfd f2, 0x30(r1)
/* 80006B5C 00003A9C  D8 61 00 38 */ stfd f3, 0x38(r1)
/* 80006B60 00003AA0  D8 81 00 40 */ stfd f4, 0x40(r1)
/* 80006B64 00003AA4  D8 A1 00 48 */ stfd f5, 0x48(r1)
/* 80006B68 00003AA8  D8 C1 00 50 */ stfd f6, 0x50(r1)
/* 80006B6C 00003AAC  D8 E1 00 58 */ stfd f7, 0x58(r1)
/* 80006B70 00003AB0  D9 01 00 60 */ stfd f8, 0x60(r1)
lbl_80006B74:
/* 80006B74 00003AB4  90 61 00 08 */ stw r3, 8(r1)
/* 80006B78 00003AB8  90 81 00 0C */ stw r4, 0xc(r1)
/* 80006B7C 00003ABC  90 A1 00 10 */ stw r5, 0x10(r1)
/* 80006B80 00003AC0  90 C1 00 14 */ stw r6, 0x14(r1)
/* 80006B84 00003AC4  90 E1 00 18 */ stw r7, 0x18(r1)
/* 80006B88 00003AC8  91 01 00 1C */ stw r8, 0x1c(r1)
/* 80006B8C 00003ACC  91 21 00 20 */ stw r9, 0x20(r1)
/* 80006B90 00003AD0  91 41 00 24 */ stw r10, 0x24(r1)
/* 80006B94 00003AD4  3C 00 01 00 */ lis r0, 0x100
/* 80006B98 00003AD8  90 01 00 68 */ stw r0, 0x68(r1)
/* 80006B9C 00003ADC  38 01 00 88 */ addi r0, r1, 0x88
/* 80006BA0 00003AE0  90 01 00 6C */ stw r0, 0x6c(r1)
/* 80006BA4 00003AE4  38 01 00 08 */ addi r0, r1, 8
/* 80006BA8 00003AE8  90 01 00 70 */ stw r0, 0x70(r1)
/* 80006BAC 00003AEC  4B FF FD 01 */ bl OSReportForceEnableOn
/* 80006BB0 00003AF0  3C 60 80 37 */ lis r3, lbl_80373CB0@ha
/* 80006BB4 00003AF4  38 63 3C B0 */ addi r3, r3, lbl_80373CB0@l
/* 80006BB8 00003AF8  4B FF FC 11 */ bl my_PutString__FPCc
/* 80006BBC 00003AFC  7F E3 FB 78 */ mr r3, r31
/* 80006BC0 00003B00  38 81 00 68 */ addi r4, r1, 0x68
/* 80006BC4 00003B04  4B FF FC 31 */ bl OSVAttention__FPCcP16__va_list_struct
/* 80006BC8 00003B08  3C 60 80 37 */ lis r3, lbl_80373CB0@ha
/* 80006BCC 00003B0C  38 63 3C B0 */ addi r3, r3, lbl_80373CB0@l
/* 80006BD0 00003B10  38 63 00 21 */ addi r3, r3, 0x21
/* 80006BD4 00003B14  4B FF FB F5 */ bl my_PutString__FPCc
/* 80006BD8 00003B18  4B FF FC E1 */ bl OSReportForceEnableOff
/* 80006BDC 00003B1C  3C 60 80 3D */ lis r3, lbl_803D29B0@ha
/* 80006BE0 00003B20  38 63 29 B0 */ addi r3, r3, lbl_803D29B0@l
/* 80006BE4 00003B24  38 63 00 50 */ addi r3, r3, 0x50
/* 80006BE8 00003B28  48 35 EC D9 */ bl func_803658C0
/* 80006BEC 00003B2C  80 6D 86 28 */ lwz r3, lbl_80450BA8-_SDA_BASE_(r13)
/* 80006BF0 00003B30  38 03 00 01 */ addi r0, r3, 1
/* 80006BF4 00003B34  90 0D 86 28 */ stw r0, lbl_80450BA8-_SDA_BASE_(r13)
/* 80006BF8 00003B38  83 E1 00 7C */ lwz r31, 0x7c(r1)
/* 80006BFC 00003B3C  80 01 00 84 */ lwz r0, 0x84(r1)
/* 80006C00 00003B40  7C 08 03 A6 */ mtlr r0
/* 80006C04 00003B44  38 21 00 80 */ addi r1, r1, 0x80
/* 80006C08 00003B48  4E 80 00 20 */ blr