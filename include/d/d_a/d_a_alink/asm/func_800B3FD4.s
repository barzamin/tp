/* 800B3FD4 000B0F14  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 800B3FD8 000B0F18  7C 08 02 A6 */ mflr r0
/* 800B3FDC 000B0F1C  90 01 00 74 */ stw r0, 0x74(r1)
/* 800B3FE0 000B0F20  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 800B3FE4 000B0F24  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 800B3FE8 000B0F28  DB C1 00 50 */ stfd f30, 0x50(r1)
/* 800B3FEC 000B0F2C  F3 C1 00 58 */ psq_st f30, 88(r1), 0, 0
/* 800B3FF0 000B0F30  DB A1 00 40 */ stfd f29, 0x40(r1)
/* 800B3FF4 000B0F34  F3 A1 00 48 */ psq_st f29, 72(r1), 0, 0
/* 800B3FF8 000B0F38  39 61 00 40 */ addi r11, r1, 0x40
/* 800B3FFC 000B0F3C  48 2A E1 DD */ bl _savegpr_28
/* 800B4000 000B0F40  7C 7E 1B 78 */ mr r30, r3
/* 800B4004 000B0F44  80 03 19 9C */ lwz r0, 0x199c(r3)
/* 800B4008 000B0F48  54 03 06 F7 */ rlwinm. r3, r0, 0, 0x1b, 0x1b
/* 800B400C 000B0F4C  40 82 00 10 */ bne lbl_800B401C
/* 800B4010 000B0F50  A0 1E 30 FC */ lhz r0, 0x30fc(r30)
/* 800B4014 000B0F54  28 00 00 00 */ cmplwi r0, 0
/* 800B4018 000B0F58  41 82 00 80 */ beq lbl_800B4098
lbl_800B401C:
/* 800B401C 000B0F5C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B4020 000B0F60  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B4024 000B0F64  40 82 00 74 */ bne lbl_800B4098
/* 800B4028 000B0F68  28 03 00 00 */ cmplwi r3, 0
/* 800B402C 000B0F6C  41 82 00 44 */ beq lbl_800B4070
/* 800B4030 000B0F70  38 7E 18 B0 */ addi r3, r30, 0x18b0
/* 800B4034 000B0F74  38 00 00 03 */ li r0, 3
/* 800B4038 000B0F78  7C 09 03 A6 */ mtctr r0
lbl_800B403C:
/* 800B403C 000B0F7C  80 03 00 10 */ lwz r0, 0x10(r3)
/* 800B4040 000B0F80  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B4044 000B0F84  41 82 00 24 */ beq lbl_800B4068
/* 800B4048 000B0F88  A8 83 00 3C */ lha r4, 0x3c(r3)
/* 800B404C 000B0F8C  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 800B4050 000B0F90  3C 63 00 01 */ addis r3, r3, 1
/* 800B4054 000B0F94  38 03 80 00 */ addi r0, r3, -32768
/* 800B4058 000B0F98  7C 04 00 50 */ subf r0, r4, r0
/* 800B405C 000B0F9C  7C 03 07 34 */ extsh r3, r0
/* 800B4060 000B0FA0  48 2B 10 71 */ bl func_803650D0
/* 800B4064 000B0FA4  48 00 00 0C */ b lbl_800B4070
lbl_800B4068:
/* 800B4068 000B0FA8  38 63 00 40 */ addi r3, r3, 0x40
/* 800B406C 000B0FAC  42 00 FF D0 */ bdnz lbl_800B403C
lbl_800B4070:
/* 800B4070 000B0FB0  A0 1E 30 FC */ lhz r0, 0x30fc(r30)
/* 800B4074 000B0FB4  28 00 00 00 */ cmplwi r0, 0
/* 800B4078 000B0FB8  41 82 00 20 */ beq lbl_800B4098
/* 800B407C 000B0FBC  A8 9E 30 FA */ lha r4, 0x30fa(r30)
/* 800B4080 000B0FC0  A8 7E 04 DE */ lha r3, 0x4de(r30)
/* 800B4084 000B0FC4  3C 63 00 01 */ addis r3, r3, 1
/* 800B4088 000B0FC8  38 03 80 00 */ addi r0, r3, -32768
/* 800B408C 000B0FCC  7C 04 00 50 */ subf r0, r4, r0
/* 800B4090 000B0FD0  7C 03 07 34 */ extsh r3, r0
/* 800B4094 000B0FD4  48 2B 10 3D */ bl func_803650D0
lbl_800B4098:
/* 800B4098 000B0FD8  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800B409C 000B0FDC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800B40A0 000B0FE0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B40A4 000B0FE4  40 81 02 AC */ ble lbl_800B4350
/* 800B40A8 000B0FE8  3B E0 00 00 */ li r31, 0
/* 800B40AC 000B0FEC  EF E1 00 72 */ fmuls f31, f1, f1
/* 800B40B0 000B0FF0  83 BE 27 E0 */ lwz r29, 0x27e0(r30)
/* 800B40B4 000B0FF4  3B 80 00 01 */ li r28, 1
/* 800B40B8 000B0FF8  7F A3 EB 78 */ mr r3, r29
/* 800B40BC 000B0FFC  4B FB F7 29 */ bl dAttention_c_NS_LockonTruth
/* 800B40C0 000B1000  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B40C4 000B1004  40 82 00 14 */ bne lbl_800B40D8
/* 800B40C8 000B1008  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 800B40CC 000B100C  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 800B40D0 000B1010  40 82 00 08 */ bne lbl_800B40D8
/* 800B40D4 000B1014  3B 80 00 00 */ li r28, 0
lbl_800B40D8:
/* 800B40D8 000B1018  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 800B40DC 000B101C  40 82 00 F0 */ bne lbl_800B41CC
/* 800B40E0 000B1020  A8 7E 2F E2 */ lha r3, 0x2fe2(r30)
/* 800B40E4 000B1024  A8 9E 04 DE */ lha r4, 0x4de(r30)
/* 800B40E8 000B1028  48 1B CD 3D */ bl cLib_distanceAngleS__Fss
/* 800B40EC 000B102C  2C 03 78 00 */ cmpwi r3, 0x7800
/* 800B40F0 000B1030  40 81 00 DC */ ble lbl_800B41CC
/* 800B40F4 000B1034  A0 7E 2F E8 */ lhz r3, 0x2fe8(r30)
/* 800B40F8 000B1038  28 03 00 09 */ cmplwi r3, 9
/* 800B40FC 000B103C  41 82 00 D0 */ beq lbl_800B41CC
/* 800B4100 000B1040  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800B4104 000B1044  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800B4108 000B1048  40 82 03 14 */ bne lbl_800B441C
/* 800B410C 000B104C  C0 3E 05 2C */ lfs f1, 0x52c(r30)
/* 800B4110 000B1050  C0 02 93 E4 */ lfs f0, lbl_80452DE4-_SDA2_BASE_(r2)
/* 800B4114 000B1054  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B4118 000B1058  40 80 00 08 */ bge lbl_800B4120
/* 800B411C 000B105C  48 00 03 00 */ b lbl_800B441C
lbl_800B4120:
/* 800B4120 000B1060  28 03 00 04 */ cmplwi r3, 4
/* 800B4124 000B1064  40 82 00 84 */ bne lbl_800B41A8
/* 800B4128 000B1068  C0 1E 05 94 */ lfs f0, 0x594(r30)
/* 800B412C 000B106C  EC 21 00 24 */ fdivs f1, f1, f0
/* 800B4130 000B1070  3C 60 80 39 */ lis r3, lbl_8038D6BC@ha
/* 800B4134 000B1074  3B E3 D6 BC */ addi r31, r3, lbl_8038D6BC@l
/* 800B4138 000B1078  C0 1F 00 3C */ lfs f0, 0x3c(r31)
/* 800B413C 000B107C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B4140 000B1080  40 81 00 20 */ ble lbl_800B4160
/* 800B4144 000B1084  A8 7E 2F E0 */ lha r3, 0x2fe0(r30)
/* 800B4148 000B1088  A8 1E 30 7C */ lha r0, 0x307c(r30)
/* 800B414C 000B108C  7C 03 00 50 */ subf r0, r3, r0
/* 800B4150 000B1090  7C 03 07 34 */ extsh r3, r0
/* 800B4154 000B1094  4B FF F3 41 */ bl daAlink_c_NS_getDirectionFromAngle
/* 800B4158 000B1098  2C 03 00 01 */ cmpwi r3, 1
/* 800B415C 000B109C  41 82 02 C0 */ beq lbl_800B441C
lbl_800B4160:
/* 800B4160 000B10A0  C0 3E 05 2C */ lfs f1, 0x52c(r30)
/* 800B4164 000B10A4  C0 1E 05 94 */ lfs f0, 0x594(r30)
/* 800B4168 000B10A8  EC 21 00 24 */ fdivs f1, f1, f0
/* 800B416C 000B10AC  C0 1F 00 3C */ lfs f0, 0x3c(r31)
/* 800B4170 000B10B0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B4174 000B10B4  4C 40 13 82 */ cror 2, 0, 2
/* 800B4178 000B10B8  40 82 00 28 */ bne lbl_800B41A0
/* 800B417C 000B10BC  38 7E 04 DE */ addi r3, r30, 0x4de
/* 800B4180 000B10C0  A8 9E 2F E2 */ lha r4, 0x2fe2(r30)
/* 800B4184 000B10C4  3C A0 80 39 */ lis r5, lbl_8038D6BC@ha
/* 800B4188 000B10C8  38 E5 D6 BC */ addi r7, r5, lbl_8038D6BC@l
/* 800B418C 000B10CC  A8 A7 00 18 */ lha r5, 0x18(r7)
/* 800B4190 000B10D0  A8 C7 00 14 */ lha r6, 0x14(r7)
/* 800B4194 000B10D4  A8 E7 00 16 */ lha r7, 0x16(r7)
/* 800B4198 000B10D8  48 1B C3 A9 */ bl cLib_addCalcAngleS__FPsssss
/* 800B419C 000B10DC  48 00 02 80 */ b lbl_800B441C
lbl_800B41A0:
/* 800B41A0 000B10E0  3B E0 00 01 */ li r31, 1
/* 800B41A4 000B10E4  48 00 00 F4 */ b lbl_800B4298
lbl_800B41A8:
/* 800B41A8 000B10E8  38 7E 04 DE */ addi r3, r30, 0x4de
/* 800B41AC 000B10EC  A8 9E 2F E2 */ lha r4, 0x2fe2(r30)
/* 800B41B0 000B10F0  3C A0 80 39 */ lis r5, lbl_8038D6BC@ha
/* 800B41B4 000B10F4  38 E5 D6 BC */ addi r7, r5, lbl_8038D6BC@l
/* 800B41B8 000B10F8  A8 A7 00 18 */ lha r5, 0x18(r7)
/* 800B41BC 000B10FC  A8 C7 00 14 */ lha r6, 0x14(r7)
/* 800B41C0 000B1100  A8 E7 00 16 */ lha r7, 0x16(r7)
/* 800B41C4 000B1104  48 1B C3 7D */ bl cLib_addCalcAngleS__FPsssss
/* 800B41C8 000B1108  48 00 00 D0 */ b lbl_800B4298
lbl_800B41CC:
/* 800B41CC 000B110C  7F C3 F3 78 */ mr r3, r30
/* 800B41D0 000B1110  48 06 1A 51 */ bl daAlink_c_NS_checkEventRun
/* 800B41D4 000B1114  2C 03 00 00 */ cmpwi r3, 0
/* 800B41D8 000B1118  41 82 00 18 */ beq lbl_800B41F0
/* 800B41DC 000B111C  3C 60 80 39 */ lis r3, lbl_8038D6BC@ha
/* 800B41E0 000B1120  38 63 D6 BC */ addi r3, r3, lbl_8038D6BC@l
/* 800B41E4 000B1124  A8 C3 00 14 */ lha r6, 0x14(r3)
/* 800B41E8 000B1128  A8 E3 00 16 */ lha r7, 0x16(r3)
/* 800B41EC 000B112C  48 00 00 94 */ b lbl_800B4280
lbl_800B41F0:
/* 800B41F0 000B1130  3C 60 80 39 */ lis r3, lbl_8038D6BC@ha
/* 800B41F4 000B1134  38 63 D6 BC */ addi r3, r3, lbl_8038D6BC@l
/* 800B41F8 000B1138  A8 03 00 14 */ lha r0, 0x14(r3)
/* 800B41FC 000B113C  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800B4200 000B1140  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800B4204 000B1144  90 01 00 0C */ stw r0, 0xc(r1)
/* 800B4208 000B1148  3C 00 43 30 */ lis r0, 0x4330
/* 800B420C 000B114C  90 01 00 08 */ stw r0, 8(r1)
/* 800B4210 000B1150  C8 01 00 08 */ lfd f0, 8(r1)
/* 800B4214 000B1154  EC 00 08 28 */ fsubs f0, f0, f1
/* 800B4218 000B1158  EC 00 07 F2 */ fmuls f0, f0, f31
/* 800B421C 000B115C  FC 00 00 1E */ fctiwz f0, f0
/* 800B4220 000B1160  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 800B4224 000B1164  80 C1 00 14 */ lwz r6, 0x14(r1)
/* 800B4228 000B1168  7C C0 07 34 */ extsh r0, r6
/* 800B422C 000B116C  2C 00 00 0A */ cmpwi r0, 0xa
/* 800B4230 000B1170  40 80 00 08 */ bge lbl_800B4238
/* 800B4234 000B1174  38 C0 00 0A */ li r6, 0xa
lbl_800B4238:
/* 800B4238 000B1178  3C 60 80 39 */ lis r3, lbl_8038D6BC@ha
/* 800B423C 000B117C  38 63 D6 BC */ addi r3, r3, lbl_8038D6BC@l
/* 800B4240 000B1180  A8 03 00 16 */ lha r0, 0x16(r3)
/* 800B4244 000B1184  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800B4248 000B1188  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800B424C 000B118C  90 01 00 1C */ stw r0, 0x1c(r1)
/* 800B4250 000B1190  3C 00 43 30 */ lis r0, 0x4330
/* 800B4254 000B1194  90 01 00 18 */ stw r0, 0x18(r1)
/* 800B4258 000B1198  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 800B425C 000B119C  EC 00 08 28 */ fsubs f0, f0, f1
/* 800B4260 000B11A0  EC 00 07 F2 */ fmuls f0, f0, f31
/* 800B4264 000B11A4  FC 00 00 1E */ fctiwz f0, f0
/* 800B4268 000B11A8  D8 01 00 20 */ stfd f0, 0x20(r1)
/* 800B426C 000B11AC  80 E1 00 24 */ lwz r7, 0x24(r1)
/* 800B4270 000B11B0  7C E0 07 34 */ extsh r0, r7
/* 800B4274 000B11B4  2C 00 00 01 */ cmpwi r0, 1
/* 800B4278 000B11B8  40 80 00 08 */ bge lbl_800B4280
/* 800B427C 000B11BC  38 E0 00 01 */ li r7, 1
lbl_800B4280:
/* 800B4280 000B11C0  38 7E 04 DE */ addi r3, r30, 0x4de
/* 800B4284 000B11C4  A8 9E 2F E2 */ lha r4, 0x2fe2(r30)
/* 800B4288 000B11C8  3C A0 80 39 */ lis r5, lbl_8038D6BC@ha
/* 800B428C 000B11CC  38 A5 D6 BC */ addi r5, r5, lbl_8038D6BC@l
/* 800B4290 000B11D0  A8 A5 00 18 */ lha r5, 0x18(r5)
/* 800B4294 000B11D4  48 1B C2 AD */ bl cLib_addCalcAngleS__FPsssss
lbl_800B4298:
/* 800B4298 000B11D8  2C 1F 00 00 */ cmpwi r31, 0
/* 800B429C 000B11DC  40 82 00 AC */ bne lbl_800B4348
/* 800B42A0 000B11E0  7F C3 F3 78 */ mr r3, r30
/* 800B42A4 000B11E4  4B FF FC 89 */ bl daAlink_c_NS_getStickAngleDistanceRate
/* 800B42A8 000B11E8  FF C0 08 90 */ fmr f30, f1
/* 800B42AC 000B11EC  7F C3 F3 78 */ mr r3, r30
/* 800B42B0 000B11F0  48 06 19 71 */ bl daAlink_c_NS_checkEventRun
/* 800B42B4 000B11F4  2C 03 00 00 */ cmpwi r3, 0
/* 800B42B8 000B11F8  41 82 00 20 */ beq lbl_800B42D8
/* 800B42BC 000B11FC  3C 60 80 39 */ lis r3, lbl_8038D6BC@ha
/* 800B42C0 000B1200  38 63 D6 BC */ addi r3, r3, lbl_8038D6BC@l
/* 800B42C4 000B1204  C0 23 00 34 */ lfs f1, 0x34(r3)
/* 800B42C8 000B1208  C0 1E 33 A8 */ lfs f0, 0x33a8(r30)
/* 800B42CC 000B120C  EC 01 00 32 */ fmuls f0, f1, f0
/* 800B42D0 000B1210  EF DE 00 32 */ fmuls f30, f30, f0
/* 800B42D4 000B1214  48 00 00 80 */ b lbl_800B4354
lbl_800B42D8:
/* 800B42D8 000B1218  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 800B42DC 000B121C  C0 1E 05 94 */ lfs f0, 0x594(r30)
/* 800B42E0 000B1220  EC 01 00 24 */ fdivs f0, f1, f0
/* 800B42E4 000B1224  FC 00 02 10 */ fabs f0, f0
/* 800B42E8 000B1228  FC 40 00 18 */ frsp f2, f0
/* 800B42EC 000B122C  C0 22 94 A8 */ lfs f1, lbl_80452EA8-_SDA2_BASE_(r2)
/* 800B42F0 000B1230  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B42F4 000B1234  EC 00 10 28 */ fsubs f0, f0, f2
/* 800B42F8 000B1238  EF A1 00 32 */ fmuls f29, f1, f0
/* 800B42FC 000B123C  7F C3 F3 78 */ mr r3, r30
/* 800B4300 000B1240  38 80 00 01 */ li r4, 1
/* 800B4304 000B1244  38 A0 00 01 */ li r5, 1
/* 800B4308 000B1248  48 00 71 B1 */ bl daAlink_c_NS_checkHeavyStateOn
/* 800B430C 000B124C  2C 03 00 00 */ cmpwi r3, 0
/* 800B4310 000B1250  41 82 00 0C */ beq lbl_800B431C
/* 800B4314 000B1254  C0 1E 34 34 */ lfs f0, 0x3434(r30)
/* 800B4318 000B1258  EF BD 00 32 */ fmuls f29, f29, f0
lbl_800B431C:
/* 800B431C 000B125C  C0 1E 33 A8 */ lfs f0, 0x33a8(r30)
/* 800B4320 000B1260  FC 00 E8 40 */ fcmpo cr0, f0, f29
/* 800B4324 000B1264  40 81 00 1C */ ble lbl_800B4340
/* 800B4328 000B1268  3C 60 80 39 */ lis r3, lbl_8038D6BC@ha
/* 800B432C 000B126C  38 63 D6 BC */ addi r3, r3, lbl_8038D6BC@l
/* 800B4330 000B1270  C0 03 00 34 */ lfs f0, 0x34(r3)
/* 800B4334 000B1274  EC 00 07 F2 */ fmuls f0, f0, f31
/* 800B4338 000B1278  EF DE 00 32 */ fmuls f30, f30, f0
/* 800B433C 000B127C  48 00 00 18 */ b lbl_800B4354
lbl_800B4340:
/* 800B4340 000B1280  C3 C2 92 C0 */ lfs f30, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B4344 000B1284  48 00 00 10 */ b lbl_800B4354
lbl_800B4348:
/* 800B4348 000B1288  C3 C2 92 C0 */ lfs f30, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B434C 000B128C  48 00 00 08 */ b lbl_800B4354
lbl_800B4350:
/* 800B4350 000B1290  C3 C2 92 C0 */ lfs f30, lbl_80452CC0-_SDA2_BASE_(r2)
lbl_800B4354:
/* 800B4354 000B1294  83 BE 27 E0 */ lwz r29, 0x27e0(r30)
/* 800B4358 000B1298  3B 80 00 01 */ li r28, 1
/* 800B435C 000B129C  7F A3 EB 78 */ mr r3, r29
/* 800B4360 000B12A0  4B FB F4 85 */ bl dAttention_c_NS_LockonTruth
/* 800B4364 000B12A4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B4368 000B12A8  40 82 00 14 */ bne lbl_800B437C
/* 800B436C 000B12AC  80 1D 03 34 */ lwz r0, 0x334(r29)
/* 800B4370 000B12B0  54 00 00 85 */ rlwinm. r0, r0, 0, 2, 2
/* 800B4374 000B12B4  40 82 00 08 */ bne lbl_800B437C
/* 800B4378 000B12B8  3B 80 00 00 */ li r28, 0
lbl_800B437C:
/* 800B437C 000B12BC  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 800B4380 000B12C0  40 82 00 84 */ bne lbl_800B4404
/* 800B4384 000B12C4  A0 1E 2F E8 */ lhz r0, 0x2fe8(r30)
/* 800B4388 000B12C8  28 00 00 09 */ cmplwi r0, 9
/* 800B438C 000B12CC  41 82 00 78 */ beq lbl_800B4404
/* 800B4390 000B12D0  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800B4394 000B12D4  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800B4398 000B12D8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B439C 000B12DC  40 81 00 68 */ ble lbl_800B4404
/* 800B43A0 000B12E0  AB 9E 04 E6 */ lha r28, 0x4e6(r30)
/* 800B43A4 000B12E4  38 7E 04 E6 */ addi r3, r30, 0x4e6
/* 800B43A8 000B12E8  A8 9E 2F E2 */ lha r4, 0x2fe2(r30)
/* 800B43AC 000B12EC  3C A0 80 39 */ lis r5, lbl_8038D6BC@ha
/* 800B43B0 000B12F0  38 E5 D6 BC */ addi r7, r5, lbl_8038D6BC@l
/* 800B43B4 000B12F4  A8 A7 00 18 */ lha r5, 0x18(r7)
/* 800B43B8 000B12F8  A8 07 00 14 */ lha r0, 0x14(r7)
/* 800B43BC 000B12FC  54 00 08 3C */ slwi r0, r0, 1
/* 800B43C0 000B1300  7C 06 07 34 */ extsh r6, r0
/* 800B43C4 000B1304  A8 07 00 16 */ lha r0, 0x16(r7)
/* 800B43C8 000B1308  54 00 08 3C */ slwi r0, r0, 1
/* 800B43CC 000B130C  7C 07 07 34 */ extsh r7, r0
/* 800B43D0 000B1310  48 1B C1 71 */ bl cLib_addCalcAngleS__FPsssss
/* 800B43D4 000B1314  A8 9E 04 DE */ lha r4, 0x4de(r30)
/* 800B43D8 000B1318  7C 04 E0 50 */ subf r0, r4, r28
/* 800B43DC 000B131C  7C 03 07 34 */ extsh r3, r0
/* 800B43E0 000B1320  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800B43E4 000B1324  7C 04 00 50 */ subf r0, r4, r0
/* 800B43E8 000B1328  7C 00 07 34 */ extsh r0, r0
/* 800B43EC 000B132C  7C 60 19 D7 */ mullw. r3, r0, r3
/* 800B43F0 000B1330  41 81 00 14 */ bgt lbl_800B4404
/* 800B43F4 000B1334  3C 00 FF 00 */ lis r0, 0xff00
/* 800B43F8 000B1338  7C 03 00 00 */ cmpw r3, r0
/* 800B43FC 000B133C  41 80 00 08 */ blt lbl_800B4404
/* 800B4400 000B1340  B0 9E 04 E6 */ sth r4, 0x4e6(r30)
lbl_800B4404:
/* 800B4404 000B1344  7F C3 F3 78 */ mr r3, r30
/* 800B4408 000B1348  FC 20 F0 90 */ fmr f1, f30
/* 800B440C 000B134C  3C 80 80 39 */ lis r4, lbl_8038D6BC@ha
/* 800B4410 000B1350  38 84 D6 BC */ addi r4, r4, lbl_8038D6BC@l
/* 800B4414 000B1354  C0 44 00 38 */ lfs f2, 0x38(r4)
/* 800B4418 000B1358  4B FF F5 0D */ bl daAlink_c_NS_setNormalSpeedF
lbl_800B441C:
/* 800B441C 000B135C  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 800B4420 000B1360  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 800B4424 000B1364  E3 C1 00 58 */ psq_l f30, 88(r1), 0, 0
/* 800B4428 000B1368  CB C1 00 50 */ lfd f30, 0x50(r1)
/* 800B442C 000B136C  E3 A1 00 48 */ psq_l f29, 72(r1), 0, 0
/* 800B4430 000B1370  CB A1 00 40 */ lfd f29, 0x40(r1)
/* 800B4434 000B1374  39 61 00 40 */ addi r11, r1, 0x40
/* 800B4438 000B1378  48 2A DD ED */ bl _restgpr_28
/* 800B443C 000B137C  80 01 00 74 */ lwz r0, 0x74(r1)
/* 800B4440 000B1380  7C 08 03 A6 */ mtlr r0
/* 800B4444 000B1384  38 21 00 70 */ addi r1, r1, 0x70
/* 800B4448 000B1388  4E 80 00 20 */ blr
