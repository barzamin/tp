/* 80264B60 00261AA0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80264B64 00261AA4  7C 08 02 A6 */ mflr r0
/* 80264B68 00261AA8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80264B6C 00261AAC  4B FF FF 29 */ bl Ct__4cCcSFv
/* 80264B70 00261AB0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80264B74 00261AB4  7C 08 03 A6 */ mtlr r0
/* 80264B78 00261AB8  38 21 00 10 */ addi r1, r1, 0x10
/* 80264B7C 00261ABC  4E 80 00 20 */ blr
