/* 80057A04 00054944  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80057A08 00054948  7C 08 02 A6 */ mflr r0
/* 80057A0C 0005494C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80057A10 00054950  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80057A14 00054954  93 C1 00 08 */ stw r30, 8(r1)
/* 80057A18 00054958  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057A1C 0005495C  3B C3 CA 54 */ addi r30, r3, lbl_8042CA54@l
/* 80057A20 00054960  88 1E 0E 70 */ lbz r0, 0xe70(r30)
/* 80057A24 00054964  28 00 00 00 */ cmplwi r0, 0
/* 80057A28 00054968  41 82 00 58 */ beq lbl_80057A80
/* 80057A2C 0005496C  80 7E 0E 74 */ lwz r3, 0xe74(r30)
/* 80057A30 00054970  28 03 00 00 */ cmplwi r3, 0
/* 80057A34 00054974  41 82 00 18 */ beq lbl_80057A4C
/* 80057A38 00054978  38 80 00 01 */ li r4, 1
/* 80057A3C 0005497C  81 83 00 00 */ lwz r12, 0(r3)
/* 80057A40 00054980  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057A44 00054984  7D 89 03 A6 */ mtctr r12
/* 80057A48 00054988  4E 80 04 21 */ bctrl
lbl_80057A4C:
/* 80057A4C 0005498C  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057A50 00054990  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057A54 00054994  80 7F 0E 78 */ lwz r3, 0xe78(r31)
/* 80057A58 00054998  28 03 00 00 */ cmplwi r3, 0
/* 80057A5C 0005499C  41 82 00 18 */ beq lbl_80057A74
/* 80057A60 000549A0  38 80 00 01 */ li r4, 1
/* 80057A64 000549A4  81 83 00 00 */ lwz r12, 0(r3)
/* 80057A68 000549A8  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057A6C 000549AC  7D 89 03 A6 */ mtctr r12
/* 80057A70 000549B0  4E 80 04 21 */ bctrl
lbl_80057A74:
/* 80057A74 000549B4  38 00 00 00 */ li r0, 0
/* 80057A78 000549B8  90 1E 0E 74 */ stw r0, 0xe74(r30)
/* 80057A7C 000549BC  90 1F 0E 78 */ stw r0, 0xe78(r31)
lbl_80057A80:
/* 80057A80 000549C0  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057A84 000549C4  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057A88 000549C8  88 1F 0E 7C */ lbz r0, 0xe7c(r31)
/* 80057A8C 000549CC  28 00 00 00 */ cmplwi r0, 0
/* 80057A90 000549D0  41 82 00 2C */ beq lbl_80057ABC
/* 80057A94 000549D4  80 7F 0E 84 */ lwz r3, 0xe84(r31)
/* 80057A98 000549D8  28 03 00 00 */ cmplwi r3, 0
/* 80057A9C 000549DC  41 82 00 18 */ beq lbl_80057AB4
/* 80057AA0 000549E0  38 80 00 01 */ li r4, 1
/* 80057AA4 000549E4  81 83 00 00 */ lwz r12, 0(r3)
/* 80057AA8 000549E8  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057AAC 000549EC  7D 89 03 A6 */ mtctr r12
/* 80057AB0 000549F0  4E 80 04 21 */ bctrl
lbl_80057AB4:
/* 80057AB4 000549F4  38 00 00 00 */ li r0, 0
/* 80057AB8 000549F8  90 1F 0E 84 */ stw r0, 0xe84(r31)
lbl_80057ABC:
/* 80057ABC 000549FC  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057AC0 00054A00  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057AC4 00054A04  88 1F 0E 88 */ lbz r0, 0xe88(r31)
/* 80057AC8 00054A08  28 00 00 00 */ cmplwi r0, 0
/* 80057ACC 00054A0C  41 82 00 38 */ beq lbl_80057B04
/* 80057AD0 00054A10  80 7F 0E 94 */ lwz r3, 0xe94(r31)
/* 80057AD4 00054A14  28 03 00 00 */ cmplwi r3, 0
/* 80057AD8 00054A18  41 82 00 18 */ beq lbl_80057AF0
/* 80057ADC 00054A1C  38 80 00 01 */ li r4, 1
/* 80057AE0 00054A20  81 83 00 00 */ lwz r12, 0(r3)
/* 80057AE4 00054A24  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057AE8 00054A28  7D 89 03 A6 */ mtctr r12
/* 80057AEC 00054A2C  4E 80 04 21 */ bctrl
lbl_80057AF0:
/* 80057AF0 00054A30  38 00 00 00 */ li r0, 0
/* 80057AF4 00054A34  90 1F 0E 94 */ stw r0, 0xe94(r31)
/* 80057AF8 00054A38  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057AFC 00054A3C  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 80057B00 00054A40  98 03 0E 90 */ stb r0, 0xe90(r3)
lbl_80057B04:
/* 80057B04 00054A44  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057B08 00054A48  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057B0C 00054A4C  88 1F 0E 98 */ lbz r0, 0xe98(r31)
/* 80057B10 00054A50  28 00 00 00 */ cmplwi r0, 0
/* 80057B14 00054A54  41 82 00 2C */ beq lbl_80057B40
/* 80057B18 00054A58  80 7F 0E A4 */ lwz r3, 0xea4(r31)
/* 80057B1C 00054A5C  28 03 00 00 */ cmplwi r3, 0
/* 80057B20 00054A60  41 82 00 18 */ beq lbl_80057B38
/* 80057B24 00054A64  38 80 00 01 */ li r4, 1
/* 80057B28 00054A68  81 83 00 00 */ lwz r12, 0(r3)
/* 80057B2C 00054A6C  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057B30 00054A70  7D 89 03 A6 */ mtctr r12
/* 80057B34 00054A74  4E 80 04 21 */ bctrl
lbl_80057B38:
/* 80057B38 00054A78  38 00 00 00 */ li r0, 0
/* 80057B3C 00054A7C  90 1F 0E A4 */ stw r0, 0xea4(r31)
lbl_80057B40:
/* 80057B40 00054A80  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057B44 00054A84  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057B48 00054A88  88 1F 0E A8 */ lbz r0, 0xea8(r31)
/* 80057B4C 00054A8C  28 00 00 00 */ cmplwi r0, 0
/* 80057B50 00054A90  41 82 00 2C */ beq lbl_80057B7C
/* 80057B54 00054A94  80 7F 0E B0 */ lwz r3, 0xeb0(r31)
/* 80057B58 00054A98  28 03 00 00 */ cmplwi r3, 0
/* 80057B5C 00054A9C  41 82 00 18 */ beq lbl_80057B74
/* 80057B60 00054AA0  38 80 00 01 */ li r4, 1
/* 80057B64 00054AA4  81 83 00 00 */ lwz r12, 0(r3)
/* 80057B68 00054AA8  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057B6C 00054AAC  7D 89 03 A6 */ mtctr r12
/* 80057B70 00054AB0  4E 80 04 21 */ bctrl
lbl_80057B74:
/* 80057B74 00054AB4  38 00 00 00 */ li r0, 0
/* 80057B78 00054AB8  90 1F 0E B0 */ stw r0, 0xeb0(r31)
lbl_80057B7C:
/* 80057B7C 00054ABC  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057B80 00054AC0  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057B84 00054AC4  88 1F 0E B4 */ lbz r0, 0xeb4(r31)
/* 80057B88 00054AC8  28 00 00 00 */ cmplwi r0, 0
/* 80057B8C 00054ACC  41 82 00 2C */ beq lbl_80057BB8
/* 80057B90 00054AD0  80 7F 0E C0 */ lwz r3, 0xec0(r31)
/* 80057B94 00054AD4  28 03 00 00 */ cmplwi r3, 0
/* 80057B98 00054AD8  41 82 00 18 */ beq lbl_80057BB0
/* 80057B9C 00054ADC  38 80 00 01 */ li r4, 1
/* 80057BA0 00054AE0  81 83 00 00 */ lwz r12, 0(r3)
/* 80057BA4 00054AE4  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057BA8 00054AE8  7D 89 03 A6 */ mtctr r12
/* 80057BAC 00054AEC  4E 80 04 21 */ bctrl
lbl_80057BB0:
/* 80057BB0 00054AF0  38 00 00 00 */ li r0, 0
/* 80057BB4 00054AF4  90 1F 0E C0 */ stw r0, 0xec0(r31)
lbl_80057BB8:
/* 80057BB8 00054AF8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057BBC 00054AFC  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057BC0 00054B00  88 1F 0F 20 */ lbz r0, 0xf20(r31)
/* 80057BC4 00054B04  28 00 00 00 */ cmplwi r0, 0
/* 80057BC8 00054B08  41 82 00 2C */ beq lbl_80057BF4
/* 80057BCC 00054B0C  80 7F 0F 28 */ lwz r3, 0xf28(r31)
/* 80057BD0 00054B10  28 03 00 00 */ cmplwi r3, 0
/* 80057BD4 00054B14  41 82 00 18 */ beq lbl_80057BEC
/* 80057BD8 00054B18  38 80 00 01 */ li r4, 1
/* 80057BDC 00054B1C  81 83 00 00 */ lwz r12, 0(r3)
/* 80057BE0 00054B20  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057BE4 00054B24  7D 89 03 A6 */ mtctr r12
/* 80057BE8 00054B28  4E 80 04 21 */ bctrl
lbl_80057BEC:
/* 80057BEC 00054B2C  38 00 00 00 */ li r0, 0
/* 80057BF0 00054B30  90 1F 0F 28 */ stw r0, 0xf28(r31)
lbl_80057BF4:
/* 80057BF4 00054B34  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057BF8 00054B38  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057BFC 00054B3C  88 1F 10 44 */ lbz r0, 0x1044(r31)
/* 80057C00 00054B40  28 00 00 00 */ cmplwi r0, 0
/* 80057C04 00054B44  41 82 00 2C */ beq lbl_80057C30
/* 80057C08 00054B48  80 7F 10 4C */ lwz r3, 0x104c(r31)
/* 80057C0C 00054B4C  28 03 00 00 */ cmplwi r3, 0
/* 80057C10 00054B50  41 82 00 18 */ beq lbl_80057C28
/* 80057C14 00054B54  38 80 00 01 */ li r4, 1
/* 80057C18 00054B58  81 83 00 00 */ lwz r12, 0(r3)
/* 80057C1C 00054B5C  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057C20 00054B60  7D 89 03 A6 */ mtctr r12
/* 80057C24 00054B64  4E 80 04 21 */ bctrl
lbl_80057C28:
/* 80057C28 00054B68  38 00 00 00 */ li r0, 0
/* 80057C2C 00054B6C  90 1F 10 4C */ stw r0, 0x104c(r31)
lbl_80057C30:
/* 80057C30 00054B70  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 80057C34 00054B74  3B E3 CA 54 */ addi r31, r3, lbl_8042CA54@l
/* 80057C38 00054B78  88 1F 10 50 */ lbz r0, 0x1050(r31)
/* 80057C3C 00054B7C  28 00 00 00 */ cmplwi r0, 0
/* 80057C40 00054B80  41 82 00 2C */ beq lbl_80057C6C
/* 80057C44 00054B84  80 7F 10 58 */ lwz r3, 0x1058(r31)
/* 80057C48 00054B88  28 03 00 00 */ cmplwi r3, 0
/* 80057C4C 00054B8C  41 82 00 18 */ beq lbl_80057C64
/* 80057C50 00054B90  38 80 00 01 */ li r4, 1
/* 80057C54 00054B94  81 83 00 00 */ lwz r12, 0(r3)
/* 80057C58 00054B98  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 80057C5C 00054B9C  7D 89 03 A6 */ mtctr r12
/* 80057C60 00054BA0  4E 80 04 21 */ bctrl
lbl_80057C64:
/* 80057C64 00054BA4  38 00 00 00 */ li r0, 0
/* 80057C68 00054BA8  90 1F 10 58 */ stw r0, 0x1058(r31)
lbl_80057C6C:
/* 80057C6C 00054BAC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80057C70 00054BB0  83 C1 00 08 */ lwz r30, 8(r1)
/* 80057C74 00054BB4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80057C78 00054BB8  7C 08 03 A6 */ mtlr r0
/* 80057C7C 00054BBC  38 21 00 10 */ addi r1, r1, 0x10
/* 80057C80 00054BC0  4E 80 00 20 */ blr