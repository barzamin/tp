/* 80208F1C 00205E5C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80208F20 00205E60  7C 08 02 A6 */ mflr r0
/* 80208F24 00205E64  90 01 00 14 */ stw r0, 0x14(r1)
/* 80208F28 00205E68  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80208F2C 00205E6C  7C 7F 1B 78 */ mr r31, r3
/* 80208F30 00205E70  80 63 00 6C */ lwz r3, 0x6c(r3)
/* 80208F34 00205E74  28 03 00 00 */ cmplwi r3, 0
/* 80208F38 00205E78  41 82 00 68 */ beq lbl_80208FA0
/* 80208F3C 00205E7C  48 04 C8 ED */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80208F40 00205E80  C0 02 AD 48 */ lfs f0, lbl_80454748-_SDA2_BASE_(r2)
/* 80208F44 00205E84  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80208F48 00205E88  41 82 00 58 */ beq lbl_80208FA0
/* 80208F4C 00205E8C  A8 1F 04 AC */ lha r0, 0x4ac(r31)
/* 80208F50 00205E90  2C 00 00 00 */ cmpwi r0, 0
/* 80208F54 00205E94  40 82 00 0C */ bne lbl_80208F60
/* 80208F58 00205E98  38 00 00 1E */ li r0, 0x1e
/* 80208F5C 00205E9C  B0 1F 04 AC */ sth r0, 0x4ac(r31)
lbl_80208F60:
/* 80208F60 00205EA0  80 7F 00 6C */ lwz r3, 0x6c(r31)
/* 80208F64 00205EA4  C0 22 AD 48 */ lfs f1, lbl_80454748-_SDA2_BASE_(r2)
/* 80208F68 00205EA8  48 04 C8 69 */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 80208F6C 00205EAC  38 00 00 00 */ li r0, 0
/* 80208F70 00205EB0  80 7F 00 6C */ lwz r3, 0x6c(r31)
/* 80208F74 00205EB4  B0 03 00 16 */ sth r0, 0x16(r3)
/* 80208F78 00205EB8  80 7F 00 6C */ lwz r3, 0x6c(r31)
/* 80208F7C 00205EBC  48 04 C8 AD */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80208F80 00205EC0  C0 02 AD 48 */ lfs f0, lbl_80454748-_SDA2_BASE_(r2)
/* 80208F84 00205EC4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80208F88 00205EC8  40 82 00 18 */ bne lbl_80208FA0
/* 80208F8C 00205ECC  7F E3 FB 78 */ mr r3, r31
/* 80208F90 00205ED0  38 80 00 14 */ li r4, 0x14
/* 80208F94 00205ED4  48 00 19 B9 */ bl dMeterButton_c_NS_hide_button
/* 80208F98 00205ED8  38 00 00 00 */ li r0, 0
/* 80208F9C 00205EDC  98 1F 04 D4 */ stb r0, 0x4d4(r31)
lbl_80208FA0:
/* 80208FA0 00205EE0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80208FA4 00205EE4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80208FA8 00205EE8  7C 08 03 A6 */ mtlr r0
/* 80208FAC 00205EEC  38 21 00 10 */ addi r1, r1, 0x10
/* 80208FB0 00205EF0  4E 80 00 20 */ blr
