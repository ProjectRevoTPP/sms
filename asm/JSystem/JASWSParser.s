.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global getGroupCount__Q28JASystem8WSParserFPv
getGroupCount__Q28JASystem8WSParserFPv:
/* 8005B44C 0005838C  7C 08 02 A6 */	mflr r0
/* 8005B450 00058390  90 01 00 04 */	stw r0, 4(r1)
/* 8005B454 00058394  94 21 FF F8 */	stwu r1, -8(r1)
/* 8005B458 00058398  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8005B45C 0005839C  48 00 04 F5 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlGroup$$1__FPCvUl
/* 8005B460 000583A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8005B464 000583A4  38 21 00 08 */	addi r1, r1, 8
/* 8005B468 000583A8  80 63 00 08 */	lwz r3, 8(r3)
/* 8005B46C 000583AC  7C 08 03 A6 */	mtlr r0
/* 8005B470 000583B0  4E 80 00 20 */	blr 

.global createBasicWaveBank__Q28JASystem8WSParserFPv
createBasicWaveBank__Q28JASystem8WSParserFPv:
/* 8005B474 000583B4  7C 08 02 A6 */	mflr r0
/* 8005B478 000583B8  90 01 00 04 */	stw r0, 4(r1)
/* 8005B47C 000583BC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8005B480 000583C0  BE 41 00 48 */	stmw r18, 0x48(r1)
/* 8005B484 000583C4  7C 72 1B 78 */	mr r18, r3
/* 8005B488 000583C8  4B FF FC E9 */	bl getCurrentHeap__Q28JASystem9TWaveBankFv
/* 8005B48C 000583CC  7C 7A 1B 78 */	mr r26, r3
/* 8005B490 000583D0  81 9A 00 00 */	lwz r12, 0(r26)
/* 8005B494 000583D4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8005B498 000583D8  7D 88 03 A6 */	mtlr r12
/* 8005B49C 000583DC  4E 80 00 21 */	blrl 
/* 8005B4A0 000583E0  3B 83 00 00 */	addi r28, r3, 0
/* 8005B4A4 000583E4  3B 32 00 00 */	addi r25, r18, 0
/* 8005B4A8 000583E8  38 9A 00 00 */	addi r4, r26, 0
/* 8005B4AC 000583EC  38 60 00 14 */	li r3, 0x14
/* 8005B4B0 000583F0  38 A0 00 00 */	li r5, 0
/* 8005B4B4 000583F4  4B FB 14 91 */	bl __nw__FUlP7JKRHeapi
/* 8005B4B8 000583F8  7C 7B 1B 79 */	or. r27, r3, r3
/* 8005B4BC 000583FC  41 82 00 10 */	beq lbl_8005B4CC
/* 8005B4C0 00058400  7F 63 DB 78 */	mr r3, r27
/* 8005B4C4 00058404  4B FF DE 15 */	bl __ct__Q28JASystem14TBasicWaveBankFv
/* 8005B4C8 00058408  7C 7B 1B 78 */	mr r27, r3
lbl_8005B4CC:
/* 8005B4CC 0005840C  28 1B 00 00 */	cmplwi r27, 0
/* 8005B4D0 00058410  40 82 00 0C */	bne lbl_8005B4DC
/* 8005B4D4 00058414  38 60 00 00 */	li r3, 0
/* 8005B4D8 00058418  48 00 01 B4 */	b lbl_8005B68C
lbl_8005B4DC:
/* 8005B4DC 0005841C  7F 23 CB 78 */	mr r3, r25
/* 8005B4E0 00058420  80 99 00 14 */	lwz r4, 0x14(r25)
/* 8005B4E4 00058424  48 00 04 6D */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlGroup$$1__FPCvUl
/* 8005B4E8 00058428  7C 7D 1B 78 */	mr r29, r3
/* 8005B4EC 0005842C  80 83 00 08 */	lwz r4, 8(r3)
/* 8005B4F0 00058430  7F 63 DB 78 */	mr r3, r27
/* 8005B4F4 00058434  4B FF DF 09 */	bl setGroupCount__Q28JASystem14TBasicWaveBankFUl
/* 8005B4F8 00058438  3B 00 00 00 */	li r24, 0
/* 8005B4FC 0005843C  3A E0 00 00 */	li r23, 0
/* 8005B500 00058440  3B E0 00 00 */	li r31, 0
/* 8005B504 00058444  48 00 01 48 */	b lbl_8005B64C
lbl_8005B508:
/* 8005B508 00058448  38 1F 00 0C */	addi r0, r31, 0xc
/* 8005B50C 0005844C  7C 9D 00 2E */	lwzx r4, r29, r0
/* 8005B510 00058450  7F 23 CB 78 */	mr r3, r25
/* 8005B514 00058454  48 00 04 25 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlScene$$1__FPCvUl
/* 8005B518 00058458  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8005B51C 0005845C  7F 23 CB 78 */	mr r3, r25
/* 8005B520 00058460  48 00 04 01 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser5TCtrl$$1__FPCvUl
/* 8005B524 00058464  3B C3 00 00 */	addi r30, r3, 0
/* 8005B528 00058468  38 7B 00 00 */	addi r3, r27, 0
/* 8005B52C 0005846C  38 97 00 00 */	addi r4, r23, 0
/* 8005B530 00058470  4B FF DE A9 */	bl getWaveGroup__Q28JASystem14TBasicWaveBankFi
/* 8005B534 00058474  80 99 00 10 */	lwz r4, 0x10(r25)
/* 8005B538 00058478  3A C3 00 00 */	addi r22, r3, 0
/* 8005B53C 0005847C  38 79 00 00 */	addi r3, r25, 0
/* 8005B540 00058480  48 00 03 C9 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser16TWaveArchiveBank$$1__FPCvUl
/* 8005B544 00058484  38 1F 00 08 */	addi r0, r31, 8
/* 8005B548 00058488  7C 83 00 2E */	lwzx r4, r3, r0
/* 8005B54C 0005848C  7F 23 CB 78 */	mr r3, r25
/* 8005B550 00058490  48 00 03 A1 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser12TWaveArchive$$1__FPCvUl
/* 8005B554 00058494  80 9E 00 04 */	lwz r4, 4(r30)
/* 8005B558 00058498  3A A3 00 00 */	addi r21, r3, 0
/* 8005B55C 0005849C  38 76 00 00 */	addi r3, r22, 0
/* 8005B560 000584A0  4B FF E2 91 */	bl setWaveCount__Q38JASystem14TBasicWaveBank10TWaveGroupFUl
/* 8005B564 000584A4  3A 80 00 00 */	li r20, 0
/* 8005B568 000584A8  3A 60 00 00 */	li r19, 0
/* 8005B56C 000584AC  48 00 00 C0 */	b lbl_8005B62C
lbl_8005B570:
/* 8005B570 000584B0  38 13 00 74 */	addi r0, r19, 0x74
/* 8005B574 000584B4  7C 95 00 2E */	lwzx r4, r21, r0
/* 8005B578 000584B8  7F 23 CB 78 */	mr r3, r25
/* 8005B57C 000584BC  48 00 03 5D */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser5TWave$$1__FPCvUl
/* 8005B580 000584C0  88 83 00 00 */	lbz r4, 0(r3)
/* 8005B584 000584C4  38 13 00 08 */	addi r0, r19, 8
/* 8005B588 000584C8  98 81 00 18 */	stb r4, 0x18(r1)
/* 8005B58C 000584CC  88 83 00 01 */	lbz r4, 1(r3)
/* 8005B590 000584D0  98 81 00 19 */	stb r4, 0x19(r1)
/* 8005B594 000584D4  88 83 00 02 */	lbz r4, 2(r3)
/* 8005B598 000584D8  98 81 00 1A */	stb r4, 0x1a(r1)
/* 8005B59C 000584DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8005B5A0 000584E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8005B5A4 000584E4  80 83 00 08 */	lwz r4, 8(r3)
/* 8005B5A8 000584E8  90 81 00 20 */	stw r4, 0x20(r1)
/* 8005B5AC 000584EC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8005B5B0 000584F0  90 81 00 24 */	stw r4, 0x24(r1)
/* 8005B5B4 000584F4  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8005B5B8 000584F8  90 81 00 28 */	stw r4, 0x28(r1)
/* 8005B5BC 000584FC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8005B5C0 00058500  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8005B5C4 00058504  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8005B5C8 00058508  90 81 00 30 */	stw r4, 0x30(r1)
/* 8005B5CC 0005850C  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 8005B5D0 00058510  90 81 00 34 */	stw r4, 0x34(r1)
/* 8005B5D4 00058514  A8 83 00 20 */	lha r4, 0x20(r3)
/* 8005B5D8 00058518  B0 81 00 38 */	sth r4, 0x38(r1)
/* 8005B5DC 0005851C  A8 83 00 22 */	lha r4, 0x22(r3)
/* 8005B5E0 00058520  B0 81 00 3A */	sth r4, 0x3a(r1)
/* 8005B5E4 00058524  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8005B5E8 00058528  7F 23 CB 78 */	mr r3, r25
/* 8005B5EC 0005852C  90 81 00 40 */	stw r4, 0x40(r1)
/* 8005B5F0 00058530  7C 9E 00 2E */	lwzx r4, r30, r0
/* 8005B5F4 00058534  48 00 02 CD */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser9TCtrlWave$$1__FPCvUl
/* 8005B5F8 00058538  80 03 00 00 */	lwz r0, 0(r3)
/* 8005B5FC 0005853C  38 76 00 00 */	addi r3, r22, 0
/* 8005B600 00058540  38 94 00 00 */	addi r4, r20, 0
/* 8005B604 00058544  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8005B608 00058548  7C 12 03 78 */	mr r18, r0
/* 8005B60C 0005854C  38 B2 00 00 */	addi r5, r18, 0
/* 8005B610 00058550  38 C1 00 18 */	addi r6, r1, 0x18
/* 8005B614 00058554  4B FF E4 55 */	bl setWaveInfo__Q38JASystem14TBasicWaveBank10TWaveGroupFiUlRCQ28JASystem9TWaveInfo
/* 8005B618 00058558  7C 18 90 40 */	cmplw r24, r18
/* 8005B61C 0005855C  40 80 00 08 */	bge lbl_8005B624
/* 8005B620 00058560  7E 58 93 78 */	mr r24, r18
lbl_8005B624:
/* 8005B624 00058564  3A 94 00 01 */	addi r20, r20, 1
/* 8005B628 00058568  3A 73 00 04 */	addi r19, r19, 4
lbl_8005B62C:
/* 8005B62C 0005856C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8005B630 00058570  7C 14 00 40 */	cmplw r20, r0
/* 8005B634 00058574  41 80 FF 3C */	blt lbl_8005B570
/* 8005B638 00058578  38 76 00 00 */	addi r3, r22, 0
/* 8005B63C 0005857C  38 95 00 00 */	addi r4, r21, 0
/* 8005B640 00058580  4B FF E1 3D */	bl setWaveArcFileName__Q38JASystem14TBasicWaveBank10TWaveGroupFPCc
/* 8005B644 00058584  3A F7 00 01 */	addi r23, r23, 1
/* 8005B648 00058588  3B FF 00 04 */	addi r31, r31, 4
lbl_8005B64C:
/* 8005B64C 0005858C  80 1D 00 08 */	lwz r0, 8(r29)
/* 8005B650 00058590  7C 17 00 40 */	cmplw r23, r0
/* 8005B654 00058594  41 80 FE B4 */	blt lbl_8005B508
/* 8005B658 00058598  38 7B 00 00 */	addi r3, r27, 0
/* 8005B65C 0005859C  38 98 00 01 */	addi r4, r24, 1
/* 8005B660 000585A0  4B FF DE 25 */	bl setWaveTableSize__Q28JASystem14TBasicWaveBankFUl
/* 8005B664 000585A4  7F 43 D3 78 */	mr r3, r26
/* 8005B668 000585A8  81 9A 00 00 */	lwz r12, 0(r26)
/* 8005B66C 000585AC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8005B670 000585B0  7D 88 03 A6 */	mtlr r12
/* 8005B674 000585B4  4E 80 00 21 */	blrl 
/* 8005B678 000585B8  80 0D 90 B8 */	lwz r0, sUsedHeapSize__Q28JASystem8WSParser-_SDA_BASE_(r13)
/* 8005B67C 000585BC  7C 83 E0 50 */	subf r4, r3, r28
/* 8005B680 000585C0  38 7B 00 00 */	addi r3, r27, 0
/* 8005B684 000585C4  7C 00 22 14 */	add r0, r0, r4
/* 8005B688 000585C8  90 0D 90 B8 */	stw r0, sUsedHeapSize__Q28JASystem8WSParser-_SDA_BASE_(r13)
lbl_8005B68C:
/* 8005B68C 000585CC  BA 41 00 48 */	lmw r18, 0x48(r1)
/* 8005B690 000585D0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8005B694 000585D4  38 21 00 80 */	addi r1, r1, 0x80
/* 8005B698 000585D8  7C 08 03 A6 */	mtlr r0
/* 8005B69C 000585DC  4E 80 00 20 */	blr 

.global createSimpleWaveBank__Q28JASystem8WSParserFPv
createSimpleWaveBank__Q28JASystem8WSParserFPv:
/* 8005B6A0 000585E0  7C 08 02 A6 */	mflr r0
/* 8005B6A4 000585E4  90 01 00 04 */	stw r0, 4(r1)
/* 8005B6A8 000585E8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8005B6AC 000585EC  BE E1 00 5C */	stmw r23, 0x5c(r1)
/* 8005B6B0 000585F0  7C 77 1B 78 */	mr r23, r3
/* 8005B6B4 000585F4  4B FF FA BD */	bl getCurrentHeap__Q28JASystem9TWaveBankFv
/* 8005B6B8 000585F8  7C 7C 1B 78 */	mr r28, r3
/* 8005B6BC 000585FC  81 9C 00 00 */	lwz r12, 0(r28)
/* 8005B6C0 00058600  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8005B6C4 00058604  7D 88 03 A6 */	mtlr r12
/* 8005B6C8 00058608  4E 80 00 21 */	blrl 
/* 8005B6CC 0005860C  7E FB BB 78 */	mr r27, r23
/* 8005B6D0 00058610  80 97 00 14 */	lwz r4, 0x14(r23)
/* 8005B6D4 00058614  3B C3 00 00 */	addi r30, r3, 0
/* 8005B6D8 00058618  38 7B 00 00 */	addi r3, r27, 0
/* 8005B6DC 0005861C  48 00 02 75 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlGroup$$1__FPCvUl
/* 8005B6E0 00058620  7C 78 1B 78 */	mr r24, r3
/* 8005B6E4 00058624  80 03 00 08 */	lwz r0, 8(r3)
/* 8005B6E8 00058628  28 00 00 01 */	cmplwi r0, 1
/* 8005B6EC 0005862C  41 82 00 0C */	beq lbl_8005B6F8
/* 8005B6F0 00058630  38 60 00 00 */	li r3, 0
/* 8005B6F4 00058634  48 00 01 B8 */	b lbl_8005B8AC
lbl_8005B6F8:
/* 8005B6F8 00058638  38 9C 00 00 */	addi r4, r28, 0
/* 8005B6FC 0005863C  38 60 00 44 */	li r3, 0x44
/* 8005B700 00058640  38 A0 00 00 */	li r5, 0
/* 8005B704 00058644  4B FB 12 41 */	bl __nw__FUlP7JKRHeapi
/* 8005B708 00058648  7C 7D 1B 79 */	or. r29, r3, r3
/* 8005B70C 0005864C  41 82 00 10 */	beq lbl_8005B71C
/* 8005B710 00058650  7F A3 EB 78 */	mr r3, r29
/* 8005B714 00058654  4B FF F4 05 */	bl __ct__Q28JASystem15TSimpleWaveBankFv
/* 8005B718 00058658  7C 7D 1B 78 */	mr r29, r3
lbl_8005B71C:
/* 8005B71C 0005865C  28 1D 00 00 */	cmplwi r29, 0
/* 8005B720 00058660  40 82 00 0C */	bne lbl_8005B72C
/* 8005B724 00058664  38 60 00 00 */	li r3, 0
/* 8005B728 00058668  48 00 01 84 */	b lbl_8005B8AC
lbl_8005B72C:
/* 8005B72C 0005866C  80 98 00 0C */	lwz r4, 0xc(r24)
/* 8005B730 00058670  38 7B 00 00 */	addi r3, r27, 0
/* 8005B734 00058674  3B 40 00 00 */	li r26, 0
/* 8005B738 00058678  48 00 02 01 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlScene$$1__FPCvUl
/* 8005B73C 0005867C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8005B740 00058680  7F 63 DB 78 */	mr r3, r27
/* 8005B744 00058684  48 00 01 DD */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser5TCtrl$$1__FPCvUl
/* 8005B748 00058688  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8005B74C 0005868C  3B E3 00 00 */	addi r31, r3, 0
/* 8005B750 00058690  38 7B 00 00 */	addi r3, r27, 0
/* 8005B754 00058694  48 00 01 B5 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser16TWaveArchiveBank$$1__FPCvUl
/* 8005B758 00058698  80 83 00 08 */	lwz r4, 8(r3)
/* 8005B75C 0005869C  7F 63 DB 78 */	mr r3, r27
/* 8005B760 000586A0  48 00 01 91 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser12TWaveArchive$$1__FPCvUl
/* 8005B764 000586A4  3B 23 00 00 */	addi r25, r3, 0
/* 8005B768 000586A8  3A E0 00 00 */	li r23, 0
/* 8005B76C 000586AC  3B 00 00 00 */	li r24, 0
/* 8005B770 000586B0  48 00 00 30 */	b lbl_8005B7A0
lbl_8005B774:
/* 8005B774 000586B4  38 18 00 08 */	addi r0, r24, 8
/* 8005B778 000586B8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8005B77C 000586BC  7F 63 DB 78 */	mr r3, r27
/* 8005B780 000586C0  48 00 01 41 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser9TCtrlWave$$1__FPCvUl
/* 8005B784 000586C4  80 03 00 00 */	lwz r0, 0(r3)
/* 8005B788 000586C8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8005B78C 000586CC  7C 1A 00 40 */	cmplw r26, r0
/* 8005B790 000586D0  40 80 00 08 */	bge lbl_8005B798
/* 8005B794 000586D4  7C 1A 03 78 */	mr r26, r0
lbl_8005B798:
/* 8005B798 000586D8  3A F7 00 01 */	addi r23, r23, 1
/* 8005B79C 000586DC  3B 18 00 04 */	addi r24, r24, 4
lbl_8005B7A0:
/* 8005B7A0 000586E0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8005B7A4 000586E4  7C 17 00 40 */	cmplw r23, r0
/* 8005B7A8 000586E8  41 80 FF CC */	blt lbl_8005B774
/* 8005B7AC 000586EC  38 7D 00 00 */	addi r3, r29, 0
/* 8005B7B0 000586F0  38 9A 00 01 */	addi r4, r26, 1
/* 8005B7B4 000586F4  4B FF F4 CD */	bl setWaveTableSize__Q28JASystem15TSimpleWaveBankFUl
/* 8005B7B8 000586F8  3B 40 00 00 */	li r26, 0
/* 8005B7BC 000586FC  3B 00 00 00 */	li r24, 0
/* 8005B7C0 00058700  48 00 00 AC */	b lbl_8005B86C
lbl_8005B7C4:
/* 8005B7C4 00058704  38 18 00 74 */	addi r0, r24, 0x74
/* 8005B7C8 00058708  7C 99 00 2E */	lwzx r4, r25, r0
/* 8005B7CC 0005870C  7F 63 DB 78 */	mr r3, r27
/* 8005B7D0 00058710  48 00 01 09 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser5TWave$$1__FPCvUl
/* 8005B7D4 00058714  88 83 00 00 */	lbz r4, 0(r3)
/* 8005B7D8 00058718  38 18 00 08 */	addi r0, r24, 8
/* 8005B7DC 0005871C  98 81 00 20 */	stb r4, 0x20(r1)
/* 8005B7E0 00058720  88 83 00 01 */	lbz r4, 1(r3)
/* 8005B7E4 00058724  98 81 00 21 */	stb r4, 0x21(r1)
/* 8005B7E8 00058728  88 83 00 02 */	lbz r4, 2(r3)
/* 8005B7EC 0005872C  98 81 00 22 */	stb r4, 0x22(r1)
/* 8005B7F0 00058730  C0 03 00 04 */	lfs f0, 4(r3)
/* 8005B7F4 00058734  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8005B7F8 00058738  80 83 00 08 */	lwz r4, 8(r3)
/* 8005B7FC 0005873C  90 81 00 28 */	stw r4, 0x28(r1)
/* 8005B800 00058740  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8005B804 00058744  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8005B808 00058748  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8005B80C 0005874C  90 81 00 30 */	stw r4, 0x30(r1)
/* 8005B810 00058750  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8005B814 00058754  90 81 00 34 */	stw r4, 0x34(r1)
/* 8005B818 00058758  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8005B81C 0005875C  90 81 00 38 */	stw r4, 0x38(r1)
/* 8005B820 00058760  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 8005B824 00058764  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8005B828 00058768  A8 83 00 20 */	lha r4, 0x20(r3)
/* 8005B82C 0005876C  B0 81 00 40 */	sth r4, 0x40(r1)
/* 8005B830 00058770  A8 83 00 22 */	lha r4, 0x22(r3)
/* 8005B834 00058774  B0 81 00 42 */	sth r4, 0x42(r1)
/* 8005B838 00058778  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8005B83C 0005877C  7F 63 DB 78 */	mr r3, r27
/* 8005B840 00058780  90 81 00 48 */	stw r4, 0x48(r1)
/* 8005B844 00058784  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8005B848 00058788  48 00 00 79 */	bl JSUConvertOffsetToPtr$$0Q38JASystem8WSParser9TCtrlWave$$1__FPCvUl
/* 8005B84C 0005878C  80 03 00 00 */	lwz r0, 0(r3)
/* 8005B850 00058790  38 7D 00 00 */	addi r3, r29, 0
/* 8005B854 00058794  38 A1 00 20 */	addi r5, r1, 0x20
/* 8005B858 00058798  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8005B85C 0005879C  7C 04 03 78 */	mr r4, r0
/* 8005B860 000587A0  4B FF F4 F1 */	bl setWaveInfo__Q28JASystem15TSimpleWaveBankFUlRCQ28JASystem9TWaveInfo
/* 8005B864 000587A4  3B 5A 00 01 */	addi r26, r26, 1
/* 8005B868 000587A8  3B 18 00 04 */	addi r24, r24, 4
lbl_8005B86C:
/* 8005B86C 000587AC  80 1F 00 04 */	lwz r0, 4(r31)
/* 8005B870 000587B0  7C 1A 00 40 */	cmplw r26, r0
/* 8005B874 000587B4  41 80 FF 50 */	blt lbl_8005B7C4
/* 8005B878 000587B8  38 7D 00 00 */	addi r3, r29, 0
/* 8005B87C 000587BC  38 99 00 00 */	addi r4, r25, 0
/* 8005B880 000587C0  4B FF F5 59 */	bl setWaveArcFileName__Q28JASystem15TSimpleWaveBankFPCc
/* 8005B884 000587C4  7F 83 E3 78 */	mr r3, r28
/* 8005B888 000587C8  81 9C 00 00 */	lwz r12, 0(r28)
/* 8005B88C 000587CC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8005B890 000587D0  7D 88 03 A6 */	mtlr r12
/* 8005B894 000587D4  4E 80 00 21 */	blrl 
/* 8005B898 000587D8  80 0D 90 B8 */	lwz r0, sUsedHeapSize__Q28JASystem8WSParser-_SDA_BASE_(r13)
/* 8005B89C 000587DC  7C 83 F0 50 */	subf r4, r3, r30
/* 8005B8A0 000587E0  38 7D 00 00 */	addi r3, r29, 0
/* 8005B8A4 000587E4  7C 00 22 14 */	add r0, r0, r4
/* 8005B8A8 000587E8  90 0D 90 B8 */	stw r0, sUsedHeapSize__Q28JASystem8WSParser-_SDA_BASE_(r13)
lbl_8005B8AC:
/* 8005B8AC 000587EC  BA E1 00 5C */	lmw r23, 0x5c(r1)
/* 8005B8B0 000587F0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8005B8B4 000587F4  38 21 00 80 */	addi r1, r1, 0x80
/* 8005B8B8 000587F8  7C 08 03 A6 */	mtlr r0
/* 8005B8BC 000587FC  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem8WSParser9TCtrlWave$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem8WSParser9TCtrlWave$$1__FPCvUl:
/* 8005B8C0 00058800  28 04 00 00 */	cmplwi r4, 0
/* 8005B8C4 00058804  40 82 00 0C */	bne lbl_8005B8D0
/* 8005B8C8 00058808  38 60 00 00 */	li r3, 0
/* 8005B8CC 0005880C  4E 80 00 20 */	blr 
lbl_8005B8D0:
/* 8005B8D0 00058810  7C 63 22 14 */	add r3, r3, r4
/* 8005B8D4 00058814  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem8WSParser5TWave$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem8WSParser5TWave$$1__FPCvUl:
/* 8005B8D8 00058818  28 04 00 00 */	cmplwi r4, 0
/* 8005B8DC 0005881C  40 82 00 0C */	bne lbl_8005B8E8
/* 8005B8E0 00058820  38 60 00 00 */	li r3, 0
/* 8005B8E4 00058824  4E 80 00 20 */	blr 
lbl_8005B8E8:
/* 8005B8E8 00058828  7C 63 22 14 */	add r3, r3, r4
/* 8005B8EC 0005882C  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem8WSParser12TWaveArchive$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem8WSParser12TWaveArchive$$1__FPCvUl:
/* 8005B8F0 00058830  28 04 00 00 */	cmplwi r4, 0
/* 8005B8F4 00058834  40 82 00 0C */	bne lbl_8005B900
/* 8005B8F8 00058838  38 60 00 00 */	li r3, 0
/* 8005B8FC 0005883C  4E 80 00 20 */	blr 
lbl_8005B900:
/* 8005B900 00058840  7C 63 22 14 */	add r3, r3, r4
/* 8005B904 00058844  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem8WSParser16TWaveArchiveBank$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem8WSParser16TWaveArchiveBank$$1__FPCvUl:
/* 8005B908 00058848  28 04 00 00 */	cmplwi r4, 0
/* 8005B90C 0005884C  40 82 00 0C */	bne lbl_8005B918
/* 8005B910 00058850  38 60 00 00 */	li r3, 0
/* 8005B914 00058854  4E 80 00 20 */	blr 
lbl_8005B918:
/* 8005B918 00058858  7C 63 22 14 */	add r3, r3, r4
/* 8005B91C 0005885C  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem8WSParser5TCtrl$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem8WSParser5TCtrl$$1__FPCvUl:
/* 8005B920 00058860  28 04 00 00 */	cmplwi r4, 0
/* 8005B924 00058864  40 82 00 0C */	bne lbl_8005B930
/* 8005B928 00058868  38 60 00 00 */	li r3, 0
/* 8005B92C 0005886C  4E 80 00 20 */	blr 
lbl_8005B930:
/* 8005B930 00058870  7C 63 22 14 */	add r3, r3, r4
/* 8005B934 00058874  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlScene$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlScene$$1__FPCvUl:
/* 8005B938 00058878  28 04 00 00 */	cmplwi r4, 0
/* 8005B93C 0005887C  40 82 00 0C */	bne lbl_8005B948
/* 8005B940 00058880  38 60 00 00 */	li r3, 0
/* 8005B944 00058884  4E 80 00 20 */	blr 
lbl_8005B948:
/* 8005B948 00058888  7C 63 22 14 */	add r3, r3, r4
/* 8005B94C 0005888C  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlGroup$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem8WSParser10TCtrlGroup$$1__FPCvUl:
/* 8005B950 00058890  28 04 00 00 */	cmplwi r4, 0
/* 8005B954 00058894  40 82 00 0C */	bne lbl_8005B960
/* 8005B958 00058898  38 60 00 00 */	li r3, 0
/* 8005B95C 0005889C  4E 80 00 20 */	blr 
lbl_8005B960:
/* 8005B960 000588A0  7C 63 22 14 */	add r3, r3, r4
/* 8005B964 000588A4  4E 80 00 20 */	blr 

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global sUsedHeapSize__Q28JASystem8WSParser
sUsedHeapSize__Q28JASystem8WSParser:
	.skip 0x8