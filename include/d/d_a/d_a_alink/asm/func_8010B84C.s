/* 8010B84C 0010878C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8010B850 00108790  7C 08 02 A6 */ mflr r0
/* 8010B854 00108794  90 01 00 24 */ stw r0, 0x24(r1)
/* 8010B858 00108798  DB E1 00 10 */ stfd f31, 0x10(r1)
/* 8010B85C 0010879C  F3 E1 00 18 */ psq_st f31, 24(r1), 0, 0
/* 8010B860 001087A0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8010B864 001087A4  7C 7F 1B 78 */ mr r31, r3
/* 8010B868 001087A8  38 7F 1D 08 */ addi r3, r31, 0x1d08
/* 8010B86C 001087AC  38 9F 38 34 */ addi r4, r31, 0x3834
/* 8010B870 001087B0  48 15 C4 B9 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8010B874 001087B4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010B878 001087B8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B87C 001087BC  38 63 0F 38 */ addi r3, r3, 0xf38
/* 8010B880 001087C0  38 9F 1D 08 */ addi r4, r31, 0x1d08
/* 8010B884 001087C4  4B F6 8C 1D */ bl cBgS_NS_GroundCross
/* 8010B888 001087C8  FF E0 08 90 */ fmr f31, f1
/* 8010B88C 001087CC  7F E3 FB 78 */ mr r3, r31
/* 8010B890 001087D0  4B FF E0 01 */ bl daAlink_c_NS_setHookshotHangMoveBGCollect
/* 8010B894 001087D4  2C 03 00 00 */ cmpwi r3, 0
/* 8010B898 001087D8  41 82 00 1C */ beq lbl_8010B8B4
/* 8010B89C 001087DC  C0 1F 05 E4 */ lfs f0, 0x5e4(r31)
/* 8010B8A0 001087E0  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8010B8A4 001087E4  41 81 00 10 */ bgt lbl_8010B8B4
/* 8010B8A8 001087E8  C0 1F 05 F0 */ lfs f0, 0x5f0(r31)
/* 8010B8AC 001087EC  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8010B8B0 001087F0  40 81 00 10 */ ble lbl_8010B8C0
lbl_8010B8B4:
/* 8010B8B4 001087F4  7F E3 FB 78 */ mr r3, r31
/* 8010B8B8 001087F8  4B FF FE 69 */ bl daAlink_c_NS_checkNextHookPoint
/* 8010B8BC 001087FC  48 00 00 94 */ b lbl_8010B950
lbl_8010B8C0:
/* 8010B8C0 00108800  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 8010B8C4 00108804  28 00 00 C9 */ cmplwi r0, 0xc9
/* 8010B8C8 00108808  41 82 00 84 */ beq lbl_8010B94C
/* 8010B8CC 0010880C  28 00 00 C8 */ cmplwi r0, 0xc8
/* 8010B8D0 00108810  41 82 00 0C */ beq lbl_8010B8DC
/* 8010B8D4 00108814  28 00 00 CB */ cmplwi r0, 0xcb
/* 8010B8D8 00108818  40 82 00 14 */ bne lbl_8010B8EC
lbl_8010B8DC:
/* 8010B8DC 0010881C  7F E3 FB 78 */ mr r3, r31
/* 8010B8E0 00108820  4B FF D1 39 */ bl daAlink_c_NS_checkHookshotWait
/* 8010B8E4 00108824  2C 03 00 00 */ cmpwi r3, 0
/* 8010B8E8 00108828  41 82 00 64 */ beq lbl_8010B94C
lbl_8010B8EC:
/* 8010B8EC 0010882C  7F E3 FB 78 */ mr r3, r31
/* 8010B8F0 00108830  4B FF CF B1 */ bl daAlink_c_NS_checkHookshotRoofLv7Boss
/* 8010B8F4 00108834  2C 03 00 00 */ cmpwi r3, 0
/* 8010B8F8 00108838  41 82 00 10 */ beq lbl_8010B908
/* 8010B8FC 0010883C  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 8010B900 00108840  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8010B904 00108844  40 82 00 48 */ bne lbl_8010B94C
lbl_8010B908:
/* 8010B908 00108848  7F E3 FB 78 */ mr r3, r31
/* 8010B90C 0010884C  38 80 00 45 */ li r4, 0x45
/* 8010B910 00108850  4B FB 48 55 */ bl daAlink_c_NS_checkSetItemTrigger
/* 8010B914 00108854  2C 03 00 00 */ cmpwi r3, 0
/* 8010B918 00108858  41 82 00 34 */ beq lbl_8010B94C
/* 8010B91C 0010885C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010B920 00108860  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B924 00108864  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 8010B928 00108868  54 00 03 DF */ rlwinm. r0, r0, 0, 0xf, 0xf
/* 8010B92C 0010886C  41 82 00 14 */ beq lbl_8010B940
/* 8010B930 00108870  7F E3 FB 78 */ mr r3, r31
/* 8010B934 00108874  80 9F 28 58 */ lwz r4, 0x2858(r31)
/* 8010B938 00108878  48 00 16 35 */ bl daAlink_c_NS_procHookshotRoofBootsInit
/* 8010B93C 0010887C  48 00 00 14 */ b lbl_8010B950
lbl_8010B940:
/* 8010B940 00108880  7F E3 FB 78 */ mr r3, r31
/* 8010B944 00108884  38 80 00 01 */ li r4, 1
/* 8010B948 00108888  4B FD 6C 39 */ bl daAlink_c_NS_setHeavyBoots
lbl_8010B94C:
/* 8010B94C 0010888C  38 60 00 00 */ li r3, 0
lbl_8010B950:
/* 8010B950 00108890  E3 E1 00 18 */ psq_l f31, 24(r1), 0, 0
/* 8010B954 00108894  CB E1 00 10 */ lfd f31, 0x10(r1)
/* 8010B958 00108898  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8010B95C 0010889C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8010B960 001088A0  7C 08 03 A6 */ mtlr r0
/* 8010B964 001088A4  38 21 00 20 */ addi r1, r1, 0x20
/* 8010B968 001088A8  4E 80 00 20 */ blr
