/* 8005A340 00057280  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8005A344 00057284  7C 08 02 A6 */ mflr r0
/* 8005A348 00057288  90 01 00 14 */ stw r0, 0x14(r1)
/* 8005A34C 0005728C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8005A350 00057290  93 C1 00 08 */ stw r30, 8(r1)
/* 8005A354 00057294  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8005A358 00057298  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8005A35C 0005729C  3B E3 4E 00 */ addi r31, r3, 0x4e00
/* 8005A360 000572A0  7F E3 FB 78 */ mr r3, r31
/* 8005A364 000572A4  3C 80 80 38 */ lis r4, lbl_8037A368@ha
/* 8005A368 000572A8  38 84 A3 68 */ addi r4, r4, lbl_8037A368@l
/* 8005A36C 000572AC  38 84 00 D0 */ addi r4, r4, 0xd0
/* 8005A370 000572B0  48 30 E6 25 */ bl strcmp
/* 8005A374 000572B4  2C 03 00 00 */ cmpwi r3, 0
/* 8005A378 000572B8  41 82 00 54 */ beq lbl_8005A3CC
/* 8005A37C 000572BC  7F E3 FB 78 */ mr r3, r31
/* 8005A380 000572C0  3C 80 80 38 */ lis r4, lbl_8037A368@ha
/* 8005A384 000572C4  38 84 A3 68 */ addi r4, r4, lbl_8037A368@l
/* 8005A388 000572C8  38 84 01 4B */ addi r4, r4, 0x14b
/* 8005A38C 000572CC  48 30 E6 09 */ bl strcmp
/* 8005A390 000572D0  2C 03 00 00 */ cmpwi r3, 0
/* 8005A394 000572D4  41 82 00 38 */ beq lbl_8005A3CC
/* 8005A398 000572D8  7F E3 FB 78 */ mr r3, r31
/* 8005A39C 000572DC  3C 80 80 38 */ lis r4, lbl_8037A368@ha
/* 8005A3A0 000572E0  38 84 A3 68 */ addi r4, r4, lbl_8037A368@l
/* 8005A3A4 000572E4  38 84 00 91 */ addi r4, r4, 0x91
/* 8005A3A8 000572E8  48 30 E5 ED */ bl strcmp
/* 8005A3AC 000572EC  2C 03 00 00 */ cmpwi r3, 0
/* 8005A3B0 000572F0  40 82 01 3C */ bne lbl_8005A4EC
/* 8005A3B4 000572F4  C0 22 86 E0 */ lfs f1, lbl_804520E0-_SDA2_BASE_(r2)
/* 8005A3B8 000572F8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A3BC 000572FC  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A3C0 00057300  C0 03 11 D8 */ lfs f0, 0x11d8(r3)
/* 8005A3C4 00057304  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 8005A3C8 00057308  41 82 01 24 */ beq lbl_8005A4EC
lbl_8005A3CC:
/* 8005A3CC 0005730C  48 15 21 B1 */ bl dKy_darkworld_check
/* 8005A3D0 00057310  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8005A3D4 00057314  40 82 01 18 */ bne lbl_8005A4EC
/* 8005A3D8 00057318  7F E3 FB 78 */ mr r3, r31
/* 8005A3DC 0005731C  3C 80 80 38 */ lis r4, lbl_8037A368@ha
/* 8005A3E0 00057320  38 84 A3 68 */ addi r4, r4, lbl_8037A368@l
/* 8005A3E4 00057324  38 84 00 91 */ addi r4, r4, 0x91
/* 8005A3E8 00057328  48 30 E5 AD */ bl strcmp
/* 8005A3EC 0005732C  2C 03 00 00 */ cmpwi r3, 0
/* 8005A3F0 00057330  41 82 00 30 */ beq lbl_8005A420
/* 8005A3F4 00057334  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A3F8 00057338  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A3FC 0005733C  C0 23 12 44 */ lfs f1, 0x1244(r3)
/* 8005A400 00057340  C0 02 87 10 */ lfs f0, lbl_80452110-_SDA2_BASE_(r2)
/* 8005A404 00057344  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8005A408 00057348  4C 41 13 82 */ cror 2, 1, 2
/* 8005A40C 0005734C  40 82 00 14 */ bne lbl_8005A420
/* 8005A410 00057350  C0 02 87 64 */ lfs f0, lbl_80452164-_SDA2_BASE_(r2)
/* 8005A414 00057354  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8005A418 00057358  4C 40 13 82 */ cror 2, 0, 2
/* 8005A41C 0005735C  41 82 00 40 */ beq lbl_8005A45C
lbl_8005A420:
/* 8005A420 00057360  7F E3 FB 78 */ mr r3, r31
/* 8005A424 00057364  3C 80 80 38 */ lis r4, lbl_8037A368@ha
/* 8005A428 00057368  38 84 A3 68 */ addi r4, r4, lbl_8037A368@l
/* 8005A42C 0005736C  38 84 00 91 */ addi r4, r4, 0x91
/* 8005A430 00057370  48 30 E5 65 */ bl strcmp
/* 8005A434 00057374  2C 03 00 00 */ cmpwi r3, 0
/* 8005A438 00057378  40 82 00 60 */ bne lbl_8005A498
/* 8005A43C 0005737C  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A440 00057380  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A444 00057384  88 03 12 C9 */ lbz r0, 0x12c9(r3)
/* 8005A448 00057388  28 00 00 01 */ cmplwi r0, 1
/* 8005A44C 0005738C  41 80 00 4C */ blt lbl_8005A498
/* 8005A450 00057390  28 00 00 06 */ cmplwi r0, 6
/* 8005A454 00057394  40 80 00 44 */ bge lbl_8005A498
/* 8005A458 00057398  48 14 E6 E1 */ bl dKy_get_dayofweek
lbl_8005A45C:
/* 8005A45C 0005739C  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A460 000573A0  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A464 000573A4  38 63 0E BC */ addi r3, r3, 0xebc
/* 8005A468 000573A8  C0 22 86 E4 */ lfs f1, lbl_804520E4-_SDA2_BASE_(r2)
/* 8005A46C 000573AC  C0 42 87 68 */ lfs f2, lbl_80452168-_SDA2_BASE_(r2)
/* 8005A470 000573B0  C0 62 87 6C */ lfs f3, lbl_8045216C-_SDA2_BASE_(r2)
/* 8005A474 000573B4  C0 82 87 24 */ lfs f4, lbl_80452124-_SDA2_BASE_(r2)
/* 8005A478 000573B8  48 21 55 05 */ bl cLib_addCalc__FPfffff
/* 8005A47C 000573BC  38 00 00 07 */ li r0, 7
/* 8005A480 000573C0  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A484 000573C4  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A488 000573C8  98 03 0E B5 */ stb r0, 0xeb5(r3)
/* 8005A48C 000573CC  38 00 00 31 */ li r0, 0x31
/* 8005A490 000573D0  90 03 0E B8 */ stw r0, 0xeb8(r3)
/* 8005A494 000573D4  48 00 00 58 */ b lbl_8005A4EC
lbl_8005A498:
/* 8005A498 000573D8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A49C 000573DC  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A4A0 000573E0  3B C3 0E BC */ addi r30, r3, 0xebc
/* 8005A4A4 000573E4  7F C3 F3 78 */ mr r3, r30
/* 8005A4A8 000573E8  C0 22 86 E0 */ lfs f1, lbl_804520E0-_SDA2_BASE_(r2)
/* 8005A4AC 000573EC  C0 42 87 68 */ lfs f2, lbl_80452168-_SDA2_BASE_(r2)
/* 8005A4B0 000573F0  C0 62 87 6C */ lfs f3, lbl_8045216C-_SDA2_BASE_(r2)
/* 8005A4B4 000573F4  C0 82 87 70 */ lfs f4, lbl_80452170-_SDA2_BASE_(r2)
/* 8005A4B8 000573F8  48 21 54 C5 */ bl cLib_addCalc__FPfffff
/* 8005A4BC 000573FC  C0 3E 00 00 */ lfs f1, 0(r30)
/* 8005A4C0 00057400  C0 02 87 20 */ lfs f0, lbl_80452120-_SDA2_BASE_(r2)
/* 8005A4C4 00057404  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8005A4C8 00057408  4C 40 13 82 */ cror 2, 0, 2
/* 8005A4CC 0005740C  40 82 00 20 */ bne lbl_8005A4EC
/* 8005A4D0 00057410  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A4D4 00057414  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A4D8 00057418  80 03 0E B8 */ lwz r0, 0xeb8(r3)
/* 8005A4DC 0005741C  2C 00 00 31 */ cmpwi r0, 0x31
/* 8005A4E0 00057420  40 82 00 0C */ bne lbl_8005A4EC
/* 8005A4E4 00057424  38 00 00 00 */ li r0, 0
/* 8005A4E8 00057428  90 03 0E B8 */ stw r0, 0xeb8(r3)
lbl_8005A4EC:
/* 8005A4EC 0005742C  7F E3 FB 78 */ mr r3, r31
/* 8005A4F0 00057430  3C 80 80 38 */ lis r4, lbl_8037A368@ha
/* 8005A4F4 00057434  38 84 A3 68 */ addi r4, r4, lbl_8037A368@l
/* 8005A4F8 00057438  38 84 01 4B */ addi r4, r4, 0x14b
/* 8005A4FC 0005743C  48 30 E4 99 */ bl strcmp
/* 8005A500 00057440  2C 03 00 00 */ cmpwi r3, 0
/* 8005A504 00057444  40 82 00 5C */ bne lbl_8005A560
/* 8005A508 00057448  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A50C 0005744C  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A510 00057450  88 03 12 FE */ lbz r0, 0x12fe(r3)
/* 8005A514 00057454  28 00 00 01 */ cmplwi r0, 1
/* 8005A518 00057458  41 82 00 0C */ beq lbl_8005A524
/* 8005A51C 0005745C  28 00 00 03 */ cmplwi r0, 3
/* 8005A520 00057460  40 82 00 40 */ bne lbl_8005A560
lbl_8005A524:
/* 8005A524 00057464  28 00 00 01 */ cmplwi r0, 1
/* 8005A528 00057468  40 82 00 18 */ bne lbl_8005A540
/* 8005A52C 0005746C  38 00 00 23 */ li r0, 0x23
/* 8005A530 00057470  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A534 00057474  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A538 00057478  90 03 0E AC */ stw r0, 0xeac(r3)
/* 8005A53C 0005747C  48 00 00 14 */ b lbl_8005A550
lbl_8005A540:
/* 8005A540 00057480  38 00 00 1E */ li r0, 0x1e
/* 8005A544 00057484  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A548 00057488  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A54C 0005748C  90 03 0E AC */ stw r0, 0xeac(r3)
lbl_8005A550:
/* 8005A550 00057490  38 00 00 02 */ li r0, 2
/* 8005A554 00057494  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8005A558 00057498  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8005A55C 0005749C  98 03 0E A9 */ stb r0, 0xea9(r3)
lbl_8005A560:
/* 8005A560 000574A0  48 00 06 D1 */ bl squal_proc
/* 8005A564 000574A4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8005A568 000574A8  83 C1 00 08 */ lwz r30, 8(r1)
/* 8005A56C 000574AC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8005A570 000574B0  7C 08 03 A6 */ mtlr r0
/* 8005A574 000574B4  38 21 00 10 */ addi r1, r1, 0x10
/* 8005A578 000574B8  4E 80 00 20 */ blr
