/* 80262794 0025F6D4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80262798 0025F6D8  7C 08 02 A6 */ mflr r0
/* 8026279C 0025F6DC  90 01 00 14 */ stw r0, 0x14(r1)
/* 802627A0 0025F6E0  81 83 00 0C */ lwz r12, 0xc(r3)
/* 802627A4 0025F6E4  81 8C 00 20 */ lwz r12, 0x20(r12)
/* 802627A8 0025F6E8  7D 89 03 A6 */ mtctr r12
/* 802627AC 0025F6EC  4E 80 04 21 */ bctrl
/* 802627B0 0025F6F0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802627B4 0025F6F4  7C 08 03 A6 */ mtlr r0
/* 802627B8 0025F6F8  38 21 00 10 */ addi r1, r1, 0x10
/* 802627BC 0025F6FC  4E 80 00 20 */ blr