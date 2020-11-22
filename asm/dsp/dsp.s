.include "macros.inc"

.section .text, "ax" # 80352430


.global DSPCheckMailToDSP
DSPCheckMailToDSP:
/* 80352430 0034F370  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 80352434 0034F374  A0 03 50 00 */	lhz r0, 0xCC005000@l(r3)
/* 80352438 0034F378  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 8035243C 0034F37C  4E 80 00 20 */	blr 

.global DSPCheckMailFromDSP
DSPCheckMailFromDSP:
/* 80352440 0034F380  3C 60 CC 00 */	lis r3, 0xCC005004@ha
/* 80352444 0034F384  A0 03 50 04 */	lhz r0, 0xCC005004@l(r3)
/* 80352448 0034F388  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 8035244C 0034F38C  4E 80 00 20 */	blr 

.global DSPReadMailFromDSP
DSPReadMailFromDSP:
/* 80352450 0034F390  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 80352454 0034F394  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 80352458 0034F398  A0 03 00 04 */	lhz r0, 4(r3)
/* 8035245C 0034F39C  A0 63 00 06 */	lhz r3, 6(r3)
/* 80352460 0034F3A0  50 03 80 1E */	rlwimi r3, r0, 0x10, 0, 0xf
/* 80352464 0034F3A4  4E 80 00 20 */	blr 

.global DSPSendMailToDSP
DSPSendMailToDSP:
/* 80352468 0034F3A8  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 8035246C 0034F3AC  54 60 84 3E */	srwi r0, r3, 0x10
/* 80352470 0034F3B0  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
/* 80352474 0034F3B4  B0 64 50 02 */	sth r3, 0x5002(r4)
/* 80352478 0034F3B8  4E 80 00 20 */	blr 

.global DSPAssertInt
DSPAssertInt:
/* 8035247C 0034F3BC  7C 08 02 A6 */	mflr r0
/* 80352480 0034F3C0  90 01 00 04 */	stw r0, 4(r1)
/* 80352484 0034F3C4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80352488 0034F3C8  4B FE B2 6D */	bl __RAS_OSDisableInterrupts_begin 
/* 8035248C 0034F3CC  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 80352490 0034F3D0  38 84 50 00 */	addi r4, r4, 0xCC005000@l
/* 80352494 0034F3D4  A0 A4 00 0A */	lhz r5, 0xa(r4)
/* 80352498 0034F3D8  38 00 FF 57 */	li r0, -169
/* 8035249C 0034F3DC  7C A0 00 38 */	and r0, r5, r0
/* 803524A0 0034F3E0  60 00 00 02 */	ori r0, r0, 2
/* 803524A4 0034F3E4  B0 04 00 0A */	sth r0, 0xa(r4)
/* 803524A8 0034F3E8  4B FE B2 75 */	bl OSRestoreInterrupts
/* 803524AC 0034F3EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803524B0 0034F3F0  38 21 00 08 */	addi r1, r1, 8
/* 803524B4 0034F3F4  7C 08 03 A6 */	mtlr r0
/* 803524B8 0034F3F8  4E 80 00 20 */	blr 

.global DSPInit
DSPInit:
/* 803524BC 0034F3FC  7C 08 02 A6 */	mflr r0
/* 803524C0 0034F400  3C 60 80 3D */	lis r3, lbl_803D1C78@ha
/* 803524C4 0034F404  90 01 00 04 */	stw r0, 4(r1)
/* 803524C8 0034F408  38 A3 1C 78 */	addi r5, r3, lbl_803D1C78@l
/* 803524CC 0034F40C  4C C6 31 82 */	crclr 6
/* 803524D0 0034F410  38 65 00 48 */	addi r3, r5, 0x48
/* 803524D4 0034F414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803524D8 0034F418  38 85 00 68 */	addi r4, r5, 0x68
/* 803524DC 0034F41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803524E0 0034F420  38 A5 00 74 */	addi r5, r5, 0x74