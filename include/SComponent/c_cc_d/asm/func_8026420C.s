/* 8026420C 0026114C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80264210 00261150  7C 08 02 A6 */ mflr r0
/* 80264214 00261154  90 01 00 14 */ stw r0, 0x14(r1)
/* 80264218 00261158  28 04 00 00 */ cmplwi r4, 0
/* 8026421C 0026115C  41 82 00 08 */ beq lbl_80264224
/* 80264220 00261160  38 84 00 20 */ addi r4, r4, 0x20
lbl_80264224:
/* 80264224 00261164  38 63 00 20 */ addi r3, r3, 0x20
/* 80264228 00261168  48 00 AF E1 */ bl cross__8cM3dGCylCFPC8cM3dGSphP4cXyz
/* 8026422C 0026116C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80264230 00261170  41 82 00 0C */ beq lbl_8026423C
/* 80264234 00261174  38 60 00 01 */ li r3, 1
/* 80264238 00261178  48 00 00 08 */ b lbl_80264240
lbl_8026423C:
/* 8026423C 0026117C  38 60 00 00 */ li r3, 0
lbl_80264240:
/* 80264240 00261180  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80264244 00261184  7C 08 03 A6 */ mtlr r0
/* 80264248 00261188  38 21 00 10 */ addi r1, r1, 0x10
/* 8026424C 0026118C  4E 80 00 20 */ blr