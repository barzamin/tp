/* 801A8AC8 001A5A08  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A8ACC 001A5A0C  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801A8AD0 001A5A10  D0 23 12 28 */ stfs f1, 0x1228(r3)
/* 801A8AD4 001A5A14  4E 80 00 20 */ blr
