.include "macros.inc"

.section .text, "ax" # 80007954


.global mDoCPd_c_NS_create
mDoCPd_c_NS_create:
/* 80007954 00004894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007958 00004898  7C 08 02 A6 */	mflr r0
/* 8000795C 0000489C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007960 000048A0  38 60 00 B0 */	li r3, 0xb0
/* 80007964 000048A4  48 2C 72 E9 */	bl __nw__FUl
/* 80007968 000048A8  7C 60 1B 79 */	or. r0, r3, r3
/* 8000796C 000048AC  41 82 00 10 */	beq lbl_8000797C
/* 80007970 000048B0  38 80 00 00 */	li r4, 0
/* 80007974 000048B4  48 2D 8D 69 */	bl JUTGamePad
/* 80007978 000048B8  7C 60 1B 78 */	mr r0, r3
lbl_8000797C:
/* 8000797C 000048BC  3C 60 80 3E */	lis r3, lbl_803DD2D8@ha
/* 80007980 000048C0  94 03 D2 D8 */	stwu r0, lbl_803DD2D8@l(r3)
/* 80007984 000048C4  88 0D 80 00 */	lbz r0, lbl_80450580-_SDA_BASE_(r13)
/* 80007988 000048C8  7C 00 07 75 */	extsb. r0, r0
/* 8000798C 000048CC  41 82 00 80 */	beq lbl_80007A0C
/* 80007990 000048D0  38 60 00 B0 */	li r3, 0xb0
/* 80007994 000048D4  48 2C 72 B9 */	bl __nw__FUl
/* 80007998 000048D8  7C 60 1B 79 */	or. r0, r3, r3
/* 8000799C 000048DC  41 82 00 10 */	beq lbl_800079AC
/* 800079A0 000048E0  38 80 00 01 */	li r4, 1
/* 800079A4 000048E4  48 2D 8D 39 */	bl JUTGamePad
/* 800079A8 000048E8  7C 60 1B 78 */	mr r0, r3
lbl_800079AC:
/* 800079AC 000048EC  3C 60 80 3E */	lis r3, lbl_803DD2D8@ha
/* 800079B0 000048F0  38 63 D2 D8 */	addi r3, r3, lbl_803DD2D8@l
/* 800079B4 000048F4  90 03 00 04 */	stw r0, 4(r3)
/* 800079B8 000048F8  38 60 00 B0 */	li r3, 0xb0
/* 800079BC 000048FC  48 2C 72 91 */	bl __nw__FUl
/* 800079C0 00004900  7C 60 1B 79 */	or. r0, r3, r3
/* 800079C4 00004904  41 82 00 10 */	beq lbl_800079D4
/* 800079C8 00004908  38 80 00 02 */	li r4, 2
/* 800079CC 0000490C  48 2D 8D 11 */	bl JUTGamePad
/* 800079D0 00004910  7C 60 1B 78 */	mr r0, r3
lbl_800079D4:
/* 800079D4 00004914  3C 60 80 3E */	lis r3, lbl_803DD2D8@ha
/* 800079D8 00004918  38 63 D2 D8 */	addi r3, r3, lbl_803DD2D8@l
/* 800079DC 0000491C  90 03 00 08 */	stw r0, 8(r3)
/* 800079E0 00004920  38 60 00 B0 */	li r3, 0xb0
/* 800079E4 00004924  48 2C 72 69 */	bl __nw__FUl
/* 800079E8 00004928  7C 60 1B 79 */	or. r0, r3, r3
/* 800079EC 0000492C  41 82 00 10 */	beq lbl_800079FC
/* 800079F0 00004930  38 80 00 03 */	li r4, 3
/* 800079F4 00004934  48 2D 8C E9 */	bl JUTGamePad
/* 800079F8 00004938  7C 60 1B 78 */	mr r0, r3
lbl_800079FC:
/* 800079FC 0000493C  3C 60 80 3E */	lis r3, lbl_803DD2D8@ha
/* 80007A00 00004940  38 63 D2 D8 */	addi r3, r3, lbl_803DD2D8@l
/* 80007A04 00004944  90 03 00 0C */	stw r0, 0xc(r3)
/* 80007A08 00004948  48 00 00 14 */	b lbl_80007A1C
lbl_80007A0C:
/* 80007A0C 0000494C  38 00 00 00 */	li r0, 0
/* 80007A10 00004950  90 03 00 04 */	stw r0, 4(r3)
/* 80007A14 00004954  90 03 00 08 */	stw r0, 8(r3)
/* 80007A18 00004958  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80007A1C:
/* 80007A1C 0000495C  80 6D 86 F8 */	lwz r3, lbl_80450C78-_SDA_BASE_(r13)
/* 80007A20 00004960  80 03 00 00 */	lwz r0, 0(r3)
/* 80007A24 00004964  2C 00 00 00 */	cmpwi r0, 0
/* 80007A28 00004968  40 82 00 1C */	bne lbl_80007A44
/* 80007A2C 0000496C  38 80 00 00 */	li r4, 0
/* 80007A30 00004970  98 8D 8F 81 */	stb r4, lbl_80451501-_SDA_BASE_(r13)
.global resetCallBack__6mDoRstFiPv
/* 80007A34 00004974  3C 60 80 01 */	lis r3, resetCallBack__6mDoRstFiPv@ha
.global resetCallBack__6mDoRstFiPv
/* 80007A38 00004978  38 03 57 4C */	addi r0, r3, resetCallBack__6mDoRstFiPv@l
/* 80007A3C 0000497C  90 0D 8F 6C */	stw r0, lbl_804514EC-_SDA_BASE_(r13)
/* 80007A40 00004980  90 8D 8F 70 */	stw r4, lbl_804514F0-_SDA_BASE_(r13)
lbl_80007A44:
/* 80007A44 00004984  38 00 00 03 */	li r0, 3
/* 80007A48 00004988  90 0D 8F 5C */	stw r0, lbl_804514DC-_SDA_BASE_(r13)
/* 80007A4C 0000498C  38 60 00 03 */	li r3, 3
/* 80007A50 00004990  48 34 7F C1 */	bl PADSetAnalogMode
/* 80007A54 00004994  3C 60 80 3E */	lis r3, lbl_803DD2E8@ha
/* 80007A58 00004998  38 03 D2 E8 */	addi r0, r3, lbl_803DD2E8@l
/* 80007A5C 0000499C  7C 04 03 78 */	mr r4, r0
/* 80007A60 000049A0  38 60 00 00 */	li r3, 0
/* 80007A64 000049A4  38 00 00 04 */	li r0, 4
/* 80007A68 000049A8  7C 09 03 A6 */	mtctr r0
lbl_80007A6C:
/* 80007A6C 000049AC  98 64 00 3A */	stb r3, 0x3a(r4)
/* 80007A70 000049B0  98 64 00 39 */	stb r3, 0x39(r4)
/* 80007A74 000049B4  98 64 00 3C */	stb r3, 0x3c(r4)
/* 80007A78 000049B8  98 64 00 3B */	stb r3, 0x3b(r4)
/* 80007A7C 000049BC  38 84 00 40 */	addi r4, r4, 0x40
/* 80007A80 000049C0  42 00 FF EC */	bdnz lbl_80007A6C
/* 80007A84 000049C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007A88 000049C8  7C 08 03 A6 */	mtlr r0
/* 80007A8C 000049CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80007A90 000049D0  4E 80 00 20 */	blr 

.global mDoCPd_c_NS_read
mDoCPd_c_NS_read:
/* 80007A94 000049D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007A98 000049D8  7C 08 02 A6 */	mflr r0
/* 80007A9C 000049DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80007AA0 000049E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80007AA4 000049E4  48 35 A7 39 */	bl _savegpr_29
/* 80007AA8 000049E8  48 2D 8E 3D */	bl JUTGamePad_NS_read
/* 80007AAC 000049EC  80 6D 86 F8 */	lwz r3, lbl_80450C78-_SDA_BASE_(r13)
/* 80007AB0 000049F0  80 03 00 00 */	lwz r0, 0(r3)
/* 80007AB4 000049F4  2C 00 00 00 */	cmpwi r0, 0
/* 80007AB8 000049F8  40 82 00 4C */	bne lbl_80007B04
/* 80007ABC 000049FC  80 03 00 08 */	lwz r0, 8(r3)
/* 80007AC0 00004A00  2C 00 00 00 */	cmpwi r0, 0
/* 80007AC4 00004A04  41 82 00 40 */	beq lbl_80007B04
/* 80007AC8 00004A08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80007ACC 00004A0C  48 2D 9E D1 */	bl JUTGamePad_NS_getGamePad
/* 80007AD0 00004A10  38 80 00 00 */	li r4, 0
/* 80007AD4 00004A14  A8 03 00 7C */	lha r0, 0x7c(r3)
/* 80007AD8 00004A18  2C 00 FF FF */	cmpwi r0, -1
/* 80007ADC 00004A1C  41 82 00 14 */	beq lbl_80007AF0
/* 80007AE0 00004A20  88 03 00 98 */	lbz r0, 0x98(r3)
/* 80007AE4 00004A24  28 00 00 00 */	cmplwi r0, 0
/* 80007AE8 00004A28  41 82 00 08 */	beq lbl_80007AF0
/* 80007AEC 00004A2C  38 80 00 01 */	li r4, 1
lbl_80007AF0:
/* 80007AF0 00004A30  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80007AF4 00004A34  40 82 00 10 */	bne lbl_80007B04
/* 80007AF8 00004A38  38 00 00 00 */	li r0, 0
/* 80007AFC 00004A3C  80 6D 86 F8 */	lwz r3, lbl_80450C78-_SDA_BASE_(r13)
/* 80007B00 00004A40  90 03 00 08 */	stw r0, 8(r3)
lbl_80007B04:
/* 80007B04 00004A44  3C 60 80 3E */	lis r3, lbl_803DD2D8@ha
/* 80007B08 00004A48  38 03 D2 D8 */	addi r0, r3, lbl_803DD2D8@l
/* 80007B0C 00004A4C  7C 1F 03 78 */	mr r31, r0
/* 80007B10 00004A50  3C 60 80 3E */	lis r3, lbl_803DD2E8@ha
/* 80007B14 00004A54  38 03 D2 E8 */	addi r0, r3, lbl_803DD2E8@l
/* 80007B18 00004A58  7C 1E 03 78 */	mr r30, r0
/* 80007B1C 00004A5C  3B A0 00 00 */	li r29, 0
lbl_80007B20:
/* 80007B20 00004A60  80 9F 00 00 */	lwz r4, 0(r31)
/* 80007B24 00004A64  28 04 00 00 */	cmplwi r4, 0
/* 80007B28 00004A68  40 82 00 18 */	bne lbl_80007B40
/* 80007B2C 00004A6C  7F C3 F3 78 */	mr r3, r30
/* 80007B30 00004A70  38 80 00 00 */	li r4, 0
/* 80007B34 00004A74  38 A0 00 40 */	li r5, 0x40
/* 80007B38 00004A78  48 26 7E 25 */	bl cLib_memSet
/* 80007B3C 00004A7C  48 00 00 14 */	b lbl_80007B50
lbl_80007B40:
/* 80007B40 00004A80  7F C3 F3 78 */	mr r3, r30
/* 80007B44 00004A84  48 00 00 39 */	bl mDoCPd_c_NS_convert
/* 80007B48 00004A88  7F C3 F3 78 */	mr r3, r30
/* 80007B4C 00004A8C  48 00 01 85 */	bl mDoCPd_c_NS_LRlockCheck
lbl_80007B50:
/* 80007B50 00004A90  3B BD 00 01 */	addi r29, r29, 1
/* 80007B54 00004A94  28 1D 00 04 */	cmplwi r29, 4
/* 80007B58 00004A98  3B FF 00 04 */	addi r31, r31, 4
/* 80007B5C 00004A9C  3B DE 00 40 */	addi r30, r30, 0x40
/* 80007B60 00004AA0  41 80 FF C0 */	blt lbl_80007B20
/* 80007B64 00004AA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80007B68 00004AA8  48 35 A6 C1 */	bl _restgpr_29
/* 80007B6C 00004AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007B70 00004AB0  7C 08 03 A6 */	mtlr r0
/* 80007B74 00004AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80007B78 00004AB8  4E 80 00 20 */	blr 

.global mDoCPd_c_NS_convert
mDoCPd_c_NS_convert:
/* 80007B7C 00004ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007B80 00004AC0  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80007B84 00004AC4  90 03 00 30 */	stw r0, 0x30(r3)
/* 80007B88 00004AC8  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80007B8C 00004ACC  90 03 00 34 */	stw r0, 0x34(r3)
/* 80007B90 00004AD0  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80007B94 00004AD4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80007B98 00004AD8  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 80007B9C 00004ADC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80007BA0 00004AE0  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80007BA4 00004AE4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80007BA8 00004AE8  A8 04 00 54 */	lha r0, 0x54(r4)
/* 80007BAC 00004AEC  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80007BB0 00004AF0  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 80007BB4 00004AF4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80007BB8 00004AF8  C0 04 00 5C */	lfs f0, 0x5c(r4)
/* 80007BBC 00004AFC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80007BC0 00004B00  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 80007BC4 00004B04  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80007BC8 00004B08  A8 04 00 64 */	lha r0, 0x64(r4)
/* 80007BCC 00004B0C  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 80007BD0 00004B10  88 04 00 24 */	lbz r0, 0x24(r4)
/* 80007BD4 00004B14  C0 42 80 20 */	lfs f2, lbl_80451A20-_SDA2_BASE_(r2)
/* 80007BD8 00004B18  C8 22 80 30 */	lfd f1, lbl_80451A30-_SDA2_BASE_(r2)
/* 80007BDC 00004B1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80007BE0 00004B20  3C 00 43 30 */	lis r0, 0x4330
/* 80007BE4 00004B24  90 01 00 08 */	stw r0, 8(r1)
/* 80007BE8 00004B28  C8 01 00 08 */	lfd f0, 8(r1)
/* 80007BEC 00004B2C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80007BF0 00004B30  EC 02 00 32 */	fmuls f0, f2, f0
/* 80007BF4 00004B34  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80007BF8 00004B38  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80007BFC 00004B3C  C0 02 80 24 */	lfs f0, lbl_80451A24-_SDA2_BASE_(r2)
/* 80007C00 00004B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007C04 00004B44  40 81 00 08 */	ble lbl_80007C0C
/* 80007C08 00004B48  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_80007C0C:
/* 80007C0C 00004B4C  88 04 00 25 */	lbz r0, 0x25(r4)
/* 80007C10 00004B50  C0 42 80 20 */	lfs f2, lbl_80451A20-_SDA2_BASE_(r2)
/* 80007C14 00004B54  C8 22 80 30 */	lfd f1, lbl_80451A30-_SDA2_BASE_(r2)
/* 80007C18 00004B58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80007C1C 00004B5C  3C 00 43 30 */	lis r0, 0x4330
/* 80007C20 00004B60  90 01 00 08 */	stw r0, 8(r1)
/* 80007C24 00004B64  C8 01 00 08 */	lfd f0, 8(r1)
/* 80007C28 00004B68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80007C2C 00004B6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80007C30 00004B70  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80007C34 00004B74  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80007C38 00004B78  C0 02 80 24 */	lfs f0, lbl_80451A24-_SDA2_BASE_(r2)
/* 80007C3C 00004B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007C40 00004B80  40 81 00 08 */	ble lbl_80007C48
/* 80007C44 00004B84  D0 03 00 24 */	stfs f0, 0x24(r3)
lbl_80007C48:
/* 80007C48 00004B88  88 04 00 26 */	lbz r0, 0x26(r4)
/* 80007C4C 00004B8C  C0 42 80 28 */	lfs f2, lbl_80451A28-_SDA2_BASE_(r2)
/* 80007C50 00004B90  C8 22 80 30 */	lfd f1, lbl_80451A30-_SDA2_BASE_(r2)
/* 80007C54 00004B94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80007C58 00004B98  3C 00 43 30 */	lis r0, 0x4330
/* 80007C5C 00004B9C  90 01 00 08 */	stw r0, 8(r1)
/* 80007C60 00004BA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80007C64 00004BA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80007C68 00004BA8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80007C6C 00004BAC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80007C70 00004BB0  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80007C74 00004BB4  C0 02 80 24 */	lfs f0, lbl_80451A24-_SDA2_BASE_(r2)
/* 80007C78 00004BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007C7C 00004BBC  40 81 00 08 */	ble lbl_80007C84
/* 80007C80 00004BC0  D0 03 00 28 */	stfs f0, 0x28(r3)
lbl_80007C84:
/* 80007C84 00004BC4  88 04 00 27 */	lbz r0, 0x27(r4)
/* 80007C88 00004BC8  C0 42 80 28 */	lfs f2, lbl_80451A28-_SDA2_BASE_(r2)
/* 80007C8C 00004BCC  C8 22 80 30 */	lfd f1, lbl_80451A30-_SDA2_BASE_(r2)
/* 80007C90 00004BD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80007C94 00004BD4  3C 00 43 30 */	lis r0, 0x4330
/* 80007C98 00004BD8  90 01 00 08 */	stw r0, 8(r1)
/* 80007C9C 00004BDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80007CA0 00004BE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80007CA4 00004BE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80007CA8 00004BE8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80007CAC 00004BEC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80007CB0 00004BF0  C0 02 80 24 */	lfs f0, lbl_80451A24-_SDA2_BASE_(r2)
/* 80007CB4 00004BF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007CB8 00004BF8  40 81 00 08 */	ble lbl_80007CC0
/* 80007CBC 00004BFC  D0 03 00 2C */	stfs f0, 0x2c(r3)
lbl_80007CC0:
/* 80007CC0 00004C00  88 04 00 7E */	lbz r0, 0x7e(r4)
/* 80007CC4 00004C04  98 03 00 38 */	stb r0, 0x38(r3)
/* 80007CC8 00004C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80007CCC 00004C0C  4E 80 00 20 */	blr 

.global mDoCPd_c_NS_LRlockCheck
mDoCPd_c_NS_LRlockCheck:
/* 80007CD0 00004C10  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80007CD4 00004C14  38 00 00 00 */	li r0, 0
/* 80007CD8 00004C18  98 03 00 3A */	stb r0, 0x3a(r3)
/* 80007CDC 00004C1C  98 03 00 3C */	stb r0, 0x3c(r3)
/* 80007CE0 00004C20  3C 80 80 3F */	lis r4, lbl_803F1BBC@ha
/* 80007CE4 00004C24  38 84 1B BC */	addi r4, r4, lbl_803F1BBC@l
/* 80007CE8 00004C28  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80007CEC 00004C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007CF0 00004C30  40 81 00 24 */	ble lbl_80007D14
/* 80007CF4 00004C34  88 03 00 39 */	lbz r0, 0x39(r3)
/* 80007CF8 00004C38  28 00 00 01 */	cmplwi r0, 1
/* 80007CFC 00004C3C  41 82 00 0C */	beq lbl_80007D08
/* 80007D00 00004C40  38 00 00 01 */	li r0, 1
/* 80007D04 00004C44  98 03 00 3A */	stb r0, 0x3a(r3)
lbl_80007D08:
/* 80007D08 00004C48  38 00 00 01 */	li r0, 1
/* 80007D0C 00004C4C  98 03 00 39 */	stb r0, 0x39(r3)
/* 80007D10 00004C50  48 00 00 14 */	b lbl_80007D24
lbl_80007D14:
/* 80007D14 00004C54  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80007D18 00004C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007D1C 00004C5C  40 80 00 08 */	bge lbl_80007D24
/* 80007D20 00004C60  98 03 00 39 */	stb r0, 0x39(r3)
lbl_80007D24:
/* 80007D24 00004C64  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80007D28 00004C68  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80007D2C 00004C6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007D30 00004C70  40 81 00 24 */	ble lbl_80007D54
/* 80007D34 00004C74  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 80007D38 00004C78  28 00 00 01 */	cmplwi r0, 1
/* 80007D3C 00004C7C  41 82 00 0C */	beq lbl_80007D48
/* 80007D40 00004C80  38 00 00 01 */	li r0, 1
/* 80007D44 00004C84  98 03 00 3C */	stb r0, 0x3c(r3)
lbl_80007D48:
/* 80007D48 00004C88  38 00 00 01 */	li r0, 1
/* 80007D4C 00004C8C  98 03 00 3B */	stb r0, 0x3b(r3)
/* 80007D50 00004C90  4E 80 00 20 */	blr 
lbl_80007D54:
/* 80007D54 00004C94  3C 80 80 3F */	lis r4, lbl_803F1BBC@ha
/* 80007D58 00004C98  38 84 1B BC */	addi r4, r4, lbl_803F1BBC@l
/* 80007D5C 00004C9C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80007D60 00004CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80007D64 00004CA4  4C 80 00 20 */	bgelr 
/* 80007D68 00004CA8  38 00 00 00 */	li r0, 0
/* 80007D6C 00004CAC  98 03 00 3B */	stb r0, 0x3b(r3)
/* 80007D70 00004CB0  4E 80 00 20 */	blr 

.global mDoCPd_c_NS_recalibrate
mDoCPd_c_NS_recalibrate:
/* 80007D74 00004CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007D78 00004CB8  7C 08 02 A6 */	mflr r0
/* 80007D7C 00004CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007D80 00004CC0  48 2D 92 A5 */	bl JUTGamePad_NS_clearForReset
/* 80007D84 00004CC4  3C 60 F0 00 */	lis r3, 0xf000
/* 80007D88 00004CC8  48 2D 9C 51 */	bl JUTGamePad_NS_CRumble_NS_setEnabled
/* 80007D8C 00004CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007D90 00004CD0  7C 08 03 A6 */	mtlr r0
/* 80007D94 00004CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80007D98 00004CD8  4E 80 00 20 */	blr 

