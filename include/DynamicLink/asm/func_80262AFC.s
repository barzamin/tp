/* 80262AFC 0025FA3C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80262B00 0025FA40  7C 08 02 A6 */ mflr r0
/* 80262B04 0025FA44  90 01 00 14 */ stw r0, 0x14(r1)
/* 80262B08 0025FA48  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80262B0C 0025FA4C  7C 7F 1B 78 */ mr r31, r3
/* 80262B10 0025FA50  80 03 00 28 */ lwz r0, 0x28(r3)
/* 80262B14 0025FA54  28 00 00 00 */ cmplwi r0, 0
/* 80262B18 0025FA58  40 82 00 50 */ bne lbl_80262B68
/* 80262B1C 0025FA5C  80 1F 00 10 */ lwz r0, 0x10(r31)
/* 80262B20 0025FA60  28 00 00 00 */ cmplwi r0, 0
/* 80262B24 0025FA64  41 82 00 0C */ beq lbl_80262B30
/* 80262B28 0025FA68  38 60 00 01 */ li r3, 1
/* 80262B2C 0025FA6C  48 00 00 84 */ b lbl_80262BB0
lbl_80262B30:
/*.global DynamicModuleControl_NS_callback*/
/* 80262B30 0025FA70  3C 60 80 26 */ lis r3, DynamicModuleControl_NS_callback@ha
/*.global DynamicModuleControl_NS_callback*/
/* 80262B34 0025FA74  38 63 27 94 */ addi r3, r3, DynamicModuleControl_NS_callback@l
/* 80262B38 0025FA78  7F E4 FB 78 */ mr r4, r31
/* 80262B3C 0025FA7C  4B DB 31 39 */ bl mDoDvdThd_callback_c_NS_create
/* 80262B40 0025FA80  90 7F 00 28 */ stw r3, 0x28(r31)
/* 80262B44 0025FA84  80 1F 00 28 */ lwz r0, 0x28(r31)
/* 80262B48 0025FA88  28 00 00 00 */ cmplwi r0, 0
/* 80262B4C 0025FA8C  40 82 00 1C */ bne lbl_80262B68
/* 80262B50 0025FA90  3C 60 80 3A */ lis r3, lbl_8039A4A0@ha
/* 80262B54 0025FA94  38 63 A4 A0 */ addi r3, r3, lbl_8039A4A0@l
/* 80262B58 0025FA98  38 63 01 DF */ addi r3, r3, 0x1df
/* 80262B5C 0025FA9C  80 9F 00 1C */ lwz r4, 0x1c(r31)
/* 80262B60 0025FAA0  4C C6 31 82 */ crclr 6
/* 80262B64 0025FAA4  4B DA 40 A9 */ bl OSReport_Error
lbl_80262B68:
/* 80262B68 0025FAA8  80 7F 00 28 */ lwz r3, 0x28(r31)
/* 80262B6C 0025FAAC  28 03 00 00 */ cmplwi r3, 0
/* 80262B70 0025FAB0  41 82 00 3C */ beq lbl_80262BAC
/* 80262B74 0025FAB4  88 03 00 0C */ lbz r0, 0xc(r3)
/* 80262B78 0025FAB8  2C 00 00 00 */ cmpwi r0, 0
/* 80262B7C 0025FABC  41 82 00 30 */ beq lbl_80262BAC
/* 80262B80 0025FAC0  28 03 00 00 */ cmplwi r3, 0
/* 80262B84 0025FAC4  41 82 00 18 */ beq lbl_80262B9C
/* 80262B88 0025FAC8  38 80 00 01 */ li r4, 1
/* 80262B8C 0025FACC  81 83 00 10 */ lwz r12, 0x10(r3)
/* 80262B90 0025FAD0  81 8C 00 08 */ lwz r12, 8(r12)
/* 80262B94 0025FAD4  7D 89 03 A6 */ mtctr r12
/* 80262B98 0025FAD8  4E 80 04 21 */ bctrl
lbl_80262B9C:
/* 80262B9C 0025FADC  38 00 00 00 */ li r0, 0
/* 80262BA0 0025FAE0  90 1F 00 28 */ stw r0, 0x28(r31)
/* 80262BA4 0025FAE4  38 60 00 01 */ li r3, 1
/* 80262BA8 0025FAE8  48 00 00 08 */ b lbl_80262BB0
lbl_80262BAC:
/* 80262BAC 0025FAEC  38 60 00 00 */ li r3, 0
lbl_80262BB0:
/* 80262BB0 0025FAF0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80262BB4 0025FAF4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80262BB8 0025FAF8  7C 08 03 A6 */ mtlr r0
/* 80262BBC 0025FAFC  38 21 00 10 */ addi r1, r1, 0x10
/* 80262BC0 0025FB00  4E 80 00 20 */ blr