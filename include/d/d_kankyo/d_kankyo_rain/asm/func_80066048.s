/* 80066048 00062F88  94 21 FE D0 */ stwu r1, -0x130(r1)
/* 8006604C 00062F8C  7C 08 02 A6 */ mflr r0
/* 80066050 00062F90  90 01 01 34 */ stw r0, 0x134(r1)
/* 80066054 00062F94  DB E1 01 20 */ stfd f31, 0x120(r1)
/* 80066058 00062F98  F3 E1 01 28 */ psq_st f31, 296(r1), 0, 0
/* 8006605C 00062F9C  DB C1 01 10 */ stfd f30, 0x110(r1)
/* 80066060 00062FA0  F3 C1 01 18 */ psq_st f30, 280(r1), 0, 0
/* 80066064 00062FA4  DB A1 01 00 */ stfd f29, 0x100(r1)
/* 80066068 00062FA8  F3 A1 01 08 */ psq_st f29, 264(r1), 0, 0
/* 8006606C 00062FAC  DB 81 00 F0 */ stfd f28, 0xf0(r1)
/* 80066070 00062FB0  F3 81 00 F8 */ psq_st f28, 248(r1), 0, 0
/* 80066074 00062FB4  DB 61 00 E0 */ stfd f27, 0xe0(r1)
/* 80066078 00062FB8  F3 61 00 E8 */ psq_st f27, 232(r1), 0, 0
/* 8006607C 00062FBC  39 61 00 E0 */ addi r11, r1, 0xe0
/* 80066080 00062FC0  48 2F C1 55 */ bl _savegpr_27
/* 80066084 00062FC4  7C 7B 1B 78 */ mr r27, r3
/* 80066088 00062FC8  7C 9C 23 78 */ mr r28, r4
/* 8006608C 00062FCC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80066090 00062FD0  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 80066094 00062FD4  83 DF 5D 74 */ lwz r30, 0x5d74(r31)
/* 80066098 00062FD8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8006609C 00062FDC  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 800660A0 00062FE0  83 A3 0E 84 */ lwz r29, 0xe84(r3)
/* 800660A4 00062FE4  80 03 0E 8C */ lwz r0, 0xe8c(r3)
/* 800660A8 00062FE8  2C 00 00 00 */ cmpwi r0, 0
/* 800660AC 00062FEC  40 82 04 50 */ bne lbl_800664FC
/* 800660B0 00062FF0  88 03 12 D8 */ lbz r0, 0x12d8(r3)
/* 800660B4 00062FF4  28 00 00 00 */ cmplwi r0, 0
/* 800660B8 00062FF8  40 82 04 44 */ bne lbl_800664FC
/* 800660BC 00062FFC  80 7F 61 B0 */ lwz r3, 0x61b0(r31)
/* 800660C0 00063000  28 03 00 00 */ cmplwi r3, 0
/* 800660C4 00063004  41 82 04 38 */ beq lbl_800664FC
/* 800660C8 00063008  38 63 01 E0 */ addi r3, r3, 0x1e0
/* 800660CC 0006300C  38 81 00 88 */ addi r4, r1, 0x88
/* 800660D0 00063010  48 2E 04 E1 */ bl PSMTXInverse
/* 800660D4 00063014  48 00 00 08 */ b lbl_800660DC
/* 800660D8 00063018  48 00 04 24 */ b lbl_800664FC
lbl_800660DC:
/* 800660DC 0006301C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800660E0 00063020  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800660E4 00063024  38 63 4E 00 */ addi r3, r3, 0x4e00
/* 800660E8 00063028  3C 80 80 38 */ lis r4, lbl_8037A578@ha
/* 800660EC 0006302C  38 84 A5 78 */ addi r4, r4, lbl_8037A578@l
/* 800660F0 00063030  38 84 00 36 */ addi r4, r4, 0x36
/* 800660F4 00063034  48 30 28 A1 */ bl strcmp
/* 800660F8 00063038  2C 03 00 00 */ cmpwi r3, 0
/* 800660FC 0006303C  40 82 00 5C */ bne lbl_80066158
/* 80066100 00063040  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 80066104 00063044  2C 00 00 01 */ cmpwi r0, 1
/* 80066108 00063048  40 82 00 50 */ bne lbl_80066158
/* 8006610C 0006304C  C0 7E 00 E0 */ lfs f3, 0xe0(r30)
/* 80066110 00063050  C0 02 88 F0 */ lfs f0, lbl_804522F0-_SDA2_BASE_(r2)
/* 80066114 00063054  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 80066118 00063058  41 80 03 E4 */ blt lbl_800664FC
/* 8006611C 0006305C  C0 5E 00 D8 */ lfs f2, 0xd8(r30)
/* 80066120 00063060  C0 02 88 F4 */ lfs f0, lbl_804522F4-_SDA2_BASE_(r2)
/* 80066124 00063064  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80066128 00063068  40 80 00 14 */ bge lbl_8006613C
/* 8006612C 0006306C  C0 3E 00 DC */ lfs f1, 0xdc(r30)
/* 80066130 00063070  C0 02 88 F8 */ lfs f0, lbl_804522F8-_SDA2_BASE_(r2)
/* 80066134 00063074  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80066138 00063078  41 80 03 C4 */ blt lbl_800664FC
lbl_8006613C:
/* 8006613C 0006307C  C0 02 88 FC */ lfs f0, lbl_804522FC-_SDA2_BASE_(r2)
/* 80066140 00063080  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80066144 00063084  40 80 00 14 */ bge lbl_80066158
/* 80066148 00063088  C0 02 89 00 */ lfs f0, lbl_80452300-_SDA2_BASE_(r2)
/* 8006614C 0006308C  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 80066150 00063090  40 81 00 08 */ ble lbl_80066158
/* 80066154 00063094  48 00 03 A8 */ b lbl_800664FC
lbl_80066158:
/* 80066158 00063098  C0 22 88 4C */ lfs f1, lbl_8045224C-_SDA2_BASE_(r2)
/* 8006615C 0006309C  88 7D 37 14 */ lbz r3, 0x3714(r29)
/* 80066160 000630A0  54 60 07 FF */ clrlwi. r0, r3, 0x1f
/* 80066164 000630A4  41 82 00 0C */ beq lbl_80066170
/* 80066168 000630A8  C0 22 87 B8 */ lfs f1, lbl_804521B8-_SDA2_BASE_(r2)
/* 8006616C 000630AC  48 00 00 10 */ b lbl_8006617C
lbl_80066170:
/* 80066170 000630B0  54 60 07 BD */ rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80066174 000630B4  41 82 00 08 */ beq lbl_8006617C
/* 80066178 000630B8  C0 22 87 BC */ lfs f1, lbl_804521BC-_SDA2_BASE_(r2)
lbl_8006617C:
/* 8006617C 000630BC  38 7D 37 04 */ addi r3, r29, 0x3704
/* 80066180 000630C0  C0 42 88 40 */ lfs f2, lbl_80452240-_SDA2_BASE_(r2)
/* 80066184 000630C4  C0 62 89 80 */ lfs f3, lbl_80452380-_SDA2_BASE_(r2)
/* 80066188 000630C8  C0 82 88 38 */ lfs f4, lbl_80452238-_SDA2_BASE_(r2)
/* 8006618C 000630CC  48 20 97 F1 */ bl cLib_addCalc
/* 80066190 000630D0  7F C3 F3 78 */ mr r3, r30
/* 80066194 000630D4  38 81 00 2C */ addi r4, r1, 0x2c
/* 80066198 000630D8  C0 22 8A C4 */ lfs f1, lbl_804524C4-_SDA2_BASE_(r2)
/* 8006619C 000630DC  C0 42 87 D4 */ lfs f2, lbl_804521D4-_SDA2_BASE_(r2)
/* 800661A0 000630E0  4B FF 55 E1 */ bl dKy_set_eyevect_calc
/* 800661A4 000630E4  38 7E 00 D8 */ addi r3, r30, 0xd8
/* 800661A8 000630E8  38 9E 00 E4 */ addi r4, r30, 0xe4
/* 800661AC 000630EC  38 A1 00 20 */ addi r5, r1, 0x20
/* 800661B0 000630F0  4B FF 55 B1 */ bl dKyr_get_vectle_calc
/* 800661B4 000630F4  C0 41 00 24 */ lfs f2, 0x24(r1)
/* 800661B8 000630F8  C0 22 87 B8 */ lfs f1, lbl_804521B8-_SDA2_BASE_(r2)
/* 800661BC 000630FC  FC 02 08 40 */ fcmpo cr0, f2, f1
/* 800661C0 00063100  40 81 00 24 */ ble lbl_800661E4
/* 800661C4 00063104  C0 02 88 3C */ lfs f0, lbl_8045223C-_SDA2_BASE_(r2)
/* 800661C8 00063108  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800661CC 0006310C  40 80 00 1C */ bge lbl_800661E8
/* 800661D0 00063110  C0 22 88 14 */ lfs f1, lbl_80452214-_SDA2_BASE_(r2)
/* 800661D4 00063114  EC 02 00 24 */ fdivs f0, f2, f0
/* 800661D8 00063118  EC 21 00 28 */ fsubs f1, f1, f0
/* 800661DC 0006311C  48 00 00 0C */ b lbl_800661E8
/* 800661E0 00063120  48 00 00 08 */ b lbl_800661E8
lbl_800661E4:
/* 800661E4 00063124  C0 22 88 14 */ lfs f1, lbl_80452214-_SDA2_BASE_(r2)
lbl_800661E8:
/* 800661E8 00063128  38 00 00 B4 */ li r0, 0xb4
/* 800661EC 0006312C  98 01 00 10 */ stb r0, 0x10(r1)
/* 800661F0 00063130  38 00 00 C8 */ li r0, 0xc8
/* 800661F4 00063134  98 01 00 11 */ stb r0, 0x11(r1)
/* 800661F8 00063138  98 01 00 12 */ stb r0, 0x12(r1)
/* 800661FC 0006313C  C0 1D 37 04 */ lfs f0, 0x3704(r29)
/* 80066200 00063140  EC 00 00 72 */ fmuls f0, f0, f1
/* 80066204 00063144  FC 00 00 1E */ fctiwz f0, f0
/* 80066208 00063148  D8 01 00 B8 */ stfd f0, 0xb8(r1)
/* 8006620C 0006314C  80 01 00 BC */ lwz r0, 0xbc(r1)
/* 80066210 00063150  98 01 00 13 */ stb r0, 0x13(r1)
/* 80066214 00063154  38 61 00 38 */ addi r3, r1, 0x38
/* 80066218 00063158  80 9C 00 04 */ lwz r4, 4(r28)
/* 8006621C 0006315C  4B FF 58 09 */ bl dKyr_set_btitex
/* 80066220 00063160  38 60 00 00 */ li r3, 0
/* 80066224 00063164  48 2F 79 0D */ bl GXSetNumChans
/* 80066228 00063168  80 01 00 10 */ lwz r0, 0x10(r1)
/* 8006622C 0006316C  90 01 00 0C */ stw r0, 0xc(r1)
/* 80066230 00063170  38 60 00 01 */ li r3, 1
/* 80066234 00063174  38 81 00 0C */ addi r4, r1, 0xc
/* 80066238 00063178  48 2F 91 45 */ bl GXSetTevColor
/* 8006623C 0006317C  80 01 00 10 */ lwz r0, 0x10(r1)
/* 80066240 00063180  90 01 00 08 */ stw r0, 8(r1)
/* 80066244 00063184  38 60 00 02 */ li r3, 2
/* 80066248 00063188  38 81 00 08 */ addi r4, r1, 8
/* 8006624C 0006318C  48 2F 91 31 */ bl GXSetTevColor
/* 80066250 00063190  38 60 00 01 */ li r3, 1
/* 80066254 00063194  48 2F 5B A9 */ bl GXSetNumTexGens
/* 80066258 00063198  38 60 00 00 */ li r3, 0
/* 8006625C 0006319C  38 80 00 01 */ li r4, 1
/* 80066260 000631A0  38 A0 00 04 */ li r5, 4
/* 80066264 000631A4  38 C0 00 3C */ li r6, 0x3c
/* 80066268 000631A8  38 E0 00 00 */ li r7, 0
/* 8006626C 000631AC  39 00 00 7D */ li r8, 0x7d
/* 80066270 000631B0  48 2F 59 0D */ bl GXSetTexCoordGen2
/* 80066274 000631B4  38 60 00 01 */ li r3, 1
/* 80066278 000631B8  48 2F 96 19 */ bl GXSetNumTevStages
/* 8006627C 000631BC  38 60 00 00 */ li r3, 0
/* 80066280 000631C0  38 80 00 00 */ li r4, 0
/* 80066284 000631C4  38 A0 00 00 */ li r5, 0
/* 80066288 000631C8  38 C0 00 FF */ li r6, 0xff
/* 8006628C 000631CC  48 2F 94 69 */ bl GXSetTevOrder
/* 80066290 000631D0  38 60 00 00 */ li r3, 0
/* 80066294 000631D4  38 80 00 04 */ li r4, 4
/* 80066298 000631D8  38 A0 00 02 */ li r5, 2
/* 8006629C 000631DC  38 C0 00 08 */ li r6, 8
/* 800662A0 000631E0  38 E0 00 0F */ li r7, 0xf
/* 800662A4 000631E4  48 2F 8F 81 */ bl GXSetTevColorIn
/* 800662A8 000631E8  38 60 00 00 */ li r3, 0
/* 800662AC 000631EC  38 80 00 00 */ li r4, 0
/* 800662B0 000631F0  38 A0 00 00 */ li r5, 0
/* 800662B4 000631F4  38 C0 00 00 */ li r6, 0
/* 800662B8 000631F8  38 E0 00 01 */ li r7, 1
/* 800662BC 000631FC  39 00 00 00 */ li r8, 0
/* 800662C0 00063200  48 2F 8F ED */ bl GXSetTevColorOp
/* 800662C4 00063204  38 60 00 00 */ li r3, 0
/* 800662C8 00063208  38 80 00 07 */ li r4, 7
/* 800662CC 0006320C  38 A0 00 01 */ li r5, 1
/* 800662D0 00063210  38 C0 00 04 */ li r6, 4
/* 800662D4 00063214  38 E0 00 07 */ li r7, 7
/* 800662D8 00063218  48 2F 8F 91 */ bl GXSetTevAlphaIn
/* 800662DC 0006321C  38 60 00 00 */ li r3, 0
/* 800662E0 00063220  38 80 00 00 */ li r4, 0
/* 800662E4 00063224  38 A0 00 00 */ li r5, 0
/* 800662E8 00063228  38 C0 00 00 */ li r6, 0
/* 800662EC 0006322C  38 E0 00 01 */ li r7, 1
/* 800662F0 00063230  39 00 00 00 */ li r8, 0
/* 800662F4 00063234  48 2F 90 21 */ bl GXSetTevAlphaOp
/* 800662F8 00063238  38 60 00 01 */ li r3, 1
/* 800662FC 0006323C  38 80 00 04 */ li r4, 4
/* 80066300 00063240  38 A0 00 01 */ li r5, 1
/* 80066304 00063244  38 C0 00 03 */ li r6, 3
/* 80066308 00063248  48 2F 98 E9 */ bl GXSetBlendMode
/* 8006630C 0006324C  38 60 00 04 */ li r3, 4
/* 80066310 00063250  38 80 00 00 */ li r4, 0
/* 80066314 00063254  38 A0 00 01 */ li r5, 1
/* 80066318 00063258  38 C0 00 04 */ li r6, 4
/* 8006631C 0006325C  38 E0 00 00 */ li r7, 0
/* 80066320 00063260  48 2F 93 05 */ bl GXSetAlphaCompare
/* 80066324 00063264  38 60 00 01 */ li r3, 1
/* 80066328 00063268  38 80 00 06 */ li r4, 6
/* 8006632C 0006326C  38 A0 00 00 */ li r5, 0
/* 80066330 00063270  48 2F 99 6D */ bl GXSetZMode
/* 80066334 00063274  38 60 00 01 */ li r3, 1
/* 80066338 00063278  48 2F A2 99 */ bl GXSetClipMode
/* 8006633C 0006327C  38 60 00 00 */ li r3, 0
/* 80066340 00063280  48 2F 8D 95 */ bl GXSetNumIndStages
/* 80066344 00063284  4B FF C7 99 */ bl dKr_cullVtx_Set
/* 80066348 00063288  7F 63 DB 78 */ mr r3, r27
/* 8006634C 0006328C  38 80 00 00 */ li r4, 0
/* 80066350 00063290  48 2F 9E FD */ bl GXLoadPosMtxImm
/* 80066354 00063294  38 60 00 00 */ li r3, 0
/* 80066358 00063298  48 2F 9F 95 */ bl GXSetCurrentMtx
/* 8006635C 0006329C  80 7F 61 B0 */ lwz r3, 0x61b0(r31)
/* 80066360 000632A0  28 03 00 00 */ cmplwi r3, 0
/* 80066364 000632A4  41 82 00 2C */ beq lbl_80066390
/* 80066368 000632A8  C0 23 00 D0 */ lfs f1, 0xd0(r3)
/* 8006636C 000632AC  C0 02 8A 58 */ lfs f0, lbl_80452458-_SDA2_BASE_(r2)
/* 80066370 000632B0  EF C1 00 24 */ fdivs f30, f1, f0
/* 80066374 000632B4  EF DE 07 B2 */ fmuls f30, f30, f30
/* 80066378 000632B8  C0 02 88 14 */ lfs f0, lbl_80452214-_SDA2_BASE_(r2)
/* 8006637C 000632BC  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 80066380 000632C0  4C 41 13 82 */ cror 2, 1, 2
/* 80066384 000632C4  40 82 00 10 */ bne lbl_80066394
/* 80066388 000632C8  FF C0 00 90 */ fmr f30, f0
/* 8006638C 000632CC  48 00 00 08 */ b lbl_80066394
lbl_80066390:
/* 80066390 000632D0  C3 C2 88 40 */ lfs f30, lbl_80452240-_SDA2_BASE_(r2)
lbl_80066394:
/* 80066394 000632D4  3B A0 00 00 */ li r29, 0
/* 80066398 000632D8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8006639C 000632DC  3B 83 CA 54 */ addi r28, r3, lbl_8042CA54@l
/* 800663A0 000632E0  C3 E2 88 90 */ lfs f31, lbl_80452290-_SDA2_BASE_(r2)
/* 800663A4 000632E4  3F 60 CC 01 */ lis r27, 0xcc01
/* 800663A8 000632E8  48 00 01 34 */ b lbl_800664DC
lbl_800663AC:
/* 800663AC 000632EC  C0 22 88 88 */ lfs f1, lbl_80452288-_SDA2_BASE_(r2)
/* 800663B0 000632F0  48 20 15 A5 */ bl cM_rndF
/* 800663B4 000632F4  EC 1F 08 2A */ fadds f0, f31, f1
/* 800663B8 000632F8  EF 7E 00 32 */ fmuls f27, f30, f0
/* 800663BC 000632FC  C0 22 8A C8 */ lfs f1, lbl_804524C8-_SDA2_BASE_(r2)
/* 800663C0 00063300  48 20 15 CD */ bl cM_rndFX
/* 800663C4 00063304  FF 80 08 90 */ fmr f28, f1
/* 800663C8 00063308  C0 22 88 EC */ lfs f1, lbl_804522EC-_SDA2_BASE_(r2)
/* 800663CC 0006330C  48 20 15 C1 */ bl cM_rndFX
/* 800663D0 00063310  FF A0 08 90 */ fmr f29, f1
/* 800663D4 00063314  C0 22 8A C8 */ lfs f1, lbl_804524C8-_SDA2_BASE_(r2)
/* 800663D8 00063318  48 20 15 B5 */ bl cM_rndFX
/* 800663DC 0006331C  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 800663E0 00063320  EC A0 E0 2A */ fadds f5, f0, f28
/* 800663E4 00063324  D0 A1 00 14 */ stfs f5, 0x14(r1)
/* 800663E8 00063328  C0 01 00 30 */ lfs f0, 0x30(r1)
/* 800663EC 0006332C  EC 80 E8 2A */ fadds f4, f0, f29
/* 800663F0 00063330  D0 81 00 18 */ stfs f4, 0x18(r1)
/* 800663F4 00063334  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 800663F8 00063338  EC 60 08 2A */ fadds f3, f0, f1
/* 800663FC 0006333C  D0 61 00 1C */ stfs f3, 0x1c(r1)
/* 80066400 00063340  EC 45 D8 28 */ fsubs f2, f5, f27
/* 80066404 00063344  D0 41 00 58 */ stfs f2, 0x58(r1)
/* 80066408 00063348  D0 81 00 5C */ stfs f4, 0x5c(r1)
/* 8006640C 0006334C  EC 23 D8 28 */ fsubs f1, f3, f27
/* 80066410 00063350  D0 21 00 60 */ stfs f1, 0x60(r1)
/* 80066414 00063354  EC 05 D8 2A */ fadds f0, f5, f27
/* 80066418 00063358  D0 01 00 64 */ stfs f0, 0x64(r1)
/* 8006641C 0006335C  D0 81 00 68 */ stfs f4, 0x68(r1)
/* 80066420 00063360  D0 21 00 6C */ stfs f1, 0x6c(r1)
/* 80066424 00063364  D0 01 00 70 */ stfs f0, 0x70(r1)
/* 80066428 00063368  D0 81 00 74 */ stfs f4, 0x74(r1)
/* 8006642C 0006336C  EC 03 D8 2A */ fadds f0, f3, f27
/* 80066430 00063370  D0 01 00 78 */ stfs f0, 0x78(r1)
/* 80066434 00063374  D0 41 00 7C */ stfs f2, 0x7c(r1)
/* 80066438 00063378  D0 81 00 80 */ stfs f4, 0x80(r1)
/* 8006643C 0006337C  D0 01 00 84 */ stfs f0, 0x84(r1)
/* 80066440 00063380  38 60 00 80 */ li r3, 0x80
/* 80066444 00063384  38 80 00 00 */ li r4, 0
/* 80066448 00063388  38 A0 00 04 */ li r5, 4
/* 8006644C 0006338C  48 2F 63 19 */ bl GXBegin
/* 80066450 00063390  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 80066454 00063394  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 80066458 00063398  C0 01 00 5C */ lfs f0, 0x5c(r1)
/* 8006645C 0006339C  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 80066460 000633A0  C0 01 00 60 */ lfs f0, 0x60(r1)
/* 80066464 000633A4  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 80066468 000633A8  38 60 00 00 */ li r3, 0
/* 8006646C 000633AC  B0 7B 80 00 */ sth r3, -0x8000(r27)
/* 80066470 000633B0  B0 7B 80 00 */ sth r3, -0x8000(r27)
/* 80066474 000633B4  C0 01 00 64 */ lfs f0, 0x64(r1)
/* 80066478 000633B8  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 8006647C 000633BC  C0 01 00 68 */ lfs f0, 0x68(r1)
/* 80066480 000633C0  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 80066484 000633C4  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 80066488 000633C8  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 8006648C 000633CC  38 00 01 FF */ li r0, 0x1ff
/* 80066490 000633D0  B0 1B 80 00 */ sth r0, -0x8000(r27)
/* 80066494 000633D4  B0 7B 80 00 */ sth r3, -0x8000(r27)
/* 80066498 000633D8  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 8006649C 000633DC  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 800664A0 000633E0  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 800664A4 000633E4  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 800664A8 000633E8  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 800664AC 000633EC  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 800664B0 000633F0  B0 1B 80 00 */ sth r0, -0x8000(r27)
/* 800664B4 000633F4  B0 1B 80 00 */ sth r0, -0x8000(r27)
/* 800664B8 000633F8  C0 01 00 7C */ lfs f0, 0x7c(r1)
/* 800664BC 000633FC  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 800664C0 00063400  C0 01 00 80 */ lfs f0, 0x80(r1)
/* 800664C4 00063404  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 800664C8 00063408  C0 01 00 84 */ lfs f0, 0x84(r1)
/* 800664CC 0006340C  D0 1B 80 00 */ stfs f0, -0x8000(r27)
/* 800664D0 00063410  B0 7B 80 00 */ sth r3, -0x8000(r27)
/* 800664D4 00063414  B0 1B 80 00 */ sth r0, -0x8000(r27)
/* 800664D8 00063418  3B BD 00 01 */ addi r29, r29, 1
lbl_800664DC:
/* 800664DC 0006341C  80 1C 0E 80 */ lwz r0, 0xe80(r28)
/* 800664E0 00063420  7C 00 0E 70 */ srawi r0, r0, 1
/* 800664E4 00063424  7C 1D 00 00 */ cmpw r29, r0
/* 800664E8 00063428  41 80 FE C4 */ blt lbl_800663AC
/* 800664EC 0006342C  38 60 00 00 */ li r3, 0
/* 800664F0 00063430  48 2F A0 E1 */ bl GXSetClipMode
/* 800664F4 00063434  38 00 00 00 */ li r0, 0
/* 800664F8 00063438  90 0D 90 50 */ stw r0, lbl_804515D0-_SDA_BASE_(r13)
lbl_800664FC:
/* 800664FC 0006343C  E3 E1 01 28 */ psq_l f31, 296(r1), 0, 0
/* 80066500 00063440  CB E1 01 20 */ lfd f31, 0x120(r1)
/* 80066504 00063444  E3 C1 01 18 */ psq_l f30, 280(r1), 0, 0
/* 80066508 00063448  CB C1 01 10 */ lfd f30, 0x110(r1)
/* 8006650C 0006344C  E3 A1 01 08 */ psq_l f29, 264(r1), 0, 0
/* 80066510 00063450  CB A1 01 00 */ lfd f29, 0x100(r1)
/* 80066514 00063454  E3 81 00 F8 */ psq_l f28, 248(r1), 0, 0
/* 80066518 00063458  CB 81 00 F0 */ lfd f28, 0xf0(r1)
/* 8006651C 0006345C  E3 61 00 E8 */ psq_l f27, 232(r1), 0, 0
/* 80066520 00063460  CB 61 00 E0 */ lfd f27, 0xe0(r1)
/* 80066524 00063464  39 61 00 E0 */ addi r11, r1, 0xe0
/* 80066528 00063468  48 2F BC F9 */ bl _restgpr_27
/* 8006652C 0006346C  80 01 01 34 */ lwz r0, 0x134(r1)
/* 80066530 00063470  7C 08 03 A6 */ mtlr r0
/* 80066534 00063474  38 21 01 30 */ addi r1, r1, 0x130
/* 80066538 00063478  4E 80 00 20 */ blr
