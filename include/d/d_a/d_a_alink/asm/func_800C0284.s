/* 800C0284 000BD1C4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C0288 000BD1C8  7C 08 02 A6 */ mflr r0
/* 800C028C 000BD1CC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C0290 000BD1D0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C0294 000BD1D4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C0298 000BD1D8  85 83 4E 20 */ lwzu r12, 0x4e20(r3)
/* 800C029C 000BD1DC  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 800C02A0 000BD1E0  7D 89 03 A6 */ mtctr r12
/* 800C02A4 000BD1E4  4E 80 04 21 */ bctrl
/* 800C02A8 000BD1E8  80 03 00 0C */ lwz r0, 0xc(r3)
/* 800C02AC 000BD1EC  54 00 87 7E */ rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 800C02B0 000BD1F0  7C 00 00 34 */ cntlzw r0, r0
/* 800C02B4 000BD1F4  54 03 D9 7E */ srwi r3, r0, 5
/* 800C02B8 000BD1F8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C02BC 000BD1FC  7C 08 03 A6 */ mtlr r0
/* 800C02C0 000BD200  38 21 00 10 */ addi r1, r1, 0x10
/* 800C02C4 000BD204  4E 80 00 20 */ blr