/* 80182454 0017F394  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80182458 0017F398  7C 08 02 A6 */ mflr r0
/* 8018245C 0017F39C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80182460 0017F3A0  7C 65 1B 78 */ mr r5, r3
/* 80182464 0017F3A4  38 65 02 40 */ addi r3, r5, 0x240
/* 80182468 0017F3A8  3C 80 80 3C */ lis r4, lbl_803BA6D8@ha
/* 8018246C 0017F3AC  38 84 A6 D8 */ addi r4, r4, lbl_803BA6D8@l
/* 80182470 0017F3B0  4B EA D6 B1 */ bl dComLbG_PhaseHandler
/* 80182474 0017F3B4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80182478 0017F3B8  7C 08 03 A6 */ mtlr r0
/* 8018247C 0017F3BC  38 21 00 10 */ addi r1, r1, 0x10
/* 80182480 0017F3C0  4E 80 00 20 */ blr