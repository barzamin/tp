/* 8005AD44 00057C84  38 60 00 00 */ li r3, 0
/* 8005AD48 00057C88  7C 66 1B 78 */ mr r6, r3
/* 8005AD4C 00057C8C  3C 80 80 43 */ lis r4, lbl_8042CA54@ha
/* 8005AD50 00057C90  38 A4 CA 54 */ addi r5, r4, lbl_8042CA54@l
/* 8005AD54 00057C94  38 00 00 1E */ li r0, 0x1e
/* 8005AD58 00057C98  7C 09 03 A6 */ mtctr r0
lbl_8005AD5C:
/* 8005AD5C 00057C9C  7C 85 1A 14 */ add r4, r5, r3
/* 8005AD60 00057CA0  90 C4 07 D0 */ stw r6, 0x7d0(r4)
/* 8005AD64 00057CA4  38 63 00 04 */ addi r3, r3, 4
/* 8005AD68 00057CA8  42 00 FF F4 */ bdnz lbl_8005AD5C
/* 8005AD6C 00057CAC  38 60 00 00 */ li r3, 0
/* 8005AD70 00057CB0  38 C0 00 00 */ li r6, 0
/* 8005AD74 00057CB4  3C 80 80 43 */ lis r4, lbl_8042CA54@ha
/* 8005AD78 00057CB8  38 A4 CA 54 */ addi r5, r4, lbl_8042CA54@l
/* 8005AD7C 00057CBC  38 00 00 05 */ li r0, 5
/* 8005AD80 00057CC0  7C 09 03 A6 */ mtctr r0
lbl_8005AD84:
/* 8005AD84 00057CC4  7C 85 1A 14 */ add r4, r5, r3
/* 8005AD88 00057CC8  98 C4 08 48 */ stb r6, 0x848(r4)
/* 8005AD8C 00057CCC  38 63 00 3C */ addi r3, r3, 0x3c
/* 8005AD90 00057CD0  42 00 FF F4 */ bdnz lbl_8005AD84
/* 8005AD94 00057CD4  4E 80 00 20 */ blr
