/* 802BC6F8 002B9638  C0 62 C0 AC */ lfs f3, lbl_80455AAC-_SDA2_BASE_(r2)
/* 802BC6FC 002B963C  C0 8D 82 64 */ lfs f4, lbl_804507E4-_SDA_BASE_(r13)
/* 802BC700 002B9640  EC 03 01 32 */ fmuls f0, f3, f4
/* 802BC704 002B9644  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 802BC708 002B9648  40 81 00 10 */ ble lbl_802BC718
/* 802BC70C 002B964C  EC 03 00 72 */ fmuls f0, f3, f1
/* 802BC710 002B9650  D0 03 00 44 */ stfs f0, 0x44(r3)
/* 802BC714 002B9654  48 00 00 08 */ b lbl_802BC71C
lbl_802BC718:
/* 802BC718 002B9658  D0 83 00 44 */ stfs f4, 0x44(r3)
lbl_802BC71C:
/* 802BC71C 002B965C  C0 22 C0 E0 */ lfs f1, lbl_80455AE0-_SDA2_BASE_(r2)
/* 802BC720 002B9660  C0 03 00 44 */ lfs f0, 0x44(r3)
/* 802BC724 002B9664  EC 01 00 32 */ fmuls f0, f1, f0
/* 802BC728 002B9668  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 802BC72C 002B966C  40 80 00 08 */ bge lbl_802BC734
/* 802BC730 002B9670  FC 40 00 90 */ fmr f2, f0
lbl_802BC734:
/* 802BC734 002B9674  C0 0D 82 68 */ lfs f0, lbl_804507E8-_SDA_BASE_(r13)
/* 802BC738 002B9678  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 802BC73C 002B967C  40 81 00 0C */ ble lbl_802BC748
/* 802BC740 002B9680  D0 43 00 48 */ stfs f2, 0x48(r3)
/* 802BC744 002B9684  48 00 00 08 */ b lbl_802BC74C
lbl_802BC748:
/* 802BC748 002B9688  D0 03 00 48 */ stfs f0, 0x48(r3)
lbl_802BC74C:
/* 802BC74C 002B968C  38 00 00 00 */ li r0, 0
/* 802BC750 002B9690  98 03 01 25 */ stb r0, 0x125(r3)
/* 802BC754 002B9694  4E 80 00 20 */ blr