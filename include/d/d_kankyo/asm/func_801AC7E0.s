/* 801AC7E0 001A9720  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 801AC7E4 001A9724  7C 08 02 A6 */ mflr r0
/* 801AC7E8 001A9728  90 01 00 24 */ stw r0, 0x24(r1)
/* 801AC7EC 001A972C  39 61 00 20 */ addi r11, r1, 0x20
/* 801AC7F0 001A9730  48 1B 59 E5 */ bl _savegpr_27
/* 801AC7F4 001A9734  7C 7B 1B 78 */ mr r27, r3
/* 801AC7F8 001A9738  7C 9C 23 78 */ mr r28, r4
/* 801AC7FC 001A973C  4B EA A2 75 */ bl dKyd_darkworld_tbl_getp
/* 801AC800 001A9740  7C 7F 1B 78 */ mr r31, r3
/* 801AC804 001A9744  3B C0 00 00 */ li r30, 0
/* 801AC808 001A9748  3B A0 00 00 */ li r29, 0
lbl_801AC80C:
/* 801AC80C 001A974C  7F 63 DB 78 */ mr r3, r27
/* 801AC810 001A9750  80 9F 00 00 */ lwz r4, 0(r31)
/* 801AC814 001A9754  48 1B C1 81 */ bl strcmp
/* 801AC818 001A9758  2C 03 00 00 */ cmpwi r3, 0
/* 801AC81C 001A975C  40 82 00 28 */ bne lbl_801AC844
/* 801AC820 001A9760  7F 63 DB 78 */ mr r3, r27
/* 801AC824 001A9764  7F 84 E3 78 */ mr r4, r28
/* 801AC828 001A9768  38 A0 00 00 */ li r5, 0
/* 801AC82C 001A976C  7F A6 EB 78 */ mr r6, r29
/* 801AC830 001A9770  4B FF FD 8D */ bl dKy_F_SP121Check
/* 801AC834 001A9774  2C 03 00 00 */ cmpwi r3, 0
/* 801AC838 001A9778  41 80 00 0C */ blt lbl_801AC844
/* 801AC83C 001A977C  3B C0 00 01 */ li r30, 1
/* 801AC840 001A9780  48 00 00 14 */ b lbl_801AC854
lbl_801AC844:
/* 801AC844 001A9784  3B BD 00 01 */ addi r29, r29, 1
/* 801AC848 001A9788  2C 1D 00 22 */ cmpwi r29, 0x22
/* 801AC84C 001A978C  3B FF 00 08 */ addi r31, r31, 8
/* 801AC850 001A9790  41 80 FF BC */ blt lbl_801AC80C
lbl_801AC854:
/* 801AC854 001A9794  7F C3 F3 78 */ mr r3, r30
/* 801AC858 001A9798  39 61 00 20 */ addi r11, r1, 0x20
/* 801AC85C 001A979C  48 1B 59 C5 */ bl _restgpr_27
/* 801AC860 001A97A0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 801AC864 001A97A4  7C 08 03 A6 */ mtlr r0
/* 801AC868 001A97A8  38 21 00 20 */ addi r1, r1, 0x20
/* 801AC86C 001A97AC  4E 80 00 20 */ blr
