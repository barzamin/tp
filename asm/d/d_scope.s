.include "macros.inc"

.section .text, "ax" # 80193690


.global dScope_c
dScope_c:
/* 80193690 001905D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80193694 001905D4  7C 08 02 A6 */	mflr r0
/* 80193698 001905D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8019369C 001905DC  39 61 00 50 */	addi r11, r1, 0x50
/* 801936A0 001905E0  48 1C EB 3D */	bl _savegpr_29
/* 801936A4 001905E4  7C 7D 1B 78 */	mr r29, r3
/* 801936A8 001905E8  7C 9E 23 78 */	mr r30, r4
/* 801936AC 001905EC  3C 60 80 3A */	lis r3, lbl_803A6F88@ha
/* 801936B0 001905F0  38 03 6F 88 */	addi r0, r3, lbl_803A6F88@l
/* 801936B4 001905F4  90 1D 00 00 */	stw r0, 0(r29)
/* 801936B8 001905F8  3C 60 80 3C */	lis r3, lbl_803BB6D4@ha
/* 801936BC 001905FC  38 03 B6 D4 */	addi r0, r3, lbl_803BB6D4@l
/* 801936C0 00190600  90 1D 00 00 */	stw r0, 0(r29)
/* 801936C4 00190604  3C 60 80 3C */	lis r3, lbl_803BB6B4@ha
/* 801936C8 00190608  38 03 B6 B4 */	addi r0, r3, lbl_803BB6B4@l
/* 801936CC 0019060C  90 1D 00 00 */	stw r0, 0(r29)
/* 801936D0 00190610  38 7D 00 48 */	addi r3, r29, 0x48
.global JUtility_NS_TColor
/* 801936D4 00190614  3C 80 80 19 */	lis r4, JUtility_NS_TColor@ha
.global JUtility_NS_TColor
/* 801936D8 00190618  38 84 39 60 */	addi r4, r4, JUtility_NS_TColor@l
/* 801936DC 0019061C  38 A0 00 00 */	li r5, 0
/* 801936E0 00190620  38 C0 00 04 */	li r6, 4
/* 801936E4 00190624  38 E0 00 02 */	li r7, 2
/* 801936E8 00190628  48 1C E6 79 */	bl func_80361D60
/* 801936EC 0019062C  38 7D 00 50 */	addi r3, r29, 0x50
.global JUtility_NS_TColor
/* 801936F0 00190630  3C 80 80 19 */	lis r4, JUtility_NS_TColor@ha
.global JUtility_NS_TColor
/* 801936F4 00190634  38 84 39 60 */	addi r4, r4, JUtility_NS_TColor@l
/* 801936F8 00190638  38 A0 00 00 */	li r5, 0
/* 801936FC 0019063C  38 C0 00 04 */	li r6, 4
/* 80193700 00190640  38 E0 00 02 */	li r7, 2
/* 80193704 00190644  48 1C E6 5D */	bl func_80361D60
/* 80193708 00190648  38 00 FF FF */	li r0, -1
/* 8019370C 0019064C  90 1D 00 58 */	stw r0, 0x58(r29)
/* 80193710 00190650  90 1D 00 5C */	stw r0, 0x5c(r29)
/* 80193714 00190654  9B DD 00 8D */	stb r30, 0x8d(r29)
/* 80193718 00190658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019371C 0019065C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80193720 00190660  80 7F 5D 30 */	lwz r3, 0x5d30(r31)
/* 80193724 00190664  3C 80 54 49 */	lis r4, 0x54494D47@ha
/* 80193728 00190668  38 84 4D 47 */	addi r4, r4, 0x54494D47@l
/* 8019372C 0019066C  3C A0 80 39 */	lis r5, lbl_803949F0@ha
/* 80193730 00190670  38 A5 49 F0 */	addi r5, r5, lbl_803949F0@l
/* 80193734 00190674  81 83 00 00 */	lwz r12, 0(r3)
/* 80193738 00190678  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8019373C 0019067C  7D 89 03 A6 */	mtctr r12
/* 80193740 00190680  4E 80 04 21 */	bctrl 
/* 80193744 00190684  7C 7E 1B 78 */	mr r30, r3
/* 80193748 00190688  38 80 00 00 */	li r4, 0
/* 8019374C 0019068C  90 9D 00 04 */	stw r4, 4(r29)
/* 80193750 00190690  90 9D 00 0C */	stw r4, 0xc(r29)
/* 80193754 00190694  90 9D 00 08 */	stw r4, 8(r29)
/* 80193758 00190698  90 9D 00 10 */	stw r4, 0x10(r29)
/* 8019375C 0019069C  7C 83 23 78 */	mr r3, r4
/* 80193760 001906A0  38 00 00 03 */	li r0, 3
/* 80193764 001906A4  7C 09 03 A6 */	mtctr r0
lbl_80193768:
/* 80193768 001906A8  38 03 00 14 */	addi r0, r3, 0x14
/* 8019376C 001906AC  7C 9D 01 2E */	stwx r4, r29, r0
/* 80193770 001906B0  38 63 00 04 */	addi r3, r3, 4
/* 80193774 001906B4  42 00 FF F4 */	bdnz lbl_80193768
/* 80193778 001906B8  38 E0 00 00 */	li r7, 0
/* 8019377C 001906BC  38 60 00 00 */	li r3, 0
/* 80193780 001906C0  38 C0 00 00 */	li r6, 0
lbl_80193784:
/* 80193784 001906C4  38 80 00 00 */	li r4, 0
/* 80193788 001906C8  38 00 00 02 */	li r0, 2
/* 8019378C 001906CC  7C 09 03 A6 */	mtctr r0
lbl_80193790:
/* 80193790 001906D0  7C BD 22 14 */	add r5, r29, r4
/* 80193794 001906D4  38 05 00 20 */	addi r0, r5, 0x20
/* 80193798 001906D8  7C C3 01 2E */	stwx r6, r3, r0
/* 8019379C 001906DC  38 84 00 04 */	addi r4, r4, 4
/* 801937A0 001906E0  42 00 FF F0 */	bdnz lbl_80193790
/* 801937A4 001906E4  38 E7 00 01 */	addi r7, r7, 1
/* 801937A8 001906E8  2C 07 00 03 */	cmpwi r7, 3
/* 801937AC 001906EC  38 63 00 08 */	addi r3, r3, 8
/* 801937B0 001906F0  41 80 FF D4 */	blt lbl_80193784
/* 801937B4 001906F4  38 60 01 50 */	li r3, 0x150
/* 801937B8 001906F8  48 13 B4 95 */	bl __nw__FUl
/* 801937BC 001906FC  7C 60 1B 79 */	or. r0, r3, r3
/* 801937C0 00190700  41 82 00 10 */	beq lbl_801937D0
/* 801937C4 00190704  7F C4 F3 78 */	mr r4, r30
/* 801937C8 00190708  48 16 8F 41 */	bl J2DPicture_X3_
/* 801937CC 0019070C  7C 60 1B 78 */	mr r0, r3
lbl_801937D0:
/* 801937D0 00190710  90 1D 00 38 */	stw r0, 0x38(r29)
/* 801937D4 00190714  38 60 00 00 */	li r3, 0
/* 801937D8 00190718  98 61 00 18 */	stb r3, 0x18(r1)
/* 801937DC 0019071C  98 61 00 19 */	stb r3, 0x19(r1)
/* 801937E0 00190720  98 61 00 1A */	stb r3, 0x1a(r1)
/* 801937E4 00190724  38 00 00 FF */	li r0, 0xff
/* 801937E8 00190728  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801937EC 0019072C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801937F0 00190730  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801937F4 00190734  98 61 00 20 */	stb r3, 0x20(r1)
/* 801937F8 00190738  98 61 00 21 */	stb r3, 0x21(r1)
/* 801937FC 0019073C  98 61 00 22 */	stb r3, 0x22(r1)
/* 80193800 00190740  98 61 00 23 */	stb r3, 0x23(r1)
/* 80193804 00190744  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80193808 00190748  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019380C 0019074C  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 80193810 00190750  38 81 00 24 */	addi r4, r1, 0x24
/* 80193814 00190754  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80193818 00190758  81 83 00 00 */	lwz r12, 0(r3)
/* 8019381C 0019075C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80193820 00190760  7D 89 03 A6 */	mtctr r12
/* 80193824 00190764  4E 80 04 21 */	bctrl 
/* 80193828 00190768  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8019382C 0019076C  C8 22 A0 18 */	lfd f1, lbl_80453A18-_SDA2_BASE_(r2)
/* 80193830 00190770  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80193834 00190774  3C 60 43 30 */	lis r3, 0x4330
/* 80193838 00190778  90 61 00 28 */	stw r3, 0x28(r1)
/* 8019383C 0019077C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80193840 00190780  EC 00 08 28 */	fsubs f0, f0, f1
/* 80193844 00190784  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 80193848 00190788  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8019384C 0019078C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80193850 00190790  90 61 00 30 */	stw r3, 0x30(r1)
/* 80193854 00190794  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80193858 00190798  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019385C 0019079C  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 80193860 001907A0  80 7F 5D 30 */	lwz r3, 0x5d30(r31)
/* 80193864 001907A4  3C 80 54 49 */	lis r4, 0x54494D47@ha
/* 80193868 001907A8  38 84 4D 47 */	addi r4, r4, 0x54494D47@l
/* 8019386C 001907AC  3C A0 80 39 */	lis r5, lbl_803949F0@ha
/* 80193870 001907B0  38 A5 49 F0 */	addi r5, r5, lbl_803949F0@l
/* 80193874 001907B4  38 A5 00 0C */	addi r5, r5, 0xc
/* 80193878 001907B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8019387C 001907BC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80193880 001907C0  7D 89 03 A6 */	mtctr r12
/* 80193884 001907C4  4E 80 04 21 */	bctrl 
/* 80193888 001907C8  7C 7E 1B 78 */	mr r30, r3
/* 8019388C 001907CC  38 60 01 50 */	li r3, 0x150
/* 80193890 001907D0  48 13 B3 BD */	bl __nw__FUl
/* 80193894 001907D4  7C 60 1B 79 */	or. r0, r3, r3
/* 80193898 001907D8  41 82 00 10 */	beq lbl_801938A8
/* 8019389C 001907DC  7F C4 F3 78 */	mr r4, r30
/* 801938A0 001907E0  48 16 8E 69 */	bl J2DPicture_X3_
/* 801938A4 001907E4  7C 60 1B 78 */	mr r0, r3
lbl_801938A8:
/* 801938A8 001907E8  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 801938AC 001907EC  38 60 00 00 */	li r3, 0
/* 801938B0 001907F0  98 61 00 08 */	stb r3, 8(r1)
/* 801938B4 001907F4  98 61 00 09 */	stb r3, 9(r1)
/* 801938B8 001907F8  98 61 00 0A */	stb r3, 0xa(r1)
/* 801938BC 001907FC  38 00 00 FF */	li r0, 0xff
/* 801938C0 00190800  98 01 00 0B */	stb r0, 0xb(r1)
/* 801938C4 00190804  80 01 00 08 */	lwz r0, 8(r1)
/* 801938C8 00190808  90 01 00 0C */	stw r0, 0xc(r1)
/* 801938CC 0019080C  98 61 00 10 */	stb r3, 0x10(r1)
/* 801938D0 00190810  98 61 00 11 */	stb r3, 0x11(r1)
/* 801938D4 00190814  98 61 00 12 */	stb r3, 0x12(r1)
/* 801938D8 00190818  98 61 00 13 */	stb r3, 0x13(r1)
/* 801938DC 0019081C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801938E0 00190820  90 01 00 14 */	stw r0, 0x14(r1)
/* 801938E4 00190824  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 801938E8 00190828  38 81 00 14 */	addi r4, r1, 0x14
/* 801938EC 0019082C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801938F0 00190830  81 83 00 00 */	lwz r12, 0(r3)
/* 801938F4 00190834  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801938F8 00190838  7D 89 03 A6 */	mtctr r12
/* 801938FC 0019083C  4E 80 04 21 */	bctrl 
/* 80193900 00190840  C0 02 A0 10 */	lfs f0, lbl_80453A10-_SDA2_BASE_(r2)
/* 80193904 00190844  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 80193908 00190848  C0 02 A0 14 */	lfs f0, lbl_80453A14-_SDA2_BASE_(r2)
/* 8019390C 0019084C  D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 80193910 00190850  38 00 00 00 */	li r0, 0
/* 80193914 00190854  B0 1D 00 88 */	sth r0, 0x88(r29)
/* 80193918 00190858  B0 1D 00 8A */	sth r0, 0x8a(r29)
/* 8019391C 0019085C  98 1D 00 8C */	stb r0, 0x8c(r29)
/* 80193920 00190860  98 1D 00 8E */	stb r0, 0x8e(r29)
/* 80193924 00190864  7F A3 EB 78 */	mr r3, r29
/* 80193928 00190868  88 1D 00 8C */	lbz r0, 0x8c(r29)
/* 8019392C 0019086C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80193930 00190870  3C 80 80 3C */	lis r4, lbl_803BB648@ha
/* 80193934 00190874  38 04 B6 48 */	addi r0, r4, lbl_803BB648@l
/* 80193938 00190878  7D 80 2A 14 */	add r12, r0, r5
/* 8019393C 0019087C  48 1C E7 49 */	bl func_80362084
/* 80193940 00190880  60 00 00 00 */	nop 
/* 80193944 00190884  7F A3 EB 78 */	mr r3, r29
/* 80193948 00190888  39 61 00 50 */	addi r11, r1, 0x50
/* 8019394C 0019088C  48 1C E8 DD */	bl _restgpr_29
/* 80193950 00190890  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80193954 00190894  7C 08 03 A6 */	mtlr r0
/* 80193958 00190898  38 21 00 50 */	addi r1, r1, 0x50
/* 8019395C 0019089C  4E 80 00 20 */	blr 
.global JUtility_NS_TColor
JUtility_NS_TColor:
/* 80193960 001908A0  38 00 FF FF */	li r0, -1
/* 80193964 001908A4  90 03 00 00 */	stw r0, 0(r3)
/* 80193968 001908A8  4E 80 00 20 */	blr 
/* 8019396C 001908AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80193970 001908B0  7C 08 02 A6 */	mflr r0
/* 80193974 001908B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80193978 001908B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8019397C 001908BC  48 1C E8 49 */	bl _savegpr_23
/* 80193980 001908C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80193984 001908C4  7C 9F 23 78 */	mr r31, r4
/* 80193988 001908C8  41 82 01 EC */	beq lbl_80193B74
/* 8019398C 001908CC  3C 60 80 3C */	lis r3, lbl_803BB6B4@ha
/* 80193990 001908D0  38 03 B6 B4 */	addi r0, r3, lbl_803BB6B4@l
/* 80193994 001908D4  90 1E 00 00 */	stw r0, 0(r30)
/* 80193998 001908D8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8019399C 001908DC  28 03 00 00 */	cmplwi r3, 0
/* 801939A0 001908E0  41 82 00 24 */	beq lbl_801939C4
/* 801939A4 001908E4  41 82 00 18 */	beq lbl_801939BC
/* 801939A8 001908E8  38 80 00 01 */	li r4, 1
/* 801939AC 001908EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801939B0 001908F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801939B4 001908F4  7D 89 03 A6 */	mtctr r12
/* 801939B8 001908F8  4E 80 04 21 */	bctrl 
lbl_801939BC:
/* 801939BC 001908FC  38 00 00 00 */	li r0, 0
/* 801939C0 00190900  90 1E 00 04 */	stw r0, 4(r30)
lbl_801939C4:
/* 801939C4 00190904  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801939C8 00190908  28 03 00 00 */	cmplwi r3, 0
/* 801939CC 0019090C  41 82 00 24 */	beq lbl_801939F0
/* 801939D0 00190910  41 82 00 18 */	beq lbl_801939E8
/* 801939D4 00190914  38 80 00 01 */	li r4, 1
/* 801939D8 00190918  81 83 00 00 */	lwz r12, 0(r3)
/* 801939DC 0019091C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801939E0 00190920  7D 89 03 A6 */	mtctr r12
/* 801939E4 00190924  4E 80 04 21 */	bctrl 
lbl_801939E8:
/* 801939E8 00190928  38 00 00 00 */	li r0, 0
/* 801939EC 0019092C  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_801939F0:
/* 801939F0 00190930  3B 20 00 00 */	li r25, 0
/* 801939F4 00190934  3B 80 00 00 */	li r28, 0
/* 801939F8 00190938  7F 9B E3 78 */	mr r27, r28
lbl_801939FC:
/* 801939FC 0019093C  3B 5C 00 14 */	addi r26, r28, 0x14
/* 80193A00 00190940  7C 7E D0 2E */	lwzx r3, r30, r26
/* 80193A04 00190944  28 03 00 00 */	cmplwi r3, 0
/* 80193A08 00190948  41 82 00 20 */	beq lbl_80193A28
/* 80193A0C 0019094C  41 82 00 18 */	beq lbl_80193A24
/* 80193A10 00190950  38 80 00 01 */	li r4, 1
/* 80193A14 00190954  81 83 00 00 */	lwz r12, 0(r3)
/* 80193A18 00190958  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193A1C 0019095C  7D 89 03 A6 */	mtctr r12
/* 80193A20 00190960  4E 80 04 21 */	bctrl 
lbl_80193A24:
/* 80193A24 00190964  7F 7E D1 2E */	stwx r27, r30, r26
lbl_80193A28:
/* 80193A28 00190968  3B 39 00 01 */	addi r25, r25, 1
/* 80193A2C 0019096C  2C 19 00 03 */	cmpwi r25, 3
/* 80193A30 00190970  3B 9C 00 04 */	addi r28, r28, 4
/* 80193A34 00190974  41 80 FF C8 */	blt lbl_801939FC
/* 80193A38 00190978  80 7E 00 08 */	lwz r3, 8(r30)
/* 80193A3C 0019097C  28 03 00 00 */	cmplwi r3, 0
/* 80193A40 00190980  41 82 00 24 */	beq lbl_80193A64
/* 80193A44 00190984  41 82 00 18 */	beq lbl_80193A5C
/* 80193A48 00190988  38 80 00 01 */	li r4, 1
/* 80193A4C 0019098C  81 83 00 00 */	lwz r12, 0(r3)
/* 80193A50 00190990  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193A54 00190994  7D 89 03 A6 */	mtctr r12
/* 80193A58 00190998  4E 80 04 21 */	bctrl 
lbl_80193A5C:
/* 80193A5C 0019099C  38 00 00 00 */	li r0, 0
/* 80193A60 001909A0  90 1E 00 08 */	stw r0, 8(r30)
lbl_80193A64:
/* 80193A64 001909A4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80193A68 001909A8  28 03 00 00 */	cmplwi r3, 0
/* 80193A6C 001909AC  41 82 00 24 */	beq lbl_80193A90
/* 80193A70 001909B0  41 82 00 18 */	beq lbl_80193A88
/* 80193A74 001909B4  38 80 00 01 */	li r4, 1
/* 80193A78 001909B8  81 83 00 00 */	lwz r12, 0(r3)
/* 80193A7C 001909BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193A80 001909C0  7D 89 03 A6 */	mtctr r12
/* 80193A84 001909C4  4E 80 04 21 */	bctrl 
lbl_80193A88:
/* 80193A88 001909C8  38 00 00 00 */	li r0, 0
/* 80193A8C 001909CC  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_80193A90:
/* 80193A90 001909D0  3B 00 00 00 */	li r24, 0
/* 80193A94 001909D4  3B A0 00 00 */	li r29, 0
lbl_80193A98:
/* 80193A98 001909D8  3A E0 00 00 */	li r23, 0
/* 80193A9C 001909DC  3B 80 00 00 */	li r28, 0
/* 80193AA0 001909E0  7F 5E EA 14 */	add r26, r30, r29
/* 80193AA4 001909E4  3B 60 00 00 */	li r27, 0
lbl_80193AA8:
/* 80193AA8 001909E8  3B 3C 00 20 */	addi r25, r28, 0x20
/* 80193AAC 001909EC  7C 7A C8 2E */	lwzx r3, r26, r25
/* 80193AB0 001909F0  28 03 00 00 */	cmplwi r3, 0
/* 80193AB4 001909F4  41 82 00 20 */	beq lbl_80193AD4
/* 80193AB8 001909F8  41 82 00 18 */	beq lbl_80193AD0
/* 80193ABC 001909FC  38 80 00 01 */	li r4, 1
/* 80193AC0 00190A00  81 83 00 00 */	lwz r12, 0(r3)
/* 80193AC4 00190A04  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193AC8 00190A08  7D 89 03 A6 */	mtctr r12
/* 80193ACC 00190A0C  4E 80 04 21 */	bctrl 
lbl_80193AD0:
/* 80193AD0 00190A10  7F 7A C9 2E */	stwx r27, r26, r25
lbl_80193AD4:
/* 80193AD4 00190A14  3A F7 00 01 */	addi r23, r23, 1
/* 80193AD8 00190A18  2C 17 00 02 */	cmpwi r23, 2
/* 80193ADC 00190A1C  3B 9C 00 04 */	addi r28, r28, 4
/* 80193AE0 00190A20  41 80 FF C8 */	blt lbl_80193AA8
/* 80193AE4 00190A24  3B 18 00 01 */	addi r24, r24, 1
/* 80193AE8 00190A28  2C 18 00 03 */	cmpwi r24, 3
/* 80193AEC 00190A2C  3B BD 00 08 */	addi r29, r29, 8
/* 80193AF0 00190A30  41 80 FF A8 */	blt lbl_80193A98
/* 80193AF4 00190A34  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80193AF8 00190A38  28 03 00 00 */	cmplwi r3, 0
/* 80193AFC 00190A3C  41 82 00 18 */	beq lbl_80193B14
/* 80193B00 00190A40  38 80 00 01 */	li r4, 1
/* 80193B04 00190A44  81 83 00 00 */	lwz r12, 0(r3)
/* 80193B08 00190A48  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193B0C 00190A4C  7D 89 03 A6 */	mtctr r12
/* 80193B10 00190A50  4E 80 04 21 */	bctrl 
lbl_80193B14:
/* 80193B14 00190A54  38 00 00 00 */	li r0, 0
/* 80193B18 00190A58  90 1E 00 38 */	stw r0, 0x38(r30)
/* 80193B1C 00190A5C  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80193B20 00190A60  28 03 00 00 */	cmplwi r3, 0
/* 80193B24 00190A64  41 82 00 18 */	beq lbl_80193B3C
/* 80193B28 00190A68  38 80 00 01 */	li r4, 1
/* 80193B2C 00190A6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80193B30 00190A70  81 8C 00 08 */	lwz r12, 8(r12)
/* 80193B34 00190A74  7D 89 03 A6 */	mtctr r12
/* 80193B38 00190A78  4E 80 04 21 */	bctrl 
lbl_80193B3C:
/* 80193B3C 00190A7C  38 00 00 00 */	li r0, 0
/* 80193B40 00190A80  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80193B44 00190A84  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80193B48 00190A88  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80193B4C 00190A8C  98 03 00 E7 */	stb r0, 0xe7(r3)
/* 80193B50 00190A90  28 1E 00 00 */	cmplwi r30, 0
/* 80193B54 00190A94  41 82 00 10 */	beq lbl_80193B64
/* 80193B58 00190A98  3C 60 80 3C */	lis r3, lbl_803BB6D4@ha
/* 80193B5C 00190A9C  38 03 B6 D4 */	addi r0, r3, lbl_803BB6D4@l
/* 80193B60 00190AA0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80193B64:
/* 80193B64 00190AA4  7F E0 07 35 */	extsh. r0, r31
/* 80193B68 00190AA8  40 81 00 0C */	ble lbl_80193B74
/* 80193B6C 00190AAC  7F C3 F3 78 */	mr r3, r30
/* 80193B70 00190AB0  48 13 B1 CD */	bl __dl__FPv
lbl_80193B74:
/* 80193B74 00190AB4  7F C3 F3 78 */	mr r3, r30
/* 80193B78 00190AB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80193B7C 00190ABC  48 1C E6 95 */	bl _restgpr_23
/* 80193B80 00190AC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80193B84 00190AC4  7C 08 03 A6 */	mtlr r0
/* 80193B88 00190AC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80193B8C 00190ACC  4E 80 00 20 */	blr 
/* 80193B90 00190AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80193B94 00190AD4  7C 08 02 A6 */	mflr r0
/* 80193B98 00190AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80193B9C 00190ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80193BA0 00190AE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80193BA4 00190AE4  7C 7E 1B 78 */	mr r30, r3
/* 80193BA8 00190AE8  8B E3 00 8C */	lbz r31, 0x8c(r3)
/* 80193BAC 00190AEC  1C BF 00 0C */	mulli r5, r31, 0xc
/* 80193BB0 00190AF0  3C 80 80 3C */	lis r4, lbl_803BB690@ha
/* 80193BB4 00190AF4  38 04 B6 90 */	addi r0, r4, lbl_803BB690@l
/* 80193BB8 00190AF8  7D 80 2A 14 */	add r12, r0, r5
/* 80193BBC 00190AFC  48 1C E4 C9 */	bl func_80362084
/* 80193BC0 00190B00  60 00 00 00 */	nop 
/* 80193BC4 00190B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80193BC8 00190B08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80193BCC 00190B0C  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80193BD0 00190B10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80193BD4 00190B14  40 82 00 0C */	bne lbl_80193BE0
/* 80193BD8 00190B18  38 00 00 02 */	li r0, 2
/* 80193BDC 00190B1C  98 1E 00 8C */	stb r0, 0x8c(r30)
lbl_80193BE0:
/* 80193BE0 00190B20  88 1E 00 8C */	lbz r0, 0x8c(r30)
/* 80193BE4 00190B24  7C 00 F8 40 */	cmplw r0, r31
/* 80193BE8 00190B28  41 82 00 20 */	beq lbl_80193C08
/* 80193BEC 00190B2C  7F C3 F3 78 */	mr r3, r30
/* 80193BF0 00190B30  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80193BF4 00190B34  3C 80 80 3C */	lis r4, lbl_803BB648@ha
/* 80193BF8 00190B38  38 04 B6 48 */	addi r0, r4, lbl_803BB648@l
/* 80193BFC 00190B3C  7D 80 2A 14 */	add r12, r0, r5
/* 80193C00 00190B40  48 1C E4 85 */	bl func_80362084
/* 80193C04 00190B44  60 00 00 00 */	nop 
lbl_80193C08:
/* 80193C08 00190B48  88 1E 00 8C */	lbz r0, 0x8c(r30)
/* 80193C0C 00190B4C  28 00 00 02 */	cmplwi r0, 2
/* 80193C10 00190B50  41 82 00 3C */	beq lbl_80193C4C
/* 80193C14 00190B54  38 00 00 3D */	li r0, 0x3d
/* 80193C18 00190B58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80193C1C 00190B5C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80193C20 00190B60  98 04 5E 3F */	stb r0, 0x5e3f(r4)
/* 80193C24 00190B64  38 00 00 0A */	li r0, 0xa
/* 80193C28 00190B68  98 04 5E 31 */	stb r0, 0x5e31(r4)
/* 80193C2C 00190B6C  38 60 00 03 */	li r3, 3
/* 80193C30 00190B70  98 64 5E 59 */	stb r3, 0x5e59(r4)
/* 80193C34 00190B74  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 80193C38 00190B78  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80193C3C 00190B7C  41 82 00 10 */	beq lbl_80193C4C
/* 80193C40 00190B80  38 00 00 11 */	li r0, 0x11
/* 80193C44 00190B84  98 04 5E 34 */	stb r0, 0x5e34(r4)
/* 80193C48 00190B88  98 64 5E 4F */	stb r3, 0x5e4f(r4)
lbl_80193C4C:
/* 80193C4C 00190B8C  38 60 00 01 */	li r3, 1
/* 80193C50 00190B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80193C54 00190B94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80193C58 00190B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80193C5C 00190B9C  7C 08 03 A6 */	mtlr r0
/* 80193C60 00190BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80193C64 00190BA4  4E 80 00 20 */	blr 
/* 80193C68 00190BA8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80193C6C 00190BAC  7C 08 02 A6 */	mflr r0
/* 80193C70 00190BB0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80193C74 00190BB4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80193C78 00190BB8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80193C7C 00190BBC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80193C80 00190BC0  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 80193C84 00190BC4  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80193C88 00190BC8  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 80193C8C 00190BCC  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80193C90 00190BD0  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 80193C94 00190BD4  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 80193C98 00190BD8  F3 61 00 48 */	psq_st f27, 72(r1), 0, qr0
/* 80193C9C 00190BDC  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 80193CA0 00190BE0  F3 41 00 38 */	psq_st f26, 56(r1), 0, qr0
/* 80193CA4 00190BE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80193CA8 00190BE8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80193CAC 00190BEC  7C 7E 1B 78 */	mr r30, r3
/* 80193CB0 00190BF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80193CB4 00190BF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80193CB8 00190BF8  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80193CBC 00190BFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80193CC0 00190C00  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80193CC4 00190C04  7D 89 03 A6 */	mtctr r12
/* 80193CC8 00190C08  4E 80 04 21 */	bctrl 
/* 80193CCC 00190C0C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80193CD0 00190C10  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80193CD4 00190C14  EF E0 00 72 */	fmuls f31, f0, f1
/* 80193CD8 00190C18  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80193CDC 00190C1C  EF C0 00 72 */	fmuls f30, f0, f1
/* 80193CE0 00190C20  C0 22 A0 20 */	lfs f1, lbl_80453A20-_SDA2_BASE_(r2)
/* 80193CE4 00190C24  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80193CE8 00190C28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80193CEC 00190C2C  FC 00 00 1E */	fctiwz f0, f0
/* 80193CF0 00190C30  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80193CF4 00190C34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80193CF8 00190C38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80193CFC 00190C3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80193D00 00190C40  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80193D04 00190C44  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80193D08 00190C48  41 82 00 7C */	beq lbl_80193D84
/* 80193D0C 00190C4C  38 00 00 FF */	li r0, 0xff
/* 80193D10 00190C50  98 01 00 10 */	stb r0, 0x10(r1)
/* 80193D14 00190C54  38 00 00 00 */	li r0, 0
/* 80193D18 00190C58  98 01 00 11 */	stb r0, 0x11(r1)
/* 80193D1C 00190C5C  98 01 00 12 */	stb r0, 0x12(r1)
/* 80193D20 00190C60  9B E1 00 13 */	stb r31, 0x13(r1)
/* 80193D24 00190C64  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80193D28 00190C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80193D2C 00190C6C  C0 22 A0 24 */	lfs f1, lbl_80453A24-_SDA2_BASE_(r2)
/* 80193D30 00190C70  C0 42 A0 14 */	lfs f2, lbl_80453A14-_SDA2_BASE_(r2)
/* 80193D34 00190C74  FC 60 08 90 */	fmr f3, f1
/* 80193D38 00190C78  C0 82 A0 28 */	lfs f4, lbl_80453A28-_SDA2_BASE_(r2)
/* 80193D3C 00190C7C  38 61 00 14 */	addi r3, r1, 0x14
/* 80193D40 00190C80  38 80 00 06 */	li r4, 6
/* 80193D44 00190C84  48 15 5C 55 */	bl J2DDrawLine
/* 80193D48 00190C88  38 00 00 FF */	li r0, 0xff
/* 80193D4C 00190C8C  98 01 00 08 */	stb r0, 8(r1)
/* 80193D50 00190C90  38 00 00 00 */	li r0, 0
/* 80193D54 00190C94  98 01 00 09 */	stb r0, 9(r1)
/* 80193D58 00190C98  98 01 00 0A */	stb r0, 0xa(r1)
/* 80193D5C 00190C9C  9B E1 00 0B */	stb r31, 0xb(r1)
/* 80193D60 00190CA0  80 01 00 08 */	lwz r0, 8(r1)
/* 80193D64 00190CA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80193D68 00190CA8  C0 22 A0 14 */	lfs f1, lbl_80453A14-_SDA2_BASE_(r2)
/* 80193D6C 00190CAC  C0 42 A0 2C */	lfs f2, lbl_80453A2C-_SDA2_BASE_(r2)
/* 80193D70 00190CB0  C0 62 A0 30 */	lfs f3, lbl_80453A30-_SDA2_BASE_(r2)
/* 80193D74 00190CB4  FC 80 10 90 */	fmr f4, f2
/* 80193D78 00190CB8  38 61 00 0C */	addi r3, r1, 0xc
/* 80193D7C 00190CBC  38 80 00 06 */	li r4, 6
/* 80193D80 00190CC0  48 15 5C 19 */	bl J2DDrawLine
lbl_80193D84:
/* 80193D84 00190CC4  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80193D88 00190CC8  7F E4 FB 78 */	mr r4, r31
/* 80193D8C 00190CCC  81 83 00 00 */	lwz r12, 0(r3)
/* 80193D90 00190CD0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80193D94 00190CD4  7D 89 03 A6 */	mtctr r12
/* 80193D98 00190CD8  4E 80 04 21 */	bctrl 
/* 80193D9C 00190CDC  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80193DA0 00190CE0  7F E4 FB 78 */	mr r4, r31
/* 80193DA4 00190CE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80193DA8 00190CE8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80193DAC 00190CEC  7D 89 03 A6 */	mtctr r12
/* 80193DB0 00190CF0  4E 80 04 21 */	bctrl 
/* 80193DB4 00190CF4  C0 02 A0 24 */	lfs f0, lbl_80453A24-_SDA2_BASE_(r2)
/* 80193DB8 00190CF8  EF A0 F8 28 */	fsubs f29, f0, f31
/* 80193DBC 00190CFC  EF 80 F8 2A */	fadds f28, f0, f31
/* 80193DC0 00190D00  C0 02 A0 2C */	lfs f0, lbl_80453A2C-_SDA2_BASE_(r2)
/* 80193DC4 00190D04  EF 60 F0 28 */	fsubs f27, f0, f30
/* 80193DC8 00190D08  EF 40 F0 2A */	fadds f26, f0, f30
/* 80193DCC 00190D0C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80193DD0 00190D10  FC 20 E8 90 */	fmr f1, f29
/* 80193DD4 00190D14  FC 40 D8 90 */	fmr f2, f27
/* 80193DD8 00190D18  FC 60 F8 90 */	fmr f3, f31
/* 80193DDC 00190D1C  FC 80 F0 90 */	fmr f4, f30
/* 80193DE0 00190D20  38 80 00 00 */	li r4, 0
/* 80193DE4 00190D24  38 A0 00 00 */	li r5, 0
/* 80193DE8 00190D28  38 C0 00 00 */	li r6, 0
/* 80193DEC 00190D2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80193DF0 00190D30  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80193DF4 00190D34  7D 89 03 A6 */	mtctr r12
/* 80193DF8 00190D38  4E 80 04 21 */	bctrl 
/* 80193DFC 00190D3C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80193E00 00190D40  C0 22 A0 24 */	lfs f1, lbl_80453A24-_SDA2_BASE_(r2)
/* 80193E04 00190D44  FC 40 D8 90 */	fmr f2, f27
/* 80193E08 00190D48  FC 60 F8 90 */	fmr f3, f31
/* 80193E0C 00190D4C  FC 80 F0 90 */	fmr f4, f30
/* 80193E10 00190D50  38 80 00 01 */	li r4, 1
/* 80193E14 00190D54  38 A0 00 00 */	li r5, 0
/* 80193E18 00190D58  38 C0 00 00 */	li r6, 0
/* 80193E1C 00190D5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80193E20 00190D60  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80193E24 00190D64  7D 89 03 A6 */	mtctr r12
/* 80193E28 00190D68  4E 80 04 21 */	bctrl 
/* 80193E2C 00190D6C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80193E30 00190D70  FC 20 E8 90 */	fmr f1, f29
/* 80193E34 00190D74  C0 42 A0 2C */	lfs f2, lbl_80453A2C-_SDA2_BASE_(r2)
/* 80193E38 00190D78  FC 60 F8 90 */	fmr f3, f31
/* 80193E3C 00190D7C  FC 80 F0 90 */	fmr f4, f30
/* 80193E40 00190D80  38 80 00 00 */	li r4, 0
/* 80193E44 00190D84  38 A0 00 01 */	li r5, 1
/* 80193E48 00190D88  38 C0 00 00 */	li r6, 0
/* 80193E4C 00190D8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80193E50 00190D90  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80193E54 00190D94  7D 89 03 A6 */	mtctr r12
/* 80193E58 00190D98  4E 80 04 21 */	bctrl 
/* 80193E5C 00190D9C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80193E60 00190DA0  C0 22 A0 24 */	lfs f1, lbl_80453A24-_SDA2_BASE_(r2)
/* 80193E64 00190DA4  C0 42 A0 2C */	lfs f2, lbl_80453A2C-_SDA2_BASE_(r2)
/* 80193E68 00190DA8  FC 60 F8 90 */	fmr f3, f31
/* 80193E6C 00190DAC  FC 80 F0 90 */	fmr f4, f30
/* 80193E70 00190DB0  38 80 00 01 */	li r4, 1
/* 80193E74 00190DB4  38 A0 00 01 */	li r5, 1
/* 80193E78 00190DB8  38 C0 00 00 */	li r6, 0
/* 80193E7C 00190DBC  81 83 00 00 */	lwz r12, 0(r3)
/* 80193E80 00190DC0  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80193E84 00190DC4  7D 89 03 A6 */	mtctr r12
/* 80193E88 00190DC8  4E 80 04 21 */	bctrl 
/* 80193E8C 00190DCC  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80193E90 00190DD0  C0 22 A0 14 */	lfs f1, lbl_80453A14-_SDA2_BASE_(r2)
/* 80193E94 00190DD4  FC 40 08 90 */	fmr f2, f1
/* 80193E98 00190DD8  C0 62 A0 30 */	lfs f3, lbl_80453A30-_SDA2_BASE_(r2)
/* 80193E9C 00190DDC  EC 9B 08 28 */	fsubs f4, f27, f1
/* 80193EA0 00190DE0  38 80 00 00 */	li r4, 0
/* 80193EA4 00190DE4  38 A0 00 00 */	li r5, 0
/* 80193EA8 00190DE8  38 C0 00 00 */	li r6, 0
/* 80193EAC 00190DEC  81 83 00 00 */	lwz r12, 0(r3)
/* 80193EB0 00190DF0  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80193EB4 00190DF4  7D 89 03 A6 */	mtctr r12
/* 80193EB8 00190DF8  4E 80 04 21 */	bctrl 
/* 80193EBC 00190DFC  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80193EC0 00190E00  C0 22 A0 14 */	lfs f1, lbl_80453A14-_SDA2_BASE_(r2)
/* 80193EC4 00190E04  FC 40 D0 90 */	fmr f2, f26
/* 80193EC8 00190E08  C0 62 A0 30 */	lfs f3, lbl_80453A30-_SDA2_BASE_(r2)
/* 80193ECC 00190E0C  C0 02 A0 28 */	lfs f0, lbl_80453A28-_SDA2_BASE_(r2)
/* 80193ED0 00190E10  EC 80 D0 28 */	fsubs f4, f0, f26
/* 80193ED4 00190E14  38 80 00 00 */	li r4, 0
/* 80193ED8 00190E18  38 A0 00 00 */	li r5, 0
/* 80193EDC 00190E1C  38 C0 00 00 */	li r6, 0
/* 80193EE0 00190E20  81 83 00 00 */	lwz r12, 0(r3)
/* 80193EE4 00190E24  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80193EE8 00190E28  7D 89 03 A6 */	mtctr r12
/* 80193EEC 00190E2C  4E 80 04 21 */	bctrl 
/* 80193EF0 00190E30  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80193EF4 00190E34  C0 22 A0 14 */	lfs f1, lbl_80453A14-_SDA2_BASE_(r2)
/* 80193EF8 00190E38  FC 40 D8 90 */	fmr f2, f27
/* 80193EFC 00190E3C  EC 7D 08 28 */	fsubs f3, f29, f1
/* 80193F00 00190E40  EF FA D8 28 */	fsubs f31, f26, f27
/* 80193F04 00190E44  FC 80 F8 90 */	fmr f4, f31
/* 80193F08 00190E48  38 80 00 00 */	li r4, 0
/* 80193F0C 00190E4C  38 A0 00 00 */	li r5, 0
/* 80193F10 00190E50  38 C0 00 00 */	li r6, 0
/* 80193F14 00190E54  81 83 00 00 */	lwz r12, 0(r3)
/* 80193F18 00190E58  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80193F1C 00190E5C  7D 89 03 A6 */	mtctr r12
/* 80193F20 00190E60  4E 80 04 21 */	bctrl 
/* 80193F24 00190E64  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80193F28 00190E68  FC 20 E0 90 */	fmr f1, f28
/* 80193F2C 00190E6C  FC 40 D8 90 */	fmr f2, f27
/* 80193F30 00190E70  C0 02 A0 30 */	lfs f0, lbl_80453A30-_SDA2_BASE_(r2)
/* 80193F34 00190E74  EC 60 E0 28 */	fsubs f3, f0, f28
/* 80193F38 00190E78  FC 80 F8 90 */	fmr f4, f31
/* 80193F3C 00190E7C  38 80 00 00 */	li r4, 0
/* 80193F40 00190E80  38 A0 00 00 */	li r5, 0
/* 80193F44 00190E84  38 C0 00 00 */	li r6, 0
/* 80193F48 00190E88  81 83 00 00 */	lwz r12, 0(r3)
/* 80193F4C 00190E8C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80193F50 00190E90  7D 89 03 A6 */	mtctr r12
/* 80193F54 00190E94  4E 80 04 21 */	bctrl 
/* 80193F58 00190E98  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80193F5C 00190E9C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80193F60 00190EA0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 80193F64 00190EA4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80193F68 00190EA8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 80193F6C 00190EAC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80193F70 00190EB0  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 80193F74 00190EB4  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80193F78 00190EB8  E3 61 00 48 */	psq_l f27, 72(r1), 0, qr0
/* 80193F7C 00190EBC  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 80193F80 00190EC0  E3 41 00 38 */	psq_l f26, 56(r1), 0, qr0
/* 80193F84 00190EC4  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 80193F88 00190EC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80193F8C 00190ECC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80193F90 00190ED0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80193F94 00190ED4  7C 08 03 A6 */	mtlr r0
/* 80193F98 00190ED8  38 21 00 90 */	addi r1, r1, 0x90
/* 80193F9C 00190EDC  4E 80 00 20 */	blr 
/* 80193FA0 00190EE0  88 63 00 8E */	lbz r3, 0x8e(r3)
/* 80193FA4 00190EE4  30 03 FF FF */	addic r0, r3, -1
/* 80193FA8 00190EE8  7C 00 19 10 */	subfe r0, r0, r3
/* 80193FAC 00190EEC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80193FB0 00190EF0  4E 80 00 20 */	blr 
/* 80193FB4 00190EF4  C0 02 A0 10 */	lfs f0, lbl_80453A10-_SDA2_BASE_(r2)
/* 80193FB8 00190EF8  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 80193FBC 00190EFC  C0 02 A0 14 */	lfs f0, lbl_80453A14-_SDA2_BASE_(r2)
/* 80193FC0 00190F00  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 80193FC4 00190F04  38 00 00 00 */	li r0, 0
/* 80193FC8 00190F08  B0 03 00 88 */	sth r0, 0x88(r3)
/* 80193FCC 00190F0C  4E 80 00 20 */	blr 
/* 80193FD0 00190F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80193FD4 00190F14  A8 83 00 88 */	lha r4, 0x88(r3)
/* 80193FD8 00190F18  38 04 00 01 */	addi r0, r4, 1
/* 80193FDC 00190F1C  B0 03 00 88 */	sth r0, 0x88(r3)
/* 80193FE0 00190F20  C0 62 A0 10 */	lfs f3, lbl_80453A10-_SDA2_BASE_(r2)
/* 80193FE4 00190F24  C0 42 A0 34 */	lfs f2, lbl_80453A34-_SDA2_BASE_(r2)
/* 80193FE8 00190F28  A8 03 00 88 */	lha r0, 0x88(r3)
/* 80193FEC 00190F2C  C8 22 A0 40 */	lfd f1, lbl_80453A40-_SDA2_BASE_(r2)
/* 80193FF0 00190F30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80193FF4 00190F34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80193FF8 00190F38  3C 00 43 30 */	lis r0, 0x4330
/* 80193FFC 00190F3C  90 01 00 08 */	stw r0, 8(r1)
/* 80194000 00190F40  C8 01 00 08 */	lfd f0, 8(r1)
/* 80194004 00190F44  EC 20 08 28 */	fsubs f1, f0, f1
/* 80194008 00190F48  C0 02 A0 38 */	lfs f0, lbl_80453A38-_SDA2_BASE_(r2)
/* 8019400C 00190F4C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80194010 00190F50  EC 02 00 32 */	fmuls f0, f2, f0
/* 80194014 00190F54  EC 03 00 28 */	fsubs f0, f3, f0
/* 80194018 00190F58  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 8019401C 00190F5C  C0 02 A0 3C */	lfs f0, lbl_80453A3C-_SDA2_BASE_(r2)
/* 80194020 00190F60  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 80194024 00190F64  A8 03 00 88 */	lha r0, 0x88(r3)
/* 80194028 00190F68  2C 00 00 05 */	cmpwi r0, 5
/* 8019402C 00190F6C  41 80 00 14 */	blt lbl_80194040
/* 80194030 00190F70  D0 43 00 80 */	stfs f2, 0x80(r3)
/* 80194034 00190F74  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 80194038 00190F78  38 00 00 01 */	li r0, 1
/* 8019403C 00190F7C  98 03 00 8C */	stb r0, 0x8c(r3)
lbl_80194040:
/* 80194040 00190F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80194044 00190F84  4E 80 00 20 */	blr 
/* 80194048 00190F88  4E 80 00 20 */	blr 
/* 8019404C 00190F8C  4E 80 00 20 */	blr 
/* 80194050 00190F90  4E 80 00 20 */	blr 
/* 80194054 00190F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80194058 00190F98  A8 83 00 88 */	lha r4, 0x88(r3)
/* 8019405C 00190F9C  2C 04 00 00 */	cmpwi r4, 0
/* 80194060 00190FA0  40 81 00 54 */	ble lbl_801940B4
/* 80194064 00190FA4  38 04 FF FF */	addi r0, r4, -1
/* 80194068 00190FA8  B0 03 00 88 */	sth r0, 0x88(r3)
/* 8019406C 00190FAC  C0 62 A0 10 */	lfs f3, lbl_80453A10-_SDA2_BASE_(r2)
/* 80194070 00190FB0  C0 42 A0 34 */	lfs f2, lbl_80453A34-_SDA2_BASE_(r2)
/* 80194074 00190FB4  A8 03 00 88 */	lha r0, 0x88(r3)
/* 80194078 00190FB8  C8 22 A0 40 */	lfd f1, lbl_80453A40-_SDA2_BASE_(r2)
/* 8019407C 00190FBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80194080 00190FC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80194084 00190FC4  3C 00 43 30 */	lis r0, 0x4330
/* 80194088 00190FC8  90 01 00 08 */	stw r0, 8(r1)
/* 8019408C 00190FCC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80194090 00190FD0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80194094 00190FD4  C0 02 A0 38 */	lfs f0, lbl_80453A38-_SDA2_BASE_(r2)
/* 80194098 00190FD8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8019409C 00190FDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801940A0 00190FE0  EC 03 00 28 */	fsubs f0, f3, f0
/* 801940A4 00190FE4  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 801940A8 00190FE8  C0 02 A0 3C */	lfs f0, lbl_80453A3C-_SDA2_BASE_(r2)
/* 801940AC 00190FEC  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 801940B0 00190FF0  48 00 00 1C */	b lbl_801940CC
lbl_801940B4:
/* 801940B4 00190FF4  C0 02 A0 10 */	lfs f0, lbl_80453A10-_SDA2_BASE_(r2)
/* 801940B8 00190FF8  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 801940BC 00190FFC  C0 02 A0 14 */	lfs f0, lbl_80453A14-_SDA2_BASE_(r2)
/* 801940C0 00191000  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 801940C4 00191004  38 00 00 01 */	li r0, 1
/* 801940C8 00191008  98 03 00 8E */	stb r0, 0x8e(r3)
lbl_801940CC:
/* 801940CC 0019100C  38 21 00 10 */	addi r1, r1, 0x10
/* 801940D0 00191010  4E 80 00 20 */	blr 
/* 801940D4 00191014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801940D8 00191018  7C 08 02 A6 */	mflr r0
/* 801940DC 0019101C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801940E0 00191020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801940E4 00191024  7C 7F 1B 79 */	or. r31, r3, r3
/* 801940E8 00191028  41 82 00 1C */	beq lbl_80194104
/* 801940EC 0019102C  3C A0 80 3C */	lis r5, lbl_803BB6D4@ha
/* 801940F0 00191030  38 05 B6 D4 */	addi r0, r5, lbl_803BB6D4@l
/* 801940F4 00191034  90 1F 00 00 */	stw r0, 0(r31)
/* 801940F8 00191038  7C 80 07 35 */	extsh. r0, r4
/* 801940FC 0019103C  40 81 00 08 */	ble lbl_80194104
/* 80194100 00191040  48 13 AC 3D */	bl __dl__FPv
lbl_80194104:
/* 80194104 00191044  7F E3 FB 78 */	mr r3, r31
/* 80194108 00191048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019410C 0019104C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80194110 00191050  7C 08 03 A6 */	mtlr r0
/* 80194114 00191054  38 21 00 10 */	addi r1, r1, 0x10
/* 80194118 00191058  4E 80 00 20 */	blr 
/* 8019411C 0019105C  38 60 00 00 */	li r3, 0
/* 80194120 00191060  4E 80 00 20 */	blr 
/* 80194124 00191064  38 60 00 00 */	li r3, 0
/* 80194128 00191068  4E 80 00 20 */	blr 
/* 8019412C 0019106C  4E 80 00 20 */	blr 
/* 80194130 00191070  38 60 00 00 */	li r3, 0
/* 80194134 00191074  4E 80 00 20 */	blr 
/* 80194138 00191078  38 60 00 00 */	li r3, 0
/* 8019413C 0019107C  4E 80 00 20 */	blr 
/* 80194140 00191080  3C 60 80 3C */	lis r3, lbl_803BB618@ha
/* 80194144 00191084  38 A3 B6 18 */	addi r5, r3, lbl_803BB618@l
/* 80194148 00191088  80 65 00 0C */	lwz r3, 0xc(r5)
/* 8019414C 0019108C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80194150 00191090  90 65 00 30 */	stw r3, 0x30(r5)
/* 80194154 00191094  90 05 00 34 */	stw r0, 0x34(r5)
/* 80194158 00191098  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8019415C 0019109C  90 05 00 38 */	stw r0, 0x38(r5)
/* 80194160 001910A0  38 85 00 30 */	addi r4, r5, 0x30
/* 80194164 001910A4  80 65 00 18 */	lwz r3, 0x18(r5)
/* 80194168 001910A8  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 8019416C 001910AC  90 64 00 0C */	stw r3, 0xc(r4)
/* 80194170 001910B0  90 04 00 10 */	stw r0, 0x10(r4)
/* 80194174 001910B4  80 05 00 20 */	lwz r0, 0x20(r5)
/* 80194178 001910B8  90 04 00 14 */	stw r0, 0x14(r4)
/* 8019417C 001910BC  80 65 00 24 */	lwz r3, 0x24(r5)
/* 80194180 001910C0  80 05 00 28 */	lwz r0, 0x28(r5)
/* 80194184 001910C4  90 64 00 18 */	stw r3, 0x18(r4)
/* 80194188 001910C8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8019418C 001910CC  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 80194190 001910D0  90 04 00 20 */	stw r0, 0x20(r4)
/* 80194194 001910D4  80 65 00 54 */	lwz r3, 0x54(r5)
/* 80194198 001910D8  80 05 00 58 */	lwz r0, 0x58(r5)
/* 8019419C 001910DC  90 65 00 78 */	stw r3, 0x78(r5)
/* 801941A0 001910E0  90 05 00 7C */	stw r0, 0x7c(r5)
/* 801941A4 001910E4  80 05 00 5C */	lwz r0, 0x5c(r5)
/* 801941A8 001910E8  90 05 00 80 */	stw r0, 0x80(r5)
/* 801941AC 001910EC  38 85 00 78 */	addi r4, r5, 0x78
/* 801941B0 001910F0  80 65 00 60 */	lwz r3, 0x60(r5)
/* 801941B4 001910F4  80 05 00 64 */	lwz r0, 0x64(r5)
/* 801941B8 001910F8  90 64 00 0C */	stw r3, 0xc(r4)
/* 801941BC 001910FC  90 04 00 10 */	stw r0, 0x10(r4)
/* 801941C0 00191100  80 05 00 68 */	lwz r0, 0x68(r5)
/* 801941C4 00191104  90 04 00 14 */	stw r0, 0x14(r4)
/* 801941C8 00191108  80 65 00 6C */	lwz r3, 0x6c(r5)
/* 801941CC 0019110C  80 05 00 70 */	lwz r0, 0x70(r5)
/* 801941D0 00191110  90 64 00 18 */	stw r3, 0x18(r4)
/* 801941D4 00191114  90 04 00 1C */	stw r0, 0x1c(r4)
/* 801941D8 00191118  80 05 00 74 */	lwz r0, 0x74(r5)
/* 801941DC 0019111C  90 04 00 20 */	stw r0, 0x20(r4)
/* 801941E0 00191120  4E 80 00 20 */	blr 

