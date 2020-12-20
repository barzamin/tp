.include "macros.inc"

.section .text, "ax" # 8033d6f4


.global OSDisableInterrupts 
OSDisableInterrupts:
.global __RAS_OSDisableInterrupts_begin 
__RAS_OSDisableInterrupts_begin :
/* 8033D6F4 0033A634  7C 60 00 A6 */	mfmsr r3
/* 8033D6F8 0033A638  54 64 04 5E */	rlwinm r4, r3, 0, 0x11, 0xf
/* 8033D6FC 0033A63C  7C 80 01 24 */	mtmsr r4
.global __RAS_OSDisableInterrupts_end 
__RAS_OSDisableInterrupts_end :
/* 8033D700 0033A640  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
/* 8033D704 0033A644  4E 80 00 20 */	blr 

.global OSEnableInterrupts
OSEnableInterrupts:
/* 8033D708 0033A648  7C 60 00 A6 */	mfmsr r3
/* 8033D70C 0033A64C  60 64 80 00 */	ori r4, r3, 0x8000
/* 8033D710 0033A650  7C 80 01 24 */	mtmsr r4
/* 8033D714 0033A654  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
/* 8033D718 0033A658  4E 80 00 20 */	blr 

.global OSRestoreInterrupts
OSRestoreInterrupts:
/* 8033D71C 0033A65C  2C 03 00 00 */	cmpwi r3, 0
/* 8033D720 0033A660  7C 80 00 A6 */	mfmsr r4
/* 8033D724 0033A664  41 82 00 0C */	beq lbl_8033D730
/* 8033D728 0033A668  60 85 80 00 */	ori r5, r4, 0x8000
/* 8033D72C 0033A66C  48 00 00 08 */	b lbl_8033D734
lbl_8033D730:
/* 8033D730 0033A670  54 85 04 5E */	rlwinm r5, r4, 0, 0x11, 0xf
lbl_8033D734:
/* 8033D734 0033A674  7C A0 01 24 */	mtmsr r5
/* 8033D738 0033A678  54 83 8F FE */	rlwinm r3, r4, 0x11, 0x1f, 0x1f
/* 8033D73C 0033A67C  4E 80 00 20 */	blr 

.global __OSSetInterruptHandler
__OSSetInterruptHandler:
/* 8033D740 0033A680  7C 60 07 34 */	extsh r0, r3
/* 8033D744 0033A684  80 6D 90 F0 */	lwz r3, lbl_80451670-_SDA_BASE_(r13)
/* 8033D748 0033A688  54 00 10 3A */	slwi r0, r0, 2
/* 8033D74C 0033A68C  7C A3 02 14 */	add r5, r3, r0
/* 8033D750 0033A690  80 65 00 00 */	lwz r3, 0(r5)
/* 8033D754 0033A694  90 85 00 00 */	stw r4, 0(r5)
/* 8033D758 0033A698  4E 80 00 20 */	blr 

.global __OSGetInterruptHandler
__OSGetInterruptHandler:
/* 8033D75C 0033A69C  7C 60 07 34 */	extsh r0, r3
/* 8033D760 0033A6A0  80 6D 90 F0 */	lwz r3, lbl_80451670-_SDA_BASE_(r13)
/* 8033D764 0033A6A4  54 00 10 3A */	slwi r0, r0, 2
/* 8033D768 0033A6A8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8033D76C 0033A6AC  4E 80 00 20 */	blr 

.global __OSInterruptInit
__OSInterruptInit:
/* 8033D770 0033A6B0  7C 08 02 A6 */	mflr r0
/* 8033D774 0033A6B4  90 01 00 04 */	stw r0, 4(r1)
/* 8033D778 0033A6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033D77C 0033A6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033D780 0033A6C0  3F E0 80 00 */	lis r31, 0x80003040@ha
/* 8033D784 0033A6C4  38 1F 30 40 */	addi r0, r31, 0x80003040@l
/* 8033D788 0033A6C8  90 0D 90 F0 */	stw r0, lbl_80451670-_SDA_BASE_(r13)
/* 8033D78C 0033A6CC  38 80 00 00 */	li r4, 0
/* 8033D790 0033A6D0  38 A0 00 80 */	li r5, 0x80
/* 8033D794 0033A6D4  80 6D 90 F0 */	lwz r3, lbl_80451670-_SDA_BASE_(r13)
/* 8033D798 0033A6D8  4B CC 5C C1 */	bl func_80003458
/* 8033D79C 0033A6DC  38 00 00 00 */	li r0, 0
/* 8033D7A0 0033A6E0  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8033D7A4 0033A6E4  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8033D7A8 0033A6E8  38 83 30 00 */	addi r4, r3, 0xCC003000@l
/* 8033D7AC 0033A6EC  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8033D7B0 0033A6F0  38 00 00 F0 */	li r0, 0xf0
/* 8033D7B4 0033A6F4  38 60 FF E0 */	li r3, -32
/* 8033D7B8 0033A6F8  90 04 00 04 */	stw r0, 4(r4)
/* 8033D7BC 0033A6FC  48 00 03 01 */	bl __OSMaskInterrupts
.global ExternalInterruptHandler
/* 8033D7C0 0033A700  3C 60 80 34 */	lis r3, ExternalInterruptHandler@ha
.global ExternalInterruptHandler
/* 8033D7C4 0033A704  38 83 DF 10 */	addi r4, r3, ExternalInterruptHandler@l
/* 8033D7C8 0033A708  38 60 00 04 */	li r3, 4
/* 8033D7CC 0033A70C  4B FF CF 1D */	bl __OSDBJUMPEND 
/* 8033D7D0 0033A710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033D7D4 0033A714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033D7D8 0033A718  38 21 00 10 */	addi r1, r1, 0x10
/* 8033D7DC 0033A71C  7C 08 03 A6 */	mtlr r0
/* 8033D7E0 0033A720  4E 80 00 20 */	blr 

.global SetInterruptMask
SetInterruptMask:
/* 8033D7E4 0033A724  7C 60 00 34 */	cntlzw r0, r3
/* 8033D7E8 0033A728  2C 00 00 0C */	cmpwi r0, 0xc
/* 8033D7EC 0033A72C  40 80 00 24 */	bge lbl_8033D810
/* 8033D7F0 0033A730  2C 00 00 08 */	cmpwi r0, 8
/* 8033D7F4 0033A734  41 82 00 FC */	beq lbl_8033D8F0
/* 8033D7F8 0033A738  40 80 01 28 */	bge lbl_8033D920
/* 8033D7FC 0033A73C  2C 00 00 05 */	cmpwi r0, 5
/* 8033D800 0033A740  40 80 00 9C */	bge lbl_8033D89C
/* 8033D804 0033A744  2C 00 00 00 */	cmpwi r0, 0
/* 8033D808 0033A748  40 80 00 28 */	bge lbl_8033D830
/* 8033D80C 0033A74C  48 00 02 AC */	b lbl_8033DAB8
lbl_8033D810:
/* 8033D810 0033A750  2C 00 00 11 */	cmpwi r0, 0x11
/* 8033D814 0033A754  40 80 00 10 */	bge lbl_8033D824
/* 8033D818 0033A758  2C 00 00 0F */	cmpwi r0, 0xf
/* 8033D81C 0033A75C  40 80 01 A8 */	bge lbl_8033D9C4
/* 8033D820 0033A760  48 00 01 50 */	b lbl_8033D970
lbl_8033D824:
/* 8033D824 0033A764  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8033D828 0033A768  40 80 02 90 */	bge lbl_8033DAB8
/* 8033D82C 0033A76C  48 00 01 D8 */	b lbl_8033DA04
lbl_8033D830:
/* 8033D830 0033A770  54 80 00 00 */	rlwinm r0, r4, 0, 0, 0
/* 8033D834 0033A774  28 00 00 00 */	cmplwi r0, 0
/* 8033D838 0033A778  38 A0 00 00 */	li r5, 0
/* 8033D83C 0033A77C  40 82 00 08 */	bne lbl_8033D844
/* 8033D840 0033A780  60 A5 00 01 */	ori r5, r5, 1
lbl_8033D844:
/* 8033D844 0033A784  54 80 00 42 */	rlwinm r0, r4, 0, 1, 1
/* 8033D848 0033A788  28 00 00 00 */	cmplwi r0, 0
/* 8033D84C 0033A78C  40 82 00 08 */	bne lbl_8033D854
/* 8033D850 0033A790  60 A5 00 02 */	ori r5, r5, 2
lbl_8033D854:
/* 8033D854 0033A794  54 80 00 84 */	rlwinm r0, r4, 0, 2, 2
/* 8033D858 0033A798  28 00 00 00 */	cmplwi r0, 0
/* 8033D85C 0033A79C  40 82 00 08 */	bne lbl_8033D864
/* 8033D860 0033A7A0  60 A5 00 04 */	ori r5, r5, 4
lbl_8033D864:
/* 8033D864 0033A7A4  54 80 00 C6 */	rlwinm r0, r4, 0, 3, 3
/* 8033D868 0033A7A8  28 00 00 00 */	cmplwi r0, 0
/* 8033D86C 0033A7AC  40 82 00 08 */	bne lbl_8033D874
/* 8033D870 0033A7B0  60 A5 00 08 */	ori r5, r5, 8
lbl_8033D874:
/* 8033D874 0033A7B4  54 80 01 08 */	rlwinm r0, r4, 0, 4, 4
/* 8033D878 0033A7B8  28 00 00 00 */	cmplwi r0, 0
/* 8033D87C 0033A7BC  40 82 00 08 */	bne lbl_8033D884
/* 8033D880 0033A7C0  60 A5 00 10 */	ori r5, r5, 0x10
lbl_8033D884:
/* 8033D884 0033A7C4  3C 80 CC 00 */	lis r4, 0xCC004000@ha
/* 8033D888 0033A7C8  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8033D88C 0033A7CC  38 84 40 00 */	addi r4, r4, 0xCC004000@l
/* 8033D890 0033A7D0  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 8033D894 0033A7D4  54 63 01 7E */	clrlwi r3, r3, 5
/* 8033D898 0033A7D8  48 00 02 20 */	b lbl_8033DAB8
lbl_8033D89C:
/* 8033D89C 0033A7DC  3C A0 CC 00 */	lis r5, 0xCC005000@ha
/* 8033D8A0 0033A7E0  38 A5 50 00 */	addi r5, r5, 0xCC005000@l
/* 8033D8A4 0033A7E4  38 A5 00 0A */	addi r5, r5, 0xa
/* 8033D8A8 0033A7E8  54 80 01 4A */	rlwinm r0, r4, 0, 5, 5
/* 8033D8AC 0033A7EC  A0 C5 00 00 */	lhz r6, 0(r5)
/* 8033D8B0 0033A7F0  28 00 00 00 */	cmplwi r0, 0
/* 8033D8B4 0033A7F4  54 C6 07 6C */	rlwinm r6, r6, 0, 0x1d, 0x16
/* 8033D8B8 0033A7F8  40 82 00 08 */	bne lbl_8033D8C0
/* 8033D8BC 0033A7FC  60 C6 00 10 */	ori r6, r6, 0x10
lbl_8033D8C0:
/* 8033D8C0 0033A800  54 80 01 8C */	rlwinm r0, r4, 0, 6, 6
/* 8033D8C4 0033A804  28 00 00 00 */	cmplwi r0, 0
/* 8033D8C8 0033A808  40 82 00 08 */	bne lbl_8033D8D0
/* 8033D8CC 0033A80C  60 C6 00 40 */	ori r6, r6, 0x40
lbl_8033D8D0:
/* 8033D8D0 0033A810  54 80 01 CE */	rlwinm r0, r4, 0, 7, 7
/* 8033D8D4 0033A814  28 00 00 00 */	cmplwi r0, 0
/* 8033D8D8 0033A818  40 82 00 08 */	bne lbl_8033D8E0
/* 8033D8DC 0033A81C  60 C6 01 00 */	ori r6, r6, 0x100
lbl_8033D8E0:
/* 8033D8E0 0033A820  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8033D8E4 0033A824  B0 05 00 00 */	sth r0, 0(r5)
/* 8033D8E8 0033A828  54 63 02 08 */	rlwinm r3, r3, 0, 8, 4
/* 8033D8EC 0033A82C  48 00 01 CC */	b lbl_8033DAB8
lbl_8033D8F0:
/* 8033D8F0 0033A830  54 80 02 10 */	rlwinm r0, r4, 0, 8, 8
/* 8033D8F4 0033A834  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8033D8F8 0033A838  28 00 00 00 */	cmplwi r0, 0
/* 8033D8FC 0033A83C  80 A4 6C 00 */	lwz r5, 0xCC006C00@l(r4)
/* 8033D900 0033A840  38 00 FF D3 */	li r0, -45
/* 8033D904 0033A844  7C A5 00 38 */	and r5, r5, r0
/* 8033D908 0033A848  40 82 00 08 */	bne lbl_8033D910
/* 8033D90C 0033A84C  60 A5 00 04 */	ori r5, r5, 4
lbl_8033D910:
/* 8033D910 0033A850  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8033D914 0033A854  90 A4 6C 00 */	stw r5, 0xCC006C00@l(r4)
/* 8033D918 0033A858  54 63 02 4E */	rlwinm r3, r3, 0, 9, 7
/* 8033D91C 0033A85C  48 00 01 9C */	b lbl_8033DAB8
lbl_8033D920:
/* 8033D920 0033A860  54 80 02 52 */	rlwinm r0, r4, 0, 9, 9
/* 8033D924 0033A864  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 8033D928 0033A868  28 00 00 00 */	cmplwi r0, 0
/* 8033D92C 0033A86C  80 A5 68 00 */	lwz r5, 0xCC006800@l(r5)
/* 8033D930 0033A870  38 00 D3 F0 */	li r0, -11280
/* 8033D934 0033A874  7C A5 00 38 */	and r5, r5, r0
/* 8033D938 0033A878  40 82 00 08 */	bne lbl_8033D940
/* 8033D93C 0033A87C  60 A5 00 01 */	ori r5, r5, 1
lbl_8033D940:
/* 8033D940 0033A880  54 80 02 94 */	rlwinm r0, r4, 0, 0xa, 0xa
/* 8033D944 0033A884  28 00 00 00 */	cmplwi r0, 0
/* 8033D948 0033A888  40 82 00 08 */	bne lbl_8033D950
/* 8033D94C 0033A88C  60 A5 00 04 */	ori r5, r5, 4
lbl_8033D950:
/* 8033D950 0033A890  54 80 02 D6 */	rlwinm r0, r4, 0, 0xb, 0xb
/* 8033D954 0033A894  28 00 00 00 */	cmplwi r0, 0
/* 8033D958 0033A898  40 82 00 08 */	bne lbl_8033D960
/* 8033D95C 0033A89C  60 A5 04 00 */	ori r5, r5, 0x400
lbl_8033D960:
/* 8033D960 0033A8A0  3C 80 CC 00 */	lis r4, 0xCC006800@ha
/* 8033D964 0033A8A4  90 A4 68 00 */	stw r5, 0xCC006800@l(r4)
/* 8033D968 0033A8A8  54 63 03 10 */	rlwinm r3, r3, 0, 0xc, 8
/* 8033D96C 0033A8AC  48 00 01 4C */	b lbl_8033DAB8
lbl_8033D970:
/* 8033D970 0033A8B0  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 8033D974 0033A8B4  38 C5 68 00 */	addi r6, r5, 0xCC006800@l
/* 8033D978 0033A8B8  38 C6 00 14 */	addi r6, r6, 0x14
/* 8033D97C 0033A8BC  54 80 03 18 */	rlwinm r0, r4, 0, 0xc, 0xc
/* 8033D980 0033A8C0  80 E6 00 00 */	lwz r7, 0(r6)
/* 8033D984 0033A8C4  38 A0 F3 F0 */	li r5, -3088
/* 8033D988 0033A8C8  28 00 00 00 */	cmplwi r0, 0
/* 8033D98C 0033A8CC  7C E7 28 38 */	and r7, r7, r5
/* 8033D990 0033A8D0  40 82 00 08 */	bne lbl_8033D998
/* 8033D994 0033A8D4  60 E7 00 01 */	ori r7, r7, 1
lbl_8033D998:
/* 8033D998 0033A8D8  54 80 03 5A */	rlwinm r0, r4, 0, 0xd, 0xd
/* 8033D99C 0033A8DC  28 00 00 00 */	cmplwi r0, 0
/* 8033D9A0 0033A8E0  40 82 00 08 */	bne lbl_8033D9A8
/* 8033D9A4 0033A8E4  60 E7 00 04 */	ori r7, r7, 4
lbl_8033D9A8:
/* 8033D9A8 0033A8E8  54 80 03 9C */	rlwinm r0, r4, 0, 0xe, 0xe
/* 8033D9AC 0033A8EC  28 00 00 00 */	cmplwi r0, 0
/* 8033D9B0 0033A8F0  40 82 00 08 */	bne lbl_8033D9B8
/* 8033D9B4 0033A8F4  60 E7 04 00 */	ori r7, r7, 0x400
lbl_8033D9B8:
/* 8033D9B8 0033A8F8  90 E6 00 00 */	stw r7, 0(r6)
/* 8033D9BC 0033A8FC  54 63 03 D6 */	rlwinm r3, r3, 0, 0xf, 0xb
/* 8033D9C0 0033A900  48 00 00 F8 */	b lbl_8033DAB8
lbl_8033D9C4:
/* 8033D9C4 0033A904  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 8033D9C8 0033A908  38 A5 68 00 */	addi r5, r5, 0xCC006800@l
/* 8033D9CC 0033A90C  38 A5 00 28 */	addi r5, r5, 0x28
/* 8033D9D0 0033A910  54 80 03 DE */	rlwinm r0, r4, 0, 0xf, 0xf
/* 8033D9D4 0033A914  80 C5 00 00 */	lwz r6, 0(r5)
/* 8033D9D8 0033A918  28 00 00 00 */	cmplwi r0, 0
/* 8033D9DC 0033A91C  54 C6 00 36 */	rlwinm r6, r6, 0, 0, 0x1b
/* 8033D9E0 0033A920  40 82 00 08 */	bne lbl_8033D9E8
/* 8033D9E4 0033A924  60 C6 00 01 */	ori r6, r6, 1
lbl_8033D9E8:
/* 8033D9E8 0033A928  54 80 04 20 */	rlwinm r0, r4, 0, 0x10, 0x10
/* 8033D9EC 0033A92C  28 00 00 00 */	cmplwi r0, 0
/* 8033D9F0 0033A930  40 82 00 08 */	bne lbl_8033D9F8
/* 8033D9F4 0033A934  60 C6 00 04 */	ori r6, r6, 4
lbl_8033D9F8:
/* 8033D9F8 0033A938  90 C5 00 00 */	stw r6, 0(r5)
/* 8033D9FC 0033A93C  54 63 04 5C */	rlwinm r3, r3, 0, 0x11, 0xe
/* 8033DA00 0033A940  48 00 00 B8 */	b lbl_8033DAB8
lbl_8033DA04:
/* 8033DA04 0033A944  54 80 04 62 */	rlwinm r0, r4, 0, 0x11, 0x11
/* 8033DA08 0033A948  28 00 00 00 */	cmplwi r0, 0
/* 8033DA0C 0033A94C  38 A0 00 F0 */	li r5, 0xf0
/* 8033DA10 0033A950  40 82 00 08 */	bne lbl_8033DA18
/* 8033DA14 0033A954  60 A5 08 00 */	ori r5, r5, 0x800
lbl_8033DA18:
/* 8033DA18 0033A958  54 80 05 28 */	rlwinm r0, r4, 0, 0x14, 0x14
/* 8033DA1C 0033A95C  28 00 00 00 */	cmplwi r0, 0
/* 8033DA20 0033A960  40 82 00 08 */	bne lbl_8033DA28
/* 8033DA24 0033A964  60 A5 00 08 */	ori r5, r5, 8
lbl_8033DA28:
/* 8033DA28 0033A968  54 80 05 6A */	rlwinm r0, r4, 0, 0x15, 0x15
/* 8033DA2C 0033A96C  28 00 00 00 */	cmplwi r0, 0
/* 8033DA30 0033A970  40 82 00 08 */	bne lbl_8033DA38
/* 8033DA34 0033A974  60 A5 00 04 */	ori r5, r5, 4
lbl_8033DA38:
/* 8033DA38 0033A978  54 80 05 AC */	rlwinm r0, r4, 0, 0x16, 0x16
/* 8033DA3C 0033A97C  28 00 00 00 */	cmplwi r0, 0
/* 8033DA40 0033A980  40 82 00 08 */	bne lbl_8033DA48
/* 8033DA44 0033A984  60 A5 00 02 */	ori r5, r5, 2
lbl_8033DA48:
/* 8033DA48 0033A988  54 80 05 EE */	rlwinm r0, r4, 0, 0x17, 0x17
/* 8033DA4C 0033A98C  28 00 00 00 */	cmplwi r0, 0
/* 8033DA50 0033A990  40 82 00 08 */	bne lbl_8033DA58
/* 8033DA54 0033A994  60 A5 00 01 */	ori r5, r5, 1
lbl_8033DA58:
/* 8033DA58 0033A998  54 80 06 30 */	rlwinm r0, r4, 0, 0x18, 0x18
/* 8033DA5C 0033A99C  28 00 00 00 */	cmplwi r0, 0
/* 8033DA60 0033A9A0  40 82 00 08 */	bne lbl_8033DA68
/* 8033DA64 0033A9A4  60 A5 01 00 */	ori r5, r5, 0x100
lbl_8033DA68:
/* 8033DA68 0033A9A8  54 80 06 72 */	rlwinm r0, r4, 0, 0x19, 0x19
/* 8033DA6C 0033A9AC  28 00 00 00 */	cmplwi r0, 0
/* 8033DA70 0033A9B0  40 82 00 08 */	bne lbl_8033DA78
/* 8033DA74 0033A9B4  60 A5 10 00 */	ori r5, r5, 0x1000
lbl_8033DA78:
/* 8033DA78 0033A9B8  54 80 04 A4 */	rlwinm r0, r4, 0, 0x12, 0x12
/* 8033DA7C 0033A9BC  28 00 00 00 */	cmplwi r0, 0
/* 8033DA80 0033A9C0  40 82 00 08 */	bne lbl_8033DA88
/* 8033DA84 0033A9C4  60 A5 02 00 */	ori r5, r5, 0x200
lbl_8033DA88:
/* 8033DA88 0033A9C8  54 80 04 E6 */	rlwinm r0, r4, 0, 0x13, 0x13
/* 8033DA8C 0033A9CC  28 00 00 00 */	cmplwi r0, 0
/* 8033DA90 0033A9D0  40 82 00 08 */	bne lbl_8033DA98
/* 8033DA94 0033A9D4  60 A5 04 00 */	ori r5, r5, 0x400
lbl_8033DA98:
/* 8033DA98 0033A9D8  54 80 06 B4 */	rlwinm r0, r4, 0, 0x1a, 0x1a
/* 8033DA9C 0033A9DC  28 00 00 00 */	cmplwi r0, 0
/* 8033DAA0 0033A9E0  40 82 00 08 */	bne lbl_8033DAA8
/* 8033DAA4 0033A9E4  60 A5 20 00 */	ori r5, r5, 0x2000
lbl_8033DAA8:
/* 8033DAA8 0033A9E8  3C 80 CC 00 */	lis r4, 0xCC003000@ha
/* 8033DAAC 0033A9EC  38 84 30 00 */	addi r4, r4, 0xCC003000@l
/* 8033DAB0 0033A9F0  90 A4 00 04 */	stw r5, 4(r4)
/* 8033DAB4 0033A9F4  54 63 06 E0 */	rlwinm r3, r3, 0, 0x1b, 0x10
lbl_8033DAB8:
/* 8033DAB8 0033A9F8  4E 80 00 20 */	blr 

.global __OSMaskInterrupts
__OSMaskInterrupts:
/* 8033DABC 0033A9FC  7C 08 02 A6 */	mflr r0
/* 8033DAC0 0033AA00  90 01 00 04 */	stw r0, 4(r1)
/* 8033DAC4 0033AA04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033DAC8 0033AA08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033DACC 0033AA0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033DAD0 0033AA10  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033DAD4 0033AA14  7C 7F 1B 78 */	mr r31, r3
/* 8033DAD8 0033AA18  4B FF FC 1D */	bl __RAS_OSDisableInterrupts_begin 
/* 8033DADC 0033AA1C  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 8033DAE0 0033AA20  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 8033DAE4 0033AA24  7C 7E 1B 78 */	mr r30, r3
/* 8033DAE8 0033AA28  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 8033DAEC 0033AA2C  7F A0 2B 78 */	or r0, r29, r5
/* 8033DAF0 0033AA30  7F E3 00 78 */	andc r3, r31, r0
/* 8033DAF4 0033AA34  7F FF EB 78 */	or r31, r31, r29
/* 8033DAF8 0033AA38  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 8033DAFC 0033AA3C  7F FF 2B 78 */	or r31, r31, r5
/* 8033DB00 0033AA40  48 00 00 04 */	b lbl_8033DB04
lbl_8033DB04:
/* 8033DB04 0033AA44  48 00 00 04 */	b lbl_8033DB08
lbl_8033DB08:
/* 8033DB08 0033AA48  48 00 00 0C */	b lbl_8033DB14
lbl_8033DB0C:
/* 8033DB0C 0033AA4C  7F E4 FB 78 */	mr r4, r31
/* 8033DB10 0033AA50  4B FF FC D5 */	bl SetInterruptMask
lbl_8033DB14:
/* 8033DB14 0033AA54  28 03 00 00 */	cmplwi r3, 0
/* 8033DB18 0033AA58  40 82 FF F4 */	bne lbl_8033DB0C
/* 8033DB1C 0033AA5C  7F C3 F3 78 */	mr r3, r30
/* 8033DB20 0033AA60  4B FF FB FD */	bl OSRestoreInterrupts
/* 8033DB24 0033AA64  7F A3 EB 78 */	mr r3, r29
/* 8033DB28 0033AA68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033DB2C 0033AA6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033DB30 0033AA70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033DB34 0033AA74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033DB38 0033AA78  38 21 00 20 */	addi r1, r1, 0x20
/* 8033DB3C 0033AA7C  7C 08 03 A6 */	mtlr r0
/* 8033DB40 0033AA80  4E 80 00 20 */	blr 

.global __OSUnmaskInterrupts
__OSUnmaskInterrupts:
/* 8033DB44 0033AA84  7C 08 02 A6 */	mflr r0
/* 8033DB48 0033AA88  90 01 00 04 */	stw r0, 4(r1)
/* 8033DB4C 0033AA8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033DB50 0033AA90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033DB54 0033AA94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033DB58 0033AA98  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033DB5C 0033AA9C  7C 7F 1B 78 */	mr r31, r3
/* 8033DB60 0033AAA0  4B FF FB 95 */	bl __RAS_OSDisableInterrupts_begin 
/* 8033DB64 0033AAA4  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 8033DB68 0033AAA8  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 8033DB6C 0033AAAC  7C 7E 1B 78 */	mr r30, r3
/* 8033DB70 0033AAB0  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 8033DB74 0033AAB4  7F A0 2B 78 */	or r0, r29, r5
/* 8033DB78 0033AAB8  7F E3 00 38 */	and r3, r31, r0
/* 8033DB7C 0033AABC  7F BF F8 78 */	andc r31, r29, r31
/* 8033DB80 0033AAC0  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 8033DB84 0033AAC4  7F FF 2B 78 */	or r31, r31, r5
/* 8033DB88 0033AAC8  48 00 00 04 */	b lbl_8033DB8C
lbl_8033DB8C:
/* 8033DB8C 0033AACC  48 00 00 04 */	b lbl_8033DB90
lbl_8033DB90:
/* 8033DB90 0033AAD0  48 00 00 0C */	b lbl_8033DB9C
lbl_8033DB94:
/* 8033DB94 0033AAD4  7F E4 FB 78 */	mr r4, r31
/* 8033DB98 0033AAD8  4B FF FC 4D */	bl SetInterruptMask
lbl_8033DB9C:
/* 8033DB9C 0033AADC  28 03 00 00 */	cmplwi r3, 0
/* 8033DBA0 0033AAE0  40 82 FF F4 */	bne lbl_8033DB94
/* 8033DBA4 0033AAE4  7F C3 F3 78 */	mr r3, r30
/* 8033DBA8 0033AAE8  4B FF FB 75 */	bl OSRestoreInterrupts
/* 8033DBAC 0033AAEC  7F A3 EB 78 */	mr r3, r29
/* 8033DBB0 0033AAF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033DBB4 0033AAF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033DBB8 0033AAF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033DBBC 0033AAFC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033DBC0 0033AB00  38 21 00 20 */	addi r1, r1, 0x20
/* 8033DBC4 0033AB04  7C 08 03 A6 */	mtlr r0
/* 8033DBC8 0033AB08  4E 80 00 20 */	blr 
.global __OSDispatchInterrupt
__OSDispatchInterrupt:
/* 8033DBCC 0033AB0C  7C 08 02 A6 */	mflr r0
/* 8033DBD0 0033AB10  90 01 00 04 */	stw r0, 4(r1)
/* 8033DBD4 0033AB14  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033DBD8 0033AB18  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033DBDC 0033AB1C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033DBE0 0033AB20  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033DBE4 0033AB24  7C 9E 23 78 */	mr r30, r4
/* 8033DBE8 0033AB28  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8033DBEC 0033AB2C  83 E3 30 00 */	lwz r31, 0xCC003000@l(r3)
/* 8033DBF0 0033AB30  57 FF 04 1C */	rlwinm r31, r31, 0, 0x10, 0xe
/* 8033DBF4 0033AB34  28 1F 00 00 */	cmplwi r31, 0
/* 8033DBF8 0033AB38  41 82 00 18 */	beq lbl_8033DC10
/* 8033DBFC 0033AB3C  38 63 30 00 */	addi r3, r3, 0x3000
/* 8033DC00 0033AB40  80 03 00 04 */	lwz r0, 4(r3)
/* 8033DC04 0033AB44  7F E0 00 38 */	and r0, r31, r0
/* 8033DC08 0033AB48  28 00 00 00 */	cmplwi r0, 0
/* 8033DC0C 0033AB4C  40 82 00 0C */	bne lbl_8033DC18
lbl_8033DC10:
/* 8033DC10 0033AB50  7F C3 F3 78 */	mr r3, r30
/* 8033DC14 0033AB54  4B FF E3 0D */	bl OSLoadContext
lbl_8033DC18:
/* 8033DC18 0033AB58  57 E0 06 30 */	rlwinm r0, r31, 0, 0x18, 0x18
/* 8033DC1C 0033AB5C  28 00 00 00 */	cmplwi r0, 0
/* 8033DC20 0033AB60  38 00 00 00 */	li r0, 0
/* 8033DC24 0033AB64  41 82 00 60 */	beq lbl_8033DC84
/* 8033DC28 0033AB68  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 8033DC2C 0033AB6C  38 63 40 00 */	addi r3, r3, 0xCC004000@l
/* 8033DC30 0033AB70  A0 83 00 1E */	lhz r4, 0x1e(r3)
/* 8033DC34 0033AB74  54 83 07 FE */	clrlwi r3, r4, 0x1f
/* 8033DC38 0033AB78  28 03 00 00 */	cmplwi r3, 0
/* 8033DC3C 0033AB7C  41 82 00 08 */	beq lbl_8033DC44
/* 8033DC40 0033AB80  64 00 80 00 */	oris r0, r0, 0x8000
lbl_8033DC44:
/* 8033DC44 0033AB84  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8033DC48 0033AB88  28 03 00 00 */	cmplwi r3, 0
/* 8033DC4C 0033AB8C  41 82 00 08 */	beq lbl_8033DC54
/* 8033DC50 0033AB90  64 00 40 00 */	oris r0, r0, 0x4000
lbl_8033DC54:
/* 8033DC54 0033AB94  54 83 07 7A */	rlwinm r3, r4, 0, 0x1d, 0x1d
/* 8033DC58 0033AB98  28 03 00 00 */	cmplwi r3, 0
/* 8033DC5C 0033AB9C  41 82 00 08 */	beq lbl_8033DC64
/* 8033DC60 0033ABA0  64 00 20 00 */	oris r0, r0, 0x2000
lbl_8033DC64:
/* 8033DC64 0033ABA4  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DC68 0033ABA8  28 03 00 00 */	cmplwi r3, 0
/* 8033DC6C 0033ABAC  41 82 00 08 */	beq lbl_8033DC74
/* 8033DC70 0033ABB0  64 00 10 00 */	oris r0, r0, 0x1000
lbl_8033DC74:
/* 8033DC74 0033ABB4  54 83 06 F6 */	rlwinm r3, r4, 0, 0x1b, 0x1b
/* 8033DC78 0033ABB8  28 03 00 00 */	cmplwi r3, 0
/* 8033DC7C 0033ABBC  41 82 00 08 */	beq lbl_8033DC84
/* 8033DC80 0033ABC0  64 00 08 00 */	oris r0, r0, 0x800
lbl_8033DC84:
/* 8033DC84 0033ABC4  57 E3 06 72 */	rlwinm r3, r31, 0, 0x19, 0x19
/* 8033DC88 0033ABC8  28 03 00 00 */	cmplwi r3, 0
/* 8033DC8C 0033ABCC  41 82 00 40 */	beq lbl_8033DCCC
/* 8033DC90 0033ABD0  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8033DC94 0033ABD4  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8033DC98 0033ABD8  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8033DC9C 0033ABDC  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DCA0 0033ABE0  28 03 00 00 */	cmplwi r3, 0
/* 8033DCA4 0033ABE4  41 82 00 08 */	beq lbl_8033DCAC
/* 8033DCA8 0033ABE8  64 00 04 00 */	oris r0, r0, 0x400
lbl_8033DCAC:
/* 8033DCAC 0033ABEC  54 83 06 B4 */	rlwinm r3, r4, 0, 0x1a, 0x1a
/* 8033DCB0 0033ABF0  28 03 00 00 */	cmplwi r3, 0
/* 8033DCB4 0033ABF4  41 82 00 08 */	beq lbl_8033DCBC
/* 8033DCB8 0033ABF8  64 00 02 00 */	oris r0, r0, 0x200
lbl_8033DCBC:
/* 8033DCBC 0033ABFC  54 83 06 30 */	rlwinm r3, r4, 0, 0x18, 0x18
/* 8033DCC0 0033AC00  28 03 00 00 */	cmplwi r3, 0
/* 8033DCC4 0033AC04  41 82 00 08 */	beq lbl_8033DCCC
/* 8033DCC8 0033AC08  64 00 01 00 */	oris r0, r0, 0x100
lbl_8033DCCC:
/* 8033DCCC 0033AC0C  57 E3 06 B4 */	rlwinm r3, r31, 0, 0x1a, 0x1a
/* 8033DCD0 0033AC10  28 03 00 00 */	cmplwi r3, 0
/* 8033DCD4 0033AC14  41 82 00 1C */	beq lbl_8033DCF0
/* 8033DCD8 0033AC18  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8033DCDC 0033AC1C  80 63 6C 00 */	lwz r3, 0xCC006C00@l(r3)
/* 8033DCE0 0033AC20  54 63 07 38 */	rlwinm r3, r3, 0, 0x1c, 0x1c
/* 8033DCE4 0033AC24  28 03 00 00 */	cmplwi r3, 0
/* 8033DCE8 0033AC28  41 82 00 08 */	beq lbl_8033DCF0
/* 8033DCEC 0033AC2C  64 00 00 80 */	oris r0, r0, 0x80
lbl_8033DCF0:
/* 8033DCF0 0033AC30  57 E3 06 F6 */	rlwinm r3, r31, 0, 0x1b, 0x1b
/* 8033DCF4 0033AC34  28 03 00 00 */	cmplwi r3, 0
/* 8033DCF8 0033AC38  41 82 00 A4 */	beq lbl_8033DD9C
/* 8033DCFC 0033AC3C  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 8033DD00 0033AC40  80 83 68 00 */	lwz r4, 0xCC006800@l(r3)
/* 8033DD04 0033AC44  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8033DD08 0033AC48  28 03 00 00 */	cmplwi r3, 0
/* 8033DD0C 0033AC4C  41 82 00 08 */	beq lbl_8033DD14
/* 8033DD10 0033AC50  64 00 00 40 */	oris r0, r0, 0x40
lbl_8033DD14:
/* 8033DD14 0033AC54  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DD18 0033AC58  28 03 00 00 */	cmplwi r3, 0
/* 8033DD1C 0033AC5C  41 82 00 08 */	beq lbl_8033DD24
/* 8033DD20 0033AC60  64 00 00 20 */	oris r0, r0, 0x20
lbl_8033DD24:
/* 8033DD24 0033AC64  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 8033DD28 0033AC68  28 03 00 00 */	cmplwi r3, 0
/* 8033DD2C 0033AC6C  41 82 00 08 */	beq lbl_8033DD34
/* 8033DD30 0033AC70  64 00 00 10 */	oris r0, r0, 0x10
lbl_8033DD34:
/* 8033DD34 0033AC74  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 8033DD38 0033AC78  38 63 68 00 */	addi r3, r3, 0xCC006800@l
/* 8033DD3C 0033AC7C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8033DD40 0033AC80  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8033DD44 0033AC84  28 03 00 00 */	cmplwi r3, 0
/* 8033DD48 0033AC88  41 82 00 08 */	beq lbl_8033DD50
/* 8033DD4C 0033AC8C  64 00 00 08 */	oris r0, r0, 8
lbl_8033DD50:
/* 8033DD50 0033AC90  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DD54 0033AC94  28 03 00 00 */	cmplwi r3, 0
/* 8033DD58 0033AC98  41 82 00 08 */	beq lbl_8033DD60
/* 8033DD5C 0033AC9C  64 00 00 04 */	oris r0, r0, 4
lbl_8033DD60:
/* 8033DD60 0033ACA0  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 8033DD64 0033ACA4  28 03 00 00 */	cmplwi r3, 0
/* 8033DD68 0033ACA8  41 82 00 08 */	beq lbl_8033DD70
/* 8033DD6C 0033ACAC  64 00 00 02 */	oris r0, r0, 2
lbl_8033DD70:
/* 8033DD70 0033ACB0  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 8033DD74 0033ACB4  38 63 68 00 */	addi r3, r3, 0xCC006800@l
/* 8033DD78 0033ACB8  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8033DD7C 0033ACBC  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 8033DD80 0033ACC0  28 03 00 00 */	cmplwi r3, 0
/* 8033DD84 0033ACC4  41 82 00 08 */	beq lbl_8033DD8C
/* 8033DD88 0033ACC8  64 00 00 01 */	oris r0, r0, 1
lbl_8033DD8C:
/* 8033DD8C 0033ACCC  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 8033DD90 0033ACD0  28 03 00 00 */	cmplwi r3, 0
/* 8033DD94 0033ACD4  41 82 00 08 */	beq lbl_8033DD9C
/* 8033DD98 0033ACD8  60 00 80 00 */	ori r0, r0, 0x8000
lbl_8033DD9C:
/* 8033DD9C 0033ACDC  57 E3 04 A4 */	rlwinm r3, r31, 0, 0x12, 0x12
/* 8033DDA0 0033ACE0  28 03 00 00 */	cmplwi r3, 0
/* 8033DDA4 0033ACE4  41 82 00 08 */	beq lbl_8033DDAC
/* 8033DDA8 0033ACE8  60 00 00 20 */	ori r0, r0, 0x20
lbl_8033DDAC:
/* 8033DDAC 0033ACEC  57 E3 04 E6 */	rlwinm r3, r31, 0, 0x13, 0x13
/* 8033DDB0 0033ACF0  28 03 00 00 */	cmplwi r3, 0
/* 8033DDB4 0033ACF4  41 82 00 08 */	beq lbl_8033DDBC
/* 8033DDB8 0033ACF8  60 00 00 40 */	ori r0, r0, 0x40
lbl_8033DDBC:
/* 8033DDBC 0033ACFC  57 E3 05 6A */	rlwinm r3, r31, 0, 0x15, 0x15
/* 8033DDC0 0033AD00  28 03 00 00 */	cmplwi r3, 0
/* 8033DDC4 0033AD04  41 82 00 08 */	beq lbl_8033DDCC
/* 8033DDC8 0033AD08  60 00 10 00 */	ori r0, r0, 0x1000
lbl_8033DDCC:
/* 8033DDCC 0033AD0C  57 E3 05 AC */	rlwinm r3, r31, 0, 0x16, 0x16
/* 8033DDD0 0033AD10  28 03 00 00 */	cmplwi r3, 0
/* 8033DDD4 0033AD14  41 82 00 08 */	beq lbl_8033DDDC
/* 8033DDD8 0033AD18  60 00 20 00 */	ori r0, r0, 0x2000
lbl_8033DDDC:
/* 8033DDDC 0033AD1C  57 E3 05 EE */	rlwinm r3, r31, 0, 0x17, 0x17
/* 8033DDE0 0033AD20  28 03 00 00 */	cmplwi r3, 0
/* 8033DDE4 0033AD24  41 82 00 08 */	beq lbl_8033DDEC
/* 8033DDE8 0033AD28  60 00 00 80 */	ori r0, r0, 0x80
lbl_8033DDEC:
/* 8033DDEC 0033AD2C  57 E3 07 38 */	rlwinm r3, r31, 0, 0x1c, 0x1c
/* 8033DDF0 0033AD30  28 03 00 00 */	cmplwi r3, 0
/* 8033DDF4 0033AD34  41 82 00 08 */	beq lbl_8033DDFC
/* 8033DDF8 0033AD38  60 00 08 00 */	ori r0, r0, 0x800
lbl_8033DDFC:
/* 8033DDFC 0033AD3C  57 E3 07 7A */	rlwinm r3, r31, 0, 0x1d, 0x1d
/* 8033DE00 0033AD40  28 03 00 00 */	cmplwi r3, 0
/* 8033DE04 0033AD44  41 82 00 08 */	beq lbl_8033DE0C
/* 8033DE08 0033AD48  60 00 04 00 */	ori r0, r0, 0x400
lbl_8033DE0C:
/* 8033DE0C 0033AD4C  57 E3 07 BC */	rlwinm r3, r31, 0, 0x1e, 0x1e
/* 8033DE10 0033AD50  28 03 00 00 */	cmplwi r3, 0
/* 8033DE14 0033AD54  41 82 00 08 */	beq lbl_8033DE1C
/* 8033DE18 0033AD58  60 00 02 00 */	ori r0, r0, 0x200
lbl_8033DE1C:
/* 8033DE1C 0033AD5C  57 E3 05 28 */	rlwinm r3, r31, 0, 0x14, 0x14
/* 8033DE20 0033AD60  28 03 00 00 */	cmplwi r3, 0
/* 8033DE24 0033AD64  41 82 00 08 */	beq lbl_8033DE2C
/* 8033DE28 0033AD68  60 00 40 00 */	ori r0, r0, 0x4000
lbl_8033DE2C:
/* 8033DE2C 0033AD6C  57 E3 07 FE */	clrlwi r3, r31, 0x1f
/* 8033DE30 0033AD70  28 03 00 00 */	cmplwi r3, 0
/* 8033DE34 0033AD74  41 82 00 08 */	beq lbl_8033DE3C
/* 8033DE38 0033AD78  60 00 01 00 */	ori r0, r0, 0x100
lbl_8033DE3C:
/* 8033DE3C 0033AD7C  3C 60 80 00 */	lis r3, 0x800000C4@ha
/* 8033DE40 0033AD80  80 83 00 C4 */	lwz r4, 0x800000C4@l(r3)
/* 8033DE44 0033AD84  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8033DE48 0033AD88  7C 83 1B 78 */	or r3, r4, r3
/* 8033DE4C 0033AD8C  7C 04 18 78 */	andc r4, r0, r3
/* 8033DE50 0033AD90  28 04 00 00 */	cmplwi r4, 0
/* 8033DE54 0033AD94  41 82 00 98 */	beq lbl_8033DEEC
/* 8033DE58 0033AD98  3C 60 80 3D */	lis r3, lbl_803D0758@ha
/* 8033DE5C 0033AD9C  38 03 07 58 */	addi r0, r3, lbl_803D0758@l
/* 8033DE60 0033ADA0  7C 03 03 78 */	mr r3, r0
/* 8033DE64 0033ADA4  48 00 00 04 */	b lbl_8033DE68
lbl_8033DE68:
/* 8033DE68 0033ADA8  48 00 00 04 */	b lbl_8033DE6C
lbl_8033DE6C:
/* 8033DE6C 0033ADAC  80 03 00 00 */	lwz r0, 0(r3)
/* 8033DE70 0033ADB0  7C 80 00 38 */	and r0, r4, r0
/* 8033DE74 0033ADB4  28 00 00 00 */	cmplwi r0, 0
/* 8033DE78 0033ADB8  41 82 00 10 */	beq lbl_8033DE88
/* 8033DE7C 0033ADBC  7C 00 00 34 */	cntlzw r0, r0
/* 8033DE80 0033ADC0  7C 1D 07 34 */	extsh r29, r0
/* 8033DE84 0033ADC4  48 00 00 0C */	b lbl_8033DE90
lbl_8033DE88:
/* 8033DE88 0033ADC8  38 63 00 04 */	addi r3, r3, 4
/* 8033DE8C 0033ADCC  4B FF FF E0 */	b lbl_8033DE6C
lbl_8033DE90:
/* 8033DE90 0033ADD0  80 6D 90 F0 */	lwz r3, lbl_80451670-_SDA_BASE_(r13)
/* 8033DE94 0033ADD4  57 A0 10 3A */	slwi r0, r29, 2
/* 8033DE98 0033ADD8  7F E3 00 2E */	lwzx r31, r3, r0
/* 8033DE9C 0033ADDC  28 1F 00 00 */	cmplwi r31, 0
/* 8033DEA0 0033ADE0  41 82 00 4C */	beq lbl_8033DEEC
/* 8033DEA4 0033ADE4  2C 1D 00 04 */	cmpwi r29, 4
/* 8033DEA8 0033ADE8  40 81 00 1C */	ble lbl_8033DEC4
/* 8033DEAC 0033ADEC  B3 AD 90 F8 */	sth r29, lbl_80451678-_SDA_BASE_(r13)
/* 8033DEB0 0033ADF0  48 00 48 4D */	bl OSGetTime
/* 8033DEB4 0033ADF4  90 8D 91 04 */	stw r4, lbl_80451684-_SDA_BASE_(r13)
/* 8033DEB8 0033ADF8  90 6D 91 00 */	stw r3, lbl_80451680-_SDA_BASE_(r13)
/* 8033DEBC 0033ADFC  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 8033DEC0 0033AE00  90 0D 90 F4 */	stw r0, lbl_80451674-_SDA_BASE_(r13)
lbl_8033DEC4:
/* 8033DEC4 0033AE04  48 00 2E 01 */	bl OSDisableScheduler
/* 8033DEC8 0033AE08  7F A3 EB 78 */	mr r3, r29
/* 8033DECC 0033AE0C  7F C4 F3 78 */	mr r4, r30
/* 8033DED0 0033AE10  7F EC FB 78 */	mr r12, r31
/* 8033DED4 0033AE14  7D 88 03 A6 */	mtlr r12
/* 8033DED8 0033AE18  4E 80 00 21 */	blrl 
/* 8033DEDC 0033AE1C  48 00 2E 29 */	bl OSEnableScheduler
/* 8033DEE0 0033AE20  48 00 33 41 */	bl __OSReschedule
/* 8033DEE4 0033AE24  7F C3 F3 78 */	mr r3, r30
/* 8033DEE8 0033AE28  4B FF E0 39 */	bl OSLoadContext
lbl_8033DEEC:
/* 8033DEEC 0033AE2C  7F C3 F3 78 */	mr r3, r30
/* 8033DEF0 0033AE30  4B FF E0 31 */	bl OSLoadContext
/* 8033DEF4 0033AE34  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033DEF8 0033AE38  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033DEFC 0033AE3C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033DF00 0033AE40  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033DF04 0033AE44  38 21 00 28 */	addi r1, r1, 0x28
/* 8033DF08 0033AE48  7C 08 03 A6 */	mtlr r0
/* 8033DF0C 0033AE4C  4E 80 00 20 */	blr 
.global ExternalInterruptHandler
ExternalInterruptHandler:
/* 8033DF10 0033AE50  90 04 00 00 */	stw r0, 0(r4)
/* 8033DF14 0033AE54  90 24 00 04 */	stw r1, 4(r4)
/* 8033DF18 0033AE58  90 44 00 08 */	stw r2, 8(r4)
/* 8033DF1C 0033AE5C  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 8033DF20 0033AE60  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8033DF24 0033AE64  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 8033DF28 0033AE68  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8033DF2C 0033AE6C  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 8033DF30 0033AE70  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8033DF34 0033AE74  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 8033DF38 0033AE78  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8033DF3C 0033AE7C  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 8033DF40 0033AE80  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8033DF44 0033AE84  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 8033DF48 0033AE88  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8033DF4C 0033AE8C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 8033DF50 0033AE90  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8033DF54 0033AE94  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 8033DF58 0033AE98  94 21 FF F8 */	stwu r1, -8(r1)
.global __OSDispatchInterrupt
/* 8033DF5C 0033AE9C  4B FF FC 70 */	b __OSDispatchInterrupt

