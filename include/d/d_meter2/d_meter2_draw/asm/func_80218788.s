/* 80218788 002156C8  94 21 FF 60 */ stwu r1, -0xa0(r1)
/* 8021878C 002156CC  7C 08 02 A6 */ mflr r0
/* 80218790 002156D0  90 01 00 A4 */ stw r0, 0xa4(r1)
/* 80218794 002156D4  39 61 00 A0 */ addi r11, r1, 0xa0
/* 80218798 002156D8  48 14 9A 0D */ bl _savegpr_15
/* 8021879C 002156DC  7C 72 1B 78 */ mr r18, r3
/* 802187A0 002156E0  7C 93 23 78 */ mr r19, r4
/* 802187A4 002156E4  3B A0 00 00 */ li r29, 0
/* 802187A8 002156E8  3B 80 00 00 */ li r28, 0
/* 802187AC 002156EC  3B 60 00 00 */ li r27, 0
/* 802187B0 002156F0  3B 40 00 00 */ li r26, 0
/* 802187B4 002156F4  3B 20 00 00 */ li r25, 0
/* 802187B8 002156F8  3B 00 00 00 */ li r24, 0
/* 802187BC 002156FC  3A E0 00 00 */ li r23, 0
/* 802187C0 00215700  3A C0 00 00 */ li r22, 0
/* 802187C4 00215704  3A A0 00 00 */ li r21, 0
/* 802187C8 00215708  3A 80 00 00 */ li r20, 0
/* 802187CC 0021570C  C0 03 07 F0 */ lfs f0, 0x7f0(r3)
/* 802187D0 00215710  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802187D4 00215714  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 802187D8 00215718  C0 23 00 18 */ lfs f1, 0x18(r3)
/* 802187DC 0021571C  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802187E0 00215720  40 82 00 0C */ bne lbl_802187EC
/* 802187E4 00215724  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 802187E8 00215728  41 82 00 0C */ beq lbl_802187F4
lbl_802187EC:
/* 802187EC 0021572C  D0 32 07 F0 */ stfs f1, 0x7f0(r18)
/* 802187F0 00215730  3B A0 00 01 */ li r29, 1
lbl_802187F4:
/* 802187F4 00215734  C0 12 07 F4 */ lfs f0, 0x7f4(r18)
/* 802187F8 00215738  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802187FC 0021573C  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218800 00215740  C0 23 00 84 */ lfs f1, 0x84(r3)
/* 80218804 00215744  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218808 00215748  40 82 00 0C */ bne lbl_80218814
/* 8021880C 0021574C  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218810 00215750  41 82 00 0C */ beq lbl_8021881C
lbl_80218814:
/* 80218814 00215754  D0 32 07 F0 */ stfs f1, 0x7f0(r18)
/* 80218818 00215758  3B A0 00 01 */ li r29, 1
lbl_8021881C:
/* 8021881C 0021575C  C0 12 07 FC */ lfs f0, 0x7fc(r18)
/* 80218820 00215760  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218824 00215764  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218828 00215768  C0 23 00 A8 */ lfs f1, 0xa8(r3)
/* 8021882C 0021576C  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218830 00215770  40 82 00 0C */ bne lbl_8021883C
/* 80218834 00215774  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218838 00215778  41 82 00 0C */ beq lbl_80218844
lbl_8021883C:
/* 8021883C 0021577C  D0 32 07 FC */ stfs f1, 0x7fc(r18)
/* 80218840 00215780  3B 80 00 01 */ li r28, 1
lbl_80218844:
/* 80218844 00215784  C0 12 08 00 */ lfs f0, 0x800(r18)
/* 80218848 00215788  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8021884C 0021578C  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218850 00215790  C0 23 00 F0 */ lfs f1, 0xf0(r3)
/* 80218854 00215794  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218858 00215798  40 82 00 0C */ bne lbl_80218864
/* 8021885C 0021579C  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218860 002157A0  41 82 00 0C */ beq lbl_8021886C
lbl_80218864:
/* 80218864 002157A4  D0 32 08 00 */ stfs f1, 0x800(r18)
/* 80218868 002157A8  3B 60 00 01 */ li r27, 1
lbl_8021886C:
/* 8021886C 002157AC  C0 12 08 04 */ lfs f0, 0x804(r18)
/* 80218870 002157B0  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218874 002157B4  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218878 002157B8  C0 23 01 48 */ lfs f1, 0x148(r3)
/* 8021887C 002157BC  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218880 002157C0  40 82 00 0C */ bne lbl_8021888C
/* 80218884 002157C4  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218888 002157C8  41 82 00 0C */ beq lbl_80218894
lbl_8021888C:
/* 8021888C 002157CC  D0 32 08 04 */ stfs f1, 0x804(r18)
/* 80218890 002157D0  3B 40 00 01 */ li r26, 1
lbl_80218894:
/* 80218894 002157D4  C0 12 08 08 */ lfs f0, 0x808(r18)
/* 80218898 002157D8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8021889C 002157DC  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 802188A0 002157E0  C0 23 01 58 */ lfs f1, 0x158(r3)
/* 802188A4 002157E4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802188A8 002157E8  40 82 00 0C */ bne lbl_802188B4
/* 802188AC 002157EC  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 802188B0 002157F0  41 82 00 0C */ beq lbl_802188BC
lbl_802188B4:
/* 802188B4 002157F4  D0 32 08 08 */ stfs f1, 0x808(r18)
/* 802188B8 002157F8  3B 20 00 01 */ li r25, 1
lbl_802188BC:
/* 802188BC 002157FC  C0 12 08 0C */ lfs f0, 0x80c(r18)
/* 802188C0 00215800  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802188C4 00215804  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 802188C8 00215808  C0 23 01 68 */ lfs f1, 0x168(r3)
/* 802188CC 0021580C  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802188D0 00215810  40 82 00 0C */ bne lbl_802188DC
/* 802188D4 00215814  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 802188D8 00215818  41 82 00 08 */ beq lbl_802188E0
lbl_802188DC:
/* 802188DC 0021581C  D0 32 08 0C */ stfs f1, 0x80c(r18)
lbl_802188E0:
/* 802188E0 00215820  C0 12 08 10 */ lfs f0, 0x810(r18)
/* 802188E4 00215824  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802188E8 00215828  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 802188EC 0021582C  C0 23 01 78 */ lfs f1, 0x178(r3)
/* 802188F0 00215830  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802188F4 00215834  40 82 00 0C */ bne lbl_80218900
/* 802188F8 00215838  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 802188FC 0021583C  41 82 00 0C */ beq lbl_80218908
lbl_80218900:
/* 80218900 00215840  D0 32 08 10 */ stfs f1, 0x810(r18)
/* 80218904 00215844  3B 00 00 01 */ li r24, 1
lbl_80218908:
/* 80218908 00215848  3B C0 00 00 */ li r30, 0
/* 8021890C 0021584C  3B E0 00 00 */ li r31, 0
/* 80218910 00215850  7F EF FB 78 */ mr r15, r31
/* 80218914 00215854  3A 01 00 44 */ addi r16, r1, 0x44
/* 80218918 00215858  3A 20 00 01 */ li r17, 1
lbl_8021891C:
/* 8021891C 0021585C  38 1F 03 54 */ addi r0, r31, 0x354
/* 80218920 00215860  7C 72 00 2E */ lwzx r3, r18, r0
/* 80218924 00215864  48 03 CD 29 */ bl CPaneMgrAlpha_NS_isVisible
/* 80218928 00215868  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8021892C 0021586C  41 82 00 0C */ beq lbl_80218938
/* 80218930 00215870  7D F0 F9 2E */ stwx r15, r16, r31
/* 80218934 00215874  48 00 00 08 */ b lbl_8021893C
lbl_80218938:
/* 80218938 00215878  7E 30 F9 2E */ stwx r17, r16, r31
lbl_8021893C:
/* 8021893C 0021587C  3B DE 00 01 */ addi r30, r30, 1
/* 80218940 00215880  2C 1E 00 02 */ cmpwi r30, 2
/* 80218944 00215884  3B FF 00 04 */ addi r31, r31, 4
/* 80218948 00215888  41 80 FF D4 */ blt lbl_8021891C
/* 8021894C 0021588C  38 00 00 00 */ li r0, 0
/* 80218950 00215890  90 01 00 4C */ stw r0, 0x4c(r1)
/* 80218954 00215894  90 01 00 50 */ stw r0, 0x50(r1)
/* 80218958 00215898  54 04 10 3A */ slwi r4, r0, 2
/* 8021895C 0021589C  7C B2 22 14 */ add r5, r18, r4
/* 80218960 002158A0  C0 05 08 14 */ lfs f0, 0x814(r5)
/* 80218964 002158A4  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218968 002158A8  38 03 EB C8 */ addi r0, r3, lbl_8042EBC8@l
/* 8021896C 002158AC  7C 60 22 14 */ add r3, r0, r4
/* 80218970 002158B0  C0 23 02 38 */ lfs f1, 0x238(r3)
/* 80218974 002158B4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218978 002158B8  40 82 00 0C */ bne lbl_80218984
/* 8021897C 002158BC  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218980 002158C0  41 82 00 08 */ beq lbl_80218988
lbl_80218984:
/* 80218984 002158C4  D0 25 08 14 */ stfs f1, 0x814(r5)
lbl_80218988:
/* 80218988 002158C8  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8021898C 002158CC  54 04 10 3A */ slwi r4, r0, 2
/* 80218990 002158D0  7F F2 22 14 */ add r31, r18, r4
/* 80218994 002158D4  C0 1F 08 1C */ lfs f0, 0x81c(r31)
/* 80218998 002158D8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8021899C 002158DC  38 03 EB C8 */ addi r0, r3, lbl_8042EBC8@l
/* 802189A0 002158E0  7C 60 22 14 */ add r3, r0, r4
/* 802189A4 002158E4  C0 23 02 58 */ lfs f1, 0x258(r3)
/* 802189A8 002158E8  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802189AC 002158EC  40 82 00 0C */ bne lbl_802189B8
/* 802189B0 002158F0  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 802189B4 002158F4  41 82 00 0C */ beq lbl_802189C0
lbl_802189B8:
/* 802189B8 002158F8  D0 3F 08 1C */ stfs f1, 0x81c(r31)
/* 802189BC 002158FC  3A E0 00 01 */ li r23, 1
lbl_802189C0:
/* 802189C0 00215900  80 01 00 48 */ lwz r0, 0x48(r1)
/* 802189C4 00215904  54 04 10 3A */ slwi r4, r0, 2
/* 802189C8 00215908  7F D2 22 14 */ add r30, r18, r4
/* 802189CC 0021590C  C0 1E 08 24 */ lfs f0, 0x824(r30)
/* 802189D0 00215910  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802189D4 00215914  38 03 EB C8 */ addi r0, r3, lbl_8042EBC8@l
/* 802189D8 00215918  7C 60 22 14 */ add r3, r0, r4
/* 802189DC 0021591C  C0 23 02 78 */ lfs f1, 0x278(r3)
/* 802189E0 00215920  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802189E4 00215924  40 82 00 0C */ bne lbl_802189F0
/* 802189E8 00215928  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 802189EC 0021592C  41 82 00 0C */ beq lbl_802189F8
lbl_802189F0:
/* 802189F0 00215930  D0 3E 08 24 */ stfs f1, 0x824(r30)
/* 802189F4 00215934  3A C0 00 01 */ li r22, 1
lbl_802189F8:
/* 802189F8 00215938  C0 12 08 34 */ lfs f0, 0x834(r18)
/* 802189FC 0021593C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218A00 00215940  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218A04 00215944  C0 23 02 AC */ lfs f1, 0x2ac(r3)
/* 80218A08 00215948  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218A0C 0021594C  40 82 00 0C */ bne lbl_80218A18
/* 80218A10 00215950  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218A14 00215954  41 82 00 0C */ beq lbl_80218A20
lbl_80218A18:
/* 80218A18 00215958  D0 32 08 34 */ stfs f1, 0x834(r18)
/* 80218A1C 0021595C  3A 80 00 01 */ li r20, 1
lbl_80218A20:
/* 80218A20 00215960  C0 12 08 38 */ lfs f0, 0x838(r18)
/* 80218A24 00215964  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218A28 00215968  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218A2C 0021596C  C0 23 02 B0 */ lfs f1, 0x2b0(r3)
/* 80218A30 00215970  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218A34 00215974  40 82 00 0C */ bne lbl_80218A40
/* 80218A38 00215978  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218A3C 0021597C  41 82 00 0C */ beq lbl_80218A48
lbl_80218A40:
/* 80218A40 00215980  D0 32 08 38 */ stfs f1, 0x838(r18)
/* 80218A44 00215984  3A A0 00 01 */ li r21, 1
lbl_80218A48:
/* 80218A48 00215988  C0 12 07 F8 */ lfs f0, 0x7f8(r18)
/* 80218A4C 0021598C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218A50 00215990  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218A54 00215994  C0 23 00 A0 */ lfs f1, 0xa0(r3)
/* 80218A58 00215998  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218A5C 0021599C  40 82 00 0C */ bne lbl_80218A68
/* 80218A60 002159A0  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218A64 002159A4  41 82 00 08 */ beq lbl_80218A6C
lbl_80218A68:
/* 80218A68 002159A8  D0 32 07 F8 */ stfs f1, 0x7f8(r18)
lbl_80218A6C:
/* 80218A6C 002159AC  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218A70 002159B0  40 82 00 14 */ bne lbl_80218A84
/* 80218A74 002159B4  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 80218A78 002159B8  40 82 00 0C */ bne lbl_80218A84
/* 80218A7C 002159BC  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218A80 002159C0  41 82 00 18 */ beq lbl_80218A98
lbl_80218A84:
/* 80218A84 002159C4  80 72 03 00 */ lwz r3, 0x300(r18)
/* 80218A88 002159C8  C0 32 07 FC */ lfs f1, 0x7fc(r18)
/* 80218A8C 002159CC  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218A90 002159D0  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218A94 002159D4  48 03 CD 3D */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218A98:
/* 80218A98 002159D8  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218A9C 002159DC  40 82 00 14 */ bne lbl_80218AB0
/* 80218AA0 002159E0  57 60 06 3F */ clrlwi. r0, r27, 0x18
/* 80218AA4 002159E4  40 82 00 0C */ bne lbl_80218AB0
/* 80218AA8 002159E8  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218AAC 002159EC  41 82 00 18 */ beq lbl_80218AC4
lbl_80218AB0:
/* 80218AB0 002159F0  80 72 03 04 */ lwz r3, 0x304(r18)
/* 80218AB4 002159F4  C0 32 08 00 */ lfs f1, 0x800(r18)
/* 80218AB8 002159F8  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218ABC 002159FC  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218AC0 00215A00  48 03 CD 11 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218AC4:
/* 80218AC4 00215A04  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218AC8 00215A08  40 82 00 14 */ bne lbl_80218ADC
/* 80218ACC 00215A0C  57 40 06 3F */ clrlwi. r0, r26, 0x18
/* 80218AD0 00215A10  40 82 00 0C */ bne lbl_80218ADC
/* 80218AD4 00215A14  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218AD8 00215A18  41 82 00 18 */ beq lbl_80218AF0
lbl_80218ADC:
/* 80218ADC 00215A1C  80 72 03 0C */ lwz r3, 0x30c(r18)
/* 80218AE0 00215A20  C0 32 08 04 */ lfs f1, 0x804(r18)
/* 80218AE4 00215A24  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218AE8 00215A28  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218AEC 00215A2C  48 03 CC E5 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218AF0:
/* 80218AF0 00215A30  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218AF4 00215A34  40 82 00 14 */ bne lbl_80218B08
/* 80218AF8 00215A38  57 20 06 3F */ clrlwi. r0, r25, 0x18
/* 80218AFC 00215A3C  40 82 00 0C */ bne lbl_80218B08
/* 80218B00 00215A40  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218B04 00215A44  41 82 00 18 */ beq lbl_80218B1C
lbl_80218B08:
/* 80218B08 00215A48  80 72 03 10 */ lwz r3, 0x310(r18)
/* 80218B0C 00215A4C  C0 32 08 08 */ lfs f1, 0x808(r18)
/* 80218B10 00215A50  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218B14 00215A54  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218B18 00215A58  48 03 CC B9 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218B1C:
/* 80218B1C 00215A5C  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218B20 00215A60  40 82 00 14 */ bne lbl_80218B34
/* 80218B24 00215A64  57 00 06 3F */ clrlwi. r0, r24, 0x18
/* 80218B28 00215A68  40 82 00 0C */ bne lbl_80218B34
/* 80218B2C 00215A6C  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218B30 00215A70  41 82 00 18 */ beq lbl_80218B48
lbl_80218B34:
/* 80218B34 00215A74  80 72 03 14 */ lwz r3, 0x314(r18)
/* 80218B38 00215A78  C0 32 08 10 */ lfs f1, 0x810(r18)
/* 80218B3C 00215A7C  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218B40 00215A80  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218B44 00215A84  48 03 CC 8D */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218B48:
/* 80218B48 00215A88  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218B4C 00215A8C  40 82 00 14 */ bne lbl_80218B60
/* 80218B50 00215A90  56 E0 06 3F */ clrlwi. r0, r23, 0x18
/* 80218B54 00215A94  40 82 00 0C */ bne lbl_80218B60
/* 80218B58 00215A98  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218B5C 00215A9C  41 82 00 18 */ beq lbl_80218B74
lbl_80218B60:
/* 80218B60 00215AA0  80 72 03 1C */ lwz r3, 0x31c(r18)
/* 80218B64 00215AA4  C0 3F 08 1C */ lfs f1, 0x81c(r31)
/* 80218B68 00215AA8  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218B6C 00215AAC  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218B70 00215AB0  48 03 CC 61 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218B74:
/* 80218B74 00215AB4  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218B78 00215AB8  40 82 00 14 */ bne lbl_80218B8C
/* 80218B7C 00215ABC  56 C0 06 3F */ clrlwi. r0, r22, 0x18
/* 80218B80 00215AC0  40 82 00 0C */ bne lbl_80218B8C
/* 80218B84 00215AC4  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218B88 00215AC8  41 82 00 18 */ beq lbl_80218BA0
lbl_80218B8C:
/* 80218B8C 00215ACC  80 72 03 20 */ lwz r3, 0x320(r18)
/* 80218B90 00215AD0  C0 3E 08 24 */ lfs f1, 0x824(r30)
/* 80218B94 00215AD4  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218B98 00215AD8  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218B9C 00215ADC  48 03 CC 35 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218BA0:
/* 80218BA0 00215AE0  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218BA4 00215AE4  40 82 00 0C */ bne lbl_80218BB0
/* 80218BA8 00215AE8  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218BAC 00215AEC  41 82 00 24 */ beq lbl_80218BD0
lbl_80218BB0:
/* 80218BB0 00215AF0  80 72 03 24 */ lwz r3, 0x324(r18)
/* 80218BB4 00215AF4  80 01 00 4C */ lwz r0, 0x4c(r1)
/* 80218BB8 00215AF8  54 00 10 3A */ slwi r0, r0, 2
/* 80218BBC 00215AFC  7C 92 02 14 */ add r4, r18, r0
/* 80218BC0 00215B00  C0 24 08 2C */ lfs f1, 0x82c(r4)
/* 80218BC4 00215B04  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218BC8 00215B08  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218BCC 00215B0C  48 03 CC 05 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218BD0:
/* 80218BD0 00215B10  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218BD4 00215B14  40 82 00 14 */ bne lbl_80218BE8
/* 80218BD8 00215B18  56 80 06 3F */ clrlwi. r0, r20, 0x18
/* 80218BDC 00215B1C  40 82 00 0C */ bne lbl_80218BE8
/* 80218BE0 00215B20  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218BE4 00215B24  41 82 00 18 */ beq lbl_80218BFC
lbl_80218BE8:
/* 80218BE8 00215B28  80 72 03 24 */ lwz r3, 0x324(r18)
/* 80218BEC 00215B2C  C0 32 08 34 */ lfs f1, 0x834(r18)
/* 80218BF0 00215B30  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218BF4 00215B34  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218BF8 00215B38  48 03 CB D9 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218BFC:
/* 80218BFC 00215B3C  80 72 04 B8 */ lwz r3, 0x4b8(r18)
/* 80218C00 00215B40  28 03 00 00 */ cmplwi r3, 0
/* 80218C04 00215B44  41 82 00 2C */ beq lbl_80218C30
/* 80218C08 00215B48  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80218C0C 00215B4C  40 82 00 14 */ bne lbl_80218C20
/* 80218C10 00215B50  56 A0 06 3F */ clrlwi. r0, r21, 0x18
/* 80218C14 00215B54  40 82 00 0C */ bne lbl_80218C20
/* 80218C18 00215B58  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218C1C 00215B5C  41 82 00 14 */ beq lbl_80218C30
lbl_80218C20:
/* 80218C20 00215B60  C0 32 08 38 */ lfs f1, 0x838(r18)
/* 80218C24 00215B64  C0 12 07 F0 */ lfs f0, 0x7f0(r18)
/* 80218C28 00215B68  EC 21 00 32 */ fmuls f1, f1, f0
/* 80218C2C 00215B6C  48 03 CB A5 */ bl CPaneMgrAlpha_NS_setAlphaRate
lbl_80218C30:
/* 80218C30 00215B70  C0 12 08 3C */ lfs f0, 0x83c(r18)
/* 80218C34 00215B74  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218C38 00215B78  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218C3C 00215B7C  C0 23 02 C4 */ lfs f1, 0x2c4(r3)
/* 80218C40 00215B80  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80218C44 00215B84  40 82 00 0C */ bne lbl_80218C50
/* 80218C48 00215B88  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218C4C 00215B8C  41 82 00 30 */ beq lbl_80218C7C
lbl_80218C50:
/* 80218C50 00215B90  D0 32 08 3C */ stfs f1, 0x83c(r18)
/* 80218C54 00215B94  38 60 00 00 */ li r3, 0
/* 80218C58 00215B98  38 00 00 05 */ li r0, 5
/* 80218C5C 00215B9C  7C 09 03 A6 */ mtctr r0
lbl_80218C60:
/* 80218C60 00215BA0  38 03 00 C0 */ addi r0, r3, 0xc0
/* 80218C64 00215BA4  7C 92 00 2E */ lwzx r4, r18, r0
/* 80218C68 00215BA8  80 84 00 04 */ lwz r4, 4(r4)
/* 80218C6C 00215BAC  C0 12 08 3C */ lfs f0, 0x83c(r18)
/* 80218C70 00215BB0  D0 04 01 14 */ stfs f0, 0x114(r4)
/* 80218C74 00215BB4  38 63 00 04 */ addi r3, r3, 4
/* 80218C78 00215BB8  42 00 FF E8 */ bdnz lbl_80218C60
lbl_80218C7C:
/* 80218C7C 00215BBC  88 12 08 4C */ lbz r0, 0x84c(r18)
/* 80218C80 00215BC0  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218C84 00215BC4  38 83 EB C8 */ addi r4, r3, lbl_8042EBC8@l
/* 80218C88 00215BC8  88 A4 02 C0 */ lbz r5, 0x2c0(r4)
/* 80218C8C 00215BCC  7C 00 28 40 */ cmplw r0, r5
/* 80218C90 00215BD0  40 82 00 3C */ bne lbl_80218CCC
/* 80218C94 00215BD4  88 72 08 4D */ lbz r3, 0x84d(r18)
/* 80218C98 00215BD8  88 04 02 C1 */ lbz r0, 0x2c1(r4)
/* 80218C9C 00215BDC  7C 03 00 40 */ cmplw r3, r0
/* 80218CA0 00215BE0  40 82 00 2C */ bne lbl_80218CCC
/* 80218CA4 00215BE4  88 72 08 4E */ lbz r3, 0x84e(r18)
/* 80218CA8 00215BE8  88 04 02 C2 */ lbz r0, 0x2c2(r4)
/* 80218CAC 00215BEC  7C 03 00 40 */ cmplw r3, r0
/* 80218CB0 00215BF0  40 82 00 1C */ bne lbl_80218CCC
/* 80218CB4 00215BF4  88 72 08 4F */ lbz r3, 0x84f(r18)
/* 80218CB8 00215BF8  88 04 02 C3 */ lbz r0, 0x2c3(r4)
/* 80218CBC 00215BFC  7C 03 00 40 */ cmplw r3, r0
/* 80218CC0 00215C00  40 82 00 0C */ bne lbl_80218CCC
/* 80218CC4 00215C04  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218CC8 00215C08  41 82 00 80 */ beq lbl_80218D48
lbl_80218CCC:
/* 80218CCC 00215C0C  98 B2 08 4C */ stb r5, 0x84c(r18)
/* 80218CD0 00215C10  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218CD4 00215C14  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218CD8 00215C18  88 03 02 C1 */ lbz r0, 0x2c1(r3)
/* 80218CDC 00215C1C  98 12 08 4D */ stb r0, 0x84d(r18)
/* 80218CE0 00215C20  88 03 02 C2 */ lbz r0, 0x2c2(r3)
/* 80218CE4 00215C24  98 12 08 4E */ stb r0, 0x84e(r18)
/* 80218CE8 00215C28  88 03 02 C3 */ lbz r0, 0x2c3(r3)
/* 80218CEC 00215C2C  98 12 08 4F */ stb r0, 0x84f(r18)
/* 80218CF0 00215C30  80 04 02 C0 */ lwz r0, 0x2c0(r4)
/* 80218CF4 00215C34  90 01 00 18 */ stw r0, 0x18(r1)
/* 80218CF8 00215C38  90 01 00 3C */ stw r0, 0x3c(r1)
/* 80218CFC 00215C3C  90 01 00 40 */ stw r0, 0x40(r1)
/* 80218D00 00215C40  80 72 00 D0 */ lwz r3, 0xd0(r18)
/* 80218D04 00215C44  80 63 00 04 */ lwz r3, 4(r3)
/* 80218D08 00215C48  88 01 00 40 */ lbz r0, 0x40(r1)
/* 80218D0C 00215C4C  98 03 01 04 */ stb r0, 0x104(r3)
/* 80218D10 00215C50  88 01 00 41 */ lbz r0, 0x41(r1)
/* 80218D14 00215C54  98 03 01 05 */ stb r0, 0x105(r3)
/* 80218D18 00215C58  88 01 00 42 */ lbz r0, 0x42(r1)
/* 80218D1C 00215C5C  98 03 01 06 */ stb r0, 0x106(r3)
/* 80218D20 00215C60  88 01 00 43 */ lbz r0, 0x43(r1)
/* 80218D24 00215C64  98 03 01 07 */ stb r0, 0x107(r3)
/* 80218D28 00215C68  88 01 00 3C */ lbz r0, 0x3c(r1)
/* 80218D2C 00215C6C  98 03 01 08 */ stb r0, 0x108(r3)
/* 80218D30 00215C70  88 01 00 3D */ lbz r0, 0x3d(r1)
/* 80218D34 00215C74  98 03 01 09 */ stb r0, 0x109(r3)
/* 80218D38 00215C78  88 01 00 3E */ lbz r0, 0x3e(r1)
/* 80218D3C 00215C7C  98 03 01 0A */ stb r0, 0x10a(r3)
/* 80218D40 00215C80  88 01 00 3F */ lbz r0, 0x3f(r1)
/* 80218D44 00215C84  98 03 01 0B */ stb r0, 0x10b(r3)
lbl_80218D48:
/* 80218D48 00215C88  88 12 08 50 */ lbz r0, 0x850(r18)
/* 80218D4C 00215C8C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218D50 00215C90  38 83 EB C8 */ addi r4, r3, lbl_8042EBC8@l
/* 80218D54 00215C94  88 A4 02 E0 */ lbz r5, 0x2e0(r4)
/* 80218D58 00215C98  7C 00 28 40 */ cmplw r0, r5
/* 80218D5C 00215C9C  40 82 00 3C */ bne lbl_80218D98
/* 80218D60 00215CA0  88 72 08 51 */ lbz r3, 0x851(r18)
/* 80218D64 00215CA4  88 04 02 E1 */ lbz r0, 0x2e1(r4)
/* 80218D68 00215CA8  7C 03 00 40 */ cmplw r3, r0
/* 80218D6C 00215CAC  40 82 00 2C */ bne lbl_80218D98
/* 80218D70 00215CB0  88 72 08 52 */ lbz r3, 0x852(r18)
/* 80218D74 00215CB4  88 04 02 E2 */ lbz r0, 0x2e2(r4)
/* 80218D78 00215CB8  7C 03 00 40 */ cmplw r3, r0
/* 80218D7C 00215CBC  40 82 00 1C */ bne lbl_80218D98
/* 80218D80 00215CC0  88 72 08 53 */ lbz r3, 0x853(r18)
/* 80218D84 00215CC4  88 04 02 E3 */ lbz r0, 0x2e3(r4)
/* 80218D88 00215CC8  7C 03 00 40 */ cmplw r3, r0
/* 80218D8C 00215CCC  40 82 00 0C */ bne lbl_80218D98
/* 80218D90 00215CD0  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218D94 00215CD4  41 82 00 80 */ beq lbl_80218E14
lbl_80218D98:
/* 80218D98 00215CD8  98 B2 08 50 */ stb r5, 0x850(r18)
/* 80218D9C 00215CDC  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218DA0 00215CE0  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218DA4 00215CE4  88 03 02 E1 */ lbz r0, 0x2e1(r3)
/* 80218DA8 00215CE8  98 12 08 51 */ stb r0, 0x851(r18)
/* 80218DAC 00215CEC  88 03 02 E2 */ lbz r0, 0x2e2(r3)
/* 80218DB0 00215CF0  98 12 08 52 */ stb r0, 0x852(r18)
/* 80218DB4 00215CF4  88 03 02 E3 */ lbz r0, 0x2e3(r3)
/* 80218DB8 00215CF8  98 12 08 53 */ stb r0, 0x853(r18)
/* 80218DBC 00215CFC  80 04 02 E0 */ lwz r0, 0x2e0(r4)
/* 80218DC0 00215D00  90 01 00 14 */ stw r0, 0x14(r1)
/* 80218DC4 00215D04  90 01 00 34 */ stw r0, 0x34(r1)
/* 80218DC8 00215D08  90 01 00 38 */ stw r0, 0x38(r1)
/* 80218DCC 00215D0C  80 72 00 E4 */ lwz r3, 0xe4(r18)
/* 80218DD0 00215D10  80 63 00 04 */ lwz r3, 4(r3)
/* 80218DD4 00215D14  88 01 00 38 */ lbz r0, 0x38(r1)
/* 80218DD8 00215D18  98 03 01 04 */ stb r0, 0x104(r3)
/* 80218DDC 00215D1C  88 01 00 39 */ lbz r0, 0x39(r1)
/* 80218DE0 00215D20  98 03 01 05 */ stb r0, 0x105(r3)
/* 80218DE4 00215D24  88 01 00 3A */ lbz r0, 0x3a(r1)
/* 80218DE8 00215D28  98 03 01 06 */ stb r0, 0x106(r3)
/* 80218DEC 00215D2C  88 01 00 3B */ lbz r0, 0x3b(r1)
/* 80218DF0 00215D30  98 03 01 07 */ stb r0, 0x107(r3)
/* 80218DF4 00215D34  88 01 00 34 */ lbz r0, 0x34(r1)
/* 80218DF8 00215D38  98 03 01 08 */ stb r0, 0x108(r3)
/* 80218DFC 00215D3C  88 01 00 35 */ lbz r0, 0x35(r1)
/* 80218E00 00215D40  98 03 01 09 */ stb r0, 0x109(r3)
/* 80218E04 00215D44  88 01 00 36 */ lbz r0, 0x36(r1)
/* 80218E08 00215D48  98 03 01 0A */ stb r0, 0x10a(r3)
/* 80218E0C 00215D4C  88 01 00 37 */ lbz r0, 0x37(r1)
/* 80218E10 00215D50  98 03 01 0B */ stb r0, 0x10b(r3)
lbl_80218E14:
/* 80218E14 00215D54  88 12 08 58 */ lbz r0, 0x858(r18)
/* 80218E18 00215D58  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218E1C 00215D5C  38 83 EB C8 */ addi r4, r3, lbl_8042EBC8@l
/* 80218E20 00215D60  88 A4 03 38 */ lbz r5, 0x338(r4)
/* 80218E24 00215D64  7C 00 28 40 */ cmplw r0, r5
/* 80218E28 00215D68  40 82 00 3C */ bne lbl_80218E64
/* 80218E2C 00215D6C  88 72 08 59 */ lbz r3, 0x859(r18)
/* 80218E30 00215D70  88 04 03 39 */ lbz r0, 0x339(r4)
/* 80218E34 00215D74  7C 03 00 40 */ cmplw r3, r0
/* 80218E38 00215D78  40 82 00 2C */ bne lbl_80218E64
/* 80218E3C 00215D7C  88 72 08 5A */ lbz r3, 0x85a(r18)
/* 80218E40 00215D80  88 04 03 3A */ lbz r0, 0x33a(r4)
/* 80218E44 00215D84  7C 03 00 40 */ cmplw r3, r0
/* 80218E48 00215D88  40 82 00 1C */ bne lbl_80218E64
/* 80218E4C 00215D8C  88 72 08 5B */ lbz r3, 0x85b(r18)
/* 80218E50 00215D90  88 04 03 3B */ lbz r0, 0x33b(r4)
/* 80218E54 00215D94  7C 03 00 40 */ cmplw r3, r0
/* 80218E58 00215D98  40 82 00 0C */ bne lbl_80218E64
/* 80218E5C 00215D9C  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218E60 00215DA0  41 82 00 80 */ beq lbl_80218EE0
lbl_80218E64:
/* 80218E64 00215DA4  98 B2 08 58 */ stb r5, 0x858(r18)
/* 80218E68 00215DA8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218E6C 00215DAC  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218E70 00215DB0  88 03 03 39 */ lbz r0, 0x339(r3)
/* 80218E74 00215DB4  98 12 08 59 */ stb r0, 0x859(r18)
/* 80218E78 00215DB8  88 03 03 3A */ lbz r0, 0x33a(r3)
/* 80218E7C 00215DBC  98 12 08 5A */ stb r0, 0x85a(r18)
/* 80218E80 00215DC0  88 03 03 3B */ lbz r0, 0x33b(r3)
/* 80218E84 00215DC4  98 12 08 5B */ stb r0, 0x85b(r18)
/* 80218E88 00215DC8  80 04 03 38 */ lwz r0, 0x338(r4)
/* 80218E8C 00215DCC  90 01 00 10 */ stw r0, 0x10(r1)
/* 80218E90 00215DD0  90 01 00 2C */ stw r0, 0x2c(r1)
/* 80218E94 00215DD4  90 01 00 30 */ stw r0, 0x30(r1)
/* 80218E98 00215DD8  80 72 01 20 */ lwz r3, 0x120(r18)
/* 80218E9C 00215DDC  80 63 00 04 */ lwz r3, 4(r3)
/* 80218EA0 00215DE0  88 01 00 30 */ lbz r0, 0x30(r1)
/* 80218EA4 00215DE4  98 03 01 04 */ stb r0, 0x104(r3)
/* 80218EA8 00215DE8  88 01 00 31 */ lbz r0, 0x31(r1)
/* 80218EAC 00215DEC  98 03 01 05 */ stb r0, 0x105(r3)
/* 80218EB0 00215DF0  88 01 00 32 */ lbz r0, 0x32(r1)
/* 80218EB4 00215DF4  98 03 01 06 */ stb r0, 0x106(r3)
/* 80218EB8 00215DF8  88 01 00 33 */ lbz r0, 0x33(r1)
/* 80218EBC 00215DFC  98 03 01 07 */ stb r0, 0x107(r3)
/* 80218EC0 00215E00  88 01 00 2C */ lbz r0, 0x2c(r1)
/* 80218EC4 00215E04  98 03 01 08 */ stb r0, 0x108(r3)
/* 80218EC8 00215E08  88 01 00 2D */ lbz r0, 0x2d(r1)
/* 80218ECC 00215E0C  98 03 01 09 */ stb r0, 0x109(r3)
/* 80218ED0 00215E10  88 01 00 2E */ lbz r0, 0x2e(r1)
/* 80218ED4 00215E14  98 03 01 0A */ stb r0, 0x10a(r3)
/* 80218ED8 00215E18  88 01 00 2F */ lbz r0, 0x2f(r1)
/* 80218EDC 00215E1C  98 03 01 0B */ stb r0, 0x10b(r3)
lbl_80218EE0:
/* 80218EE0 00215E20  88 12 08 5C */ lbz r0, 0x85c(r18)
/* 80218EE4 00215E24  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218EE8 00215E28  38 83 EB C8 */ addi r4, r3, lbl_8042EBC8@l
/* 80218EEC 00215E2C  88 A4 03 00 */ lbz r5, 0x300(r4)
/* 80218EF0 00215E30  7C 00 28 40 */ cmplw r0, r5
/* 80218EF4 00215E34  40 82 00 3C */ bne lbl_80218F30
/* 80218EF8 00215E38  88 72 08 5D */ lbz r3, 0x85d(r18)
/* 80218EFC 00215E3C  88 04 03 01 */ lbz r0, 0x301(r4)
/* 80218F00 00215E40  7C 03 00 40 */ cmplw r3, r0
/* 80218F04 00215E44  40 82 00 2C */ bne lbl_80218F30
/* 80218F08 00215E48  88 72 08 5E */ lbz r3, 0x85e(r18)
/* 80218F0C 00215E4C  88 04 03 02 */ lbz r0, 0x302(r4)
/* 80218F10 00215E50  7C 03 00 40 */ cmplw r3, r0
/* 80218F14 00215E54  40 82 00 1C */ bne lbl_80218F30
/* 80218F18 00215E58  88 72 08 5F */ lbz r3, 0x85f(r18)
/* 80218F1C 00215E5C  88 04 03 03 */ lbz r0, 0x303(r4)
/* 80218F20 00215E60  7C 03 00 40 */ cmplw r3, r0
/* 80218F24 00215E64  40 82 00 0C */ bne lbl_80218F30
/* 80218F28 00215E68  56 60 06 3F */ clrlwi. r0, r19, 0x18
/* 80218F2C 00215E6C  41 82 00 D8 */ beq lbl_80219004
lbl_80218F30:
/* 80218F30 00215E70  98 B2 08 5C */ stb r5, 0x85c(r18)
/* 80218F34 00215E74  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 80218F38 00215E78  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 80218F3C 00215E7C  88 03 03 01 */ lbz r0, 0x301(r3)
/* 80218F40 00215E80  98 12 08 5D */ stb r0, 0x85d(r18)
/* 80218F44 00215E84  88 03 03 02 */ lbz r0, 0x302(r3)
/* 80218F48 00215E88  98 12 08 5E */ stb r0, 0x85e(r18)
/* 80218F4C 00215E8C  88 03 03 03 */ lbz r0, 0x303(r3)
/* 80218F50 00215E90  98 12 08 5F */ stb r0, 0x85f(r18)
/* 80218F54 00215E94  80 04 03 00 */ lwz r0, 0x300(r4)
/* 80218F58 00215E98  90 01 00 0C */ stw r0, 0xc(r1)
/* 80218F5C 00215E9C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80218F60 00215EA0  90 01 00 28 */ stw r0, 0x28(r1)
/* 80218F64 00215EA4  80 72 01 18 */ lwz r3, 0x118(r18)
/* 80218F68 00215EA8  80 63 00 04 */ lwz r3, 4(r3)
/* 80218F6C 00215EAC  88 01 00 28 */ lbz r0, 0x28(r1)
/* 80218F70 00215EB0  98 03 01 04 */ stb r0, 0x104(r3)
/* 80218F74 00215EB4  88 01 00 29 */ lbz r0, 0x29(r1)
/* 80218F78 00215EB8  98 03 01 05 */ stb r0, 0x105(r3)
/* 80218F7C 00215EBC  88 01 00 2A */ lbz r0, 0x2a(r1)
/* 80218F80 00215EC0  98 03 01 06 */ stb r0, 0x106(r3)
/* 80218F84 00215EC4  88 01 00 2B */ lbz r0, 0x2b(r1)
/* 80218F88 00215EC8  98 03 01 07 */ stb r0, 0x107(r3)
/* 80218F8C 00215ECC  88 01 00 24 */ lbz r0, 0x24(r1)
/* 80218F90 00215ED0  98 03 01 08 */ stb r0, 0x108(r3)
/* 80218F94 00215ED4  88 01 00 25 */ lbz r0, 0x25(r1)
/* 80218F98 00215ED8  98 03 01 09 */ stb r0, 0x109(r3)
/* 80218F9C 00215EDC  88 01 00 26 */ lbz r0, 0x26(r1)
/* 80218FA0 00215EE0  98 03 01 0A */ stb r0, 0x10a(r3)
/* 80218FA4 00215EE4  88 01 00 27 */ lbz r0, 0x27(r1)
/* 80218FA8 00215EE8  98 03 01 0B */ stb r0, 0x10b(r3)
/* 80218FAC 00215EEC  80 04 03 00 */ lwz r0, 0x300(r4)
/* 80218FB0 00215EF0  90 01 00 08 */ stw r0, 8(r1)
/* 80218FB4 00215EF4  90 01 00 1C */ stw r0, 0x1c(r1)
/* 80218FB8 00215EF8  90 01 00 20 */ stw r0, 0x20(r1)
/* 80218FBC 00215EFC  80 72 01 1C */ lwz r3, 0x11c(r18)
/* 80218FC0 00215F00  80 63 00 04 */ lwz r3, 4(r3)
/* 80218FC4 00215F04  88 01 00 20 */ lbz r0, 0x20(r1)
/* 80218FC8 00215F08  98 03 01 04 */ stb r0, 0x104(r3)
/* 80218FCC 00215F0C  88 01 00 21 */ lbz r0, 0x21(r1)
/* 80218FD0 00215F10  98 03 01 05 */ stb r0, 0x105(r3)
/* 80218FD4 00215F14  88 01 00 22 */ lbz r0, 0x22(r1)
/* 80218FD8 00215F18  98 03 01 06 */ stb r0, 0x106(r3)
/* 80218FDC 00215F1C  88 01 00 23 */ lbz r0, 0x23(r1)
/* 80218FE0 00215F20  98 03 01 07 */ stb r0, 0x107(r3)
/* 80218FE4 00215F24  88 01 00 1C */ lbz r0, 0x1c(r1)
/* 80218FE8 00215F28  98 03 01 08 */ stb r0, 0x108(r3)
/* 80218FEC 00215F2C  88 01 00 1D */ lbz r0, 0x1d(r1)
/* 80218FF0 00215F30  98 03 01 09 */ stb r0, 0x109(r3)
/* 80218FF4 00215F34  88 01 00 1E */ lbz r0, 0x1e(r1)
/* 80218FF8 00215F38  98 03 01 0A */ stb r0, 0x10a(r3)
/* 80218FFC 00215F3C  88 01 00 1F */ lbz r0, 0x1f(r1)
/* 80219000 00215F40  98 03 01 0B */ stb r0, 0x10b(r3)
lbl_80219004:
/* 80219004 00215F44  39 61 00 A0 */ addi r11, r1, 0xa0
/* 80219008 00215F48  48 14 91 E9 */ bl _restgpr_15
/* 8021900C 00215F4C  80 01 00 A4 */ lwz r0, 0xa4(r1)
/* 80219010 00215F50  7C 08 03 A6 */ mtlr r0
/* 80219014 00215F54  38 21 00 A0 */ addi r1, r1, 0xa0
/* 80219018 00215F58  4E 80 00 20 */ blr
