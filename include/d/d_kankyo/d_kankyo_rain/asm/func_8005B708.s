/* 8005B708 00058648  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8005B70C 0005864C  7C 08 02 A6 */ mflr r0
/* 8005B710 00058650  90 01 00 24 */ stw r0, 0x24(r1)
/* 8005B714 00058654  C0 24 00 00 */ lfs f1, 0(r4)
/* 8005B718 00058658  C0 03 00 00 */ lfs f0, 0(r3)
/* 8005B71C 0005865C  EC 01 00 28 */ fsubs f0, f1, f0
/* 8005B720 00058660  D8 01 00 08 */ stfd f0, 8(r1)
/* 8005B724 00058664  C0 24 00 04 */ lfs f1, 4(r4)
/* 8005B728 00058668  C0 03 00 04 */ lfs f0, 4(r3)
/* 8005B72C 0005866C  EC 01 00 28 */ fsubs f0, f1, f0
/* 8005B730 00058670  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 8005B734 00058674  C0 24 00 08 */ lfs f1, 8(r4)
/* 8005B738 00058678  C0 03 00 08 */ lfs f0, 8(r3)
/* 8005B73C 0005867C  EC 01 00 28 */ fsubs f0, f1, f0
/* 8005B740 00058680  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 8005B744 00058684  38 61 00 08 */ addi r3, r1, 8
/* 8005B748 00058688  7C A4 2B 78 */ mr r4, r5
/* 8005B74C 0005868C  4B FF FF 15 */ bl vectle_calc_X1_
/* 8005B750 00058690  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8005B754 00058694  7C 08 03 A6 */ mtlr r0
/* 8005B758 00058698  38 21 00 20 */ addi r1, r1, 0x20
/* 8005B75C 0005869C  4E 80 00 20 */ blr