/* 8019C3A4 001992E4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8019C3A8 001992E8  7C 08 02 A6 */ mflr r0
/* 8019C3AC 001992EC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8019C3B0 001992F0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8019C3B4 001992F4  93 C1 00 08 */ stw r30, 8(r1)
/* 8019C3B8 001992F8  48 00 FE 71 */ bl dKy_Outdoor_check
/* 8019C3BC 001992FC  2C 03 00 00 */ cmpwi r3, 0
/* 8019C3C0 00199300  38 00 00 05 */ li r0, 5
/* 8019C3C4 00199304  41 82 00 08 */ beq lbl_8019C3CC
/* 8019C3C8 00199308  38 00 00 01 */ li r0, 1
lbl_8019C3CC:
/* 8019C3CC 0019930C  7C 1E 03 78 */ mr r30, r0
/* 8019C3D0 00199310  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8019C3D4 00199314  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8019C3D8 00199318  3B E3 4E 00 */ addi r31, r3, 0x4e00
/* 8019C3DC 0019931C  7F E3 FB 78 */ mr r3, r31
/* 8019C3E0 00199320  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C3E4 00199324  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C3E8 00199328  48 1C C5 AD */ bl strcmp
/* 8019C3EC 0019932C  2C 03 00 00 */ cmpwi r3, 0
/* 8019C3F0 00199330  40 82 00 60 */ bne lbl_8019C450
/* 8019C3F4 00199334  3B C0 00 09 */ li r30, 9
/* 8019C3F8 00199338  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8019C3FC 0019933C  7C 00 07 75 */ extsb. r0, r0
/* 8019C400 00199340  40 82 00 3C */ bne lbl_8019C43C
/* 8019C404 00199344  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8019C408 00199348  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8019C40C 0019934C  3B E3 09 58 */ addi r31, r3, 0x958
/* 8019C410 00199350  7F E3 FB 78 */ mr r3, r31
/* 8019C414 00199354  38 80 00 11 */ li r4, 0x11
/* 8019C418 00199358  4B E9 84 49 */ bl isSwitch__12dSv_memBit_cCFi
/* 8019C41C 0019935C  2C 03 00 00 */ cmpwi r3, 0
/* 8019C420 00199360  41 82 00 1C */ beq lbl_8019C43C
/* 8019C424 00199364  7F E3 FB 78 */ mr r3, r31
/* 8019C428 00199368  38 80 00 75 */ li r4, 0x75
/* 8019C42C 0019936C  4B E9 84 35 */ bl isSwitch__12dSv_memBit_cCFi
/* 8019C430 00199370  2C 03 00 00 */ cmpwi r3, 0
/* 8019C434 00199374  40 82 00 08 */ bne lbl_8019C43C
/* 8019C438 00199378  3B C0 00 02 */ li r30, 2
lbl_8019C43C:
/* 8019C43C 0019937C  4B E9 14 FD */ bl dComIfGs_sense_type_change_Get
/* 8019C440 00199380  7C 60 07 75 */ extsb. r0, r3
/* 8019C444 00199384  40 81 06 AC */ ble lbl_8019CAF0
/* 8019C448 00199388  3B C0 00 0D */ li r30, 0xd
/* 8019C44C 0019938C  48 00 06 A4 */ b lbl_8019CAF0
lbl_8019C450:
/* 8019C450 00199390  7F E3 FB 78 */ mr r3, r31
/* 8019C454 00199394  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C458 00199398  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C45C 0019939C  38 84 00 08 */ addi r4, r4, 8
/* 8019C460 001993A0  48 1C C5 35 */ bl strcmp
/* 8019C464 001993A4  2C 03 00 00 */ cmpwi r3, 0
/* 8019C468 001993A8  40 82 00 20 */ bne lbl_8019C488
/* 8019C46C 001993AC  4B E9 14 CD */ bl dComIfGs_sense_type_change_Get
/* 8019C470 001993B0  7C 60 07 75 */ extsb. r0, r3
/* 8019C474 001993B4  40 81 00 0C */ ble lbl_8019C480
/* 8019C478 001993B8  3B C0 00 0D */ li r30, 0xd
/* 8019C47C 001993BC  48 00 06 74 */ b lbl_8019CAF0
lbl_8019C480:
/* 8019C480 001993C0  3B C0 00 01 */ li r30, 1
/* 8019C484 001993C4  48 00 06 6C */ b lbl_8019CAF0
lbl_8019C488:
/* 8019C488 001993C8  7F E3 FB 78 */ mr r3, r31
/* 8019C48C 001993CC  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C490 001993D0  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C494 001993D4  38 84 00 10 */ addi r4, r4, 0x10
/* 8019C498 001993D8  48 1C C4 FD */ bl strcmp
/* 8019C49C 001993DC  2C 03 00 00 */ cmpwi r3, 0
/* 8019C4A0 001993E0  40 82 00 0C */ bne lbl_8019C4AC
/* 8019C4A4 001993E4  3B C0 00 01 */ li r30, 1
/* 8019C4A8 001993E8  48 00 06 48 */ b lbl_8019CAF0
lbl_8019C4AC:
/* 8019C4AC 001993EC  7F E3 FB 78 */ mr r3, r31
/* 8019C4B0 001993F0  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C4B4 001993F4  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C4B8 001993F8  38 84 00 17 */ addi r4, r4, 0x17
/* 8019C4BC 001993FC  48 1C C4 D9 */ bl strcmp
/* 8019C4C0 00199400  2C 03 00 00 */ cmpwi r3, 0
/* 8019C4C4 00199404  40 82 00 0C */ bne lbl_8019C4D0
/* 8019C4C8 00199408  3B C0 00 03 */ li r30, 3
/* 8019C4CC 0019940C  48 00 06 24 */ b lbl_8019CAF0
lbl_8019C4D0:
/* 8019C4D0 00199410  7F E3 FB 78 */ mr r3, r31
/* 8019C4D4 00199414  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C4D8 00199418  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C4DC 0019941C  38 84 00 1F */ addi r4, r4, 0x1f
/* 8019C4E0 00199420  48 1C C4 B5 */ bl strcmp
/* 8019C4E4 00199424  2C 03 00 00 */ cmpwi r3, 0
/* 8019C4E8 00199428  40 82 00 0C */ bne lbl_8019C4F4
/* 8019C4EC 0019942C  3B C0 00 06 */ li r30, 6
/* 8019C4F0 00199430  48 00 06 00 */ b lbl_8019CAF0
lbl_8019C4F4:
/* 8019C4F4 00199434  7F E3 FB 78 */ mr r3, r31
/* 8019C4F8 00199438  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C4FC 0019943C  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C500 00199440  38 84 00 27 */ addi r4, r4, 0x27
/* 8019C504 00199444  48 1C C4 91 */ bl strcmp
/* 8019C508 00199448  2C 03 00 00 */ cmpwi r3, 0
/* 8019C50C 0019944C  40 82 00 0C */ bne lbl_8019C518
/* 8019C510 00199450  3B C0 00 04 */ li r30, 4
/* 8019C514 00199454  48 00 05 DC */ b lbl_8019CAF0
lbl_8019C518:
/* 8019C518 00199458  7F E3 FB 78 */ mr r3, r31
/* 8019C51C 0019945C  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C520 00199460  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C524 00199464  38 84 00 2F */ addi r4, r4, 0x2f
/* 8019C528 00199468  38 A0 00 06 */ li r5, 6
/* 8019C52C 0019946C  48 1C 9B 61 */ bl func_8036608C
/* 8019C530 00199470  2C 03 00 00 */ cmpwi r3, 0
/* 8019C534 00199474  41 82 00 E4 */ beq lbl_8019C618
/* 8019C538 00199478  7F E3 FB 78 */ mr r3, r31
/* 8019C53C 0019947C  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C540 00199480  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C544 00199484  38 84 00 36 */ addi r4, r4, 0x36
/* 8019C548 00199488  38 A0 00 06 */ li r5, 6
/* 8019C54C 0019948C  48 1C 9B 41 */ bl func_8036608C
/* 8019C550 00199490  2C 03 00 00 */ cmpwi r3, 0
/* 8019C554 00199494  41 82 00 C4 */ beq lbl_8019C618
/* 8019C558 00199498  7F E3 FB 78 */ mr r3, r31
/* 8019C55C 0019949C  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C560 001994A0  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C564 001994A4  38 84 00 3D */ addi r4, r4, 0x3d
/* 8019C568 001994A8  38 A0 00 06 */ li r5, 6
/* 8019C56C 001994AC  48 1C 9B 21 */ bl func_8036608C
/* 8019C570 001994B0  2C 03 00 00 */ cmpwi r3, 0
/* 8019C574 001994B4  41 82 00 A4 */ beq lbl_8019C618
/* 8019C578 001994B8  7F E3 FB 78 */ mr r3, r31
/* 8019C57C 001994BC  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C580 001994C0  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C584 001994C4  38 84 00 44 */ addi r4, r4, 0x44
/* 8019C588 001994C8  38 A0 00 06 */ li r5, 6
/* 8019C58C 001994CC  48 1C 9B 01 */ bl func_8036608C
/* 8019C590 001994D0  2C 03 00 00 */ cmpwi r3, 0
/* 8019C594 001994D4  41 82 00 84 */ beq lbl_8019C618
/* 8019C598 001994D8  7F E3 FB 78 */ mr r3, r31
/* 8019C59C 001994DC  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C5A0 001994E0  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C5A4 001994E4  38 84 00 4B */ addi r4, r4, 0x4b
/* 8019C5A8 001994E8  38 A0 00 06 */ li r5, 6
/* 8019C5AC 001994EC  48 1C 9A E1 */ bl func_8036608C
/* 8019C5B0 001994F0  2C 03 00 00 */ cmpwi r3, 0
/* 8019C5B4 001994F4  41 82 00 64 */ beq lbl_8019C618
/* 8019C5B8 001994F8  7F E3 FB 78 */ mr r3, r31
/* 8019C5BC 001994FC  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C5C0 00199500  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C5C4 00199504  38 84 00 52 */ addi r4, r4, 0x52
/* 8019C5C8 00199508  38 A0 00 06 */ li r5, 6
/* 8019C5CC 0019950C  48 1C 9A C1 */ bl func_8036608C
/* 8019C5D0 00199510  2C 03 00 00 */ cmpwi r3, 0
/* 8019C5D4 00199514  41 82 00 44 */ beq lbl_8019C618
/* 8019C5D8 00199518  7F E3 FB 78 */ mr r3, r31
/* 8019C5DC 0019951C  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C5E0 00199520  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C5E4 00199524  38 84 00 59 */ addi r4, r4, 0x59
/* 8019C5E8 00199528  38 A0 00 06 */ li r5, 6
/* 8019C5EC 0019952C  48 1C 9A A1 */ bl func_8036608C
/* 8019C5F0 00199530  2C 03 00 00 */ cmpwi r3, 0
/* 8019C5F4 00199534  41 82 00 24 */ beq lbl_8019C618
/* 8019C5F8 00199538  7F E3 FB 78 */ mr r3, r31
/* 8019C5FC 0019953C  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C600 00199540  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C604 00199544  38 84 00 60 */ addi r4, r4, 0x60
/* 8019C608 00199548  38 A0 00 06 */ li r5, 6
/* 8019C60C 0019954C  48 1C 9A 81 */ bl func_8036608C
/* 8019C610 00199550  2C 03 00 00 */ cmpwi r3, 0
/* 8019C614 00199554  40 82 00 0C */ bne lbl_8019C620
lbl_8019C618:
/* 8019C618 00199558  3B C0 00 05 */ li r30, 5
/* 8019C61C 0019955C  48 00 04 D4 */ b lbl_8019CAF0
lbl_8019C620:
/* 8019C620 00199560  7F E3 FB 78 */ mr r3, r31
/* 8019C624 00199564  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C628 00199568  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C62C 0019956C  38 84 00 67 */ addi r4, r4, 0x67
/* 8019C630 00199570  48 1C C3 65 */ bl strcmp
/* 8019C634 00199574  2C 03 00 00 */ cmpwi r3, 0
/* 8019C638 00199578  41 82 00 20 */ beq lbl_8019C658
/* 8019C63C 0019957C  7F E3 FB 78 */ mr r3, r31
/* 8019C640 00199580  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C644 00199584  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C648 00199588  38 84 00 6F */ addi r4, r4, 0x6f
/* 8019C64C 0019958C  48 1C C3 49 */ bl strcmp
/* 8019C650 00199590  2C 03 00 00 */ cmpwi r3, 0
/* 8019C654 00199594  40 82 00 0C */ bne lbl_8019C660
lbl_8019C658:
/* 8019C658 00199598  3B C0 00 0E */ li r30, 0xe
/* 8019C65C 0019959C  48 00 04 94 */ b lbl_8019CAF0
lbl_8019C660:
/* 8019C660 001995A0  7F E3 FB 78 */ mr r3, r31
/* 8019C664 001995A4  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C668 001995A8  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C66C 001995AC  38 84 00 77 */ addi r4, r4, 0x77
/* 8019C670 001995B0  48 1C C3 25 */ bl strcmp
/* 8019C674 001995B4  2C 03 00 00 */ cmpwi r3, 0
/* 8019C678 001995B8  40 82 00 0C */ bne lbl_8019C684
/* 8019C67C 001995BC  3B C0 00 0F */ li r30, 0xf
/* 8019C680 001995C0  48 00 04 70 */ b lbl_8019CAF0
lbl_8019C684:
/* 8019C684 001995C4  7F E3 FB 78 */ mr r3, r31
/* 8019C688 001995C8  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C68C 001995CC  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C690 001995D0  38 84 00 7F */ addi r4, r4, 0x7f
/* 8019C694 001995D4  48 1C C3 01 */ bl strcmp
/* 8019C698 001995D8  2C 03 00 00 */ cmpwi r3, 0
/* 8019C69C 001995DC  40 82 00 38 */ bne lbl_8019C6D4
/* 8019C6A0 001995E0  3B C0 00 08 */ li r30, 8
/* 8019C6A4 001995E4  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8019C6A8 001995E8  7C 00 07 74 */ extsb r0, r0
/* 8019C6AC 001995EC  2C 00 00 02 */ cmpwi r0, 2
/* 8019C6B0 001995F0  40 82 00 0C */ bne lbl_8019C6BC
/* 8019C6B4 001995F4  3B C0 00 0E */ li r30, 0xe
/* 8019C6B8 001995F8  48 00 04 38 */ b lbl_8019CAF0
lbl_8019C6BC:
/* 8019C6BC 001995FC  2C 00 00 03 */ cmpwi r0, 3
/* 8019C6C0 00199600  41 82 00 0C */ beq lbl_8019C6CC
/* 8019C6C4 00199604  2C 00 00 08 */ cmpwi r0, 8
/* 8019C6C8 00199608  40 82 04 28 */ bne lbl_8019CAF0
lbl_8019C6CC:
/* 8019C6CC 0019960C  3B C0 00 06 */ li r30, 6
/* 8019C6D0 00199610  48 00 04 20 */ b lbl_8019CAF0
lbl_8019C6D4:
/* 8019C6D4 00199614  7F E3 FB 78 */ mr r3, r31
/* 8019C6D8 00199618  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C6DC 0019961C  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C6E0 00199620  38 84 00 86 */ addi r4, r4, 0x86
/* 8019C6E4 00199624  48 1C C2 B1 */ bl strcmp
/* 8019C6E8 00199628  2C 03 00 00 */ cmpwi r3, 0
/* 8019C6EC 0019962C  40 82 00 0C */ bne lbl_8019C6F8
/* 8019C6F0 00199630  3B C0 00 04 */ li r30, 4
/* 8019C6F4 00199634  48 00 03 FC */ b lbl_8019CAF0
lbl_8019C6F8:
/* 8019C6F8 00199638  7F E3 FB 78 */ mr r3, r31
/* 8019C6FC 0019963C  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C700 00199640  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C704 00199644  38 84 00 8E */ addi r4, r4, 0x8e
/* 8019C708 00199648  48 1C C2 8D */ bl strcmp
/* 8019C70C 0019964C  2C 03 00 00 */ cmpwi r3, 0
/* 8019C710 00199650  41 82 00 40 */ beq lbl_8019C750
/* 8019C714 00199654  7F E3 FB 78 */ mr r3, r31
/* 8019C718 00199658  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C71C 0019965C  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C720 00199660  38 84 00 95 */ addi r4, r4, 0x95
/* 8019C724 00199664  48 1C C2 71 */ bl strcmp
/* 8019C728 00199668  2C 03 00 00 */ cmpwi r3, 0
/* 8019C72C 0019966C  41 82 00 24 */ beq lbl_8019C750
/* 8019C730 00199670  7F E3 FB 78 */ mr r3, r31
/* 8019C734 00199674  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C738 00199678  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C73C 0019967C  38 84 00 9D */ addi r4, r4, 0x9d
/* 8019C740 00199680  38 A0 00 06 */ li r5, 6
/* 8019C744 00199684  48 1C 99 49 */ bl func_8036608C
/* 8019C748 00199688  2C 03 00 00 */ cmpwi r3, 0
/* 8019C74C 0019968C  40 82 00 38 */ bne lbl_8019C784
lbl_8019C750:
/* 8019C750 00199690  3B C0 00 07 */ li r30, 7
/* 8019C754 00199694  7F E3 FB 78 */ mr r3, r31
/* 8019C758 00199698  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C75C 0019969C  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C760 001996A0  38 84 00 8E */ addi r4, r4, 0x8e
/* 8019C764 001996A4  48 1C C2 31 */ bl strcmp
/* 8019C768 001996A8  2C 03 00 00 */ cmpwi r3, 0
/* 8019C76C 001996AC  40 82 03 84 */ bne lbl_8019CAF0
/* 8019C770 001996B0  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8019C774 001996B4  2C 00 00 04 */ cmpwi r0, 4
/* 8019C778 001996B8  40 82 03 78 */ bne lbl_8019CAF0
/* 8019C77C 001996BC  3B C0 00 04 */ li r30, 4
/* 8019C780 001996C0  48 00 03 70 */ b lbl_8019CAF0
lbl_8019C784:
/* 8019C784 001996C4  7F E3 FB 78 */ mr r3, r31
/* 8019C788 001996C8  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C78C 001996CC  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C790 001996D0  38 84 00 A4 */ addi r4, r4, 0xa4
/* 8019C794 001996D4  48 1C C2 01 */ bl strcmp
/* 8019C798 001996D8  2C 03 00 00 */ cmpwi r3, 0
/* 8019C79C 001996DC  41 82 00 3C */ beq lbl_8019C7D8
/* 8019C7A0 001996E0  7F E3 FB 78 */ mr r3, r31
/* 8019C7A4 001996E4  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C7A8 001996E8  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C7AC 001996EC  38 84 00 AC */ addi r4, r4, 0xac
/* 8019C7B0 001996F0  48 1C C1 E5 */ bl strcmp
/* 8019C7B4 001996F4  2C 03 00 00 */ cmpwi r3, 0
/* 8019C7B8 001996F8  41 82 00 20 */ beq lbl_8019C7D8
/* 8019C7BC 001996FC  7F E3 FB 78 */ mr r3, r31
/* 8019C7C0 00199700  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C7C4 00199704  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C7C8 00199708  38 84 00 B4 */ addi r4, r4, 0xb4
/* 8019C7CC 0019970C  48 1C C1 C9 */ bl strcmp
/* 8019C7D0 00199710  2C 03 00 00 */ cmpwi r3, 0
/* 8019C7D4 00199714  40 82 00 0C */ bne lbl_8019C7E0
lbl_8019C7D8:
/* 8019C7D8 00199718  3B C0 00 01 */ li r30, 1
/* 8019C7DC 0019971C  48 00 03 14 */ b lbl_8019CAF0
lbl_8019C7E0:
/* 8019C7E0 00199720  7F E3 FB 78 */ mr r3, r31
/* 8019C7E4 00199724  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C7E8 00199728  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C7EC 0019972C  38 84 00 BC */ addi r4, r4, 0xbc
/* 8019C7F0 00199730  38 A0 00 06 */ li r5, 6
/* 8019C7F4 00199734  48 1C 98 99 */ bl func_8036608C
/* 8019C7F8 00199738  2C 03 00 00 */ cmpwi r3, 0
/* 8019C7FC 0019973C  41 82 00 CC */ beq lbl_8019C8C8
/* 8019C800 00199740  7F E3 FB 78 */ mr r3, r31
/* 8019C804 00199744  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C808 00199748  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C80C 0019974C  38 84 00 C3 */ addi r4, r4, 0xc3
/* 8019C810 00199750  48 1C C1 85 */ bl strcmp
/* 8019C814 00199754  2C 03 00 00 */ cmpwi r3, 0
/* 8019C818 00199758  41 82 00 B0 */ beq lbl_8019C8C8
/* 8019C81C 0019975C  7F E3 FB 78 */ mr r3, r31
/* 8019C820 00199760  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C824 00199764  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C828 00199768  38 84 00 CA */ addi r4, r4, 0xca
/* 8019C82C 0019976C  48 1C C1 69 */ bl strcmp
/* 8019C830 00199770  2C 03 00 00 */ cmpwi r3, 0
/* 8019C834 00199774  41 82 00 94 */ beq lbl_8019C8C8
/* 8019C838 00199778  7F E3 FB 78 */ mr r3, r31
/* 8019C83C 0019977C  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C840 00199780  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C844 00199784  38 84 00 D2 */ addi r4, r4, 0xd2
/* 8019C848 00199788  38 A0 00 06 */ li r5, 6
/* 8019C84C 0019978C  48 1C 98 41 */ bl func_8036608C
/* 8019C850 00199790  2C 03 00 00 */ cmpwi r3, 0
/* 8019C854 00199794  41 82 00 74 */ beq lbl_8019C8C8
/* 8019C858 00199798  7F E3 FB 78 */ mr r3, r31
/* 8019C85C 0019979C  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C860 001997A0  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C864 001997A4  38 84 00 D9 */ addi r4, r4, 0xd9
/* 8019C868 001997A8  48 1C C1 2D */ bl strcmp
/* 8019C86C 001997AC  2C 03 00 00 */ cmpwi r3, 0
/* 8019C870 001997B0  41 82 00 58 */ beq lbl_8019C8C8
/* 8019C874 001997B4  7F E3 FB 78 */ mr r3, r31
/* 8019C878 001997B8  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C87C 001997BC  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C880 001997C0  38 84 00 E1 */ addi r4, r4, 0xe1
/* 8019C884 001997C4  48 1C C1 11 */ bl strcmp
/* 8019C888 001997C8  2C 03 00 00 */ cmpwi r3, 0
/* 8019C88C 001997CC  41 82 00 3C */ beq lbl_8019C8C8
/* 8019C890 001997D0  7F E3 FB 78 */ mr r3, r31
/* 8019C894 001997D4  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C898 001997D8  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C89C 001997DC  38 84 00 E9 */ addi r4, r4, 0xe9
/* 8019C8A0 001997E0  48 1C C0 F5 */ bl strcmp
/* 8019C8A4 001997E4  2C 03 00 00 */ cmpwi r3, 0
/* 8019C8A8 001997E8  41 82 00 20 */ beq lbl_8019C8C8
/* 8019C8AC 001997EC  7F E3 FB 78 */ mr r3, r31
/* 8019C8B0 001997F0  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C8B4 001997F4  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C8B8 001997F8  38 84 00 F0 */ addi r4, r4, 0xf0
/* 8019C8BC 001997FC  48 1C C0 D9 */ bl strcmp
/* 8019C8C0 00199800  2C 03 00 00 */ cmpwi r3, 0
/* 8019C8C4 00199804  40 82 00 0C */ bne lbl_8019C8D0
lbl_8019C8C8:
/* 8019C8C8 00199808  3B C0 00 08 */ li r30, 8
/* 8019C8CC 0019980C  48 00 02 24 */ b lbl_8019CAF0
lbl_8019C8D0:
/* 8019C8D0 00199810  7F E3 FB 78 */ mr r3, r31
/* 8019C8D4 00199814  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C8D8 00199818  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C8DC 0019981C  38 84 00 F8 */ addi r4, r4, 0xf8
/* 8019C8E0 00199820  48 1C C0 B5 */ bl strcmp
/* 8019C8E4 00199824  2C 03 00 00 */ cmpwi r3, 0
/* 8019C8E8 00199828  40 82 00 0C */ bne lbl_8019C8F4
/* 8019C8EC 0019982C  3B C0 00 0E */ li r30, 0xe
/* 8019C8F0 00199830  48 00 02 00 */ b lbl_8019CAF0
lbl_8019C8F4:
/* 8019C8F4 00199834  7F E3 FB 78 */ mr r3, r31
/* 8019C8F8 00199838  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C8FC 0019983C  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C900 00199840  38 84 01 00 */ addi r4, r4, 0x100
/* 8019C904 00199844  38 A0 00 06 */ li r5, 6
/* 8019C908 00199848  48 1C 97 85 */ bl func_8036608C
/* 8019C90C 0019984C  2C 03 00 00 */ cmpwi r3, 0
/* 8019C910 00199850  40 82 00 0C */ bne lbl_8019C91C
/* 8019C914 00199854  3B C0 00 09 */ li r30, 9
/* 8019C918 00199858  48 00 01 D8 */ b lbl_8019CAF0
lbl_8019C91C:
/* 8019C91C 0019985C  7F E3 FB 78 */ mr r3, r31
/* 8019C920 00199860  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C924 00199864  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C928 00199868  38 84 01 07 */ addi r4, r4, 0x107
/* 8019C92C 0019986C  38 A0 00 06 */ li r5, 6
/* 8019C930 00199870  48 1C 97 5D */ bl func_8036608C
/* 8019C934 00199874  2C 03 00 00 */ cmpwi r3, 0
/* 8019C938 00199878  41 82 00 24 */ beq lbl_8019C95C
/* 8019C93C 0019987C  7F E3 FB 78 */ mr r3, r31
/* 8019C940 00199880  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C944 00199884  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C948 00199888  38 84 01 0E */ addi r4, r4, 0x10e
/* 8019C94C 0019988C  38 A0 00 06 */ li r5, 6
/* 8019C950 00199890  48 1C 97 3D */ bl func_8036608C
/* 8019C954 00199894  2C 03 00 00 */ cmpwi r3, 0
/* 8019C958 00199898  40 82 00 0C */ bne lbl_8019C964
lbl_8019C95C:
/* 8019C95C 0019989C  3B C0 00 0A */ li r30, 0xa
/* 8019C960 001998A0  48 00 01 90 */ b lbl_8019CAF0
lbl_8019C964:
/* 8019C964 001998A4  7F E3 FB 78 */ mr r3, r31
/* 8019C968 001998A8  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C96C 001998AC  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C970 001998B0  38 84 01 15 */ addi r4, r4, 0x115
/* 8019C974 001998B4  48 1C C0 21 */ bl strcmp
/* 8019C978 001998B8  2C 03 00 00 */ cmpwi r3, 0
/* 8019C97C 001998BC  41 82 00 AC */ beq lbl_8019CA28
/* 8019C980 001998C0  7F E3 FB 78 */ mr r3, r31
/* 8019C984 001998C4  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C988 001998C8  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C98C 001998CC  38 84 01 1C */ addi r4, r4, 0x11c
/* 8019C990 001998D0  48 1C C0 05 */ bl strcmp
/* 8019C994 001998D4  2C 03 00 00 */ cmpwi r3, 0
/* 8019C998 001998D8  41 82 00 90 */ beq lbl_8019CA28
/* 8019C99C 001998DC  7F E3 FB 78 */ mr r3, r31
/* 8019C9A0 001998E0  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C9A4 001998E4  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C9A8 001998E8  38 84 01 24 */ addi r4, r4, 0x124
/* 8019C9AC 001998EC  48 1C BF E9 */ bl strcmp
/* 8019C9B0 001998F0  2C 03 00 00 */ cmpwi r3, 0
/* 8019C9B4 001998F4  41 82 00 74 */ beq lbl_8019CA28
/* 8019C9B8 001998F8  7F E3 FB 78 */ mr r3, r31
/* 8019C9BC 001998FC  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C9C0 00199900  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C9C4 00199904  38 84 01 2C */ addi r4, r4, 0x12c
/* 8019C9C8 00199908  48 1C BF CD */ bl strcmp
/* 8019C9CC 0019990C  2C 03 00 00 */ cmpwi r3, 0
/* 8019C9D0 00199910  41 82 00 58 */ beq lbl_8019CA28
/* 8019C9D4 00199914  7F E3 FB 78 */ mr r3, r31
/* 8019C9D8 00199918  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C9DC 0019991C  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C9E0 00199920  38 84 01 34 */ addi r4, r4, 0x134
/* 8019C9E4 00199924  48 1C BF B1 */ bl strcmp
/* 8019C9E8 00199928  2C 03 00 00 */ cmpwi r3, 0
/* 8019C9EC 0019992C  41 82 00 3C */ beq lbl_8019CA28
/* 8019C9F0 00199930  7F E3 FB 78 */ mr r3, r31
/* 8019C9F4 00199934  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019C9F8 00199938  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019C9FC 0019993C  38 84 01 3C */ addi r4, r4, 0x13c
/* 8019CA00 00199940  48 1C BF 95 */ bl strcmp
/* 8019CA04 00199944  2C 03 00 00 */ cmpwi r3, 0
/* 8019CA08 00199948  41 82 00 20 */ beq lbl_8019CA28
/* 8019CA0C 0019994C  7F E3 FB 78 */ mr r3, r31
/* 8019CA10 00199950  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019CA14 00199954  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019CA18 00199958  38 84 01 44 */ addi r4, r4, 0x144
/* 8019CA1C 0019995C  48 1C BF 79 */ bl strcmp
/* 8019CA20 00199960  2C 03 00 00 */ cmpwi r3, 0
/* 8019CA24 00199964  40 82 00 38 */ bne lbl_8019CA5C
lbl_8019CA28:
/* 8019CA28 00199968  3B C0 00 0B */ li r30, 0xb
/* 8019CA2C 0019996C  7F E3 FB 78 */ mr r3, r31
/* 8019CA30 00199970  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019CA34 00199974  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019CA38 00199978  38 84 01 15 */ addi r4, r4, 0x115
/* 8019CA3C 0019997C  48 1C BF 59 */ bl strcmp
/* 8019CA40 00199980  2C 03 00 00 */ cmpwi r3, 0
/* 8019CA44 00199984  40 82 00 AC */ bne lbl_8019CAF0
/* 8019CA48 00199988  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8019CA4C 0019998C  2C 00 00 01 */ cmpwi r0, 1
/* 8019CA50 00199990  40 82 00 A0 */ bne lbl_8019CAF0
/* 8019CA54 00199994  3B C0 00 0C */ li r30, 0xc
/* 8019CA58 00199998  48 00 00 98 */ b lbl_8019CAF0
lbl_8019CA5C:
/* 8019CA5C 0019999C  7F E3 FB 78 */ mr r3, r31
/* 8019CA60 001999A0  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019CA64 001999A4  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019CA68 001999A8  38 84 01 4C */ addi r4, r4, 0x14c
/* 8019CA6C 001999AC  48 1C BF 29 */ bl strcmp
/* 8019CA70 001999B0  2C 03 00 00 */ cmpwi r3, 0
/* 8019CA74 001999B4  41 82 00 3C */ beq lbl_8019CAB0
/* 8019CA78 001999B8  7F E3 FB 78 */ mr r3, r31
/* 8019CA7C 001999BC  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019CA80 001999C0  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019CA84 001999C4  38 84 01 54 */ addi r4, r4, 0x154
/* 8019CA88 001999C8  48 1C BF 0D */ bl strcmp
/* 8019CA8C 001999CC  2C 03 00 00 */ cmpwi r3, 0
/* 8019CA90 001999D0  41 82 00 20 */ beq lbl_8019CAB0
/* 8019CA94 001999D4  7F E3 FB 78 */ mr r3, r31
/* 8019CA98 001999D8  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019CA9C 001999DC  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019CAA0 001999E0  38 84 01 5C */ addi r4, r4, 0x15c
/* 8019CAA4 001999E4  48 1C BE F1 */ bl strcmp
/* 8019CAA8 001999E8  2C 03 00 00 */ cmpwi r3, 0
/* 8019CAAC 001999EC  40 82 00 0C */ bne lbl_8019CAB8
lbl_8019CAB0:
/* 8019CAB0 001999F0  3B C0 00 0C */ li r30, 0xc
/* 8019CAB4 001999F4  48 00 00 3C */ b lbl_8019CAF0
lbl_8019CAB8:
/* 8019CAB8 001999F8  7F E3 FB 78 */ mr r3, r31
/* 8019CABC 001999FC  3C 80 80 39 */ lis r4, lbl_80394C6C@ha
/* 8019CAC0 00199A00  38 84 4C 6C */ addi r4, r4, lbl_80394C6C@l
/* 8019CAC4 00199A04  38 84 01 64 */ addi r4, r4, 0x164
/* 8019CAC8 00199A08  48 1C BE CD */ bl strcmp
/* 8019CACC 00199A0C  2C 03 00 00 */ cmpwi r3, 0
/* 8019CAD0 00199A10  40 82 00 20 */ bne lbl_8019CAF0
/* 8019CAD4 00199A14  3B C0 00 0C */ li r30, 0xc
/* 8019CAD8 00199A18  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8019CADC 00199A1C  7C 00 07 75 */ extsb. r0, r0
/* 8019CAE0 00199A20  41 82 00 0C */ beq lbl_8019CAEC
/* 8019CAE4 00199A24  2C 00 00 02 */ cmpwi r0, 2
/* 8019CAE8 00199A28  40 82 00 08 */ bne lbl_8019CAF0
lbl_8019CAEC:
/* 8019CAEC 00199A2C  3B C0 00 0B */ li r30, 0xb
lbl_8019CAF0:
/* 8019CAF0 00199A30  7F C3 F3 78 */ mr r3, r30
/* 8019CAF4 00199A34  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8019CAF8 00199A38  83 C1 00 08 */ lwz r30, 8(r1)
/* 8019CAFC 00199A3C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8019CB00 00199A40  7C 08 03 A6 */ mtlr r0
/* 8019CB04 00199A44  38 21 00 10 */ addi r1, r1, 0x10
/* 8019CB08 00199A48  4E 80 00 20 */ blr
