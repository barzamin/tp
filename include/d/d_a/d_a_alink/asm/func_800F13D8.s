/* 800F13D8 000EE318  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800F13DC 000EE31C  7C 08 02 A6 */ mflr r0
/* 800F13E0 000EE320  90 01 00 24 */ stw r0, 0x24(r1)
/* 800F13E4 000EE324  39 61 00 20 */ addi r11, r1, 0x20
/* 800F13E8 000EE328  48 27 0D F1 */ bl _savegpr_28
/* 800F13EC 000EE32C  7C 7E 1B 78 */ mr r30, r3
/* 800F13F0 000EE330  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 800F13F4 000EE334  3B E4 D6 58 */ addi r31, r4, lbl_8038D658@l
/* 800F13F8 000EE338  38 80 00 41 */ li r4, 0x41
/* 800F13FC 000EE33C  4B FD 0B 71 */ bl daAlink_c_NS_commonProcInit
/* 800F1400 000EE340  3B A0 00 00 */ li r29, 0
/* 800F1404 000EE344  A0 1E 1F 80 */ lhz r0, 0x1f80(r30)
/* 800F1408 000EE348  28 00 00 19 */ cmplwi r0, 0x19
/* 800F140C 000EE34C  40 82 00 14 */ bne lbl_800F1420
/* 800F1410 000EE350  7F C3 F3 78 */ mr r3, r30
/* 800F1414 000EE354  38 80 00 02 */ li r4, 2
/* 800F1418 000EE358  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F141C 000EE35C  4B FB C6 D1 */ bl daAlink_c_NS_resetUnderAnime
lbl_800F1420:
/* 800F1420 000EE360  7F C3 F3 78 */ mr r3, r30
/* 800F1424 000EE364  38 80 00 01 */ li r4, 1
/* 800F1428 000EE368  4B FF D4 F1 */ bl daAlink_c_NS_setSyncRide
/* 800F142C 000EE36C  80 9E 27 EC */ lwz r4, 0x27ec(r30)
/* 800F1430 000EE370  28 04 00 00 */ cmplwi r4, 0
/* 800F1434 000EE374  41 82 00 08 */ beq lbl_800F143C
/* 800F1438 000EE378  48 00 00 14 */ b lbl_800F144C
lbl_800F143C:
/* 800F143C 000EE37C  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800F1440 000EE380  38 80 00 00 */ li r4, 0
/* 800F1444 000EE384  4B F8 20 F9 */ bl dAttention_c_NS_LockonTarget
/* 800F1448 000EE388  7C 64 1B 78 */ mr r4, r3
lbl_800F144C:
/* 800F144C 000EE38C  28 04 00 00 */ cmplwi r4, 0
/* 800F1450 000EE390  41 82 00 38 */ beq lbl_800F1488
/* 800F1454 000EE394  38 7E 04 D0 */ addi r3, r30, 0x4d0
/* 800F1458 000EE398  38 84 05 38 */ addi r4, r4, 0x538
/* 800F145C 000EE39C  48 17 F7 A9 */ bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800F1460 000EE3A0  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800F1464 000EE3A4  7C 00 18 50 */ subf r0, r0, r3
/* 800F1468 000EE3A8  7C 00 07 34 */ extsh r0, r0
/* 800F146C 000EE3AC  2C 00 08 00 */ cmpwi r0, 0x800
/* 800F1470 000EE3B0  40 81 00 0C */ ble lbl_800F147C
/* 800F1474 000EE3B4  3B A0 00 02 */ li r29, 2
/* 800F1478 000EE3B8  48 00 00 10 */ b lbl_800F1488
lbl_800F147C:
/* 800F147C 000EE3BC  2C 00 F8 00 */ cmpwi r0, -2048
/* 800F1480 000EE3C0  40 80 00 08 */ bge lbl_800F1488
/* 800F1484 000EE3C4  3B A0 00 03 */ li r29, 3
lbl_800F1488:
/* 800F1488 000EE3C8  88 1E 05 69 */ lbz r0, 0x569(r30)
/* 800F148C 000EE3CC  28 00 00 01 */ cmplwi r0, 1
/* 800F1490 000EE3D0  40 82 00 1C */ bne lbl_800F14AC
/* 800F1494 000EE3D4  2C 1D 00 03 */ cmpwi r29, 3
/* 800F1498 000EE3D8  40 82 00 0C */ bne lbl_800F14A4
/* 800F149C 000EE3DC  38 60 00 02 */ li r3, 2
/* 800F14A0 000EE3E0  48 00 00 84 */ b lbl_800F1524
lbl_800F14A4:
/* 800F14A4 000EE3E4  38 60 00 00 */ li r3, 0
/* 800F14A8 000EE3E8  48 00 00 7C */ b lbl_800F1524
lbl_800F14AC:
/* 800F14AC 000EE3EC  2C 1D 00 03 */ cmpwi r29, 3
/* 800F14B0 000EE3F0  40 82 00 24 */ bne lbl_800F14D4
/* 800F14B4 000EE3F4  48 17 63 B9 */ bl cM_rnd__Fv
/* 800F14B8 000EE3F8  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F14BC 000EE3FC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F14C0 000EE400  40 80 00 0C */ bge lbl_800F14CC
/* 800F14C4 000EE404  38 60 00 02 */ li r3, 2
/* 800F14C8 000EE408  48 00 00 5C */ b lbl_800F1524
lbl_800F14CC:
/* 800F14CC 000EE40C  38 60 00 03 */ li r3, 3
/* 800F14D0 000EE410  48 00 00 54 */ b lbl_800F1524
lbl_800F14D4:
/* 800F14D4 000EE414  2C 1D 00 02 */ cmpwi r29, 2
/* 800F14D8 000EE418  40 82 00 24 */ bne lbl_800F14FC
/* 800F14DC 000EE41C  48 17 63 91 */ bl cM_rnd__Fv
/* 800F14E0 000EE420  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F14E4 000EE424  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F14E8 000EE428  40 80 00 0C */ bge lbl_800F14F4
/* 800F14EC 000EE42C  38 60 00 00 */ li r3, 0
/* 800F14F0 000EE430  48 00 00 34 */ b lbl_800F1524
lbl_800F14F4:
/* 800F14F4 000EE434  38 60 00 01 */ li r3, 1
/* 800F14F8 000EE438  48 00 00 2C */ b lbl_800F1524
lbl_800F14FC:
/* 800F14FC 000EE43C  C0 22 93 24 */ lfs f1, lbl_80452D24-_SDA2_BASE_(r2)
/* 800F1500 000EE440  48 17 64 55 */ bl cM_rndF__Ff
/* 800F1504 000EE444  FC 00 08 1E */ fctiwz f0, f1
/* 800F1508 000EE448  D8 01 00 08 */ stfd f0, 8(r1)
/* 800F150C 000EE44C  80 61 00 0C */ lwz r3, 0xc(r1)
/* 800F1510 000EE450  54 60 F0 02 */ slwi r0, r3, 0x1e
/* 800F1514 000EE454  54 63 0F FE */ srwi r3, r3, 0x1f
/* 800F1518 000EE458  7C 03 00 50 */ subf r0, r3, r0
/* 800F151C 000EE45C  54 00 10 3E */ rotlwi r0, r0, 2
/* 800F1520 000EE460  7C 60 1A 14 */ add r3, r0, r3
lbl_800F1524:
/* 800F1524 000EE464  1C 03 00 0C */ mulli r0, r3, 0xc
/* 800F1528 000EE468  3B 9F 43 50 */ addi r28, r31, 0x4350
/* 800F152C 000EE46C  7F 9C 02 14 */ add r28, r28, r0
/* 800F1530 000EE470  38 00 00 02 */ li r0, 2
/* 800F1534 000EE474  98 1E 2F 96 */ stb r0, 0x2f96(r30)
/* 800F1538 000EE478  2C 03 00 00 */ cmpwi r3, 0
/* 800F153C 000EE47C  40 82 00 0C */ bne lbl_800F1548
/* 800F1540 000EE480  3B BF 05 C4 */ addi r29, r31, 0x5c4
/* 800F1544 000EE484  48 00 00 28 */ b lbl_800F156C
lbl_800F1548:
/* 800F1548 000EE488  2C 03 00 01 */ cmpwi r3, 1
/* 800F154C 000EE48C  40 82 00 0C */ bne lbl_800F1558
/* 800F1550 000EE490  3B BF 05 E4 */ addi r29, r31, 0x5e4
/* 800F1554 000EE494  48 00 00 18 */ b lbl_800F156C
lbl_800F1558:
/* 800F1558 000EE498  2C 03 00 02 */ cmpwi r3, 2
/* 800F155C 000EE49C  40 82 00 0C */ bne lbl_800F1568
/* 800F1560 000EE4A0  3B BF 06 04 */ addi r29, r31, 0x604
/* 800F1564 000EE4A4  48 00 00 08 */ b lbl_800F156C
lbl_800F1568:
/* 800F1568 000EE4A8  3B BF 06 24 */ addi r29, r31, 0x624
lbl_800F156C:
/* 800F156C 000EE4AC  7F C3 F3 78 */ mr r3, r30
/* 800F1570 000EE4B0  A0 9C 00 04 */ lhz r4, 4(r28)
/* 800F1574 000EE4B4  38 A0 00 02 */ li r5, 2
/* 800F1578 000EE4B8  7F A6 EB 78 */ mr r6, r29
/* 800F157C 000EE4BC  4B FB C1 75 */ bl daAlink_c_NS_setUpperAnimeParam
/* 800F1580 000EE4C0  7F C3 F3 78 */ mr r3, r30
/* 800F1584 000EE4C4  80 9C 00 00 */ lwz r4, 0(r28)
/* 800F1588 000EE4C8  4B FB E5 21 */ bl daAlink_c_NS_setFacePriTexture
/* 800F158C 000EE4CC  7F C3 F3 78 */ mr r3, r30
/* 800F1590 000EE4D0  A0 9C 00 06 */ lhz r4, 6(r28)
/* 800F1594 000EE4D4  38 A0 00 01 */ li r5, 1
/* 800F1598 000EE4D8  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800F159C 000EE4DC  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800F15A0 000EE4E0  4B FB DF 11 */ bl daAlink_c_NS_setFaceBck
/* 800F15A4 000EE4E4  7F C3 F3 78 */ mr r3, r30
/* 800F15A8 000EE4E8  88 9C 00 0A */ lbz r4, 0xa(r28)
/* 800F15AC 000EE4EC  4B FD FF 81 */ bl daAlink_c_NS_setCutType
/* 800F15B0 000EE4F0  C0 1D 00 14 */ lfs f0, 0x14(r29)
/* 800F15B4 000EE4F4  D0 1E 34 78 */ stfs f0, 0x3478(r30)
/* 800F15B8 000EE4F8  C0 1D 00 18 */ lfs f0, 0x18(r29)
/* 800F15BC 000EE4FC  D0 1E 34 7C */ stfs f0, 0x347c(r30)
/* 800F15C0 000EE500  C0 1D 00 1C */ lfs f0, 0x1c(r29)
/* 800F15C4 000EE504  D0 1E 34 80 */ stfs f0, 0x3480(r30)
/* 800F15C8 000EE508  C0 1D 00 10 */ lfs f0, 0x10(r29)
/* 800F15CC 000EE50C  D0 1E 34 84 */ stfs f0, 0x3484(r30)
/* 800F15D0 000EE510  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800F15D4 000EE514  54 00 01 D1 */ rlwinm. r0, r0, 0, 7, 8
/* 800F15D8 000EE518  41 82 00 2C */ beq lbl_800F1604
/* 800F15DC 000EE51C  7F C3 F3 78 */ mr r3, r30
/* 800F15E0 000EE520  38 80 00 00 */ li r4, 0
/* 800F15E4 000EE524  38 A0 00 01 */ li r5, 1
/* 800F15E8 000EE528  38 C0 00 01 */ li r6, 1
/* 800F15EC 000EE52C  38 E0 00 02 */ li r7, 2
/* 800F15F0 000EE530  39 1F 08 34 */ addi r8, r31, 0x834
/* 800F15F4 000EE534  C0 28 00 90 */ lfs f1, 0x90(r8)
/* 800F15F8 000EE538  C0 48 00 94 */ lfs f2, 0x94(r8)
/* 800F15FC 000EE53C  4B FE 00 8D */ bl daAlink_c_NS_setSwordAtParam
/* 800F1600 000EE540  48 00 00 28 */ b lbl_800F1628
lbl_800F1604:
/* 800F1604 000EE544  7F C3 F3 78 */ mr r3, r30
/* 800F1608 000EE548  38 80 00 00 */ li r4, 0
/* 800F160C 000EE54C  38 A0 00 01 */ li r5, 1
/* 800F1610 000EE550  38 C0 00 01 */ li r6, 1
/* 800F1614 000EE554  38 E0 00 02 */ li r7, 2
/* 800F1618 000EE558  39 1F 08 34 */ addi r8, r31, 0x834
/* 800F161C 000EE55C  C0 28 00 7C */ lfs f1, 0x7c(r8)
/* 800F1620 000EE560  C0 48 00 80 */ lfs f2, 0x80(r8)
/* 800F1624 000EE564  4B FE 00 65 */ bl daAlink_c_NS_setSwordAtParam
lbl_800F1628:
/* 800F1628 000EE568  7F C3 F3 78 */ mr r3, r30
/* 800F162C 000EE56C  3C 80 00 01 */ lis r4, 1
/* 800F1630 000EE570  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 800F1634 000EE574  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800F1638 000EE578  7D 89 03 A6 */ mtctr r12
/* 800F163C 000EE57C  4E 80 04 21 */ bctrl
/* 800F1640 000EE580  38 7F 08 34 */ addi r3, r31, 0x834
/* 800F1644 000EE584  A8 03 00 52 */ lha r0, 0x52(r3)
/* 800F1648 000EE588  B0 1E 30 7E */ sth r0, 0x307e(r30)
/* 800F164C 000EE58C  38 00 00 00 */ li r0, 0
/* 800F1650 000EE590  B0 1E 30 12 */ sth r0, 0x3012(r30)
/* 800F1654 000EE594  B0 1E 30 04 */ sth r0, 0x3004(r30)
/* 800F1658 000EE598  7F C3 F3 78 */ mr r3, r30
/* 800F165C 000EE59C  48 03 2A E9 */ bl daAlink_c_NS_setCutWaterDropEffect
/* 800F1660 000EE5A0  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800F1664 000EE5A4  64 00 10 00 */ oris r0, r0, 0x1000
/* 800F1668 000EE5A8  90 1E 05 74 */ stw r0, 0x574(r30)
/* 800F166C 000EE5AC  38 60 00 01 */ li r3, 1
/* 800F1670 000EE5B0  39 61 00 20 */ addi r11, r1, 0x20
/* 800F1674 000EE5B4  48 27 0B B1 */ bl _restgpr_28
/* 800F1678 000EE5B8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800F167C 000EE5BC  7C 08 03 A6 */ mtlr r0
/* 800F1680 000EE5C0  38 21 00 20 */ addi r1, r1, 0x20
/* 800F1684 000EE5C4  4E 80 00 20 */ blr