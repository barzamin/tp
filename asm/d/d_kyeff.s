.include "macros.inc"

.section .text, "ax" # 801add38


/* 801ADD38 001AAC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADD3C 001AAC7C  7C 08 02 A6 */	mflr r0
/* 801ADD40 001AAC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADD44 001AAC84  4B EA C4 31 */	bl dKyw_wether_draw
/* 801ADD48 001AAC88  38 60 00 01 */	li r3, 1
/* 801ADD4C 001AAC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADD50 001AAC90  7C 08 03 A6 */	mtlr r0
/* 801ADD54 001AAC94  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADD58 001AAC98  4E 80 00 20 */	blr 

.global dKyeff_c_NS_execute
dKyeff_c_NS_execute:
/* 801ADD5C 001AAC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADD60 001AACA0  7C 08 02 A6 */	mflr r0
/* 801ADD64 001AACA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADD68 001AACA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ADD6C 001AACAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ADD70 001AACB0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801ADD74 001AACB4  3C 80 80 39 */	lis r4, lbl_80394F38@ha
/* 801ADD78 001AACB8  38 84 4F 38 */	addi r4, r4, lbl_80394F38@l
/* 801ADD7C 001AACBC  48 1B AC 19 */	bl strcmp
/* 801ADD80 001AACC0  2C 03 00 00 */	cmpwi r3, 0
/* 801ADD84 001AACC4  41 82 00 08 */	beq lbl_801ADD8C
/* 801ADD88 001AACC8  4B EA A5 71 */	bl dKyw_wether_move
lbl_801ADD8C:
/* 801ADD8C 001AACCC  4B EA C3 2D */	bl dKyw_wether_move_draw
/* 801ADD90 001AACD0  4B FE FF BD */	bl dKy_FiveSenses_fullthrottle_dark
/* 801ADD94 001AACD4  3C 60 80 43 */	lis r3, lbl_8042DD70@ha
/* 801ADD98 001AACD8  38 63 DD 70 */	addi r3, r3, lbl_8042DD70@l
/* 801ADD9C 001AACDC  48 11 89 15 */	bl Z2EnvSeMgr_NS_framework
/* 801ADDA0 001AACE0  38 60 00 01 */	li r3, 1
/* 801ADDA4 001AACE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADDA8 001AACE8  7C 08 03 A6 */	mtlr r0
/* 801ADDAC 001AACEC  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADDB0 001AACF0  4E 80 00 20 */	blr 
/* 801ADDB4 001AACF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADDB8 001AACF8  7C 08 02 A6 */	mflr r0
/* 801ADDBC 001AACFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADDC0 001AAD00  4B FF FF 9D */	bl dKyeff_c_NS_execute
/* 801ADDC4 001AAD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADDC8 001AAD08  7C 08 03 A6 */	mtlr r0
/* 801ADDCC 001AAD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADDD0 001AAD10  4E 80 00 20 */	blr 
/* 801ADDD4 001AAD14  38 60 00 01 */	li r3, 1
/* 801ADDD8 001AAD18  4E 80 00 20 */	blr 
/* 801ADDDC 001AAD1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADDE0 001AAD20  7C 08 02 A6 */	mflr r0
/* 801ADDE4 001AAD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADDE8 001AAD28  4B EA 9C 1D */	bl dKyw_wether_delete
/* 801ADDEC 001AAD2C  38 60 00 01 */	li r3, 1
/* 801ADDF0 001AAD30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADDF4 001AAD34  7C 08 03 A6 */	mtlr r0
/* 801ADDF8 001AAD38  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADDFC 001AAD3C  4E 80 00 20 */	blr 
/* 801ADE00 001AAD40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801ADE04 001AAD44  7C 08 02 A6 */	mflr r0
/* 801ADE08 001AAD48  90 01 00 44 */	stw r0, 0x44(r1)
/* 801ADE0C 001AAD4C  4B EA 96 D5 */	bl dKyw_wether_init
/* 801ADE10 001AAD50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ADE14 001AAD54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ADE18 001AAD58  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801ADE1C 001AAD5C  3C 80 80 39 */	lis r4, lbl_80394F38@ha
/* 801ADE20 001AAD60  38 84 4F 38 */	addi r4, r4, lbl_80394F38@l
/* 801ADE24 001AAD64  48 1B AB 71 */	bl strcmp
/* 801ADE28 001AAD68  2C 03 00 00 */	cmpwi r3, 0
/* 801ADE2C 001AAD6C  40 82 00 60 */	bne lbl_801ADE8C
/* 801ADE30 001AAD70  48 19 48 CD */	bl OSGetTime
/* 801ADE34 001AAD74  38 A1 00 08 */	addi r5, r1, 8
/* 801ADE38 001AAD78  48 19 4B 3D */	bl OSTicksToCalendarTime
/* 801ADE3C 001AAD7C  C0 02 A4 5C */	lfs f0, lbl_80453E5C-_SDA2_BASE_(r2)
/* 801ADE40 001AAD80  3C 60 80 43 */	lis r3, lbl_8042CA54@ha
/* 801ADE44 001AAD84  38 63 CA 54 */	addi r3, r3, lbl_8042CA54@l
/* 801ADE48 001AAD88  D0 03 0E 48 */	stfs f0, 0xe48(r3)
/* 801ADE4C 001AAD8C  C0 02 A4 58 */	lfs f0, lbl_80453E58-_SDA2_BASE_(r2)
/* 801ADE50 001AAD90  D0 03 0E 4C */	stfs f0, 0xe4c(r3)
/* 801ADE54 001AAD94  D0 03 0E 50 */	stfs f0, 0xe50(r3)
/* 801ADE58 001AAD98  C0 02 A4 68 */	lfs f0, lbl_80453E68-_SDA2_BASE_(r2)
/* 801ADE5C 001AAD9C  D0 03 0E 58 */	stfs f0, 0xe58(r3)
/* 801ADE60 001AADA0  C0 42 A4 6C */	lfs f2, lbl_80453E6C-_SDA2_BASE_(r2)
/* 801ADE64 001AADA4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801ADE68 001AADA8  C8 22 A4 60 */	lfd f1, lbl_80453E60-_SDA2_BASE_(r2)
/* 801ADE6C 001AADAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801ADE70 001AADB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801ADE74 001AADB4  3C 00 43 30 */	lis r0, 0x4330
/* 801ADE78 001AADB8  90 01 00 30 */	stw r0, 0x30(r1)
/* 801ADE7C 001AADBC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801ADE80 001AADC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801ADE84 001AADC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801ADE88 001AADC8  D0 03 12 44 */	stfs f0, 0x1244(r3)
lbl_801ADE8C:
/* 801ADE8C 001AADCC  38 60 00 04 */	li r3, 4
/* 801ADE90 001AADD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801ADE94 001AADD4  7C 08 03 A6 */	mtlr r0
/* 801ADE98 001AADD8  38 21 00 40 */	addi r1, r1, 0x40
/* 801ADE9C 001AADDC  4E 80 00 20 */	blr 
