/* 802AB830 002A8770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AB834 002A8774  80 C4 00 00 */	lwz r6, 0(r4)
/* 802AB838 002A8778  28 06 00 00 */	cmplwi r6, 0
/* 802AB83C 002A877C  41 82 00 F8 */	beq lbl_802AB934
/* 802AB840 002A8780  38 E0 27 0F */	li r7, 0x270f
/* 802AB844 002A8784  39 00 00 00 */	li r8, 0
/* 802AB848 002A8788  38 A0 00 00 */	li r5, 0
/* 802AB84C 002A878C  38 00 00 08 */	li r0, 8
/* 802AB850 002A8790  7C 09 03 A6 */	mtctr r0
lbl_802AB854:
/* 802AB854 002A8794  38 05 03 A0 */	addi r0, r5, 0x3a0
/* 802AB858 002A8798  7C 03 00 2E */	lwzx r0, r3, r0
/* 802AB85C 002A879C  7C 00 30 40 */	cmplw r0, r6
/* 802AB860 002A87A0  40 82 00 0C */	bne lbl_802AB86C
/* 802AB864 002A87A4  7D 07 43 78 */	mr r7, r8
/* 802AB868 002A87A8  48 00 00 10 */	b lbl_802AB878
lbl_802AB86C:
/* 802AB86C 002A87AC  39 08 00 01 */	addi r8, r8, 1
/* 802AB870 002A87B0  38 A5 00 04 */	addi r5, r5, 4
/* 802AB874 002A87B4  42 00 FF E0 */	bdnz lbl_802AB854
lbl_802AB878:
/* 802AB878 002A87B8  2C 07 27 0F */	cmpwi r7, 0x270f
/* 802AB87C 002A87BC  40 82 00 48 */	bne lbl_802AB8C4
/* 802AB880 002A87C0  39 00 00 00 */	li r8, 0
/* 802AB884 002A87C4  38 A0 00 00 */	li r5, 0
/* 802AB888 002A87C8  38 00 00 08 */	li r0, 8
/* 802AB88C 002A87CC  7C 09 03 A6 */	mtctr r0
lbl_802AB890:
/* 802AB890 002A87D0  38 05 03 A0 */	addi r0, r5, 0x3a0
/* 802AB894 002A87D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 802AB898 002A87D8  28 00 00 00 */	cmplwi r0, 0
/* 802AB89C 002A87DC  40 82 00 14 */	bne lbl_802AB8B0
/* 802AB8A0 002A87E0  7D 07 43 78 */	mr r7, r8
/* 802AB8A4 002A87E4  7C A3 2A 14 */	add r5, r3, r5
/* 802AB8A8 002A87E8  90 C5 03 A0 */	stw r6, 0x3a0(r5)
/* 802AB8AC 002A87EC  48 00 00 10 */	b lbl_802AB8BC
lbl_802AB8B0:
/* 802AB8B0 002A87F0  39 08 00 01 */	addi r8, r8, 1
/* 802AB8B4 002A87F4  38 A5 00 04 */	addi r5, r5, 4
/* 802AB8B8 002A87F8  42 00 FF D8 */	bdnz lbl_802AB890
lbl_802AB8BC:
/* 802AB8BC 002A87FC  2C 08 00 08 */	cmpwi r8, 8
/* 802AB8C0 002A8800  41 82 00 74 */	beq lbl_802AB934
lbl_802AB8C4:
/* 802AB8C4 002A8804  80 A4 00 00 */	lwz r5, 0(r4)
/* 802AB8C8 002A8808  C0 05 00 00 */	lfs f0, 0(r5)
/* 802AB8CC 002A880C  1C E7 00 0C */	mulli r7, r7, 0xc
/* 802AB8D0 002A8810  7C C3 3A 14 */	add r6, r3, r7
/* 802AB8D4 002A8814  D0 06 03 40 */	stfs f0, 0x340(r6)
/* 802AB8D8 002A8818  C0 05 00 04 */	lfs f0, 4(r5)
/* 802AB8DC 002A881C  D0 06 03 44 */	stfs f0, 0x344(r6)
/* 802AB8E0 002A8820  C0 05 00 08 */	lfs f0, 8(r5)
/* 802AB8E4 002A8824  D0 06 03 48 */	stfs f0, 0x348(r6)
/* 802AB8E8 002A8828  80 AD 85 C4 */	lwz r5, lbl_80450B44-_SDA_BASE_(r13)
/* 802AB8EC 002A882C  E0 25 01 70 */	psq_l f1, 368(r5), 0, 0
/* 802AB8F0 002A8830  C0 05 01 78 */	lfs f0, 0x178(r5)
/* 802AB8F4 002A8834  F0 21 00 08 */	psq_st f1, 8(r1), 0, 0
/* 802AB8F8 002A8838  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802AB8FC 002A883C  80 A1 00 08 */	lwz r5, 8(r1)
/* 802AB900 002A8840  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802AB904 002A8844  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802AB908 002A8848  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AB90C 002A884C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802AB910 002A8850  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AB914 002A8854  C0 06 03 44 */	lfs f0, 0x344(r6)
/* 802AB918 002A8858  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802AB91C 002A885C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802AB920 002A8860  40 81 00 08 */	ble lbl_802AB928
/* 802AB924 002A8864  D0 26 03 44 */	stfs f1, 0x344(r6)
lbl_802AB928:
/* 802AB928 002A8868  38 07 03 40 */	addi r0, r7, 0x340
/* 802AB92C 002A886C  7C 03 02 14 */	add r0, r3, r0
/* 802AB930 002A8870  90 04 00 00 */	stw r0, 0(r4)
lbl_802AB934:
/* 802AB934 002A8874  38 21 00 20 */	addi r1, r1, 0x20
/* 802AB938 002A8878  4E 80 00 20 */	blr 