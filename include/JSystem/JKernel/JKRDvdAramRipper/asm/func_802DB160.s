/* decompSZS_subroutine__FPUcUl decompSZS_subroutine(unsigned char *, unsigned long) */
/* decompSZS_subroutine_X2_ */
/* 802DB160 002D80A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DB164 002D80A4  7C 08 02 A6 */	mflr r0
/* 802DB168 002D80A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DB16C 002D80AC  39 61 00 30 */	addi r11, r1, 0x30
/* 802DB170 002D80B0  48 08 70 55 */	bl _savegpr_23
/* 802DB174 002D80B4  7C 98 23 78 */	mr r24, r4
/* 802DB178 002D80B8  3B A0 00 00 */	li r29, 0
/* 802DB17C 002D80BC  3B 80 00 00 */	li r28, 0
/* 802DB180 002D80C0  3B 40 00 00 */	li r26, 0
/* 802DB184 002D80C4  7F 19 C3 78 */	mr r25, r24
/* 802DB188 002D80C8  88 03 00 00 */	lbz r0, 0(r3)
/* 802DB18C 002D80CC  2C 00 00 59 */	cmpwi r0, 0x59
/* 802DB190 002D80D0  40 82 00 28 */	bne lbl_802DB1B8
/* 802DB194 002D80D4  88 03 00 01 */	lbz r0, 1(r3)
/* 802DB198 002D80D8  2C 00 00 61 */	cmpwi r0, 0x61
/* 802DB19C 002D80DC  40 82 00 1C */	bne lbl_802DB1B8
/* 802DB1A0 002D80E0  88 03 00 02 */	lbz r0, 2(r3)
/* 802DB1A4 002D80E4  2C 00 00 7A */	cmpwi r0, 0x7a
/* 802DB1A8 002D80E8  40 82 00 10 */	bne lbl_802DB1B8
/* 802DB1AC 002D80EC  88 03 00 03 */	lbz r0, 3(r3)
/* 802DB1B0 002D80F0  2C 00 00 30 */	cmpwi r0, 0x30
/* 802DB1B4 002D80F4  41 82 00 0C */	beq lbl_802DB1C0
lbl_802DB1B8:
/* 802DB1B8 002D80F8  38 60 FF FF */	li r3, -1
/* 802DB1BC 002D80FC  48 00 02 14 */	b lbl_802DB3D0
lbl_802DB1C0:
/* 802DB1C0 002D8100  80 8D 8F 18 */	lwz r4, lbl_80451498-_SDA_BASE_(r13)
/* 802DB1C4 002D8104  80 03 00 04 */	lwz r0, 4(r3)
/* 802DB1C8 002D8108  7C 04 00 50 */	subf r0, r4, r0
/* 802DB1CC 002D810C  7F F8 02 14 */	add r31, r24, r0
/* 802DB1D0 002D8110  80 0D 8F 20 */	lwz r0, lbl_804514A0-_SDA_BASE_(r13)
/* 802DB1D4 002D8114  7C 18 02 14 */	add r0, r24, r0
/* 802DB1D8 002D8118  7C 1F 00 40 */	cmplw r31, r0
/* 802DB1DC 002D811C  40 81 00 08 */	ble lbl_802DB1E4
/* 802DB1E0 002D8120  7C 1F 03 78 */	mr r31, r0
lbl_802DB1E4:
/* 802DB1E4 002D8124  3A E3 00 10 */	addi r23, r3, 0x10
lbl_802DB1E8:
/* 802DB1E8 002D8128  2C 1D 00 00 */	cmpwi r29, 0
/* 802DB1EC 002D812C  40 82 00 34 */	bne lbl_802DB220
/* 802DB1F0 002D8130  80 0D 8F 10 */	lwz r0, lbl_80451490-_SDA_BASE_(r13)
/* 802DB1F4 002D8134  7C 17 00 40 */	cmplw r23, r0
/* 802DB1F8 002D8138  40 81 00 1C */	ble lbl_802DB214
/* 802DB1FC 002D813C  80 0D 8F 0C */	lwz r0, lbl_8045148C-_SDA_BASE_(r13)
/* 802DB200 002D8140  28 00 00 00 */	cmplwi r0, 0
/* 802DB204 002D8144  41 82 00 10 */	beq lbl_802DB214
/* 802DB208 002D8148  7E E3 BB 78 */	mr r3, r23
/* 802DB20C 002D814C  48 00 02 91 */	bl nextSrcData__FPUc
/* 802DB210 002D8150  7C 77 1B 78 */	mr r23, r3
lbl_802DB214:
/* 802DB214 002D8154  8B 97 00 00 */	lbz r28, 0(r23)
/* 802DB218 002D8158  3B A0 00 08 */	li r29, 8
/* 802DB21C 002D815C  3A F7 00 01 */	addi r23, r23, 1
lbl_802DB220:
/* 802DB220 002D8160  57 80 06 31 */	rlwinm. r0, r28, 0, 0x18, 0x18
/* 802DB224 002D8164  41 82 00 94 */	beq lbl_802DB2B8
/* 802DB228 002D8168  80 6D 8F 1C */	lwz r3, lbl_8045149C-_SDA_BASE_(r13)
/* 802DB22C 002D816C  80 0D 8F 18 */	lwz r0, lbl_80451498-_SDA_BASE_(r13)
/* 802DB230 002D8170  7C 03 00 40 */	cmplw r3, r0
/* 802DB234 002D8174  41 80 00 44 */	blt lbl_802DB278
/* 802DB238 002D8178  88 97 00 00 */	lbz r4, 0(r23)
/* 802DB23C 002D817C  80 6D 8F 04 */	lwz r3, lbl_80451484-_SDA_BASE_(r13)
/* 802DB240 002D8180  38 03 00 01 */	addi r0, r3, 1
/* 802DB244 002D8184  90 0D 8F 04 */	stw r0, lbl_80451484-_SDA_BASE_(r13)
/* 802DB248 002D8188  98 83 00 00 */	stb r4, 0(r3)
/* 802DB24C 002D818C  80 6D 8F 04 */	lwz r3, lbl_80451484-_SDA_BASE_(r13)
/* 802DB250 002D8190  80 0D 8F 00 */	lwz r0, lbl_80451480-_SDA_BASE_(r13)
/* 802DB254 002D8194  7C 03 00 40 */	cmplw r3, r0
/* 802DB258 002D8198  3B 18 00 01 */	addi r24, r24, 1
/* 802DB25C 002D819C  3B 5A 00 01 */	addi r26, r26, 1
/* 802DB260 002D81A0  40 82 00 10 */	bne lbl_802DB270
/* 802DB264 002D81A4  7F 23 CB 78 */	mr r3, r25
/* 802DB268 002D81A8  48 00 03 19 */	bl dmaBufferFlush__FUl
/* 802DB26C 002D81AC  7F 39 1A 14 */	add r25, r25, r3
lbl_802DB270:
/* 802DB270 002D81B0  7C 18 F8 40 */	cmplw r24, r31
/* 802DB274 002D81B4  41 82 01 48 */	beq lbl_802DB3BC
lbl_802DB278:
/* 802DB278 002D81B8  88 97 00 00 */	lbz r4, 0(r23)
/* 802DB27C 002D81BC  80 6D 8E F8 */	lwz r3, lbl_80451478-_SDA_BASE_(r13)
/* 802DB280 002D81C0  38 03 00 01 */	addi r0, r3, 1
/* 802DB284 002D81C4  90 0D 8E F8 */	stw r0, lbl_80451478-_SDA_BASE_(r13)
/* 802DB288 002D81C8  98 83 00 00 */	stb r4, 0(r3)
/* 802DB28C 002D81CC  80 6D 8E F8 */	lwz r3, lbl_80451478-_SDA_BASE_(r13)
/* 802DB290 002D81D0  80 0D 8E F4 */	lwz r0, lbl_80451474-_SDA_BASE_(r13)
/* 802DB294 002D81D4  7C 03 00 40 */	cmplw r3, r0
/* 802DB298 002D81D8  40 82 00 0C */	bne lbl_802DB2A4
/* 802DB29C 002D81DC  80 0D 8E F0 */	lwz r0, lbl_80451470-_SDA_BASE_(r13)
/* 802DB2A0 002D81E0  90 0D 8E F8 */	stw r0, lbl_80451478-_SDA_BASE_(r13)
lbl_802DB2A4:
/* 802DB2A4 002D81E4  80 6D 8F 1C */	lwz r3, lbl_8045149C-_SDA_BASE_(r13)
/* 802DB2A8 002D81E8  38 03 00 01 */	addi r0, r3, 1
/* 802DB2AC 002D81EC  90 0D 8F 1C */	stw r0, lbl_8045149C-_SDA_BASE_(r13)
/* 802DB2B0 002D81F0  3A F7 00 01 */	addi r23, r23, 1
/* 802DB2B4 002D81F4  48 00 00 F8 */	b lbl_802DB3AC
lbl_802DB2B8:
/* 802DB2B8 002D81F8  88 77 00 00 */	lbz r3, 0(r23)
/* 802DB2BC 002D81FC  88 97 00 01 */	lbz r4, 1(r23)
/* 802DB2C0 002D8200  50 64 45 2E */	rlwimi r4, r3, 8, 0x14, 0x17
/* 802DB2C4 002D8204  7C 7B 26 70 */	srawi r27, r3, 4
/* 802DB2C8 002D8208  80 0D 8E F8 */	lwz r0, lbl_80451478-_SDA_BASE_(r13)
/* 802DB2CC 002D820C  7C 64 00 50 */	subf r3, r4, r0
/* 802DB2D0 002D8210  3B C3 FF FF */	addi r30, r3, -1
/* 802DB2D4 002D8214  80 6D 8E F0 */	lwz r3, lbl_80451470-_SDA_BASE_(r13)
/* 802DB2D8 002D8218  7C 1E 18 40 */	cmplw r30, r3
/* 802DB2DC 002D821C  3A F7 00 02 */	addi r23, r23, 2
/* 802DB2E0 002D8220  40 80 00 10 */	bge lbl_802DB2F0
/* 802DB2E4 002D8224  80 0D 8E F4 */	lwz r0, lbl_80451474-_SDA_BASE_(r13)
/* 802DB2E8 002D8228  7C 03 00 50 */	subf r0, r3, r0
/* 802DB2EC 002D822C  7F DE 02 14 */	add r30, r30, r0
lbl_802DB2F0:
/* 802DB2F0 002D8230  2C 1B 00 00 */	cmpwi r27, 0
/* 802DB2F4 002D8234  40 82 00 14 */	bne lbl_802DB308
/* 802DB2F8 002D8238  88 77 00 00 */	lbz r3, 0(r23)
/* 802DB2FC 002D823C  3B 63 00 12 */	addi r27, r3, 0x12
/* 802DB300 002D8240  3A F7 00 01 */	addi r23, r23, 1
/* 802DB304 002D8244  48 00 00 08 */	b lbl_802DB30C
lbl_802DB308:
/* 802DB308 002D8248  3B 7B 00 02 */	addi r27, r27, 2
lbl_802DB30C:
/* 802DB30C 002D824C  80 6D 8F 1C */	lwz r3, lbl_8045149C-_SDA_BASE_(r13)
/* 802DB310 002D8250  80 0D 8F 18 */	lwz r0, lbl_80451498-_SDA_BASE_(r13)
/* 802DB314 002D8254  7C 03 00 40 */	cmplw r3, r0
/* 802DB318 002D8258  41 80 00 44 */	blt lbl_802DB35C
/* 802DB31C 002D825C  88 9E 00 00 */	lbz r4, 0(r30)
/* 802DB320 002D8260  80 6D 8F 04 */	lwz r3, lbl_80451484-_SDA_BASE_(r13)
/* 802DB324 002D8264  38 03 00 01 */	addi r0, r3, 1
/* 802DB328 002D8268  90 0D 8F 04 */	stw r0, lbl_80451484-_SDA_BASE_(r13)
/* 802DB32C 002D826C  98 83 00 00 */	stb r4, 0(r3)
/* 802DB330 002D8270  80 6D 8F 04 */	lwz r3, lbl_80451484-_SDA_BASE_(r13)
/* 802DB334 002D8274  80 0D 8F 00 */	lwz r0, lbl_80451480-_SDA_BASE_(r13)
/* 802DB338 002D8278  7C 03 00 40 */	cmplw r3, r0
/* 802DB33C 002D827C  3B 18 00 01 */	addi r24, r24, 1
/* 802DB340 002D8280  3B 5A 00 01 */	addi r26, r26, 1
/* 802DB344 002D8284  40 82 00 10 */	bne lbl_802DB354
/* 802DB348 002D8288  7F 23 CB 78 */	mr r3, r25
/* 802DB34C 002D828C  48 00 02 35 */	bl dmaBufferFlush__FUl
/* 802DB350 002D8290  7F 39 1A 14 */	add r25, r25, r3
lbl_802DB354:
/* 802DB354 002D8294  7C 18 F8 40 */	cmplw r24, r31
/* 802DB358 002D8298  41 82 00 54 */	beq lbl_802DB3AC
lbl_802DB35C:
/* 802DB35C 002D829C  88 9E 00 00 */	lbz r4, 0(r30)
/* 802DB360 002D82A0  80 6D 8E F8 */	lwz r3, lbl_80451478-_SDA_BASE_(r13)
/* 802DB364 002D82A4  38 03 00 01 */	addi r0, r3, 1
/* 802DB368 002D82A8  90 0D 8E F8 */	stw r0, lbl_80451478-_SDA_BASE_(r13)
/* 802DB36C 002D82AC  98 83 00 00 */	stb r4, 0(r3)
/* 802DB370 002D82B0  80 0D 8E F8 */	lwz r0, lbl_80451478-_SDA_BASE_(r13)
/* 802DB374 002D82B4  80 6D 8E F4 */	lwz r3, lbl_80451474-_SDA_BASE_(r13)
/* 802DB378 002D82B8  7C 00 18 40 */	cmplw r0, r3
/* 802DB37C 002D82BC  40 82 00 0C */	bne lbl_802DB388
/* 802DB380 002D82C0  80 0D 8E F0 */	lwz r0, lbl_80451470-_SDA_BASE_(r13)
/* 802DB384 002D82C4  90 0D 8E F8 */	stw r0, lbl_80451478-_SDA_BASE_(r13)
lbl_802DB388:
/* 802DB388 002D82C8  3B DE 00 01 */	addi r30, r30, 1
/* 802DB38C 002D82CC  7C 1E 18 40 */	cmplw r30, r3
/* 802DB390 002D82D0  40 82 00 08 */	bne lbl_802DB398
/* 802DB394 002D82D4  83 CD 8E F0 */	lwz r30, lbl_80451470-_SDA_BASE_(r13)
lbl_802DB398:
/* 802DB398 002D82D8  80 6D 8F 1C */	lwz r3, lbl_8045149C-_SDA_BASE_(r13)
/* 802DB39C 002D82DC  38 03 00 01 */	addi r0, r3, 1
/* 802DB3A0 002D82E0  90 0D 8F 1C */	stw r0, lbl_8045149C-_SDA_BASE_(r13)
/* 802DB3A4 002D82E4  37 7B FF FF */	addic. r27, r27, -1
/* 802DB3A8 002D82E8  40 82 FF 64 */	bne lbl_802DB30C
lbl_802DB3AC:
/* 802DB3AC 002D82EC  57 9C 08 3C */	slwi r28, r28, 1
/* 802DB3B0 002D82F0  7C 18 F8 40 */	cmplw r24, r31
/* 802DB3B4 002D82F4  3B BD FF FF */	addi r29, r29, -1
/* 802DB3B8 002D82F8  41 80 FE 30 */	blt lbl_802DB1E8
lbl_802DB3BC:
/* 802DB3BC 002D82FC  7F 23 CB 78 */	mr r3, r25
/* 802DB3C0 002D8300  48 00 01 C1 */	bl dmaBufferFlush__FUl
/* 802DB3C4 002D8304  80 6D 8F 28 */	lwz r3, lbl_804514A8-_SDA_BASE_(r13)
/* 802DB3C8 002D8308  93 43 00 00 */	stw r26, 0(r3)
/* 802DB3CC 002D830C  38 60 00 00 */	li r3, 0
lbl_802DB3D0:
/* 802DB3D0 002D8310  39 61 00 30 */	addi r11, r1, 0x30
/* 802DB3D4 002D8314  48 08 6E 3D */	bl func_80362210
/* 802DB3D8 002D8318  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DB3DC 002D831C  7C 08 03 A6 */	mtlr r0
/* 802DB3E0 002D8320  38 21 00 30 */	addi r1, r1, 0x30
/* 802DB3E4 002D8324  4E 80 00 20 */	blr
