/* 80204068 00200FA8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8020406C 00200FAC  7C 08 02 A6 */ mflr r0
/* 80204070 00200FB0  90 01 00 24 */ stw r0, 0x24(r1)
/* 80204074 00200FB4  39 61 00 20 */ addi r11, r1, 0x20
/* 80204078 00200FB8  48 15 E1 65 */ bl _savegpr_29
/* 8020407C 00200FBC  7C 7E 1B 78 */ mr r30, r3
/* 80204080 00200FC0  7C 9F 23 78 */ mr r31, r4
/* 80204084 00200FC4  7C BD 2B 78 */ mr r29, r5
/* 80204088 00200FC8  54 80 04 63 */ rlwinm. r0, r4, 0, 0x11, 0x11
/* 8020408C 00200FCC  40 82 00 94 */ bne lbl_80204120
/* 80204090 00200FD0  48 03 41 9D */ bl dMsgObject_c_NS_getStatus
/* 80204094 00200FD4  54 60 04 3E */ clrlwi r0, r3, 0x10
/* 80204098 00200FD8  20 60 00 01 */ subfic r3, r0, 1
/* 8020409C 00200FDC  30 03 FF FF */ addic r0, r3, -1
/* 802040A0 00200FE0  7C 00 19 10 */ subfe r0, r0, r3
/* 802040A4 00200FE4  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 802040A8 00200FE8  40 82 00 78 */ bne lbl_80204120
/* 802040AC 00200FEC  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 802040B0 00200FF0  41 82 00 70 */ beq lbl_80204120
/* 802040B4 00200FF4  57 E0 06 31 */ rlwinm. r0, r31, 0, 0x18, 0x18
/* 802040B8 00200FF8  40 82 00 68 */ bne lbl_80204120
/* 802040BC 00200FFC  57 E0 00 43 */ rlwinm. r0, r31, 0, 1, 1
/* 802040C0 00201000  40 82 00 60 */ bne lbl_80204120
/* 802040C4 00201004  57 E0 04 E7 */ rlwinm. r0, r31, 0, 0x13, 0x13
/* 802040C8 00201008  40 82 00 58 */ bne lbl_80204120
/* 802040CC 0020100C  57 E0 06 73 */ rlwinm. r0, r31, 0, 0x19, 0x19
/* 802040D0 00201010  41 82 00 30 */ beq lbl_80204100
/* 802040D4 00201014  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802040D8 00201018  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 802040DC 0020101C  88 03 4F AD */ lbz r0, 0x4fad(r3)
/* 802040E0 00201020  28 00 00 00 */ cmplwi r0, 0
/* 802040E4 00201024  41 82 00 10 */ beq lbl_802040F4
/* 802040E8 00201028  A0 03 4F A4 */ lhz r0, 0x4fa4(r3)
/* 802040EC 0020102C  54 00 07 FE */ clrlwi r0, r0, 0x1f
/* 802040F0 00201030  48 00 00 08 */ b lbl_802040F8
lbl_802040F4:
/* 802040F4 00201034  38 00 00 00 */ li r0, 0
lbl_802040F8:
/* 802040F8 00201038  54 00 04 3F */ clrlwi. r0, r0, 0x10
/* 802040FC 0020103C  40 82 00 24 */ bne lbl_80204120
lbl_80204100:
/* 80204100 00201040  57 E0 05 EF */ rlwinm. r0, r31, 0, 0x17, 0x17
/* 80204104 00201044  40 82 00 1C */ bne lbl_80204120
/* 80204108 00201048  57 E0 07 39 */ rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8020410C 0020104C  40 82 00 14 */ bne lbl_80204120
/* 80204110 00201050  57 E0 06 F7 */ rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80204114 00201054  40 82 00 0C */ bne lbl_80204120
/* 80204118 00201058  57 E0 06 B5 */ rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 8020411C 0020105C  41 82 00 1C */ beq lbl_80204138
lbl_80204120:
/* 80204120 00201060  7F C3 F3 78 */ mr r3, r30
/* 80204124 00201064  48 00 45 4D */ bl dMeterButton_c_NS_setAlphaButtonNUREAnimeMin
/* 80204128 00201068  A0 1E 04 B0 */ lhz r0, 0x4b0(r30)
/* 8020412C 0020106C  54 00 04 A0 */ rlwinm r0, r0, 0, 0x12, 0x10
/* 80204130 00201070  B0 1E 04 B0 */ sth r0, 0x4b0(r30)
/* 80204134 00201074  48 00 00 20 */ b lbl_80204154
lbl_80204138:
/* 80204138 00201078  7F C3 F3 78 */ mr r3, r30
/* 8020413C 0020107C  48 00 45 CD */ bl dMeterButton_c_NS_setAlphaButtonNUREAnimeMax
/* 80204140 00201080  A0 1E 04 B0 */ lhz r0, 0x4b0(r30)
/* 80204144 00201084  60 00 40 00 */ ori r0, r0, 0x4000
/* 80204148 00201088  B0 1E 04 B0 */ sth r0, 0x4b0(r30)
/* 8020414C 0020108C  38 60 00 01 */ li r3, 1
/* 80204150 00201090  48 00 00 08 */ b lbl_80204158
lbl_80204154:
/* 80204154 00201094  38 60 00 00 */ li r3, 0
lbl_80204158:
/* 80204158 00201098  39 61 00 20 */ addi r11, r1, 0x20
/* 8020415C 0020109C  48 15 E0 CD */ bl _restgpr_29
/* 80204160 002010A0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80204164 002010A4  7C 08 03 A6 */ mtlr r0
/* 80204168 002010A8  38 21 00 20 */ addi r1, r1, 0x20
/* 8020416C 002010AC  4E 80 00 20 */ blr
