/* 801617B0 0015E6F0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801617B4 0015E6F4  7C 08 02 A6 */ mflr r0
/* 801617B8 0015E6F8  90 01 00 14 */ stw r0, 0x14(r1)
/* 801617BC 0015E6FC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801617C0 0015E700  93 C1 00 08 */ stw r30, 8(r1)
/* 801617C4 0015E704  7C 7E 1B 78 */ mr r30, r3
/* 801617C8 0015E708  80 63 0A F4 */ lwz r3, 0xaf4(r3)
/* 801617CC 0015E70C  80 1E 06 7C */ lwz r0, 0x67c(r30)
/* 801617D0 0015E710  1C 00 00 78 */ mulli r0, r0, 0x78
/* 801617D4 0015E714  7C 63 02 14 */ add r3, r3, r0
/* 801617D8 0015E718  A3 E3 00 04 */ lhz r31, 4(r3)
/* 801617DC 0015E71C  80 1E 06 0C */ lwz r0, 0x60c(r30)
/* 801617E0 0015E720  54 00 01 CF */ rlwinm. r0, r0, 0, 7, 7
/* 801617E4 0015E724  41 82 00 14 */ beq lbl_801617F8
/* 801617E8 0015E728  C0 22 9C A0 */ lfs f1, lbl_804536A0-_SDA2_BASE_(r2)
/* 801617EC 0015E72C  FC 40 08 90 */ fmr f2, f1
/* 801617F0 0015E730  FC 60 08 90 */ fmr f3, f1
/* 801617F4 0015E734  48 00 00 24 */ b lbl_80161818
lbl_801617F8:
/* 801617F8 0015E738  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 801617FC 0015E73C  54 04 30 32 */ slwi r4, r0, 6
/* 80161800 0015E740  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 80161804 0015E744  38 03 D2 E8 */ addi r0, r3, m_cpadInfo@l
/* 80161808 0015E748  7C 60 22 14 */ add r3, r0, r4
/* 8016180C 0015E74C  C0 23 00 00 */ lfs f1, 0(r3)
/* 80161810 0015E750  C0 43 00 04 */ lfs f2, 4(r3)
/* 80161814 0015E754  C0 63 00 08 */ lfs f3, 8(r3)
lbl_80161818:
/* 80161818 0015E758  C0 1E 01 BC */ lfs f0, 0x1bc(r30)
/* 8016181C 0015E75C  EC 01 00 28 */ fsubs f0, f1, f0
/* 80161820 0015E760  D0 1E 01 C8 */ stfs f0, 0x1c8(r30)
/* 80161824 0015E764  C0 1E 01 C0 */ lfs f0, 0x1c0(r30)
/* 80161828 0015E768  EC 02 00 28 */ fsubs f0, f2, f0
/* 8016182C 0015E76C  D0 1E 01 CC */ stfs f0, 0x1cc(r30)
/* 80161830 0015E770  C0 1E 01 C4 */ lfs f0, 0x1c4(r30)
/* 80161834 0015E774  EC 03 00 28 */ fsubs f0, f3, f0
/* 80161838 0015E778  D0 1E 01 D0 */ stfs f0, 0x1d0(r30)
/* 8016183C 0015E77C  D0 3E 01 BC */ stfs f1, 0x1bc(r30)
/* 80161840 0015E780  D0 5E 01 C0 */ stfs f2, 0x1c0(r30)
/* 80161844 0015E784  D0 7E 01 C4 */ stfs f3, 0x1c4(r30)
/* 80161848 0015E788  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 8016184C 0015E78C  54 04 30 32 */ slwi r4, r0, 6
/* 80161850 0015E790  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 80161854 0015E794  38 03 D2 E8 */ addi r0, r3, m_cpadInfo@l
/* 80161858 0015E798  7C 60 22 14 */ add r3, r0, r4
/* 8016185C 0015E79C  A8 83 00 0C */ lha r4, 0xc(r3)
/* 80161860 0015E7A0  38 7E 01 D4 */ addi r3, r30, 0x1d4
/* 80161864 0015E7A4  48 10 F7 A1 */ bl cSAngle_NS_Val_X2_
/* 80161868 0015E7A8  80 1E 06 0C */ lwz r0, 0x60c(r30)
/* 8016186C 0015E7AC  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 80161870 0015E7B0  41 82 00 14 */ beq lbl_80161884
/* 80161874 0015E7B4  C0 22 9C A0 */ lfs f1, lbl_804536A0-_SDA2_BASE_(r2)
/* 80161878 0015E7B8  FC 40 08 90 */ fmr f2, f1
/* 8016187C 0015E7BC  FC 60 08 90 */ fmr f3, f1
/* 80161880 0015E7C0  48 00 00 24 */ b lbl_801618A4
lbl_80161884:
/* 80161884 0015E7C4  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 80161888 0015E7C8  54 04 30 32 */ slwi r4, r0, 6
/* 8016188C 0015E7CC  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 80161890 0015E7D0  38 03 D2 E8 */ addi r0, r3, m_cpadInfo@l
/* 80161894 0015E7D4  7C 60 22 14 */ add r3, r0, r4
/* 80161898 0015E7D8  C0 23 00 10 */ lfs f1, 0x10(r3)
/* 8016189C 0015E7DC  C0 43 00 14 */ lfs f2, 0x14(r3)
/* 801618A0 0015E7E0  C0 63 00 18 */ lfs f3, 0x18(r3)
lbl_801618A4:
/* 801618A4 0015E7E4  C0 1E 01 D8 */ lfs f0, 0x1d8(r30)
/* 801618A8 0015E7E8  EC 01 00 28 */ fsubs f0, f1, f0
/* 801618AC 0015E7EC  D0 1E 01 E4 */ stfs f0, 0x1e4(r30)
/* 801618B0 0015E7F0  C0 1E 01 DC */ lfs f0, 0x1dc(r30)
/* 801618B4 0015E7F4  EC 02 00 28 */ fsubs f0, f2, f0
/* 801618B8 0015E7F8  D0 1E 01 E8 */ stfs f0, 0x1e8(r30)
/* 801618BC 0015E7FC  C0 1E 01 E0 */ lfs f0, 0x1e0(r30)
/* 801618C0 0015E800  EC 03 00 28 */ fsubs f0, f3, f0
/* 801618C4 0015E804  D0 1E 01 EC */ stfs f0, 0x1ec(r30)
/* 801618C8 0015E808  D0 3E 01 D8 */ stfs f1, 0x1d8(r30)
/* 801618CC 0015E80C  D0 5E 01 DC */ stfs f2, 0x1dc(r30)
/* 801618D0 0015E810  D0 7E 01 E0 */ stfs f3, 0x1e0(r30)
/* 801618D4 0015E814  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 801618D8 0015E818  54 04 30 32 */ slwi r4, r0, 6
/* 801618DC 0015E81C  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 801618E0 0015E820  38 03 D2 E8 */ addi r0, r3, m_cpadInfo@l
/* 801618E4 0015E824  7C 60 22 14 */ add r3, r0, r4
/* 801618E8 0015E828  A8 83 00 1C */ lha r4, 0x1c(r3)
/* 801618EC 0015E82C  38 7E 01 F0 */ addi r3, r30, 0x1f0
/* 801618F0 0015E830  48 10 F7 15 */ bl cSAngle_NS_Val_X2_
/* 801618F4 0015E834  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 801618F8 0015E838  54 00 30 32 */ slwi r0, r0, 6
/* 801618FC 0015E83C  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 80161900 0015E840  38 83 D2 E8 */ addi r4, r3, m_cpadInfo@l
/* 80161904 0015E844  7C 64 02 14 */ add r3, r4, r0
/* 80161908 0015E848  C0 23 00 28 */ lfs f1, 0x28(r3)
/* 8016190C 0015E84C  C0 1E 02 00 */ lfs f0, 0x200(r30)
/* 80161910 0015E850  EC 00 08 28 */ fsubs f0, f0, f1
/* 80161914 0015E854  D0 1E 02 04 */ stfs f0, 0x204(r30)
/* 80161918 0015E858  D0 3E 02 00 */ stfs f1, 0x200(r30)
/* 8016191C 0015E85C  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 80161920 0015E860  54 00 30 32 */ slwi r0, r0, 6
/* 80161924 0015E864  7C 64 02 14 */ add r3, r4, r0
/* 80161928 0015E868  88 63 00 39 */ lbz r3, 0x39(r3)
/* 8016192C 0015E86C  30 03 FF FF */ addic r0, r3, -1
/* 80161930 0015E870  7C 00 19 10 */ subfe r0, r0, r3
/* 80161934 0015E874  98 1E 02 08 */ stb r0, 0x208(r30)
/* 80161938 0015E878  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 8016193C 0015E87C  54 00 30 32 */ slwi r0, r0, 6
/* 80161940 0015E880  7C 64 02 14 */ add r3, r4, r0
/* 80161944 0015E884  88 63 00 3A */ lbz r3, 0x3a(r3)
/* 80161948 0015E888  30 03 FF FF */ addic r0, r3, -1
/* 8016194C 0015E88C  7C 00 19 10 */ subfe r0, r0, r3
/* 80161950 0015E890  98 1E 02 09 */ stb r0, 0x209(r30)
/* 80161954 0015E894  C0 3E 02 00 */ lfs f1, 0x200(r30)
/* 80161958 0015E898  C0 1E 0A 2C */ lfs f0, 0xa2c(r30)
/* 8016195C 0015E89C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80161960 0015E8A0  40 81 00 30 */ ble lbl_80161990
/* 80161964 0015E8A4  88 1E 02 0A */ lbz r0, 0x20a(r30)
/* 80161968 0015E8A8  28 00 00 00 */ cmplwi r0, 0
/* 8016196C 0015E8AC  40 82 00 10 */ bne lbl_8016197C
/* 80161970 0015E8B0  38 00 00 01 */ li r0, 1
/* 80161974 0015E8B4  98 1E 02 0B */ stb r0, 0x20b(r30)
/* 80161978 0015E8B8  48 00 00 0C */ b lbl_80161984
lbl_8016197C:
/* 8016197C 0015E8BC  38 00 00 00 */ li r0, 0
/* 80161980 0015E8C0  98 1E 02 0B */ stb r0, 0x20b(r30)
lbl_80161984:
/* 80161984 0015E8C4  38 00 00 01 */ li r0, 1
/* 80161988 0015E8C8  98 1E 02 0A */ stb r0, 0x20a(r30)
/* 8016198C 0015E8CC  48 00 00 10 */ b lbl_8016199C
lbl_80161990:
/* 80161990 0015E8D0  38 00 00 00 */ li r0, 0
/* 80161994 0015E8D4  98 1E 02 0B */ stb r0, 0x20b(r30)
/* 80161998 0015E8D8  98 1E 02 0A */ stb r0, 0x20a(r30)
lbl_8016199C:
/* 8016199C 0015E8DC  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 801619A0 0015E8E0  54 00 30 32 */ slwi r0, r0, 6
/* 801619A4 0015E8E4  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 801619A8 0015E8E8  38 83 D2 E8 */ addi r4, r3, m_cpadInfo@l
/* 801619AC 0015E8EC  7C 64 02 14 */ add r3, r4, r0
/* 801619B0 0015E8F0  C0 23 00 2C */ lfs f1, 0x2c(r3)
/* 801619B4 0015E8F4  C0 1E 02 0C */ lfs f0, 0x20c(r30)
/* 801619B8 0015E8F8  EC 00 08 28 */ fsubs f0, f0, f1
/* 801619BC 0015E8FC  D0 1E 02 10 */ stfs f0, 0x210(r30)
/* 801619C0 0015E900  D0 3E 02 0C */ stfs f1, 0x20c(r30)
/* 801619C4 0015E904  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 801619C8 0015E908  54 00 30 32 */ slwi r0, r0, 6
/* 801619CC 0015E90C  7C 64 02 14 */ add r3, r4, r0
/* 801619D0 0015E910  88 63 00 3B */ lbz r3, 0x3b(r3)
/* 801619D4 0015E914  30 03 FF FF */ addic r0, r3, -1
/* 801619D8 0015E918  7C 00 19 10 */ subfe r0, r0, r3
/* 801619DC 0015E91C  98 1E 02 14 */ stb r0, 0x214(r30)
/* 801619E0 0015E920  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 801619E4 0015E924  54 00 30 32 */ slwi r0, r0, 6
/* 801619E8 0015E928  7C 64 02 14 */ add r3, r4, r0
/* 801619EC 0015E92C  88 63 00 3C */ lbz r3, 0x3c(r3)
/* 801619F0 0015E930  30 03 FF FF */ addic r0, r3, -1
/* 801619F4 0015E934  7C 00 19 10 */ subfe r0, r0, r3
/* 801619F8 0015E938  98 1E 02 15 */ stb r0, 0x215(r30)
/* 801619FC 0015E93C  C0 3E 02 0C */ lfs f1, 0x20c(r30)
/* 80161A00 0015E940  C0 1E 0A 2C */ lfs f0, 0xa2c(r30)
/* 80161A04 0015E944  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80161A08 0015E948  40 81 00 30 */ ble lbl_80161A38
/* 80161A0C 0015E94C  88 1E 02 16 */ lbz r0, 0x216(r30)
/* 80161A10 0015E950  28 00 00 00 */ cmplwi r0, 0
/* 80161A14 0015E954  40 82 00 10 */ bne lbl_80161A24
/* 80161A18 0015E958  38 00 00 01 */ li r0, 1
/* 80161A1C 0015E95C  98 1E 02 17 */ stb r0, 0x217(r30)
/* 80161A20 0015E960  48 00 00 0C */ b lbl_80161A2C
lbl_80161A24:
/* 80161A24 0015E964  38 00 00 00 */ li r0, 0
/* 80161A28 0015E968  98 1E 02 17 */ stb r0, 0x217(r30)
lbl_80161A2C:
/* 80161A2C 0015E96C  38 00 00 01 */ li r0, 1
/* 80161A30 0015E970  98 1E 02 16 */ stb r0, 0x216(r30)
/* 80161A34 0015E974  48 00 00 10 */ b lbl_80161A44
lbl_80161A38:
/* 80161A38 0015E978  38 00 00 00 */ li r0, 0
/* 80161A3C 0015E97C  98 1E 02 17 */ stb r0, 0x217(r30)
/* 80161A40 0015E980  98 1E 02 16 */ stb r0, 0x216(r30)
lbl_80161A44:
/* 80161A44 0015E984  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 80161A48 0015E988  54 04 30 32 */ slwi r4, r0, 6
/* 80161A4C 0015E98C  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 80161A50 0015E990  38 03 D2 E8 */ addi r0, r3, m_cpadInfo@l
/* 80161A54 0015E994  7C 60 22 14 */ add r3, r0, r4
/* 80161A58 0015E998  80 63 00 30 */ lwz r3, 0x30(r3)
/* 80161A5C 0015E99C  54 63 B7 FE */ rlwinm r3, r3, 0x16, 0x1f, 0x1f
/* 80161A60 0015E9A0  98 7E 02 18 */ stb r3, 0x218(r30)
/* 80161A64 0015E9A4  80 7E 01 7C */ lwz r3, 0x17c(r30)
/* 80161A68 0015E9A8  54 63 30 32 */ slwi r3, r3, 6
/* 80161A6C 0015E9AC  7C 60 1A 14 */ add r3, r0, r3
/* 80161A70 0015E9B0  80 63 00 34 */ lwz r3, 0x34(r3)
/* 80161A74 0015E9B4  54 63 B7 FE */ rlwinm r3, r3, 0x16, 0x1f, 0x1f
/* 80161A78 0015E9B8  98 7E 02 19 */ stb r3, 0x219(r30)
/* 80161A7C 0015E9BC  80 7E 01 7C */ lwz r3, 0x17c(r30)
/* 80161A80 0015E9C0  54 63 30 32 */ slwi r3, r3, 6
/* 80161A84 0015E9C4  7C 60 1A 14 */ add r3, r0, r3
/* 80161A88 0015E9C8  80 63 00 30 */ lwz r3, 0x30(r3)
/* 80161A8C 0015E9CC  54 63 AF FE */ rlwinm r3, r3, 0x15, 0x1f, 0x1f
/* 80161A90 0015E9D0  98 7E 02 1A */ stb r3, 0x21a(r30)
/* 80161A94 0015E9D4  80 7E 01 7C */ lwz r3, 0x17c(r30)
/* 80161A98 0015E9D8  54 63 30 32 */ slwi r3, r3, 6
/* 80161A9C 0015E9DC  7C 60 1A 14 */ add r3, r0, r3
/* 80161AA0 0015E9E0  80 63 00 34 */ lwz r3, 0x34(r3)
/* 80161AA4 0015E9E4  54 63 AF FE */ rlwinm r3, r3, 0x15, 0x1f, 0x1f
/* 80161AA8 0015E9E8  98 7E 02 1B */ stb r3, 0x21b(r30)
/* 80161AAC 0015E9EC  80 7E 01 7C */ lwz r3, 0x17c(r30)
/* 80161AB0 0015E9F0  54 63 30 32 */ slwi r3, r3, 6
/* 80161AB4 0015E9F4  7C 60 1A 14 */ add r3, r0, r3
/* 80161AB8 0015E9F8  80 63 00 30 */ lwz r3, 0x30(r3)
/* 80161ABC 0015E9FC  54 63 E7 FE */ rlwinm r3, r3, 0x1c, 0x1f, 0x1f
/* 80161AC0 0015EA00  98 7E 02 1C */ stb r3, 0x21c(r30)
/* 80161AC4 0015EA04  80 7E 01 7C */ lwz r3, 0x17c(r30)
/* 80161AC8 0015EA08  54 63 30 32 */ slwi r3, r3, 6
/* 80161ACC 0015EA0C  7C 60 1A 14 */ add r3, r0, r3
/* 80161AD0 0015EA10  80 63 00 34 */ lwz r3, 0x34(r3)
/* 80161AD4 0015EA14  54 63 E7 FE */ rlwinm r3, r3, 0x1c, 0x1f, 0x1f
/* 80161AD8 0015EA18  98 7E 02 1D */ stb r3, 0x21d(r30)
/* 80161ADC 0015EA1C  80 7E 01 7C */ lwz r3, 0x17c(r30)
/* 80161AE0 0015EA20  54 63 30 32 */ slwi r3, r3, 6
/* 80161AE4 0015EA24  7C 60 1A 14 */ add r3, r0, r3
/* 80161AE8 0015EA28  80 63 00 30 */ lwz r3, 0x30(r3)
/* 80161AEC 0015EA2C  54 63 BF FE */ rlwinm r3, r3, 0x17, 0x1f, 0x1f
/* 80161AF0 0015EA30  98 7E 02 20 */ stb r3, 0x220(r30)
/* 80161AF4 0015EA34  80 7E 01 7C */ lwz r3, 0x17c(r30)
/* 80161AF8 0015EA38  54 63 30 32 */ slwi r3, r3, 6
/* 80161AFC 0015EA3C  7C 60 1A 14 */ add r3, r0, r3
/* 80161B00 0015EA40  80 03 00 34 */ lwz r0, 0x34(r3)
/* 80161B04 0015EA44  54 00 BF FE */ rlwinm r0, r0, 0x17, 0x1f, 0x1f
/* 80161B08 0015EA48  98 1E 02 21 */ stb r0, 0x221(r30)
/* 80161B0C 0015EA4C  38 00 00 01 */ li r0, 1
/* 80161B10 0015EA50  38 60 00 01 */ li r3, 1
/* 80161B14 0015EA54  80 BE 06 84 */ lwz r5, 0x684(r30)
/* 80161B18 0015EA58  80 9E 06 8C */ lwz r4, 0x68c(r30)
/* 80161B1C 0015EA5C  1C 84 00 44 */ mulli r4, r4, 0x44
/* 80161B20 0015EA60  7C C5 22 14 */ add r6, r5, r4
/* 80161B24 0015EA64  80 FE 01 90 */ lwz r7, 0x190(r30)
/* 80161B28 0015EA68  1C 87 00 16 */ mulli r4, r7, 0x16
/* 80161B2C 0015EA6C  7C 86 22 14 */ add r4, r6, r4
/* 80161B30 0015EA70  A8 A4 00 18 */ lha r5, 0x18(r4)
/* 80161B34 0015EA74  7C 85 00 D0 */ neg r4, r5
/* 80161B38 0015EA78  7C 84 28 78 */ andc r4, r4, r5
/* 80161B3C 0015EA7C  7C 84 FE 70 */ srawi r4, r4, 0x1f
/* 80161B40 0015EA80  7C E4 20 38 */ and r4, r7, r4
/* 80161B44 0015EA84  1C 84 00 16 */ mulli r4, r4, 0x16
/* 80161B48 0015EA88  7C 86 22 14 */ add r4, r6, r4
/* 80161B4C 0015EA8C  A8 84 00 20 */ lha r4, 0x20(r4)
/* 80161B50 0015EA90  2C 04 00 00 */ cmpwi r4, 0
/* 80161B54 0015EA94  40 80 00 1C */ bge lbl_80161B70
/* 80161B58 0015EA98  38 00 00 00 */ li r0, 0
/* 80161B5C 0015EA9C  80 9E 09 40 */ lwz r4, 0x940(r30)
/* 80161B60 0015EAA0  2C 04 FF FF */ cmpwi r4, -1
/* 80161B64 0015EAA4  40 82 00 0C */ bne lbl_80161B70
/* 80161B68 0015EAA8  38 80 00 00 */ li r4, 0
/* 80161B6C 0015EAAC  90 9E 09 40 */ stw r4, 0x940(r30)
lbl_80161B70:
/* 80161B70 0015EAB0  2C 1F 00 01 */ cmpwi r31, 1
/* 80161B74 0015EAB4  41 82 00 14 */ beq lbl_80161B88
/* 80161B78 0015EAB8  2C 1F 00 08 */ cmpwi r31, 8
/* 80161B7C 0015EABC  41 82 00 0C */ beq lbl_80161B88
/* 80161B80 0015EAC0  2C 1F 00 07 */ cmpwi r31, 7
/* 80161B84 0015EAC4  40 82 00 20 */ bne lbl_80161BA4
lbl_80161B88:
/* 80161B88 0015EAC8  80 BE 0A F4 */ lwz r5, 0xaf4(r30)
/* 80161B8C 0015EACC  80 9E 06 7C */ lwz r4, 0x67c(r30)
/* 80161B90 0015EAD0  1C 84 00 78 */ mulli r4, r4, 0x78
/* 80161B94 0015EAD4  7C 85 22 14 */ add r4, r5, r4
/* 80161B98 0015EAD8  A0 84 00 06 */ lhz r4, 6(r4)
/* 80161B9C 0015EADC  54 84 06 31 */ rlwinm. r4, r4, 0, 0x18, 0x18
/* 80161BA0 0015EAE0  41 82 00 1C */ beq lbl_80161BBC
lbl_80161BA4:
/* 80161BA4 0015EAE4  38 60 00 00 */ li r3, 0
/* 80161BA8 0015EAE8  80 9E 09 40 */ lwz r4, 0x940(r30)
/* 80161BAC 0015EAEC  2C 04 00 01 */ cmpwi r4, 1
/* 80161BB0 0015EAF0  40 82 00 0C */ bne lbl_80161BBC
/* 80161BB4 0015EAF4  38 80 00 00 */ li r4, 0
/* 80161BB8 0015EAF8  90 9E 09 40 */ stw r4, 0x940(r30)
lbl_80161BBC:
/* 80161BBC 0015EAFC  80 9E 01 A4 */ lwz r4, 0x1a4(r30)
/* 80161BC0 0015EB00  2C 04 00 00 */ cmpwi r4, 0
/* 80161BC4 0015EB04  41 82 00 0C */ beq lbl_80161BD0
/* 80161BC8 0015EB08  2C 04 00 04 */ cmpwi r4, 4
/* 80161BCC 0015EB0C  40 82 01 50 */ bne lbl_80161D1C
lbl_80161BD0:
/* 80161BD0 0015EB10  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 80161BD4 0015EB14  38 A4 61 C0 */ addi r5, r4, g_dComIfG_gameInfo@l
/* 80161BD8 0015EB18  80 9E 01 7C */ lwz r4, 0x17c(r30)
/* 80161BDC 0015EB1C  54 84 20 36 */ slwi r4, r4, 4
/* 80161BE0 0015EB20  7C 85 22 14 */ add r4, r5, r4
/* 80161BE4 0015EB24  80 A4 5F 18 */ lwz r5, 0x5f18(r4)
/* 80161BE8 0015EB28  3C 80 00 01 */ lis r4, 0x00012000@ha
/* 80161BEC 0015EB2C  38 84 20 00 */ addi r4, r4, 0x00012000@l
/* 80161BF0 0015EB30  7C A4 20 39 */ and. r4, r5, r4
/* 80161BF4 0015EB34  41 82 00 10 */ beq lbl_80161C04
/* 80161BF8 0015EB38  38 80 FF FF */ li r4, -1
/* 80161BFC 0015EB3C  90 9E 09 40 */ stw r4, 0x940(r30)
/* 80161C00 0015EB40  48 00 00 18 */ b lbl_80161C18
lbl_80161C04:
/* 80161C04 0015EB44  80 9E 09 40 */ lwz r4, 0x940(r30)
/* 80161C08 0015EB48  2C 04 FF FF */ cmpwi r4, -1
/* 80161C0C 0015EB4C  40 82 00 0C */ bne lbl_80161C18
/* 80161C10 0015EB50  38 80 00 00 */ li r4, 0
/* 80161C14 0015EB54  90 9E 09 40 */ stw r4, 0x940(r30)
lbl_80161C18:
/* 80161C18 0015EB58  C0 5E 01 DC */ lfs f2, 0x1dc(r30)
/* 80161C1C 0015EB5C  C0 3E 0A 74 */ lfs f1, 0xa74(r30)
/* 80161C20 0015EB60  FC 00 08 50 */ fneg f0, f1
/* 80161C24 0015EB64  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80161C28 0015EB68  40 80 00 6C */ bge lbl_80161C94
/* 80161C2C 0015EB6C  80 1E 01 F4 */ lwz r0, 0x1f4(r30)
/* 80161C30 0015EB70  2C 00 FF FF */ cmpwi r0, -1
/* 80161C34 0015EB74  41 82 00 54 */ beq lbl_80161C88
/* 80161C38 0015EB78  80 9E 09 40 */ lwz r4, 0x940(r30)
/* 80161C3C 0015EB7C  2C 04 FF FF */ cmpwi r4, -1
/* 80161C40 0015EB80  40 82 00 30 */ bne lbl_80161C70
/* 80161C44 0015EB84  80 1E 01 A4 */ lwz r0, 0x1a4(r30)
/* 80161C48 0015EB88  2C 00 00 04 */ cmpwi r0, 4
/* 80161C4C 0015EB8C  40 82 00 24 */ bne lbl_80161C70
/* 80161C50 0015EB90  38 00 00 00 */ li r0, 0
/* 80161C54 0015EB94  90 1E 09 40 */ stw r0, 0x940(r30)
/* 80161C58 0015EB98  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80161C5C 0015EB9C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80161C60 0015EBA0  80 03 5D 7C */ lwz r0, 0x5d7c(r3)
/* 80161C64 0015EBA4  60 00 20 00 */ ori r0, r0, 0x2000
/* 80161C68 0015EBA8  90 03 5D 7C */ stw r0, 0x5d7c(r3)
/* 80161C6C 0015EBAC  48 00 00 1C */ b lbl_80161C88
lbl_80161C70:
/* 80161C70 0015EBB0  2C 04 00 00 */ cmpwi r4, 0
/* 80161C74 0015EBB4  40 82 00 14 */ bne lbl_80161C88
/* 80161C78 0015EBB8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80161C7C 0015EBBC  41 82 00 0C */ beq lbl_80161C88
/* 80161C80 0015EBC0  38 00 00 01 */ li r0, 1
/* 80161C84 0015EBC4  90 1E 09 40 */ stw r0, 0x940(r30)
lbl_80161C88:
/* 80161C88 0015EBC8  38 00 FF FF */ li r0, -1
/* 80161C8C 0015EBCC  90 1E 01 F4 */ stw r0, 0x1f4(r30)
/* 80161C90 0015EBD0  48 00 00 68 */ b lbl_80161CF8
lbl_80161C94:
/* 80161C94 0015EBD4  FC 02 08 40 */ fcmpo cr0, f2, f1
/* 80161C98 0015EBD8  40 81 00 58 */ ble lbl_80161CF0
/* 80161C9C 0015EBDC  80 7E 01 F4 */ lwz r3, 0x1f4(r30)
/* 80161CA0 0015EBE0  2C 03 00 01 */ cmpwi r3, 1
/* 80161CA4 0015EBE4  41 82 00 40 */ beq lbl_80161CE4
/* 80161CA8 0015EBE8  80 7E 09 40 */ lwz r3, 0x940(r30)
/* 80161CAC 0015EBEC  2C 03 00 00 */ cmpwi r3, 0
/* 80161CB0 0015EBF0  40 82 00 24 */ bne lbl_80161CD4
/* 80161CB4 0015EBF4  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 80161CB8 0015EBF8  41 82 00 1C */ beq lbl_80161CD4
/* 80161CBC 0015EBFC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80161CC0 0015EC00  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80161CC4 0015EC04  80 03 5D 7C */ lwz r0, 0x5d7c(r3)
/* 80161CC8 0015EC08  60 00 10 00 */ ori r0, r0, 0x1000
/* 80161CCC 0015EC0C  90 03 5D 7C */ stw r0, 0x5d7c(r3)
/* 80161CD0 0015EC10  48 00 00 14 */ b lbl_80161CE4
lbl_80161CD4:
/* 80161CD4 0015EC14  2C 03 00 01 */ cmpwi r3, 1
/* 80161CD8 0015EC18  40 82 00 0C */ bne lbl_80161CE4
/* 80161CDC 0015EC1C  38 00 00 00 */ li r0, 0
/* 80161CE0 0015EC20  90 1E 09 40 */ stw r0, 0x940(r30)
lbl_80161CE4:
/* 80161CE4 0015EC24  38 00 00 01 */ li r0, 1
/* 80161CE8 0015EC28  90 1E 01 F4 */ stw r0, 0x1f4(r30)
/* 80161CEC 0015EC2C  48 00 00 0C */ b lbl_80161CF8
lbl_80161CF0:
/* 80161CF0 0015EC30  38 00 00 00 */ li r0, 0
/* 80161CF4 0015EC34  90 1E 01 F4 */ stw r0, 0x1f4(r30)
lbl_80161CF8:
/* 80161CF8 0015EC38  80 1E 01 F4 */ lwz r0, 0x1f4(r30)
/* 80161CFC 0015EC3C  2C 00 00 00 */ cmpwi r0, 0
/* 80161D00 0015EC40  41 82 00 14 */ beq lbl_80161D14
/* 80161D04 0015EC44  80 7E 01 F8 */ lwz r3, 0x1f8(r30)
/* 80161D08 0015EC48  38 03 00 01 */ addi r0, r3, 1
/* 80161D0C 0015EC4C  90 1E 01 F8 */ stw r0, 0x1f8(r30)
/* 80161D10 0015EC50  48 00 00 0C */ b lbl_80161D1C
lbl_80161D14:
/* 80161D14 0015EC54  38 00 00 00 */ li r0, 0
/* 80161D18 0015EC58  90 1E 01 F8 */ stw r0, 0x1f8(r30)
lbl_80161D1C:
/* 80161D1C 0015EC5C  38 00 00 00 */ li r0, 0
/* 80161D20 0015EC60  98 1E 02 23 */ stb r0, 0x223(r30)
/* 80161D24 0015EC64  98 1E 02 24 */ stb r0, 0x224(r30)
/* 80161D28 0015EC68  80 1E 01 7C */ lwz r0, 0x17c(r30)
/* 80161D2C 0015EC6C  54 04 30 32 */ slwi r4, r0, 6
/* 80161D30 0015EC70  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 80161D34 0015EC74  38 03 D2 E8 */ addi r0, r3, m_cpadInfo@l
/* 80161D38 0015EC78  7C 60 22 14 */ add r3, r0, r4
/* 80161D3C 0015EC7C  C0 23 00 08 */ lfs f1, 8(r3)
/* 80161D40 0015EC80  C0 02 9C C0 */ lfs f0, lbl_804536C0-_SDA2_BASE_(r2)
/* 80161D44 0015EC84  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80161D48 0015EC88  41 81 00 1C */ bgt lbl_80161D64
/* 80161D4C 0015EC8C  C0 23 00 18 */ lfs f1, 0x18(r3)
/* 80161D50 0015EC90  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80161D54 0015EC94  41 81 00 10 */ bgt lbl_80161D64
/* 80161D58 0015EC98  80 03 00 30 */ lwz r0, 0x30(r3)
/* 80161D5C 0015EC9C  28 00 00 00 */ cmplwi r0, 0
/* 80161D60 0015ECA0  41 82 00 0C */ beq lbl_80161D6C
lbl_80161D64:
/* 80161D64 0015ECA4  38 00 00 01 */ li r0, 1
/* 80161D68 0015ECA8  98 1E 02 24 */ stb r0, 0x224(r30)
lbl_80161D6C:
/* 80161D6C 0015ECAC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80161D70 0015ECB0  83 C1 00 08 */ lwz r30, 8(r1)
/* 80161D74 0015ECB4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80161D78 0015ECB8  7C 08 03 A6 */ mtlr r0
/* 80161D7C 0015ECBC  38 21 00 10 */ addi r1, r1, 0x10
/* 80161D80 0015ECC0  4E 80 00 20 */ blr
