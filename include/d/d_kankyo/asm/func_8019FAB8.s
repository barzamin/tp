/* 8019FAB8 0019C9F8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8019FABC 0019C9FC  7C 08 02 A6 */ mflr r0
/* 8019FAC0 0019CA00  90 01 00 14 */ stw r0, 0x14(r1)
/* 8019FAC4 0019CA04  4B FF FF 4D */ bl dKy_getdaytime_hour
/* 8019FAC8 0019CA08  2C 03 00 06 */ cmpwi r3, 6
/* 8019FACC 0019CA0C  41 80 00 14 */ blt lbl_8019FAE0
/* 8019FAD0 0019CA10  2C 03 00 13 */ cmpwi r3, 0x13
/* 8019FAD4 0019CA14  40 80 00 0C */ bge lbl_8019FAE0
/* 8019FAD8 0019CA18  38 60 00 00 */ li r3, 0
/* 8019FADC 0019CA1C  48 00 00 08 */ b lbl_8019FAE4
lbl_8019FAE0:
/* 8019FAE0 0019CA20  38 60 00 01 */ li r3, 1
lbl_8019FAE4:
/* 8019FAE4 0019CA24  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8019FAE8 0019CA28  7C 08 03 A6 */ mtlr r0
/* 8019FAEC 0019CA2C  38 21 00 10 */ addi r1, r1, 0x10
/* 8019FAF0 0019CA30  4E 80 00 20 */ blr