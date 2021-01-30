.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global strstr
strstr:
/* 80085B78 00082AB8  28 04 00 00 */	cmplwi r4, 0
/* 80085B7C 00082ABC  38 A3 FF FF */	addi r5, r3, -1
/* 80085B80 00082AC0  38 84 FF FF */	addi r4, r4, -1
/* 80085B84 00082AC4  4D 82 00 20 */	beqlr 
/* 80085B88 00082AC8  8C C4 00 01 */	lbzu r6, 1(r4)
/* 80085B8C 00082ACC  28 06 00 00 */	cmplwi r6, 0
/* 80085B90 00082AD0  40 82 00 40 */	bne lbl_80085BD0
/* 80085B94 00082AD4  4E 80 00 20 */	blr 
lbl_80085B98:
/* 80085B98 00082AD8  7C 00 30 40 */	cmplw r0, r6
/* 80085B9C 00082ADC  40 82 00 34 */	bne lbl_80085BD0
/* 80085BA0 00082AE0  38 E5 FF FF */	addi r7, r5, -1
/* 80085BA4 00082AE4  39 04 FF FF */	addi r8, r4, -1
lbl_80085BA8:
/* 80085BA8 00082AE8  8C 07 00 01 */	lbzu r0, 1(r7)
/* 80085BAC 00082AEC  8C 68 00 01 */	lbzu r3, 1(r8)
/* 80085BB0 00082AF0  7C 00 18 40 */	cmplw r0, r3
/* 80085BB4 00082AF4  40 82 00 0C */	bne lbl_80085BC0
/* 80085BB8 00082AF8  28 00 00 00 */	cmplwi r0, 0
/* 80085BBC 00082AFC  40 82 FF EC */	bne lbl_80085BA8
lbl_80085BC0:
/* 80085BC0 00082B00  28 03 00 00 */	cmplwi r3, 0
/* 80085BC4 00082B04  40 82 00 0C */	bne lbl_80085BD0
/* 80085BC8 00082B08  7C A3 2B 78 */	mr r3, r5
/* 80085BCC 00082B0C  4E 80 00 20 */	blr 
lbl_80085BD0:
/* 80085BD0 00082B10  8C 05 00 01 */	lbzu r0, 1(r5)
/* 80085BD4 00082B14  28 00 00 00 */	cmplwi r0, 0
/* 80085BD8 00082B18  40 82 FF C0 */	bne lbl_80085B98
/* 80085BDC 00082B1C  38 60 00 00 */	li r3, 0
/* 80085BE0 00082B20  4E 80 00 20 */	blr 

.global strrchr
strrchr:
/* 80085BE4 00082B24  38 A3 FF FF */	addi r5, r3, -1
/* 80085BE8 00082B28  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80085BEC 00082B2C  38 60 00 00 */	li r3, 0
/* 80085BF0 00082B30  48 00 00 10 */	b lbl_80085C00
lbl_80085BF4:
/* 80085BF4 00082B34  7C 04 00 40 */	cmplw r4, r0
/* 80085BF8 00082B38  40 82 00 08 */	bne lbl_80085C00
/* 80085BFC 00082B3C  7C A3 2B 78 */	mr r3, r5
lbl_80085C00:
/* 80085C00 00082B40  8C 85 00 01 */	lbzu r4, 1(r5)
/* 80085C04 00082B44  28 04 00 00 */	cmplwi r4, 0
/* 80085C08 00082B48  40 82 FF EC */	bne lbl_80085BF4
/* 80085C0C 00082B4C  28 03 00 00 */	cmplwi r3, 0
/* 80085C10 00082B50  4C 82 00 20 */	bnelr 
/* 80085C14 00082B54  28 00 00 00 */	cmplwi r0, 0
/* 80085C18 00082B58  41 82 00 0C */	beq lbl_80085C24
/* 80085C1C 00082B5C  38 60 00 00 */	li r3, 0
/* 80085C20 00082B60  4E 80 00 20 */	blr 
lbl_80085C24:
/* 80085C24 00082B64  7C A3 2B 78 */	mr r3, r5
/* 80085C28 00082B68  4E 80 00 20 */	blr 

.global strchr
strchr:
/* 80085C2C 00082B6C  38 63 FF FF */	addi r3, r3, -1
/* 80085C30 00082B70  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80085C34 00082B74  48 00 00 0C */	b lbl_80085C40
lbl_80085C38:
/* 80085C38 00082B78  7C 04 00 40 */	cmplw r4, r0
/* 80085C3C 00082B7C  4D 82 00 20 */	beqlr 
lbl_80085C40:
/* 80085C40 00082B80  8C 83 00 01 */	lbzu r4, 1(r3)
/* 80085C44 00082B84  28 04 00 00 */	cmplwi r4, 0
/* 80085C48 00082B88  40 82 FF F0 */	bne lbl_80085C38
/* 80085C4C 00082B8C  28 00 00 00 */	cmplwi r0, 0
/* 80085C50 00082B90  4D 82 00 20 */	beqlr 
/* 80085C54 00082B94  38 60 00 00 */	li r3, 0
/* 80085C58 00082B98  4E 80 00 20 */	blr 

.global strcmp
strcmp:
/* 80085C5C 00082B9C  88 C3 00 00 */	lbz r6, 0(r3)
/* 80085C60 00082BA0  88 A4 00 00 */	lbz r5, 0(r4)
/* 80085C64 00082BA4  7C 05 30 51 */	subf. r0, r5, r6
/* 80085C68 00082BA8  41 82 00 0C */	beq lbl_80085C74
/* 80085C6C 00082BAC  7C 65 30 50 */	subf r3, r5, r6
/* 80085C70 00082BB0  4E 80 00 20 */	blr 
lbl_80085C74:
/* 80085C74 00082BB4  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 80085C78 00082BB8  54 65 07 BE */	clrlwi r5, r3, 0x1e
/* 80085C7C 00082BBC  7C 00 28 40 */	cmplw r0, r5
/* 80085C80 00082BC0  40 82 00 C8 */	bne lbl_80085D48
/* 80085C84 00082BC4  28 05 00 00 */	cmplwi r5, 0
/* 80085C88 00082BC8  41 82 00 58 */	beq lbl_80085CE0
/* 80085C8C 00082BCC  28 06 00 00 */	cmplwi r6, 0
/* 80085C90 00082BD0  40 82 00 0C */	bne lbl_80085C9C
/* 80085C94 00082BD4  38 60 00 00 */	li r3, 0
/* 80085C98 00082BD8  4E 80 00 20 */	blr 
lbl_80085C9C:
/* 80085C9C 00082BDC  20 05 00 03 */	subfic r0, r5, 3
/* 80085CA0 00082BE0  28 00 00 00 */	cmplwi r0, 0
/* 80085CA4 00082BE4  7C 09 03 A6 */	mtctr r0
/* 80085CA8 00082BE8  41 82 00 30 */	beq lbl_80085CD8
lbl_80085CAC:
/* 80085CAC 00082BEC  8C A3 00 01 */	lbzu r5, 1(r3)
/* 80085CB0 00082BF0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80085CB4 00082BF4  7C 00 28 51 */	subf. r0, r0, r5
/* 80085CB8 00082BF8  41 82 00 0C */	beq lbl_80085CC4
/* 80085CBC 00082BFC  7C 03 03 78 */	mr r3, r0
/* 80085CC0 00082C00  4E 80 00 20 */	blr 
lbl_80085CC4:
/* 80085CC4 00082C04  28 05 00 00 */	cmplwi r5, 0
/* 80085CC8 00082C08  40 82 00 0C */	bne lbl_80085CD4
/* 80085CCC 00082C0C  38 60 00 00 */	li r3, 0
/* 80085CD0 00082C10  4E 80 00 20 */	blr 
lbl_80085CD4:
/* 80085CD4 00082C14  42 00 FF D8 */	bdnz lbl_80085CAC
lbl_80085CD8:
/* 80085CD8 00082C18  38 63 00 01 */	addi r3, r3, 1
/* 80085CDC 00082C1C  38 84 00 01 */	addi r4, r4, 1
lbl_80085CE0:
/* 80085CE0 00082C20  80 E3 00 00 */	lwz r7, 0(r3)
/* 80085CE4 00082C24  80 CD 82 3C */	lwz r6, K2-_SDA_BASE_(r13)
/* 80085CE8 00082C28  80 AD 82 38 */	lwz r5, K1-_SDA_BASE_(r13)
/* 80085CEC 00082C2C  7C 07 32 14 */	add r0, r7, r6
/* 80085CF0 00082C30  81 04 00 00 */	lwz r8, 0(r4)
/* 80085CF4 00082C34  7C 00 28 39 */	and. r0, r0, r5
/* 80085CF8 00082C38  40 82 00 38 */	bne lbl_80085D30
/* 80085CFC 00082C3C  48 00 00 18 */	b lbl_80085D14
lbl_80085D00:
/* 80085D00 00082C40  84 E3 00 04 */	lwzu r7, 4(r3)
/* 80085D04 00082C44  85 04 00 04 */	lwzu r8, 4(r4)
/* 80085D08 00082C48  7C 07 32 14 */	add r0, r7, r6
/* 80085D0C 00082C4C  7C 00 28 39 */	and. r0, r0, r5
/* 80085D10 00082C50  40 82 00 20 */	bne lbl_80085D30
lbl_80085D14:
/* 80085D14 00082C54  7C 07 40 40 */	cmplw r7, r8
/* 80085D18 00082C58  41 82 FF E8 */	beq lbl_80085D00
/* 80085D1C 00082C5C  40 81 00 0C */	ble lbl_80085D28
/* 80085D20 00082C60  38 60 00 01 */	li r3, 1
/* 80085D24 00082C64  4E 80 00 20 */	blr 
lbl_80085D28:
/* 80085D28 00082C68  38 60 FF FF */	li r3, -1
/* 80085D2C 00082C6C  4E 80 00 20 */	blr 
lbl_80085D30:
/* 80085D30 00082C70  88 C3 00 00 */	lbz r6, 0(r3)
/* 80085D34 00082C74  88 A4 00 00 */	lbz r5, 0(r4)
/* 80085D38 00082C78  7C 05 30 51 */	subf. r0, r5, r6
/* 80085D3C 00082C7C  41 82 00 0C */	beq lbl_80085D48
/* 80085D40 00082C80  7C 65 30 50 */	subf r3, r5, r6
/* 80085D44 00082C84  4E 80 00 20 */	blr 
lbl_80085D48:
/* 80085D48 00082C88  28 06 00 00 */	cmplwi r6, 0
/* 80085D4C 00082C8C  40 82 00 0C */	bne lbl_80085D58
/* 80085D50 00082C90  38 60 00 00 */	li r3, 0
/* 80085D54 00082C94  4E 80 00 20 */	blr 
lbl_80085D58:
/* 80085D58 00082C98  8C A3 00 01 */	lbzu r5, 1(r3)
/* 80085D5C 00082C9C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80085D60 00082CA0  7C 00 28 51 */	subf. r0, r0, r5
/* 80085D64 00082CA4  41 82 00 0C */	beq lbl_80085D70
/* 80085D68 00082CA8  7C 03 03 78 */	mr r3, r0
/* 80085D6C 00082CAC  4E 80 00 20 */	blr 
lbl_80085D70:
/* 80085D70 00082CB0  28 05 00 00 */	cmplwi r5, 0
/* 80085D74 00082CB4  40 82 FF E4 */	bne lbl_80085D58
/* 80085D78 00082CB8  38 60 00 00 */	li r3, 0
/* 80085D7C 00082CBC  4E 80 00 20 */	blr 

.global strcat
strcat:
/* 80085D80 00082CC0  38 84 FF FF */	addi r4, r4, -1
/* 80085D84 00082CC4  38 A3 FF FF */	addi r5, r3, -1
lbl_80085D88:
/* 80085D88 00082CC8  8C 05 00 01 */	lbzu r0, 1(r5)
/* 80085D8C 00082CCC  28 00 00 00 */	cmplwi r0, 0
/* 80085D90 00082CD0  40 82 FF F8 */	bne lbl_80085D88
/* 80085D94 00082CD4  38 A5 FF FF */	addi r5, r5, -1
lbl_80085D98:
/* 80085D98 00082CD8  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80085D9C 00082CDC  28 00 00 00 */	cmplwi r0, 0
/* 80085DA0 00082CE0  9C 05 00 01 */	stbu r0, 1(r5)
/* 80085DA4 00082CE4  40 82 FF F4 */	bne lbl_80085D98
/* 80085DA8 00082CE8  4E 80 00 20 */	blr 

.global strncpy
strncpy:
/* 80085DAC 00082CEC  38 84 FF FF */	addi r4, r4, -1
/* 80085DB0 00082CF0  38 C3 FF FF */	addi r6, r3, -1
/* 80085DB4 00082CF4  38 A5 00 01 */	addi r5, r5, 1
/* 80085DB8 00082CF8  48 00 00 2C */	b lbl_80085DE4
lbl_80085DBC:
/* 80085DBC 00082CFC  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80085DC0 00082D00  28 00 00 00 */	cmplwi r0, 0
/* 80085DC4 00082D04  9C 06 00 01 */	stbu r0, 1(r6)
/* 80085DC8 00082D08  40 82 00 1C */	bne lbl_80085DE4
/* 80085DCC 00082D0C  38 00 00 00 */	li r0, 0
/* 80085DD0 00082D10  48 00 00 08 */	b lbl_80085DD8
lbl_80085DD4:
/* 80085DD4 00082D14  9C 06 00 01 */	stbu r0, 1(r6)
lbl_80085DD8:
/* 80085DD8 00082D18  34 A5 FF FF */	addic. r5, r5, -1
/* 80085DDC 00082D1C  40 82 FF F8 */	bne lbl_80085DD4
/* 80085DE0 00082D20  4E 80 00 20 */	blr 
lbl_80085DE4:
/* 80085DE4 00082D24  34 A5 FF FF */	addic. r5, r5, -1
/* 80085DE8 00082D28  40 82 FF D4 */	bne lbl_80085DBC
/* 80085DEC 00082D2C  4E 80 00 20 */	blr 

.global strcpy
strcpy:
/* 80085DF0 00082D30  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80085DF4 00082D34  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 80085DF8 00082D38  7C 00 28 40 */	cmplw r0, r5
/* 80085DFC 00082D3C  38 E3 00 00 */	addi r7, r3, 0
/* 80085E00 00082D40  40 82 00 80 */	bne lbl_80085E80
/* 80085E04 00082D44  28 05 00 00 */	cmplwi r5, 0
/* 80085E08 00082D48  41 82 00 40 */	beq lbl_80085E48
/* 80085E0C 00082D4C  88 04 00 00 */	lbz r0, 0(r4)
/* 80085E10 00082D50  28 00 00 00 */	cmplwi r0, 0
/* 80085E14 00082D54  98 07 00 00 */	stb r0, 0(r7)
/* 80085E18 00082D58  4D 82 00 20 */	beqlr 
/* 80085E1C 00082D5C  20 05 00 03 */	subfic r0, r5, 3
/* 80085E20 00082D60  28 00 00 00 */	cmplwi r0, 0
/* 80085E24 00082D64  7C 09 03 A6 */	mtctr r0
/* 80085E28 00082D68  41 82 00 18 */	beq lbl_80085E40
lbl_80085E2C:
/* 80085E2C 00082D6C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80085E30 00082D70  28 00 00 00 */	cmplwi r0, 0
/* 80085E34 00082D74  9C 07 00 01 */	stbu r0, 1(r7)
/* 80085E38 00082D78  4D 82 00 20 */	beqlr 
/* 80085E3C 00082D7C  42 00 FF F0 */	bdnz lbl_80085E2C
lbl_80085E40:
/* 80085E40 00082D80  38 E7 00 01 */	addi r7, r7, 1
/* 80085E44 00082D84  38 84 00 01 */	addi r4, r4, 1
lbl_80085E48:
/* 80085E48 00082D88  80 A4 00 00 */	lwz r5, 0(r4)
/* 80085E4C 00082D8C  80 0D 82 3C */	lwz r0, K2-_SDA_BASE_(r13)
/* 80085E50 00082D90  80 CD 82 38 */	lwz r6, K1-_SDA_BASE_(r13)
/* 80085E54 00082D94  39 05 00 00 */	addi r8, r5, 0
/* 80085E58 00082D98  7C A5 02 14 */	add r5, r5, r0
/* 80085E5C 00082D9C  7C A5 30 39 */	and. r5, r5, r6
/* 80085E60 00082DA0  40 82 00 20 */	bne lbl_80085E80
/* 80085E64 00082DA4  38 E7 FF FC */	addi r7, r7, -4
lbl_80085E68:
/* 80085E68 00082DA8  95 07 00 04 */	stwu r8, 4(r7)
/* 80085E6C 00082DAC  85 04 00 04 */	lwzu r8, 4(r4)
/* 80085E70 00082DB0  7C A8 02 14 */	add r5, r8, r0
/* 80085E74 00082DB4  7C A5 30 39 */	and. r5, r5, r6
/* 80085E78 00082DB8  41 82 FF F0 */	beq lbl_80085E68
/* 80085E7C 00082DBC  38 E7 00 04 */	addi r7, r7, 4
lbl_80085E80:
/* 80085E80 00082DC0  88 04 00 00 */	lbz r0, 0(r4)
/* 80085E84 00082DC4  28 00 00 00 */	cmplwi r0, 0
/* 80085E88 00082DC8  98 07 00 00 */	stb r0, 0(r7)
/* 80085E8C 00082DCC  4D 82 00 20 */	beqlr 
lbl_80085E90:
/* 80085E90 00082DD0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80085E94 00082DD4  28 00 00 00 */	cmplwi r0, 0
/* 80085E98 00082DD8  9C 07 00 01 */	stbu r0, 1(r7)
/* 80085E9C 00082DDC  40 82 FF F4 */	bne lbl_80085E90
/* 80085EA0 00082DE0  4E 80 00 20 */	blr 

.global strlen
strlen:
/* 80085EA4 00082DE4  38 80 FF FF */	li r4, -1
/* 80085EA8 00082DE8  38 63 FF FF */	addi r3, r3, -1
lbl_80085EAC:
/* 80085EAC 00082DEC  8C 03 00 01 */	lbzu r0, 1(r3)
/* 80085EB0 00082DF0  38 84 00 01 */	addi r4, r4, 1
/* 80085EB4 00082DF4  28 00 00 00 */	cmplwi r0, 0
/* 80085EB8 00082DF8  40 82 FF F4 */	bne lbl_80085EAC
/* 80085EBC 00082DFC  7C 83 23 78 */	mr r3, r4
/* 80085EC0 00082E00  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
.global K1
K1:
	.incbin "baserom.dol", 0x3E3238, 0x4
.global K2
K2:
	.incbin "baserom.dol", 0x3E323C, 0x4