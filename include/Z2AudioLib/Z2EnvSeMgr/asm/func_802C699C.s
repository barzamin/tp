/* 802C699C 002C38DC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C69A0 002C38E0  7C 08 02 A6 */ mflr r0
/* 802C69A4 002C38E4  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C69A8 002C38E8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802C69AC 002C38EC  7C 7F 1B 78 */ mr r31, r3
/* 802C69B0 002C38F0  C0 22 C3 74 */ lfs f1, lbl_80455D74-_SDA2_BASE_(r2)
/* 802C69B4 002C38F4  C0 03 00 60 */ lfs f0, 0x60(r3)
/* 802C69B8 002C38F8  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 802C69BC 002C38FC  40 82 00 3C */ bne lbl_802C69F8
/* 802C69C0 002C3900  38 00 00 00 */ li r0, 0
/* 802C69C4 002C3904  98 1F 00 38 */ stb r0, 0x38(r31)
/* 802C69C8 002C3908  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C69CC 002C390C  D0 1F 00 48 */ stfs f0, 0x48(r31)
/* 802C69D0 002C3910  D0 1F 00 4C */ stfs f0, 0x4c(r31)
/* 802C69D4 002C3914  D0 1F 00 50 */ stfs f0, 0x50(r31)
/* 802C69D8 002C3918  C0 02 C3 48 */ lfs f0, lbl_80455D48-_SDA2_BASE_(r2)
/* 802C69DC 002C391C  D0 1F 00 54 */ stfs f0, 0x54(r31)
/* 802C69E0 002C3920  D0 1F 00 58 */ stfs f0, 0x58(r31)
/* 802C69E4 002C3924  D0 1F 00 5C */ stfs f0, 0x5c(r31)
/* 802C69E8 002C3928  98 1F 00 39 */ stb r0, 0x39(r31)
/* 802C69EC 002C392C  D0 1F 00 3C */ stfs f0, 0x3c(r31)
/* 802C69F0 002C3930  D0 1F 00 40 */ stfs f0, 0x40(r31)
/* 802C69F4 002C3934  D0 1F 00 44 */ stfs f0, 0x44(r31)
lbl_802C69F8:
/* 802C69F8 002C3938  38 00 00 00 */ li r0, 0
/* 802C69FC 002C393C  98 1F 01 40 */ stb r0, 0x140(r31)
/* 802C6A00 002C3940  98 1F 01 60 */ stb r0, 0x160(r31)
/* 802C6A04 002C3944  98 1F 01 88 */ stb r0, 0x188(r31)
/* 802C6A08 002C3948  98 1F 01 E0 */ stb r0, 0x1e0(r31)
/* 802C6A0C 002C394C  98 1F 02 14 */ stb r0, 0x214(r31)
/* 802C6A10 002C3950  98 1F 02 48 */ stb r0, 0x248(r31)
/* 802C6A14 002C3954  98 1F 02 7C */ stb r0, 0x27c(r31)
/* 802C6A18 002C3958  98 1F 02 B0 */ stb r0, 0x2b0(r31)
/* 802C6A1C 002C395C  98 1F 01 B8 */ stb r0, 0x1b8(r31)
/* 802C6A20 002C3960  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C6A24 002C3964  D0 1F 01 AC */ stfs f0, 0x1ac(r31)
/* 802C6A28 002C3968  D0 1F 01 B0 */ stfs f0, 0x1b0(r31)
/* 802C6A2C 002C396C  D0 1F 01 B4 */ stfs f0, 0x1b4(r31)
/* 802C6A30 002C3970  D0 1F 01 E4 */ stfs f0, 0x1e4(r31)
/* 802C6A34 002C3974  D0 1F 01 E8 */ stfs f0, 0x1e8(r31)
/* 802C6A38 002C3978  D0 1F 01 EC */ stfs f0, 0x1ec(r31)
/* 802C6A3C 002C397C  D0 1F 02 18 */ stfs f0, 0x218(r31)
/* 802C6A40 002C3980  D0 1F 02 1C */ stfs f0, 0x21c(r31)
/* 802C6A44 002C3984  D0 1F 02 20 */ stfs f0, 0x220(r31)
/* 802C6A48 002C3988  D0 1F 02 4C */ stfs f0, 0x24c(r31)
/* 802C6A4C 002C398C  D0 1F 02 50 */ stfs f0, 0x250(r31)
/* 802C6A50 002C3990  D0 1F 02 54 */ stfs f0, 0x254(r31)
/* 802C6A54 002C3994  D0 1F 02 80 */ stfs f0, 0x280(r31)
/* 802C6A58 002C3998  D0 1F 02 84 */ stfs f0, 0x284(r31)
/* 802C6A5C 002C399C  D0 1F 02 88 */ stfs f0, 0x288(r31)
/* 802C6A60 002C39A0  D0 1F 02 B4 */ stfs f0, 0x2b4(r31)
/* 802C6A64 002C39A4  D0 1F 02 B8 */ stfs f0, 0x2b8(r31)
/* 802C6A68 002C39A8  D0 1F 02 BC */ stfs f0, 0x2bc(r31)
/* 802C6A6C 002C39AC  38 7F 01 64 */ addi r3, r31, 0x164
/* 802C6A70 002C39B0  4B FE 82 4D */ bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A74 002C39B4  38 7F 01 BC */ addi r3, r31, 0x1bc
/* 802C6A78 002C39B8  4B FE 82 45 */ bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A7C 002C39BC  38 7F 01 F0 */ addi r3, r31, 0x1f0
/* 802C6A80 002C39C0  4B FE 82 3D */ bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A84 002C39C4  38 7F 02 24 */ addi r3, r31, 0x224
/* 802C6A88 002C39C8  4B FE 82 35 */ bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A8C 002C39CC  38 7F 02 58 */ addi r3, r31, 0x258
/* 802C6A90 002C39D0  4B FE 82 2D */ bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A94 002C39D4  38 7F 02 8C */ addi r3, r31, 0x28c
/* 802C6A98 002C39D8  4B FE 82 25 */ bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A9C 002C39DC  38 7F 02 C0 */ addi r3, r31, 0x2c0
/* 802C6AA0 002C39E0  4B FE 82 1D */ bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6AA4 002C39E4  38 7F 00 64 */ addi r3, r31, 0x64
/* 802C6AA8 002C39E8  4B FE 82 15 */ bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6AAC 002C39EC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802C6AB0 002C39F0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C6AB4 002C39F4  7C 08 03 A6 */ mtlr r0
/* 802C6AB8 002C39F8  38 21 00 10 */ addi r1, r1, 0x10
/* 802C6ABC 002C39FC  4E 80 00 20 */ blr