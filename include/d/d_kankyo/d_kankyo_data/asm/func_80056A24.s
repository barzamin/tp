/* 80056A24 00053964  38 80 00 00 */ li r4, 0
/* 80056A28 00053968  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 80056A2C 0005396C  1C A0 00 14 */ mulli r5, r0, 0x14
/* 80056A30 00053970  3C 60 80 3B */ lis r3, lbl_803A9A94@ha
/* 80056A34 00053974  38 03 9A 94 */ addi r0, r3, lbl_803A9A94@l
/* 80056A38 00053978  7C C0 2A 14 */ add r6, r0, r5
/* 80056A3C 0005397C  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80056A40 00053980  38 A3 CA 54 */ addi r5, r3, lbl_8042CA54@l
/* 80056A44 00053984  38 00 00 0A */ li r0, 0xa
/* 80056A48 00053988  7C 09 03 A6 */ mtctr r0
lbl_80056A4C:
/* 80056A4C 0005398C  7C 06 22 2E */ lhzx r0, r6, r4
/* 80056A50 00053990  7C 65 22 14 */ add r3, r5, r4
/* 80056A54 00053994  B0 03 10 AC */ sth r0, 0x10ac(r3)
/* 80056A58 00053998  38 84 00 02 */ addi r4, r4, 2
/* 80056A5C 0005399C  42 00 FF F0 */ bdnz lbl_80056A4C
/* 80056A60 000539A0  4E 80 00 20 */ blr
