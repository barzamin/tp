/* 8011EBDC 0011BB1C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8011EBE0 0011BB20  7C 08 02 A6 */ mflr r0
/* 8011EBE4 0011BB24  90 01 00 14 */ stw r0, 0x14(r1)
/* 8011EBE8 0011BB28  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8011EBEC 0011BB2C  7C 7F 1B 78 */ mr r31, r3
/* 8011EBF0 0011BB30  38 80 00 E8 */ li r4, 0xe8
/* 8011EBF4 0011BB34  4B FA 41 B1 */ bl daAlink_c_NS_commonProcInitNotSameProc
/* 8011EBF8 0011BB38  2C 03 00 00 */ cmpwi r3, 0
/* 8011EBFC 0011BB3C  40 82 00 0C */ bne lbl_8011EC08
/* 8011EC00 0011BB40  38 60 00 00 */ li r3, 0
/* 8011EC04 0011BB44  48 00 00 48 */ b lbl_8011EC4C
lbl_8011EC08:
/* 8011EC08 0011BB48  7F E3 FB 78 */ mr r3, r31
/* 8011EC0C 0011BB4C  38 80 01 8F */ li r4, 0x18f
/* 8011EC10 0011BB50  4B F8 E3 71 */ bl daAlink_c_NS_setSingleAnimeBase
/* 8011EC14 0011BB54  7F E3 FB 78 */ mr r3, r31
/* 8011EC18 0011BB58  3C 80 00 01 */ lis r4, 0x000100A3@ha
/* 8011EC1C 0011BB5C  38 84 00 A3 */ addi r4, r4, 0x000100A3@l
/* 8011EC20 0011BB60  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8011EC24 0011BB64  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8011EC28 0011BB68  7D 89 03 A6 */ mtctr r12
/* 8011EC2C 0011BB6C  4E 80 04 21 */ bctrl
/* 8011EC30 0011BB70  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011EC34 0011BB74  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8011EC38 0011BB78  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8011EC3C 0011BB7C  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8011EC40 0011BB80  38 00 00 00 */ li r0, 0
/* 8011EC44 0011BB84  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8011EC48 0011BB88  38 60 00 01 */ li r3, 1
lbl_8011EC4C:
/* 8011EC4C 0011BB8C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8011EC50 0011BB90  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011EC54 0011BB94  7C 08 03 A6 */ mtlr r0
/* 8011EC58 0011BB98  38 21 00 10 */ addi r1, r1, 0x10
/* 8011EC5C 0011BB9C  4E 80 00 20 */ blr