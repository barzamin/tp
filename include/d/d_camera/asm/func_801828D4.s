/* 801828D4 0017F814  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801828D8 0017F818  7C 08 02 A6 */ mflr r0
/* 801828DC 0017F81C  90 01 00 14 */ stw r0, 0x14(r1)
/* 801828E0 0017F820  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801828E4 0017F824  7C 7F 1B 79 */ or. r31, r3, r3
/* 801828E8 0017F828  41 82 00 1C */ beq lbl_80182904
/* 801828EC 0017F82C  3C A0 80 3C */ lis r5, lbl_803BA7EC@ha
/* 801828F0 0017F830  38 05 A7 EC */ addi r0, r5, lbl_803BA7EC@l
/* 801828F4 0017F834  90 1F 00 30 */ stw r0, 0x30(r31)
/* 801828F8 0017F838  7C 80 07 35 */ extsh. r0, r4
/* 801828FC 0017F83C  40 81 00 08 */ ble lbl_80182904
/* 80182900 0017F840  48 14 C4 3D */ bl __dl__FPv
lbl_80182904:
/* 80182904 0017F844  7F E3 FB 78 */ mr r3, r31
/* 80182908 0017F848  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8018290C 0017F84C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80182910 0017F850  7C 08 03 A6 */ mtlr r0
/* 80182914 0017F854  38 21 00 10 */ addi r1, r1, 0x10
/* 80182918 0017F858  4E 80 00 20 */ blr