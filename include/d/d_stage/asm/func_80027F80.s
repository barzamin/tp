/* 80027F80 00024EC0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80027F84 00024EC4  7C 08 02 A6 */ mflr r0
/* 80027F88 00024EC8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80027F8C 00024ECC  4B FF BF 39 */ bl dStage_SetErrorStage
/* 80027F90 00024ED0  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80027F94 00024ED4  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80027F98 00024ED8  38 63 03 89 */ addi r3, r3, 0x389
/* 80027F9C 00024EDC  4C C6 31 82 */ crclr 6
/* 80027FA0 00024EE0  4B FD EB 1D */ bl OSReport
/* 80027FA4 00024EE4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80027FA8 00024EE8  7C 08 03 A6 */ mtlr r0
/* 80027FAC 00024EEC  38 21 00 10 */ addi r1, r1, 0x10
/* 80027FB0 00024EF0  4E 80 00 20 */ blr