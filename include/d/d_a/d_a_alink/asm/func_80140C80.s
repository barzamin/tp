/* 80140C80 0013DBC0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80140C84 0013DBC4  7C 08 02 A6 */ mflr r0
/* 80140C88 0013DBC8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80140C8C 0013DBCC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80140C90 0013DBD0  93 C1 00 08 */ stw r30, 8(r1)
/* 80140C94 0013DBD4  7C 7E 1B 79 */ or. r30, r3, r3
/* 80140C98 0013DBD8  7C 9F 23 78 */ mr r31, r4
/* 80140C9C 0013DBDC  41 82 00 24 */ beq lbl_80140CC0
/* 80140CA0 0013DBE0  3C 80 80 3B */ lis r4, lbl_803B2E80@ha
/* 80140CA4 0013DBE4  38 04 2E 80 */ addi r0, r4, lbl_803B2E80@l
/* 80140CA8 0013DBE8  90 1E 00 00 */ stw r0, 0(r30)
/* 80140CAC 0013DBEC  4B F5 BD 7D */ bl dEyeHL_c_NS_remove
/* 80140CB0 0013DBF0  7F E0 07 35 */ extsh. r0, r31
/* 80140CB4 0013DBF4  40 81 00 0C */ ble lbl_80140CC0
/* 80140CB8 0013DBF8  7F C3 F3 78 */ mr r3, r30
/* 80140CBC 0013DBFC  48 18 E0 81 */ bl __dl__FPv
lbl_80140CC0:
/* 80140CC0 0013DC00  7F C3 F3 78 */ mr r3, r30
/* 80140CC4 0013DC04  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80140CC8 0013DC08  83 C1 00 08 */ lwz r30, 8(r1)
/* 80140CCC 0013DC0C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80140CD0 0013DC10  7C 08 03 A6 */ mtlr r0
/* 80140CD4 0013DC14  38 21 00 10 */ addi r1, r1, 0x10
/* 80140CD8 0013DC18  4E 80 00 20 */ blr