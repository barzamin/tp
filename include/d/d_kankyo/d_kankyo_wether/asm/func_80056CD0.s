/* 80056CD0 00053C10  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80056CD4 00053C14  7C 08 02 A6 */ mflr r0
/* 80056CD8 00053C18  90 01 00 14 */ stw r0, 0x14(r1)
/* 80056CDC 00053C1C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80056CE0 00053C20  7C 7F 1B 79 */ or. r31, r3, r3
/* 80056CE4 00053C24  41 82 00 10 */ beq lbl_80056CF4
/* 80056CE8 00053C28  7C 80 07 35 */ extsh. r0, r4
/* 80056CEC 00053C2C  40 81 00 08 */ ble lbl_80056CF4
/* 80056CF0 00053C30  48 27 80 4D */ bl __dl__FPv
lbl_80056CF4:
/* 80056CF4 00053C34  7F E3 FB 78 */ mr r3, r31
/* 80056CF8 00053C38  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80056CFC 00053C3C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80056D00 00053C40  7C 08 03 A6 */ mtlr r0
/* 80056D04 00053C44  38 21 00 10 */ addi r1, r1, 0x10
/* 80056D08 00053C48  4E 80 00 20 */ blr