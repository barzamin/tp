/* 8026B8A4 002687E4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8026B8A8 002687E8  7C 08 02 A6 */ mflr r0
/* 8026B8AC 002687EC  90 01 00 34 */ stw r0, 0x34(r1)
/* 8026B8B0 002687F0  DB E1 00 20 */ stfd f31, 0x20(r1)
/* 8026B8B4 002687F4  F3 E1 00 28 */ psq_st f31, 40(r1), 0, 0
/* 8026B8B8 002687F8  39 61 00 20 */ addi r11, r1, 0x20
/* 8026B8BC 002687FC  48 0F 69 21 */ bl _savegpr_29
/* 8026B8C0 00268800  7C 7D 1B 78 */ mr r29, r3
/* 8026B8C4 00268804  7C 9E 23 78 */ mr r30, r4
/* 8026B8C8 00268808  7C BF 2B 78 */ mr r31, r5
/* 8026B8CC 0026880C  C0 23 00 0C */ lfs f1, 0xc(r3)
/* 8026B8D0 00268810  C0 04 00 0C */ lfs f0, 0xc(r4)
/* 8026B8D4 00268814  EF E1 00 2A */ fadds f31, f1, f0
/* 8026B8D8 00268818  C0 24 00 00 */ lfs f1, 0(r4)
/* 8026B8DC 0026881C  C0 44 00 08 */ lfs f2, 8(r4)
/* 8026B8E0 00268820  C0 63 00 00 */ lfs f3, 0(r3)
/* 8026B8E4 00268824  C0 83 00 08 */ lfs f4, 8(r3)
/* 8026B8E8 00268828  4B FF CD 2D */ bl cM3d_Len2dSq__Fffff
/* 8026B8EC 0026882C  C0 02 B7 18 */ lfs f0, lbl_80455118-_SDA2_BASE_(r2)
/* 8026B8F0 00268830  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026B8F4 00268834  40 81 00 58 */ ble lbl_8026B94C
/* 8026B8F8 00268838  FC 00 08 34 */ frsqrte f0, f1
/* 8026B8FC 0026883C  C8 82 B7 20 */ lfd f4, lbl_80455120-_SDA2_BASE_(r2)
/* 8026B900 00268840  FC 44 00 32 */ fmul f2, f4, f0
/* 8026B904 00268844  C8 62 B7 28 */ lfd f3, lbl_80455128-_SDA2_BASE_(r2)
/* 8026B908 00268848  FC 00 00 32 */ fmul f0, f0, f0
/* 8026B90C 0026884C  FC 01 00 32 */ fmul f0, f1, f0
/* 8026B910 00268850  FC 03 00 28 */ fsub f0, f3, f0
/* 8026B914 00268854  FC 02 00 32 */ fmul f0, f2, f0
/* 8026B918 00268858  FC 44 00 32 */ fmul f2, f4, f0
/* 8026B91C 0026885C  FC 00 00 32 */ fmul f0, f0, f0
/* 8026B920 00268860  FC 01 00 32 */ fmul f0, f1, f0
/* 8026B924 00268864  FC 03 00 28 */ fsub f0, f3, f0
/* 8026B928 00268868  FC 02 00 32 */ fmul f0, f2, f0
/* 8026B92C 0026886C  FC 44 00 32 */ fmul f2, f4, f0
/* 8026B930 00268870  FC 00 00 32 */ fmul f0, f0, f0
/* 8026B934 00268874  FC 01 00 32 */ fmul f0, f1, f0
/* 8026B938 00268878  FC 03 00 28 */ fsub f0, f3, f0
/* 8026B93C 0026887C  FC 02 00 32 */ fmul f0, f2, f0
/* 8026B940 00268880  FC 21 00 32 */ fmul f1, f1, f0
/* 8026B944 00268884  FC 20 08 18 */ frsp f1, f1
/* 8026B948 00268888  48 00 00 88 */ b lbl_8026B9D0
lbl_8026B94C:
/* 8026B94C 0026888C  C8 02 B7 30 */ lfd f0, lbl_80455130-_SDA2_BASE_(r2)
/* 8026B950 00268890  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026B954 00268894  40 80 00 10 */ bge lbl_8026B964
/* 8026B958 00268898  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8026B95C 0026889C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8026B960 002688A0  48 00 00 70 */ b lbl_8026B9D0
lbl_8026B964:
/* 8026B964 002688A4  D0 21 00 08 */ stfs f1, 8(r1)
/* 8026B968 002688A8  80 81 00 08 */ lwz r4, 8(r1)
/* 8026B96C 002688AC  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8026B970 002688B0  3C 00 7F 80 */ lis r0, 0x7f80
/* 8026B974 002688B4  7C 03 00 00 */ cmpw r3, r0
/* 8026B978 002688B8  41 82 00 14 */ beq lbl_8026B98C
/* 8026B97C 002688BC  40 80 00 40 */ bge lbl_8026B9BC
/* 8026B980 002688C0  2C 03 00 00 */ cmpwi r3, 0
/* 8026B984 002688C4  41 82 00 20 */ beq lbl_8026B9A4
/* 8026B988 002688C8  48 00 00 34 */ b lbl_8026B9BC
lbl_8026B98C:
/* 8026B98C 002688CC  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8026B990 002688D0  41 82 00 0C */ beq lbl_8026B99C
/* 8026B994 002688D4  38 00 00 01 */ li r0, 1
/* 8026B998 002688D8  48 00 00 28 */ b lbl_8026B9C0
lbl_8026B99C:
/* 8026B99C 002688DC  38 00 00 02 */ li r0, 2
/* 8026B9A0 002688E0  48 00 00 20 */ b lbl_8026B9C0
lbl_8026B9A4:
/* 8026B9A4 002688E4  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8026B9A8 002688E8  41 82 00 0C */ beq lbl_8026B9B4
/* 8026B9AC 002688EC  38 00 00 05 */ li r0, 5
/* 8026B9B0 002688F0  48 00 00 10 */ b lbl_8026B9C0
lbl_8026B9B4:
/* 8026B9B4 002688F4  38 00 00 03 */ li r0, 3
/* 8026B9B8 002688F8  48 00 00 08 */ b lbl_8026B9C0
lbl_8026B9BC:
/* 8026B9BC 002688FC  38 00 00 04 */ li r0, 4
lbl_8026B9C0:
/* 8026B9C0 00268900  2C 00 00 01 */ cmpwi r0, 1
/* 8026B9C4 00268904  40 82 00 0C */ bne lbl_8026B9D0
/* 8026B9C8 00268908  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8026B9CC 0026890C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8026B9D0:
/* 8026B9D0 00268910  FC 1F 08 40 */ fcmpo cr0, f31, f1
/* 8026B9D4 00268914  40 80 00 0C */ bge lbl_8026B9E0
/* 8026B9D8 00268918  38 60 00 00 */ li r3, 0
/* 8026B9DC 0026891C  48 00 00 4C */ b lbl_8026BA28
lbl_8026B9E0:
/* 8026B9E0 00268920  C0 9E 00 04 */ lfs f4, 4(r30)
/* 8026B9E4 00268924  C0 5E 00 0C */ lfs f2, 0xc(r30)
/* 8026B9E8 00268928  EC 04 10 2A */ fadds f0, f4, f2
/* 8026B9EC 0026892C  C0 7D 00 04 */ lfs f3, 4(r29)
/* 8026B9F0 00268930  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 8026B9F4 00268934  4C 41 13 82 */ cror 2, 1, 2
/* 8026B9F8 00268938  40 82 00 2C */ bne lbl_8026BA24
/* 8026B9FC 0026893C  EC 44 10 28 */ fsubs f2, f4, f2
/* 8026BA00 00268940  C0 1D 00 10 */ lfs f0, 0x10(r29)
/* 8026BA04 00268944  EC 03 00 2A */ fadds f0, f3, f0
/* 8026BA08 00268948  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 8026BA0C 0026894C  4C 40 13 82 */ cror 2, 0, 2
/* 8026BA10 00268950  40 82 00 14 */ bne lbl_8026BA24
/* 8026BA14 00268954  EC 1F 08 28 */ fsubs f0, f31, f1
/* 8026BA18 00268958  D0 1F 00 00 */ stfs f0, 0(r31)
/* 8026BA1C 0026895C  38 60 00 01 */ li r3, 1
/* 8026BA20 00268960  48 00 00 08 */ b lbl_8026BA28
lbl_8026BA24:
/* 8026BA24 00268964  38 60 00 00 */ li r3, 0
lbl_8026BA28:
/* 8026BA28 00268968  E3 E1 00 28 */ psq_l f31, 40(r1), 0, 0
/* 8026BA2C 0026896C  CB E1 00 20 */ lfd f31, 0x20(r1)
/* 8026BA30 00268970  39 61 00 20 */ addi r11, r1, 0x20
/* 8026BA34 00268974  48 0F 67 F5 */ bl _restgpr_29
/* 8026BA38 00268978  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8026BA3C 0026897C  7C 08 03 A6 */ mtlr r0
/* 8026BA40 00268980  38 21 00 30 */ addi r1, r1, 0x30
/* 8026BA44 00268984  4E 80 00 20 */ blr
