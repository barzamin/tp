/* 801622B4 0015F1F4  94 21 FF 60 */ stwu r1, -0xa0(r1)
/* 801622B8 0015F1F8  7C 08 02 A6 */ mflr r0
/* 801622BC 0015F1FC  90 01 00 A4 */ stw r0, 0xa4(r1)
/* 801622C0 0015F200  DB E1 00 90 */ stfd f31, 0x90(r1)
/* 801622C4 0015F204  F3 E1 00 98 */ psq_st f31, 152(r1), 0, 0
/* 801622C8 0015F208  39 61 00 90 */ addi r11, r1, 0x90
/* 801622CC 0015F20C  48 1F FF 01 */ bl _savegpr_25
/* 801622D0 0015F210  7C 7F 1B 78 */ mr r31, r3
/* 801622D4 0015F214  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801622D8 0015F218  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 801622DC 0015F21C  83 84 5D B4 */ lwz r28, 0x5db4(r4)
/* 801622E0 0015F220  80 AD 8A 98 */ lwz r5, lbl_80451018-_SDA_BASE_(r13)
/* 801622E4 0015F224  38 60 00 00 */ li r3, 0
/* 801622E8 0015F228  80 1C 05 70 */ lwz r0, 0x570(r28)
/* 801622EC 0015F22C  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801622F0 0015F230  41 82 00 14 */ beq lbl_80162304
/* 801622F4 0015F234  80 05 08 90 */ lwz r0, 0x890(r5)
/* 801622F8 0015F238  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 801622FC 0015F23C  40 82 00 08 */ bne lbl_80162304
/* 80162300 0015F240  38 60 00 01 */ li r3, 1
lbl_80162304:
/* 80162304 0015F244  98 7F 01 94 */ stb r3, 0x194(r31)
/* 80162308 0015F248  3B 60 00 00 */ li r27, 0
/* 8016230C 0015F24C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80162310 0015F250  3B A3 61 C0 */ addi r29, r3, g_dComIfG_gameInfo@l
/* 80162314 0015F254  80 7D 5D 7C */ lwz r3, 0x5d7c(r29)
/* 80162318 0015F258  38 00 F7 FB */ li r0, -2053
/* 8016231C 0015F25C  7C 60 00 38 */ and r0, r3, r0
/* 80162320 0015F260  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
/* 80162324 0015F264  83 5F 01 90 */ lwz r26, 0x190(r31)
/* 80162328 0015F268  80 64 5D B4 */ lwz r3, 0x5db4(r4)
/* 8016232C 0015F26C  80 03 05 74 */ lwz r0, 0x574(r3)
/* 80162330 0015F270  54 00 3F FE */ rlwinm r0, r0, 7, 0x1f, 0x1f
/* 80162334 0015F274  90 1F 01 90 */ stw r0, 0x190(r31)
/* 80162338 0015F278  38 7F 02 28 */ addi r3, r31, 0x228
/* 8016233C 0015F27C  48 02 02 A9 */ bl dCamForcusLine_NS_Off
/* 80162340 0015F280  80 9F 06 0C */ lwz r4, 0x60c(r31)
/* 80162344 0015F284  3C 60 EF E9 */ lis r3, 0xEFE973DE@ha
/* 80162348 0015F288  38 03 73 DE */ addi r0, r3, 0xEFE973DE@l
/* 8016234C 0015F28C  7C 80 00 38 */ and r0, r4, r0
/* 80162350 0015F290  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 80162354 0015F294  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 80162358 0015F298  54 00 07 34 */ rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8016235C 0015F29C  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 80162360 0015F2A0  38 00 00 00 */ li r0, 0
/* 80162364 0015F2A4  90 1F 01 8C */ stw r0, 0x18c(r31)
/* 80162368 0015F2A8  90 1F 01 88 */ stw r0, 0x188(r31)
/* 8016236C 0015F2AC  88 8D 87 E4 */ lbz r4, lbl_80450D64-_SDA_BASE_(r13)
/* 80162370 0015F2B0  7C 84 07 74 */ extsb r4, r4
/* 80162374 0015F2B4  80 1F 00 04 */ lwz r0, 4(r31)
/* 80162378 0015F2B8  7C 04 00 00 */ cmpw r4, r0
/* 8016237C 0015F2BC  41 82 00 0C */ beq lbl_80162388
/* 80162380 0015F2C0  7F E3 FB 78 */ mr r3, r31
/* 80162384 0015F2C4  48 00 24 2D */ bl dCamera_c_NS_onRoomChange
lbl_80162388:
/* 80162388 0015F2C8  7F E3 FB 78 */ mr r3, r31
/* 8016238C 0015F2CC  48 00 5C 61 */ bl dCamera_c_NS_checkGroundInfo
/* 80162390 0015F2D0  7F E3 FB 78 */ mr r3, r31
/* 80162394 0015F2D4  48 00 0F AD */ bl dCamera_c_NS_setMapToolData
/* 80162398 0015F2D8  7F 83 E3 78 */ mr r3, r28
/* 8016239C 0015F2DC  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 801623A0 0015F2E0  81 8C 00 94 */ lwz r12, 0x94(r12)
/* 801623A4 0015F2E4  7D 89 03 A6 */ mtctr r12
/* 801623A8 0015F2E8  4E 80 04 21 */ bctrl
/* 801623AC 0015F2EC  2C 03 00 00 */ cmpwi r3, 0
/* 801623B0 0015F2F0  40 82 00 20 */ bne lbl_801623D0
/* 801623B4 0015F2F4  7F 83 E3 78 */ mr r3, r28
/* 801623B8 0015F2F8  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 801623BC 0015F2FC  81 8C 00 98 */ lwz r12, 0x98(r12)
/* 801623C0 0015F300  7D 89 03 A6 */ mtctr r12
/* 801623C4 0015F304  4E 80 04 21 */ bctrl
/* 801623C8 0015F308  2C 03 00 00 */ cmpwi r3, 0
/* 801623CC 0015F30C  41 82 00 20 */ beq lbl_801623EC
lbl_801623D0:
/* 801623D0 0015F310  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 801623D4 0015F314  64 00 00 01 */ oris r0, r0, 1
/* 801623D8 0015F318  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 801623DC 0015F31C  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 801623E0 0015F320  64 00 00 10 */ oris r0, r0, 0x10
/* 801623E4 0015F324  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 801623E8 0015F328  48 00 00 1C */ b lbl_80162404
lbl_801623EC:
/* 801623EC 0015F32C  88 1F 03 D0 */ lbz r0, 0x3d0(r31)
/* 801623F0 0015F330  28 00 00 00 */ cmplwi r0, 0
/* 801623F4 0015F334  41 82 00 10 */ beq lbl_80162404
/* 801623F8 0015F338  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 801623FC 0015F33C  54 00 04 1C */ rlwinm r0, r0, 0, 0x10, 0xe
/* 80162400 0015F340  90 1F 06 0C */ stw r0, 0x60c(r31)
lbl_80162404:
/* 80162404 0015F344  80 1C 05 80 */ lwz r0, 0x580(r28)
/* 80162408 0015F348  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8016240C 0015F34C  40 82 00 14 */ bne lbl_80162420
/* 80162410 0015F350  7F 83 E3 78 */ mr r3, r28
/* 80162414 0015F354  4B FB 00 61 */ bl daAlink_c_NS_checkIronBallThrowMode
/* 80162418 0015F358  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8016241C 0015F35C  41 82 00 10 */ beq lbl_8016242C
lbl_80162420:
/* 80162420 0015F360  80 1F 0A 04 */ lwz r0, 0xa04(r31)
/* 80162424 0015F364  90 1F 09 48 */ stw r0, 0x948(r31)
/* 80162428 0015F368  48 00 00 18 */ b lbl_80162440
lbl_8016242C:
/* 8016242C 0015F36C  80 7F 09 48 */ lwz r3, 0x948(r31)
/* 80162430 0015F370  2C 03 00 00 */ cmpwi r3, 0
/* 80162434 0015F374  41 82 00 0C */ beq lbl_80162440
/* 80162438 0015F378  38 03 FF FF */ addi r0, r3, -1
/* 8016243C 0015F37C  90 1F 09 48 */ stw r0, 0x948(r31)
lbl_80162440:
/* 80162440 0015F380  7F E3 FB 78 */ mr r3, r31
/* 80162444 0015F384  4B FF F9 F1 */ bl dCamera_c_NS_updateMonitor
/* 80162448 0015F388  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8016244C 0015F38C  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
/* 80162450 0015F390  3B 3E 56 B8 */ addi r25, r30, 0x56b8
/* 80162454 0015F394  7F 23 CB 78 */ mr r3, r25
/* 80162458 0015F398  4B F1 13 8D */ bl dAttention_c_NS_LockonTruth
/* 8016245C 0015F39C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80162460 0015F3A0  41 82 00 14 */ beq lbl_80162474
/* 80162464 0015F3A4  7F 23 CB 78 */ mr r3, r25
/* 80162468 0015F3A8  38 80 00 00 */ li r4, 0
/* 8016246C 0015F3AC  4B F1 10 D1 */ bl dAttention_c_NS_LockonTarget
/* 80162470 0015F3B0  48 00 00 08 */ b lbl_80162478
lbl_80162474:
/* 80162474 0015F3B4  38 60 00 00 */ li r3, 0
lbl_80162478:
/* 80162478 0015F3B8  90 7F 01 84 */ stw r3, 0x184(r31)
/* 8016247C 0015F3BC  80 19 03 34 */ lwz r0, 0x334(r25)
/* 80162480 0015F3C0  54 00 02 90 */ rlwinm r0, r0, 0, 0xa, 8
/* 80162484 0015F3C4  90 19 03 34 */ stw r0, 0x334(r25)
/* 80162488 0015F3C8  80 9D 5D 7C */ lwz r4, 0x5d7c(r29)
/* 8016248C 0015F3CC  3C 60 FF FF */ lis r3, 0xFFFF0BFF@ha
/* 80162490 0015F3D0  38 03 0B FF */ addi r0, r3, 0xFFFF0BFF@l
/* 80162494 0015F3D4  7C 80 00 38 */ and r0, r4, r0
/* 80162498 0015F3D8  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
/* 8016249C 0015F3DC  80 1E 51 84 */ lwz r0, 0x5184(r30)
/* 801624A0 0015F3E0  2C 00 00 00 */ cmpwi r0, 0
/* 801624A4 0015F3E4  40 82 00 24 */ bne lbl_801624C8
/* 801624A8 0015F3E8  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 801624AC 0015F3EC  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 801624B0 0015F3F0  40 82 00 18 */ bne lbl_801624C8
/* 801624B4 0015F3F4  7F E3 FB 78 */ mr r3, r31
/* 801624B8 0015F3F8  4B FF F2 F9 */ bl dCamera_c_NS_updatePad
/* 801624BC 0015F3FC  38 7F 0A 70 */ addi r3, r31, 0xa70
/* 801624C0 0015F400  80 9F 01 7C */ lwz r4, 0x17c(r31)
/* 801624C4 0015F404  4B F2 5F 99 */ bl dCstick_c_NS_Shift
lbl_801624C8:
/* 801624C8 0015F408  88 1E 4F AD */ lbz r0, 0x4fad(r30)
/* 801624CC 0015F40C  28 00 00 00 */ cmplwi r0, 0
/* 801624D0 0015F410  41 82 00 20 */ beq lbl_801624F0
/* 801624D4 0015F414  C0 02 9C A0 */ lfs f0, lbl_804536A0-_SDA2_BASE_(r2)
/* 801624D8 0015F418  D0 1F 01 C4 */ stfs f0, 0x1c4(r31)
/* 801624DC 0015F41C  D0 1F 01 C0 */ stfs f0, 0x1c0(r31)
/* 801624E0 0015F420  D0 1F 01 BC */ stfs f0, 0x1bc(r31)
/* 801624E4 0015F424  D0 1F 01 E0 */ stfs f0, 0x1e0(r31)
/* 801624E8 0015F428  D0 1F 01 DC */ stfs f0, 0x1dc(r31)
/* 801624EC 0015F42C  D0 1F 01 D8 */ stfs f0, 0x1d8(r31)
lbl_801624F0:
/* 801624F0 0015F430  7F E3 FB 78 */ mr r3, r31
/* 801624F4 0015F434  4B FF FB 95 */ bl dCamera_c_NS_checkForceLockTarget
/* 801624F8 0015F438  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801624FC 0015F43C  40 82 00 10 */ bne lbl_8016250C
/* 80162500 0015F440  38 00 FF FF */ li r0, -1
/* 80162504 0015F444  90 1F 01 98 */ stw r0, 0x198(r31)
/* 80162508 0015F448  48 00 00 10 */ b lbl_80162518
lbl_8016250C:
/* 8016250C 0015F44C  80 7F 01 A0 */ lwz r3, 0x1a0(r31)
/* 80162510 0015F450  38 03 00 01 */ addi r0, r3, 1
/* 80162514 0015F454  90 1F 01 A0 */ stw r0, 0x1a0(r31)
lbl_80162518:
/* 80162518 0015F458  7F E3 FB 78 */ mr r3, r31
/* 8016251C 0015F45C  80 9F 06 8C */ lwz r4, 0x68c(r31)
/* 80162520 0015F460  48 00 18 3D */ bl dCamera_c_NS_nextType
/* 80162524 0015F464  90 7F 06 90 */ stw r3, 0x690(r31)
/* 80162528 0015F468  80 BF 06 90 */ lwz r5, 0x690(r31)
/* 8016252C 0015F46C  80 9F 06 8C */ lwz r4, 0x68c(r31)
/* 80162530 0015F470  7C 05 20 00 */ cmpw r5, r4
/* 80162534 0015F474  41 82 00 1C */ beq lbl_80162550
/* 80162538 0015F478  7F E3 FB 78 */ mr r3, r31
/* 8016253C 0015F47C  48 00 1F 11 */ bl dCamera_c_NS_onTypeChange
/* 80162540 0015F480  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80162544 0015F484  41 82 00 0C */ beq lbl_80162550
/* 80162548 0015F488  80 1F 06 90 */ lwz r0, 0x690(r31)
/* 8016254C 0015F48C  90 1F 06 8C */ stw r0, 0x68c(r31)
lbl_80162550:
/* 80162550 0015F490  80 1D 5D 7C */ lwz r0, 0x5d7c(r29)
/* 80162554 0015F494  54 05 03 98 */ rlwinm r5, r0, 0, 0xe, 0xc
/* 80162558 0015F498  90 BD 5D 7C */ stw r5, 0x5d7c(r29)
/* 8016255C 0015F49C  80 9F 06 8C */ lwz r4, 0x68c(r31)
/* 80162560 0015F4A0  3C 60 80 43 */ lis r3, lbl_8042C8F8@ha
/* 80162564 0015F4A4  38 63 C8 F8 */ addi r3, r3, lbl_8042C8F8@l
/* 80162568 0015F4A8  80 03 00 A4 */ lwz r0, 0xa4(r3)
/* 8016256C 0015F4AC  7C 04 00 00 */ cmpw r4, r0
/* 80162570 0015F4B0  40 82 00 0C */ bne lbl_8016257C
/* 80162574 0015F4B4  64 A0 00 04 */ oris r0, r5, 4
/* 80162578 0015F4B8  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
lbl_8016257C:
/* 8016257C 0015F4BC  7F E3 FB 78 */ mr r3, r31
/* 80162580 0015F4C0  80 9F 01 A4 */ lwz r4, 0x1a4(r31)
/* 80162584 0015F4C4  48 00 10 61 */ bl dCamera_c_NS_nextMode
/* 80162588 0015F4C8  90 7F 01 A8 */ stw r3, 0x1a8(r31)
/* 8016258C 0015F4CC  80 9F 01 90 */ lwz r4, 0x190(r31)
/* 80162590 0015F4D0  7C 1A 20 00 */ cmpw r26, r4
/* 80162594 0015F4D4  40 82 00 14 */ bne lbl_801625A8
/* 80162598 0015F4D8  80 7F 01 A8 */ lwz r3, 0x1a8(r31)
/* 8016259C 0015F4DC  80 1F 01 A4 */ lwz r0, 0x1a4(r31)
/* 801625A0 0015F4E0  7C 03 00 00 */ cmpw r3, r0
/* 801625A4 0015F4E4  41 82 00 58 */ beq lbl_801625FC
lbl_801625A8:
/* 801625A8 0015F4E8  80 7F 06 84 */ lwz r3, 0x684(r31)
/* 801625AC 0015F4EC  80 1F 06 8C */ lwz r0, 0x68c(r31)
/* 801625B0 0015F4F0  1C 00 00 44 */ mulli r0, r0, 0x44
/* 801625B4 0015F4F4  7C 63 02 14 */ add r3, r3, r0
/* 801625B8 0015F4F8  1C 04 00 16 */ mulli r0, r4, 0x16
/* 801625BC 0015F4FC  7C 63 02 14 */ add r3, r3, r0
/* 801625C0 0015F500  80 BF 01 A8 */ lwz r5, 0x1a8(r31)
/* 801625C4 0015F504  54 A0 08 3C */ slwi r0, r5, 1
/* 801625C8 0015F508  7C 63 02 14 */ add r3, r3, r0
/* 801625CC 0015F50C  A8 03 00 18 */ lha r0, 0x18(r3)
/* 801625D0 0015F510  2C 00 00 00 */ cmpwi r0, 0
/* 801625D4 0015F514  41 80 00 28 */ blt lbl_801625FC
/* 801625D8 0015F518  7F E3 FB 78 */ mr r3, r31
/* 801625DC 0015F51C  80 9F 01 A4 */ lwz r4, 0x1a4(r31)
/* 801625E0 0015F520  48 00 16 59 */ bl dCamera_c_NS_onModeChange
/* 801625E4 0015F524  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801625E8 0015F528  41 82 00 14 */ beq lbl_801625FC
/* 801625EC 0015F52C  80 1F 01 A8 */ lwz r0, 0x1a8(r31)
/* 801625F0 0015F530  90 1F 01 A4 */ stw r0, 0x1a4(r31)
/* 801625F4 0015F534  38 00 00 00 */ li r0, 0
/* 801625F8 0015F538  90 1F 01 74 */ stw r0, 0x174(r31)
lbl_801625FC:
/* 801625FC 0015F53C  7F E3 FB 78 */ mr r3, r31
/* 80162600 0015F540  80 9F 01 A4 */ lwz r4, 0x1a4(r31)
/* 80162604 0015F544  4B FF EE F1 */ bl dCamera_c_NS_ChangeModeOK
/* 80162608 0015F548  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8016260C 0015F54C  40 82 00 0C */ bne lbl_80162618
/* 80162610 0015F550  38 00 00 00 */ li r0, 0
/* 80162614 0015F554  90 1F 01 A4 */ stw r0, 0x1a4(r31)
lbl_80162618:
/* 80162618 0015F558  80 7F 06 84 */ lwz r3, 0x684(r31)
/* 8016261C 0015F55C  80 1F 06 8C */ lwz r0, 0x68c(r31)
/* 80162620 0015F560  1C 00 00 44 */ mulli r0, r0, 0x44
/* 80162624 0015F564  7C 63 02 14 */ add r3, r3, r0
/* 80162628 0015F568  80 1F 01 90 */ lwz r0, 0x190(r31)
/* 8016262C 0015F56C  1C 00 00 16 */ mulli r0, r0, 0x16
/* 80162630 0015F570  7C 63 02 14 */ add r3, r3, r0
/* 80162634 0015F574  80 1F 01 A4 */ lwz r0, 0x1a4(r31)
/* 80162638 0015F578  54 00 08 3C */ slwi r0, r0, 1
/* 8016263C 0015F57C  7C 63 02 14 */ add r3, r3, r0
/* 80162640 0015F580  AB 23 00 18 */ lha r25, 0x18(r3)
/* 80162644 0015F584  2C 19 00 00 */ cmpwi r25, 0
/* 80162648 0015F588  41 80 00 40 */ blt lbl_80162688
/* 8016264C 0015F58C  80 9F 06 7C */ lwz r4, 0x67c(r31)
/* 80162650 0015F590  7C 04 C8 00 */ cmpw r4, r25
/* 80162654 0015F594  41 82 00 34 */ beq lbl_80162688
/* 80162658 0015F598  7F E3 FB 78 */ mr r3, r31
/* 8016265C 0015F59C  7F 25 CB 78 */ mr r5, r25
/* 80162660 0015F5A0  48 00 20 3D */ bl dCamera_c_NS_onStyleChange
/* 80162664 0015F5A4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80162668 0015F5A8  41 82 00 20 */ beq lbl_80162688
/* 8016266C 0015F5AC  93 3F 06 7C */ stw r25, 0x67c(r31)
/* 80162670 0015F5B0  38 7F 0A EC */ addi r3, r31, 0xaec
/* 80162674 0015F5B4  80 9F 06 7C */ lwz r4, 0x67c(r31)
/* 80162678 0015F5B8  4B F2 5F 5D */ bl dCamParam_c_NS_Change
/* 8016267C 0015F5BC  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 80162680 0015F5C0  60 00 02 00 */ ori r0, r0, 0x200
/* 80162684 0015F5C4  90 1F 06 0C */ stw r0, 0x60c(r31)
lbl_80162688:
/* 80162688 0015F5C8  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 8016268C 0015F5CC  54 00 00 3E */ slwi r0, r0, 0
/* 80162690 0015F5D0  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 80162694 0015F5D4  80 1D 5D 7C */ lwz r0, 0x5d7c(r29)
/* 80162698 0015F5D8  54 03 06 6E */ rlwinm r3, r0, 0, 0x19, 0x17
/* 8016269C 0015F5DC  90 7D 5D 7C */ stw r3, 0x5d7c(r29)
/* 801626A0 0015F5E0  80 1F 09 40 */ lwz r0, 0x940(r31)
/* 801626A4 0015F5E4  2C 00 FF FF */ cmpwi r0, -1
/* 801626A8 0015F5E8  40 82 00 0C */ bne lbl_801626B4
/* 801626AC 0015F5EC  60 60 00 80 */ ori r0, r3, 0x80
/* 801626B0 0015F5F0  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
lbl_801626B4:
/* 801626B4 0015F5F4  80 7D 5D 7C */ lwz r3, 0x5d7c(r29)
/* 801626B8 0015F5F8  54 60 04 A5 */ rlwinm. r0, r3, 0, 0x12, 0x12
/* 801626BC 0015F5FC  41 82 00 0C */ beq lbl_801626C8
/* 801626C0 0015F600  60 60 00 80 */ ori r0, r3, 0x80
/* 801626C4 0015F604  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
lbl_801626C8:
/* 801626C8 0015F608  80 7F 0A FC */ lwz r3, 0xafc(r31)
/* 801626CC 0015F60C  A0 03 00 06 */ lhz r0, 6(r3)
/* 801626D0 0015F610  54 00 04 63 */ rlwinm. r0, r0, 0, 0x11, 0x11
/* 801626D4 0015F614  41 82 00 B4 */ beq lbl_80162788
/* 801626D8 0015F618  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801626DC 0015F61C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801626E0 0015F620  80 1F 01 7C */ lwz r0, 0x17c(r31)
/* 801626E4 0015F624  54 00 20 36 */ slwi r0, r0, 4
/* 801626E8 0015F628  7C 63 02 14 */ add r3, r3, r0
/* 801626EC 0015F62C  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 801626F0 0015F630  54 00 01 4B */ rlwinm. r0, r0, 0, 5, 5
/* 801626F4 0015F634  40 82 00 94 */ bne lbl_80162788
/* 801626F8 0015F638  80 1C 05 70 */ lwz r0, 0x570(r28)
/* 801626FC 0015F63C  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 80162700 0015F640  40 82 00 88 */ bne lbl_80162788
/* 80162704 0015F644  3B 40 00 00 */ li r26, 0
/* 80162708 0015F648  7F 83 E3 78 */ mr r3, r28
/* 8016270C 0015F64C  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 80162710 0015F650  81 8C 00 44 */ lwz r12, 0x44(r12)
/* 80162714 0015F654  7D 89 03 A6 */ mtctr r12
/* 80162718 0015F658  4E 80 04 21 */ bctrl
/* 8016271C 0015F65C  28 03 00 00 */ cmplwi r3, 0
/* 80162720 0015F660  41 82 00 24 */ beq lbl_80162744
/* 80162724 0015F664  7F 83 E3 78 */ mr r3, r28
/* 80162728 0015F668  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 8016272C 0015F66C  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 80162730 0015F670  7D 89 03 A6 */ mtctr r12
/* 80162734 0015F674  4E 80 04 21 */ bctrl
/* 80162738 0015F678  2C 03 00 00 */ cmpwi r3, 0
/* 8016273C 0015F67C  40 82 00 08 */ bne lbl_80162744
/* 80162740 0015F680  3B 40 00 01 */ li r26, 1
lbl_80162744:
/* 80162744 0015F684  57 40 06 3F */ clrlwi. r0, r26, 0x18
/* 80162748 0015F688  40 82 00 40 */ bne lbl_80162788
/* 8016274C 0015F68C  38 61 00 3C */ addi r3, r1, 0x3c
/* 80162750 0015F690  7F E4 FB 78 */ mr r4, r31
/* 80162754 0015F694  48 00 39 39 */ bl dCamera_c_NS_forwardCheckAngle
/* 80162758 0015F698  38 61 00 38 */ addi r3, r1, 0x38
/* 8016275C 0015F69C  38 81 00 3C */ addi r4, r1, 0x3c
/* 80162760 0015F6A0  38 BF 01 B0 */ addi r5, r31, 0x1b0
/* 80162764 0015F6A4  48 10 EA 41 */ bl cSAngle_NS___mi_X1_
/* 80162768 0015F6A8  38 61 00 34 */ addi r3, r1, 0x34
/* 8016276C 0015F6AC  38 81 00 38 */ addi r4, r1, 0x38
/* 80162770 0015F6B0  C0 3F 0A AC */ lfs f1, 0xaac(r31)
/* 80162774 0015F6B4  48 10 EA F1 */ bl cSAngle_NS___ml
/* 80162778 0015F6B8  38 7F 01 B0 */ addi r3, r31, 0x1b0
/* 8016277C 0015F6BC  38 81 00 34 */ addi r4, r1, 0x34
/* 80162780 0015F6C0  48 10 EA 55 */ bl cSAngle_NS___apl
/* 80162784 0015F6C4  48 00 00 0C */ b lbl_80162790
lbl_80162788:
/* 80162788 0015F6C8  A8 0D 8C 08 */ lha r0, lbl_80451188-_SDA_BASE_(r13)
/* 8016278C 0015F6CC  B0 1F 01 B0 */ sth r0, 0x1b0(r31)
lbl_80162790:
/* 80162790 0015F6D0  38 00 40 01 */ li r0, 0x4001
/* 80162794 0015F6D4  90 1F 00 88 */ stw r0, 0x88(r31)
/* 80162798 0015F6D8  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 8016279C 0015F6DC  54 00 07 76 */ rlwinm r0, r0, 0, 0x1d, 0x1b
/* 801627A0 0015F6E0  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 801627A4 0015F6E4  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 801627A8 0015F6E8  54 00 02 95 */ rlwinm. r0, r0, 0, 0xa, 0xa
/* 801627AC 0015F6EC  41 82 00 58 */ beq lbl_80162804
/* 801627B0 0015F6F0  80 7F 0A F4 */ lwz r3, 0xaf4(r31)
/* 801627B4 0015F6F4  80 1F 06 7C */ lwz r0, 0x67c(r31)
/* 801627B8 0015F6F8  1C 00 00 78 */ mulli r0, r0, 0x78
/* 801627BC 0015F6FC  7C 63 02 14 */ add r3, r3, r0
/* 801627C0 0015F700  A0 03 00 04 */ lhz r0, 4(r3)
/* 801627C4 0015F704  2C 00 00 0A */ cmpwi r0, 0xa
/* 801627C8 0015F708  41 82 00 3C */ beq lbl_80162804
/* 801627CC 0015F70C  88 1F 02 24 */ lbz r0, 0x224(r31)
/* 801627D0 0015F710  28 00 00 00 */ cmplwi r0, 0
/* 801627D4 0015F714  40 82 00 20 */ bne lbl_801627F4
/* 801627D8 0015F718  C0 3F 02 AC */ lfs f1, 0x2ac(r31)
/* 801627DC 0015F71C  C0 02 9C E4 */ lfs f0, lbl_804536E4-_SDA2_BASE_(r2)
/* 801627E0 0015F720  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801627E4 0015F724  41 81 00 10 */ bgt lbl_801627F4
/* 801627E8 0015F728  88 1F 03 D0 */ lbz r0, 0x3d0(r31)
/* 801627EC 0015F72C  28 00 00 00 */ cmplwi r0, 0
/* 801627F0 0015F730  40 82 00 6C */ bne lbl_8016285C
lbl_801627F4:
/* 801627F4 0015F734  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 801627F8 0015F738  54 00 02 D2 */ rlwinm r0, r0, 0, 0xb, 9
/* 801627FC 0015F73C  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 80162800 0015F740  48 00 00 5C */ b lbl_8016285C
lbl_80162804:
/* 80162804 0015F744  80 7F 0A F4 */ lwz r3, 0xaf4(r31)
/* 80162808 0015F748  80 9F 06 7C */ lwz r4, 0x67c(r31)
/* 8016280C 0015F74C  1C 04 00 78 */ mulli r0, r4, 0x78
/* 80162810 0015F750  7C 63 02 14 */ add r3, r3, r0
/* 80162814 0015F754  A0 03 00 04 */ lhz r0, 4(r3)
/* 80162818 0015F758  7F E3 FB 78 */ mr r3, r31
/* 8016281C 0015F75C  1C C0 00 0C */ mulli r6, r0, 0xc
/* 80162820 0015F760  3C A0 80 3C */ lis r5, lbl_803BA25C@ha
/* 80162824 0015F764  38 05 A2 5C */ addi r0, r5, lbl_803BA25C@l
/* 80162828 0015F768  7D 80 32 14 */ add r12, r0, r6
/* 8016282C 0015F76C  48 1F F8 59 */ bl func_80362084
/* 80162830 0015F770  60 00 00 00 */ nop
/* 80162834 0015F774  7C 7B 1B 78 */ mr r27, r3
/* 80162838 0015F778  80 7F 01 70 */ lwz r3, 0x170(r31)
/* 8016283C 0015F77C  38 03 00 01 */ addi r0, r3, 1
/* 80162840 0015F780  90 1F 01 70 */ stw r0, 0x170(r31)
/* 80162844 0015F784  80 7F 01 60 */ lwz r3, 0x160(r31)
/* 80162848 0015F788  38 03 00 01 */ addi r0, r3, 1
/* 8016284C 0015F78C  90 1F 01 60 */ stw r0, 0x160(r31)
/* 80162850 0015F790  80 7F 01 74 */ lwz r3, 0x174(r31)
/* 80162854 0015F794  38 03 00 01 */ addi r0, r3, 1
/* 80162858 0015F798  90 1F 01 74 */ stw r0, 0x174(r31)
lbl_8016285C:
/* 8016285C 0015F79C  80 7F 00 A8 */ lwz r3, 0xa8(r31)
/* 80162860 0015F7A0  38 03 00 01 */ addi r0, r3, 1
/* 80162864 0015F7A4  90 1F 00 A8 */ stw r0, 0xa8(r31)
/* 80162868 0015F7A8  80 7F 00 AC */ lwz r3, 0xac(r31)
/* 8016286C 0015F7AC  38 03 00 01 */ addi r0, r3, 1
/* 80162870 0015F7B0  90 1F 00 AC */ stw r0, 0xac(r31)
/* 80162874 0015F7B4  57 60 06 3F */ clrlwi. r0, r27, 0x18
/* 80162878 0015F7B8  40 82 00 0C */ bne lbl_80162884
/* 8016287C 0015F7BC  38 00 00 00 */ li r0, 0
/* 80162880 0015F7C0  90 1F 06 80 */ stw r0, 0x680(r31)
lbl_80162884:
/* 80162884 0015F7C4  7F E3 FB 78 */ mr r3, r31
/* 80162888 0015F7C8  48 00 36 6D */ bl dCamera_c_NS_defaultTriming
/* 8016288C 0015F7CC  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 80162890 0015F7D0  54 00 05 6B */ rlwinm. r0, r0, 0, 0x15, 0x15
/* 80162894 0015F7D4  40 82 00 20 */ bne lbl_801628B4
/* 80162898 0015F7D8  38 61 00 30 */ addi r3, r1, 0x30
/* 8016289C 0015F7DC  38 9F 00 7C */ addi r4, r31, 0x7c
/* 801628A0 0015F7E0  C0 22 9C E8 */ lfs f1, lbl_804536E8-_SDA2_BASE_(r2)
/* 801628A4 0015F7E4  48 10 E9 C1 */ bl cSAngle_NS___ml
/* 801628A8 0015F7E8  38 7F 00 7C */ addi r3, r31, 0x7c
/* 801628AC 0015F7EC  38 81 00 30 */ addi r4, r1, 0x30
/* 801628B0 0015F7F0  48 10 E9 39 */ bl cSAngle_NS___ami
lbl_801628B4:
/* 801628B4 0015F7F4  7F E3 FB 78 */ mr r3, r31
/* 801628B8 0015F7F8  48 01 E4 6D */ bl dCamera_c_NS_shakeCamera
/* 801628BC 0015F7FC  7F E3 FB 78 */ mr r3, r31
/* 801628C0 0015F800  48 01 E9 C1 */ bl dCamera_c_NS_blureCamera
/* 801628C4 0015F804  80 7F 0A FC */ lwz r3, 0xafc(r31)
/* 801628C8 0015F808  A0 03 00 04 */ lhz r0, 4(r3)
/* 801628CC 0015F80C  2C 00 00 0A */ cmpwi r0, 0xa
/* 801628D0 0015F810  41 82 00 D8 */ beq lbl_801629A8
/* 801628D4 0015F814  80 9F 06 0C */ lwz r4, 0x60c(r31)
/* 801628D8 0015F818  3C 60 FF F8 */ lis r3, 0xFFF7FF7F@ha
/* 801628DC 0015F81C  38 03 FF 7F */ addi r0, r3, 0xFFF7FF7F@l
/* 801628E0 0015F820  7C 80 00 38 */ and r0, r4, r0
/* 801628E4 0015F824  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 801628E8 0015F828  80 7F 0A FC */ lwz r3, 0xafc(r31)
/* 801628EC 0015F82C  A0 63 00 06 */ lhz r3, 6(r3)
/* 801628F0 0015F830  54 60 07 FF */ clrlwi. r0, r3, 0x1f
/* 801628F4 0015F834  41 82 00 48 */ beq lbl_8016293C
/* 801628F8 0015F838  80 1F 01 A4 */ lwz r0, 0x1a4(r31)
/* 801628FC 0015F83C  2C 00 00 01 */ cmpwi r0, 1
/* 80162900 0015F840  40 82 00 18 */ bne lbl_80162918
/* 80162904 0015F844  54 60 07 BD */ rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80162908 0015F848  41 82 00 10 */ beq lbl_80162918
/* 8016290C 0015F84C  38 00 40 07 */ li r0, 0x4007
/* 80162910 0015F850  90 1F 00 88 */ stw r0, 0x88(r31)
/* 80162914 0015F854  48 00 00 38 */ b lbl_8016294C
lbl_80162918:
/* 80162918 0015F858  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 8016291C 0015F85C  54 00 03 9D */ rlwinm. r0, r0, 0, 0xe, 0xe
/* 80162920 0015F860  41 82 00 10 */ beq lbl_80162930
/* 80162924 0015F864  38 00 40 37 */ li r0, 0x4037
/* 80162928 0015F868  90 1F 00 88 */ stw r0, 0x88(r31)
/* 8016292C 0015F86C  48 00 00 20 */ b lbl_8016294C
lbl_80162930:
/* 80162930 0015F870  38 00 40 17 */ li r0, 0x4017
/* 80162934 0015F874  90 1F 00 88 */ stw r0, 0x88(r31)
/* 80162938 0015F878  48 00 00 14 */ b lbl_8016294C
lbl_8016293C:
/* 8016293C 0015F87C  54 60 07 BD */ rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80162940 0015F880  41 82 00 0C */ beq lbl_8016294C
/* 80162944 0015F884  38 00 40 07 */ li r0, 0x4007
/* 80162948 0015F888  90 1F 00 88 */ stw r0, 0x88(r31)
lbl_8016294C:
/* 8016294C 0015F88C  80 7F 0A FC */ lwz r3, 0xafc(r31)
/* 80162950 0015F890  A0 03 00 06 */ lhz r0, 6(r3)
/* 80162954 0015F894  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80162958 0015F898  41 82 00 10 */ beq lbl_80162968
/* 8016295C 0015F89C  80 1F 00 88 */ lwz r0, 0x88(r31)
/* 80162960 0015F8A0  60 00 00 80 */ ori r0, r0, 0x80
/* 80162964 0015F8A4  90 1F 00 88 */ stw r0, 0x88(r31)
lbl_80162968:
/* 80162968 0015F8A8  80 7F 0A FC */ lwz r3, 0xafc(r31)
/* 8016296C 0015F8AC  A0 03 00 06 */ lhz r0, 6(r3)
/* 80162970 0015F8B0  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80162974 0015F8B4  41 82 00 10 */ beq lbl_80162984
/* 80162978 0015F8B8  80 1F 00 88 */ lwz r0, 0x88(r31)
/* 8016297C 0015F8BC  54 00 04 A0 */ rlwinm r0, r0, 0, 0x12, 0x10
/* 80162980 0015F8C0  90 1F 00 88 */ stw r0, 0x88(r31)
lbl_80162984:
/* 80162984 0015F8C4  80 1F 00 88 */ lwz r0, 0x88(r31)
/* 80162988 0015F8C8  54 00 07 76 */ rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8016298C 0015F8CC  90 1F 00 88 */ stw r0, 0x88(r31)
/* 80162990 0015F8D0  80 7F 0A FC */ lwz r3, 0xafc(r31)
/* 80162994 0015F8D4  A0 03 00 06 */ lhz r0, 6(r3)
/* 80162998 0015F8D8  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8016299C 0015F8DC  41 82 00 0C */ beq lbl_801629A8
/* 801629A0 0015F8E0  38 00 00 00 */ li r0, 0
/* 801629A4 0015F8E4  90 1F 00 88 */ stw r0, 0x88(r31)
lbl_801629A8:
/* 801629A8 0015F8E8  C0 1F 00 80 */ lfs f0, 0x80(r31)
/* 801629AC 0015F8EC  D0 1F 00 58 */ stfs f0, 0x58(r31)
/* 801629B0 0015F8F0  A8 1F 00 7C */ lha r0, 0x7c(r31)
/* 801629B4 0015F8F4  B0 1F 00 54 */ sth r0, 0x54(r31)
/* 801629B8 0015F8F8  7F E3 FB 78 */ mr r3, r31
/* 801629BC 0015F8FC  80 9F 00 88 */ lwz r4, 0x88(r31)
/* 801629C0 0015F900  48 00 3D A5 */ bl dCamera_c_NS_bumpCheck
/* 801629C4 0015F904  38 61 00 2C */ addi r3, r1, 0x2c
/* 801629C8 0015F908  38 9F 01 D4 */ addi r4, r31, 0x1d4
/* 801629CC 0015F90C  38 BF 02 9C */ addi r5, r31, 0x29c
/* 801629D0 0015F910  48 10 E7 D5 */ bl cSAngle_NS___mi_X1_
/* 801629D4 0015F914  38 61 00 40 */ addi r3, r1, 0x40
/* 801629D8 0015F918  38 81 00 2C */ addi r4, r1, 0x2c
/* 801629DC 0015F91C  48 10 E5 8D */ bl cSAngle_X1_
/* 801629E0 0015F920  C0 3F 01 C4 */ lfs f1, 0x1c4(r31)
/* 801629E4 0015F924  C0 1F 0A 14 */ lfs f0, 0xa14(r31)
/* 801629E8 0015F928  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801629EC 0015F92C  41 80 00 60 */ blt lbl_80162A4C
/* 801629F0 0015F930  38 61 00 28 */ addi r3, r1, 0x28
/* 801629F4 0015F934  C0 3F 0A 18 */ lfs f1, 0xa18(r31)
/* 801629F8 0015F938  48 10 E5 D1 */ bl cSAngle_X3_
/* 801629FC 0015F93C  A8 81 00 40 */ lha r4, 0x40(r1)
/* 80162A00 0015F940  A8 01 00 28 */ lha r0, 0x28(r1)
/* 80162A04 0015F944  7C 80 02 78 */ xor r0, r4, r0
/* 80162A08 0015F948  7C 03 0E 70 */ srawi r3, r0, 1
/* 80162A0C 0015F94C  7C 00 20 38 */ and r0, r0, r4
/* 80162A10 0015F950  7C 00 18 50 */ subf r0, r0, r3
/* 80162A14 0015F954  54 00 0F FF */ rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80162A18 0015F958  40 82 00 34 */ bne lbl_80162A4C
/* 80162A1C 0015F95C  38 61 00 24 */ addi r3, r1, 0x24
/* 80162A20 0015F960  C0 1F 0A 18 */ lfs f0, 0xa18(r31)
/* 80162A24 0015F964  FC 20 00 50 */ fneg f1, f0
/* 80162A28 0015F968  48 10 E5 A1 */ bl cSAngle_X3_
/* 80162A2C 0015F96C  A8 01 00 40 */ lha r0, 0x40(r1)
/* 80162A30 0015F970  A8 81 00 24 */ lha r4, 0x24(r1)
/* 80162A34 0015F974  7C 80 02 78 */ xor r0, r4, r0
/* 80162A38 0015F978  7C 03 0E 70 */ srawi r3, r0, 1
/* 80162A3C 0015F97C  7C 00 20 38 */ and r0, r0, r4
/* 80162A40 0015F980  7C 00 18 50 */ subf r0, r0, r3
/* 80162A44 0015F984  54 00 0F FF */ rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80162A48 0015F988  41 82 00 0C */ beq lbl_80162A54
lbl_80162A4C:
/* 80162A4C 0015F98C  38 00 00 00 */ li r0, 0
/* 80162A50 0015F990  98 1F 02 98 */ stb r0, 0x298(r31)
lbl_80162A54:
/* 80162A54 0015F994  88 1F 02 98 */ lbz r0, 0x298(r31)
/* 80162A58 0015F998  28 00 00 00 */ cmplwi r0, 0
/* 80162A5C 0015F99C  41 82 00 2C */ beq lbl_80162A88
/* 80162A60 0015F9A0  38 61 00 20 */ addi r3, r1, 0x20
/* 80162A64 0015F9A4  38 9F 01 D4 */ addi r4, r31, 0x1d4
/* 80162A68 0015F9A8  48 10 E5 01 */ bl cSAngle_X1_
/* 80162A6C 0015F9AC  38 61 00 1C */ addi r3, r1, 0x1c
/* 80162A70 0015F9B0  7F E4 FB 78 */ mr r4, r31
/* 80162A74 0015F9B4  38 A1 00 20 */ addi r5, r1, 0x20
/* 80162A78 0015F9B8  48 00 26 E1 */ bl dCamera_c_NS_getUSOAngle
/* 80162A7C 0015F9BC  A8 01 00 1C */ lha r0, 0x1c(r1)
/* 80162A80 0015F9C0  B0 1F 00 8C */ sth r0, 0x8c(r31)
/* 80162A84 0015F9C4  48 00 00 20 */ b lbl_80162AA4
lbl_80162A88:
/* 80162A88 0015F9C8  38 7F 00 2E */ addi r3, r31, 0x2e
/* 80162A8C 0015F9CC  48 10 E6 5D */ bl cSAngle_NS_Inv
/* 80162A90 0015F9D0  7C 64 1B 78 */ mr r4, r3
/* 80162A94 0015F9D4  38 61 00 18 */ addi r3, r1, 0x18
/* 80162A98 0015F9D8  48 10 E5 01 */ bl cSAngle_X2_
/* 80162A9C 0015F9DC  A8 01 00 18 */ lha r0, 0x18(r1)
/* 80162AA0 0015F9E0  B0 1F 00 8C */ sth r0, 0x8c(r31)
lbl_80162AA4:
/* 80162AA4 0015F9E4  A0 1F 09 78 */ lhz r0, 0x978(r31)
/* 80162AA8 0015F9E8  54 00 04 21 */ rlwinm. r0, r0, 0, 0x10, 0x10
/* 80162AAC 0015F9EC  41 82 00 0C */ beq lbl_80162AB8
/* 80162AB0 0015F9F0  7F E3 FB 78 */ mr r3, r31
/* 80162AB4 0015F9F4  4B FF F7 FD */ bl dCamera_c_NS_infoReport
lbl_80162AB8:
/* 80162AB8 0015F9F8  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 80162ABC 0015F9FC  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80162AC0 0015FA00  41 82 00 2C */ beq lbl_80162AEC
/* 80162AC4 0015FA04  38 61 00 58 */ addi r3, r1, 0x58
/* 80162AC8 0015FA08  38 9F 07 58 */ addi r4, r31, 0x758
/* 80162ACC 0015FA0C  48 10 42 19 */ bl cXyz_NS_norm
/* 80162AD0 0015FA10  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 80162AD4 0015FA14  D0 1F 00 48 */ stfs f0, 0x48(r31)
/* 80162AD8 0015FA18  C0 01 00 5C */ lfs f0, 0x5c(r1)
/* 80162ADC 0015FA1C  D0 1F 00 4C */ stfs f0, 0x4c(r31)
/* 80162AE0 0015FA20  C0 01 00 60 */ lfs f0, 0x60(r1)
/* 80162AE4 0015FA24  D0 1F 00 50 */ stfs f0, 0x50(r31)
/* 80162AE8 0015FA28  48 00 00 E4 */ b lbl_80162BCC
lbl_80162AEC:
/* 80162AEC 0015FA2C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80162AF0 0015FA30  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80162AF4 0015FA34  A8 03 4E 76 */ lha r0, 0x4e76(r3)
/* 80162AF8 0015FA38  7C 00 07 35 */ extsh. r0, r0
/* 80162AFC 0015FA3C  41 82 00 80 */ beq lbl_80162B7C
/* 80162B00 0015FA40  C0 02 9C A8 */ lfs f0, lbl_804536A8-_SDA2_BASE_(r2)
/* 80162B04 0015FA44  D0 01 00 44 */ stfs f0, 0x44(r1)
/* 80162B08 0015FA48  38 61 00 14 */ addi r3, r1, 0x14
/* 80162B0C 0015FA4C  7C 00 00 D0 */ neg r0, r0
/* 80162B10 0015FA50  7C 04 07 34 */ extsh r4, r0
/* 80162B14 0015FA54  48 10 E4 85 */ bl cSAngle_X2_
/* 80162B18 0015FA58  38 61 00 0C */ addi r3, r1, 0xc
/* 80162B1C 0015FA5C  A8 81 00 14 */ lha r4, 0x14(r1)
/* 80162B20 0015FA60  48 10 E4 79 */ bl cSAngle_X2_
/* 80162B24 0015FA64  A8 01 00 0C */ lha r0, 0xc(r1)
/* 80162B28 0015FA68  B0 01 00 48 */ sth r0, 0x48(r1)
/* 80162B2C 0015FA6C  38 61 00 10 */ addi r3, r1, 0x10
/* 80162B30 0015FA70  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 80162B34 0015FA74  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 80162B38 0015FA78  A8 84 4E 78 */ lha r4, 0x4e78(r4)
/* 80162B3C 0015FA7C  48 10 E4 5D */ bl cSAngle_X2_
/* 80162B40 0015FA80  38 61 00 08 */ addi r3, r1, 8
/* 80162B44 0015FA84  A8 81 00 10 */ lha r4, 0x10(r1)
/* 80162B48 0015FA88  48 10 E4 51 */ bl cSAngle_X2_
/* 80162B4C 0015FA8C  A8 01 00 08 */ lha r0, 8(r1)
/* 80162B50 0015FA90  B0 01 00 4A */ sth r0, 0x4a(r1)
/* 80162B54 0015FA94  38 61 00 4C */ addi r3, r1, 0x4c
/* 80162B58 0015FA98  38 81 00 44 */ addi r4, r1, 0x44
/* 80162B5C 0015FA9C  48 10 EB 91 */ bl cSPolar_NS_Xyz
/* 80162B60 0015FAA0  C0 01 00 4C */ lfs f0, 0x4c(r1)
/* 80162B64 0015FAA4  D0 1F 00 48 */ stfs f0, 0x48(r31)
/* 80162B68 0015FAA8  C0 01 00 50 */ lfs f0, 0x50(r1)
/* 80162B6C 0015FAAC  D0 1F 00 4C */ stfs f0, 0x4c(r31)
/* 80162B70 0015FAB0  C0 01 00 54 */ lfs f0, 0x54(r1)
/* 80162B74 0015FAB4  D0 1F 00 50 */ stfs f0, 0x50(r31)
/* 80162B78 0015FAB8  48 00 00 54 */ b lbl_80162BCC
lbl_80162B7C:
/* 80162B7C 0015FABC  C0 3F 00 30 */ lfs f1, 0x30(r31)
/* 80162B80 0015FAC0  C0 1F 00 3C */ lfs f0, 0x3c(r31)
/* 80162B84 0015FAC4  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 80162B88 0015FAC8  40 82 00 30 */ bne lbl_80162BB8
/* 80162B8C 0015FACC  C0 3F 00 38 */ lfs f1, 0x38(r31)
/* 80162B90 0015FAD0  C0 1F 00 44 */ lfs f0, 0x44(r31)
/* 80162B94 0015FAD4  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 80162B98 0015FAD8  40 82 00 20 */ bne lbl_80162BB8
/* 80162B9C 0015FADC  C0 02 9C E0 */ lfs f0, lbl_804536E0-_SDA2_BASE_(r2)
/* 80162BA0 0015FAE0  D0 1F 00 48 */ stfs f0, 0x48(r31)
/* 80162BA4 0015FAE4  C0 02 9C A8 */ lfs f0, lbl_804536A8-_SDA2_BASE_(r2)
/* 80162BA8 0015FAE8  D0 1F 00 4C */ stfs f0, 0x4c(r31)
/* 80162BAC 0015FAEC  C0 02 9C A0 */ lfs f0, lbl_804536A0-_SDA2_BASE_(r2)
/* 80162BB0 0015FAF0  D0 1F 00 50 */ stfs f0, 0x50(r31)
/* 80162BB4 0015FAF4  48 00 00 18 */ b lbl_80162BCC
lbl_80162BB8:
/* 80162BB8 0015FAF8  C0 22 9C A0 */ lfs f1, lbl_804536A0-_SDA2_BASE_(r2)
/* 80162BBC 0015FAFC  D0 3F 00 48 */ stfs f1, 0x48(r31)
/* 80162BC0 0015FB00  C0 02 9C A8 */ lfs f0, lbl_804536A8-_SDA2_BASE_(r2)
/* 80162BC4 0015FB04  D0 1F 00 4C */ stfs f0, 0x4c(r31)
/* 80162BC8 0015FB08  D0 3F 00 50 */ stfs f1, 0x50(r31)
lbl_80162BCC:
/* 80162BCC 0015FB0C  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 80162BD0 0015FB10  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80162BD4 0015FB14  40 82 00 18 */ bne lbl_80162BEC
/* 80162BD8 0015FB18  C0 22 9C A0 */ lfs f1, lbl_804536A0-_SDA2_BASE_(r2)
/* 80162BDC 0015FB1C  D0 3F 07 58 */ stfs f1, 0x758(r31)
/* 80162BE0 0015FB20  C0 02 9C A8 */ lfs f0, lbl_804536A8-_SDA2_BASE_(r2)
/* 80162BE4 0015FB24  D0 1F 07 5C */ stfs f0, 0x75c(r31)
/* 80162BE8 0015FB28  D0 3F 07 60 */ stfs f1, 0x760(r31)
lbl_80162BEC:
/* 80162BEC 0015FB2C  A8 7F 09 4C */ lha r3, 0x94c(r31)
/* 80162BF0 0015FB30  A8 0D 8C 08 */ lha r0, lbl_80451188-_SDA_BASE_(r13)
/* 80162BF4 0015FB34  7C 03 00 00 */ cmpw r3, r0
/* 80162BF8 0015FB38  41 82 00 08 */ beq lbl_80162C00
/* 80162BFC 0015FB3C  B0 7F 00 54 */ sth r3, 0x54(r31)
lbl_80162C00:
/* 80162C00 0015FB40  A8 0D 8C 08 */ lha r0, lbl_80451188-_SDA_BASE_(r13)
/* 80162C04 0015FB44  B0 1F 09 4C */ sth r0, 0x94c(r31)
/* 80162C08 0015FB48  7F E3 FB 78 */ mr r3, r31
/* 80162C0C 0015FB4C  38 9F 00 3C */ addi r4, r31, 0x3c
/* 80162C10 0015FB50  48 00 52 E5 */ bl dCamera_c_NS_getWaterSurfaceHeight
/* 80162C14 0015FB54  FF E0 08 90 */ fmr f31, f1
/* 80162C18 0015FB58  C0 1F 00 40 */ lfs f0, 0x40(r31)
/* 80162C1C 0015FB5C  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 80162C20 0015FB60  40 81 00 24 */ ble lbl_80162C44
/* 80162C24 0015FB64  38 60 00 01 */ li r3, 1
/* 80162C28 0015FB68  48 04 86 49 */ bl dKy_camera_water_in_status_set
/* 80162C2C 0015FB6C  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80162C30 0015FB70  38 63 04 C4 */ addi r3, r3, 0x4c4
/* 80162C34 0015FB74  C0 1F 00 40 */ lfs f0, 0x40(r31)
/* 80162C38 0015FB78  EC 3F 00 28 */ fsubs f1, f31, f0
/* 80162C3C 0015FB7C  48 15 3B 4D */ bl setCameraInWaterDepth__11Z2StatusMgrFf
/* 80162C40 0015FB80  48 00 00 1C */ b lbl_80162C5C
lbl_80162C44:
/* 80162C44 0015FB84  38 60 00 00 */ li r3, 0
/* 80162C48 0015FB88  48 04 86 29 */ bl dKy_camera_water_in_status_set
/* 80162C4C 0015FB8C  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80162C50 0015FB90  38 63 04 C4 */ addi r3, r3, 0x4c4
/* 80162C54 0015FB94  C0 22 9C A0 */ lfs f1, lbl_804536A0-_SDA2_BASE_(r2)
/* 80162C58 0015FB98  48 15 3B 31 */ bl setCameraInWaterDepth__11Z2StatusMgrFf
lbl_80162C5C:
/* 80162C5C 0015FB9C  88 1F 01 58 */ lbz r0, 0x158(r31)
/* 80162C60 0015FBA0  28 00 00 00 */ cmplwi r0, 0
/* 80162C64 0015FBA4  41 82 00 14 */ beq lbl_80162C78
/* 80162C68 0015FBA8  80 1D 5D 7C */ lwz r0, 0x5d7c(r29)
/* 80162C6C 0015FBAC  60 00 00 10 */ ori r0, r0, 0x10
/* 80162C70 0015FBB0  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
/* 80162C74 0015FBB4  48 00 00 10 */ b lbl_80162C84
lbl_80162C78:
/* 80162C78 0015FBB8  80 1D 5D 7C */ lwz r0, 0x5d7c(r29)
/* 80162C7C 0015FBBC  54 00 07 34 */ rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80162C80 0015FBC0  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
lbl_80162C84:
/* 80162C84 0015FBC4  38 7F 09 70 */ addi r3, r31, 0x970
/* 80162C88 0015FBC8  4B F2 5D 01 */ bl dCamSetup_c_NS_PlayerHideDist
/* 80162C8C 0015FBCC  C0 1F 00 28 */ lfs f0, 0x28(r31)
/* 80162C90 0015FBD0  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 80162C94 0015FBD4  40 80 00 34 */ bge lbl_80162CC8
/* 80162C98 0015FBD8  80 7F 06 0C */ lwz r3, 0x60c(r31)
/* 80162C9C 0015FBDC  54 60 AF FF */ rlwinm. r0, r3, 0x15, 0x1f, 0x1f
/* 80162CA0 0015FBE0  41 82 00 14 */ beq lbl_80162CB4
/* 80162CA4 0015FBE4  80 1D 5D 7C */ lwz r0, 0x5d7c(r29)
/* 80162CA8 0015FBE8  60 00 00 02 */ ori r0, r0, 2
/* 80162CAC 0015FBEC  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
/* 80162CB0 0015FBF0  48 00 00 18 */ b lbl_80162CC8
lbl_80162CB4:
/* 80162CB4 0015FBF4  54 60 00 C7 */ rlwinm. r0, r3, 0, 3, 3
/* 80162CB8 0015FBF8  41 82 00 10 */ beq lbl_80162CC8
/* 80162CBC 0015FBFC  80 1D 5D 7C */ lwz r0, 0x5d7c(r29)
/* 80162CC0 0015FC00  60 00 00 20 */ ori r0, r0, 0x20
/* 80162CC4 0015FC04  90 1D 5D 7C */ stw r0, 0x5d7c(r29)
lbl_80162CC8:
/* 80162CC8 0015FC08  7F E3 FB 78 */ mr r3, r31
/* 80162CCC 0015FC0C  48 01 DA 6D */ bl dCamera_c_NS_runEventRecoveryTrans
/* 80162CD0 0015FC10  80 1F 06 0C */ lwz r0, 0x60c(r31)
/* 80162CD4 0015FC14  54 00 05 24 */ rlwinm r0, r0, 0, 0x14, 0x12
/* 80162CD8 0015FC18  90 1F 06 0C */ stw r0, 0x60c(r31)
/* 80162CDC 0015FC1C  38 60 00 FF */ li r3, 0xff
/* 80162CE0 0015FC20  90 7F 08 8C */ stw r3, 0x88c(r31)
/* 80162CE4 0015FC24  90 7F 08 90 */ stw r3, 0x890(r31)
/* 80162CE8 0015FC28  38 00 00 00 */ li r0, 0
/* 80162CEC 0015FC2C  98 1F 08 9A */ stb r0, 0x89a(r31)
/* 80162CF0 0015FC30  90 1F 08 94 */ stw r0, 0x894(r31)
/* 80162CF4 0015FC34  98 7F 08 9B */ stb r3, 0x89b(r31)
/* 80162CF8 0015FC38  B0 7F 08 98 */ sth r3, 0x898(r31)
/* 80162CFC 0015FC3C  90 7F 08 C8 */ stw r3, 0x8c8(r31)
/* 80162D00 0015FC40  90 7F 08 CC */ stw r3, 0x8cc(r31)
/* 80162D04 0015FC44  98 1F 08 D6 */ stb r0, 0x8d6(r31)
/* 80162D08 0015FC48  90 1F 08 D0 */ stw r0, 0x8d0(r31)
/* 80162D0C 0015FC4C  98 7F 08 D7 */ stb r3, 0x8d7(r31)
/* 80162D10 0015FC50  B0 7F 08 D4 */ sth r3, 0x8d4(r31)
/* 80162D14 0015FC54  7F 63 DB 78 */ mr r3, r27
/* 80162D18 0015FC58  E3 E1 00 98 */ psq_l f31, 152(r1), 0, 0
/* 80162D1C 0015FC5C  CB E1 00 90 */ lfd f31, 0x90(r1)
/* 80162D20 0015FC60  39 61 00 90 */ addi r11, r1, 0x90
/* 80162D24 0015FC64  48 1F F4 F5 */ bl _restgpr_25
/* 80162D28 0015FC68  80 01 00 A4 */ lwz r0, 0xa4(r1)
/* 80162D2C 0015FC6C  7C 08 03 A6 */ mtlr r0
/* 80162D30 0015FC70  38 21 00 A0 */ addi r1, r1, 0xa0
/* 80162D34 0015FC74  4E 80 00 20 */ blr
