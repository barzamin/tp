/* 800738B4 000707F4  28 04 00 00 */ cmplwi r4, 0
/* 800738B8 000707F8  41 82 00 0C */ beq lbl_800738C4
/* 800738BC 000707FC  80 64 00 04 */ lwz r3, 4(r4)
/* 800738C0 00070800  4E 80 00 20 */ blr
lbl_800738C4:
/* 800738C4 00070804  38 60 FF FF */ li r3, -1
/* 800738C8 00070808  4E 80 00 20 */ blr
