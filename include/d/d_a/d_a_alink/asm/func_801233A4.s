/* 801233A4 001202E4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 801233A8 001202E8  7C 08 02 A6 */ mflr r0
/* 801233AC 001202EC  90 01 00 34 */ stw r0, 0x34(r1)
/* 801233B0 001202F0  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 801233B4 001202F4  7C 7F 1B 78 */ mr r31, r3
/* 801233B8 001202F8  38 61 00 08 */ addi r3, r1, 8
/* 801233BC 001202FC  38 80 00 00 */ li r4, 0
/* 801233C0 00120300  A8 BF 04 E6 */ lha r5, 0x4e6(r31)
/* 801233C4 00120304  A8 DF 04 E8 */ lha r6, 0x4e8(r31)
/* 801233C8 00120308  48 14 40 2D */ bl __ct__5csXyzFsss
/* 801233CC 0012030C  80 7F 06 50 */ lwz r3, 0x650(r31)
/* 801233D0 00120310  80 63 00 84 */ lwz r3, 0x84(r3)
/* 801233D4 00120314  80 63 00 0C */ lwz r3, 0xc(r3)
/* 801233D8 00120318  C0 03 00 3C */ lfs f0, 0x3c(r3)
/* 801233DC 0012031C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 801233E0 00120320  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 801233E4 00120324  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 801233E8 00120328  C0 03 00 5C */ lfs f0, 0x5c(r3)
/* 801233EC 0012032C  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 801233F0 00120330  7F E3 FB 78 */ mr r3, r31
/* 801233F4 00120334  38 9F 32 04 */ addi r4, r31, 0x3204
/* 801233F8 00120338  38 A0 01 F0 */ li r5, 0x1f0
/* 801233FC 0012033C  38 C1 00 10 */ addi r6, r1, 0x10
/* 80123400 00120340  38 E1 00 08 */ addi r7, r1, 8
/* 80123404 00120344  4B FF D1 7D */ bl daAlink_c_NS_setEmitter
/* 80123408 00120348  7F E3 FB 78 */ mr r3, r31
/* 8012340C 0012034C  38 9F 32 08 */ addi r4, r31, 0x3208
/* 80123410 00120350  38 A0 01 F1 */ li r5, 0x1f1
/* 80123414 00120354  38 C1 00 10 */ addi r6, r1, 0x10
/* 80123418 00120358  38 E1 00 08 */ addi r7, r1, 8
/* 8012341C 0012035C  4B FF D1 65 */ bl daAlink_c_NS_setEmitter
/* 80123420 00120360  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 80123424 00120364  80 01 00 34 */ lwz r0, 0x34(r1)
/* 80123428 00120368  7C 08 03 A6 */ mtlr r0
/* 8012342C 0012036C  38 21 00 30 */ addi r1, r1, 0x30
/* 80123430 00120370  4E 80 00 20 */ blr
