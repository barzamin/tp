/* 8019D5BC 0019A4FC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8019D5C0 0019A500  7C 60 07 34 */ extsh r0, r3
/* 8019D5C4 0019A504  C8 42 A2 30 */ lfd f2, lbl_80453C30-_SDA2_BASE_(r2)
/* 8019D5C8 0019A508  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8019D5CC 0019A50C  90 01 00 0C */ stw r0, 0xc(r1)
/* 8019D5D0 0019A510  3C 00 43 30 */ lis r0, 0x4330
/* 8019D5D4 0019A514  90 01 00 08 */ stw r0, 8(r1)
/* 8019D5D8 0019A518  C8 01 00 08 */ lfd f0, 8(r1)
/* 8019D5DC 0019A51C  EC 00 10 28 */ fsubs f0, f0, f2
/* 8019D5E0 0019A520  EC 00 00 72 */ fmuls f0, f0, f1
/* 8019D5E4 0019A524  FC 00 00 1E */ fctiwz f0, f0
/* 8019D5E8 0019A528  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 8019D5EC 0019A52C  80 61 00 14 */ lwz r3, 0x14(r1)
/* 8019D5F0 0019A530  7C 60 07 35 */ extsh. r0, r3
/* 8019D5F4 0019A534  40 80 00 0C */ bge lbl_8019D600
/* 8019D5F8 0019A538  38 60 00 00 */ li r3, 0
/* 8019D5FC 0019A53C  48 00 00 14 */ b lbl_8019D610
lbl_8019D600:
/* 8019D600 0019A540  7C 60 07 34 */ extsh r0, r3
/* 8019D604 0019A544  2C 00 00 FF */ cmpwi r0, 0xff
/* 8019D608 0019A548  40 81 00 08 */ ble lbl_8019D610
/* 8019D60C 0019A54C  38 60 00 FF */ li r3, 0xff
lbl_8019D610:
/* 8019D610 0019A550  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 8019D614 0019A554  38 21 00 20 */ addi r1, r1, 0x20
/* 8019D618 0019A558  4E 80 00 20 */ blr
