/* 80122F78 0011FEB8  94 21 FF 80 */ stwu r1, -0x80(r1)
/* 80122F7C 0011FEBC  7C 08 02 A6 */ mflr r0
/* 80122F80 0011FEC0  90 01 00 84 */ stw r0, 0x84(r1)
/* 80122F84 0011FEC4  39 61 00 80 */ addi r11, r1, 0x80
/* 80122F88 0011FEC8  48 23 F2 39 */ bl _savegpr_22
/* 80122F8C 0011FECC  7C 76 1B 78 */ mr r22, r3
/* 80122F90 0011FED0  3C 60 80 3B */ lis r3, lbl_803AF990@ha
/* 80122F94 0011FED4  3B E3 F9 90 */ addi r31, r3, lbl_803AF990@l
/* 80122F98 0011FED8  3C 60 80 39 */ lis r3, lbl_8038D658@ha
/* 80122F9C 0011FEDC  3B C3 D6 58 */ addi r30, r3, lbl_8038D658@l
/* 80122FA0 0011FEE0  C0 56 1F E0 */ lfs f2, 0x1fe0(r22)
/* 80122FA4 0011FEE4  A8 16 30 0A */ lha r0, 0x300a(r22)
/* 80122FA8 0011FEE8  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 80122FAC 0011FEEC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80122FB0 0011FEF0  90 01 00 24 */ stw r0, 0x24(r1)
/* 80122FB4 0011FEF4  3C 00 43 30 */ lis r0, 0x4330
/* 80122FB8 0011FEF8  90 01 00 20 */ stw r0, 0x20(r1)
/* 80122FBC 0011FEFC  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 80122FC0 0011FF00  EC 00 08 28 */ fsubs f0, f0, f1
/* 80122FC4 0011FF04  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80122FC8 0011FF08  41 80 03 C4 */ blt lbl_8012338C
/* 80122FCC 0011FF0C  88 0D 8A 44 */ lbz r0, lbl_80450FC4-_SDA_BASE_(r13)
/* 80122FD0 0011FF10  7C 00 07 75 */ extsb. r0, r0
/* 80122FD4 0011FF14  40 82 00 38 */ bne lbl_8012300C
/* 80122FD8 0011FF18  3C 60 00 01 */ lis r3, 0x00008000@ha
/* 80122FDC 0011FF1C  38 A3 80 00 */ addi r5, r3, 0x00008000@l
/* 80122FE0 0011FF20  B0 BF 33 A4 */ sth r5, 0x33a4(r31)
/* 80122FE4 0011FF24  38 80 20 00 */ li r4, 0x2000
/* 80122FE8 0011FF28  38 7F 33 A4 */ addi r3, r31, 0x33a4
/* 80122FEC 0011FF2C  B0 83 00 02 */ sth r4, 2(r3)
/* 80122FF0 0011FF30  38 00 09 3E */ li r0, 0x93e
/* 80122FF4 0011FF34  B0 03 00 04 */ sth r0, 4(r3)
/* 80122FF8 0011FF38  B0 A3 00 06 */ sth r5, 6(r3)
/* 80122FFC 0011FF3C  B0 83 00 08 */ sth r4, 8(r3)
/* 80123000 0011FF40  B0 03 00 0A */ sth r0, 0xa(r3)
/* 80123004 0011FF44  38 00 00 01 */ li r0, 1
/* 80123008 0011FF48  98 0D 8A 44 */ stb r0, lbl_80450FC4-_SDA_BASE_(r13)
lbl_8012300C:
/* 8012300C 0011FF4C  88 0D 8A 45 */ lbz r0, lbl_80450FC5-_SDA_BASE_(r13)
/* 80123010 0011FF50  7C 00 07 75 */ extsb. r0, r0
/* 80123014 0011FF54  40 82 00 54 */ bne lbl_80123068
/* 80123018 0011FF58  3C 60 00 01 */ lis r3, 0x00008000@ha
/* 8012301C 0011FF5C  38 A3 80 00 */ addi r5, r3, 0x00008000@l
/* 80123020 0011FF60  B0 BF 33 B0 */ sth r5, 0x33b0(r31)
/* 80123024 0011FF64  38 00 47 1C */ li r0, 0x471c
/* 80123028 0011FF68  38 9F 33 B0 */ addi r4, r31, 0x33b0
/* 8012302C 0011FF6C  B0 04 00 02 */ sth r0, 2(r4)
/* 80123030 0011FF70  38 60 09 3E */ li r3, 0x93e
/* 80123034 0011FF74  B0 64 00 04 */ sth r3, 4(r4)
/* 80123038 0011FF78  B0 A4 00 06 */ sth r5, 6(r4)
/* 8012303C 0011FF7C  38 00 38 E3 */ li r0, 0x38e3
/* 80123040 0011FF80  B0 04 00 08 */ sth r0, 8(r4)
/* 80123044 0011FF84  B0 64 00 0A */ sth r3, 0xa(r4)
/* 80123048 0011FF88  B0 A4 00 0C */ sth r5, 0xc(r4)
/* 8012304C 0011FF8C  B0 04 00 0E */ sth r0, 0xe(r4)
/* 80123050 0011FF90  B0 64 00 10 */ sth r3, 0x10(r4)
/* 80123054 0011FF94  B0 A4 00 12 */ sth r5, 0x12(r4)
/* 80123058 0011FF98  B0 04 00 14 */ sth r0, 0x14(r4)
/* 8012305C 0011FF9C  B0 64 00 16 */ sth r3, 0x16(r4)
/* 80123060 0011FFA0  38 00 00 01 */ li r0, 1
/* 80123064 0011FFA4  98 0D 8A 45 */ stb r0, lbl_80450FC5-_SDA_BASE_(r13)
lbl_80123068:
/* 80123068 0011FFA8  88 0D 8A 46 */ lbz r0, lbl_80450FC6-_SDA_BASE_(r13)
/* 8012306C 0011FFAC  7C 00 07 75 */ extsb. r0, r0
/* 80123070 0011FFB0  40 82 00 6C */ bne lbl_801230DC
/* 80123074 0011FFB4  3C 60 00 01 */ lis r3, 0x00008000@ha
/* 80123078 0011FFB8  38 A3 80 00 */ addi r5, r3, 0x00008000@l
/* 8012307C 0011FFBC  B0 BF 33 C8 */ sth r5, 0x33c8(r31)
/* 80123080 0011FFC0  38 00 20 00 */ li r0, 0x2000
/* 80123084 0011FFC4  38 9F 33 C8 */ addi r4, r31, 0x33c8
/* 80123088 0011FFC8  B0 04 00 02 */ sth r0, 2(r4)
/* 8012308C 0011FFCC  38 60 09 3E */ li r3, 0x93e
/* 80123090 0011FFD0  B0 64 00 04 */ sth r3, 4(r4)
/* 80123094 0011FFD4  B0 A4 00 06 */ sth r5, 6(r4)
/* 80123098 0011FFD8  B0 04 00 08 */ sth r0, 8(r4)
/* 8012309C 0011FFDC  B0 64 00 0A */ sth r3, 0xa(r4)
/* 801230A0 0011FFE0  B0 A4 00 0C */ sth r5, 0xc(r4)
/* 801230A4 0011FFE4  38 00 2A AA */ li r0, 0x2aaa
/* 801230A8 0011FFE8  B0 04 00 0E */ sth r0, 0xe(r4)
/* 801230AC 0011FFEC  B0 64 00 10 */ sth r3, 0x10(r4)
/* 801230B0 0011FFF0  B0 A4 00 12 */ sth r5, 0x12(r4)
/* 801230B4 0011FFF4  B0 04 00 14 */ sth r0, 0x14(r4)
/* 801230B8 0011FFF8  B0 64 00 16 */ sth r3, 0x16(r4)
/* 801230BC 0011FFFC  B0 A4 00 18 */ sth r5, 0x18(r4)
/* 801230C0 00120000  B0 04 00 1A */ sth r0, 0x1a(r4)
/* 801230C4 00120004  B0 64 00 1C */ sth r3, 0x1c(r4)
/* 801230C8 00120008  B0 A4 00 1E */ sth r5, 0x1e(r4)
/* 801230CC 0012000C  B0 04 00 20 */ sth r0, 0x20(r4)
/* 801230D0 00120010  B0 64 00 22 */ sth r3, 0x22(r4)
/* 801230D4 00120014  38 00 00 01 */ li r0, 1
/* 801230D8 00120018  98 0D 8A 46 */ stb r0, lbl_80450FC6-_SDA_BASE_(r13)
lbl_801230DC:
/* 801230DC 0012001C  88 0D 8A 47 */ lbz r0, lbl_80450FC7-_SDA_BASE_(r13)
/* 801230E0 00120020  7C 00 07 75 */ extsb. r0, r0
/* 801230E4 00120024  40 82 00 38 */ bne lbl_8012311C
/* 801230E8 00120028  38 00 C0 00 */ li r0, -16384
/* 801230EC 0012002C  B0 1F 33 EC */ sth r0, 0x33ec(r31)
/* 801230F0 00120030  38 A0 00 00 */ li r5, 0
/* 801230F4 00120034  38 9F 33 EC */ addi r4, r31, 0x33ec
/* 801230F8 00120038  B0 A4 00 02 */ sth r5, 2(r4)
/* 801230FC 0012003C  3C 60 00 01 */ lis r3, 0x00008000@ha
/* 80123100 00120040  38 03 80 00 */ addi r0, r3, 0x00008000@l
/* 80123104 00120044  B0 04 00 04 */ sth r0, 4(r4)
/* 80123108 00120048  B0 A4 00 06 */ sth r5, 6(r4)
/* 8012310C 0012004C  B0 A4 00 08 */ sth r5, 8(r4)
/* 80123110 00120050  B0 04 00 0A */ sth r0, 0xa(r4)
/* 80123114 00120054  38 00 00 01 */ li r0, 1
/* 80123118 00120058  98 0D 8A 47 */ stb r0, lbl_80450FC7-_SDA_BASE_(r13)
lbl_8012311C:
/* 8012311C 0012005C  3B B6 32 04 */ addi r29, r22, 0x3204
/* 80123120 00120060  3B 00 00 00 */ li r24, 0
/* 80123124 00120064  80 16 05 70 */ lwz r0, 0x570(r22)
/* 80123128 00120068  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 8012312C 0012006C  41 82 00 44 */ beq lbl_80123170
/* 80123130 00120070  7E C3 B3 78 */ mr r3, r22
/* 80123134 00120074  4B F9 CC 7D */ bl daAlink_c_NS_checkZoraWearAbility
/* 80123138 00120078  2C 03 00 00 */ cmpwi r3, 0
/* 8012313C 0012007C  41 82 02 50 */ beq lbl_8012338C
/* 80123140 00120080  3B 82 96 B8 */ addi r28, r2, 0x804530B8 - 0x80459A00 /*SDA HACK; original: lbl_804530B8-_SDA2_BASE_*/
/* 80123144 00120084  3B 7F 33 EC */ addi r27, r31, 0x33ec
/* 80123148 00120088  3B 5E 46 C8 */ addi r26, r30, 0x46c8
/* 8012314C 0012008C  3B 20 00 02 */ li r25, 2
/* 80123150 00120090  88 16 05 68 */ lbz r0, 0x568(r22)
/* 80123154 00120094  28 00 00 18 */ cmplwi r0, 0x18
/* 80123158 00120098  41 82 00 0C */ beq lbl_80123164
/* 8012315C 0012009C  28 00 00 17 */ cmplwi r0, 0x17
/* 80123160 001200A0  40 82 00 68 */ bne lbl_801231C8
lbl_80123164:
/* 80123164 001200A4  3B 00 00 01 */ li r24, 1
/* 80123168 001200A8  48 00 00 60 */ b lbl_801231C8
/* 8012316C 001200AC  48 00 02 20 */ b lbl_8012338C
lbl_80123170:
/* 80123170 001200B0  88 16 05 68 */ lbz r0, 0x568(r22)
/* 80123174 001200B4  28 00 00 18 */ cmplwi r0, 0x18
/* 80123178 001200B8  41 82 00 0C */ beq lbl_80123184
/* 8012317C 001200BC  28 00 00 17 */ cmplwi r0, 0x17
/* 80123180 001200C0  40 82 00 18 */ bne lbl_80123198
lbl_80123184:
/* 80123184 001200C4  3B 9E 46 74 */ addi r28, r30, 0x4674
/* 80123188 001200C8  3B 7F 33 C8 */ addi r27, r31, 0x33c8
/* 8012318C 001200CC  3B 5E 46 80 */ addi r26, r30, 0x4680
/* 80123190 001200D0  3B 20 00 06 */ li r25, 6
/* 80123194 001200D4  48 00 00 34 */ b lbl_801231C8
lbl_80123198:
/* 80123198 001200D8  80 16 05 7C */ lwz r0, 0x57c(r22)
/* 8012319C 001200DC  54 00 02 D7 */ rlwinm. r0, r0, 0, 0xb, 0xb
/* 801231A0 001200E0  41 82 00 18 */ beq lbl_801231B8
/* 801231A4 001200E4  3B 82 96 B0 */ addi r28, r2, 0x804530B0 - 0x80459A00 /*SDA HACK; original: lbl_804530B0-_SDA2_BASE_*/
/* 801231A8 001200E8  3B 7F 33 B0 */ addi r27, r31, 0x33b0
/* 801231AC 001200EC  3B 5E 46 44 */ addi r26, r30, 0x4644
/* 801231B0 001200F0  3B 20 00 04 */ li r25, 4
/* 801231B4 001200F4  48 00 00 14 */ b lbl_801231C8
lbl_801231B8:
/* 801231B8 001200F8  3B 82 96 AC */ addi r28, r2, 0x804530AC - 0x80459A00 /*SDA HACK; original: lbl_804530AC-_SDA2_BASE_*/
/* 801231BC 001200FC  3B 7F 33 A4 */ addi r27, r31, 0x33a4
/* 801231C0 00120100  3B 5E 46 2C */ addi r26, r30, 0x462c
/* 801231C4 00120104  3B 20 00 02 */ li r25, 2
lbl_801231C8:
/* 801231C8 00120108  80 76 06 50 */ lwz r3, 0x650(r22)
/* 801231CC 0012010C  80 63 00 84 */ lwz r3, 0x84(r3)
/* 801231D0 00120110  80 63 00 0C */ lwz r3, 0xc(r3)
/* 801231D4 00120114  C0 03 00 3C */ lfs f0, 0x3c(r3)
/* 801231D8 00120118  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 801231DC 0012011C  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 801231E0 00120120  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 801231E4 00120124  C0 03 00 5C */ lfs f0, 0x5c(r3)
/* 801231E8 00120128  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 801231EC 0012012C  80 16 05 70 */ lwz r0, 0x570(r22)
/* 801231F0 00120130  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 801231F4 00120134  41 82 00 28 */ beq lbl_8012321C
/* 801231F8 00120138  38 61 00 14 */ addi r3, r1, 0x14
/* 801231FC 0012013C  4B EE 9B 69 */ bl mDoMtx_stack_c_NS_transS
/* 80123200 00120140  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80123204 00120144  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 80123208 00120148  38 96 2C 48 */ addi r4, r22, 0x2c48
/* 8012320C 0012014C  7C 65 1B 78 */ mr r5, r3
/* 80123210 00120150  48 22 32 D5 */ bl PSMTXConcat
/* 80123214 00120154  38 76 04 E4 */ addi r3, r22, 0x4e4
/* 80123218 00120158  4B EE 9D 2D */ bl mDoMtx_stack_c_NS_ZXYrotM
lbl_8012321C:
/* 8012321C 0012015C  3A E0 00 00 */ li r23, 0
/* 80123220 00120160  48 00 01 64 */ b lbl_80123384
lbl_80123224:
/* 80123224 00120164  7E C3 B3 78 */ mr r3, r22
/* 80123228 00120168  7F A4 EB 78 */ mr r4, r29
/* 8012322C 0012016C  A0 BC 00 00 */ lhz r5, 0(r28)
/* 80123230 00120170  38 C1 00 14 */ addi r6, r1, 0x14
/* 80123234 00120174  38 F6 04 E4 */ addi r7, r22, 0x4e4
/* 80123238 00120178  4B FF D3 49 */ bl daAlink_c_NS_setEmitter
/* 8012323C 0012017C  7C 7F 1B 79 */ or. r31, r3, r3
/* 80123240 00120180  41 82 01 30 */ beq lbl_80123370
/* 80123244 00120184  80 16 05 70 */ lwz r0, 0x570(r22)
/* 80123248 00120188  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 8012324C 0012018C  41 82 00 18 */ beq lbl_80123264
/* 80123250 00120190  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80123254 00120194  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 80123258 00120198  38 9F 00 68 */ addi r4, r31, 0x68
/* 8012325C 0012019C  38 BF 00 A4 */ addi r5, r31, 0xa4
/* 80123260 001201A0  48 15 D5 81 */ bl JPASetRMtxTVecfromMtx
lbl_80123264:
/* 80123264 001201A4  A8 16 30 10 */ lha r0, 0x3010(r22)
/* 80123268 001201A8  2C 00 00 00 */ cmpwi r0, 0
/* 8012326C 001201AC  40 82 00 BC */ bne lbl_80123328
/* 80123270 001201B0  C0 42 96 BC */ lfs f2, lbl_804530BC-_SDA2_BASE_(r2)
/* 80123274 001201B4  A8 1B 00 04 */ lha r0, 4(r27)
/* 80123278 001201B8  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 8012327C 001201BC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80123280 001201C0  90 01 00 24 */ stw r0, 0x24(r1)
/* 80123284 001201C4  3C 60 43 30 */ lis r3, 0x4330
/* 80123288 001201C8  90 61 00 20 */ stw r3, 0x20(r1)
/* 8012328C 001201CC  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 80123290 001201D0  EC 00 08 28 */ fsubs f0, f0, f1
/* 80123294 001201D4  EC 02 00 32 */ fmuls f0, f2, f0
/* 80123298 001201D8  FC 00 00 1E */ fctiwz f0, f0
/* 8012329C 001201DC  D8 01 00 28 */ stfd f0, 0x28(r1)
/* 801232A0 001201E0  80 A1 00 2C */ lwz r5, 0x2c(r1)
/* 801232A4 001201E4  A8 1B 00 02 */ lha r0, 2(r27)
/* 801232A8 001201E8  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 801232AC 001201EC  90 01 00 34 */ stw r0, 0x34(r1)
/* 801232B0 001201F0  90 61 00 30 */ stw r3, 0x30(r1)
/* 801232B4 001201F4  C8 01 00 30 */ lfd f0, 0x30(r1)
/* 801232B8 001201F8  EC 00 08 28 */ fsubs f0, f0, f1
/* 801232BC 001201FC  EC 02 00 32 */ fmuls f0, f2, f0
/* 801232C0 00120200  FC 00 00 1E */ fctiwz f0, f0
/* 801232C4 00120204  D8 01 00 38 */ stfd f0, 0x38(r1)
/* 801232C8 00120208  80 81 00 3C */ lwz r4, 0x3c(r1)
/* 801232CC 0012020C  A8 1B 00 00 */ lha r0, 0(r27)
/* 801232D0 00120210  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 801232D4 00120214  90 01 00 44 */ stw r0, 0x44(r1)
/* 801232D8 00120218  90 61 00 40 */ stw r3, 0x40(r1)
/* 801232DC 0012021C  C8 01 00 40 */ lfd f0, 0x40(r1)
/* 801232E0 00120220  EC 00 08 28 */ fsubs f0, f0, f1
/* 801232E4 00120224  EC 02 00 32 */ fmuls f0, f2, f0
/* 801232E8 00120228  FC 00 00 1E */ fctiwz f0, f0
/* 801232EC 0012022C  D8 01 00 48 */ stfd f0, 0x48(r1)
/* 801232F0 00120230  80 01 00 4C */ lwz r0, 0x4c(r1)
/* 801232F4 00120234  B0 1F 00 4C */ sth r0, 0x4c(r31)
/* 801232F8 00120238  B0 9F 00 4E */ sth r4, 0x4e(r31)
/* 801232FC 0012023C  B0 BF 00 50 */ sth r5, 0x50(r31)
/* 80123300 00120240  C0 3A 00 04 */ lfs f1, 4(r26)
/* 80123304 00120244  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80123308 00120248  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012330C 0012024C  40 81 00 1C */ ble lbl_80123328
/* 80123310 00120250  C0 1A 00 00 */ lfs f0, 0(r26)
/* 80123314 00120254  D0 1F 00 0C */ stfs f0, 0xc(r31)
/* 80123318 00120258  C0 1A 00 04 */ lfs f0, 4(r26)
/* 8012331C 0012025C  D0 1F 00 10 */ stfs f0, 0x10(r31)
/* 80123320 00120260  C0 1A 00 08 */ lfs f0, 8(r26)
/* 80123324 00120264  D0 1F 00 14 */ stfs f0, 0x14(r31)
lbl_80123328:
/* 80123328 00120268  2C 18 00 00 */ cmpwi r24, 0
/* 8012332C 0012026C  41 82 00 44 */ beq lbl_80123370
/* 80123330 00120270  2C 17 00 00 */ cmpwi r23, 0
/* 80123334 00120274  40 82 00 2C */ bne lbl_80123360
/* 80123338 00120278  38 7E 46 20 */ addi r3, r30, 0x4620
/* 8012333C 0012027C  E0 23 00 00 */ psq_l f1, 0(r3), 0, 0
/* 80123340 00120280  C0 03 00 08 */ lfs f0, 8(r3)
/* 80123344 00120284  F0 21 00 08 */ psq_st f1, 8(r1), 0, 0
/* 80123348 00120288  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8012334C 0012028C  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 80123350 00120290  C0 01 00 08 */ lfs f0, 8(r1)
/* 80123354 00120294  D0 1F 00 B0 */ stfs f0, 0xb0(r31)
/* 80123358 00120298  D0 3F 00 B4 */ stfs f1, 0xb4(r31)
/* 8012335C 0012029C  48 00 00 14 */ b lbl_80123370
lbl_80123360:
/* 80123360 001202A0  38 00 00 E1 */ li r0, 0xe1
/* 80123364 001202A4  B0 1F 00 54 */ sth r0, 0x54(r31)
/* 80123368 001202A8  C0 02 94 64 */ lfs f0, lbl_80452E64-_SDA2_BASE_(r2)
/* 8012336C 001202AC  D0 1F 00 38 */ stfs f0, 0x38(r31)
lbl_80123370:
/* 80123370 001202B0  3A F7 00 01 */ addi r23, r23, 1
/* 80123374 001202B4  3B BD 00 04 */ addi r29, r29, 4
/* 80123378 001202B8  3B 9C 00 02 */ addi r28, r28, 2
/* 8012337C 001202BC  3B 7B 00 06 */ addi r27, r27, 6
/* 80123380 001202C0  3B 5A 00 0C */ addi r26, r26, 0xc
lbl_80123384:
/* 80123384 001202C4  7C 17 C8 00 */ cmpw r23, r25
/* 80123388 001202C8  41 80 FE 9C */ blt lbl_80123224
lbl_8012338C:
/* 8012338C 001202CC  39 61 00 80 */ addi r11, r1, 0x80
/* 80123390 001202D0  48 23 EE 7D */ bl func_8036220C
/* 80123394 001202D4  80 01 00 84 */ lwz r0, 0x84(r1)
/* 80123398 001202D8  7C 08 03 A6 */ mtlr r0
/* 8012339C 001202DC  38 21 00 80 */ addi r1, r1, 0x80
/* 801233A0 001202E0  4E 80 00 20 */ blr
