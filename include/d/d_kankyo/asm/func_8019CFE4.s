/* 8019CFE4 00199F24  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8019CFE8 00199F28  7C 08 02 A6 */ mflr r0
/* 8019CFEC 00199F2C  90 01 00 44 */ stw r0, 0x44(r1)
/* 8019CFF0 00199F30  39 61 00 40 */ addi r11, r1, 0x40
/* 8019CFF4 00199F34  48 1C 51 E9 */ bl _savegpr_29
/* 8019CFF8 00199F38  7C 7D 1B 78 */ mr r29, r3
/* 8019CFFC 00199F3C  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8019D000 00199F40  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 8019D004 00199F44  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8019D008 00199F48  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8019D00C 00199F4C  83 C3 5D 74 */ lwz r30, 0x5d74(r3)
/* 8019D010 00199F50  28 1E 00 00 */ cmplwi r30, 0
/* 8019D014 00199F54  41 82 01 74 */ beq lbl_8019D188
/* 8019D018 00199F58  38 7E 00 E4 */ addi r3, r30, 0xe4
/* 8019D01C 00199F5C  38 9E 00 D8 */ addi r4, r30, 0xd8
/* 8019D020 00199F60  38 A1 00 0A */ addi r5, r1, 0xa
/* 8019D024 00199F64  38 C1 00 08 */ addi r6, r1, 8
/* 8019D028 00199F68  4B FF FE 35 */ bl dKy_pos2_get_angle
/* 8019D02C 00199F6C  38 7E 00 E4 */ addi r3, r30, 0xe4
/* 8019D030 00199F70  38 9E 00 D8 */ addi r4, r30, 0xd8
/* 8019D034 00199F74  38 A1 00 0C */ addi r5, r1, 0xc
/* 8019D038 00199F78  4B EB E7 29 */ bl dKyr_get_vectle_calc
/* 8019D03C 00199F7C  C0 3E 00 D8 */ lfs f1, 0xd8(r30)
/* 8019D040 00199F80  C0 42 A1 F4 */ lfs f2, lbl_80453BF4-_SDA2_BASE_(r2)
/* 8019D044 00199F84  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 8019D048 00199F88  EC 02 00 32 */ fmuls f0, f2, f0
/* 8019D04C 00199F8C  EC 01 00 2A */ fadds f0, f1, f0
/* 8019D050 00199F90  1C BD 00 28 */ mulli r5, r29, 0x28
/* 8019D054 00199F94  7C 9F 2A 14 */ add r4, r31, r5
/* 8019D058 00199F98  D0 04 0C 18 */ stfs f0, 0xc18(r4)
/* 8019D05C 00199F9C  C0 3E 00 DC */ lfs f1, 0xdc(r30)
/* 8019D060 00199FA0  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 8019D064 00199FA4  EC 02 00 32 */ fmuls f0, f2, f0
/* 8019D068 00199FA8  EC 01 00 2A */ fadds f0, f1, f0
/* 8019D06C 00199FAC  D0 04 0C 1C */ stfs f0, 0xc1c(r4)
/* 8019D070 00199FB0  C0 3E 00 E0 */ lfs f1, 0xe0(r30)
/* 8019D074 00199FB4  C0 01 00 14 */ lfs f0, 0x14(r1)
/* 8019D078 00199FB8  EC 02 00 32 */ fmuls f0, f2, f0
/* 8019D07C 00199FBC  EC 01 00 2A */ fadds f0, f1, f0
/* 8019D080 00199FC0  D0 04 0C 20 */ stfs f0, 0xc20(r4)
/* 8019D084 00199FC4  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8019D088 00199FC8  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8019D08C 00199FCC  88 03 13 09 */ lbz r0, 0x1309(r3)
/* 8019D090 00199FD0  2C 00 00 02 */ cmpwi r0, 2
/* 8019D094 00199FD4  38 64 0C 1C */ addi r3, r4, 0xc1c
/* 8019D098 00199FD8  41 82 00 4C */ beq lbl_8019D0E4
/* 8019D09C 00199FDC  40 80 00 14 */ bge lbl_8019D0B0
/* 8019D0A0 00199FE0  2C 00 00 00 */ cmpwi r0, 0
/* 8019D0A4 00199FE4  41 82 00 18 */ beq lbl_8019D0BC
/* 8019D0A8 00199FE8  40 80 00 28 */ bge lbl_8019D0D0
/* 8019D0AC 00199FEC  48 00 00 60 */ b lbl_8019D10C
lbl_8019D0B0:
/* 8019D0B0 00199FF0  2C 00 00 04 */ cmpwi r0, 4
/* 8019D0B4 00199FF4  40 80 00 58 */ bge lbl_8019D10C
/* 8019D0B8 00199FF8  48 00 00 40 */ b lbl_8019D0F8
lbl_8019D0BC:
/* 8019D0BC 00199FFC  C0 23 00 00 */ lfs f1, 0(r3)
/* 8019D0C0 0019A000  C0 02 A1 FC */ lfs f0, lbl_80453BFC-_SDA2_BASE_(r2)
/* 8019D0C4 0019A004  EC 01 00 2A */ fadds f0, f1, f0
/* 8019D0C8 0019A008  D0 03 00 00 */ stfs f0, 0(r3)
/* 8019D0CC 0019A00C  48 00 00 50 */ b lbl_8019D11C
lbl_8019D0D0:
/* 8019D0D0 0019A010  C0 23 00 00 */ lfs f1, 0(r3)
/* 8019D0D4 0019A014  C0 02 A1 D8 */ lfs f0, lbl_80453BD8-_SDA2_BASE_(r2)
/* 8019D0D8 0019A018  EC 01 00 2A */ fadds f0, f1, f0
/* 8019D0DC 0019A01C  D0 03 00 00 */ stfs f0, 0(r3)
/* 8019D0E0 0019A020  48 00 00 3C */ b lbl_8019D11C
lbl_8019D0E4:
/* 8019D0E4 0019A024  C0 23 00 00 */ lfs f1, 0(r3)
/* 8019D0E8 0019A028  C0 02 A1 E0 */ lfs f0, lbl_80453BE0-_SDA2_BASE_(r2)
/* 8019D0EC 0019A02C  EC 01 00 2A */ fadds f0, f1, f0
/* 8019D0F0 0019A030  D0 03 00 00 */ stfs f0, 0(r3)
/* 8019D0F4 0019A034  48 00 00 28 */ b lbl_8019D11C
lbl_8019D0F8:
/* 8019D0F8 0019A038  C0 23 00 00 */ lfs f1, 0(r3)
/* 8019D0FC 0019A03C  C0 02 A1 FC */ lfs f0, lbl_80453BFC-_SDA2_BASE_(r2)
/* 8019D100 0019A040  EC 01 00 2A */ fadds f0, f1, f0
/* 8019D104 0019A044  D0 03 00 00 */ stfs f0, 0(r3)
/* 8019D108 0019A048  48 00 00 14 */ b lbl_8019D11C
lbl_8019D10C:
/* 8019D10C 0019A04C  C0 23 00 00 */ lfs f1, 0(r3)
/* 8019D110 0019A050  C0 02 A1 D8 */ lfs f0, lbl_80453BD8-_SDA2_BASE_(r2)
/* 8019D114 0019A054  EC 01 00 2A */ fadds f0, f1, f0
/* 8019D118 0019A058  D0 03 00 00 */ stfs f0, 0(r3)
lbl_8019D11C:
/* 8019D11C 0019A05C  A8 61 00 0A */ lha r3, 0xa(r1)
/* 8019D120 0019A060  38 03 17 70 */ addi r0, r3, 0x1770
/* 8019D124 0019A064  B0 01 00 0A */ sth r0, 0xa(r1)
/* 8019D128 0019A068  C0 42 A2 28 */ lfs f2, lbl_80453C28-_SDA2_BASE_(r2)
/* 8019D12C 0019A06C  7C 00 07 34 */ extsh r0, r0
/* 8019D130 0019A070  7C 00 00 D0 */ neg r0, r0
/* 8019D134 0019A074  C8 22 A2 30 */ lfd f1, lbl_80453C30-_SDA2_BASE_(r2)
/* 8019D138 0019A078  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8019D13C 0019A07C  90 01 00 1C */ stw r0, 0x1c(r1)
/* 8019D140 0019A080  3C 80 43 30 */ lis r4, 0x4330
/* 8019D144 0019A084  90 81 00 18 */ stw r4, 0x18(r1)
/* 8019D148 0019A088  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 8019D14C 0019A08C  EC 00 08 28 */ fsubs f0, f0, f1
/* 8019D150 0019A090  EC 02 00 32 */ fmuls f0, f2, f0
/* 8019D154 0019A094  7C 7F 2A 14 */ add r3, r31, r5
/* 8019D158 0019A098  D0 03 0C 34 */ stfs f0, 0xc34(r3)
/* 8019D15C 0019A09C  A8 01 00 08 */ lha r0, 8(r1)
/* 8019D160 0019A0A0  7C 00 00 D0 */ neg r0, r0
/* 8019D164 0019A0A4  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8019D168 0019A0A8  90 01 00 24 */ stw r0, 0x24(r1)
/* 8019D16C 0019A0AC  90 81 00 20 */ stw r4, 0x20(r1)
/* 8019D170 0019A0B0  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 8019D174 0019A0B4  EC 00 08 28 */ fsubs f0, f0, f1
/* 8019D178 0019A0B8  EC 22 00 32 */ fmuls f1, f2, f0
/* 8019D17C 0019A0BC  C0 02 A2 2C */ lfs f0, lbl_80453C2C-_SDA2_BASE_(r2)
/* 8019D180 0019A0C0  EC 00 08 2A */ fadds f0, f0, f1
/* 8019D184 0019A0C4  D0 03 0C 38 */ stfs f0, 0xc38(r3)
lbl_8019D188:
/* 8019D188 0019A0C8  39 61 00 40 */ addi r11, r1, 0x40
/* 8019D18C 0019A0CC  48 1C 50 9D */ bl _restgpr_29
/* 8019D190 0019A0D0  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8019D194 0019A0D4  7C 08 03 A6 */ mtlr r0
/* 8019D198 0019A0D8  38 21 00 40 */ addi r1, r1, 0x40
/* 8019D19C 0019A0DC  4E 80 00 20 */ blr
