/* 800574BC 000543FC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800574C0 00054400  7C 08 02 A6 */ mflr r0
/* 800574C4 00054404  90 01 00 14 */ stw r0, 0x14(r1)
/* 800574C8 00054408  38 60 00 01 */ li r3, 1
/* 800574CC 0005440C  4B FF FF C1 */ bl dKyw_evil_packet
/* 800574D0 00054410  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800574D4 00054414  7C 08 03 A6 */ mtlr r0
/* 800574D8 00054418  38 21 00 10 */ addi r1, r1, 0x10
/* 800574DC 0005441C  4E 80 00 20 */ blr
