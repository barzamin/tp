/* 802623EC 0025F32C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802623F0 0025F330  7C 08 02 A6 */ mflr r0
/* 802623F4 0025F334  90 01 00 14 */ stw r0, 0x14(r1)
/* 802623F8 0025F338  A0 03 00 00 */ lhz r0, 0(r3)
/* 802623FC 0025F33C  28 00 00 00 */ cmplwi r0, 0
/* 80262400 0025F340  40 82 00 18 */ bne lbl_80262418
/* 80262404 0025F344  81 83 00 0C */ lwz r12, 0xc(r3)
/* 80262408 0025F348  81 8C 00 24 */ lwz r12, 0x24(r12)
/* 8026240C 0025F34C  7D 89 03 A6 */ mtctr r12
/* 80262410 0025F350  4E 80 04 21 */ bctrl
/* 80262414 0025F354  48 00 00 08 */ b lbl_8026241C
lbl_80262418:
/* 80262418 0025F358  38 60 00 01 */ li r3, 1
lbl_8026241C:
/* 8026241C 0025F35C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80262420 0025F360  7C 08 03 A6 */ mtlr r0
/* 80262424 0025F364  38 21 00 10 */ addi r1, r1, 0x10
/* 80262428 0025F368  4E 80 00 20 */ blr