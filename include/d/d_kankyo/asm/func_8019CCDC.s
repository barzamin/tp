/* 8019CCDC 00199C1C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8019CCE0 00199C20  7C 08 02 A6 */ mflr r0
/* 8019CCE4 00199C24  90 01 00 14 */ stw r0, 0x14(r1)
/* 8019CCE8 00199C28  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8019CCEC 00199C2C  93 C1 00 08 */ stw r30, 8(r1)
/* 8019CCF0 00199C30  7C 7E 1B 78 */ mr r30, r3
/* 8019CCF4 00199C34  7C 9F 23 78 */ mr r31, r4
/* 8019CCF8 00199C38  4B FF F6 AD */ bl dKy_sense_pat_get
/* 8019CCFC 00199C3C  28 03 00 0F */ cmplwi r3, 0xf
/* 8019CD00 00199C40  41 81 01 44 */ bgt lbl_8019CE44
/* 8019CD04 00199C44  3C 80 80 3C */ lis r4, lbl_803BBEFC@ha
/* 8019CD08 00199C48  38 84 BE FC */ addi r4, r4, lbl_803BBEFC@l
/* 8019CD0C 00199C4C  54 60 10 3A */ slwi r0, r3, 2
/* 8019CD10 00199C50  7C 04 00 2E */ lwzx r0, r4, r0
/* 8019CD14 00199C54  7C 09 03 A6 */ mtctr r0
/* 8019CD18 00199C58  4E 80 04 20 */ bctr
/* 8019CD1C 00199C5C  C0 02 A1 C0 */ lfs f0, lbl_80453BC0-_SDA2_BASE_(r2)
/* 8019CD20 00199C60  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CD24 00199C64  C0 02 A1 C4 */ lfs f0, lbl_80453BC4-_SDA2_BASE_(r2)
/* 8019CD28 00199C68  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CD2C 00199C6C  48 00 01 18 */ b lbl_8019CE44
/* 8019CD30 00199C70  C0 02 A1 C8 */ lfs f0, lbl_80453BC8-_SDA2_BASE_(r2)
/* 8019CD34 00199C74  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CD38 00199C78  C0 02 A1 CC */ lfs f0, lbl_80453BCC-_SDA2_BASE_(r2)
/* 8019CD3C 00199C7C  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CD40 00199C80  48 00 01 04 */ b lbl_8019CE44
/* 8019CD44 00199C84  C0 02 A1 D0 */ lfs f0, lbl_80453BD0-_SDA2_BASE_(r2)
/* 8019CD48 00199C88  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CD4C 00199C8C  C0 02 A1 D4 */ lfs f0, lbl_80453BD4-_SDA2_BASE_(r2)
/* 8019CD50 00199C90  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CD54 00199C94  48 00 00 F0 */ b lbl_8019CE44
/* 8019CD58 00199C98  C0 02 A1 D8 */ lfs f0, lbl_80453BD8-_SDA2_BASE_(r2)
/* 8019CD5C 00199C9C  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CD60 00199CA0  C0 02 A1 DC */ lfs f0, lbl_80453BDC-_SDA2_BASE_(r2)
/* 8019CD64 00199CA4  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CD68 00199CA8  48 00 00 DC */ b lbl_8019CE44
/* 8019CD6C 00199CAC  C0 02 A1 E0 */ lfs f0, lbl_80453BE0-_SDA2_BASE_(r2)
/* 8019CD70 00199CB0  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CD74 00199CB4  C0 02 A1 E4 */ lfs f0, lbl_80453BE4-_SDA2_BASE_(r2)
/* 8019CD78 00199CB8  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CD7C 00199CBC  48 00 00 C8 */ b lbl_8019CE44
/* 8019CD80 00199CC0  C0 02 A1 E0 */ lfs f0, lbl_80453BE0-_SDA2_BASE_(r2)
/* 8019CD84 00199CC4  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CD88 00199CC8  C0 02 A1 E8 */ lfs f0, lbl_80453BE8-_SDA2_BASE_(r2)
/* 8019CD8C 00199CCC  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CD90 00199CD0  48 00 00 B4 */ b lbl_8019CE44
/* 8019CD94 00199CD4  C0 02 A1 C0 */ lfs f0, lbl_80453BC0-_SDA2_BASE_(r2)
/* 8019CD98 00199CD8  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CD9C 00199CDC  C0 02 A1 C4 */ lfs f0, lbl_80453BC4-_SDA2_BASE_(r2)
/* 8019CDA0 00199CE0  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CDA4 00199CE4  48 00 00 A0 */ b lbl_8019CE44
/* 8019CDA8 00199CE8  C0 02 A1 C0 */ lfs f0, lbl_80453BC0-_SDA2_BASE_(r2)
/* 8019CDAC 00199CEC  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CDB0 00199CF0  C0 02 A1 C4 */ lfs f0, lbl_80453BC4-_SDA2_BASE_(r2)
/* 8019CDB4 00199CF4  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CDB8 00199CF8  48 00 00 8C */ b lbl_8019CE44
/* 8019CDBC 00199CFC  C0 02 A1 EC */ lfs f0, lbl_80453BEC-_SDA2_BASE_(r2)
/* 8019CDC0 00199D00  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CDC4 00199D04  C0 02 A1 F0 */ lfs f0, lbl_80453BF0-_SDA2_BASE_(r2)
/* 8019CDC8 00199D08  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CDCC 00199D0C  48 00 00 78 */ b lbl_8019CE44
/* 8019CDD0 00199D10  C0 02 A1 F4 */ lfs f0, lbl_80453BF4-_SDA2_BASE_(r2)
/* 8019CDD4 00199D14  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CDD8 00199D18  C0 02 A1 F8 */ lfs f0, lbl_80453BF8-_SDA2_BASE_(r2)
/* 8019CDDC 00199D1C  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CDE0 00199D20  48 00 00 64 */ b lbl_8019CE44
/* 8019CDE4 00199D24  C0 02 A1 C0 */ lfs f0, lbl_80453BC0-_SDA2_BASE_(r2)
/* 8019CDE8 00199D28  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CDEC 00199D2C  C0 02 A1 FC */ lfs f0, lbl_80453BFC-_SDA2_BASE_(r2)
/* 8019CDF0 00199D30  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CDF4 00199D34  48 00 00 50 */ b lbl_8019CE44
/* 8019CDF8 00199D38  C0 02 A1 D8 */ lfs f0, lbl_80453BD8-_SDA2_BASE_(r2)
/* 8019CDFC 00199D3C  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CE00 00199D40  C0 02 A2 00 */ lfs f0, lbl_80453C00-_SDA2_BASE_(r2)
/* 8019CE04 00199D44  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CE08 00199D48  48 00 00 3C */ b lbl_8019CE44
/* 8019CE0C 00199D4C  C0 02 A1 E0 */ lfs f0, lbl_80453BE0-_SDA2_BASE_(r2)
/* 8019CE10 00199D50  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CE14 00199D54  C0 02 A2 04 */ lfs f0, lbl_80453C04-_SDA2_BASE_(r2)
/* 8019CE18 00199D58  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CE1C 00199D5C  48 00 00 28 */ b lbl_8019CE44
/* 8019CE20 00199D60  C0 02 A2 00 */ lfs f0, lbl_80453C00-_SDA2_BASE_(r2)
/* 8019CE24 00199D64  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CE28 00199D68  C0 02 A1 F0 */ lfs f0, lbl_80453BF0-_SDA2_BASE_(r2)
/* 8019CE2C 00199D6C  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8019CE30 00199D70  48 00 00 14 */ b lbl_8019CE44
/* 8019CE34 00199D74  C0 02 A1 E0 */ lfs f0, lbl_80453BE0-_SDA2_BASE_(r2)
/* 8019CE38 00199D78  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8019CE3C 00199D7C  C0 02 A2 08 */ lfs f0, lbl_80453C08-_SDA2_BASE_(r2)
/* 8019CE40 00199D80  D0 1F 00 00 */ stfs f0, 0(r31)
lbl_8019CE44:
/* 8019CE44 00199D84  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8019CE48 00199D88  83 C1 00 08 */ lwz r30, 8(r1)
/* 8019CE4C 00199D8C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8019CE50 00199D90  7C 08 03 A6 */ mtlr r0
/* 8019CE54 00199D94  38 21 00 10 */ addi r1, r1, 0x10
/* 8019CE58 00199D98  4E 80 00 20 */ blr
