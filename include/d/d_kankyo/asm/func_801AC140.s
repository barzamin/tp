/* 801AC140 001A9080  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801AC144 001A9084  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801AC148 001A9088  88 63 0E 6E */ lbz r3, 0xe6e(r3)
/* 801AC14C 001A908C  28 03 00 FF */ cmplwi r3, 0xff
/* 801AC150 001A9090  40 82 00 0C */ bne lbl_801AC15C
/* 801AC154 001A9094  38 60 FF FF */ li r3, -1
/* 801AC158 001A9098  4E 80 00 20 */ blr
lbl_801AC15C:
/* 801AC15C 001A909C  30 03 FF FF */ addic r0, r3, -1
/* 801AC160 001A90A0  7C 60 19 10 */ subfe r3, r0, r3
/* 801AC164 001A90A4  4E 80 00 20 */ blr
