/* 8017D934 0017A874  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8017D938 0017A878  7C 08 02 A6 */ mflr r0
/* 8017D93C 0017A87C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8017D940 0017A880  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8017D944 0017A884  7C 7F 1B 78 */ mr r31, r3
/* 8017D948 0017A888  C0 24 00 00 */ lfs f1, 0(r4)
/* 8017D94C 0017A88C  C0 44 00 08 */ lfs f2, 8(r4)
/* 8017D950 0017A890  48 0E 9D 25 */ bl cM_atan2s
/* 8017D954 0017A894  7C 64 1B 78 */ mr r4, r3
/* 8017D958 0017A898  7F E3 FB 78 */ mr r3, r31
/* 8017D95C 0017A89C  48 0F 36 3D */ bl __ct__7cSAngleFs
/* 8017D960 0017A8A0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8017D964 0017A8A4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8017D968 0017A8A8  7C 08 03 A6 */ mtlr r0
/* 8017D96C 0017A8AC  38 21 00 10 */ addi r1, r1, 0x10
/* 8017D970 0017A8B0  4E 80 00 20 */ blr