/* 80071488 0006E3C8  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 8007148C 0006E3CC  7C 08 02 A6 */ mflr r0
/* 80071490 0006E3D0  90 01 00 64 */ stw r0, 0x64(r1)
/* 80071494 0006E3D4  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 80071498 0006E3D8  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 8007149C 0006E3DC  39 61 00 50 */ addi r11, r1, 0x50
/* 800714A0 0006E3E0  48 2F 0D 3D */ bl _savegpr_29
/* 800714A4 0006E3E4  7C 7E 1B 78 */ mr r30, r3
/* 800714A8 0006E3E8  7C 9F 23 78 */ mr r31, r4
/* 800714AC 0006E3EC  80 63 00 00 */ lwz r3, 0(r3)
/* 800714B0 0006E3F0  7C 1F 18 40 */ cmplw r31, r3
/* 800714B4 0006E3F4  41 82 00 0C */ beq lbl_800714C0
/* 800714B8 0006E3F8  28 03 00 00 */ cmplwi r3, 0
/* 800714BC 0006E3FC  40 82 00 0C */ bne lbl_800714C8
lbl_800714C0:
/* 800714C0 0006E400  38 60 00 00 */ li r3, 0
/* 800714C4 0006E404  48 00 01 98 */ b lbl_8007165C
lbl_800714C8:
/* 800714C8 0006E408  80 03 05 5C */ lwz r0, 0x55c(r3)
/* 800714CC 0006E40C  90 1E 00 10 */ stw r0, 0x10(r30)
/* 800714D0 0006E410  38 61 00 34 */ addi r3, r1, 0x34
/* 800714D4 0006E414  38 9F 05 50 */ addi r4, r31, 0x550
/* 800714D8 0006E418  38 BE 03 1C */ addi r5, r30, 0x31c
/* 800714DC 0006E41C  48 1F 56 59 */ bl cXyz_NS___mi
/* 800714E0 0006E420  38 61 00 2C */ addi r3, r1, 0x2c
/* 800714E4 0006E424  38 81 00 34 */ addi r4, r1, 0x34
/* 800714E8 0006E428  48 20 03 99 */ bl cSGlobe_X4_
/* 800714EC 0006E42C  80 BE 00 00 */ lwz r5, 0(r30)
/* 800714F0 0006E430  38 61 00 1C */ addi r3, r1, 0x1c
/* 800714F4 0006E434  3B A1 00 32 */ addi r29, r1, 0x32
/* 800714F8 0006E438  7F A4 EB 78 */ mr r4, r29
/* 800714FC 0006E43C  A8 A5 04 E6 */ lha r5, 0x4e6(r5)
/* 80071500 0006E440  48 1F FD 29 */ bl cSAngle_NS___mi_X2_
/* 80071504 0006E444  A8 01 00 1C */ lha r0, 0x1c(r1)
/* 80071508 0006E448  B0 01 00 24 */ sth r0, 0x24(r1)
/* 8007150C 0006E44C  7F A3 EB 78 */ mr r3, r29
/* 80071510 0006E450  48 1F FB D9 */ bl cSAngle_NS_Inv
/* 80071514 0006E454  7C 64 1B 78 */ mr r4, r3
/* 80071518 0006E458  38 61 00 18 */ addi r3, r1, 0x18
/* 8007151C 0006E45C  48 1F FA 7D */ bl cSAngle_X2_
/* 80071520 0006E460  38 61 00 14 */ addi r3, r1, 0x14
/* 80071524 0006E464  38 81 00 18 */ addi r4, r1, 0x18
/* 80071528 0006E468  A8 BF 04 E6 */ lha r5, 0x4e6(r31)
/* 8007152C 0006E46C  48 1F FC FD */ bl cSAngle_NS___mi_X2_
/* 80071530 0006E470  A8 E1 00 14 */ lha r7, 0x14(r1)
/* 80071534 0006E474  B0 E1 00 20 */ sth r7, 0x20(r1)
/* 80071538 0006E478  80 1F 05 5C */ lwz r0, 0x55c(r31)
/* 8007153C 0006E47C  54 00 07 7F */ clrlwi. r0, r0, 0x1d
/* 80071540 0006E480  41 82 00 60 */ beq lbl_800715A0
/* 80071544 0006E484  80 1E 03 34 */ lwz r0, 0x334(r30)
/* 80071548 0006E488  54 00 04 63 */ rlwinm. r0, r0, 0, 0x11, 0x11
/* 8007154C 0006E48C  40 82 00 54 */ bne lbl_800715A0
/* 80071550 0006E490  7F C3 F3 78 */ mr r3, r30
/* 80071554 0006E494  38 80 00 4C */ li r4, 0x4c
/* 80071558 0006E498  7F E5 FB 78 */ mr r5, r31
/* 8007155C 0006E49C  C0 21 00 2C */ lfs f1, 0x2c(r1)
/* 80071560 0006E4A0  A8 C1 00 24 */ lha r6, 0x24(r1)
/* 80071564 0006E4A4  7C E7 07 34 */ extsh r7, r7
/* 80071568 0006E4A8  39 01 00 28 */ addi r8, r1, 0x28
/* 8007156C 0006E4AC  4B FF F9 25 */ bl dAttention_c_NS_calcWeight
/* 80071570 0006E4B0  FF E0 08 90 */ fmr f31, f1
/* 80071574 0006E4B4  38 61 00 10 */ addi r3, r1, 0x10
/* 80071578 0006E4B8  38 81 00 24 */ addi r4, r1, 0x24
/* 8007157C 0006E4BC  48 1F F9 ED */ bl cSAngle_X1_
/* 80071580 0006E4C0  7F C3 F3 78 */ mr r3, r30
/* 80071584 0006E4C4  38 80 00 4C */ li r4, 0x4c
/* 80071588 0006E4C8  7F E5 FB 78 */ mr r5, r31
/* 8007158C 0006E4CC  FC 20 F8 90 */ fmr f1, f31
/* 80071590 0006E4D0  C0 41 00 2C */ lfs f2, 0x2c(r1)
/* 80071594 0006E4D4  38 C1 00 10 */ addi r6, r1, 0x10
/* 80071598 0006E4D8  80 E1 00 28 */ lwz r7, 0x28(r1)
/* 8007159C 0006E4DC  4B FF FB 25 */ bl dAttention_c_NS_setList
lbl_800715A0:
/* 800715A0 0006E4E0  80 1F 05 5C */ lwz r0, 0x55c(r31)
/* 800715A4 0006E4E4  54 00 06 39 */ rlwinm. r0, r0, 0, 0x18, 0x1c
/* 800715A8 0006E4E8  41 82 00 54 */ beq lbl_800715FC
/* 800715AC 0006E4EC  7F C3 F3 78 */ mr r3, r30
/* 800715B0 0006E4F0  38 80 00 41 */ li r4, 0x41
/* 800715B4 0006E4F4  7F E5 FB 78 */ mr r5, r31
/* 800715B8 0006E4F8  C0 21 00 2C */ lfs f1, 0x2c(r1)
/* 800715BC 0006E4FC  A8 C1 00 24 */ lha r6, 0x24(r1)
/* 800715C0 0006E500  A8 E1 00 20 */ lha r7, 0x20(r1)
/* 800715C4 0006E504  39 01 00 28 */ addi r8, r1, 0x28
/* 800715C8 0006E508  4B FF F8 C9 */ bl dAttention_c_NS_calcWeight
/* 800715CC 0006E50C  FF E0 08 90 */ fmr f31, f1
/* 800715D0 0006E510  38 61 00 0C */ addi r3, r1, 0xc
/* 800715D4 0006E514  38 81 00 24 */ addi r4, r1, 0x24
/* 800715D8 0006E518  48 1F F9 91 */ bl cSAngle_X1_
/* 800715DC 0006E51C  7F C3 F3 78 */ mr r3, r30
/* 800715E0 0006E520  38 80 00 41 */ li r4, 0x41
/* 800715E4 0006E524  7F E5 FB 78 */ mr r5, r31
/* 800715E8 0006E528  FC 20 F8 90 */ fmr f1, f31
/* 800715EC 0006E52C  C0 41 00 2C */ lfs f2, 0x2c(r1)
/* 800715F0 0006E530  38 C1 00 0C */ addi r6, r1, 0xc
/* 800715F4 0006E534  80 E1 00 28 */ lwz r7, 0x28(r1)
/* 800715F8 0006E538  4B FF FA C9 */ bl dAttention_c_NS_setList
lbl_800715FC:
/* 800715FC 0006E53C  80 1F 05 5C */ lwz r0, 0x55c(r31)
/* 80071600 0006E540  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 80071604 0006E544  41 82 00 54 */ beq lbl_80071658
/* 80071608 0006E548  7F C3 F3 78 */ mr r3, r30
/* 8007160C 0006E54C  38 80 00 43 */ li r4, 0x43
/* 80071610 0006E550  7F E5 FB 78 */ mr r5, r31
/* 80071614 0006E554  C0 21 00 2C */ lfs f1, 0x2c(r1)
/* 80071618 0006E558  A8 C1 00 24 */ lha r6, 0x24(r1)
/* 8007161C 0006E55C  A8 E1 00 20 */ lha r7, 0x20(r1)
/* 80071620 0006E560  39 01 00 28 */ addi r8, r1, 0x28
/* 80071624 0006E564  4B FF F8 6D */ bl dAttention_c_NS_calcWeight
/* 80071628 0006E568  FF E0 08 90 */ fmr f31, f1
/* 8007162C 0006E56C  38 61 00 08 */ addi r3, r1, 8
/* 80071630 0006E570  38 81 00 24 */ addi r4, r1, 0x24
/* 80071634 0006E574  48 1F F9 35 */ bl cSAngle_X1_
/* 80071638 0006E578  7F C3 F3 78 */ mr r3, r30
/* 8007163C 0006E57C  38 80 00 43 */ li r4, 0x43
/* 80071640 0006E580  7F E5 FB 78 */ mr r5, r31
/* 80071644 0006E584  FC 20 F8 90 */ fmr f1, f31
/* 80071648 0006E588  C0 41 00 2C */ lfs f2, 0x2c(r1)
/* 8007164C 0006E58C  38 C1 00 08 */ addi r6, r1, 8
/* 80071650 0006E590  80 E1 00 28 */ lwz r7, 0x28(r1)
/* 80071654 0006E594  4B FF FA 6D */ bl dAttention_c_NS_setList
lbl_80071658:
/* 80071658 0006E598  38 60 00 00 */ li r3, 0
lbl_8007165C:
/* 8007165C 0006E59C  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 80071660 0006E5A0  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 80071664 0006E5A4  39 61 00 50 */ addi r11, r1, 0x50
/* 80071668 0006E5A8  48 2F 0B C1 */ bl _restgpr_29
/* 8007166C 0006E5AC  80 01 00 64 */ lwz r0, 0x64(r1)
/* 80071670 0006E5B0  7C 08 03 A6 */ mtlr r0
/* 80071674 0006E5B4  38 21 00 60 */ addi r1, r1, 0x60
/* 80071678 0006E5B8  4E 80 00 20 */ blr
