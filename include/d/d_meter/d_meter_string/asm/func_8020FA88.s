/* 8020FA88 0020C9C8  38 60 00 00 */ li r3, 0
/* 8020FA8C 0020C9CC  2C 04 00 81 */ cmpwi r4, 0x81
/* 8020FA90 0020C9D0  41 80 00 0C */ blt lbl_8020FA9C
/* 8020FA94 0020C9D4  2C 04 00 9F */ cmpwi r4, 0x9f
/* 8020FA98 0020C9D8  40 81 00 14 */ ble lbl_8020FAAC
lbl_8020FA9C:
/* 8020FA9C 0020C9DC  2C 04 00 E0 */ cmpwi r4, 0xe0
/* 8020FAA0 0020C9E0  4D 80 00 20 */ bltlr
/* 8020FAA4 0020C9E4  2C 04 00 FC */ cmpwi r4, 0xfc
/* 8020FAA8 0020C9E8  4D 81 00 20 */ bgtlr
lbl_8020FAAC:
/* 8020FAAC 0020C9EC  38 60 00 01 */ li r3, 1
/* 8020FAB0 0020C9F0  4E 80 00 20 */ blr
