.include "macros.inc"

.section .text, "ax" # 8027d8a0


.global JPAResourceLoader
JPAResourceLoader:
/* 8027D8A0 0027A7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D8A4 0027A7E4  7C 08 02 A6 */	mflr r0
/* 8027D8A8 0027A7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D8AC 0027A7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D8B0 0027A7F0  7C 7F 1B 78 */	mr r31, r3
/* 8027D8B4 0027A7F4  80 C4 00 04 */	lwz r6, 4(r4)
/* 8027D8B8 0027A7F8  3C 06 CD D3 */	addis r0, r6, 0xcdd3
/* 8027D8BC 0027A7FC  28 00 31 30 */	cmplwi r0, 0x3130
/* 8027D8C0 0027A800  40 82 00 08 */	bne lbl_8027D8C8
/* 8027D8C4 0027A804  48 00 00 1D */	bl JPAResourceLoader_NS_load_jpc
lbl_8027D8C8:
/* 8027D8C8 0027A808  7F E3 FB 78 */	mr r3, r31
/* 8027D8CC 0027A80C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D8D0 0027A810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D8D4 0027A814  7C 08 03 A6 */	mtlr r0
/* 8027D8D8 0027A818  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D8DC 0027A81C  4E 80 00 20 */	blr 

.global JPAResourceLoader_NS_load_jpc
JPAResourceLoader_NS_load_jpc:
/* 8027D8E0 0027A820  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027D8E4 0027A824  7C 08 02 A6 */	mflr r0
/* 8027D8E8 0027A828  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027D8EC 0027A82C  39 61 00 40 */	addi r11, r1, 0x40
/* 8027D8F0 0027A830  48 0E 48 C1 */	bl _savegpr_18
/* 8027D8F4 0027A834  7C 9C 23 78 */	mr r28, r4
/* 8027D8F8 0027A838  7C BD 2B 78 */	mr r29, r5
/* 8027D8FC 0027A83C  83 C5 00 00 */	lwz r30, 0(r5)
/* 8027D900 0027A840  A0 04 00 08 */	lhz r0, 8(r4)
/* 8027D904 0027A844  B0 05 00 0C */	sth r0, 0xc(r5)
/* 8027D908 0027A848  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 8027D90C 0027A84C  B0 05 00 10 */	sth r0, 0x10(r5)
/* 8027D910 0027A850  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 8027D914 0027A854  54 03 10 3A */	slwi r3, r0, 2
/* 8027D918 0027A858  7F C4 F3 78 */	mr r4, r30
/* 8027D91C 0027A85C  38 A0 00 00 */	li r5, 0
/* 8027D920 0027A860  48 05 13 F1 */	bl __nwa__FUlP7JKRHeapi
/* 8027D924 0027A864  90 7D 00 04 */	stw r3, 4(r29)
/* 8027D928 0027A868  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 8027D92C 0027A86C  54 03 10 3A */	slwi r3, r0, 2
/* 8027D930 0027A870  7F C4 F3 78 */	mr r4, r30
/* 8027D934 0027A874  38 A0 00 00 */	li r5, 0
/* 8027D938 0027A878  48 05 13 D9 */	bl __nwa__FUlP7JKRHeapi
/* 8027D93C 0027A87C  90 7D 00 08 */	stw r3, 8(r29)
/* 8027D940 0027A880  3B 60 00 10 */	li r27, 0x10
/* 8027D944 0027A884  3A A0 00 00 */	li r21, 0
/* 8027D948 0027A888  3C 60 46 4C */	lis r3, 0x464C4431@ha
/* 8027D94C 0027A88C  3A 63 44 31 */	addi r19, r3, 0x464C4431@l
/* 8027D950 0027A890  A2 5C 00 08 */	lhz r18, 8(r28)
/* 8027D954 0027A894  48 00 02 D8 */	b lbl_8027DC2C
lbl_8027D958:
/* 8027D958 0027A898  7F 3C DA 14 */	add r25, r28, r27
/* 8027D95C 0027A89C  38 60 00 48 */	li r3, 0x48
/* 8027D960 0027A8A0  7F C4 F3 78 */	mr r4, r30
/* 8027D964 0027A8A4  38 A0 00 00 */	li r5, 0
/* 8027D968 0027A8A8  48 05 13 31 */	bl __nw__FUlP7JKRHeapi
/* 8027D96C 0027A8AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D970 0027A8B0  41 82 00 0C */	beq lbl_8027D97C
/* 8027D974 0027A8B4  4B FF 66 9D */	bl JPAResource
/* 8027D978 0027A8B8  7C 7F 1B 78 */	mr r31, r3
lbl_8027D97C:
/* 8027D97C 0027A8BC  88 19 00 04 */	lbz r0, 4(r25)
/* 8027D980 0027A8C0  98 1F 00 3E */	stb r0, 0x3e(r31)
/* 8027D984 0027A8C4  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 8027D988 0027A8C8  28 00 00 00 */	cmplwi r0, 0
/* 8027D98C 0027A8CC  41 82 00 18 */	beq lbl_8027D9A4
/* 8027D990 0027A8D0  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 8027D994 0027A8D4  7F C4 F3 78 */	mr r4, r30
/* 8027D998 0027A8D8  38 A0 00 00 */	li r5, 0
/* 8027D99C 0027A8DC  48 05 13 75 */	bl __nwa__FUlP7JKRHeapi
/* 8027D9A0 0027A8E0  48 00 00 08 */	b lbl_8027D9A8
lbl_8027D9A4:
/* 8027D9A4 0027A8E4  38 60 00 00 */	li r3, 0
lbl_8027D9A8:
/* 8027D9A8 0027A8E8  90 7F 00 30 */	stw r3, 0x30(r31)
/* 8027D9AC 0027A8EC  88 19 00 05 */	lbz r0, 5(r25)
/* 8027D9B0 0027A8F0  98 1F 00 3F */	stb r0, 0x3f(r31)
/* 8027D9B4 0027A8F4  88 1F 00 3F */	lbz r0, 0x3f(r31)
/* 8027D9B8 0027A8F8  28 00 00 00 */	cmplwi r0, 0
/* 8027D9BC 0027A8FC  41 82 00 18 */	beq lbl_8027D9D4
/* 8027D9C0 0027A900  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 8027D9C4 0027A904  7F C4 F3 78 */	mr r4, r30
/* 8027D9C8 0027A908  38 A0 00 00 */	li r5, 0
/* 8027D9CC 0027A90C  48 05 13 45 */	bl __nwa__FUlP7JKRHeapi
/* 8027D9D0 0027A910  48 00 00 08 */	b lbl_8027D9D8
lbl_8027D9D4:
/* 8027D9D4 0027A914  38 60 00 00 */	li r3, 0
lbl_8027D9D8:
/* 8027D9D8 0027A918  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8027D9DC 0027A91C  88 19 00 06 */	lbz r0, 6(r25)
/* 8027D9E0 0027A920  98 1F 00 40 */	stb r0, 0x40(r31)
/* 8027D9E4 0027A924  3B 40 00 00 */	li r26, 0
/* 8027D9E8 0027A928  93 5F 00 38 */	stw r26, 0x38(r31)
/* 8027D9EC 0027A92C  A0 19 00 00 */	lhz r0, 0(r25)
/* 8027D9F0 0027A930  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 8027D9F4 0027A934  3A E0 00 00 */	li r23, 0
/* 8027D9F8 0027A938  3B 00 00 00 */	li r24, 0
/* 8027D9FC 0027A93C  3B 7B 00 08 */	addi r27, r27, 8
/* 8027DA00 0027A940  48 00 02 04 */	b lbl_8027DC04
lbl_8027DA04:
/* 8027DA04 0027A944  7E DC DA 14 */	add r22, r28, r27
/* 8027DA08 0027A948  82 96 00 04 */	lwz r20, 4(r22)
/* 8027DA0C 0027A94C  80 16 00 00 */	lwz r0, 0(r22)
/* 8027DA10 0027A950  7C 00 98 00 */	cmpw r0, r19
/* 8027DA14 0027A954  41 82 00 94 */	beq lbl_8027DAA8
/* 8027DA18 0027A958  40 80 00 54 */	bge lbl_8027DA6C
/* 8027DA1C 0027A95C  3C 60 45 53 */	lis r3, 0x45535031@ha
/* 8027DA20 0027A960  38 63 50 31 */	addi r3, r3, 0x45535031@l
/* 8027DA24 0027A964  7C 00 18 00 */	cmpw r0, r3
/* 8027DA28 0027A968  41 82 01 48 */	beq lbl_8027DB70
/* 8027DA2C 0027A96C  40 80 00 2C */	bge lbl_8027DA58
/* 8027DA30 0027A970  3C 60 42 53 */	lis r3, 0x42535031@ha
/* 8027DA34 0027A974  38 63 50 31 */	addi r3, r3, 0x42535031@l
/* 8027DA38 0027A978  7C 00 18 00 */	cmpw r0, r3
/* 8027DA3C 0027A97C  41 82 01 04 */	beq lbl_8027DB40
/* 8027DA40 0027A980  40 80 01 BC */	bge lbl_8027DBFC
/* 8027DA44 0027A984  3C 60 42 45 */	lis r3, 0x42454D31@ha
/* 8027DA48 0027A988  38 63 4D 31 */	addi r3, r3, 0x42454D31@l
/* 8027DA4C 0027A98C  7C 00 18 00 */	cmpw r0, r3
/* 8027DA50 0027A990  41 82 00 C4 */	beq lbl_8027DB14
/* 8027DA54 0027A994  48 00 01 A8 */	b lbl_8027DBFC
lbl_8027DA58:
/* 8027DA58 0027A998  3C 60 45 54 */	lis r3, 0x45545831@ha
/* 8027DA5C 0027A99C  38 63 58 31 */	addi r3, r3, 0x45545831@l
/* 8027DA60 0027A9A0  7C 00 18 00 */	cmpw r0, r3
/* 8027DA64 0027A9A4  41 82 01 64 */	beq lbl_8027DBC8
/* 8027DA68 0027A9A8  48 00 01 94 */	b lbl_8027DBFC
lbl_8027DA6C:
/* 8027DA6C 0027A9AC  3C 60 53 53 */	lis r3, 0x53535031@ha
/* 8027DA70 0027A9B0  38 63 50 31 */	addi r3, r3, 0x53535031@l
/* 8027DA74 0027A9B4  7C 00 18 00 */	cmpw r0, r3
/* 8027DA78 0027A9B8  41 82 01 24 */	beq lbl_8027DB9C
/* 8027DA7C 0027A9BC  40 80 00 18 */	bge lbl_8027DA94
/* 8027DA80 0027A9C0  3C 60 4B 46 */	lis r3, 0x4B464131@ha
/* 8027DA84 0027A9C4  38 63 41 31 */	addi r3, r3, 0x4B464131@l
/* 8027DA88 0027A9C8  7C 00 18 00 */	cmpw r0, r3
/* 8027DA8C 0027A9CC  41 82 00 54 */	beq lbl_8027DAE0
/* 8027DA90 0027A9D0  48 00 01 6C */	b lbl_8027DBFC
lbl_8027DA94:
/* 8027DA94 0027A9D4  3C 60 54 44 */	lis r3, 0x54444231@ha
/* 8027DA98 0027A9D8  38 63 42 31 */	addi r3, r3, 0x54444231@l
/* 8027DA9C 0027A9DC  7C 00 18 00 */	cmpw r0, r3
/* 8027DAA0 0027A9E0  41 82 01 54 */	beq lbl_8027DBF4
/* 8027DAA4 0027A9E4  48 00 01 58 */	b lbl_8027DBFC
lbl_8027DAA8:
/* 8027DAA8 0027A9E8  38 60 00 2C */	li r3, 0x2c
/* 8027DAAC 0027A9EC  7F C4 F3 78 */	mr r4, r30
/* 8027DAB0 0027A9F0  38 A0 00 00 */	li r5, 0
/* 8027DAB4 0027A9F4  48 05 11 E5 */	bl __nw__FUlP7JKRHeapi
/* 8027DAB8 0027A9F8  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DABC 0027A9FC  41 82 00 14 */	beq lbl_8027DAD0
/* 8027DAC0 0027AA00  7E C4 B3 78 */	mr r4, r22
/* 8027DAC4 0027AA04  7F C5 F3 78 */	mr r5, r30
/* 8027DAC8 0027AA08  4B FF F5 C1 */	bl JPAFieldBlock
/* 8027DACC 0027AA0C  7C 60 1B 78 */	mr r0, r3
lbl_8027DAD0:
/* 8027DAD0 0027AA10  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8027DAD4 0027AA14  7C 03 B9 2E */	stwx r0, r3, r23
/* 8027DAD8 0027AA18  3A F7 00 04 */	addi r23, r23, 4
/* 8027DADC 0027AA1C  48 00 01 20 */	b lbl_8027DBFC
lbl_8027DAE0:
/* 8027DAE0 0027AA20  38 60 00 08 */	li r3, 8
/* 8027DAE4 0027AA24  7F C4 F3 78 */	mr r4, r30
/* 8027DAE8 0027AA28  38 A0 00 00 */	li r5, 0
/* 8027DAEC 0027AA2C  48 05 11 AD */	bl __nw__FUlP7JKRHeapi
/* 8027DAF0 0027AA30  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DAF4 0027AA34  41 82 00 10 */	beq lbl_8027DB04
/* 8027DAF8 0027AA38  7E C4 B3 78 */	mr r4, r22
/* 8027DAFC 0027AA3C  4B FF FC 35 */	bl JPAKeyBlock
/* 8027DB00 0027AA40  7C 60 1B 78 */	mr r0, r3
lbl_8027DB04:
/* 8027DB04 0027AA44  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8027DB08 0027AA48  7C 03 D1 2E */	stwx r0, r3, r26
/* 8027DB0C 0027AA4C  3B 5A 00 04 */	addi r26, r26, 4
/* 8027DB10 0027AA50  48 00 00 EC */	b lbl_8027DBFC
lbl_8027DB14:
/* 8027DB14 0027AA54  38 60 00 08 */	li r3, 8
/* 8027DB18 0027AA58  7F C4 F3 78 */	mr r4, r30
/* 8027DB1C 0027AA5C  38 A0 00 00 */	li r5, 0
/* 8027DB20 0027AA60  48 05 11 79 */	bl __nw__FUlP7JKRHeapi
/* 8027DB24 0027AA64  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DB28 0027AA68  41 82 00 10 */	beq lbl_8027DB38
/* 8027DB2C 0027AA6C  7E C4 B3 78 */	mr r4, r22
/* 8027DB30 0027AA70  4B FF DF E9 */	bl JPADynamicsBlock
/* 8027DB34 0027AA74  7C 60 1B 78 */	mr r0, r3
lbl_8027DB38:
/* 8027DB38 0027AA78  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8027DB3C 0027AA7C  48 00 00 C0 */	b lbl_8027DBFC
lbl_8027DB40:
/* 8027DB40 0027AA80  38 60 00 14 */	li r3, 0x14
/* 8027DB44 0027AA84  7F C4 F3 78 */	mr r4, r30
/* 8027DB48 0027AA88  38 A0 00 00 */	li r5, 0
/* 8027DB4C 0027AA8C  48 05 11 4D */	bl __nw__FUlP7JKRHeapi
/* 8027DB50 0027AA90  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DB54 0027AA94  41 82 00 14 */	beq lbl_8027DB68
/* 8027DB58 0027AA98  7E C4 B3 78 */	mr r4, r22
/* 8027DB5C 0027AA9C  7F C5 F3 78 */	mr r5, r30
/* 8027DB60 0027AAA0  4B FF CB 7D */	bl JPABaseShape
/* 8027DB64 0027AAA4  7C 60 1B 78 */	mr r0, r3
lbl_8027DB68:
/* 8027DB68 0027AAA8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8027DB6C 0027AAAC  48 00 00 90 */	b lbl_8027DBFC
lbl_8027DB70:
/* 8027DB70 0027AAB0  38 60 00 1C */	li r3, 0x1c
/* 8027DB74 0027AAB4  7F C4 F3 78 */	mr r4, r30
/* 8027DB78 0027AAB8  38 A0 00 00 */	li r5, 0
/* 8027DB7C 0027AABC  48 05 11 1D */	bl __nw__FUlP7JKRHeapi
/* 8027DB80 0027AAC0  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DB84 0027AAC4  41 82 00 10 */	beq lbl_8027DB94
/* 8027DB88 0027AAC8  7E C4 B3 78 */	mr r4, r22
/* 8027DB8C 0027AACC  4B FF D1 FD */	bl JPAExtraShape
/* 8027DB90 0027AAD0  7C 60 1B 78 */	mr r0, r3
lbl_8027DB94:
/* 8027DB94 0027AAD4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8027DB98 0027AAD8  48 00 00 64 */	b lbl_8027DBFC
lbl_8027DB9C:
/* 8027DB9C 0027AADC  38 60 00 04 */	li r3, 4
/* 8027DBA0 0027AAE0  7F C4 F3 78 */	mr r4, r30
/* 8027DBA4 0027AAE4  38 A0 00 00 */	li r5, 0
/* 8027DBA8 0027AAE8  48 05 10 F1 */	bl __nw__FUlP7JKRHeapi
/* 8027DBAC 0027AAEC  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DBB0 0027AAF0  41 82 00 10 */	beq lbl_8027DBC0
/* 8027DBB4 0027AAF4  7E C4 B3 78 */	mr r4, r22
/* 8027DBB8 0027AAF8  4B FF D4 81 */	bl JPAChildShape
/* 8027DBBC 0027AAFC  7C 60 1B 78 */	mr r0, r3
lbl_8027DBC0:
/* 8027DBC0 0027AB00  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8027DBC4 0027AB04  48 00 00 38 */	b lbl_8027DBFC
lbl_8027DBC8:
/* 8027DBC8 0027AB08  38 60 00 04 */	li r3, 4
/* 8027DBCC 0027AB0C  7F C4 F3 78 */	mr r4, r30
/* 8027DBD0 0027AB10  38 A0 00 00 */	li r5, 0
/* 8027DBD4 0027AB14  48 05 10 C5 */	bl __nw__FUlP7JKRHeapi
/* 8027DBD8 0027AB18  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DBDC 0027AB1C  41 82 00 10 */	beq lbl_8027DBEC
/* 8027DBE0 0027AB20  7E C4 B3 78 */	mr r4, r22
/* 8027DBE4 0027AB24  4B FF D5 59 */	bl JPAExTexShape
/* 8027DBE8 0027AB28  7C 60 1B 78 */	mr r0, r3
lbl_8027DBEC:
/* 8027DBEC 0027AB2C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8027DBF0 0027AB30  48 00 00 0C */	b lbl_8027DBFC
lbl_8027DBF4:
/* 8027DBF4 0027AB34  38 16 00 08 */	addi r0, r22, 8
/* 8027DBF8 0027AB38  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_8027DBFC:
/* 8027DBFC 0027AB3C  7F 7B A2 14 */	add r27, r27, r20
/* 8027DC00 0027AB40  3B 18 00 01 */	addi r24, r24, 1
lbl_8027DC04:
/* 8027DC04 0027AB44  A0 19 00 02 */	lhz r0, 2(r25)
/* 8027DC08 0027AB48  7C 18 00 00 */	cmpw r24, r0
/* 8027DC0C 0027AB4C  41 80 FD F8 */	blt lbl_8027DA04
/* 8027DC10 0027AB50  7F E3 FB 78 */	mr r3, r31
/* 8027DC14 0027AB54  7F C4 F3 78 */	mr r4, r30
/* 8027DC18 0027AB58  4B FF 64 69 */	bl JPAResource_NS_init
/* 8027DC1C 0027AB5C  7F A3 EB 78 */	mr r3, r29
/* 8027DC20 0027AB60  7F E4 FB 78 */	mr r4, r31
/* 8027DC24 0027AB64  4B FF 63 69 */	bl JPAResourceManager_NS_registRes
/* 8027DC28 0027AB68  3A B5 00 01 */	addi r21, r21, 1
lbl_8027DC2C:
/* 8027DC2C 0027AB6C  7C 15 90 00 */	cmpw r21, r18
/* 8027DC30 0027AB70  41 80 FD 28 */	blt lbl_8027D958
/* 8027DC34 0027AB74  82 9C 00 0C */	lwz r20, 0xc(r28)
/* 8027DC38 0027AB78  3A A0 00 00 */	li r21, 0
/* 8027DC3C 0027AB7C  A2 5C 00 0A */	lhz r18, 0xa(r28)
/* 8027DC40 0027AB80  48 00 00 40 */	b lbl_8027DC80
lbl_8027DC44:
/* 8027DC44 0027AB84  7E 7C A2 14 */	add r19, r28, r20
/* 8027DC48 0027AB88  82 D3 00 04 */	lwz r22, 4(r19)
/* 8027DC4C 0027AB8C  38 60 00 48 */	li r3, 0x48
/* 8027DC50 0027AB90  7F C4 F3 78 */	mr r4, r30
/* 8027DC54 0027AB94  38 A0 00 00 */	li r5, 0
/* 8027DC58 0027AB98  48 05 10 41 */	bl __nw__FUlP7JKRHeapi
/* 8027DC5C 0027AB9C  7C 64 1B 79 */	or. r4, r3, r3
/* 8027DC60 0027ABA0  41 82 00 10 */	beq lbl_8027DC70
/* 8027DC64 0027ABA4  7E 64 9B 78 */	mr r4, r19
/* 8027DC68 0027ABA8  4B FF FB 6D */	bl JPATexture
/* 8027DC6C 0027ABAC  7C 64 1B 78 */	mr r4, r3
lbl_8027DC70:
/* 8027DC70 0027ABB0  7F A3 EB 78 */	mr r3, r29
/* 8027DC74 0027ABB4  4B FF 63 39 */	bl JPAResourceManager_NS_registTex
/* 8027DC78 0027ABB8  7E 94 B2 14 */	add r20, r20, r22
/* 8027DC7C 0027ABBC  3A B5 00 01 */	addi r21, r21, 1
lbl_8027DC80:
/* 8027DC80 0027ABC0  7C 15 90 00 */	cmpw r21, r18
/* 8027DC84 0027ABC4  41 80 FF C0 */	blt lbl_8027DC44
/* 8027DC88 0027ABC8  39 61 00 40 */	addi r11, r1, 0x40
/* 8027DC8C 0027ABCC  48 0E 45 71 */	bl _restgpr_18
/* 8027DC90 0027ABD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027DC94 0027ABD4  7C 08 03 A6 */	mtlr r0
/* 8027DC98 0027ABD8  38 21 00 40 */	addi r1, r1, 0x40
/* 8027DC9C 0027ABDC  4E 80 00 20 */	blr 

