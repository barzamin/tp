/* 8021C970 002198B0  80 03 00 8C */ lwz r0, 0x8c(r3)
/* 8021C974 002198B4  2C 00 00 00 */ cmpwi r0, 0
/* 8021C978 002198B8  41 82 00 0C */ beq lbl_8021C984
/* 8021C97C 002198BC  38 60 00 00 */ li r3, 0
/* 8021C980 002198C0  4E 80 00 20 */ blr
lbl_8021C984:
/* 8021C984 002198C4  2C 04 00 00 */ cmpwi r4, 0
/* 8021C988 002198C8  40 82 00 0C */ bne lbl_8021C994
/* 8021C98C 002198CC  38 60 00 00 */ li r3, 0
/* 8021C990 002198D0  4E 80 00 20 */ blr
lbl_8021C994:
/* 8021C994 002198D4  3C A0 80 43 */ lis r5, lbl_80430188@ha
/* 8021C998 002198D8  38 A5 01 88 */ addi r5, r5, lbl_80430188@l
/* 8021C99C 002198DC  80 A5 00 1C */ lwz r5, 0x1c(r5)
/* 8021C9A0 002198E0  28 05 00 00 */ cmplwi r5, 0
/* 8021C9A4 002198E4  41 82 00 30 */ beq lbl_8021C9D4
/* 8021C9A8 002198E8  88 05 01 E5 */ lbz r0, 0x1e5(r5)
/* 8021C9AC 002198EC  28 00 00 00 */ cmplwi r0, 0
/* 8021C9B0 002198F0  41 82 00 18 */ beq lbl_8021C9C8
/* 8021C9B4 002198F4  28 00 00 05 */ cmplwi r0, 5
/* 8021C9B8 002198F8  40 82 00 1C */ bne lbl_8021C9D4
/* 8021C9BC 002198FC  A0 05 01 B6 */ lhz r0, 0x1b6(r5)
/* 8021C9C0 00219900  28 00 00 00 */ cmplwi r0, 0
/* 8021C9C4 00219904  40 82 00 10 */ bne lbl_8021C9D4
lbl_8021C9C8:
/* 8021C9C8 00219908  90 83 00 8C */ stw r4, 0x8c(r3)
/* 8021C9CC 0021990C  38 60 00 01 */ li r3, 1
/* 8021C9D0 00219910  4E 80 00 20 */ blr
lbl_8021C9D4:
/* 8021C9D4 00219914  38 60 00 00 */ li r3, 0
/* 8021C9D8 00219918  4E 80 00 20 */ blr
