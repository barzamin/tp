/* 800D0660 000CD5A0  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800D0664 000CD5A4  20 00 01 32 */ subfic r0, r0, 0x132
/* 800D0668 000CD5A8  7C 00 00 34 */ cntlzw r0, r0
/* 800D066C 000CD5AC  54 03 DE 3E */ rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800D0670 000CD5B0  4E 80 00 20 */ blr