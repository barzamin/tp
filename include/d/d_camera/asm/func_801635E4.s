/* 801635E4 00160524  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 801635E8 00160528  7C 08 02 A6 */ mflr r0
/* 801635EC 0016052C  90 01 00 44 */ stw r0, 0x44(r1)
/* 801635F0 00160530  39 61 00 40 */ addi r11, r1, 0x40
/* 801635F4 00160534  48 1F EB D9 */ bl func_803621CC
/* 801635F8 00160538  7C 7A 1B 78 */ mr r26, r3
/* 801635FC 0016053C  7C 9B 23 78 */ mr r27, r4
/* 80163600 00160540  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80163604 00160544  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
/* 80163608 00160548  3B BE 56 B8 */ addi r29, r30, 0x56b8
/* 8016360C 0016054C  7F 7C DB 78 */ mr r28, r27
/* 80163610 00160550  38 61 00 08 */ addi r3, r1, 8
/* 80163614 00160554  7F 44 D3 78 */ mr r4, r26
/* 80163618 00160558  80 BA 01 80 */ lwz r5, 0x180(r26)
/* 8016361C 0016055C  4B F3 41 41 */ bl dCamera_c_NS_positionOf
/* 80163620 00160560  C0 01 00 08 */ lfs f0, 8(r1)
/* 80163624 00160564  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 80163628 00160568  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 8016362C 0016056C  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 80163630 00160570  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 80163634 00160574  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 80163638 00160578  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8016363C 0016057C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80163640 00160580  83 E3 5D B4 */ lwz r31, 0x5db4(r3)
/* 80163644 00160584  80 1E 51 84 */ lwz r0, 0x5184(r30)
/* 80163648 00160588  2C 00 00 00 */ cmpwi r0, 0
/* 8016364C 0016058C  40 82 05 44 */ bne lbl_80163B90
/* 80163650 00160590  C0 1A 03 24 */ lfs f0, 0x324(r26)
/* 80163654 00160594  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 80163658 00160598  40 81 00 0C */ ble lbl_80163664
/* 8016365C 0016059C  38 00 00 00 */ li r0, 0
/* 80163660 001605A0  98 1A 02 23 */ stb r0, 0x223(r26)
lbl_80163664:
/* 80163664 001605A4  7F E3 FB 78 */ mr r3, r31
/* 80163668 001605A8  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8016366C 001605AC  81 8C 01 AC */ lwz r12, 0x1ac(r12)
/* 80163670 001605B0  7D 89 03 A6 */ mtctr r12
/* 80163674 001605B4  4E 80 04 21 */ bctrl
/* 80163678 001605B8  2C 03 00 00 */ cmpwi r3, 0
/* 8016367C 001605BC  40 82 00 0C */ bne lbl_80163688
/* 80163680 001605C0  38 00 00 00 */ li r0, 0
/* 80163684 001605C4  98 1A 06 10 */ stb r0, 0x610(r26)
lbl_80163688:
/* 80163688 001605C8  80 9A 01 AC */ lwz r4, 0x1ac(r26)
/* 8016368C 001605CC  2C 04 00 0B */ cmpwi r4, 0xb
/* 80163690 001605D0  41 82 00 3C */ beq lbl_801636CC
/* 80163694 001605D4  80 7A 06 84 */ lwz r3, 0x684(r26)
/* 80163698 001605D8  80 1A 06 8C */ lwz r0, 0x68c(r26)
/* 8016369C 001605DC  1C 00 00 44 */ mulli r0, r0, 0x44
/* 801636A0 001605E0  7C 63 02 14 */ add r3, r3, r0
/* 801636A4 001605E4  80 1A 01 90 */ lwz r0, 0x190(r26)
/* 801636A8 001605E8  1C 00 00 16 */ mulli r0, r0, 0x16
/* 801636AC 001605EC  7C 63 02 14 */ add r3, r3, r0
/* 801636B0 001605F0  54 80 08 3C */ slwi r0, r4, 1
/* 801636B4 001605F4  7C 63 02 14 */ add r3, r3, r0
/* 801636B8 001605F8  A8 03 00 18 */ lha r0, 0x18(r3)
/* 801636BC 001605FC  2C 00 00 00 */ cmpwi r0, 0
/* 801636C0 00160600  41 80 00 0C */ blt lbl_801636CC
/* 801636C4 00160604  7C 9C 23 78 */ mr r28, r4
/* 801636C8 00160608  48 00 04 C8 */ b lbl_80163B90
lbl_801636CC:
/* 801636CC 0016060C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801636D0 00160610  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801636D4 00160614  3B C3 5F 18 */ addi r30, r3, 0x5f18
/* 801636D8 00160618  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 801636DC 0016061C  54 00 20 36 */ slwi r0, r0, 4
/* 801636E0 00160620  7C 1E 00 2E */ lwzx r0, r30, r0
/* 801636E4 00160624  54 00 02 95 */ rlwinm. r0, r0, 0, 0xa, 0xa
/* 801636E8 00160628  41 82 00 5C */ beq lbl_80163744
/* 801636EC 0016062C  3B 20 00 01 */ li r25, 1
/* 801636F0 00160630  7F A3 EB 78 */ mr r3, r29
/* 801636F4 00160634  4B F1 00 F1 */ bl dAttention_c_NS_LockonTruth
/* 801636F8 00160638  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801636FC 0016063C  40 82 00 14 */ bne lbl_80163710
/* 80163700 00160640  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 80163704 00160644  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 80163708 00160648  40 82 00 08 */ bne lbl_80163710
/* 8016370C 0016064C  3B 20 00 00 */ li r25, 0
lbl_80163710:
/* 80163710 00160650  57 20 06 3F */ clrlwi. r0, r25, 0x18
/* 80163714 00160654  40 82 00 30 */ bne lbl_80163744
/* 80163718 00160658  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 8016371C 0016065C  54 00 20 36 */ slwi r0, r0, 4
/* 80163720 00160660  7C 9E 00 2E */ lwzx r4, r30, r0
/* 80163724 00160664  3C 60 00 02 */ lis r3, 0x00025040@ha
/* 80163728 00160668  38 03 50 40 */ addi r0, r3, 0x00025040@l
/* 8016372C 0016066C  7C 80 00 39 */ and. r0, r4, r0
/* 80163730 00160670  41 82 00 0C */ beq lbl_8016373C
/* 80163734 00160674  3B 80 00 07 */ li r28, 7
/* 80163738 00160678  48 00 04 58 */ b lbl_80163B90
lbl_8016373C:
/* 8016373C 0016067C  3B 80 00 00 */ li r28, 0
/* 80163740 00160680  48 00 04 50 */ b lbl_80163B90
lbl_80163744:
/* 80163744 00160684  7F E3 FB 78 */ mr r3, r31
/* 80163748 00160688  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8016374C 0016068C  81 8C 00 7C */ lwz r12, 0x7c(r12)
/* 80163750 00160690  7D 89 03 A6 */ mtctr r12
/* 80163754 00160694  4E 80 04 21 */ bctrl
/* 80163758 00160698  2C 03 00 00 */ cmpwi r3, 0
/* 8016375C 0016069C  41 82 00 74 */ beq lbl_801637D0
/* 80163760 001606A0  80 6D 80 98 */ lwz r3, lbl_80450618-_SDA_BASE_(r13)
/* 80163764 001606A4  28 03 00 00 */ cmplwi r3, 0
/* 80163768 001606A8  41 82 00 68 */ beq lbl_801637D0
/* 8016376C 001606AC  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 80163770 001606B0  64 00 00 40 */ oris r0, r0, 0x40
/* 80163774 001606B4  90 1D 03 34 */ stw r0, 0x334(r29)
/* 80163778 001606B8  90 7A 01 84 */ stw r3, 0x184(r26)
/* 8016377C 001606BC  80 7A 01 84 */ lwz r3, 0x184(r26)
/* 80163780 001606C0  A8 03 00 08 */ lha r0, 8(r3)
/* 80163784 001606C4  2C 00 01 B1 */ cmpwi r0, 0x1b1
/* 80163788 001606C8  40 82 00 30 */ bne lbl_801637B8
/* 8016378C 001606CC  7F E3 FB 78 */ mr r3, r31
/* 80163790 001606D0  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 80163794 001606D4  81 8C 00 80 */ lwz r12, 0x80(r12)
/* 80163798 001606D8  7D 89 03 A6 */ mtctr r12
/* 8016379C 001606DC  4E 80 04 21 */ bctrl
/* 801637A0 001606E0  2C 03 00 00 */ cmpwi r3, 0
/* 801637A4 001606E4  41 82 00 0C */ beq lbl_801637B0
/* 801637A8 001606E8  3B 80 00 02 */ li r28, 2
/* 801637AC 001606EC  48 00 03 E4 */ b lbl_80163B90
lbl_801637B0:
/* 801637B0 001606F0  3B 80 00 01 */ li r28, 1
/* 801637B4 001606F4  48 00 03 DC */ b lbl_80163B90
lbl_801637B8:
/* 801637B8 001606F8  2C 00 00 21 */ cmpwi r0, 0x21
/* 801637BC 001606FC  40 82 00 0C */ bne lbl_801637C8
/* 801637C0 00160700  3B 80 00 01 */ li r28, 1
/* 801637C4 00160704  48 00 03 CC */ b lbl_80163B90
lbl_801637C8:
/* 801637C8 00160708  3B 80 00 02 */ li r28, 2
/* 801637CC 0016070C  48 00 03 C4 */ b lbl_80163B90
lbl_801637D0:
/* 801637D0 00160710  88 7F 05 6A */ lbz r3, 0x56a(r31)
/* 801637D4 00160714  28 03 00 2B */ cmplwi r3, 0x2b
/* 801637D8 00160718  41 82 00 24 */ beq lbl_801637FC
/* 801637DC 0016071C  38 00 00 00 */ li r0, 0
/* 801637E0 00160720  28 03 00 00 */ cmplwi r3, 0
/* 801637E4 00160724  41 82 00 10 */ beq lbl_801637F4
/* 801637E8 00160728  28 03 00 26 */ cmplwi r3, 0x26
/* 801637EC 0016072C  40 80 00 08 */ bge lbl_801637F4
/* 801637F0 00160730  38 00 00 01 */ li r0, 1
lbl_801637F4:
/* 801637F4 00160734  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 801637F8 00160738  41 82 00 18 */ beq lbl_80163810
lbl_801637FC:
/* 801637FC 0016073C  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 80163800 00160740  64 00 00 40 */ oris r0, r0, 0x40
/* 80163804 00160744  90 1D 03 34 */ stw r0, 0x334(r29)
/* 80163808 00160748  3B 80 00 01 */ li r28, 1
/* 8016380C 0016074C  48 00 03 84 */ b lbl_80163B90
lbl_80163810:
/* 80163810 00160750  7F E3 FB 78 */ mr r3, r31
/* 80163814 00160754  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 80163818 00160758  81 8C 01 AC */ lwz r12, 0x1ac(r12)
/* 8016381C 0016075C  7D 89 03 A6 */ mtctr r12
/* 80163820 00160760  4E 80 04 21 */ bctrl
/* 80163824 00160764  2C 03 00 00 */ cmpwi r3, 0
/* 80163828 00160768  41 82 00 10 */ beq lbl_80163838
/* 8016382C 0016076C  38 00 00 01 */ li r0, 1
/* 80163830 00160770  98 1A 06 10 */ stb r0, 0x610(r26)
/* 80163834 00160774  48 00 03 5C */ b lbl_80163B90
lbl_80163838:
/* 80163838 00160778  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8016383C 0016077C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80163840 00160780  3B 83 5F 1C */ addi r28, r3, 0x5f1c
/* 80163844 00160784  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 80163848 00160788  54 04 20 36 */ slwi r4, r0, 4
/* 8016384C 0016078C  7C 7C 20 2E */ lwzx r3, r28, r4
/* 80163850 00160790  54 60 06 F7 */ rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80163854 00160794  41 82 00 0C */ beq lbl_80163860
/* 80163858 00160798  3B 80 00 09 */ li r28, 9
/* 8016385C 0016079C  48 00 03 34 */ b lbl_80163B90
lbl_80163860:
/* 80163860 001607A0  54 60 02 53 */ rlwinm. r0, r3, 0, 9, 9
/* 80163864 001607A4  40 82 00 0C */ bne lbl_80163870
/* 80163868 001607A8  54 60 02 95 */ rlwinm. r0, r3, 0, 0xa, 0xa
/* 8016386C 001607AC  41 82 00 18 */ beq lbl_80163884
lbl_80163870:
/* 80163870 001607B0  80 1A 01 84 */ lwz r0, 0x184(r26)
/* 80163874 001607B4  28 00 00 00 */ cmplwi r0, 0
/* 80163878 001607B8  41 82 00 0C */ beq lbl_80163884
/* 8016387C 001607BC  3B 80 00 06 */ li r28, 6
/* 80163880 001607C0  48 00 03 10 */ b lbl_80163B90
lbl_80163884:
/* 80163884 001607C4  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 80163888 001607C8  28 00 00 2D */ cmplwi r0, 0x2d
/* 8016388C 001607CC  40 82 00 0C */ bne lbl_80163898
/* 80163890 001607D0  3B 80 00 06 */ li r28, 6
/* 80163894 001607D4  48 00 02 FC */ b lbl_80163B90
lbl_80163898:
/* 80163898 001607D8  7C 1E 20 2E */ lwzx r0, r30, r4
/* 8016389C 001607DC  54 00 07 7D */ rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 801638A0 001607E0  41 82 00 18 */ beq lbl_801638B8
/* 801638A4 001607E4  80 1A 01 84 */ lwz r0, 0x184(r26)
/* 801638A8 001607E8  28 00 00 00 */ cmplwi r0, 0
/* 801638AC 001607EC  41 82 00 0C */ beq lbl_801638B8
/* 801638B0 001607F0  3B 80 00 05 */ li r28, 5
/* 801638B4 001607F4  48 00 02 DC */ b lbl_80163B90
lbl_801638B8:
/* 801638B8 001607F8  7F A3 EB 78 */ mr r3, r29
/* 801638BC 001607FC  4B F0 FF 29 */ bl dAttention_c_NS_LockonTruth
/* 801638C0 00160800  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801638C4 00160804  41 82 00 2C */ beq lbl_801638F0
/* 801638C8 00160808  80 1A 01 84 */ lwz r0, 0x184(r26)
/* 801638CC 0016080C  28 00 00 00 */ cmplwi r0, 0
/* 801638D0 00160810  41 82 00 20 */ beq lbl_801638F0
/* 801638D4 00160814  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 801638D8 00160818  54 00 20 36 */ slwi r0, r0, 4
/* 801638DC 0016081C  7C 1E 00 2E */ lwzx r0, r30, r0
/* 801638E0 00160820  54 00 01 0B */ rlwinm. r0, r0, 0, 4, 5
/* 801638E4 00160824  40 82 00 0C */ bne lbl_801638F0
/* 801638E8 00160828  3B 80 00 02 */ li r28, 2
/* 801638EC 0016082C  48 00 02 A4 */ b lbl_80163B90
lbl_801638F0:
/* 801638F0 00160830  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 801638F4 00160834  54 00 20 36 */ slwi r0, r0, 4
/* 801638F8 00160838  7C 9E 00 2E */ lwzx r4, r30, r0
/* 801638FC 0016083C  3C 60 00 01 */ lis r3, 0x00012000@ha
/* 80163900 00160840  38 03 20 00 */ addi r0, r3, 0x00012000@l
/* 80163904 00160844  7C 80 00 39 */ and. r0, r4, r0
/* 80163908 00160848  41 82 00 0C */ beq lbl_80163914
/* 8016390C 0016084C  3B 80 00 04 */ li r28, 4
/* 80163910 00160850  48 00 02 80 */ b lbl_80163B90
lbl_80163914:
/* 80163914 00160854  3C 60 00 02 */ lis r3, 0x00025040@ha
/* 80163918 00160858  38 03 50 40 */ addi r0, r3, 0x00025040@l
/* 8016391C 0016085C  7C 80 00 39 */ and. r0, r4, r0
/* 80163920 00160860  41 82 00 38 */ beq lbl_80163958
/* 80163924 00160864  3B 20 00 01 */ li r25, 1
/* 80163928 00160868  7F A3 EB 78 */ mr r3, r29
/* 8016392C 0016086C  4B F0 FE B9 */ bl dAttention_c_NS_LockonTruth
/* 80163930 00160870  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80163934 00160874  40 82 00 14 */ bne lbl_80163948
/* 80163938 00160878  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 8016393C 0016087C  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 80163940 00160880  40 82 00 08 */ bne lbl_80163948
/* 80163944 00160884  3B 20 00 00 */ li r25, 0
lbl_80163948:
/* 80163948 00160888  57 20 06 3F */ clrlwi. r0, r25, 0x18
/* 8016394C 0016088C  40 82 00 0C */ bne lbl_80163958
/* 80163950 00160890  3B 80 00 07 */ li r28, 7
/* 80163954 00160894  48 00 02 3C */ b lbl_80163B90
lbl_80163958:
/* 80163958 00160898  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 8016395C 0016089C  54 00 20 36 */ slwi r0, r0, 4
/* 80163960 001608A0  7C 9E 00 2E */ lwzx r4, r30, r0
/* 80163964 001608A4  3C 60 00 08 */ lis r3, 0x00080480@ha
/* 80163968 001608A8  38 03 04 80 */ addi r0, r3, 0x00080480@l
/* 8016396C 001608AC  7C 80 00 39 */ and. r0, r4, r0
/* 80163970 001608B0  41 82 00 30 */ beq lbl_801639A0
/* 80163974 001608B4  3B 20 00 01 */ li r25, 1
/* 80163978 001608B8  7F A3 EB 78 */ mr r3, r29
/* 8016397C 001608BC  4B F0 FE 69 */ bl dAttention_c_NS_LockonTruth
/* 80163980 001608C0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80163984 001608C4  40 82 00 14 */ bne lbl_80163998
/* 80163988 001608C8  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 8016398C 001608CC  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 80163990 001608D0  40 82 00 08 */ bne lbl_80163998
/* 80163994 001608D4  3B 20 00 00 */ li r25, 0
lbl_80163998:
/* 80163998 001608D8  57 20 06 3F */ clrlwi. r0, r25, 0x18
/* 8016399C 001608DC  41 82 00 20 */ beq lbl_801639BC
lbl_801639A0:
/* 801639A0 001608E0  7F E3 FB 78 */ mr r3, r31
/* 801639A4 001608E4  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 801639A8 001608E8  81 8C 00 78 */ lwz r12, 0x78(r12)
/* 801639AC 001608EC  7D 89 03 A6 */ mtctr r12
/* 801639B0 001608F0  4E 80 04 21 */ bctrl
/* 801639B4 001608F4  2C 03 00 00 */ cmpwi r3, 0
/* 801639B8 001608F8  41 82 00 0C */ beq lbl_801639C4
lbl_801639BC:
/* 801639BC 001608FC  3B 80 00 08 */ li r28, 8
/* 801639C0 00160900  48 00 01 D0 */ b lbl_80163B90
lbl_801639C4:
/* 801639C4 00160904  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 801639C8 00160908  54 00 20 36 */ slwi r0, r0, 4
/* 801639CC 0016090C  7C 1E 00 2E */ lwzx r0, r30, r0
/* 801639D0 00160910  54 00 01 4B */ rlwinm. r0, r0, 0, 5, 5
/* 801639D4 00160914  40 82 00 20 */ bne lbl_801639F4
/* 801639D8 00160918  7F E3 FB 78 */ mr r3, r31
/* 801639DC 0016091C  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 801639E0 00160920  81 8C 00 68 */ lwz r12, 0x68(r12)
/* 801639E4 00160924  7D 89 03 A6 */ mtctr r12
/* 801639E8 00160928  4E 80 04 21 */ bctrl
/* 801639EC 0016092C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801639F0 00160930  41 82 00 0C */ beq lbl_801639FC
lbl_801639F4:
/* 801639F4 00160934  3B 80 00 0A */ li r28, 0xa
/* 801639F8 00160938  48 00 01 98 */ b lbl_80163B90
lbl_801639FC:
/* 801639FC 0016093C  3B 20 00 01 */ li r25, 1
/* 80163A00 00160940  7F A3 EB 78 */ mr r3, r29
/* 80163A04 00160944  4B F0 FD E1 */ bl dAttention_c_NS_LockonTruth
/* 80163A08 00160948  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80163A0C 0016094C  40 82 00 14 */ bne lbl_80163A20
/* 80163A10 00160950  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 80163A14 00160954  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 80163A18 00160958  40 82 00 08 */ bne lbl_80163A20
/* 80163A1C 0016095C  3B 20 00 00 */ li r25, 0
lbl_80163A20:
/* 80163A20 00160960  57 20 06 3F */ clrlwi. r0, r25, 0x18
/* 80163A24 00160964  41 82 00 0C */ beq lbl_80163A30
/* 80163A28 00160968  3B 80 00 01 */ li r28, 1
/* 80163A2C 0016096C  48 00 01 64 */ b lbl_80163B90
lbl_80163A30:
/* 80163A30 00160970  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 80163A34 00160974  54 00 20 36 */ slwi r0, r0, 4
/* 80163A38 00160978  7C 1E 00 2E */ lwzx r0, r30, r0
/* 80163A3C 0016097C  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 80163A40 00160980  40 82 00 20 */ bne lbl_80163A60
/* 80163A44 00160984  7F E3 FB 78 */ mr r3, r31
/* 80163A48 00160988  4B FA EA 2D */ bl daAlink_c_NS_checkIronBallThrowMode
/* 80163A4C 0016098C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80163A50 00160990  40 82 00 10 */ bne lbl_80163A60
/* 80163A54 00160994  80 1F 05 7C */ lwz r0, 0x57c(r31)
/* 80163A58 00160998  54 00 01 09 */ rlwinm. r0, r0, 0, 4, 4
/* 80163A5C 0016099C  41 82 00 84 */ beq lbl_80163AE0
lbl_80163A60:
/* 80163A60 001609A0  80 1A 01 7C */ lwz r0, 0x17c(r26)
/* 80163A64 001609A4  54 05 20 36 */ slwi r5, r0, 4
/* 80163A68 001609A8  7C 9E 28 2E */ lwzx r4, r30, r5
/* 80163A6C 001609AC  3C 60 36 A0 */ lis r3, 0x36A02311@ha
/* 80163A70 001609B0  38 03 23 11 */ addi r0, r3, 0x36A02311@l
/* 80163A74 001609B4  7C 80 00 39 */ and. r0, r4, r0
/* 80163A78 001609B8  40 82 00 68 */ bne lbl_80163AE0
/* 80163A7C 001609BC  88 1A 06 10 */ lbz r0, 0x610(r26)
/* 80163A80 001609C0  28 00 00 00 */ cmplwi r0, 0
/* 80163A84 001609C4  40 82 00 5C */ bne lbl_80163AE0
/* 80163A88 001609C8  7C 1C 28 2E */ lwzx r0, r28, r5
/* 80163A8C 001609CC  70 00 00 11 */ andi. r0, r0, 0x11
/* 80163A90 001609D0  40 82 00 50 */ bne lbl_80163AE0
/* 80163A94 001609D4  80 7A 01 80 */ lwz r3, 0x180(r26)
/* 80163A98 001609D8  38 00 00 00 */ li r0, 0
/* 80163A9C 001609DC  A8 63 00 08 */ lha r3, 8(r3)
/* 80163AA0 001609E0  2C 03 00 FD */ cmpwi r3, 0xfd
/* 80163AA4 001609E4  41 82 00 08 */ beq lbl_80163AAC
/* 80163AA8 001609E8  40 82 00 08 */ bne lbl_80163AB0
lbl_80163AAC:
/* 80163AAC 001609EC  38 00 00 01 */ li r0, 1
lbl_80163AB0:
/* 80163AB0 001609F0  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 80163AB4 001609F4  41 82 00 0C */ beq lbl_80163AC0
/* 80163AB8 001609F8  4B FF BE 19 */ bl daPy_py_c_NS_getThrowBoomerangActor
/* 80163ABC 001609FC  48 00 00 08 */ b lbl_80163AC4
lbl_80163AC0:
/* 80163AC0 00160A00  38 60 00 00 */ li r3, 0
lbl_80163AC4:
/* 80163AC4 00160A04  90 7A 01 84 */ stw r3, 0x184(r26)
/* 80163AC8 00160A08  3B 80 00 02 */ li r28, 2
/* 80163ACC 00160A0C  38 00 FF FF */ li r0, -1
/* 80163AD0 00160A10  90 1A 01 98 */ stw r0, 0x198(r26)
/* 80163AD4 00160A14  38 00 00 01 */ li r0, 1
/* 80163AD8 00160A18  98 1A 06 10 */ stb r0, 0x610(r26)
/* 80163ADC 00160A1C  48 00 00 B4 */ b lbl_80163B90
lbl_80163AE0:
/* 80163AE0 00160A20  80 7F 05 7C */ lwz r3, 0x57c(r31)
/* 80163AE4 00160A24  54 60 03 5B */ rlwinm. r0, r3, 0, 0xd, 0xd
/* 80163AE8 00160A28  40 82 00 0C */ bne lbl_80163AF4
/* 80163AEC 00160A2C  54 60 00 C7 */ rlwinm. r0, r3, 0, 3, 3
/* 80163AF0 00160A30  41 82 00 34 */ beq lbl_80163B24
lbl_80163AF4:
/* 80163AF4 00160A34  7F E3 FB 78 */ mr r3, r31
/* 80163AF8 00160A38  4B F7 D8 99 */ bl daAlink_c_NS_getCopyRodCameraActor
/* 80163AFC 00160A3C  28 03 00 00 */ cmplwi r3, 0
/* 80163B00 00160A40  40 82 00 24 */ bne lbl_80163B24
/* 80163B04 00160A44  80 1F 28 40 */ lwz r0, 0x2840(r31)
/* 80163B08 00160A48  90 1A 01 84 */ stw r0, 0x184(r26)
/* 80163B0C 00160A4C  3B 80 00 02 */ li r28, 2
/* 80163B10 00160A50  38 00 FF FF */ li r0, -1
/* 80163B14 00160A54  90 1A 01 98 */ stw r0, 0x198(r26)
/* 80163B18 00160A58  38 00 00 01 */ li r0, 1
/* 80163B1C 00160A5C  98 1A 06 10 */ stb r0, 0x610(r26)
/* 80163B20 00160A60  48 00 00 70 */ b lbl_80163B90
lbl_80163B24:
/* 80163B24 00160A64  38 60 00 00 */ li r3, 0
/* 80163B28 00160A68  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 80163B2C 00160A6C  28 00 00 A5 */ cmplwi r0, 0xa5
/* 80163B30 00160A70  40 82 00 14 */ bne lbl_80163B44
/* 80163B34 00160A74  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 80163B38 00160A78  2C 00 00 00 */ cmpwi r0, 0
/* 80163B3C 00160A7C  40 82 00 08 */ bne lbl_80163B44
/* 80163B40 00160A80  38 60 00 01 */ li r3, 1
lbl_80163B44:
/* 80163B44 00160A84  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80163B48 00160A88  41 82 00 0C */ beq lbl_80163B54
/* 80163B4C 00160A8C  3B 80 00 01 */ li r28, 1
/* 80163B50 00160A90  48 00 00 40 */ b lbl_80163B90
lbl_80163B54:
/* 80163B54 00160A94  80 7A 01 98 */ lwz r3, 0x198(r26)
/* 80163B58 00160A98  3C 03 00 01 */ addis r0, r3, 1
/* 80163B5C 00160A9C  28 00 FF FF */ cmplwi r0, 0xffff
/* 80163B60 00160AA0  41 82 00 2C */ beq lbl_80163B8C
/* 80163B64 00160AA4  80 1A 01 9C */ lwz r0, 0x19c(r26)
/* 80163B68 00160AA8  28 00 00 00 */ cmplwi r0, 0
/* 80163B6C 00160AAC  41 82 00 10 */ beq lbl_80163B7C
/* 80163B70 00160AB0  3B 80 00 02 */ li r28, 2
/* 80163B74 00160AB4  90 1A 01 84 */ stw r0, 0x184(r26)
/* 80163B78 00160AB8  48 00 00 18 */ b lbl_80163B90
lbl_80163B7C:
/* 80163B7C 00160ABC  3B 80 00 00 */ li r28, 0
/* 80163B80 00160AC0  38 00 FF FF */ li r0, -1
/* 80163B84 00160AC4  90 1A 01 98 */ stw r0, 0x198(r26)
/* 80163B88 00160AC8  48 00 00 08 */ b lbl_80163B90
lbl_80163B8C:
/* 80163B8C 00160ACC  3B 80 00 00 */ li r28, 0
lbl_80163B90:
/* 80163B90 00160AD0  80 7A 06 84 */ lwz r3, 0x684(r26)
/* 80163B94 00160AD4  80 1A 06 8C */ lwz r0, 0x68c(r26)
/* 80163B98 00160AD8  1C 00 00 44 */ mulli r0, r0, 0x44
/* 80163B9C 00160ADC  7C 63 02 14 */ add r3, r3, r0
/* 80163BA0 00160AE0  80 1A 01 90 */ lwz r0, 0x190(r26)
/* 80163BA4 00160AE4  1C 00 00 16 */ mulli r0, r0, 0x16
/* 80163BA8 00160AE8  7C 63 02 14 */ add r3, r3, r0
/* 80163BAC 00160AEC  57 80 08 3C */ slwi r0, r28, 1
/* 80163BB0 00160AF0  7C 63 02 14 */ add r3, r3, r0
/* 80163BB4 00160AF4  A8 03 00 18 */ lha r0, 0x18(r3)
/* 80163BB8 00160AF8  2C 00 00 00 */ cmpwi r0, 0
/* 80163BBC 00160AFC  41 80 00 44 */ blt lbl_80163C00
/* 80163BC0 00160B00  2C 1C 00 02 */ cmpwi r28, 2
/* 80163BC4 00160B04  41 82 00 0C */ beq lbl_80163BD0
/* 80163BC8 00160B08  38 00 FF FF */ li r0, -1
/* 80163BCC 00160B0C  90 1A 01 98 */ stw r0, 0x198(r26)
lbl_80163BD0:
/* 80163BD0 00160B10  2C 1C 00 01 */ cmpwi r28, 1
/* 80163BD4 00160B14  40 82 00 14 */ bne lbl_80163BE8
/* 80163BD8 00160B18  80 1A 06 0C */ lwz r0, 0x60c(r26)
/* 80163BDC 00160B1C  64 00 00 10 */ oris r0, r0, 0x10
/* 80163BE0 00160B20  90 1A 06 0C */ stw r0, 0x60c(r26)
/* 80163BE4 00160B24  48 00 00 20 */ b lbl_80163C04
lbl_80163BE8:
/* 80163BE8 00160B28  2C 1C 00 0A */ cmpwi r28, 0xa
/* 80163BEC 00160B2C  40 82 00 18 */ bne lbl_80163C04
/* 80163BF0 00160B30  80 1A 06 0C */ lwz r0, 0x60c(r26)
/* 80163BF4 00160B34  64 00 00 10 */ oris r0, r0, 0x10
/* 80163BF8 00160B38  90 1A 06 0C */ stw r0, 0x60c(r26)
/* 80163BFC 00160B3C  48 00 00 08 */ b lbl_80163C04
lbl_80163C00:
/* 80163C00 00160B40  7F 7C DB 78 */ mr r28, r27
lbl_80163C04:
/* 80163C04 00160B44  2C 1C 00 04 */ cmpwi r28, 4
/* 80163C08 00160B48  41 82 00 08 */ beq lbl_80163C10
/* 80163C0C 00160B4C  48 00 00 10 */ b lbl_80163C1C
lbl_80163C10:
/* 80163C10 00160B50  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 80163C14 00160B54  64 00 00 40 */ oris r0, r0, 0x40
/* 80163C18 00160B58  90 1D 03 34 */ stw r0, 0x334(r29)
lbl_80163C1C:
/* 80163C1C 00160B5C  7F 83 E3 78 */ mr r3, r28
/* 80163C20 00160B60  39 61 00 40 */ addi r11, r1, 0x40
/* 80163C24 00160B64  48 1F E5 F5 */ bl func_80362218
/* 80163C28 00160B68  80 01 00 44 */ lwz r0, 0x44(r1)
/* 80163C2C 00160B6C  7C 08 03 A6 */ mtlr r0
/* 80163C30 00160B70  38 21 00 40 */ addi r1, r1, 0x40
/* 80163C34 00160B74  4E 80 00 20 */ blr
