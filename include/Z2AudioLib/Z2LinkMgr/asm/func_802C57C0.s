/* 802C57C0 002C2700  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802C57C4 002C2704  7C 08 02 A6 */ mflr r0
/* 802C57C8 002C2708  90 01 00 24 */ stw r0, 0x24(r1)
/* 802C57CC 002C270C  39 61 00 20 */ addi r11, r1, 0x20
/* 802C57D0 002C2710  48 09 CA 0D */ bl _savegpr_29
/* 802C57D4 002C2714  7C 7D 1B 78 */ mr r29, r3
/* 802C57D8 002C2718  7C 9E 23 78 */ mr r30, r4
/* 802C57DC 002C271C  80 04 00 00 */ lwz r0, 0(r4)
/* 802C57E0 002C2720  90 01 00 08 */ stw r0, 8(r1)
/* 802C57E4 002C2724  38 81 00 08 */ addi r4, r1, 8
/* 802C57E8 002C2728  4B FF 89 5D */ bl Z2SoundObjBase_NS_startSound
/* 802C57EC 002C272C  7C 7F 1B 79 */ or. r31, r3, r3
/* 802C57F0 002C2730  41 82 00 80 */ beq lbl_802C5870
/* 802C57F4 002C2734  80 1F 00 00 */ lwz r0, 0(r31)
/* 802C57F8 002C2738  28 00 00 00 */ cmplwi r0, 0
/* 802C57FC 002C273C  41 82 00 74 */ beq lbl_802C5870
/* 802C5800 002C2740  80 7E 00 00 */ lwz r3, 0(r30)
/* 802C5804 002C2744  3C 03 FF FA */ addis r0, r3, 0xfffa
/* 802C5808 002C2748  28 00 00 50 */ cmplwi r0, 0x50
/* 802C580C 002C274C  40 82 00 64 */ bne lbl_802C5870
/* 802C5810 002C2750  C0 3D 00 20 */ lfs f1, 0x20(r29)
/* 802C5814 002C2754  C0 42 C2 A0 */ lfs f2, lbl_80455CA0-_SDA2_BASE_(r2)
/* 802C5818 002C2758  C0 62 C3 30 */ lfs f3, lbl_80455D30-_SDA2_BASE_(r2)
/* 802C581C 002C275C  C0 82 C3 38 */ lfs f4, lbl_80455D38-_SDA2_BASE_(r2)
/* 802C5820 002C2760  C0 A2 C3 3C */ lfs f5, lbl_80455D3C-_SDA2_BASE_(r2)
/* 802C5824 002C2764  C0 C2 C3 2C */ lfs f6, lbl_80455D2C-_SDA2_BASE_(r2)
/* 802C5828 002C2768  38 60 00 01 */ li r3, 1
/* 802C582C 002C276C  4B FE 3E C9 */ bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5830 002C2770  80 7F 00 00 */ lwz r3, 0(r31)
/* 802C5834 002C2774  38 63 00 48 */ addi r3, r3, 0x48
/* 802C5838 002C2778  38 80 00 00 */ li r4, 0
/* 802C583C 002C277C  4B FD D5 D1 */ bl JAISoundParamsMove_NS_movePitch
/* 802C5840 002C2780  C0 3D 00 20 */ lfs f1, 0x20(r29)
/* 802C5844 002C2784  C0 42 C2 A0 */ lfs f2, lbl_80455CA0-_SDA2_BASE_(r2)
/* 802C5848 002C2788  C0 62 C3 30 */ lfs f3, lbl_80455D30-_SDA2_BASE_(r2)
/* 802C584C 002C278C  C0 82 C3 38 */ lfs f4, lbl_80455D38-_SDA2_BASE_(r2)
/* 802C5850 002C2790  C0 A2 C2 F0 */ lfs f5, lbl_80455CF0-_SDA2_BASE_(r2)
/* 802C5854 002C2794  C0 C2 C2 98 */ lfs f6, lbl_80455C98-_SDA2_BASE_(r2)
/* 802C5858 002C2798  38 60 00 01 */ li r3, 1
/* 802C585C 002C279C  4B FE 3E 99 */ bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5860 002C27A0  80 7F 00 00 */ lwz r3, 0(r31)
/* 802C5864 002C27A4  38 63 00 48 */ addi r3, r3, 0x48
/* 802C5868 002C27A8  38 80 00 00 */ li r4, 0
/* 802C586C 002C27AC  4B FD D5 49 */ bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C5870:
/* 802C5870 002C27B0  7F E3 FB 78 */ mr r3, r31
/* 802C5874 002C27B4  39 61 00 20 */ addi r11, r1, 0x20
/* 802C5878 002C27B8  48 09 C9 B1 */ bl _restgpr_29
/* 802C587C 002C27BC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802C5880 002C27C0  7C 08 03 A6 */ mtlr r0
/* 802C5884 002C27C4  38 21 00 20 */ addi r1, r1, 0x20
/* 802C5888 002C27C8  4E 80 00 20 */ blr