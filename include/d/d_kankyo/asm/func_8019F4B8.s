/* 8019F4B8 0019C3F8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8019F4BC 0019C3FC  7C 08 02 A6 */ mflr r0
/* 8019F4C0 0019C400  90 01 00 14 */ stw r0, 0x14(r1)
/* 8019F4C4 0019C404  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8019F4C8 0019C408  7C 7F 1B 79 */ or. r31, r3, r3
/* 8019F4CC 0019C40C  41 82 00 10 */ beq lbl_8019F4DC
/* 8019F4D0 0019C410  7C 80 07 35 */ extsh. r0, r4
/* 8019F4D4 0019C414  40 81 00 08 */ ble lbl_8019F4DC
/* 8019F4D8 0019C418  48 12 F8 65 */ bl __dl__FPv
lbl_8019F4DC:
/* 8019F4DC 0019C41C  7F E3 FB 78 */ mr r3, r31
/* 8019F4E0 0019C420  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8019F4E4 0019C424  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8019F4E8 0019C428  7C 08 03 A6 */ mtlr r0
/* 8019F4EC 0019C42C  38 21 00 10 */ addi r1, r1, 0x10
/* 8019F4F0 0019C430  4E 80 00 20 */ blr