.include "macros.inc"

.section .text, "ax" # 8033e994


.global OSInitMessageQueue
OSInitMessageQueue:
/* 8033E994 0033B8D4  7C 08 02 A6 */	mflr r0
/* 8033E998 0033B8D8  90 01 00 04 */	stw r0, 4(r1)
/* 8033E99C 0033B8DC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033E9A0 0033B8E0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033E9A4 0033B8E4  3B E5 00 00 */	addi r31, r5, 0
/* 8033E9A8 0033B8E8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033E9AC 0033B8EC  3B C4 00 00 */	addi r30, r4, 0
/* 8033E9B0 0033B8F0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033E9B4 0033B8F4  3B A3 00 00 */	addi r29, r3, 0
/* 8033E9B8 0033B8F8  48 00 22 BD */	bl OSInitThreadQueue
/* 8033E9BC 0033B8FC  38 7D 00 08 */	addi r3, r29, 8
/* 8033E9C0 0033B900  48 00 22 B5 */	bl OSInitThreadQueue
/* 8033E9C4 0033B904  93 DD 00 10 */	stw r30, 0x10(r29)
/* 8033E9C8 0033B908  38 00 00 00 */	li r0, 0
/* 8033E9CC 0033B90C  93 FD 00 14 */	stw r31, 0x14(r29)
/* 8033E9D0 0033B910  90 1D 00 18 */	stw r0, 0x18(r29)
/* 8033E9D4 0033B914  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8033E9D8 0033B918  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033E9DC 0033B91C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033E9E0 0033B920  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033E9E4 0033B924  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033E9E8 0033B928  38 21 00 28 */	addi r1, r1, 0x28
/* 8033E9EC 0033B92C  7C 08 03 A6 */	mtlr r0
/* 8033E9F0 0033B930  4E 80 00 20 */	blr 

.global OSSendMessage
OSSendMessage:
/* 8033E9F4 0033B934  7C 08 02 A6 */	mflr r0
/* 8033E9F8 0033B938  90 01 00 04 */	stw r0, 4(r1)
/* 8033E9FC 0033B93C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033EA00 0033B940  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033EA04 0033B944  3B E5 00 00 */	addi r31, r5, 0
/* 8033EA08 0033B948  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033EA0C 0033B94C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033EA10 0033B950  3B A4 00 00 */	addi r29, r4, 0
/* 8033EA14 0033B954  93 81 00 18 */	stw r28, 0x18(r1)
/* 8033EA18 0033B958  3B 83 00 00 */	addi r28, r3, 0
/* 8033EA1C 0033B95C  4B FF EC D9 */	bl __RAS_OSDisableInterrupts_begin 
/* 8033EA20 0033B960  3B C3 00 00 */	addi r30, r3, 0
/* 8033EA24 0033B964  57 FF 07 FE */	clrlwi r31, r31, 0x1f
/* 8033EA28 0033B968  48 00 00 24 */	b lbl_8033EA4C
lbl_8033EA2C:
/* 8033EA2C 0033B96C  2C 1F 00 00 */	cmpwi r31, 0
/* 8033EA30 0033B970  40 82 00 14 */	bne lbl_8033EA44
/* 8033EA34 0033B974  7F C3 F3 78 */	mr r3, r30
/* 8033EA38 0033B978  4B FF EC E5 */	bl OSRestoreInterrupts
/* 8033EA3C 0033B97C  38 60 00 00 */	li r3, 0
/* 8033EA40 0033B980  48 00 00 5C */	b lbl_8033EA9C
lbl_8033EA44:
/* 8033EA44 0033B984  7F 83 E3 78 */	mr r3, r28
/* 8033EA48 0033B988  48 00 31 65 */	bl OSSleepThread
lbl_8033EA4C:
/* 8033EA4C 0033B98C  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 8033EA50 0033B990  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8033EA54 0033B994  7C 06 20 00 */	cmpw r6, r4
/* 8033EA58 0033B998  40 81 FF D4 */	ble lbl_8033EA2C
/* 8033EA5C 0033B99C  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8033EA60 0033B9A0  38 7C 00 08 */	addi r3, r28, 8
/* 8033EA64 0033B9A4  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8033EA68 0033B9A8  7C 80 22 14 */	add r4, r0, r4
/* 8033EA6C 0033B9AC  7C 04 33 D6 */	divw r0, r4, r6
/* 8033EA70 0033B9B0  7C 00 31 D6 */	mullw r0, r0, r6
/* 8033EA74 0033B9B4  7C 00 20 50 */	subf r0, r0, r4
/* 8033EA78 0033B9B8  54 00 10 3A */	slwi r0, r0, 2
/* 8033EA7C 0033B9BC  7F A5 01 2E */	stwx r29, r5, r0
/* 8033EA80 0033B9C0  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8033EA84 0033B9C4  38 04 00 01 */	addi r0, r4, 1
/* 8033EA88 0033B9C8  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 8033EA8C 0033B9CC  48 00 32 0D */	bl OSWakeupThread
/* 8033EA90 0033B9D0  7F C3 F3 78 */	mr r3, r30
/* 8033EA94 0033B9D4  4B FF EC 89 */	bl OSRestoreInterrupts
/* 8033EA98 0033B9D8  38 60 00 01 */	li r3, 1
lbl_8033EA9C:
/* 8033EA9C 0033B9DC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033EAA0 0033B9E0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033EAA4 0033B9E4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033EAA8 0033B9E8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033EAAC 0033B9EC  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8033EAB0 0033B9F0  38 21 00 28 */	addi r1, r1, 0x28
/* 8033EAB4 0033B9F4  7C 08 03 A6 */	mtlr r0
/* 8033EAB8 0033B9F8  4E 80 00 20 */	blr 

.global OSReceiveMessage
OSReceiveMessage:
/* 8033EABC 0033B9FC  7C 08 02 A6 */	mflr r0
/* 8033EAC0 0033BA00  90 01 00 04 */	stw r0, 4(r1)
/* 8033EAC4 0033BA04  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033EAC8 0033BA08  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033EACC 0033BA0C  3B E3 00 00 */	addi r31, r3, 0
/* 8033EAD0 0033BA10  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033EAD4 0033BA14  3B C5 00 00 */	addi r30, r5, 0
/* 8033EAD8 0033BA18  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033EADC 0033BA1C  93 81 00 18 */	stw r28, 0x18(r1)
/* 8033EAE0 0033BA20  3B 84 00 00 */	addi r28, r4, 0
/* 8033EAE4 0033BA24  4B FF EC 11 */	bl __RAS_OSDisableInterrupts_begin 
/* 8033EAE8 0033BA28  3B A3 00 00 */	addi r29, r3, 0
/* 8033EAEC 0033BA2C  57 DE 07 FE */	clrlwi r30, r30, 0x1f
/* 8033EAF0 0033BA30  48 00 00 24 */	b lbl_8033EB14
lbl_8033EAF4:
/* 8033EAF4 0033BA34  2C 1E 00 00 */	cmpwi r30, 0
/* 8033EAF8 0033BA38  40 82 00 14 */	bne lbl_8033EB0C
/* 8033EAFC 0033BA3C  7F A3 EB 78 */	mr r3, r29
/* 8033EB00 0033BA40  4B FF EC 1D */	bl OSRestoreInterrupts
/* 8033EB04 0033BA44  38 60 00 00 */	li r3, 0
/* 8033EB08 0033BA48  48 00 00 70 */	b lbl_8033EB78
lbl_8033EB0C:
/* 8033EB0C 0033BA4C  38 7F 00 08 */	addi r3, r31, 8
/* 8033EB10 0033BA50  48 00 30 9D */	bl OSSleepThread
lbl_8033EB14:
/* 8033EB14 0033BA54  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8033EB18 0033BA58  2C 00 00 00 */	cmpwi r0, 0
/* 8033EB1C 0033BA5C  41 82 FF D8 */	beq lbl_8033EAF4
/* 8033EB20 0033BA60  28 1C 00 00 */	cmplwi r28, 0
/* 8033EB24 0033BA64  41 82 00 18 */	beq lbl_8033EB3C
/* 8033EB28 0033BA68  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8033EB2C 0033BA6C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8033EB30 0033BA70  54 00 10 3A */	slwi r0, r0, 2
/* 8033EB34 0033BA74  7C 03 00 2E */	lwzx r0, r3, r0
/* 8033EB38 0033BA78  90 1C 00 00 */	stw r0, 0(r28)
lbl_8033EB3C:
/* 8033EB3C 0033BA7C  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8033EB40 0033BA80  7F E3 FB 78 */	mr r3, r31
/* 8033EB44 0033BA84  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8033EB48 0033BA88  38 A5 00 01 */	addi r5, r5, 1
/* 8033EB4C 0033BA8C  7C 05 23 D6 */	divw r0, r5, r4
/* 8033EB50 0033BA90  7C 00 21 D6 */	mullw r0, r0, r4
/* 8033EB54 0033BA94  7C 00 28 50 */	subf r0, r0, r5
/* 8033EB58 0033BA98  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8033EB5C 0033BA9C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8033EB60 0033BAA0  38 04 FF FF */	addi r0, r4, -1
/* 8033EB64 0033BAA4  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8033EB68 0033BAA8  48 00 31 31 */	bl OSWakeupThread
/* 8033EB6C 0033BAAC  7F A3 EB 78 */	mr r3, r29
/* 8033EB70 0033BAB0  4B FF EB AD */	bl OSRestoreInterrupts
/* 8033EB74 0033BAB4  38 60 00 01 */	li r3, 1
lbl_8033EB78:
/* 8033EB78 0033BAB8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033EB7C 0033BABC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033EB80 0033BAC0  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033EB84 0033BAC4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033EB88 0033BAC8  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8033EB8C 0033BACC  38 21 00 28 */	addi r1, r1, 0x28
/* 8033EB90 0033BAD0  7C 08 03 A6 */	mtlr r0
/* 8033EB94 0033BAD4  4E 80 00 20 */	blr 

.global OSJamMessage
OSJamMessage:
/* 8033EB98 0033BAD8  7C 08 02 A6 */	mflr r0
/* 8033EB9C 0033BADC  90 01 00 04 */	stw r0, 4(r1)
/* 8033EBA0 0033BAE0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033EBA4 0033BAE4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033EBA8 0033BAE8  3B E3 00 00 */	addi r31, r3, 0
/* 8033EBAC 0033BAEC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033EBB0 0033BAF0  3B C5 00 00 */	addi r30, r5, 0
/* 8033EBB4 0033BAF4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033EBB8 0033BAF8  93 81 00 18 */	stw r28, 0x18(r1)
/* 8033EBBC 0033BAFC  3B 84 00 00 */	addi r28, r4, 0
/* 8033EBC0 0033BB00  4B FF EB 35 */	bl __RAS_OSDisableInterrupts_begin 
/* 8033EBC4 0033BB04  3B A3 00 00 */	addi r29, r3, 0
/* 8033EBC8 0033BB08  57 DE 07 FE */	clrlwi r30, r30, 0x1f
/* 8033EBCC 0033BB0C  48 00 00 24 */	b lbl_8033EBF0
lbl_8033EBD0:
/* 8033EBD0 0033BB10  2C 1E 00 00 */	cmpwi r30, 0
/* 8033EBD4 0033BB14  40 82 00 14 */	bne lbl_8033EBE8
/* 8033EBD8 0033BB18  7F A3 EB 78 */	mr r3, r29
/* 8033EBDC 0033BB1C  4B FF EB 41 */	bl OSRestoreInterrupts
/* 8033EBE0 0033BB20  38 60 00 00 */	li r3, 0
/* 8033EBE4 0033BB24  48 00 00 68 */	b lbl_8033EC4C
lbl_8033EBE8:
/* 8033EBE8 0033BB28  7F E3 FB 78 */	mr r3, r31
/* 8033EBEC 0033BB2C  48 00 2F C1 */	bl OSSleepThread
lbl_8033EBF0:
/* 8033EBF0 0033BB30  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8033EBF4 0033BB34  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8033EBF8 0033BB38  7C 05 00 00 */	cmpw r5, r0
/* 8033EBFC 0033BB3C  40 81 FF D4 */	ble lbl_8033EBD0
/* 8033EC00 0033BB40  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8033EC04 0033BB44  38 05 FF FF */	addi r0, r5, -1
/* 8033EC08 0033BB48  38 7F 00 08 */	addi r3, r31, 8
/* 8033EC0C 0033BB4C  7C 84 02 14 */	add r4, r4, r0
/* 8033EC10 0033BB50  7C 04 2B D6 */	divw r0, r4, r5
/* 8033EC14 0033BB54  7C 00 29 D6 */	mullw r0, r0, r5
/* 8033EC18 0033BB58  7C 00 20 50 */	subf r0, r0, r4
/* 8033EC1C 0033BB5C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8033EC20 0033BB60  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8033EC24 0033BB64  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8033EC28 0033BB68  54 00 10 3A */	slwi r0, r0, 2
/* 8033EC2C 0033BB6C  7F 84 01 2E */	stwx r28, r4, r0
/* 8033EC30 0033BB70  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8033EC34 0033BB74  38 04 00 01 */	addi r0, r4, 1
/* 8033EC38 0033BB78  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8033EC3C 0033BB7C  48 00 30 5D */	bl OSWakeupThread
/* 8033EC40 0033BB80  7F A3 EB 78 */	mr r3, r29
/* 8033EC44 0033BB84  4B FF EA D9 */	bl OSRestoreInterrupts
/* 8033EC48 0033BB88  38 60 00 01 */	li r3, 1
lbl_8033EC4C:
/* 8033EC4C 0033BB8C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033EC50 0033BB90  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033EC54 0033BB94  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033EC58 0033BB98  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033EC5C 0033BB9C  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8033EC60 0033BBA0  38 21 00 28 */	addi r1, r1, 0x28
/* 8033EC64 0033BBA4  7C 08 03 A6 */	mtlr r0
/* 8033EC68 0033BBA8  4E 80 00 20 */	blr 
