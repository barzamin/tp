.include "macros.inc"

.section .text, "ax" # 80244558


.global dMsgScrnJimaku_c
dMsgScrnJimaku_c:
/* 80244558 00241498  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8024455C 0024149C  7C 08 02 A6 */	mflr r0
/* 80244560 002414A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80244564 002414A4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80244568 002414A8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8024456C 002414AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80244570 002414B0  48 11 DC 55 */	bl _savegpr_23
/* 80244574 002414B4  7C 7F 1B 78 */	mr r31, r3
/* 80244578 002414B8  7C 98 23 78 */	mr r24, r4
/* 8024457C 002414BC  7C B7 2B 78 */	mr r23, r5
/* 80244580 002414C0  4B FF 7B 5D */	bl dMsgScrnBase_c
/* 80244584 002414C4  3C 60 80 3C */	lis r3, lbl_803C11E8@ha
/* 80244588 002414C8  38 03 11 E8 */	addi r0, r3, lbl_803C11E8@l
/* 8024458C 002414CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80244590 002414D0  28 17 00 00 */	cmplwi r23, 0
/* 80244594 002414D4  41 82 00 0C */	beq lbl_802445A0
/* 80244598 002414D8  92 FF 00 C8 */	stw r23, 0xc8(r31)
/* 8024459C 002414DC  48 00 00 10 */	b lbl_802445AC
lbl_802445A0:
/* 802445A0 002414E0  38 60 00 07 */	li r3, 7
/* 802445A4 002414E4  4B DE 9E 2D */	bl dComIfGp_getSubHeap2D
/* 802445A8 002414E8  90 7F 00 C8 */	stw r3, 0xc8(r31)
lbl_802445AC:
/* 802445AC 002414EC  7F E3 FB 78 */	mr r3, r31
/* 802445B0 002414F0  4B FF 7B BD */	bl dMsgScrnBase_c_NS_init
/* 802445B4 002414F4  38 60 01 18 */	li r3, 0x118
/* 802445B8 002414F8  48 08 A6 95 */	bl __nw__FUl
/* 802445BC 002414FC  7C 60 1B 79 */	or. r0, r3, r3
/* 802445C0 00241500  41 82 00 0C */	beq lbl_802445CC
/* 802445C4 00241504  48 0B 3E D5 */	bl __ct__9J2DScreenFv
/* 802445C8 00241508  7C 60 1B 78 */	mr r0, r3
lbl_802445CC:
/* 802445CC 0024150C  90 1F 00 04 */	stw r0, 4(r31)
/* 802445D0 00241510  80 7F 00 04 */	lwz r3, 4(r31)
/* 802445D4 00241514  3C 80 80 3A */	lis r4, lbl_80399A80@ha
/* 802445D8 00241518  38 84 9A 80 */	addi r4, r4, lbl_80399A80@l
/* 802445DC 0024151C  3C A0 00 02 */	lis r5, 2
/* 802445E0 00241520  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 802445E4 00241524  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 802445E8 00241528  80 C6 5C E4 */	lwz r6, 0x5ce4(r6)
/* 802445EC 0024152C  48 0B 40 5D */	bl J2DScreen_NS_setPriority
/* 802445F0 00241530  80 7F 00 04 */	lwz r3, 4(r31)
/* 802445F4 00241534  48 01 0A F5 */	bl dPaneClass_showNullPane
/* 802445F8 00241538  38 60 00 24 */	li r3, 0x24
/* 802445FC 0024153C  48 08 A6 51 */	bl __nw__FUl
/* 80244600 00241540  7C 60 1B 79 */	or. r0, r3, r3
/* 80244604 00241544  41 82 00 14 */	beq lbl_80244618
/* 80244608 00241548  38 80 00 00 */	li r4, 0
/* 8024460C 0024154C  7F 05 C3 78 */	mr r5, r24
/* 80244610 00241550  48 00 13 25 */	bl dMsgScrnLight_c
/* 80244614 00241554  7C 60 1B 78 */	mr r0, r3
lbl_80244618:
/* 80244618 00241558  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8024461C 0024155C  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80244620 00241560  38 80 10 6A */	li r4, 0x106a
/* 80244624 00241564  38 A0 00 20 */	li r5, 0x20
/* 80244628 00241568  48 08 9E AD */	bl alloc__7JKRHeapFUli
/* 8024462C 0024156C  7C 78 1B 78 */	mr r24, r3
/* 80244630 00241570  38 80 00 00 */	li r4, 0
/* 80244634 00241574  38 A0 10 6A */	li r5, 0x106a
/* 80244638 00241578  4B DB EE 21 */	bl func_80003458
/* 8024463C 0024157C  93 1F 00 50 */	stw r24, 0x50(r31)
/* 80244640 00241580  38 60 00 6C */	li r3, 0x6c
/* 80244644 00241584  48 08 A6 09 */	bl __nw__FUl
/* 80244648 00241588  7C 60 1B 79 */	or. r0, r3, r3
/* 8024464C 0024158C  41 82 00 28 */	beq lbl_80244674
/* 80244650 00241590  80 9F 00 04 */	lwz r4, 4(r31)
/* 80244654 00241594  3C A0 6E 75 */	lis r5, 0x6E756C6C@ha
/* 80244658 00241598  38 C5 6C 6C */	addi r6, r5, 0x6E756C6C@l
/* 8024465C 0024159C  3C A0 00 6D */	lis r5, 0x006D675F@ha
/* 80244660 002415A0  38 A5 67 5F */	addi r5, r5, 0x006D675F@l
/* 80244664 002415A4  38 E0 00 03 */	li r7, 3
/* 80244668 002415A8  39 00 00 00 */	li r8, 0
/* 8024466C 002415AC  48 00 F3 19 */	bl CPaneMgr_X1_
/* 80244670 002415B0  7C 60 1B 78 */	mr r0, r3
lbl_80244674:
/* 80244674 002415B4  90 1F 00 08 */	stw r0, 8(r31)
/* 80244678 002415B8  3C 60 80 43 */	lis r3, lbl_8043028C@ha
/* 8024467C 002415BC  38 83 02 8C */	addi r4, r3, lbl_8043028C@l
/* 80244680 002415C0  C0 24 00 C0 */	lfs f1, 0xc0(r4)
/* 80244684 002415C4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80244688 002415C8  80 63 00 04 */	lwz r3, 4(r3)
/* 8024468C 002415CC  C0 04 00 94 */	lfs f0, 0x94(r4)
/* 80244690 002415D0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80244694 002415D4  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80244698 002415D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8024469C 002415DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802446A0 002415E0  7D 89 03 A6 */	mtctr r12
/* 802446A4 002415E4  4E 80 04 21 */	bctrl 
/* 802446A8 002415E8  3C 60 80 43 */	lis r3, lbl_8043028C@ha
/* 802446AC 002415EC  38 63 02 8C */	addi r3, r3, lbl_8043028C@l
/* 802446B0 002415F0  C0 03 02 60 */	lfs f0, 0x260(r3)
/* 802446B4 002415F4  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 802446B8 002415F8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802446BC 002415FC  C0 22 B2 B0 */	lfs f1, lbl_80454CB0-_SDA2_BASE_(r2)
/* 802446C0 00241600  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 802446C4 00241604  48 00 FE ED */	bl CPaneMgr_NS_paneTrans
/* 802446C8 00241608  38 60 00 6C */	li r3, 0x6c
/* 802446CC 0024160C  48 08 A5 81 */	bl __nw__FUl
/* 802446D0 00241610  7C 60 1B 79 */	or. r0, r3, r3
/* 802446D4 00241614  41 82 00 28 */	beq lbl_802446FC
/* 802446D8 00241618  80 9F 00 04 */	lwz r4, 4(r31)
/* 802446DC 0024161C  3C A0 34 6C */	lis r5, 0x346C696E@ha
/* 802446E0 00241620  38 C5 69 6E */	addi r6, r5, 0x346C696E@l
/* 802446E4 00241624  3C A0 6D 67 */	lis r5, 0x6D675F65@ha
/* 802446E8 00241628  38 A5 5F 65 */	addi r5, r5, 0x6D675F65@l
/* 802446EC 0024162C  38 E0 00 00 */	li r7, 0
/* 802446F0 00241630  39 00 00 00 */	li r8, 0
/* 802446F4 00241634  48 00 F2 91 */	bl CPaneMgr_X1_
/* 802446F8 00241638  7C 60 1B 78 */	mr r0, r3
lbl_802446FC:
/* 802446FC 0024163C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80244700 00241640  38 60 00 6C */	li r3, 0x6c
/* 80244704 00241644  48 08 A5 49 */	bl __nw__FUl
/* 80244708 00241648  7C 60 1B 79 */	or. r0, r3, r3
/* 8024470C 0024164C  41 82 00 24 */	beq lbl_80244730
/* 80244710 00241650  80 9F 00 04 */	lwz r4, 4(r31)
/* 80244714 00241654  3C A0 74 34 */	lis r5, 0x74345F73@ha
/* 80244718 00241658  38 C5 5F 73 */	addi r6, r5, 0x74345F73@l
/* 8024471C 0024165C  38 A0 00 00 */	li r5, 0
/* 80244720 00241660  38 E0 00 00 */	li r7, 0
/* 80244724 00241664  39 00 00 00 */	li r8, 0
/* 80244728 00241668  48 00 F2 5D */	bl CPaneMgr_X1_
/* 8024472C 0024166C  7C 60 1B 78 */	mr r0, r3
lbl_80244730:
/* 80244730 00241670  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80244734 00241674  80 7F 00 04 */	lwz r3, 4(r31)
/* 80244738 00241678  3C 80 6C 69 */	lis r4, 0x6C696E65@ha
/* 8024473C 0024167C  38 C4 6E 65 */	addi r6, r4, 0x6C696E65@l
/* 80244740 00241680  3C 80 00 6E */	lis r4, 0x006E5F33@ha
/* 80244744 00241684  38 A4 5F 33 */	addi r5, r4, 0x006E5F33@l
/* 80244748 00241688  81 83 00 00 */	lwz r12, 0(r3)
/* 8024474C 0024168C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80244750 00241690  7D 89 03 A6 */	mtctr r12
/* 80244754 00241694  4E 80 04 21 */	bctrl 
/* 80244758 00241698  38 00 00 00 */	li r0, 0
/* 8024475C 0024169C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80244760 002416A0  80 7F 00 04 */	lwz r3, 4(r31)
/* 80244764 002416A4  3C 80 6C 69 */	lis r4, 0x6C696E65@ha
/* 80244768 002416A8  38 C4 6E 65 */	addi r6, r4, 0x6C696E65@l
/* 8024476C 002416AC  3C 80 6E 5F */	lis r4, 0x6E5F3366@ha
/* 80244770 002416B0  38 A4 33 66 */	addi r5, r4, 0x6E5F3366@l
/* 80244774 002416B4  81 83 00 00 */	lwz r12, 0(r3)
/* 80244778 002416B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024477C 002416BC  7D 89 03 A6 */	mtctr r12
/* 80244780 002416C0  4E 80 04 21 */	bctrl 
/* 80244784 002416C4  38 00 00 00 */	li r0, 0
/* 80244788 002416C8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8024478C 002416CC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80244790 002416D0  3C 80 6C 69 */	lis r4, 0x6C696E65@ha
/* 80244794 002416D4  38 C4 6E 65 */	addi r6, r4, 0x6C696E65@l
/* 80244798 002416D8  3C 80 6E 5F */	lis r4, 0x6E5F6534@ha
/* 8024479C 002416DC  38 A4 65 34 */	addi r5, r4, 0x6E5F6534@l
/* 802447A0 002416E0  81 83 00 00 */	lwz r12, 0(r3)
/* 802447A4 002416E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802447A8 002416E8  7D 89 03 A6 */	mtctr r12
/* 802447AC 002416EC  4E 80 04 21 */	bctrl 
/* 802447B0 002416F0  38 00 00 01 */	li r0, 1
/* 802447B4 002416F4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802447B8 002416F8  3B 40 00 00 */	li r26, 0
/* 802447BC 002416FC  3B 20 00 00 */	li r25, 0
/* 802447C0 00241700  3B 00 00 00 */	li r24, 0
/* 802447C4 00241704  3C 60 80 3A */	lis r3, lbl_80399A80@ha
/* 802447C8 00241708  3B A3 9A 80 */	addi r29, r3, lbl_80399A80@l
/* 802447CC 0024170C  3C 60 80 43 */	lis r3, lbl_8043028C@ha
/* 802447D0 00241710  3B C3 02 8C */	addi r30, r3, lbl_8043028C@l
lbl_802447D4:
/* 802447D4 00241714  38 18 00 0C */	addi r0, r24, 0xc
/* 802447D8 00241718  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802447DC 0024171C  83 63 00 04 */	lwz r27, 4(r3)
/* 802447E0 00241720  4B DD 02 11 */	bl mDoExt_getMesgFont
/* 802447E4 00241724  7C 64 1B 78 */	mr r4, r3
/* 802447E8 00241728  7F 63 DB 78 */	mr r3, r27
/* 802447EC 0024172C  81 9B 00 00 */	lwz r12, 0(r27)
/* 802447F0 00241730  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802447F4 00241734  7D 89 03 A6 */	mtctr r12
/* 802447F8 00241738  4E 80 04 21 */	bctrl 
/* 802447FC 0024173C  38 18 00 0C */	addi r0, r24, 0xc
/* 80244800 00241740  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244804 00241744  80 63 00 04 */	lwz r3, 4(r3)
/* 80244808 00241748  38 80 02 00 */	li r4, 0x200
/* 8024480C 0024174C  38 BD 00 1E */	addi r5, r29, 0x1e
/* 80244810 00241750  4C C6 31 82 */	crclr 6
/* 80244814 00241754  48 0B BF 39 */	bl J2DTextBox_NS_setString_X1_
/* 80244818 00241758  7C 7E CA 14 */	add r3, r30, r25
/* 8024481C 0024175C  3B 83 01 48 */	addi r28, r3, 0x148
/* 80244820 00241760  80 03 01 48 */	lwz r0, 0x148(r3)
/* 80244824 00241764  90 01 00 10 */	stw r0, 0x10(r1)
/* 80244828 00241768  3B 63 00 F8 */	addi r27, r3, 0xf8
/* 8024482C 0024176C  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 80244830 00241770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244834 00241774  38 18 00 0C */	addi r0, r24, 0xc
/* 80244838 00241778  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8024483C 0024177C  38 81 00 14 */	addi r4, r1, 0x14
/* 80244840 00241780  38 A1 00 10 */	addi r5, r1, 0x10
/* 80244844 00241784  48 00 FC 15 */	bl CPaneMgr_NS_setBlackWhite
/* 80244848 00241788  38 18 00 28 */	addi r0, r24, 0x28
/* 8024484C 0024178C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244850 00241790  28 03 00 00 */	cmplwi r3, 0
/* 80244854 00241794  41 82 00 6C */	beq lbl_802448C0
/* 80244858 00241798  82 E3 00 04 */	lwz r23, 4(r3)
/* 8024485C 0024179C  4B DD 01 95 */	bl mDoExt_getMesgFont
/* 80244860 002417A0  7C 64 1B 78 */	mr r4, r3
/* 80244864 002417A4  7E E3 BB 78 */	mr r3, r23
/* 80244868 002417A8  81 97 00 00 */	lwz r12, 0(r23)
/* 8024486C 002417AC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80244870 002417B0  7D 89 03 A6 */	mtctr r12
/* 80244874 002417B4  4E 80 04 21 */	bctrl 
/* 80244878 002417B8  38 18 00 28 */	addi r0, r24, 0x28
/* 8024487C 002417BC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244880 002417C0  80 63 00 04 */	lwz r3, 4(r3)
/* 80244884 002417C4  38 80 02 00 */	li r4, 0x200
/* 80244888 002417C8  3C A0 80 3A */	lis r5, lbl_80399A80@ha
/* 8024488C 002417CC  38 A5 9A 80 */	addi r5, r5, lbl_80399A80@l
/* 80244890 002417D0  38 A5 00 1E */	addi r5, r5, 0x1e
/* 80244894 002417D4  4C C6 31 82 */	crclr 6
/* 80244898 002417D8  48 0B BE B5 */	bl J2DTextBox_NS_setString_X1_
/* 8024489C 002417DC  80 1C 00 00 */	lwz r0, 0(r28)
/* 802448A0 002417E0  90 01 00 08 */	stw r0, 8(r1)
/* 802448A4 002417E4  80 1B 00 00 */	lwz r0, 0(r27)
/* 802448A8 002417E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802448AC 002417EC  38 18 00 28 */	addi r0, r24, 0x28
/* 802448B0 002417F0  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802448B4 002417F4  38 81 00 0C */	addi r4, r1, 0xc
/* 802448B8 002417F8  38 A1 00 08 */	addi r5, r1, 8
/* 802448BC 002417FC  48 00 FB 9D */	bl CPaneMgr_NS_setBlackWhite
lbl_802448C0:
/* 802448C0 00241800  3B 5A 00 01 */	addi r26, r26, 1
/* 802448C4 00241804  2C 1A 00 02 */	cmpwi r26, 2
/* 802448C8 00241808  3B 39 00 28 */	addi r25, r25, 0x28
/* 802448CC 0024180C  3B 18 00 04 */	addi r24, r24, 4
/* 802448D0 00241810  41 80 FF 04 */	blt lbl_802447D4
/* 802448D4 00241814  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802448D8 00241818  80 63 00 04 */	lwz r3, 4(r3)
/* 802448DC 0024181C  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 802448E0 00241820  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802448E4 00241824  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 802448E8 00241828  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 802448EC 0024182C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802448F0 00241830  80 63 00 04 */	lwz r3, 4(r3)
/* 802448F4 00241834  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802448F8 00241838  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802448FC 0024183C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80244900 00241840  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80244904 00241844  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80244908 00241848  80 63 00 04 */	lwz r3, 4(r3)
/* 8024490C 0024184C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80244910 00241850  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80244914 00241854  EC 01 00 28 */	fsubs f0, f1, f0
/* 80244918 00241858  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8024491C 0024185C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80244920 00241860  80 63 00 04 */	lwz r3, 4(r3)
/* 80244924 00241864  C0 03 01 18 */	lfs f0, 0x118(r3)
/* 80244928 00241868  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8024492C 0024186C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80244930 00241870  80 63 00 04 */	lwz r3, 4(r3)
/* 80244934 00241874  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80244938 00241878  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8024493C 0024187C  3A E0 00 00 */	li r23, 0
/* 80244940 00241880  3B 40 00 00 */	li r26, 0
/* 80244944 00241884  C3 E2 B2 B4 */	lfs f31, lbl_80454CB4-_SDA2_BASE_(r2)
lbl_80244948:
/* 80244948 00241888  38 1A 00 0C */	addi r0, r26, 0xc
/* 8024494C 0024188C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244950 00241890  80 63 00 04 */	lwz r3, 4(r3)
/* 80244954 00241894  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80244958 00241898  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 8024495C 0024189C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244960 002418A0  80 63 00 04 */	lwz r3, 4(r3)
/* 80244964 002418A4  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80244968 002418A8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8024496C 002418AC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80244970 002418B0  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80244974 002418B4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80244978 002418B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8024497C 002418BC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80244980 002418C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80244984 002418C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80244988 002418C8  7D 89 03 A6 */	mtctr r12
/* 8024498C 002418CC  4E 80 04 21 */	bctrl 
/* 80244990 002418D0  3A F7 00 01 */	addi r23, r23, 1
/* 80244994 002418D4  2C 17 00 02 */	cmpwi r23, 2
/* 80244998 002418D8  3B 5A 00 04 */	addi r26, r26, 4
/* 8024499C 002418DC  41 80 FF AC */	blt lbl_80244948
/* 802449A0 002418E0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802449A4 002418E4  48 00 F9 45 */	bl CPaneMgr_NS_getGlobalPosX
/* 802449A8 002418E8  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 802449AC 002418EC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802449B0 002418F0  48 00 F9 B5 */	bl CPaneMgr_NS_getGlobalPosY
/* 802449B4 002418F4  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 802449B8 002418F8  3A E0 00 00 */	li r23, 0
/* 802449BC 002418FC  3B 40 00 00 */	li r26, 0
lbl_802449C0:
/* 802449C0 00241900  38 1A 00 28 */	addi r0, r26, 0x28
/* 802449C4 00241904  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802449C8 00241908  28 03 00 00 */	cmplwi r3, 0
/* 802449CC 0024190C  41 82 00 74 */	beq lbl_80244A40
/* 802449D0 00241910  80 63 00 04 */	lwz r3, 4(r3)
/* 802449D4 00241914  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 802449D8 00241918  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 802449DC 0024191C  2C 17 00 00 */	cmpwi r23, 0
/* 802449E0 00241920  40 82 00 24 */	bne lbl_80244A04
/* 802449E4 00241924  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802449E8 00241928  80 63 00 04 */	lwz r3, 4(r3)
/* 802449EC 0024192C  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 802449F0 00241930  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 802449F4 00241934  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802449F8 00241938  80 63 00 04 */	lwz r3, 4(r3)
/* 802449FC 0024193C  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80244A00 00241940  D0 1F 00 84 */	stfs f0, 0x84(r31)
lbl_80244A04:
/* 80244A04 00241944  38 1A 00 28 */	addi r0, r26, 0x28
/* 80244A08 00241948  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80244A0C 0024194C  80 63 00 04 */	lwz r3, 4(r3)
/* 80244A10 00241950  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80244A14 00241954  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80244A18 00241958  EC 41 00 28 */	fsubs f2, f1, f0
/* 80244A1C 0024195C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80244A20 00241960  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80244A24 00241964  EC 21 00 28 */	fsubs f1, f1, f0
/* 80244A28 00241968  C0 02 B2 B4 */	lfs f0, lbl_80454CB4-_SDA2_BASE_(r2)
/* 80244A2C 0024196C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80244A30 00241970  81 83 00 00 */	lwz r12, 0(r3)
/* 80244A34 00241974  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80244A38 00241978  7D 89 03 A6 */	mtctr r12
/* 80244A3C 0024197C  4E 80 04 21 */	bctrl 
lbl_80244A40:
/* 80244A40 00241980  3A F7 00 01 */	addi r23, r23, 1
/* 80244A44 00241984  2C 17 00 02 */	cmpwi r23, 2
/* 80244A48 00241988  3B 5A 00 04 */	addi r26, r26, 4
/* 80244A4C 0024198C  41 80 FF 74 */	blt lbl_802449C0
/* 80244A50 00241990  7F E3 FB 78 */	mr r3, r31
/* 80244A54 00241994  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80244A58 00241998  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80244A5C 0024199C  39 61 00 40 */	addi r11, r1, 0x40
/* 80244A60 002419A0  48 11 D7 B1 */	bl _restgpr_23
/* 80244A64 002419A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80244A68 002419A8  7C 08 03 A6 */	mtlr r0
/* 80244A6C 002419AC  38 21 00 50 */	addi r1, r1, 0x50
/* 80244A70 002419B0  4E 80 00 20 */	blr 
/* 80244A74 002419B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244A78 002419B8  7C 08 02 A6 */	mflr r0
/* 80244A7C 002419BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80244A80 002419C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80244A84 002419C4  48 11 D7 51 */	bl _savegpr_27
/* 80244A88 002419C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80244A8C 002419CC  7C 9F 23 78 */	mr r31, r4
/* 80244A90 002419D0  41 82 01 80 */	beq lbl_80244C10
/* 80244A94 002419D4  3C 60 80 3C */	lis r3, lbl_803C11E8@ha
/* 80244A98 002419D8  38 03 11 E8 */	addi r0, r3, lbl_803C11E8@l
/* 80244A9C 002419DC  90 1E 00 00 */	stw r0, 0(r30)
/* 80244AA0 002419E0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80244AA4 002419E4  28 03 00 00 */	cmplwi r3, 0
/* 80244AA8 002419E8  41 82 00 18 */	beq lbl_80244AC0
/* 80244AAC 002419EC  38 80 00 01 */	li r4, 1
/* 80244AB0 002419F0  81 83 00 00 */	lwz r12, 0(r3)
/* 80244AB4 002419F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244AB8 002419F8  7D 89 03 A6 */	mtctr r12
/* 80244ABC 002419FC  4E 80 04 21 */	bctrl 
lbl_80244AC0:
/* 80244AC0 00241A00  38 00 00 00 */	li r0, 0
/* 80244AC4 00241A04  90 1E 00 04 */	stw r0, 4(r30)
/* 80244AC8 00241A08  80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 80244ACC 00241A0C  28 03 00 00 */	cmplwi r3, 0
/* 80244AD0 00241A10  41 82 00 18 */	beq lbl_80244AE8
/* 80244AD4 00241A14  38 80 00 01 */	li r4, 1
/* 80244AD8 00241A18  81 83 00 00 */	lwz r12, 0(r3)
/* 80244ADC 00241A1C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244AE0 00241A20  7D 89 03 A6 */	mtctr r12
/* 80244AE4 00241A24  4E 80 04 21 */	bctrl 
lbl_80244AE8:
/* 80244AE8 00241A28  38 00 00 00 */	li r0, 0
/* 80244AEC 00241A2C  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 80244AF0 00241A30  80 9E 00 50 */	lwz r4, 0x50(r30)
/* 80244AF4 00241A34  28 04 00 00 */	cmplwi r4, 0
/* 80244AF8 00241A38  41 82 00 14 */	beq lbl_80244B0C
/* 80244AFC 00241A3C  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 80244B00 00241A40  48 08 9A 49 */	bl free__7JKRHeapFPv
/* 80244B04 00241A44  38 00 00 00 */	li r0, 0
/* 80244B08 00241A48  90 1E 00 50 */	stw r0, 0x50(r30)
lbl_80244B0C:
/* 80244B0C 00241A4C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80244B10 00241A50  28 03 00 00 */	cmplwi r3, 0
/* 80244B14 00241A54  41 82 00 18 */	beq lbl_80244B2C
/* 80244B18 00241A58  38 80 00 01 */	li r4, 1
/* 80244B1C 00241A5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80244B20 00241A60  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244B24 00241A64  7D 89 03 A6 */	mtctr r12
/* 80244B28 00241A68  4E 80 04 21 */	bctrl 
lbl_80244B2C:
/* 80244B2C 00241A6C  3B A0 00 00 */	li r29, 0
/* 80244B30 00241A70  93 BE 00 08 */	stw r29, 8(r30)
/* 80244B34 00241A74  3B 60 00 00 */	li r27, 0
lbl_80244B38:
/* 80244B38 00241A78  7F 9E EA 14 */	add r28, r30, r29
/* 80244B3C 00241A7C  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80244B40 00241A80  28 03 00 00 */	cmplwi r3, 0
/* 80244B44 00241A84  41 82 00 18 */	beq lbl_80244B5C
/* 80244B48 00241A88  38 80 00 01 */	li r4, 1
/* 80244B4C 00241A8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80244B50 00241A90  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244B54 00241A94  7D 89 03 A6 */	mtctr r12
/* 80244B58 00241A98  4E 80 04 21 */	bctrl 
lbl_80244B5C:
/* 80244B5C 00241A9C  38 00 00 00 */	li r0, 0
/* 80244B60 00241AA0  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80244B64 00241AA4  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80244B68 00241AA8  28 03 00 00 */	cmplwi r3, 0
/* 80244B6C 00241AAC  41 82 00 24 */	beq lbl_80244B90
/* 80244B70 00241AB0  41 82 00 18 */	beq lbl_80244B88
/* 80244B74 00241AB4  38 80 00 01 */	li r4, 1
/* 80244B78 00241AB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80244B7C 00241ABC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244B80 00241AC0  7D 89 03 A6 */	mtctr r12
/* 80244B84 00241AC4  4E 80 04 21 */	bctrl 
lbl_80244B88:
/* 80244B88 00241AC8  38 00 00 00 */	li r0, 0
/* 80244B8C 00241ACC  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_80244B90:
/* 80244B90 00241AD0  3B 7B 00 01 */	addi r27, r27, 1
/* 80244B94 00241AD4  2C 1B 00 02 */	cmpwi r27, 2
/* 80244B98 00241AD8  3B BD 00 04 */	addi r29, r29, 4
/* 80244B9C 00241ADC  41 80 FF 9C */	blt lbl_80244B38
/* 80244BA0 00241AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80244BA4 00241AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80244BA8 00241AE8  80 63 5C 6C */	lwz r3, 0x5c6c(r3)
/* 80244BAC 00241AEC  81 83 00 00 */	lwz r12, 0(r3)
/* 80244BB0 00241AF0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80244BB4 00241AF4  7D 89 03 A6 */	mtctr r12
/* 80244BB8 00241AF8  4E 80 04 21 */	bctrl 
/* 80244BBC 00241AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80244BC0 00241B00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80244BC4 00241B04  80 63 5C 70 */	lwz r3, 0x5c70(r3)
/* 80244BC8 00241B08  81 83 00 00 */	lwz r12, 0(r3)
/* 80244BCC 00241B0C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80244BD0 00241B10  7D 89 03 A6 */	mtctr r12
/* 80244BD4 00241B14  4E 80 04 21 */	bctrl 
/* 80244BD8 00241B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80244BDC 00241B1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80244BE0 00241B20  80 63 5C E4 */	lwz r3, 0x5ce4(r3)
/* 80244BE4 00241B24  81 83 00 00 */	lwz r12, 0(r3)
/* 80244BE8 00241B28  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80244BEC 00241B2C  7D 89 03 A6 */	mtctr r12
/* 80244BF0 00241B30  4E 80 04 21 */	bctrl 
/* 80244BF4 00241B34  7F C3 F3 78 */	mr r3, r30
/* 80244BF8 00241B38  38 80 00 00 */	li r4, 0
/* 80244BFC 00241B3C  4B FF 75 29 */	bl dMsgScrnBase_c_NS_dtor
/* 80244C00 00241B40  7F E0 07 35 */	extsh. r0, r31
/* 80244C04 00241B44  40 81 00 0C */	ble lbl_80244C10
/* 80244C08 00241B48  7F C3 F3 78 */	mr r3, r30
/* 80244C0C 00241B4C  48 08 A1 31 */	bl __dl__FPv
lbl_80244C10:
/* 80244C10 00241B50  7F C3 F3 78 */	mr r3, r30
/* 80244C14 00241B54  39 61 00 20 */	addi r11, r1, 0x20
/* 80244C18 00241B58  48 11 D6 09 */	bl _restgpr_27
/* 80244C1C 00241B5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244C20 00241B60  7C 08 03 A6 */	mtlr r0
/* 80244C24 00241B64  38 21 00 20 */	addi r1, r1, 0x20
/* 80244C28 00241B68  4E 80 00 20 */	blr 
/* 80244C2C 00241B6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80244C30 00241B70  7C 08 02 A6 */	mflr r0
/* 80244C34 00241B74  90 01 00 44 */	stw r0, 0x44(r1)
/* 80244C38 00241B78  39 61 00 40 */	addi r11, r1, 0x40
/* 80244C3C 00241B7C  48 11 D5 8D */	bl _savegpr_24
/* 80244C40 00241B80  7C 7F 1B 78 */	mr r31, r3
/* 80244C44 00241B84  4B FF 79 31 */	bl dMsgScrnBase_c_NS_isTalkNow
/* 80244C48 00241B88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80244C4C 00241B8C  41 82 00 1C */	beq lbl_80244C68
/* 80244C50 00241B90  7F E3 FB 78 */	mr r3, r31
/* 80244C54 00241B94  C0 22 B2 B8 */	lfs f1, lbl_80454CB8-_SDA2_BASE_(r2)
/* 80244C58 00241B98  81 9F 00 00 */	lwz r12, 0(r31)
/* 80244C5C 00241B9C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80244C60 00241BA0  7D 89 03 A6 */	mtctr r12
/* 80244C64 00241BA4  4E 80 04 21 */	bctrl 
lbl_80244C68:
/* 80244C68 00241BA8  3C 60 80 43 */	lis r3, lbl_8043028C@ha
/* 80244C6C 00241BAC  38 83 02 8C */	addi r4, r3, lbl_8043028C@l
/* 80244C70 00241BB0  C0 24 00 C0 */	lfs f1, 0xc0(r4)
/* 80244C74 00241BB4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80244C78 00241BB8  80 63 00 04 */	lwz r3, 4(r3)
/* 80244C7C 00241BBC  C0 04 00 94 */	lfs f0, 0x94(r4)
/* 80244C80 00241BC0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80244C84 00241BC4  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80244C88 00241BC8  81 83 00 00 */	lwz r12, 0(r3)
/* 80244C8C 00241BCC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80244C90 00241BD0  7D 89 03 A6 */	mtctr r12
/* 80244C94 00241BD4  4E 80 04 21 */	bctrl 
/* 80244C98 00241BD8  3B 00 00 00 */	li r24, 0
/* 80244C9C 00241BDC  3B C0 00 00 */	li r30, 0
/* 80244CA0 00241BE0  3B A0 00 00 */	li r29, 0
/* 80244CA4 00241BE4  3C 60 80 43 */	lis r3, lbl_8043028C@ha
/* 80244CA8 00241BE8  3B 83 02 8C */	addi r28, r3, lbl_8043028C@l
lbl_80244CAC:
/* 80244CAC 00241BEC  7C 7C EA 14 */	add r3, r28, r29
/* 80244CB0 00241BF0  3B 43 01 48 */	addi r26, r3, 0x148
/* 80244CB4 00241BF4  80 03 01 48 */	lwz r0, 0x148(r3)
/* 80244CB8 00241BF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80244CBC 00241BFC  3B 23 00 F8 */	addi r25, r3, 0xf8
/* 80244CC0 00241C00  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 80244CC4 00241C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244CC8 00241C08  7F 7F F2 14 */	add r27, r31, r30
/* 80244CCC 00241C0C  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 80244CD0 00241C10  38 81 00 14 */	addi r4, r1, 0x14
/* 80244CD4 00241C14  38 A1 00 10 */	addi r5, r1, 0x10
/* 80244CD8 00241C18  48 00 F7 81 */	bl CPaneMgr_NS_setBlackWhite
/* 80244CDC 00241C1C  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80244CE0 00241C20  28 00 00 00 */	cmplwi r0, 0
/* 80244CE4 00241C24  41 82 00 24 */	beq lbl_80244D08
/* 80244CE8 00241C28  80 1A 00 00 */	lwz r0, 0(r26)
/* 80244CEC 00241C2C  90 01 00 08 */	stw r0, 8(r1)
/* 80244CF0 00241C30  80 19 00 00 */	lwz r0, 0(r25)
/* 80244CF4 00241C34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80244CF8 00241C38  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80244CFC 00241C3C  38 81 00 0C */	addi r4, r1, 0xc
/* 80244D00 00241C40  38 A1 00 08 */	addi r5, r1, 8
/* 80244D04 00241C44  48 00 F7 55 */	bl CPaneMgr_NS_setBlackWhite
lbl_80244D08:
/* 80244D08 00241C48  3B 18 00 01 */	addi r24, r24, 1
/* 80244D0C 00241C4C  2C 18 00 02 */	cmpwi r24, 2
/* 80244D10 00241C50  3B DE 00 04 */	addi r30, r30, 4
/* 80244D14 00241C54  3B BD 00 28 */	addi r29, r29, 0x28
/* 80244D18 00241C58  41 80 FF 94 */	blt lbl_80244CAC
/* 80244D1C 00241C5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80244D20 00241C60  48 11 D4 F5 */	bl _restgpr_24
/* 80244D24 00241C64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80244D28 00241C68  7C 08 03 A6 */	mtlr r0
/* 80244D2C 00241C6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80244D30 00241C70  4E 80 00 20 */	blr 
/* 80244D34 00241C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244D38 00241C78  7C 08 02 A6 */	mflr r0
/* 80244D3C 00241C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80244D40 00241C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80244D44 00241C84  7C 7F 1B 78 */	mr r31, r3
/* 80244D48 00241C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80244D4C 00241C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80244D50 00241C90  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80244D54 00241C94  81 83 00 00 */	lwz r12, 0(r3)
/* 80244D58 00241C98  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80244D5C 00241C9C  7D 89 03 A6 */	mtctr r12
/* 80244D60 00241CA0  4E 80 04 21 */	bctrl 
/* 80244D64 00241CA4  7F E3 FB 78 */	mr r3, r31
/* 80244D68 00241CA8  C0 22 B2 B0 */	lfs f1, lbl_80454CB0-_SDA2_BASE_(r2)
/* 80244D6C 00241CAC  FC 40 08 90 */	fmr f2, f1
/* 80244D70 00241CB0  C0 62 B2 B8 */	lfs f3, lbl_80454CB8-_SDA2_BASE_(r2)
/* 80244D74 00241CB4  4B FF 75 B9 */	bl dMsgScrnBase_c_NS_drawOutFont
/* 80244D78 00241CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80244D7C 00241CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80244D80 00241CC0  7C 08 03 A6 */	mtlr r0
/* 80244D84 00241CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80244D88 00241CC8  4E 80 00 20 */	blr 
/* 80244D8C 00241CCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80244D90 00241CD0  7C 08 02 A6 */	mflr r0
/* 80244D94 00241CD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80244D98 00241CD8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80244D9C 00241CDC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80244DA0 00241CE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80244DA4 00241CE4  48 11 D4 35 */	bl _savegpr_28
/* 80244DA8 00241CE8  7C 7C 1B 78 */	mr r28, r3
/* 80244DAC 00241CEC  FF E0 08 90 */	fmr f31, f1
/* 80244DB0 00241CF0  80 63 00 08 */	lwz r3, 8(r3)
/* 80244DB4 00241CF4  3C 80 80 43 */	lis r4, lbl_8043028C@ha
/* 80244DB8 00241CF8  38 84 02 8C */	addi r4, r4, lbl_8043028C@l
/* 80244DBC 00241CFC  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80244DC0 00241D00  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80244DC4 00241D04  48 01 0A 0D */	bl CPaneMgrAlpha_NS_setAlphaRate
/* 80244DC8 00241D08  3B A0 00 00 */	li r29, 0
/* 80244DCC 00241D0C  3B E0 00 00 */	li r31, 0
lbl_80244DD0:
/* 80244DD0 00241D10  7F DC FA 14 */	add r30, r28, r31
/* 80244DD4 00241D14  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80244DD8 00241D18  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80244DDC 00241D1C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80244DE0 00241D20  48 01 09 F1 */	bl CPaneMgrAlpha_NS_setAlphaRate
/* 80244DE4 00241D24  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80244DE8 00241D28  28 03 00 00 */	cmplwi r3, 0
/* 80244DEC 00241D2C  41 82 00 10 */	beq lbl_80244DFC
/* 80244DF0 00241D30  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80244DF4 00241D34  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80244DF8 00241D38  48 01 09 D9 */	bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80244DFC:
/* 80244DFC 00241D3C  3B BD 00 01 */	addi r29, r29, 1
/* 80244E00 00241D40  2C 1D 00 02 */	cmpwi r29, 2
/* 80244E04 00241D44  3B FF 00 04 */	addi r31, r31, 4
/* 80244E08 00241D48  41 80 FF C8 */	blt lbl_80244DD0
/* 80244E0C 00241D4C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80244E10 00241D50  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80244E14 00241D54  39 61 00 20 */	addi r11, r1, 0x20
/* 80244E18 00241D58  48 11 D4 0D */	bl _restgpr_28
/* 80244E1C 00241D5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80244E20 00241D60  7C 08 03 A6 */	mtlr r0
/* 80244E24 00241D64  38 21 00 30 */	addi r1, r1, 0x30
/* 80244E28 00241D68  4E 80 00 20 */	blr 
/* 80244E2C 00241D6C  4E 80 00 20 */	blr 
/* 80244E30 00241D70  4E 80 00 20 */	blr 
/* 80244E34 00241D74  4E 80 00 20 */	blr 

