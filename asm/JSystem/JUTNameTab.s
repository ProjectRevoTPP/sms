.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__10JUTNameTabFPC7ResNTAB
__ct__10JUTNameTabFPC7ResNTAB:
/* 80012FCC 0000FF0C  90 83 00 00 */	stw r4, 0(r3)
/* 80012FD0 0000FF10  A0 04 00 00 */	lhz r0, 0(r4)
/* 80012FD4 0000FF14  54 05 10 3A */	slwi r5, r0, 2
/* 80012FD8 0000FF18  38 05 00 04 */	addi r0, r5, 4
/* 80012FDC 0000FF1C  7C 04 02 14 */	add r0, r4, r0
/* 80012FE0 0000FF20  90 03 00 04 */	stw r0, 4(r3)
/* 80012FE4 0000FF24  A0 04 00 00 */	lhz r0, 0(r4)
/* 80012FE8 0000FF28  B0 03 00 08 */	sth r0, 8(r3)
/* 80012FEC 0000FF2C  4E 80 00 20 */	blr 

.global getIndex__10JUTNameTabCFPCc
getIndex__10JUTNameTabCFPCc:
/* 80012FF0 0000FF30  7C 08 02 A6 */	mflr r0
/* 80012FF4 0000FF34  90 01 00 04 */	stw r0, 4(r1)
/* 80012FF8 0000FF38  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80012FFC 0000FF3C  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 80013000 0000FF40  7C 7A 1B 78 */	mr r26, r3
/* 80013004 0000FF44  3B 64 00 00 */	addi r27, r4, 0
/* 80013008 0000FF48  80 A3 00 00 */	lwz r5, 0(r3)
/* 8001300C 0000FF4C  3B A5 00 04 */	addi r29, r5, 4
/* 80013010 0000FF50  48 00 00 AD */	bl calcKeyCode__10JUTNameTabCFPCc
/* 80013014 0000FF54  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 80013018 0000FF58  3B 80 00 00 */	li r28, 0
/* 8001301C 0000FF5C  48 00 00 48 */	b lbl_80013064
lbl_80013020:
/* 80013020 0000FF60  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80013024 0000FF64  7C 00 F0 40 */	cmplw r0, r30
/* 80013028 0000FF68  40 82 00 34 */	bne lbl_8001305C
/* 8001302C 0000FF6C  57 9F 04 3E */	clrlwi r31, r28, 0x10
/* 80013030 0000FF70  80 BA 00 00 */	lwz r5, 0(r26)
/* 80013034 0000FF74  57 83 13 BA */	rlwinm r3, r28, 2, 0xe, 0x1d
/* 80013038 0000FF78  38 03 00 06 */	addi r0, r3, 6
/* 8001303C 0000FF7C  7C 05 02 2E */	lhzx r0, r5, r0
/* 80013040 0000FF80  38 9B 00 00 */	addi r4, r27, 0
/* 80013044 0000FF84  7C 65 02 14 */	add r3, r5, r0
/* 80013048 0000FF88  48 07 2C 15 */	bl strcmp
/* 8001304C 0000FF8C  2C 03 00 00 */	cmpwi r3, 0
/* 80013050 0000FF90  40 82 00 0C */	bne lbl_8001305C
/* 80013054 0000FF94  7F E3 FB 78 */	mr r3, r31
/* 80013058 0000FF98  48 00 00 20 */	b lbl_80013078
lbl_8001305C:
/* 8001305C 0000FF9C  3B BD 00 04 */	addi r29, r29, 4
/* 80013060 0000FFA0  3B 9C 00 01 */	addi r28, r28, 1
lbl_80013064:
/* 80013064 0000FFA4  A0 1A 00 08 */	lhz r0, 8(r26)
/* 80013068 0000FFA8  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8001306C 0000FFAC  7C 03 00 40 */	cmplw r3, r0
/* 80013070 0000FFB0  41 80 FF B0 */	blt lbl_80013020
/* 80013074 0000FFB4  38 60 FF FF */	li r3, -1
lbl_80013078:
/* 80013078 0000FFB8  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 8001307C 0000FFBC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80013080 0000FFC0  38 21 00 28 */	addi r1, r1, 0x28
/* 80013084 0000FFC4  7C 08 03 A6 */	mtlr r0
/* 80013088 0000FFC8  4E 80 00 20 */	blr 

.global getName__10JUTNameTabCFUs
getName__10JUTNameTabCFUs:
/* 8001308C 0000FFCC  A0 03 00 08 */	lhz r0, 8(r3)
/* 80013090 0000FFD0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80013094 0000FFD4  7C 04 00 40 */	cmplw r4, r0
/* 80013098 0000FFD8  40 80 00 1C */	bge lbl_800130B4
/* 8001309C 0000FFDC  80 A3 00 00 */	lwz r5, 0(r3)
/* 800130A0 0000FFE0  54 80 10 3A */	slwi r0, r4, 2
/* 800130A4 0000FFE4  7C 65 02 14 */	add r3, r5, r0
/* 800130A8 0000FFE8  A0 03 00 06 */	lhz r0, 6(r3)
/* 800130AC 0000FFEC  7C 65 02 14 */	add r3, r5, r0
/* 800130B0 0000FFF0  4E 80 00 20 */	blr 
lbl_800130B4:
/* 800130B4 0000FFF4  38 60 00 00 */	li r3, 0
/* 800130B8 0000FFF8  4E 80 00 20 */	blr 

.global calcKeyCode__10JUTNameTabCFPCc
calcKeyCode__10JUTNameTabCFPCc:
/* 800130BC 0000FFFC  38 A0 00 00 */	li r5, 0
/* 800130C0 00010000  48 00 00 18 */	b lbl_800130D8
lbl_800130C4:
/* 800130C4 00010004  88 64 00 00 */	lbz r3, 0(r4)
/* 800130C8 00010008  1C 05 00 03 */	mulli r0, r5, 3
/* 800130CC 0001000C  7C 63 07 74 */	extsb r3, r3
/* 800130D0 00010010  7C A3 02 14 */	add r5, r3, r0
/* 800130D4 00010014  38 84 00 01 */	addi r4, r4, 1
lbl_800130D8:
/* 800130D8 00010018  88 04 00 00 */	lbz r0, 0(r4)
/* 800130DC 0001001C  7C 00 07 75 */	extsb. r0, r0
/* 800130E0 00010020  40 82 FF E4 */	bne lbl_800130C4
/* 800130E4 00010024  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 800130E8 00010028  4E 80 00 20 */	blr 