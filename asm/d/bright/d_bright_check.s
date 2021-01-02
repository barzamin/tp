.include "macros.inc"

.section .text, "ax" # 80192f10


.global dBrightCheck_c
dBrightCheck_c:
/* 80192F10 0018FE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192F14 0018FE54  7C 08 02 A6 */	mflr r0
/* 80192F18 0018FE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192F1C 0018FE5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80192F20 0018FE60  7C 7F 1B 78 */	mr r31, r3
/* 80192F24 0018FE64  3C 60 80 3C */	lis r3, lbl_803BB5FC@ha
/* 80192F28 0018FE68  38 03 B5 FC */	addi r0, r3, lbl_803BB5FC@l
/* 80192F2C 0018FE6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80192F30 0018FE70  3C 60 80 3A */	lis r3, lbl_803A6F88@ha
/* 80192F34 0018FE74  38 03 6F 88 */	addi r0, r3, lbl_803A6F88@l
/* 80192F38 0018FE78  90 1F 00 08 */	stw r0, 8(r31)
/* 80192F3C 0018FE7C  3C 60 80 3C */	lis r3, lbl_803BB5EC@ha
/* 80192F40 0018FE80  38 03 B5 EC */	addi r0, r3, lbl_803BB5EC@l
/* 80192F44 0018FE84  90 1F 00 08 */	stw r0, 8(r31)
/* 80192F48 0018FE88  90 9F 00 04 */	stw r4, 4(r31)
/* 80192F4C 0018FE8C  38 60 00 2C */	li r3, 0x2c
/* 80192F50 0018FE90  48 13 BC FD */	bl __nw__FUl
/* 80192F54 0018FE94  7C 60 1B 79 */	or. r0, r3, r3
/* 80192F58 0018FE98  41 82 00 0C */	beq lbl_80192F64
/* 80192F5C 0018FE9C  48 0B 6C C5 */	bl dMsgString_c
/* 80192F60 0018FEA0  7C 60 1B 78 */	mr r0, r3
lbl_80192F64:
/* 80192F64 0018FEA4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80192F68 0018FEA8  7F E3 FB 78 */	mr r3, r31
/* 80192F6C 0018FEAC  48 00 00 C5 */	bl dBrightCheck_c_NS_screenSet
/* 80192F70 0018FEB0  38 00 00 00 */	li r0, 0
/* 80192F74 0018FEB4  98 1F 00 19 */	stb r0, 0x19(r31)
/* 80192F78 0018FEB8  38 00 00 01 */	li r0, 1
/* 80192F7C 0018FEBC  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80192F80 0018FEC0  7F E3 FB 78 */	mr r3, r31
/* 80192F84 0018FEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80192F88 0018FEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192F8C 0018FECC  7C 08 03 A6 */	mtlr r0
/* 80192F90 0018FED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80192F94 0018FED4  4E 80 00 20 */	blr 
/* 80192F98 0018FED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192F9C 0018FEDC  7C 08 02 A6 */	mflr r0
/* 80192FA0 0018FEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192FA4 0018FEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80192FA8 0018FEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80192FAC 0018FEEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80192FB0 0018FEF0  7C 9F 23 78 */	mr r31, r4
/* 80192FB4 0018FEF4  41 82 00 60 */	beq lbl_80193014
/* 80192FB8 0018FEF8  3C 60 80 3C */	lis r3, lbl_803BB5FC@ha
/* 80192FBC 0018FEFC  38 03 B5 FC */	addi r0, r3, lbl_803BB5FC@l
/* 80192FC0 0018FF00  90 1E 00 00 */	stw r0, 0(r30)
/* 80192FC4 0018FF04  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80192FC8 0018FF08  28 03 00 00 */	cmplwi r3, 0
/* 80192FCC 0018FF0C  41 82 00 18 */	beq lbl_80192FE4
/* 80192FD0 0018FF10  38 80 00 01 */	li r4, 1
/* 80192FD4 0018FF14  81 83 00 00 */	lwz r12, 0(r3)
/* 80192FD8 0018FF18  81 8C 00 08 */	lwz r12, 8(r12)
/* 80192FDC 0018FF1C  7D 89 03 A6 */	mtctr r12
/* 80192FE0 0018FF20  4E 80 04 21 */	bctrl 
lbl_80192FE4:
/* 80192FE4 0018FF24  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80192FE8 0018FF28  38 80 00 01 */	li r4, 1
/* 80192FEC 0018FF2C  48 0B 6D 3D */	bl dMsgString_c_NS_dtor
/* 80192FF0 0018FF30  34 1E 00 08 */	addic. r0, r30, 8
/* 80192FF4 0018FF34  41 82 00 10 */	beq lbl_80193004
/* 80192FF8 0018FF38  3C 60 80 3C */	lis r3, lbl_803BB5EC@ha
/* 80192FFC 0018FF3C  38 03 B5 EC */	addi r0, r3, lbl_803BB5EC@l
/* 80193000 0018FF40  90 1E 00 08 */	stw r0, 8(r30)
lbl_80193004:
/* 80193004 0018FF44  7F E0 07 35 */	extsh. r0, r31
/* 80193008 0018FF48  40 81 00 0C */	ble lbl_80193014
/* 8019300C 0018FF4C  7F C3 F3 78 */	mr r3, r30
/* 80193010 0018FF50  48 13 BD 2D */	bl __dl__FPv
lbl_80193014:
/* 80193014 0018FF54  7F C3 F3 78 */	mr r3, r30
/* 80193018 0018FF58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019301C 0018FF5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80193020 0018FF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80193024 0018FF64  7C 08 03 A6 */	mtlr r0
/* 80193028 0018FF68  38 21 00 10 */	addi r1, r1, 0x10
/* 8019302C 0018FF6C  4E 80 00 20 */	blr 

.global dBrightCheck_c_NS_screenSet
dBrightCheck_c_NS_screenSet:
/* 80193030 0018FF70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80193034 0018FF74  7C 08 02 A6 */	mflr r0
/* 80193038 0018FF78  90 01 00 64 */	stw r0, 0x64(r1)
/* 8019303C 0018FF7C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80193040 0018FF80  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80193044 0018FF84  39 61 00 50 */	addi r11, r1, 0x50
/* 80193048 0018FF88  48 1C F1 79 */	bl func_803621C0
/* 8019304C 0018FF8C  7C 7E 1B 78 */	mr r30, r3
/* 80193050 0018FF90  3C 60 80 39 */	lis r3, lbl_80394910@ha
/* 80193054 0018FF94  3B E3 49 10 */	addi r31, r3, lbl_80394910@l
/* 80193058 0018FF98  38 60 01 18 */	li r3, 0x118
/* 8019305C 0018FF9C  48 13 BB F1 */	bl __nw__FUl
/* 80193060 0018FFA0  7C 60 1B 79 */	or. r0, r3, r3
/* 80193064 0018FFA4  41 82 00 0C */	beq lbl_80193070
/* 80193068 0018FFA8  48 16 54 31 */	bl __ct__9J2DScreenFv
/* 8019306C 0018FFAC  7C 60 1B 78 */	mr r0, r3
lbl_80193070:
/* 80193070 0018FFB0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80193074 0018FFB4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80193078 0018FFB8  3C 80 80 39 */	lis r4, lbl_803949D8@ha
/* 8019307C 0018FFBC  38 84 49 D8 */	addi r4, r4, lbl_803949D8@l
/* 80193080 0018FFC0  3C A0 01 10 */	lis r5, 0x110
/* 80193084 0018FFC4  80 DE 00 04 */	lwz r6, 4(r30)
/* 80193088 0018FFC8  48 16 55 C1 */	bl J2DScreen_NS_setPriority
/* 8019308C 0018FFCC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80193090 0018FFD0  3C 80 74 6E */	lis r4, 0x746E5F6E@ha
/* 80193094 0018FFD4  38 C4 5F 6E */	addi r6, r4, 0x746E5F6E@l
/* 80193098 0018FFD8  3C 80 67 5F */	lis r4, 0x675F6162@ha
/* 8019309C 0018FFDC  38 A4 61 62 */	addi r5, r4, 0x675F6162@l
/* 801930A0 0018FFE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801930A4 0018FFE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801930A8 0018FFE8  7D 89 03 A6 */	mtctr r12
/* 801930AC 0018FFEC  4E 80 04 21 */	bctrl 
/* 801930B0 0018FFF0  38 00 00 00 */	li r0, 0
/* 801930B4 0018FFF4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801930B8 0018FFF8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801930BC 0018FFFC  3C 80 5F 74 */	lis r4, 0x5F743030@ha
/* 801930C0 00190000  38 C4 30 30 */	addi r6, r4, 0x5F743030@l
/* 801930C4 00190004  38 A0 00 66 */	li r5, 0x66
/* 801930C8 00190008  81 83 00 00 */	lwz r12, 0(r3)
/* 801930CC 0019000C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801930D0 00190010  7D 89 03 A6 */	mtctr r12
/* 801930D4 00190014  4E 80 04 21 */	bctrl 
/* 801930D8 00190018  7C 77 1B 78 */	mr r23, r3
/* 801930DC 0019001C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801930E0 00190020  3C 80 5F 74 */	lis r4, 0x5F743030@ha
/* 801930E4 00190024  38 C4 30 30 */	addi r6, r4, 0x5F743030@l
/* 801930E8 00190028  38 A0 00 66 */	li r5, 0x66
/* 801930EC 0019002C  81 83 00 00 */	lwz r12, 0(r3)
/* 801930F0 00190030  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801930F4 00190034  7D 89 03 A6 */	mtctr r12
/* 801930F8 00190038  4E 80 04 21 */	bctrl 
/* 801930FC 0019003C  38 00 00 01 */	li r0, 1
/* 80193100 00190040  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80193104 00190044  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80193108 00190048  3C 80 5F 74 */	lis r4, 0x5F743030@ha
/* 8019310C 0019004C  38 C4 30 30 */	addi r6, r4, 0x5F743030@l
/* 80193110 00190050  38 A0 00 74 */	li r5, 0x74
/* 80193114 00190054  81 83 00 00 */	lwz r12, 0(r3)
/* 80193118 00190058  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8019311C 0019005C  7D 89 03 A6 */	mtctr r12
/* 80193120 00190060  4E 80 04 21 */	bctrl 
/* 80193124 00190064  38 00 00 00 */	li r0, 0
/* 80193128 00190068  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8019312C 0019006C  4B E8 19 D9 */	bl mDoExt_getRubyFont
/* 80193130 00190070  7C 64 1B 78 */	mr r4, r3
/* 80193134 00190074  7E E3 BB 78 */	mr r3, r23
/* 80193138 00190078  81 97 00 00 */	lwz r12, 0(r23)
/* 8019313C 0019007C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80193140 00190080  7D 89 03 A6 */	mtctr r12
/* 80193144 00190084  4E 80 04 21 */	bctrl 
/* 80193148 00190088  7E E3 BB 78 */	mr r3, r23
/* 8019314C 0019008C  38 80 00 40 */	li r4, 0x40
/* 80193150 00190090  3C A0 80 39 */	lis r5, lbl_803949D8@ha
/* 80193154 00190094  38 A5 49 D8 */	addi r5, r5, lbl_803949D8@l
/* 80193158 00190098  38 A5 00 17 */	addi r5, r5, 0x17
/* 8019315C 0019009C  4C C6 31 82 */	crclr 6
/* 80193160 001900A0  48 16 D5 ED */	bl J2DTextBox_NS_setString_X1_
/* 80193164 001900A4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80193168 001900A8  38 80 05 5C */	li r4, 0x55c
/* 8019316C 001900AC  7E E5 BB 78 */	mr r5, r23
/* 80193170 001900B0  38 C0 00 00 */	li r6, 0
/* 80193174 001900B4  38 E0 00 00 */	li r7, 0
/* 80193178 001900B8  39 00 00 00 */	li r8, 0
/* 8019317C 001900BC  39 20 00 00 */	li r9, 0
/* 80193180 001900C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80193184 001900C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193188 001900C8  7D 89 03 A6 */	mtctr r12
/* 8019318C 001900CC  4E 80 04 21 */	bctrl 
/* 80193190 001900D0  3A C0 00 00 */	li r22, 0
/* 80193194 001900D4  3B A0 00 00 */	li r29, 0
/* 80193198 001900D8  3B 80 00 00 */	li r28, 0
/* 8019319C 001900DC  3B 3F 00 28 */	addi r25, r31, 0x28
/* 801931A0 001900E0  3B 01 00 08 */	addi r24, r1, 8
/* 801931A4 001900E4  3B 5F 00 00 */	addi r26, r31, 0
/* 801931A8 001900E8  3C 60 80 39 */	lis r3, lbl_803949D8@ha
/* 801931AC 001900EC  3B 63 49 D8 */	addi r27, r3, lbl_803949D8@l
lbl_801931B0:
/* 801931B0 001900F0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801931B4 001900F4  7C D9 E2 14 */	add r6, r25, r28
/* 801931B8 001900F8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801931BC 001900FC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801931C0 00190100  81 83 00 00 */	lwz r12, 0(r3)
/* 801931C4 00190104  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801931C8 00190108  7D 89 03 A6 */	mtctr r12
/* 801931CC 0019010C  4E 80 04 21 */	bctrl 
/* 801931D0 00190110  7C 78 E9 2E */	stwx r3, r24, r29
/* 801931D4 00190114  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801931D8 00190118  7C DA E2 14 */	add r6, r26, r28
/* 801931DC 0019011C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801931E0 00190120  80 C6 00 04 */	lwz r6, 4(r6)
/* 801931E4 00190124  81 83 00 00 */	lwz r12, 0(r3)
/* 801931E8 00190128  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801931EC 0019012C  7D 89 03 A6 */	mtctr r12
/* 801931F0 00190130  4E 80 04 21 */	bctrl 
/* 801931F4 00190134  38 00 00 00 */	li r0, 0
/* 801931F8 00190138  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801931FC 0019013C  4B E8 17 F5 */	bl mDoExt_getMesgFont
/* 80193200 00190140  7C 64 1B 78 */	mr r4, r3
/* 80193204 00190144  7E F8 E8 2E */	lwzx r23, r24, r29
/* 80193208 00190148  7E E3 BB 78 */	mr r3, r23
/* 8019320C 0019014C  81 97 00 00 */	lwz r12, 0(r23)
/* 80193210 00190150  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80193214 00190154  7D 89 03 A6 */	mtctr r12
/* 80193218 00190158  4E 80 04 21 */	bctrl 
/* 8019321C 0019015C  7E E3 BB 78 */	mr r3, r23
/* 80193220 00190160  38 80 00 40 */	li r4, 0x40
/* 80193224 00190164  38 BB 00 17 */	addi r5, r27, 0x17
/* 80193228 00190168  4C C6 31 82 */	crclr 6
/* 8019322C 0019016C  48 16 D5 21 */	bl J2DTextBox_NS_setString_X1_
/* 80193230 00190170  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80193234 00190174  38 80 05 64 */	li r4, 0x564
/* 80193238 00190178  7E E5 BB 78 */	mr r5, r23
/* 8019323C 0019017C  38 C0 00 00 */	li r6, 0
/* 80193240 00190180  38 E0 00 00 */	li r7, 0
/* 80193244 00190184  39 00 00 00 */	li r8, 0
/* 80193248 00190188  39 20 00 00 */	li r9, 0
/* 8019324C 0019018C  81 83 00 00 */	lwz r12, 0(r3)
/* 80193250 00190190  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193254 00190194  7D 89 03 A6 */	mtctr r12
/* 80193258 00190198  4E 80 04 21 */	bctrl 
/* 8019325C 0019019C  3A D6 00 01 */	addi r22, r22, 1
/* 80193260 001901A0  2C 16 00 05 */	cmpwi r22, 5
/* 80193264 001901A4  3B BD 00 04 */	addi r29, r29, 4
/* 80193268 001901A8  3B 9C 00 08 */	addi r28, r28, 8
/* 8019326C 001901AC  41 80 FF 44 */	blt lbl_801931B0
/* 80193270 001901B0  3A C0 00 00 */	li r22, 0
/* 80193274 001901B4  3B A0 00 00 */	li r29, 0
/* 80193278 001901B8  3B 7F 00 A0 */	addi r27, r31, 0xa0
/* 8019327C 001901BC  3B 80 00 00 */	li r28, 0
lbl_80193280:
/* 80193280 001901C0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80193284 001901C4  7C DB EA 14 */	add r6, r27, r29
/* 80193288 001901C8  80 A6 00 00 */	lwz r5, 0(r6)
/* 8019328C 001901CC  80 C6 00 04 */	lwz r6, 4(r6)
/* 80193290 001901D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80193294 001901D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80193298 001901D8  7D 89 03 A6 */	mtctr r12
/* 8019329C 001901DC  4E 80 04 21 */	bctrl 
/* 801932A0 001901E0  9B 83 00 B0 */	stb r28, 0xb0(r3)
/* 801932A4 001901E4  3A D6 00 01 */	addi r22, r22, 1
/* 801932A8 001901E8  2C 16 00 05 */	cmpwi r22, 5
/* 801932AC 001901EC  3B BD 00 08 */	addi r29, r29, 8
/* 801932B0 001901F0  41 80 FF D0 */	blt lbl_80193280
/* 801932B4 001901F4  3A C0 00 00 */	li r22, 0
/* 801932B8 001901F8  3B A0 00 00 */	li r29, 0
/* 801932BC 001901FC  3B 9F 00 50 */	addi r28, r31, 0x50
/* 801932C0 00190200  C3 E2 A0 00 */	lfs f31, lbl_80453A00-_SDA2_BASE_(r2)
lbl_801932C4:
/* 801932C4 00190204  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801932C8 00190208  7C DC EA 14 */	add r6, r28, r29
/* 801932CC 0019020C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801932D0 00190210  80 C6 00 04 */	lwz r6, 4(r6)
/* 801932D4 00190214  81 83 00 00 */	lwz r12, 0(r3)
/* 801932D8 00190218  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801932DC 0019021C  7D 89 03 A6 */	mtctr r12
/* 801932E0 00190220  4E 80 04 21 */	bctrl 
/* 801932E4 00190224  7C 77 1B 78 */	mr r23, r3
/* 801932E8 00190228  4B E8 17 09 */	bl mDoExt_getMesgFont
/* 801932EC 0019022C  7C 64 1B 78 */	mr r4, r3
/* 801932F0 00190230  7E E3 BB 78 */	mr r3, r23
/* 801932F4 00190234  81 97 00 00 */	lwz r12, 0(r23)
/* 801932F8 00190238  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801932FC 0019023C  7D 89 03 A6 */	mtctr r12
/* 80193300 00190240  4E 80 04 21 */	bctrl 
/* 80193304 00190244  D3 F7 01 14 */	stfs f31, 0x114(r23)
/* 80193308 00190248  2C 16 00 02 */	cmpwi r22, 2
/* 8019330C 0019024C  40 80 00 50 */	bge lbl_8019335C
/* 80193310 00190250  7E E3 BB 78 */	mr r3, r23
/* 80193314 00190254  38 80 01 00 */	li r4, 0x100
/* 80193318 00190258  3C A0 80 39 */	lis r5, lbl_803949D8@ha
/* 8019331C 0019025C  38 A5 49 D8 */	addi r5, r5, lbl_803949D8@l
/* 80193320 00190260  38 A5 00 17 */	addi r5, r5, 0x17
/* 80193324 00190264  4C C6 31 82 */	crclr 6
/* 80193328 00190268  48 16 D4 25 */	bl J2DTextBox_NS_setString_X1_
/* 8019332C 0019026C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80193330 00190270  38 80 05 58 */	li r4, 0x558
/* 80193334 00190274  7E E5 BB 78 */	mr r5, r23
/* 80193338 00190278  38 C0 00 00 */	li r6, 0
/* 8019333C 0019027C  38 E0 00 00 */	li r7, 0
/* 80193340 00190280  39 00 00 00 */	li r8, 0
/* 80193344 00190284  39 20 00 00 */	li r9, 0
/* 80193348 00190288  81 83 00 00 */	lwz r12, 0(r3)
/* 8019334C 0019028C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193350 00190290  7D 89 03 A6 */	mtctr r12
/* 80193354 00190294  4E 80 04 21 */	bctrl 
/* 80193358 00190298  48 00 01 48 */	b lbl_801934A0
lbl_8019335C:
/* 8019335C 0019029C  2C 16 00 04 */	cmpwi r22, 4
/* 80193360 001902A0  40 80 00 50 */	bge lbl_801933B0
/* 80193364 001902A4  7E E3 BB 78 */	mr r3, r23
/* 80193368 001902A8  38 80 01 00 */	li r4, 0x100
/* 8019336C 001902AC  3C A0 80 39 */	lis r5, lbl_803949D8@ha
/* 80193370 001902B0  38 A5 49 D8 */	addi r5, r5, lbl_803949D8@l
/* 80193374 001902B4  38 A5 00 17 */	addi r5, r5, 0x17
/* 80193378 001902B8  4C C6 31 82 */	crclr 6
/* 8019337C 001902BC  48 16 D3 D1 */	bl J2DTextBox_NS_setString_X1_
/* 80193380 001902C0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80193384 001902C4  38 80 05 57 */	li r4, 0x557
/* 80193388 001902C8  7E E5 BB 78 */	mr r5, r23
/* 8019338C 001902CC  38 C0 00 00 */	li r6, 0
/* 80193390 001902D0  38 E0 00 00 */	li r7, 0
/* 80193394 001902D4  39 00 00 00 */	li r8, 0
/* 80193398 001902D8  39 20 00 00 */	li r9, 0
/* 8019339C 001902DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801933A0 001902E0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801933A4 001902E4  7D 89 03 A6 */	mtctr r12
/* 801933A8 001902E8  4E 80 04 21 */	bctrl 
/* 801933AC 001902EC  48 00 00 F4 */	b lbl_801934A0
lbl_801933B0:
/* 801933B0 001902F0  2C 16 00 06 */	cmpwi r22, 6
/* 801933B4 001902F4  40 80 00 50 */	bge lbl_80193404
/* 801933B8 001902F8  7E E3 BB 78 */	mr r3, r23
/* 801933BC 001902FC  38 80 01 00 */	li r4, 0x100
/* 801933C0 00190300  3C A0 80 39 */	lis r5, lbl_803949D8@ha
/* 801933C4 00190304  38 A5 49 D8 */	addi r5, r5, lbl_803949D8@l
/* 801933C8 00190308  38 A5 00 17 */	addi r5, r5, 0x17
/* 801933CC 0019030C  4C C6 31 82 */	crclr 6
/* 801933D0 00190310  48 16 D3 7D */	bl J2DTextBox_NS_setString_X1_
/* 801933D4 00190314  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801933D8 00190318  38 80 05 59 */	li r4, 0x559
/* 801933DC 0019031C  7E E5 BB 78 */	mr r5, r23
/* 801933E0 00190320  38 C0 00 00 */	li r6, 0
/* 801933E4 00190324  38 E0 00 00 */	li r7, 0
/* 801933E8 00190328  39 00 00 00 */	li r8, 0
/* 801933EC 0019032C  39 20 00 00 */	li r9, 0
/* 801933F0 00190330  81 83 00 00 */	lwz r12, 0(r3)
/* 801933F4 00190334  81 8C 00 08 */	lwz r12, 8(r12)
/* 801933F8 00190338  7D 89 03 A6 */	mtctr r12
/* 801933FC 0019033C  4E 80 04 21 */	bctrl 
/* 80193400 00190340  48 00 00 A0 */	b lbl_801934A0
lbl_80193404:
/* 80193404 00190344  2C 16 00 08 */	cmpwi r22, 8
/* 80193408 00190348  40 80 00 50 */	bge lbl_80193458
/* 8019340C 0019034C  7E E3 BB 78 */	mr r3, r23
/* 80193410 00190350  38 80 01 00 */	li r4, 0x100
/* 80193414 00190354  3C A0 80 39 */	lis r5, lbl_803949D8@ha
/* 80193418 00190358  38 A5 49 D8 */	addi r5, r5, lbl_803949D8@l
/* 8019341C 0019035C  38 A5 00 17 */	addi r5, r5, 0x17
/* 80193420 00190360  4C C6 31 82 */	crclr 6
/* 80193424 00190364  48 16 D3 29 */	bl J2DTextBox_NS_setString_X1_
/* 80193428 00190368  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8019342C 0019036C  38 80 05 5A */	li r4, 0x55a
/* 80193430 00190370  7E E5 BB 78 */	mr r5, r23
/* 80193434 00190374  38 C0 00 00 */	li r6, 0
/* 80193438 00190378  38 E0 00 00 */	li r7, 0
/* 8019343C 0019037C  39 00 00 00 */	li r8, 0
/* 80193440 00190380  39 20 00 00 */	li r9, 0
/* 80193444 00190384  81 83 00 00 */	lwz r12, 0(r3)
/* 80193448 00190388  81 8C 00 08 */	lwz r12, 8(r12)
/* 8019344C 0019038C  7D 89 03 A6 */	mtctr r12
/* 80193450 00190390  4E 80 04 21 */	bctrl 
/* 80193454 00190394  48 00 00 4C */	b lbl_801934A0
lbl_80193458:
/* 80193458 00190398  7E E3 BB 78 */	mr r3, r23
/* 8019345C 0019039C  38 80 01 00 */	li r4, 0x100
/* 80193460 001903A0  3C A0 80 39 */	lis r5, lbl_803949D8@ha
/* 80193464 001903A4  38 A5 49 D8 */	addi r5, r5, lbl_803949D8@l
/* 80193468 001903A8  38 A5 00 17 */	addi r5, r5, 0x17
/* 8019346C 001903AC  4C C6 31 82 */	crclr 6
/* 80193470 001903B0  48 16 D2 DD */	bl J2DTextBox_NS_setString_X1_
/* 80193474 001903B4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80193478 001903B8  38 80 05 5B */	li r4, 0x55b
/* 8019347C 001903BC  7E E5 BB 78 */	mr r5, r23
/* 80193480 001903C0  38 C0 00 00 */	li r6, 0
/* 80193484 001903C4  38 E0 00 00 */	li r7, 0
/* 80193488 001903C8  39 00 00 00 */	li r8, 0
/* 8019348C 001903CC  39 20 00 00 */	li r9, 0
/* 80193490 001903D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80193494 001903D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193498 001903D8  7D 89 03 A6 */	mtctr r12
/* 8019349C 001903DC  4E 80 04 21 */	bctrl 
lbl_801934A0:
/* 801934A0 001903E0  3A D6 00 01 */	addi r22, r22, 1
/* 801934A4 001903E4  2C 16 00 0A */	cmpwi r22, 0xa
/* 801934A8 001903E8  3B BD 00 08 */	addi r29, r29, 8
/* 801934AC 001903EC  41 80 FE 18 */	blt lbl_801932C4
/* 801934B0 001903F0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801934B4 001903F4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801934B8 001903F8  39 61 00 50 */	addi r11, r1, 0x50
/* 801934BC 001903FC  48 1C ED 51 */	bl func_8036220C
/* 801934C0 00190400  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801934C4 00190404  7C 08 03 A6 */	mtlr r0
/* 801934C8 00190408  38 21 00 60 */	addi r1, r1, 0x60
/* 801934CC 0019040C  4E 80 00 20 */	blr 

.global dBrightCheck_c_NS__move
dBrightCheck_c_NS__move:
/* 801934D0 00190410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801934D4 00190414  7C 08 02 A6 */	mflr r0
/* 801934D8 00190418  90 01 00 14 */	stw r0, 0x14(r1)
/* 801934DC 0019041C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 801934E0 00190420  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801934E4 00190424  3C 80 80 3C */	lis r4, lbl_803BB5D4@ha
/* 801934E8 00190428  38 04 B5 D4 */	addi r0, r4, lbl_803BB5D4@l
/* 801934EC 0019042C  7D 80 2A 14 */	add r12, r0, r5
/* 801934F0 00190430  48 1C EB 95 */	bl func_80362084
/* 801934F4 00190434  60 00 00 00 */	nop 
/* 801934F8 00190438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801934FC 0019043C  7C 08 03 A6 */	mtlr r0
/* 80193500 00190440  38 21 00 10 */	addi r1, r1, 0x10
/* 80193504 00190444  4E 80 00 20 */	blr 
/* 80193508 00190448  4E 80 00 20 */	blr 
/* 8019350C 0019044C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80193510 00190450  7C 08 02 A6 */	mflr r0
/* 80193514 00190454  90 01 00 24 */	stw r0, 0x24(r1)
/* 80193518 00190458  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8019351C 0019045C  7C 7F 1B 78 */	mr r31, r3
/* 80193520 00190460  3C 60 80 3E */	lis r3, m_cpadInfo@ha
/* 80193524 00190464  38 63 D2 E8 */	addi r3, r3, m_cpadInfo@l
/* 80193528 00190468  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8019352C 0019046C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80193530 00190470  40 82 00 0C */	bne lbl_8019353C
/* 80193534 00190474  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80193538 00190478  41 82 00 48 */	beq lbl_80193580
lbl_8019353C:
/* 8019353C 0019047C  38 00 00 01 */	li r0, 1
/* 80193540 00190480  90 01 00 08 */	stw r0, 8(r1)
/* 80193544 00190484  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80193548 00190488  38 81 00 08 */	addi r4, r1, 8
/* 8019354C 0019048C  38 A0 00 00 */	li r5, 0
/* 80193550 00190490  38 C0 00 00 */	li r6, 0
/* 80193554 00190494  38 E0 00 00 */	li r7, 0
/* 80193558 00190498  C0 22 A0 04 */	lfs f1, lbl_80453A04-_SDA2_BASE_(r2)
/* 8019355C 0019049C  FC 40 08 90 */	fmr f2, f1
/* 80193560 001904A0  C0 62 A0 08 */	lfs f3, lbl_80453A08-_SDA2_BASE_(r2)
/* 80193564 001904A4  FC 80 18 90 */	fmr f4, f3
/* 80193568 001904A8  39 00 00 00 */	li r8, 0
/* 8019356C 001904AC  48 11 84 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80193570 001904B0  38 00 00 01 */	li r0, 1
/* 80193574 001904B4  98 1F 00 19 */	stb r0, 0x19(r31)
/* 80193578 001904B8  38 00 00 00 */	li r0, 0
/* 8019357C 001904BC  98 1F 00 18 */	stb r0, 0x18(r31)
lbl_80193580:
/* 80193580 001904C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80193584 001904C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80193588 001904C8  7C 08 03 A6 */	mtlr r0
/* 8019358C 001904CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80193590 001904D0  4E 80 00 20 */	blr 

.global dBrightCheck_c_NS__draw
dBrightCheck_c_NS__draw:
/* 80193594 001904D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80193598 001904D8  7C 08 02 A6 */	mflr r0
/* 8019359C 001904DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801935A0 001904E0  7C 66 1B 78 */	mr r6, r3
/* 801935A4 001904E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801935A8 001904E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801935AC 001904EC  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801935B0 001904F0  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801935B4 001904F4  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801935B8 001904F8  38 C6 00 08 */	addi r6, r6, 8
/* 801935BC 001904FC  4B EC 31 D9 */	bl dDlst_list_c_NS_set
/* 801935C0 00190500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801935C4 00190504  7C 08 03 A6 */	mtlr r0
/* 801935C8 00190508  38 21 00 10 */	addi r1, r1, 0x10
/* 801935CC 0019050C  4E 80 00 20 */	blr 
/* 801935D0 00190510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801935D4 00190514  7C 08 02 A6 */	mflr r0
/* 801935D8 00190518  90 01 00 14 */	stw r0, 0x14(r1)
/* 801935DC 0019051C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801935E0 00190520  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 801935E4 00190524  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 801935E8 00190528  80 63 00 04 */	lwz r3, 4(r3)
/* 801935EC 0019052C  C0 22 A0 00 */	lfs f1, lbl_80453A00-_SDA2_BASE_(r2)
/* 801935F0 00190530  FC 40 08 90 */	fmr f2, f1
/* 801935F4 00190534  48 16 58 E1 */	bl J2DScreen_NS_draw
/* 801935F8 00190538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801935FC 0019053C  7C 08 03 A6 */	mtlr r0
/* 80193600 00190540  38 21 00 10 */	addi r1, r1, 0x10
/* 80193604 00190544  4E 80 00 20 */	blr 
/* 80193608 00190548  3C 60 80 3C */	lis r3, lbl_803BB5B0@ha
/* 8019360C 0019054C  38 A3 B5 B0 */	addi r5, r3, lbl_803BB5B0@l
/* 80193610 00190550  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80193614 00190554  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80193618 00190558  90 65 00 24 */	stw r3, 0x24(r5)
/* 8019361C 0019055C  90 05 00 28 */	stw r0, 0x28(r5)
/* 80193620 00190560  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80193624 00190564  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80193628 00190568  38 85 00 24 */	addi r4, r5, 0x24
/* 8019362C 0019056C  80 65 00 18 */	lwz r3, 0x18(r5)
/* 80193630 00190570  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 80193634 00190574  90 64 00 0C */	stw r3, 0xc(r4)
/* 80193638 00190578  90 04 00 10 */	stw r0, 0x10(r4)
/* 8019363C 0019057C  80 05 00 20 */	lwz r0, 0x20(r5)
/* 80193640 00190580  90 04 00 14 */	stw r0, 0x14(r4)
/* 80193644 00190584  4E 80 00 20 */	blr 
/* 80193648 00190588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019364C 0019058C  7C 08 02 A6 */	mflr r0
/* 80193650 00190590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80193654 00190594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80193658 00190598  7C 7F 1B 79 */	or. r31, r3, r3
/* 8019365C 0019059C  41 82 00 1C */	beq lbl_80193678
/* 80193660 001905A0  3C A0 80 3C */	lis r5, lbl_803BB5EC@ha
/* 80193664 001905A4  38 05 B5 EC */	addi r0, r5, lbl_803BB5EC@l
/* 80193668 001905A8  90 1F 00 00 */	stw r0, 0(r31)
/* 8019366C 001905AC  7C 80 07 35 */	extsh. r0, r4
/* 80193670 001905B0  40 81 00 08 */	ble lbl_80193678
/* 80193674 001905B4  48 13 B6 C9 */	bl __dl__FPv
lbl_80193678:
/* 80193678 001905B8  7F E3 FB 78 */	mr r3, r31
/* 8019367C 001905BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80193680 001905C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80193684 001905C4  7C 08 03 A6 */	mtlr r0
/* 80193688 001905C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019368C 001905CC  4E 80 00 20 */	blr 

