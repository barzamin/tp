/* 8011D1F4 0011A134  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8011D1F8 0011A138  7C 08 02 A6 */ mflr r0
/* 8011D1FC 0011A13C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8011D200 0011A140  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8011D204 0011A144  7C 7F 1B 78 */ mr r31, r3
/* 8011D208 0011A148  38 7F 20 48 */ addi r3, r31, 0x2048
/* 8011D20C 0011A14C  48 04 12 C1 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 8011D210 0011A150  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8011D214 0011A154  41 82 00 1C */ beq lbl_8011D230
/* 8011D218 0011A158  38 00 00 01 */ li r0, 1
/* 8011D21C 0011A15C  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8011D220 0011A160  7F E3 FB 78 */ mr r3, r31
/* 8011D224 0011A164  38 80 00 02 */ li r4, 2
/* 8011D228 0011A168  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8011D22C 0011A16C  4B F9 04 F9 */ bl daAlink_c_NS_resetUpperAnime
lbl_8011D230:
/* 8011D230 0011A170  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8011D234 0011A174  2C 00 00 00 */ cmpwi r0, 0
/* 8011D238 0011A178  41 82 00 18 */ beq lbl_8011D250
/* 8011D23C 0011A17C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8011D240 0011A180  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8011D244 0011A184  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 8011D248 0011A188  80 9F 31 84 */ lwz r4, 0x3184(r31)
/* 8011D24C 0011A18C  4B F2 AF 31 */ bl dEvent_manager_c_NS_cutEnd
lbl_8011D250:
/* 8011D250 0011A190  38 60 00 01 */ li r3, 1
/* 8011D254 0011A194  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8011D258 0011A198  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011D25C 0011A19C  7C 08 03 A6 */ mtlr r0
/* 8011D260 0011A1A0  38 21 00 10 */ addi r1, r1, 0x10
/* 8011D264 0011A1A4  4E 80 00 20 */ blr