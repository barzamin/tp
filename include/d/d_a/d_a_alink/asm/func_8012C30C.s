/* 8012C30C 0012924C  94 21 FE B0 */ stwu r1, -0x150(r1)
/* 8012C310 00129250  7C 08 02 A6 */ mflr r0
/* 8012C314 00129254  90 01 01 54 */ stw r0, 0x154(r1)
/* 8012C318 00129258  DB E1 01 40 */ stfd f31, 0x140(r1)
/* 8012C31C 0012925C  F3 E1 01 48 */ psq_st f31, 328(r1), 0, 0
/* 8012C320 00129260  DB C1 01 30 */ stfd f30, 0x130(r1)
/* 8012C324 00129264  F3 C1 01 38 */ psq_st f30, 312(r1), 0, 0
/* 8012C328 00129268  DB A1 01 20 */ stfd f29, 0x120(r1)
/* 8012C32C 0012926C  F3 A1 01 28 */ psq_st f29, 296(r1), 0, 0
/* 8012C330 00129270  DB 81 01 10 */ stfd f28, 0x110(r1)
/* 8012C334 00129274  F3 81 01 18 */ psq_st f28, 280(r1), 0, 0
/* 8012C338 00129278  DB 61 01 00 */ stfd f27, 0x100(r1)
/* 8012C33C 0012927C  F3 61 01 08 */ psq_st f27, 264(r1), 0, 0
/* 8012C340 00129280  DB 41 00 F0 */ stfd f26, 0xf0(r1)
/* 8012C344 00129284  F3 41 00 F8 */ psq_st f26, 248(r1), 0, 0
/* 8012C348 00129288  39 61 00 F0 */ addi r11, r1, 0xf0
/* 8012C34C 0012928C  48 23 5E 59 */ bl _savegpr_15
/* 8012C350 00129290  7C 7C 1B 78 */ mr r28, r3
/* 8012C354 00129294  88 03 2F BF */ lbz r0, 0x2fbf(r3)
/* 8012C358 00129298  28 00 00 00 */ cmplwi r0, 0
/* 8012C35C 0012929C  40 82 07 68 */ bne lbl_8012CAC4
/* 8012C360 001292A0  3B DC 36 3C */ addi r30, r28, 0x363c
/* 8012C364 001292A4  3B BC 36 6C */ addi r29, r28, 0x366c
/* 8012C368 001292A8  3B FC 31 42 */ addi r31, r28, 0x3142
/* 8012C36C 001292AC  80 1C 05 88 */ lwz r0, 0x588(r28)
/* 8012C370 001292B0  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 8012C374 001292B4  41 82 00 38 */ beq lbl_8012C3AC
/* 8012C378 001292B8  3C 60 80 43 */ lis r3, lbl_80430CF4@ha
/* 8012C37C 001292BC  38 63 0C F4 */ addi r3, r3, lbl_80430CF4@l
/* 8012C380 001292C0  38 00 00 04 */ li r0, 4
/* 8012C384 001292C4  7C 09 03 A6 */ mtctr r0
lbl_8012C388:
/* 8012C388 001292C8  C0 03 00 00 */ lfs f0, 0(r3)
/* 8012C38C 001292CC  D0 1D 00 00 */ stfs f0, 0(r29)
/* 8012C390 001292D0  C0 03 00 04 */ lfs f0, 4(r3)
/* 8012C394 001292D4  D0 1D 00 04 */ stfs f0, 4(r29)
/* 8012C398 001292D8  C0 03 00 08 */ lfs f0, 8(r3)
/* 8012C39C 001292DC  D0 1D 00 08 */ stfs f0, 8(r29)
/* 8012C3A0 001292E0  3B BD 00 0C */ addi r29, r29, 0xc
/* 8012C3A4 001292E4  42 00 FF E4 */ bdnz lbl_8012C388
/* 8012C3A8 001292E8  3B BC 36 6C */ addi r29, r28, 0x366c
lbl_8012C3AC:
/* 8012C3AC 001292EC  80 7C 06 50 */ lwz r3, 0x650(r28)
/* 8012C3B0 001292F0  80 63 00 84 */ lwz r3, 0x84(r3)
/* 8012C3B4 001292F4  80 63 00 0C */ lwz r3, 0xc(r3)
/* 8012C3B8 001292F8  38 63 03 30 */ addi r3, r3, 0x330
/* 8012C3BC 001292FC  3C 80 80 39 */ lis r4, lbl_80391E30@ha
/* 8012C3C0 00129300  38 84 1E 30 */ addi r4, r4, lbl_80391E30@l
/* 8012C3C4 00129304  38 A1 00 7C */ addi r5, r1, 0x7c
/* 8012C3C8 00129308  48 21 A9 A5 */ bl PSMTXMultVec
/* 8012C3CC 0012930C  80 7C 06 50 */ lwz r3, 0x650(r28)
/* 8012C3D0 00129310  80 63 00 84 */ lwz r3, 0x84(r3)
/* 8012C3D4 00129314  80 63 00 0C */ lwz r3, 0xc(r3)
/* 8012C3D8 00129318  38 63 03 30 */ addi r3, r3, 0x330
/* 8012C3DC 0012931C  3C 80 80 43 */ lis r4, lbl_80430D3C@ha
/* 8012C3E0 00129320  38 84 0D 3C */ addi r4, r4, lbl_80430D3C@l
/* 8012C3E4 00129324  38 A1 00 70 */ addi r5, r1, 0x70
/* 8012C3E8 00129328  48 21 AA 65 */ bl PSMTXMultVecSR
/* 8012C3EC 0012932C  38 61 00 70 */ addi r3, r1, 0x70
/* 8012C3F0 00129330  48 13 AD 39 */ bl cXyz_NS_atan2sX_Z
/* 8012C3F4 00129334  7C 70 1B 78 */ mr r16, r3
/* 8012C3F8 00129338  38 61 00 70 */ addi r3, r1, 0x70
/* 8012C3FC 0012933C  48 13 AD 55 */ bl cXyz_NS_atan2sY_XZ
/* 8012C400 00129340  7C 6F 1B 78 */ mr r15, r3
/* 8012C404 00129344  80 7C 06 50 */ lwz r3, 0x650(r28)
/* 8012C408 00129348  80 63 00 84 */ lwz r3, 0x84(r3)
/* 8012C40C 0012934C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 8012C410 00129350  38 63 03 30 */ addi r3, r3, 0x330
/* 8012C414 00129354  3C 80 80 43 */ lis r4, lbl_80430D24@ha
/* 8012C418 00129358  38 84 0D 24 */ addi r4, r4, lbl_80430D24@l
/* 8012C41C 0012935C  38 A1 00 70 */ addi r5, r1, 0x70
/* 8012C420 00129360  48 21 AA 2D */ bl PSMTXMultVecSR
/* 8012C424 00129364  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 8012C428 00129368  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8012C42C 0012936C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012C430 00129370  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8012C434 00129374  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 8012C438 00129378  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 8012C43C 0012937C  38 61 00 1C */ addi r3, r1, 0x1c
/* 8012C440 00129380  48 21 AC F9 */ bl PSVECSquareMag
/* 8012C444 00129384  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012C448 00129388  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012C44C 0012938C  40 81 00 58 */ ble lbl_8012C4A4
/* 8012C450 00129390  FC 00 08 34 */ frsqrte f0, f1
/* 8012C454 00129394  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 8012C458 00129398  FC 44 00 32 */ fmul f2, f4, f0
/* 8012C45C 0012939C  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 8012C460 001293A0  FC 00 00 32 */ fmul f0, f0, f0
/* 8012C464 001293A4  FC 01 00 32 */ fmul f0, f1, f0
/* 8012C468 001293A8  FC 03 00 28 */ fsub f0, f3, f0
/* 8012C46C 001293AC  FC 02 00 32 */ fmul f0, f2, f0
/* 8012C470 001293B0  FC 44 00 32 */ fmul f2, f4, f0
/* 8012C474 001293B4  FC 00 00 32 */ fmul f0, f0, f0
/* 8012C478 001293B8  FC 01 00 32 */ fmul f0, f1, f0
/* 8012C47C 001293BC  FC 03 00 28 */ fsub f0, f3, f0
/* 8012C480 001293C0  FC 02 00 32 */ fmul f0, f2, f0
/* 8012C484 001293C4  FC 44 00 32 */ fmul f2, f4, f0
/* 8012C488 001293C8  FC 00 00 32 */ fmul f0, f0, f0
/* 8012C48C 001293CC  FC 01 00 32 */ fmul f0, f1, f0
/* 8012C490 001293D0  FC 03 00 28 */ fsub f0, f3, f0
/* 8012C494 001293D4  FC 02 00 32 */ fmul f0, f2, f0
/* 8012C498 001293D8  FC 41 00 32 */ fmul f2, f1, f0
/* 8012C49C 001293DC  FC 40 10 18 */ frsp f2, f2
/* 8012C4A0 001293E0  48 00 00 90 */ b lbl_8012C530
lbl_8012C4A4:
/* 8012C4A4 001293E4  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 8012C4A8 001293E8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012C4AC 001293EC  40 80 00 10 */ bge lbl_8012C4BC
/* 8012C4B0 001293F0  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8012C4B4 001293F4  C0 43 0A E0 */ lfs f2, lbl_80450AE0@l(r3)
/* 8012C4B8 001293F8  48 00 00 78 */ b lbl_8012C530
lbl_8012C4BC:
/* 8012C4BC 001293FC  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 8012C4C0 00129400  80 81 00 0C */ lwz r4, 0xc(r1)
/* 8012C4C4 00129404  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8012C4C8 00129408  3C 00 7F 80 */ lis r0, 0x7f80
/* 8012C4CC 0012940C  7C 03 00 00 */ cmpw r3, r0
/* 8012C4D0 00129410  41 82 00 14 */ beq lbl_8012C4E4
/* 8012C4D4 00129414  40 80 00 40 */ bge lbl_8012C514
/* 8012C4D8 00129418  2C 03 00 00 */ cmpwi r3, 0
/* 8012C4DC 0012941C  41 82 00 20 */ beq lbl_8012C4FC
/* 8012C4E0 00129420  48 00 00 34 */ b lbl_8012C514
lbl_8012C4E4:
/* 8012C4E4 00129424  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8012C4E8 00129428  41 82 00 0C */ beq lbl_8012C4F4
/* 8012C4EC 0012942C  38 00 00 01 */ li r0, 1
/* 8012C4F0 00129430  48 00 00 28 */ b lbl_8012C518
lbl_8012C4F4:
/* 8012C4F4 00129434  38 00 00 02 */ li r0, 2
/* 8012C4F8 00129438  48 00 00 20 */ b lbl_8012C518
lbl_8012C4FC:
/* 8012C4FC 0012943C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8012C500 00129440  41 82 00 0C */ beq lbl_8012C50C
/* 8012C504 00129444  38 00 00 05 */ li r0, 5
/* 8012C508 00129448  48 00 00 10 */ b lbl_8012C518
lbl_8012C50C:
/* 8012C50C 0012944C  38 00 00 03 */ li r0, 3
/* 8012C510 00129450  48 00 00 08 */ b lbl_8012C518
lbl_8012C514:
/* 8012C514 00129454  38 00 00 04 */ li r0, 4
lbl_8012C518:
/* 8012C518 00129458  2C 00 00 01 */ cmpwi r0, 1
/* 8012C51C 0012945C  40 82 00 10 */ bne lbl_8012C52C
/* 8012C520 00129460  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8012C524 00129464  C0 43 0A E0 */ lfs f2, lbl_80450AE0@l(r3)
/* 8012C528 00129468  48 00 00 08 */ b lbl_8012C530
lbl_8012C52C:
/* 8012C52C 0012946C  FC 40 08 90 */ fmr f2, f1
lbl_8012C530:
/* 8012C530 00129470  C0 21 00 74 */ lfs f1, 0x74(r1)
/* 8012C534 00129474  48 13 B1 41 */ bl cM_atan2s
/* 8012C538 00129478  38 03 40 00 */ addi r0, r3, 0x4000
/* 8012C53C 0012947C  7C 1B 07 34 */ extsh r27, r0
/* 8012C540 00129480  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 8012C544 00129484  54 00 02 95 */ rlwinm. r0, r0, 0, 0xa, 0xa
/* 8012C548 00129488  40 82 01 04 */ bne lbl_8012C64C
/* 8012C54C 0012948C  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 8012C550 00129490  64 00 00 20 */ oris r0, r0, 0x20
/* 8012C554 00129494  90 1C 05 74 */ stw r0, 0x574(r28)
/* 8012C558 00129498  38 61 00 7C */ addi r3, r1, 0x7c
/* 8012C55C 0012949C  4B EE 08 09 */ bl mDoMtx_stack_c_NS_transS
/* 8012C560 001294A0  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012C564 001294A4  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8012C568 001294A8  38 80 E0 00 */ li r4, -8192
/* 8012C56C 001294AC  7E 05 83 78 */ mr r5, r16
/* 8012C570 001294B0  38 C0 00 00 */ li r6, 0
/* 8012C574 001294B4  4B ED FD 2D */ bl mDoMtx_ZXYrotM
/* 8012C578 001294B8  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012C57C 001294BC  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8012C580 001294C0  3C 80 80 39 */ lis r4, lbl_80391E3C@ha
/* 8012C584 001294C4  38 84 1E 3C */ addi r4, r4, lbl_80391E3C@l
/* 8012C588 001294C8  7F C5 F3 78 */ mr r5, r30
/* 8012C58C 001294CC  48 21 A7 E1 */ bl PSMTXMultVec
/* 8012C590 001294D0  38 00 E0 00 */ li r0, -8192
/* 8012C594 001294D4  B0 1F 00 00 */ sth r0, 0(r31)
/* 8012C598 001294D8  B2 1F 00 02 */ sth r16, 2(r31)
/* 8012C59C 001294DC  B3 7F 00 04 */ sth r27, 4(r31)
/* 8012C5A0 001294E0  3C 60 80 43 */ lis r3, lbl_80430CF4@ha
/* 8012C5A4 001294E4  38 83 0C F4 */ addi r4, r3, lbl_80430CF4@l
/* 8012C5A8 001294E8  C0 04 00 00 */ lfs f0, 0(r4)
/* 8012C5AC 001294EC  D0 1D 00 00 */ stfs f0, 0(r29)
/* 8012C5B0 001294F0  C0 04 00 04 */ lfs f0, 4(r4)
/* 8012C5B4 001294F4  D0 1D 00 04 */ stfs f0, 4(r29)
/* 8012C5B8 001294F8  C0 04 00 08 */ lfs f0, 8(r4)
/* 8012C5BC 001294FC  D0 1D 00 08 */ stfs f0, 8(r29)
/* 8012C5C0 00129500  C0 22 93 34 */ lfs f1, lbl_80452D34-_SDA2_BASE_(r2)
/* 8012C5C4 00129504  38 00 00 03 */ li r0, 3
/* 8012C5C8 00129508  7C 09 03 A6 */ mtctr r0
/* 8012C5CC 0012950C  3B DE 00 0C */ addi r30, r30, 0xc
/* 8012C5D0 00129510  3B BD 00 0C */ addi r29, r29, 0xc
/* 8012C5D4 00129514  3B FF 00 06 */ addi r31, r31, 6
lbl_8012C5D8:
/* 8012C5D8 00129518  C0 1E FF F4 */ lfs f0, -0xc(r30)
/* 8012C5DC 0012951C  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8012C5E0 00129520  C0 1E FF F8 */ lfs f0, -8(r30)
/* 8012C5E4 00129524  D0 1E 00 04 */ stfs f0, 4(r30)
/* 8012C5E8 00129528  C0 1E FF FC */ lfs f0, -4(r30)
/* 8012C5EC 0012952C  D0 1E 00 08 */ stfs f0, 8(r30)
/* 8012C5F0 00129530  C0 1E 00 04 */ lfs f0, 4(r30)
/* 8012C5F4 00129534  EC 00 08 28 */ fsubs f0, f0, f1
/* 8012C5F8 00129538  D0 1E 00 04 */ stfs f0, 4(r30)
/* 8012C5FC 0012953C  A8 1F FF FA */ lha r0, -6(r31)
/* 8012C600 00129540  B0 1F 00 00 */ sth r0, 0(r31)
/* 8012C604 00129544  A8 1F FF FC */ lha r0, -4(r31)
/* 8012C608 00129548  B0 1F 00 02 */ sth r0, 2(r31)
/* 8012C60C 0012954C  A8 1F FF FE */ lha r0, -2(r31)
/* 8012C610 00129550  B0 1F 00 04 */ sth r0, 4(r31)
/* 8012C614 00129554  A8 7F 00 04 */ lha r3, 4(r31)
/* 8012C618 00129558  38 03 40 00 */ addi r0, r3, 0x4000
/* 8012C61C 0012955C  B0 1F 00 04 */ sth r0, 4(r31)
/* 8012C620 00129560  C0 04 00 00 */ lfs f0, 0(r4)
/* 8012C624 00129564  D0 1D 00 00 */ stfs f0, 0(r29)
/* 8012C628 00129568  C0 04 00 04 */ lfs f0, 4(r4)
/* 8012C62C 0012956C  D0 1D 00 04 */ stfs f0, 4(r29)
/* 8012C630 00129570  C0 04 00 08 */ lfs f0, 8(r4)
/* 8012C634 00129574  D0 1D 00 08 */ stfs f0, 8(r29)
/* 8012C638 00129578  3B DE 00 0C */ addi r30, r30, 0xc
/* 8012C63C 0012957C  3B BD 00 0C */ addi r29, r29, 0xc
/* 8012C640 00129580  3B FF 00 06 */ addi r31, r31, 6
/* 8012C644 00129584  42 00 FF 94 */ bdnz lbl_8012C5D8
/* 8012C648 00129588  48 00 04 0C */ b lbl_8012CA54
lbl_8012C64C:
/* 8012C64C 0012958C  3A A0 00 00 */ li r21, 0
/* 8012C650 00129590  3C 60 80 43 */ lis r3, lbl_80430CF4@ha
/* 8012C654 00129594  3B 43 0C F4 */ addi r26, r3, lbl_80430CF4@l
/* 8012C658 00129598  7E 17 07 34 */ extsh r23, r16
/* 8012C65C 0012959C  3A 37 20 00 */ addi r17, r23, 0x2000
/* 8012C660 001295A0  3A 77 E0 00 */ addi r19, r23, -8192
/* 8012C664 001295A4  7D F6 07 34 */ extsh r22, r15
/* 8012C668 001295A8  3A 96 20 00 */ addi r20, r22, 0x2000
/* 8012C66C 001295AC  3B 36 E0 00 */ addi r25, r22, -8192
/* 8012C670 001295B0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8012C674 001295B4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8012C678 001295B8  3B 03 0F 38 */ addi r24, r3, 0xf38
/* 8012C67C 001295BC  C3 C2 97 5C */ lfs f30, lbl_8045315C-_SDA2_BASE_(r2)
/* 8012C680 001295C0  C3 E2 92 C0 */ lfs f31, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8012C684 001295C4  C3 62 92 B8 */ lfs f27, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8012C688 001295C8  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012C68C 001295CC  3A 03 D4 70 */ addi r16, r3, lbl_803DD470@l
/* 8012C690 001295D0  3C 60 80 39 */ lis r3, lbl_80391E3C@ha
/* 8012C694 001295D4  39 E3 1E 3C */ addi r15, r3, lbl_80391E3C@l
/* 8012C698 001295D8  C3 82 93 30 */ lfs f28, lbl_80452D30-_SDA2_BASE_(r2)
/* 8012C69C 001295DC  C3 A2 92 C4 */ lfs f29, lbl_80452CC4-_SDA2_BASE_(r2)
lbl_8012C6A0:
/* 8012C6A0 001295E0  C0 1E 00 00 */ lfs f0, 0(r30)
/* 8012C6A4 001295E4  D0 01 00 64 */ stfs f0, 0x64(r1)
/* 8012C6A8 001295E8  C0 1E 00 04 */ lfs f0, 4(r30)
/* 8012C6AC 001295EC  D0 01 00 68 */ stfs f0, 0x68(r1)
/* 8012C6B0 001295F0  C0 1E 00 08 */ lfs f0, 8(r30)
/* 8012C6B4 001295F4  D0 01 00 6C */ stfs f0, 0x6c(r1)
/* 8012C6B8 001295F8  80 1C 05 88 */ lwz r0, 0x588(r28)
/* 8012C6BC 001295FC  54 00 02 11 */ rlwinm. r0, r0, 0, 8, 8
/* 8012C6C0 00129600  41 82 00 24 */ beq lbl_8012C6E4
/* 8012C6C4 00129604  3C 60 80 43 */ lis r3, lbl_80430CF4@ha
/* 8012C6C8 00129608  C0 03 0C F4 */ lfs f0, lbl_80430CF4@l(r3)
/* 8012C6CC 0012960C  D0 01 00 70 */ stfs f0, 0x70(r1)
/* 8012C6D0 00129610  C0 1A 00 04 */ lfs f0, 4(r26)
/* 8012C6D4 00129614  D0 01 00 74 */ stfs f0, 0x74(r1)
/* 8012C6D8 00129618  C0 1A 00 08 */ lfs f0, 8(r26)
/* 8012C6DC 0012961C  D0 01 00 78 */ stfs f0, 0x78(r1)
/* 8012C6E0 00129620  48 00 00 3C */ b lbl_8012C71C
lbl_8012C6E4:
/* 8012C6E4 00129624  38 61 00 4C */ addi r3, r1, 0x4c
/* 8012C6E8 00129628  7F C4 F3 78 */ mr r4, r30
/* 8012C6EC 0012962C  38 A1 00 7C */ addi r5, r1, 0x7c
/* 8012C6F0 00129630  48 13 A4 45 */ bl cXyz_NS___mi
/* 8012C6F4 00129634  38 61 00 40 */ addi r3, r1, 0x40
/* 8012C6F8 00129638  38 81 00 4C */ addi r4, r1, 0x4c
/* 8012C6FC 0012963C  7F A5 EB 78 */ mr r5, r29
/* 8012C700 00129640  48 13 A3 E5 */ bl cXyz_NS___pl
/* 8012C704 00129644  C0 01 00 40 */ lfs f0, 0x40(r1)
/* 8012C708 00129648  D0 01 00 70 */ stfs f0, 0x70(r1)
/* 8012C70C 0012964C  C0 01 00 44 */ lfs f0, 0x44(r1)
/* 8012C710 00129650  D0 01 00 74 */ stfs f0, 0x74(r1)
/* 8012C714 00129654  C0 01 00 48 */ lfs f0, 0x48(r1)
/* 8012C718 00129658  D0 01 00 78 */ stfs f0, 0x78(r1)
lbl_8012C71C:
/* 8012C71C 0012965C  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 8012C720 00129660  EC 00 F0 2A */ fadds f0, f0, f30
/* 8012C724 00129664  D0 01 00 74 */ stfs f0, 0x74(r1)
/* 8012C728 00129668  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 8012C72C 0012966C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8012C730 00129670  D3 E1 00 14 */ stfs f31, 0x14(r1)
/* 8012C734 00129674  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 8012C738 00129678  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8012C73C 0012967C  38 61 00 10 */ addi r3, r1, 0x10
/* 8012C740 00129680  48 21 A9 F9 */ bl PSVECSquareMag
/* 8012C744 00129684  FC 01 F8 40 */ fcmpo cr0, f1, f31
/* 8012C748 00129688  40 81 00 58 */ ble lbl_8012C7A0
/* 8012C74C 0012968C  FC 00 08 34 */ frsqrte f0, f1
/* 8012C750 00129690  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 8012C754 00129694  FC 44 00 32 */ fmul f2, f4, f0
/* 8012C758 00129698  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 8012C75C 0012969C  FC 00 00 32 */ fmul f0, f0, f0
/* 8012C760 001296A0  FC 01 00 32 */ fmul f0, f1, f0
/* 8012C764 001296A4  FC 03 00 28 */ fsub f0, f3, f0
/* 8012C768 001296A8  FC 02 00 32 */ fmul f0, f2, f0
/* 8012C76C 001296AC  FC 44 00 32 */ fmul f2, f4, f0
/* 8012C770 001296B0  FC 00 00 32 */ fmul f0, f0, f0
/* 8012C774 001296B4  FC 01 00 32 */ fmul f0, f1, f0
/* 8012C778 001296B8  FC 03 00 28 */ fsub f0, f3, f0
/* 8012C77C 001296BC  FC 02 00 32 */ fmul f0, f2, f0
/* 8012C780 001296C0  FC 44 00 32 */ fmul f2, f4, f0
/* 8012C784 001296C4  FC 00 00 32 */ fmul f0, f0, f0
/* 8012C788 001296C8  FC 01 00 32 */ fmul f0, f1, f0
/* 8012C78C 001296CC  FC 03 00 28 */ fsub f0, f3, f0
/* 8012C790 001296D0  FC 02 00 32 */ fmul f0, f2, f0
/* 8012C794 001296D4  FF 41 00 32 */ fmul f26, f1, f0
/* 8012C798 001296D8  FF 40 D0 18 */ frsp f26, f26
/* 8012C79C 001296DC  48 00 00 90 */ b lbl_8012C82C
lbl_8012C7A0:
/* 8012C7A0 001296E0  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 8012C7A4 001296E4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012C7A8 001296E8  40 80 00 10 */ bge lbl_8012C7B8
/* 8012C7AC 001296EC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8012C7B0 001296F0  C3 43 0A E0 */ lfs f26, lbl_80450AE0@l(r3)
/* 8012C7B4 001296F4  48 00 00 78 */ b lbl_8012C82C
lbl_8012C7B8:
/* 8012C7B8 001296F8  D0 21 00 08 */ stfs f1, 8(r1)
/* 8012C7BC 001296FC  80 81 00 08 */ lwz r4, 8(r1)
/* 8012C7C0 00129700  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8012C7C4 00129704  3C 00 7F 80 */ lis r0, 0x7f80
/* 8012C7C8 00129708  7C 03 00 00 */ cmpw r3, r0
/* 8012C7CC 0012970C  41 82 00 14 */ beq lbl_8012C7E0
/* 8012C7D0 00129710  40 80 00 40 */ bge lbl_8012C810
/* 8012C7D4 00129714  2C 03 00 00 */ cmpwi r3, 0
/* 8012C7D8 00129718  41 82 00 20 */ beq lbl_8012C7F8
/* 8012C7DC 0012971C  48 00 00 34 */ b lbl_8012C810
lbl_8012C7E0:
/* 8012C7E0 00129720  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8012C7E4 00129724  41 82 00 0C */ beq lbl_8012C7F0
/* 8012C7E8 00129728  38 00 00 01 */ li r0, 1
/* 8012C7EC 0012972C  48 00 00 28 */ b lbl_8012C814
lbl_8012C7F0:
/* 8012C7F0 00129730  38 00 00 02 */ li r0, 2
/* 8012C7F4 00129734  48 00 00 20 */ b lbl_8012C814
lbl_8012C7F8:
/* 8012C7F8 00129738  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8012C7FC 0012973C  41 82 00 0C */ beq lbl_8012C808
/* 8012C800 00129740  38 00 00 05 */ li r0, 5
/* 8012C804 00129744  48 00 00 10 */ b lbl_8012C814
lbl_8012C808:
/* 8012C808 00129748  38 00 00 03 */ li r0, 3
/* 8012C80C 0012974C  48 00 00 08 */ b lbl_8012C814
lbl_8012C810:
/* 8012C810 00129750  38 00 00 04 */ li r0, 4
lbl_8012C814:
/* 8012C814 00129754  2C 00 00 01 */ cmpwi r0, 1
/* 8012C818 00129758  40 82 00 10 */ bne lbl_8012C828
/* 8012C81C 0012975C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8012C820 00129760  C3 43 0A E0 */ lfs f26, lbl_80450AE0@l(r3)
/* 8012C824 00129764  48 00 00 08 */ b lbl_8012C82C
lbl_8012C828:
/* 8012C828 00129768  FF 40 08 90 */ fmr f26, f1
lbl_8012C82C:
/* 8012C82C 0012976C  C0 21 00 74 */ lfs f1, 0x74(r1)
/* 8012C830 00129770  FC 40 D0 90 */ fmr f2, f26
/* 8012C834 00129774  48 13 AE 41 */ bl cM_atan2s
/* 8012C838 00129778  7C 72 1B 78 */ mr r18, r3
/* 8012C83C 0012977C  FC 1A D8 40 */ fcmpo cr0, f26, f27
/* 8012C840 00129780  40 80 00 0C */ bge lbl_8012C84C
/* 8012C844 00129784  A8 7F 00 02 */ lha r3, 2(r31)
/* 8012C848 00129788  48 00 00 18 */ b lbl_8012C860
lbl_8012C84C:
/* 8012C84C 0012978C  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 8012C850 00129790  FC 20 00 50 */ fneg f1, f0
/* 8012C854 00129794  C0 01 00 78 */ lfs f0, 0x78(r1)
/* 8012C858 00129798  FC 40 00 50 */ fneg f2, f0
/* 8012C85C 0012979C  48 13 AE 19 */ bl cM_atan2s
lbl_8012C860:
/* 8012C860 001297A0  2C 15 00 00 */ cmpwi r21, 0
/* 8012C864 001297A4  40 82 00 4C */ bne lbl_8012C8B0
/* 8012C868 001297A8  7C 17 18 50 */ subf r0, r23, r3
/* 8012C86C 001297AC  7C 00 07 34 */ extsh r0, r0
/* 8012C870 001297B0  2C 00 20 00 */ cmpwi r0, 0x2000
/* 8012C874 001297B4  40 81 00 0C */ ble lbl_8012C880
/* 8012C878 001297B8  7E 23 07 34 */ extsh r3, r17
/* 8012C87C 001297BC  48 00 00 10 */ b lbl_8012C88C
lbl_8012C880:
/* 8012C880 001297C0  2C 00 E0 00 */ cmpwi r0, -8192
/* 8012C884 001297C4  40 80 00 08 */ bge lbl_8012C88C
/* 8012C888 001297C8  7E 63 07 34 */ extsh r3, r19
lbl_8012C88C:
/* 8012C88C 001297CC  7C 16 90 50 */ subf r0, r22, r18
/* 8012C890 001297D0  7C 00 07 34 */ extsh r0, r0
/* 8012C894 001297D4  2C 00 20 00 */ cmpwi r0, 0x2000
/* 8012C898 001297D8  40 81 00 0C */ ble lbl_8012C8A4
/* 8012C89C 001297DC  7E 92 07 34 */ extsh r18, r20
/* 8012C8A0 001297E0  48 00 00 10 */ b lbl_8012C8B0
lbl_8012C8A4:
/* 8012C8A4 001297E4  2C 00 E0 00 */ cmpwi r0, -8192
/* 8012C8A8 001297E8  40 80 00 08 */ bge lbl_8012C8B0
/* 8012C8AC 001297EC  7F 32 07 34 */ extsh r18, r25
lbl_8012C8B0:
/* 8012C8B0 001297F0  B2 5F 00 00 */ sth r18, 0(r31)
/* 8012C8B4 001297F4  B0 7F 00 02 */ sth r3, 2(r31)
/* 8012C8B8 001297F8  B3 7F 00 04 */ sth r27, 4(r31)
/* 8012C8BC 001297FC  38 61 00 7C */ addi r3, r1, 0x7c
/* 8012C8C0 00129800  4B EE 04 A5 */ bl mDoMtx_stack_c_NS_transS
/* 8012C8C4 00129804  7F E3 FB 78 */ mr r3, r31
/* 8012C8C8 00129808  4B EE 06 7D */ bl mDoMtx_stack_c_NS_ZXYrotM
/* 8012C8CC 0012980C  7E 03 83 78 */ mr r3, r16
/* 8012C8D0 00129810  7D E4 7B 78 */ mr r4, r15
/* 8012C8D4 00129814  7F C5 F3 78 */ mr r5, r30
/* 8012C8D8 00129818  48 21 A4 95 */ bl PSMTXMultVec
/* 8012C8DC 0012981C  C0 5E 00 08 */ lfs f2, 8(r30)
/* 8012C8E0 00129820  C0 1E 00 04 */ lfs f0, 4(r30)
/* 8012C8E4 00129824  EC 3C 00 2A */ fadds f1, f28, f0
/* 8012C8E8 00129828  C0 1E 00 00 */ lfs f0, 0(r30)
/* 8012C8EC 0012982C  D0 01 00 58 */ stfs f0, 0x58(r1)
/* 8012C8F0 00129830  D0 21 00 5C */ stfs f1, 0x5c(r1)
/* 8012C8F4 00129834  D0 41 00 60 */ stfs f2, 0x60(r1)
/* 8012C8F8 00129838  38 7C 1D 08 */ addi r3, r28, 0x1d08
/* 8012C8FC 0012983C  38 81 00 58 */ addi r4, r1, 0x58
/* 8012C900 00129840  48 13 B4 29 */ bl cBgS_GndChk_NS_SetPos_X1_
/* 8012C904 00129844  7F 03 C3 78 */ mr r3, r24
/* 8012C908 00129848  38 9C 1D 08 */ addi r4, r28, 0x1d08
/* 8012C90C 0012984C  4B F4 7B 95 */ bl cBgS_NS_GroundCross
/* 8012C910 00129850  EC 3D 08 2A */ fadds f1, f29, f1
/* 8012C914 00129854  C0 1E 00 04 */ lfs f0, 4(r30)
/* 8012C918 00129858  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8012C91C 0012985C  40 81 00 C4 */ ble lbl_8012C9E0
/* 8012C920 00129860  EC 41 00 28 */ fsubs f2, f1, f0
/* 8012C924 00129864  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 8012C928 00129868  EC 20 10 2A */ fadds f1, f0, f2
/* 8012C92C 0012986C  EC 5A 10 2A */ fadds f2, f26, f2
/* 8012C930 00129870  48 13 AD 45 */ bl cM_atan2s
/* 8012C934 00129874  B0 7F 00 00 */ sth r3, 0(r31)
/* 8012C938 00129878  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 8012C93C 0012987C  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 8012C940 00129880  90 01 00 98 */ stw r0, 0x98(r1)
/* 8012C944 00129884  7F 03 C3 78 */ mr r3, r24
/* 8012C948 00129888  38 9C 1D 1C */ addi r4, r28, 0x1d1c
/* 8012C94C 0012988C  38 A1 00 88 */ addi r5, r1, 0x88
/* 8012C950 00129890  4B F4 7D F5 */ bl cBgS_NS_GetTriPla
/* 8012C954 00129894  38 61 00 88 */ addi r3, r1, 0x88
/* 8012C958 00129898  A8 9F 00 02 */ lha r4, 2(r31)
/* 8012C95C 0012989C  38 04 40 00 */ addi r0, r4, 0x4000
/* 8012C960 001298A0  7C 04 07 34 */ extsh r4, r0
/* 8012C964 001298A4  4B EF 12 75 */ bl fopAcM_getPolygonAngle_X1_
/* 8012C968 001298A8  B0 7F 00 04 */ sth r3, 4(r31)
/* 8012C96C 001298AC  A8 7F 00 04 */ lha r3, 4(r31)
/* 8012C970 001298B0  A8 1F FF FE */ lha r0, -2(r31)
/* 8012C974 001298B4  7C 03 00 50 */ subf r0, r3, r0
/* 8012C978 001298B8  7C 00 07 35 */ extsh. r0, r0
/* 8012C97C 001298BC  41 80 00 0C */ blt lbl_8012C988
/* 8012C980 001298C0  2C 00 40 00 */ cmpwi r0, 0x4000
/* 8012C984 001298C4  40 81 00 0C */ ble lbl_8012C990
lbl_8012C988:
/* 8012C988 001298C8  2C 00 C0 00 */ cmpwi r0, -16384
/* 8012C98C 001298CC  40 80 00 14 */ bge lbl_8012C9A0
lbl_8012C990:
/* 8012C990 001298D0  A8 7F 00 04 */ lha r3, 4(r31)
/* 8012C994 001298D4  38 03 E0 00 */ addi r0, r3, -8192
/* 8012C998 001298D8  B0 1F 00 04 */ sth r0, 4(r31)
/* 8012C99C 001298DC  48 00 00 10 */ b lbl_8012C9AC
lbl_8012C9A0:
/* 8012C9A0 001298E0  A8 7F 00 04 */ lha r3, 4(r31)
/* 8012C9A4 001298E4  38 03 20 00 */ addi r0, r3, 0x2000
/* 8012C9A8 001298E8  B0 1F 00 04 */ sth r0, 4(r31)
lbl_8012C9AC:
/* 8012C9AC 001298EC  38 61 00 7C */ addi r3, r1, 0x7c
/* 8012C9B0 001298F0  4B EE 03 B5 */ bl mDoMtx_stack_c_NS_transS
/* 8012C9B4 001298F4  7F E3 FB 78 */ mr r3, r31
/* 8012C9B8 001298F8  4B EE 05 8D */ bl mDoMtx_stack_c_NS_ZXYrotM
/* 8012C9BC 001298FC  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012C9C0 00129900  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 8012C9C4 00129904  3C 80 80 39 */ lis r4, lbl_80391E3C@ha
/* 8012C9C8 00129908  38 84 1E 3C */ addi r4, r4, lbl_80391E3C@l
/* 8012C9CC 0012990C  7F C5 F3 78 */ mr r5, r30
/* 8012C9D0 00129910  48 21 A3 9D */ bl PSMTXMultVec
/* 8012C9D4 00129914  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 8012C9D8 00129918  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 8012C9DC 0012991C  90 01 00 98 */ stw r0, 0x98(r1)
lbl_8012C9E0:
/* 8012C9E0 00129920  38 61 00 34 */ addi r3, r1, 0x34
/* 8012C9E4 00129924  7F C4 F3 78 */ mr r4, r30
/* 8012C9E8 00129928  38 A1 00 64 */ addi r5, r1, 0x64
/* 8012C9EC 0012992C  48 13 A1 49 */ bl cXyz_NS___mi
/* 8012C9F0 00129930  38 61 00 28 */ addi r3, r1, 0x28
/* 8012C9F4 00129934  38 81 00 34 */ addi r4, r1, 0x34
/* 8012C9F8 00129938  C0 22 94 08 */ lfs f1, lbl_80452E08-_SDA2_BASE_(r2)
/* 8012C9FC 0012993C  48 13 A1 89 */ bl cXyz_NS___ml
/* 8012CA00 00129940  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 8012CA04 00129944  D0 1D 00 00 */ stfs f0, 0(r29)
/* 8012CA08 00129948  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 8012CA0C 0012994C  D0 1D 00 04 */ stfs f0, 4(r29)
/* 8012CA10 00129950  C0 01 00 30 */ lfs f0, 0x30(r1)
/* 8012CA14 00129954  D0 1D 00 08 */ stfs f0, 8(r29)
/* 8012CA18 00129958  C0 1E 00 00 */ lfs f0, 0(r30)
/* 8012CA1C 0012995C  D0 01 00 7C */ stfs f0, 0x7c(r1)
/* 8012CA20 00129960  C0 1E 00 04 */ lfs f0, 4(r30)
/* 8012CA24 00129964  D0 01 00 80 */ stfs f0, 0x80(r1)
/* 8012CA28 00129968  C0 1E 00 08 */ lfs f0, 8(r30)
/* 8012CA2C 0012996C  D0 01 00 84 */ stfs f0, 0x84(r1)
/* 8012CA30 00129970  A8 7F 00 04 */ lha r3, 4(r31)
/* 8012CA34 00129974  38 03 40 00 */ addi r0, r3, 0x4000
/* 8012CA38 00129978  7C 1B 07 34 */ extsh r27, r0
/* 8012CA3C 0012997C  3A B5 00 01 */ addi r21, r21, 1
/* 8012CA40 00129980  2C 15 00 04 */ cmpwi r21, 4
/* 8012CA44 00129984  3B DE 00 0C */ addi r30, r30, 0xc
/* 8012CA48 00129988  3B BD 00 0C */ addi r29, r29, 0xc
/* 8012CA4C 0012998C  3B FF 00 06 */ addi r31, r31, 6
/* 8012CA50 00129990  41 80 FC 50 */ blt lbl_8012C6A0
lbl_8012CA54:
/* 8012CA54 00129994  3A 80 00 00 */ li r20, 0
/* 8012CA58 00129998  39 E0 00 00 */ li r15, 0
/* 8012CA5C 0012999C  3A 00 00 00 */ li r16, 0
/* 8012CA60 001299A0  7E 91 A3 78 */ mr r17, r20
/* 8012CA64 001299A4  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 8012CA68 001299A8  3A 43 D4 70 */ addi r18, r3, lbl_803DD470@l
lbl_8012CA6C:
/* 8012CA6C 001299AC  38 71 36 3C */ addi r3, r17, 0x363c
/* 8012CA70 001299B0  7C 7C 1A 14 */ add r3, r28, r3
/* 8012CA74 001299B4  4B EE 02 F1 */ bl mDoMtx_stack_c_NS_transS
/* 8012CA78 001299B8  38 70 31 42 */ addi r3, r16, 0x3142
/* 8012CA7C 001299BC  7C 7C 1A 14 */ add r3, r28, r3
/* 8012CA80 001299C0  4B EE 04 C5 */ bl mDoMtx_stack_c_NS_ZXYrotM
/* 8012CA84 001299C4  7E 43 93 78 */ mr r3, r18
/* 8012CA88 001299C8  3A 6F 07 8C */ addi r19, r15, 0x78c
/* 8012CA8C 001299CC  7C 9C 98 2E */ lwzx r4, r28, r19
/* 8012CA90 001299D0  38 84 00 24 */ addi r4, r4, 0x24
/* 8012CA94 001299D4  48 21 9A 1D */ bl PSMTXCopy
/* 8012CA98 001299D8  7C 7C 98 2E */ lwzx r3, r28, r19
/* 8012CA9C 001299DC  81 83 00 00 */ lwz r12, 0(r3)
/* 8012CAA0 001299E0  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 8012CAA4 001299E4  7D 89 03 A6 */ mtctr r12
/* 8012CAA8 001299E8  4E 80 04 21 */ bctrl
/* 8012CAAC 001299EC  3A 94 00 01 */ addi r20, r20, 1
/* 8012CAB0 001299F0  2C 14 00 04 */ cmpwi r20, 4
/* 8012CAB4 001299F4  39 EF 00 04 */ addi r15, r15, 4
/* 8012CAB8 001299F8  3A 10 00 06 */ addi r16, r16, 6
/* 8012CABC 001299FC  3A 31 00 0C */ addi r17, r17, 0xc
/* 8012CAC0 00129A00  41 80 FF AC */ blt lbl_8012CA6C
lbl_8012CAC4:
/* 8012CAC4 00129A04  E3 E1 01 48 */ psq_l f31, 328(r1), 0, 0
/* 8012CAC8 00129A08  CB E1 01 40 */ lfd f31, 0x140(r1)
/* 8012CACC 00129A0C  E3 C1 01 38 */ psq_l f30, 312(r1), 0, 0
/* 8012CAD0 00129A10  CB C1 01 30 */ lfd f30, 0x130(r1)
/* 8012CAD4 00129A14  E3 A1 01 28 */ psq_l f29, 296(r1), 0, 0
/* 8012CAD8 00129A18  CB A1 01 20 */ lfd f29, 0x120(r1)
/* 8012CADC 00129A1C  E3 81 01 18 */ psq_l f28, 280(r1), 0, 0
/* 8012CAE0 00129A20  CB 81 01 10 */ lfd f28, 0x110(r1)
/* 8012CAE4 00129A24  E3 61 01 08 */ psq_l f27, 264(r1), 0, 0
/* 8012CAE8 00129A28  CB 61 01 00 */ lfd f27, 0x100(r1)
/* 8012CAEC 00129A2C  E3 41 00 F8 */ psq_l f26, 248(r1), 0, 0
/* 8012CAF0 00129A30  CB 41 00 F0 */ lfd f26, 0xf0(r1)
/* 8012CAF4 00129A34  39 61 00 F0 */ addi r11, r1, 0xf0
/* 8012CAF8 00129A38  48 23 56 F9 */ bl _restgpr_15
/* 8012CAFC 00129A3C  80 01 01 54 */ lwz r0, 0x154(r1)
/* 8012CB00 00129A40  7C 08 03 A6 */ mtlr r0
/* 8012CB04 00129A44  38 21 01 50 */ addi r1, r1, 0x150
/* 8012CB08 00129A48  4E 80 00 20 */ blr
