
os/target/riscv64gc-unknown-none-elf/release/os:	file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 31 01 00  	auipc	sp, 19
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 00 00 00  	auipc	ra, 0
8020000c: e7 80 80 00  	jalr	8(ra)

0000000080200010 <rust_main>:
80200010: 11 71        	addi	sp, sp, -256
80200012: 86 fd        	sd	ra, 248(sp)
80200014: a2 f9        	sd	s0, 240(sp)
80200016: a6 f5        	sd	s1, 232(sp)
80200018: ca f1        	sd	s2, 224(sp)
8020001a: ce ed        	sd	s3, 216(sp)
8020001c: d2 e9        	sd	s4, 208(sp)
8020001e: d6 e5        	sd	s5, 200(sp)
80200020: da e1        	sd	s6, 192(sp)
80200022: 5e fd        	sd	s7, 184(sp)
80200024: 62 f9        	sd	s8, 176(sp)
80200026: 66 f5        	sd	s9, 168(sp)
80200028: 6a f1        	sd	s10, 160(sp)
8020002a: 6e ed        	sd	s11, 152(sp)
8020002c: 00 02        	addi	s0, sp, 256

000000008020002e <.LBB0_4>:
8020002e: 17 3c 01 00  	auipc	s8, 19
80200032: 13 0c 2c fd  	addi	s8, s8, -46

0000000080200036 <.LBB0_5>:
80200036: 17 36 01 00  	auipc	a2, 19
8020003a: 13 06 a6 fc  	addi	a2, a2, -54
8020003e: 63 7a 86 01  	bgeu	a2, s8, 20 <.LBB0_6>
80200042: 32 85        	add	a0, zero, a2
80200044: 93 05 15 00  	addi	a1, a0, 1
80200048: 23 00 05 00  	sb	zero, 0(a0)
8020004c: 2e 85        	add	a0, zero, a1
8020004e: e3 eb 85 ff  	bltu	a1, s8, -10 <.LBB0_5+0xe>

0000000080200052 <.LBB0_6>:
80200052: 17 25 00 00  	auipc	a0, 2
80200056: 13 05 e5 fb  	addi	a0, a0, -66
8020005a: 23 3c a4 f2  	sd	a0, -200(s0)
8020005e: 05 45        	addi	a0, zero, 1
80200060: 23 30 a4 f4  	sd	a0, -192(s0)
80200064: 23 34 04 f4  	sd	zero, -184(s0)

0000000080200068 <.LBB0_7>:
80200068: 17 25 00 00  	auipc	a0, 2
8020006c: 13 05 85 fb  	addi	a0, a0, -72
80200070: 23 3c a4 f4  	sd	a0, -168(s0)
80200074: 23 30 04 f6  	sd	zero, -160(s0)
80200078: 13 05 84 f3  	addi	a0, s0, -200
8020007c: 23 30 c4 f0  	sd	a2, -256(s0)
80200080: 97 00 00 00  	auipc	ra, 0
80200084: e7 80 c0 58  	jalr	1420(ra)

0000000080200088 <.LBB0_8>:
80200088: 17 05 00 00  	auipc	a0, 0
8020008c: 13 05 85 f7  	addi	a0, a0, -136
80200090: 23 38 a4 f2  	sd	a0, -208(s0)
80200094: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080200098 <.LBB0_9>:
80200098: 17 25 00 00  	auipc	a0, 2
8020009c: 13 05 85 f6  	addi	a0, a0, -152
802000a0: 23 34 a4 f2  	sd	a0, -216(s0)
802000a4: 23 38 a4 f8  	sd	a0, -112(s0)
802000a8: 13 09 84 f8  	addi	s2, s0, -120
802000ac: 23 34 24 f7  	sd	s2, -152(s0)

00000000802000b0 <.LBB0_10>:
802000b0: 97 14 00 00  	auipc	s1, 1
802000b4: 93 84 e4 00  	addi	s1, s1, 14
802000b8: 23 38 94 f6  	sd	s1, -144(s0)
802000bc: 93 09 04 f9  	addi	s3, s0, -112
802000c0: 23 3c 34 f7  	sd	s3, -136(s0)
802000c4: 23 30 94 f8  	sd	s1, -128(s0)

00000000802000c8 <.LBB0_11>:
802000c8: 17 25 00 00  	auipc	a0, 2
802000cc: 13 05 85 f7  	addi	a0, a0, -136
802000d0: 23 30 a4 f2  	sd	a0, -224(s0)
802000d4: 23 3c a4 f2  	sd	a0, -200(s0)
802000d8: 0d 4a        	addi	s4, zero, 3
802000da: 23 30 44 f5  	sd	s4, -192(s0)

00000000802000de <.LBB0_12>:
802000de: 17 2b 00 00  	auipc	s6, 2
802000e2: 13 0b 2b f9  	addi	s6, s6, -110
802000e6: 23 34 64 f5  	sd	s6, -184(s0)
802000ea: 89 4a        	addi	s5, zero, 2
802000ec: 23 38 54 f5  	sd	s5, -176(s0)
802000f0: 93 0b 84 f6  	addi	s7, s0, -152
802000f4: 23 3c 74 f5  	sd	s7, -168(s0)
802000f8: 23 30 54 f7  	sd	s5, -160(s0)
802000fc: 13 05 84 f3  	addi	a0, s0, -200
80200100: 97 00 00 00  	auipc	ra, 0
80200104: e7 80 c0 50  	jalr	1292(ra)

0000000080200108 <.LBB0_13>:
80200108: 17 25 00 00  	auipc	a0, 2
8020010c: 13 05 85 ef  	addi	a0, a0, -264
80200110: 23 3c a4 f0  	sd	a0, -232(s0)
80200114: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080200118 <.LBB0_14>:
80200118: 17 35 00 00  	auipc	a0, 3
8020011c: 13 05 85 ee  	addi	a0, a0, -280
80200120: 23 38 a4 f0  	sd	a0, -240(s0)
80200124: 23 38 a4 f8  	sd	a0, -112(s0)
80200128: 23 34 24 f7  	sd	s2, -152(s0)
8020012c: 23 38 94 f6  	sd	s1, -144(s0)
80200130: 23 3c 34 f7  	sd	s3, -136(s0)
80200134: 23 30 94 f8  	sd	s1, -128(s0)

0000000080200138 <.LBB0_15>:
80200138: 17 25 00 00  	auipc	a0, 2
8020013c: 13 05 05 fc  	addi	a0, a0, -64
80200140: 23 34 a4 f0  	sd	a0, -248(s0)
80200144: 23 3c a4 f2  	sd	a0, -200(s0)
80200148: 23 30 44 f5  	sd	s4, -192(s0)
8020014c: 23 34 64 f5  	sd	s6, -184(s0)
80200150: 23 38 54 f5  	sd	s5, -176(s0)
80200154: 23 3c 74 f5  	sd	s7, -168(s0)
80200158: 23 30 54 f7  	sd	s5, -160(s0)
8020015c: 13 05 84 f3  	addi	a0, s0, -200
80200160: 97 00 00 00  	auipc	ra, 0
80200164: e7 80 c0 4a  	jalr	1196(ra)

0000000080200168 <.LBB0_16>:
80200168: 17 3d 00 00  	auipc	s10, 3
8020016c: 13 0d 8d e9  	addi	s10, s10, -360
80200170: 23 34 a4 f9  	sd	s10, -120(s0)

0000000080200174 <.LBB0_17>:
80200174: 97 3c 00 00  	auipc	s9, 3
80200178: 93 8c cc e8  	addi	s9, s9, -372
8020017c: 23 38 94 f9  	sd	s9, -112(s0)
80200180: 23 34 24 f7  	sd	s2, -152(s0)
80200184: 23 38 94 f6  	sd	s1, -144(s0)
80200188: 23 3c 34 f7  	sd	s3, -136(s0)
8020018c: 23 30 94 f8  	sd	s1, -128(s0)

0000000080200190 <.LBB0_18>:
80200190: 97 2d 00 00  	auipc	s11, 2
80200194: 93 8d 0d fb  	addi	s11, s11, -80
80200198: 23 3c b4 f3  	sd	s11, -200(s0)
8020019c: 23 30 44 f5  	sd	s4, -192(s0)
802001a0: 23 34 64 f5  	sd	s6, -184(s0)
802001a4: 23 38 54 f5  	sd	s5, -176(s0)
802001a8: 23 3c 74 f5  	sd	s7, -168(s0)
802001ac: 23 30 54 f7  	sd	s5, -160(s0)
802001b0: 13 05 84 f3  	addi	a0, s0, -200
802001b4: 97 00 00 00  	auipc	ra, 0
802001b8: e7 80 80 45  	jalr	1112(ra)

00000000802001bc <.LBB0_19>:
802001bc: 17 35 00 00  	auipc	a0, 3
802001c0: 13 05 45 e4  	addi	a0, a0, -444
802001c4: 23 34 a4 f8  	sd	a0, -120(s0)

00000000802001c8 <.LBB0_20>:
802001c8: 17 35 01 00  	auipc	a0, 19
802001cc: 13 05 85 e3  	addi	a0, a0, -456
802001d0: 23 38 a4 f8  	sd	a0, -112(s0)
802001d4: 23 34 24 f7  	sd	s2, -152(s0)
802001d8: 23 38 94 f6  	sd	s1, -144(s0)
802001dc: 23 3c 34 f7  	sd	s3, -136(s0)
802001e0: 23 30 94 f8  	sd	s1, -128(s0)

00000000802001e4 <.LBB0_21>:
802001e4: 17 25 00 00  	auipc	a0, 2
802001e8: 13 05 45 fa  	addi	a0, a0, -92
802001ec: 23 3c a4 f2  	sd	a0, -200(s0)
802001f0: 23 30 44 f5  	sd	s4, -192(s0)
802001f4: 23 34 64 f5  	sd	s6, -184(s0)
802001f8: 23 38 54 f5  	sd	s5, -176(s0)
802001fc: 23 3c 74 f5  	sd	s7, -168(s0)
80200200: 23 30 54 f7  	sd	s5, -160(s0)
80200204: 13 05 84 f3  	addi	a0, s0, -200
80200208: 97 00 00 00  	auipc	ra, 0
8020020c: e7 80 40 40  	jalr	1028(ra)
80200210: 03 35 04 f0  	ld	a0, -256(s0)
80200214: 23 34 a4 f8  	sd	a0, -120(s0)
80200218: 23 38 84 f9  	sd	s8, -112(s0)
8020021c: 23 34 24 f7  	sd	s2, -152(s0)
80200220: 23 38 94 f6  	sd	s1, -144(s0)
80200224: 23 3c 34 f7  	sd	s3, -136(s0)
80200228: 23 30 94 f8  	sd	s1, -128(s0)

000000008020022c <.LBB0_22>:
8020022c: 17 25 00 00  	auipc	a0, 2
80200230: 13 05 45 fa  	addi	a0, a0, -92
80200234: 23 3c a4 f2  	sd	a0, -200(s0)
80200238: 23 30 44 f5  	sd	s4, -192(s0)
8020023c: 23 34 64 f5  	sd	s6, -184(s0)
80200240: 23 38 54 f5  	sd	s5, -176(s0)
80200244: 23 3c 74 f5  	sd	s7, -168(s0)
80200248: 23 30 54 f7  	sd	s5, -160(s0)
8020024c: 13 05 84 f3  	addi	a0, s0, -200
80200250: 97 00 00 00  	auipc	ra, 0
80200254: e7 80 c0 3b  	jalr	956(ra)
80200258: 03 35 04 f3  	ld	a0, -208(s0)
8020025c: 23 34 a4 f8  	sd	a0, -120(s0)
80200260: 03 35 84 f2  	ld	a0, -216(s0)
80200264: 23 38 a4 f8  	sd	a0, -112(s0)
80200268: 23 34 24 f7  	sd	s2, -152(s0)
8020026c: 23 38 94 f6  	sd	s1, -144(s0)
80200270: 23 3c 34 f7  	sd	s3, -136(s0)
80200274: 23 30 94 f8  	sd	s1, -128(s0)
80200278: 03 35 04 f2  	ld	a0, -224(s0)
8020027c: 23 3c a4 f2  	sd	a0, -200(s0)
80200280: 23 30 44 f5  	sd	s4, -192(s0)
80200284: 23 34 64 f5  	sd	s6, -184(s0)
80200288: 23 38 54 f5  	sd	s5, -176(s0)
8020028c: 23 3c 74 f5  	sd	s7, -168(s0)
80200290: 23 30 54 f7  	sd	s5, -160(s0)
80200294: 13 05 84 f3  	addi	a0, s0, -200
80200298: 97 00 00 00  	auipc	ra, 0
8020029c: e7 80 40 37  	jalr	884(ra)
802002a0: 03 35 84 f1  	ld	a0, -232(s0)
802002a4: 23 34 a4 f8  	sd	a0, -120(s0)
802002a8: 03 35 04 f1  	ld	a0, -240(s0)
802002ac: 23 38 a4 f8  	sd	a0, -112(s0)
802002b0: 23 34 24 f7  	sd	s2, -152(s0)
802002b4: 23 38 94 f6  	sd	s1, -144(s0)
802002b8: 23 3c 34 f7  	sd	s3, -136(s0)
802002bc: 23 30 94 f8  	sd	s1, -128(s0)
802002c0: 03 35 84 f0  	ld	a0, -248(s0)
802002c4: 23 3c a4 f2  	sd	a0, -200(s0)
802002c8: 23 30 44 f5  	sd	s4, -192(s0)
802002cc: 23 34 64 f5  	sd	s6, -184(s0)
802002d0: 23 38 54 f5  	sd	s5, -176(s0)
802002d4: 23 3c 74 f5  	sd	s7, -168(s0)
802002d8: 23 30 54 f7  	sd	s5, -160(s0)
802002dc: 13 05 84 f3  	addi	a0, s0, -200
802002e0: 97 00 00 00  	auipc	ra, 0
802002e4: e7 80 c0 32  	jalr	812(ra)
802002e8: 23 34 a4 f9  	sd	s10, -120(s0)
802002ec: 23 38 94 f9  	sd	s9, -112(s0)
802002f0: 23 34 24 f7  	sd	s2, -152(s0)
802002f4: 23 38 94 f6  	sd	s1, -144(s0)
802002f8: 23 3c 34 f7  	sd	s3, -136(s0)
802002fc: 23 30 94 f8  	sd	s1, -128(s0)
80200300: 23 3c b4 f3  	sd	s11, -200(s0)
80200304: 23 30 44 f5  	sd	s4, -192(s0)
80200308: 23 34 64 f5  	sd	s6, -184(s0)
8020030c: 23 38 54 f5  	sd	s5, -176(s0)
80200310: 23 3c 74 f5  	sd	s7, -168(s0)
80200314: 23 30 54 f7  	sd	s5, -160(s0)
80200318: 13 05 84 f3  	addi	a0, s0, -200
8020031c: 97 00 00 00  	auipc	ra, 0
80200320: e7 80 00 2f  	jalr	752(ra)

0000000080200324 <.LBB0_23>:
80200324: 17 25 00 00  	auipc	a0, 2
80200328: 13 05 c5 ed  	addi	a0, a0, -292

000000008020032c <.LBB0_24>:
8020032c: 17 26 00 00  	auipc	a2, 2
80200330: 13 06 46 ef  	addi	a2, a2, -268
80200334: c5 45        	addi	a1, zero, 17
80200336: 97 00 00 00  	auipc	ra, 0
8020033a: e7 80 60 5b  	jalr	1462(ra)
8020033e: 00 00        	unimp	

0000000080200340 <_ZN2os3sbi8shutdown17h09f051bd517e4022E>:
80200340: 41 11        	addi	sp, sp, -16
80200342: 06 e4        	sd	ra, 8(sp)
80200344: 22 e0        	sd	s0, 0(sp)
80200346: 00 08        	addi	s0, sp, 16
80200348: a1 48        	addi	a7, zero, 8
8020034a: 01 45        	mv	a0, zero
8020034c: 81 45        	mv	a1, zero
8020034e: 01 46        	mv	a2, zero
80200350: 73 00 00 00  	ecall	

0000000080200354 <.LBB1_1>:
80200354: 17 25 00 00  	auipc	a0, 2
80200358: 13 05 45 ee  	addi	a0, a0, -284

000000008020035c <.LBB1_2>:
8020035c: 17 26 00 00  	auipc	a2, 2
80200360: 13 06 c6 ef  	addi	a2, a2, -260
80200364: cd 45        	addi	a1, zero, 19
80200366: 97 00 00 00  	auipc	ra, 0
8020036a: e7 80 60 58  	jalr	1414(ra)
8020036e: 00 00        	unimp	

0000000080200370 <_ZN4core3ptr52drop_in_place$LT$$RF$mut$u20$os..console..Stdout$GT$17h24b1d87ff8ecd1baE.llvm.16142867010463156940>:
80200370: 41 11        	addi	sp, sp, -16
80200372: 06 e4        	sd	ra, 8(sp)
80200374: 22 e0        	sd	s0, 0(sp)
80200376: 00 08        	addi	s0, sp, 16
80200378: 02 64        	ld	s0, 0(sp)
8020037a: a2 60        	ld	ra, 8(sp)
8020037c: 41 01        	addi	sp, sp, 16
8020037e: 82 80        	ret

0000000080200380 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940>:
80200380: 01 11        	addi	sp, sp, -32
80200382: 06 ec        	sd	ra, 24(sp)
80200384: 22 e8        	sd	s0, 16(sp)
80200386: 00 10        	addi	s0, sp, 32
80200388: 1b 85 05 00  	sext.w	a0, a1
8020038c: 13 06 00 08  	addi	a2, zero, 128
80200390: 23 26 04 fe  	sw	zero, -20(s0)
80200394: 63 76 c5 00  	bgeu	a0, a2, 12 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x20>
80200398: 23 06 b4 fe  	sb	a1, -20(s0)
8020039c: 05 45        	addi	a0, zero, 1
8020039e: 59 a8        	j	150 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0xb4>
802003a0: 1b d5 b5 00  	srliw	a0, a1, 11
802003a4: 05 e1        	bnez	a0, 32 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x44>
802003a6: 13 d5 65 00  	srli	a0, a1, 6
802003aa: 93 f5 f5 03  	andi	a1, a1, 63
802003ae: 13 66 05 fc  	ori	a2, a0, -64
802003b2: 23 06 c4 fe  	sb	a2, -20(s0)
802003b6: 13 e5 05 08  	ori	a0, a1, 128
802003ba: a3 06 a4 fe  	sb	a0, -19(s0)
802003be: 09 45        	addi	a0, zero, 2
802003c0: b2 85        	add	a1, zero, a2
802003c2: 8d a8        	j	114 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0xb4>
802003c4: 1b d5 05 01  	srliw	a0, a1, 16
802003c8: 05 e9        	bnez	a0, 48 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x78>
802003ca: 1b d5 c5 00  	srliw	a0, a1, 12
802003ce: 1b d6 65 00  	srliw	a2, a1, 6
802003d2: 93 f5 f5 03  	andi	a1, a1, 63
802003d6: 93 66 05 fe  	ori	a3, a0, -32
802003da: 23 06 d4 fe  	sb	a3, -20(s0)
802003de: 13 75 f6 03  	andi	a0, a2, 63
802003e2: 13 65 05 08  	ori	a0, a0, 128
802003e6: a3 06 a4 fe  	sb	a0, -19(s0)
802003ea: 13 e5 05 08  	ori	a0, a1, 128
802003ee: 23 07 a4 fe  	sb	a0, -18(s0)
802003f2: 0d 45        	addi	a0, zero, 3
802003f4: b6 85        	add	a1, zero, a3
802003f6: 3d a8        	j	62 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0xb4>
802003f8: 1b d5 25 01  	srliw	a0, a1, 18
802003fc: 1b d6 c5 00  	srliw	a2, a1, 12
80200400: 9b d6 65 00  	srliw	a3, a1, 6
80200404: 93 f5 f5 03  	andi	a1, a1, 63
80200408: 13 67 05 ff  	ori	a4, a0, -16
8020040c: 23 06 e4 fe  	sb	a4, -20(s0)
80200410: 13 75 f6 03  	andi	a0, a2, 63
80200414: 13 65 05 08  	ori	a0, a0, 128
80200418: a3 06 a4 fe  	sb	a0, -19(s0)
8020041c: 13 f5 f6 03  	andi	a0, a3, 63
80200420: 13 65 05 08  	ori	a0, a0, 128
80200424: 23 07 a4 fe  	sb	a0, -18(s0)
80200428: 13 e5 05 08  	ori	a0, a1, 128
8020042c: a3 07 a4 fe  	sb	a0, -17(s0)
80200430: 11 45        	addi	a0, zero, 4
80200432: ba 85        	add	a1, zero, a4
80200434: 13 06 c4 fe  	addi	a2, s0, -20
80200438: b3 07 a6 00  	add	a5, a2, a0
8020043c: 93 03 00 0e  	addi	t2, zero, 224
80200440: 13 03 00 0f  	addi	t1, zero, 240
80200444: 37 08 1c 00  	lui	a6, 448
80200448: b7 02 11 00  	lui	t0, 272
8020044c: 85 48        	addi	a7, zero, 1
8020044e: 93 06 16 00  	addi	a3, a2, 1
80200452: 13 95 85 03  	slli	a0, a1, 56
80200456: 13 57 85 43  	srai	a4, a0, 56
8020045a: 13 f5 f5 0f  	andi	a0, a1, 255
8020045e: 63 5d 07 06  	bgez	a4, 122 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x158>
80200462: 63 8e f6 02  	beq	a3, a5, 60 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x11e>
80200466: 03 47 16 00  	lbu	a4, 1(a2)
8020046a: 93 06 26 00  	addi	a3, a2, 2
8020046e: 13 76 f7 03  	andi	a2, a4, 63
80200472: fd 89        	andi	a1, a1, 31
80200474: 63 6a 75 02  	bltu	a0, t2, 52 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x128>
80200478: 63 8c f6 02  	beq	a3, a5, 56 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x130>
8020047c: 03 c7 06 00  	lbu	a4, 0(a3)
80200480: 85 06        	addi	a3, a3, 1
80200482: 13 77 f7 03  	andi	a4, a4, 63
80200486: 1a 06        	slli	a2, a2, 6
80200488: 59 8e        	or	a2, a2, a4
8020048a: 63 69 65 02  	bltu	a0, t1, 50 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x13c>
8020048e: 63 8b f6 02  	beq	a3, a5, 54 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x144>
80200492: 03 c5 06 00  	lbu	a0, 0(a3)
80200496: 85 06        	addi	a3, a3, 1
80200498: 13 75 f5 03  	andi	a0, a0, 63
8020049c: 35 a0        	j	44 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x148>
8020049e: 01 46        	mv	a2, zero
802004a0: be 86        	add	a3, zero, a5
802004a2: fd 89        	andi	a1, a1, 31
802004a4: e3 7a 75 fc  	bgeu	a0, t2, -44 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0xf8>
802004a8: 13 95 65 00  	slli	a0, a1, 6
802004ac: 51 8d        	or	a0, a0, a2
802004ae: 2d a0        	j	42 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x158>
802004b0: 01 47        	mv	a4, zero
802004b2: be 86        	add	a3, zero, a5
802004b4: 1a 06        	slli	a2, a2, 6
802004b6: 59 8e        	or	a2, a2, a4
802004b8: e3 7b 65 fc  	bgeu	a0, t1, -42 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x10e>
802004bc: 13 95 c5 00  	slli	a0, a1, 12
802004c0: 51 8d        	or	a0, a0, a2
802004c2: 19 a8        	j	22 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x158>
802004c4: 01 45        	mv	a0, zero
802004c6: be 86        	add	a3, zero, a5
802004c8: ca 05        	slli	a1, a1, 18
802004ca: b3 f5 05 01  	and	a1, a1, a6
802004ce: 1a 06        	slli	a2, a2, 6
802004d0: d1 8d        	or	a1, a1, a2
802004d2: 4d 8d        	or	a0, a0, a1
802004d4: 63 0c 55 00  	beq	a0, t0, 24 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x16c>
802004d8: 81 45        	mv	a1, zero
802004da: 01 46        	mv	a2, zero
802004dc: 73 00 00 00  	ecall	
802004e0: 63 86 f6 00  	beq	a3, a5, 12 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0x16c>
802004e4: 83 c5 06 00  	lbu	a1, 0(a3)
802004e8: 36 86        	add	a2, zero, a3
802004ea: 95 b7        	j	-156 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h6f24040ab76289ebE.llvm.16142867010463156940+0xce>
802004ec: 01 45        	mv	a0, zero
802004ee: 42 64        	ld	s0, 16(sp)
802004f0: e2 60        	ld	ra, 24(sp)
802004f2: 05 61        	addi	sp, sp, 32
802004f4: 82 80        	ret

00000000802004f6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h74837f0bf570c09aE.llvm.16142867010463156940>:
802004f6: 5d 71        	addi	sp, sp, -80
802004f8: 86 e4        	sd	ra, 72(sp)
802004fa: a2 e0        	sd	s0, 64(sp)
802004fc: 80 08        	addi	s0, sp, 80
802004fe: 08 61        	ld	a0, 0(a0)
80200500: 90 75        	ld	a2, 40(a1)
80200502: 94 71        	ld	a3, 32(a1)
80200504: 23 3c a4 fa  	sd	a0, -72(s0)
80200508: 23 34 c4 fe  	sd	a2, -24(s0)
8020050c: 23 30 d4 fe  	sd	a3, -32(s0)
80200510: 88 6d        	ld	a0, 24(a1)
80200512: 90 69        	ld	a2, 16(a1)
80200514: 94 65        	ld	a3, 8(a1)
80200516: 8c 61        	ld	a1, 0(a1)
80200518: 23 3c a4 fc  	sd	a0, -40(s0)
8020051c: 23 38 c4 fc  	sd	a2, -48(s0)
80200520: 23 34 d4 fc  	sd	a3, -56(s0)
80200524: 23 30 b4 fc  	sd	a1, -64(s0)

0000000080200528 <.LBB2_1>:
80200528: 97 25 00 00  	auipc	a1, 2
8020052c: 93 85 85 d4  	addi	a1, a1, -696
80200530: 13 05 84 fb  	addi	a0, s0, -72
80200534: 13 06 04 fc  	addi	a2, s0, -64
80200538: 97 00 00 00  	auipc	ra, 0
8020053c: e7 80 a0 43  	jalr	1082(ra)
80200540: 06 64        	ld	s0, 64(sp)
80200542: a6 60        	ld	ra, 72(sp)
80200544: 61 61        	addi	sp, sp, 80
80200546: 82 80        	ret

0000000080200548 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940>:
80200548: 41 11        	addi	sp, sp, -16
8020054a: 06 e4        	sd	ra, 8(sp)
8020054c: 22 e0        	sd	s0, 0(sp)
8020054e: 00 08        	addi	s0, sp, 16
80200550: 4d ca        	beqz	a2, 178 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0xba>
80200552: b3 87 c5 00  	add	a5, a1, a2
80200556: 93 03 00 0e  	addi	t2, zero, 224
8020055a: 13 03 00 0f  	addi	t1, zero, 240
8020055e: 37 08 1c 00  	lui	a6, 448
80200562: b7 02 11 00  	lui	t0, 272
80200566: 85 48        	addi	a7, zero, 1
80200568: 19 a8        	j	22 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x36>
8020056a: 13 95 65 00  	slli	a0, a1, 6
8020056e: 51 8d        	or	a0, a0, a2
80200570: 81 45        	mv	a1, zero
80200572: 01 46        	mv	a2, zero
80200574: 73 00 00 00  	ecall	
80200578: b6 85        	add	a1, zero, a3
8020057a: 63 84 f6 08  	beq	a3, a5, 136 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0xba>
8020057e: 03 86 05 00  	lb	a2, 0(a1)
80200582: 93 86 15 00  	addi	a3, a1, 1
80200586: 13 75 f6 0f  	andi	a0, a2, 255
8020058a: e3 53 06 fe  	bgez	a2, -26 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x28>
8020058e: 63 8d f6 00  	beq	a3, a5, 26 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x60>
80200592: 03 c6 15 00  	lbu	a2, 1(a1)
80200596: 93 86 25 00  	addi	a3, a1, 2
8020059a: 13 76 f6 03  	andi	a2, a2, 63
8020059e: 93 75 f5 01  	andi	a1, a0, 31
802005a2: e3 64 75 fc  	bltu	a0, t2, -56 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x22>
802005a6: 39 a0        	j	14 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x6c>
802005a8: 01 46        	mv	a2, zero
802005aa: be 86        	add	a3, zero, a5
802005ac: 93 75 f5 01  	andi	a1, a0, 31
802005b0: e3 6d 75 fa  	bltu	a0, t2, -70 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x22>
802005b4: 63 83 f6 02  	beq	a3, a5, 38 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x92>
802005b8: 03 c7 06 00  	lbu	a4, 0(a3)
802005bc: 85 06        	addi	a3, a3, 1
802005be: 13 77 f7 03  	andi	a4, a4, 63
802005c2: 1a 06        	slli	a2, a2, 6
802005c4: 59 8e        	or	a2, a2, a4
802005c6: 63 60 65 02  	bltu	a0, t1, 32 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x9e>
802005ca: 63 82 f6 02  	beq	a3, a5, 36 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0xa6>
802005ce: 03 c5 06 00  	lbu	a0, 0(a3)
802005d2: 85 06        	addi	a3, a3, 1
802005d4: 13 75 f5 03  	andi	a0, a0, 63
802005d8: 29 a8        	j	26 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0xaa>
802005da: 01 47        	mv	a4, zero
802005dc: be 86        	add	a3, zero, a5
802005de: 1a 06        	slli	a2, a2, 6
802005e0: 59 8e        	or	a2, a2, a4
802005e2: e3 74 65 fe  	bgeu	a0, t1, -24 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x82>
802005e6: 13 95 c5 00  	slli	a0, a1, 12
802005ea: 51 8d        	or	a0, a0, a2
802005ec: 51 b7        	j	-124 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x28>
802005ee: 01 45        	mv	a0, zero
802005f0: be 86        	add	a3, zero, a5
802005f2: ca 05        	slli	a1, a1, 18
802005f4: b3 f5 05 01  	and	a1, a1, a6
802005f8: 1a 06        	slli	a2, a2, 6
802005fa: d1 8d        	or	a1, a1, a2
802005fc: 4d 8d        	or	a0, a0, a1
802005fe: e3 19 55 f6  	bne	a0, t0, -142 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hdb4ae7e442005baeE.llvm.16142867010463156940+0x28>
80200602: 01 45        	mv	a0, zero
80200604: 02 64        	ld	s0, 0(sp)
80200606: a2 60        	ld	ra, 8(sp)
80200608: 41 01        	addi	sp, sp, 16
8020060a: 82 80        	ret

000000008020060c <_ZN2os7console5print17he4512cc7dba87a59E>:
8020060c: 5d 71        	addi	sp, sp, -80
8020060e: 86 e4        	sd	ra, 72(sp)
80200610: a2 e0        	sd	s0, 64(sp)
80200612: 80 08        	addi	s0, sp, 80
80200614: 0c 75        	ld	a1, 40(a0)
80200616: 10 71        	ld	a2, 32(a0)
80200618: 93 06 04 fc  	addi	a3, s0, -64
8020061c: 23 3c d4 fa  	sd	a3, -72(s0)
80200620: 23 34 b4 fe  	sd	a1, -24(s0)
80200624: 23 30 c4 fe  	sd	a2, -32(s0)
80200628: 0c 6d        	ld	a1, 24(a0)
8020062a: 10 69        	ld	a2, 16(a0)
8020062c: 14 65        	ld	a3, 8(a0)
8020062e: 08 61        	ld	a0, 0(a0)
80200630: 23 3c b4 fc  	sd	a1, -40(s0)
80200634: 23 38 c4 fc  	sd	a2, -48(s0)
80200638: 23 34 d4 fc  	sd	a3, -56(s0)
8020063c: 23 30 a4 fc  	sd	a0, -64(s0)

0000000080200640 <.LBB4_3>:
80200640: 97 25 00 00  	auipc	a1, 2
80200644: 93 85 05 c3  	addi	a1, a1, -976
80200648: 13 05 84 fb  	addi	a0, s0, -72
8020064c: 13 06 04 fc  	addi	a2, s0, -64
80200650: 97 00 00 00  	auipc	ra, 0
80200654: e7 80 20 32  	jalr	802(ra)
80200658: 09 e5        	bnez	a0, 10 <.LBB4_4>
8020065a: 06 64        	ld	s0, 64(sp)
8020065c: a6 60        	ld	ra, 72(sp)
8020065e: 61 61        	addi	sp, sp, 80
80200660: 82 80        	ret

0000000080200662 <.LBB4_4>:
80200662: 17 25 00 00  	auipc	a0, 2
80200666: 13 05 e5 c3  	addi	a0, a0, -962

000000008020066a <.LBB4_5>:
8020066a: 97 26 00 00  	auipc	a3, 2
8020066e: 93 86 66 c6  	addi	a3, a3, -922

0000000080200672 <.LBB4_6>:
80200672: 17 27 00 00  	auipc	a4, 2
80200676: 13 07 e7 c8  	addi	a4, a4, -882
8020067a: 13 06 04 fc  	addi	a2, s0, -64
8020067e: 93 05 b0 02  	addi	a1, zero, 43
80200682: 97 00 00 00  	auipc	ra, 0
80200686: e7 80 a0 20  	jalr	522(ra)
8020068a: 00 00        	unimp	

000000008020068c <rust_begin_unwind>:
8020068c: 71 71        	addi	sp, sp, -176
8020068e: 06 f5        	sd	ra, 168(sp)
80200690: 22 f1        	sd	s0, 160(sp)
80200692: 26 ed        	sd	s1, 152(sp)
80200694: 4a e9        	sd	s2, 144(sp)
80200696: 00 19        	addi	s0, sp, 176
80200698: 2a 89        	add	s2, zero, a0
8020069a: 97 00 00 00  	auipc	ra, 0
8020069e: e7 80 20 24  	jalr	578(ra)
802006a2: 15 e5        	bnez	a0, 44 <.LBB0_10+0x16>
802006a4: 4a 85        	add	a0, zero, s2
802006a6: 97 00 00 00  	auipc	ra, 0
802006aa: e7 80 20 23  	jalr	562(ra)
802006ae: 2d e5        	bnez	a0, 106 <.LBB0_12+0x16>

00000000802006b0 <.LBB0_9>:
802006b0: 17 25 00 00  	auipc	a0, 2
802006b4: 13 05 85 c6  	addi	a0, a0, -920

00000000802006b8 <.LBB0_10>:
802006b8: 17 26 00 00  	auipc	a2, 2
802006bc: 13 06 06 cd  	addi	a2, a2, -816
802006c0: 93 05 b0 02  	addi	a1, zero, 43
802006c4: 97 00 00 00  	auipc	ra, 0
802006c8: e7 80 80 22  	jalr	552(ra)
802006cc: 00 00        	unimp	
802006ce: aa 84        	add	s1, zero, a0
802006d0: 97 00 00 00  	auipc	ra, 0
802006d4: e7 80 00 21  	jalr	528(ra)
802006d8: 23 34 a4 f8  	sd	a0, -120(s0)
802006dc: 23 38 b4 f8  	sd	a1, -112(s0)
802006e0: 26 85        	add	a0, zero, s1
802006e2: 97 00 00 00  	auipc	ra, 0
802006e6: e7 80 60 20  	jalr	518(ra)
802006ea: 23 2e a4 f8  	sw	a0, -100(s0)
802006ee: 4a 85        	add	a0, zero, s2
802006f0: 97 00 00 00  	auipc	ra, 0
802006f4: e7 80 80 1e  	jalr	488(ra)
802006f8: 41 e5        	bnez	a0, 136 <.LBB0_15+0x24>

00000000802006fa <.LBB0_11>:
802006fa: 17 25 00 00  	auipc	a0, 2
802006fe: 13 05 e5 c1  	addi	a0, a0, -994

0000000080200702 <.LBB0_12>:
80200702: 17 26 00 00  	auipc	a2, 2
80200706: 13 06 e6 ce  	addi	a2, a2, -786
8020070a: 93 05 b0 02  	addi	a1, zero, 43
8020070e: 97 00 00 00  	auipc	ra, 0
80200712: e7 80 e0 1d  	jalr	478(ra)
80200716: 00 00        	unimp	
80200718: 23 34 a4 fa  	sd	a0, -88(s0)
8020071c: 13 05 84 fa  	addi	a0, s0, -88
80200720: 23 3c a4 f4  	sd	a0, -168(s0)

0000000080200724 <.LBB0_13>:
80200724: 17 05 00 00  	auipc	a0, 0
80200728: 13 05 c5 10  	addi	a0, a0, 268
8020072c: 23 30 a4 f6  	sd	a0, -160(s0)
80200730: 13 05 04 fb  	addi	a0, s0, -80
80200734: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080200738 <.LBB0_14>:
80200738: 17 25 00 00  	auipc	a0, 2
8020073c: 13 05 85 c1  	addi	a0, a0, -1000
80200740: 23 38 a4 fa  	sd	a0, -80(s0)
80200744: 09 45        	addi	a0, zero, 2
80200746: 23 3c a4 fa  	sd	a0, -72(s0)
8020074a: 23 30 04 fc  	sd	zero, -64(s0)
8020074e: 13 05 84 f5  	addi	a0, s0, -168
80200752: 23 38 a4 fc  	sd	a0, -48(s0)
80200756: 05 45        	addi	a0, zero, 1
80200758: 23 3c a4 fc  	sd	a0, -40(s0)

000000008020075c <.LBB0_15>:
8020075c: 97 25 00 00  	auipc	a1, 2
80200760: 93 85 45 b1  	addi	a1, a1, -1260
80200764: 13 05 84 f8  	addi	a0, s0, -120
80200768: 13 06 04 fb  	addi	a2, s0, -80
8020076c: 97 00 00 00  	auipc	ra, 0
80200770: e7 80 60 20  	jalr	518(ra)
80200774: 49 e9        	bnez	a0, 146 <.LBB0_21>
80200776: 97 00 00 00  	auipc	ra, 0
8020077a: e7 80 a0 bc  	jalr	-1078(ra)
8020077e: 00 00        	unimp	
80200780: 23 30 a4 fa  	sd	a0, -96(s0)
80200784: 13 05 84 f8  	addi	a0, s0, -120
80200788: 23 3c a4 f4  	sd	a0, -168(s0)

000000008020078c <.LBB0_16>:
8020078c: 17 05 00 00  	auipc	a0, 0
80200790: 13 05 c5 0b  	addi	a0, a0, 188
80200794: 23 30 a4 f6  	sd	a0, -160(s0)
80200798: 13 05 c4 f9  	addi	a0, s0, -100
8020079c: 23 34 a4 f6  	sd	a0, -152(s0)

00000000802007a0 <.LBB0_17>:
802007a0: 17 15 00 00  	auipc	a0, 1
802007a4: 13 05 e5 99  	addi	a0, a0, -1634
802007a8: 23 38 a4 f6  	sd	a0, -144(s0)
802007ac: 13 05 04 fa  	addi	a0, s0, -96
802007b0: 23 3c a4 f6  	sd	a0, -136(s0)

00000000802007b4 <.LBB0_18>:
802007b4: 17 05 00 00  	auipc	a0, 0
802007b8: 13 05 c5 07  	addi	a0, a0, 124
802007bc: 23 30 a4 f8  	sd	a0, -128(s0)
802007c0: 13 05 04 fb  	addi	a0, s0, -80
802007c4: 23 34 a4 fa  	sd	a0, -88(s0)

00000000802007c8 <.LBB0_19>:
802007c8: 17 25 00 00  	auipc	a0, 2
802007cc: 13 05 85 be  	addi	a0, a0, -1048
802007d0: 23 38 a4 fa  	sd	a0, -80(s0)
802007d4: 11 45        	addi	a0, zero, 4
802007d6: 23 3c a4 fa  	sd	a0, -72(s0)
802007da: 23 30 04 fc  	sd	zero, -64(s0)
802007de: 13 05 84 f5  	addi	a0, s0, -168
802007e2: 23 38 a4 fc  	sd	a0, -48(s0)
802007e6: 0d 45        	addi	a0, zero, 3
802007e8: 23 3c a4 fc  	sd	a0, -40(s0)

00000000802007ec <.LBB0_20>:
802007ec: 97 25 00 00  	auipc	a1, 2
802007f0: 93 85 45 a8  	addi	a1, a1, -1404
802007f4: 13 05 84 fa  	addi	a0, s0, -88
802007f8: 13 06 04 fb  	addi	a2, s0, -80
802007fc: 97 00 00 00  	auipc	ra, 0
80200800: e7 80 60 17  	jalr	374(ra)
80200804: 2d d9        	beqz	a0, -142 <.LBB0_15+0x1a>

0000000080200806 <.LBB0_21>:
80200806: 17 25 00 00  	auipc	a0, 2
8020080a: 13 05 a5 a9  	addi	a0, a0, -1382

000000008020080e <.LBB0_22>:
8020080e: 97 26 00 00  	auipc	a3, 2
80200812: 93 86 26 ac  	addi	a3, a3, -1342

0000000080200816 <.LBB0_23>:
80200816: 17 27 00 00  	auipc	a4, 2
8020081a: 13 07 a7 ae  	addi	a4, a4, -1302
8020081e: 13 06 04 fb  	addi	a2, s0, -80
80200822: 93 05 b0 02  	addi	a1, zero, 43
80200826: 97 00 00 00  	auipc	ra, 0
8020082a: e7 80 60 06  	jalr	102(ra)
8020082e: 00 00        	unimp	

0000000080200830 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h145ed2b47db0ed0bE>:
80200830: 41 11        	addi	sp, sp, -16
80200832: 06 e4        	sd	ra, 8(sp)
80200834: 22 e0        	sd	s0, 0(sp)
80200836: 00 08        	addi	s0, sp, 16
80200838: 08 61        	ld	a0, 0(a0)
8020083a: 02 64        	ld	s0, 0(sp)
8020083c: a2 60        	ld	ra, 8(sp)
8020083e: 41 01        	addi	sp, sp, 16
80200840: 17 03 00 00  	auipc	t1, 0
80200844: 67 00 03 10  	jr	256(t1)

0000000080200848 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd425684dccf5e02dE>:
80200848: 41 11        	addi	sp, sp, -16
8020084a: 06 e4        	sd	ra, 8(sp)
8020084c: 22 e0        	sd	s0, 0(sp)
8020084e: 00 08        	addi	s0, sp, 16
80200850: 10 61        	ld	a2, 0(a0)
80200852: 14 65        	ld	a3, 8(a0)
80200854: 2e 87        	add	a4, zero, a1
80200856: 32 85        	add	a0, zero, a2
80200858: b6 85        	add	a1, zero, a3
8020085a: 3a 86        	add	a2, zero, a4
8020085c: 02 64        	ld	s0, 0(sp)
8020085e: a2 60        	ld	ra, 8(sp)
80200860: 41 01        	addi	sp, sp, 16
80200862: 17 13 00 00  	auipc	t1, 1
80200866: 67 00 c3 80  	jr	-2036(t1)

000000008020086a <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>:
8020086a: 08 61        	ld	a0, 0(a0)
8020086c: 01 a0        	j	0 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E+0x2>

000000008020086e <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2c14ec9a62b1a876E>:
8020086e: 82 80        	ret

0000000080200870 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7108e12ad9db6507E>:
80200870: 37 f5 60 01  	lui	a0, 5647
80200874: 1b 05 75 62  	addiw	a0, a0, 1575
80200878: 36 05        	slli	a0, a0, 13
8020087a: 13 05 75 3d  	addi	a0, a0, 983
8020087e: 32 05        	slli	a0, a0, 12
80200880: 13 05 15 f8  	addi	a0, a0, -127
80200884: 32 05        	slli	a0, a0, 12
80200886: 13 05 25 f4  	addi	a0, a0, -190
8020088a: 82 80        	ret

000000008020088c <_ZN4core6result13unwrap_failed17h3a7e57da3fc4cd3aE>:
8020088c: 19 71        	addi	sp, sp, -128
8020088e: 86 fc        	sd	ra, 120(sp)
80200890: 2a e4        	sd	a0, 8(sp)
80200892: 2e e8        	sd	a1, 16(sp)
80200894: 32 ec        	sd	a2, 24(sp)
80200896: 36 f0        	sd	a3, 32(sp)
80200898: 28 00        	addi	a0, sp, 8
8020089a: aa ec        	sd	a0, 88(sp)

000000008020089c <.LBB118_1>:
8020089c: 17 15 00 00  	auipc	a0, 1
802008a0: 13 05 45 c3  	addi	a0, a0, -972
802008a4: aa f0        	sd	a0, 96(sp)
802008a6: 28 08        	addi	a0, sp, 24
802008a8: aa f4        	sd	a0, 104(sp)

00000000802008aa <.LBB118_2>:
802008aa: 17 15 00 00  	auipc	a0, 1
802008ae: 13 05 e5 c1  	addi	a0, a0, -994
802008b2: aa f8        	sd	a0, 112(sp)

00000000802008b4 <.LBB118_3>:
802008b4: 17 25 00 00  	auipc	a0, 2
802008b8: 13 05 c5 b5  	addi	a0, a0, -1188
802008bc: 2a f4        	sd	a0, 40(sp)
802008be: 09 45        	addi	a0, zero, 2
802008c0: 2a f8        	sd	a0, 48(sp)
802008c2: 02 fc        	sd	zero, 56(sp)
802008c4: ac 08        	addi	a1, sp, 88
802008c6: ae e4        	sd	a1, 72(sp)
802008c8: aa e8        	sd	a0, 80(sp)
802008ca: 28 10        	addi	a0, sp, 40
802008cc: ba 85        	add	a1, zero, a4
802008ce: 97 00 00 00  	auipc	ra, 0
802008d2: e7 80 a0 04  	jalr	74(ra)
802008d6: 00 00        	unimp	

00000000802008d8 <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>:
802008d8: 08 69        	ld	a0, 16(a0)
802008da: 82 80        	ret

00000000802008dc <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>:
802008dc: 08 6d        	ld	a0, 24(a0)
802008de: 82 80        	ret

00000000802008e0 <_ZN4core5panic8Location4file17h3a63c909928b6622E>:
802008e0: 10 61        	ld	a2, 0(a0)
802008e2: 0c 65        	ld	a1, 8(a0)
802008e4: 32 85        	add	a0, zero, a2
802008e6: 82 80        	ret

00000000802008e8 <_ZN4core5panic8Location4line17h438064cf29667b6aE>:
802008e8: 08 49        	lw	a0, 16(a0)
802008ea: 82 80        	ret

00000000802008ec <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>:
802008ec: 5d 71        	addi	sp, sp, -80
802008ee: 86 e4        	sd	ra, 72(sp)
802008f0: 2a fc        	sd	a0, 56(sp)
802008f2: ae e0        	sd	a1, 64(sp)
802008f4: 28 18        	addi	a0, sp, 56
802008f6: 2a e4        	sd	a0, 8(sp)
802008f8: 05 45        	addi	a0, zero, 1
802008fa: 2a e8        	sd	a0, 16(sp)
802008fc: 02 ec        	sd	zero, 24(sp)

00000000802008fe <.LBB129_1>:
802008fe: 17 25 00 00  	auipc	a0, 2
80200902: 13 05 a5 b0  	addi	a0, a0, -1270
80200906: 2a f4        	sd	a0, 40(sp)
80200908: 02 f8        	sd	zero, 48(sp)
8020090a: 28 00        	addi	a0, sp, 8
8020090c: b2 85        	add	a1, zero, a2
8020090e: 97 00 00 00  	auipc	ra, 0
80200912: e7 80 a0 00  	jalr	10(ra)
80200916: 00 00        	unimp	

0000000080200918 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>:
80200918: 79 71        	addi	sp, sp, -48
8020091a: 06 f4        	sd	ra, 40(sp)

000000008020091c <.LBB131_1>:
8020091c: 17 26 00 00  	auipc	a2, 2
80200920: 13 06 c6 ae  	addi	a2, a2, -1300
80200924: 32 e4        	sd	a2, 8(sp)

0000000080200926 <.LBB131_2>:
80200926: 17 26 00 00  	auipc	a2, 2
8020092a: 13 06 a6 b0  	addi	a2, a2, -1270
8020092e: 32 e8        	sd	a2, 16(sp)
80200930: 2a ec        	sd	a0, 24(sp)
80200932: 2e f0        	sd	a1, 32(sp)
80200934: 28 00        	addi	a0, sp, 8
80200936: 97 00 00 00  	auipc	ra, 0
8020093a: e7 80 60 d5  	jalr	-682(ra)
8020093e: 00 00        	unimp	

0000000080200940 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>:
80200940: 39 71        	addi	sp, sp, -64
80200942: 06 fc        	sd	ra, 56(sp)
80200944: 10 75        	ld	a2, 40(a0)
80200946: 18 71        	ld	a4, 32(a0)
80200948: 94 71        	ld	a3, 32(a1)
8020094a: 8c 75        	ld	a1, 40(a1)
8020094c: 32 f8        	sd	a2, 48(sp)
8020094e: 3a f4        	sd	a4, 40(sp)
80200950: 10 6d        	ld	a2, 24(a0)
80200952: 18 69        	ld	a4, 16(a0)
80200954: 1c 65        	ld	a5, 8(a0)
80200956: 08 61        	ld	a0, 0(a0)
80200958: 32 f0        	sd	a2, 32(sp)
8020095a: 3a ec        	sd	a4, 24(sp)
8020095c: 3e e8        	sd	a5, 16(sp)
8020095e: 2a e4        	sd	a0, 8(sp)
80200960: 30 00        	addi	a2, sp, 8
80200962: 36 85        	add	a0, zero, a3
80200964: 97 00 00 00  	auipc	ra, 0
80200968: e7 80 e0 00  	jalr	14(ra)
8020096c: e2 70        	ld	ra, 56(sp)
8020096e: 21 61        	addi	sp, sp, 64
80200970: 82 80        	ret

0000000080200972 <_ZN4core3fmt5write17h338141860f5a80fbE>:
80200972: 35 71        	addi	sp, sp, -160
80200974: 06 ed        	sd	ra, 152(sp)
80200976: 22 e9        	sd	s0, 144(sp)
80200978: 26 e5        	sd	s1, 136(sp)
8020097a: 4a e1        	sd	s2, 128(sp)
8020097c: ce fc        	sd	s3, 120(sp)
8020097e: d2 f8        	sd	s4, 112(sp)
80200980: d6 f4        	sd	s5, 104(sp)
80200982: da f0        	sd	s6, 96(sp)
80200984: de ec        	sd	s7, 88(sp)
80200986: e2 e8        	sd	s8, 80(sp)
80200988: e6 e4        	sd	s9, 72(sp)
8020098a: 32 84        	add	s0, zero, a2
8020098c: 05 46        	addi	a2, zero, 1
8020098e: 16 16        	slli	a2, a2, 37
80200990: 32 fc        	sd	a2, 56(sp)
80200992: 0d 46        	addi	a2, zero, 3
80200994: 23 00 c1 04  	sb	a2, 64(sp)
80200998: 04 68        	ld	s1, 16(s0)
8020099a: 02 e4        	sd	zero, 8(sp)
8020099c: 02 ec        	sd	zero, 24(sp)
8020099e: 2a f4        	sd	a0, 40(sp)
802009a0: 2e f8        	sd	a1, 48(sp)
802009a2: e9 cc        	beqz	s1, 218 <.LBB167_35+0x9e>
802009a4: 10 6c        	ld	a2, 24(s0)
802009a6: 83 39 84 00  	ld	s3, 8(s0)
802009aa: 03 39 04 00  	ld	s2, 0(s0)
802009ae: ce 8a        	add	s5, zero, s3
802009b0: 63 e3 c9 00  	bltu	s3, a2, 6 <_ZN4core3fmt5write17h338141860f5a80fbE+0x44>
802009b4: b2 8a        	add	s5, zero, a2
802009b6: 63 81 0a 12  	beqz	s5, 290 <.LBB167_35+0xfa>
802009ba: 83 36 09 00  	ld	a3, 0(s2)
802009be: 03 36 89 00  	ld	a2, 8(s2)
802009c2: 98 6d        	ld	a4, 24(a1)
802009c4: b6 85        	add	a1, zero, a3
802009c6: 02 97        	jalr	a4
802009c8: 63 16 05 12  	bnez	a0, 300 <.LBB167_35+0x116>
802009cc: 03 3c 04 02  	ld	s8, 32(s0)
802009d0: 93 84 04 03  	addi	s1, s1, 48
802009d4: 93 0c 89 01  	addi	s9, s2, 24
802009d8: 13 0a 81 00  	addi	s4, sp, 8
802009dc: 09 4b        	addi	s6, zero, 2

00000000802009de <.LBB167_35>:
802009de: 97 0b 00 00  	auipc	s7, 0
802009e2: 93 8b cb e8  	addi	s7, s7, -372
802009e6: 56 84        	add	s0, zero, s5
802009e8: 03 a5 84 ff  	lw	a0, -8(s1)
802009ec: 2a de        	sw	a0, 60(sp)
802009ee: 03 85 04 00  	lb	a0, 0(s1)
802009f2: 23 00 a1 04  	sb	a0, 64(sp)
802009f6: 03 a5 c4 ff  	lw	a0, -4(s1)
802009fa: 2a dc        	sw	a0, 56(sp)
802009fc: 03 b6 84 fe  	ld	a2, -24(s1)
80200a00: 03 b5 04 ff  	ld	a0, -16(s1)
80200a04: 19 ca        	beqz	a2, 22 <.LBB167_35+0x3c>
80200a06: 81 45        	mv	a1, zero
80200a08: 63 0c 66 01  	beq	a2, s6, 24 <.LBB167_35+0x42>
80200a0c: 12 05        	slli	a0, a0, 4
80200a0e: 62 95        	add	a0, a0, s8
80200a10: 0c 65        	ld	a1, 8(a0)
80200a12: 63 96 75 01  	bne	a1, s7, 12 <.LBB167_35+0x40>
80200a16: 08 61        	ld	a0, 0(a0)
80200a18: 08 61        	ld	a0, 0(a0)
80200a1a: 85 45        	addi	a1, zero, 1
80200a1c: 11 a0        	j	4 <.LBB167_35+0x42>
80200a1e: 81 45        	mv	a1, zero
80200a20: 2e e4        	sd	a1, 8(sp)
80200a22: 2a e8        	sd	a0, 16(sp)
80200a24: 03 b6 84 fd  	ld	a2, -40(s1)
80200a28: 03 b5 04 fe  	ld	a0, -32(s1)
80200a2c: 19 ca        	beqz	a2, 22 <.LBB167_35+0x64>
80200a2e: 81 45        	mv	a1, zero
80200a30: 63 0c 66 01  	beq	a2, s6, 24 <.LBB167_35+0x6a>
80200a34: 12 05        	slli	a0, a0, 4
80200a36: 62 95        	add	a0, a0, s8
80200a38: 0c 65        	ld	a1, 8(a0)
80200a3a: 63 96 75 01  	bne	a1, s7, 12 <.LBB167_35+0x68>
80200a3e: 08 61        	ld	a0, 0(a0)
80200a40: 08 61        	ld	a0, 0(a0)
80200a42: 85 45        	addi	a1, zero, 1
80200a44: 11 a0        	j	4 <.LBB167_35+0x6a>
80200a46: 81 45        	mv	a1, zero
80200a48: 2e ec        	sd	a1, 24(sp)
80200a4a: 2a f0        	sd	a0, 32(sp)
80200a4c: 03 b5 04 fd  	ld	a0, -48(s1)
80200a50: 12 05        	slli	a0, a0, 4
80200a52: 62 95        	add	a0, a0, s8
80200a54: 10 65        	ld	a2, 8(a0)
80200a56: 08 61        	ld	a0, 0(a0)
80200a58: d2 85        	add	a1, zero, s4
80200a5a: 02 96        	jalr	a2
80200a5c: 41 ed        	bnez	a0, 152 <.LBB167_35+0x116>
80200a5e: 7d 14        	addi	s0, s0, -1
80200a60: 2d cc        	beqz	s0, 122 <.LBB167_35+0xfc>
80200a62: c2 76        	ld	a3, 48(sp)
80200a64: 22 75        	ld	a0, 40(sp)
80200a66: 83 b5 8c ff  	ld	a1, -8(s9)
80200a6a: 03 b6 0c 00  	ld	a2, 0(s9)
80200a6e: 94 6e        	ld	a3, 24(a3)
80200a70: 93 84 84 03  	addi	s1, s1, 56
80200a74: c1 0c        	addi	s9, s9, 16
80200a76: 82 96        	jalr	a3
80200a78: 25 d9        	beqz	a0, -144 <.LBB167_35+0xa>
80200a7a: ad a8        	j	122 <.LBB167_35+0x116>
80200a7c: 04 70        	ld	s1, 32(s0)
80200a7e: 10 74        	ld	a2, 40(s0)
80200a80: 83 39 84 00  	ld	s3, 8(s0)
80200a84: 03 39 04 00  	ld	s2, 0(s0)
80200a88: ce 8a        	add	s5, zero, s3
80200a8a: 63 e3 c9 00  	bltu	s3, a2, 6 <.LBB167_35+0xb2>
80200a8e: b2 8a        	add	s5, zero, a2
80200a90: 63 84 0a 04  	beqz	s5, 72 <.LBB167_35+0xfa>
80200a94: 83 36 09 00  	ld	a3, 0(s2)
80200a98: 03 36 89 00  	ld	a2, 8(s2)
80200a9c: 98 6d        	ld	a4, 24(a1)
80200a9e: b6 85        	add	a1, zero, a3
80200aa0: 02 97        	jalr	a4
80200aa2: 29 e9        	bnez	a0, 82 <.LBB167_35+0x116>
80200aa4: a1 04        	addi	s1, s1, 8
80200aa6: 13 0b 89 01  	addi	s6, s2, 24
80200aaa: 13 0a 81 00  	addi	s4, sp, 8
80200aae: 56 84        	add	s0, zero, s5
80200ab0: 90 60        	ld	a2, 0(s1)
80200ab2: 03 b5 84 ff  	ld	a0, -8(s1)
80200ab6: d2 85        	add	a1, zero, s4
80200ab8: 02 96        	jalr	a2
80200aba: 0d ed        	bnez	a0, 58 <.LBB167_35+0x116>
80200abc: 7d 14        	addi	s0, s0, -1
80200abe: 11 cc        	beqz	s0, 28 <.LBB167_35+0xfc>
80200ac0: c2 76        	ld	a3, 48(sp)
80200ac2: 22 75        	ld	a0, 40(sp)
80200ac4: 83 35 8b ff  	ld	a1, -8(s6)
80200ac8: 03 36 0b 00  	ld	a2, 0(s6)
80200acc: 94 6e        	ld	a3, 24(a3)
80200ace: c1 04        	addi	s1, s1, 16
80200ad0: 41 0b        	addi	s6, s6, 16
80200ad2: 82 96        	jalr	a3
80200ad4: 71 dd        	beqz	a0, -36 <.LBB167_35+0xd2>
80200ad6: 39 a8        	j	30 <.LBB167_35+0x116>
80200ad8: 81 4a        	mv	s5, zero
80200ada: 63 ff 3a 01  	bgeu	s5, s3, 30 <.LBB167_35+0x11a>
80200ade: 22 75        	ld	a0, 40(sp)
80200ae0: c2 76        	ld	a3, 48(sp)
80200ae2: 93 95 4a 00  	slli	a1, s5, 4
80200ae6: 33 06 b9 00  	add	a2, s2, a1
80200aea: 0c 62        	ld	a1, 0(a2)
80200aec: 10 66        	ld	a2, 8(a2)
80200aee: 94 6e        	ld	a3, 24(a3)
80200af0: 82 96        	jalr	a3
80200af2: 19 c1        	beqz	a0, 6 <.LBB167_35+0x11a>
80200af4: 05 45        	addi	a0, zero, 1
80200af6: 11 a0        	j	4 <.LBB167_35+0x11c>
80200af8: 01 45        	mv	a0, zero
80200afa: a6 6c        	ld	s9, 72(sp)
80200afc: 46 6c        	ld	s8, 80(sp)
80200afe: e6 6b        	ld	s7, 88(sp)
80200b00: 06 7b        	ld	s6, 96(sp)
80200b02: a6 7a        	ld	s5, 104(sp)
80200b04: 46 7a        	ld	s4, 112(sp)
80200b06: e6 79        	ld	s3, 120(sp)
80200b08: 0a 69        	ld	s2, 128(sp)
80200b0a: aa 64        	ld	s1, 136(sp)
80200b0c: 4a 64        	ld	s0, 144(sp)
80200b0e: ea 60        	ld	ra, 152(sp)
80200b10: 0d 61        	addi	sp, sp, 160
80200b12: 82 80        	ret

0000000080200b14 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>:
80200b14: 59 71        	addi	sp, sp, -112
80200b16: 86 f4        	sd	ra, 104(sp)
80200b18: a2 f0        	sd	s0, 96(sp)
80200b1a: a6 ec        	sd	s1, 88(sp)
80200b1c: ca e8        	sd	s2, 80(sp)
80200b1e: ce e4        	sd	s3, 72(sp)
80200b20: d2 e0        	sd	s4, 64(sp)
80200b22: 56 fc        	sd	s5, 56(sp)
80200b24: 5a f8        	sd	s6, 48(sp)
80200b26: 5e f4        	sd	s7, 40(sp)
80200b28: 62 f0        	sd	s8, 32(sp)
80200b2a: 66 ec        	sd	s9, 24(sp)
80200b2c: 6a e8        	sd	s10, 16(sp)
80200b2e: 6e e4        	sd	s11, 8(sp)
80200b30: be 89        	add	s3, zero, a5
80200b32: 3a 89        	add	s2, zero, a4
80200b34: b6 8a        	add	s5, zero, a3
80200b36: 2a 84        	add	s0, zero, a0
80200b38: b1 c9        	beqz	a1, 84 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x78>
80200b3a: 03 65 04 03  	lwu	a0, 48(s0)
80200b3e: 93 75 15 00  	andi	a1, a0, 1
80200b42: 37 0a 11 00  	lui	s4, 272
80200b46: 99 c1        	beqz	a1, 6 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x38>
80200b48: 13 0a b0 02  	addi	s4, zero, 43
80200b4c: b3 8c 35 01  	add	s9, a1, s3
80200b50: 93 75 45 00  	andi	a1, a0, 4
80200b54: a9 c5        	beqz	a1, 74 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x8a>
80200b56: 81 45        	mv	a1, zero
80200b58: 63 80 0a 02  	beqz	s5, 32 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x64>
80200b5c: d6 86        	add	a3, zero, s5
80200b5e: 32 87        	add	a4, zero, a2
80200b60: 83 47 07 00  	lbu	a5, 0(a4)
80200b64: 05 07        	addi	a4, a4, 1
80200b66: 93 f7 07 0c  	andi	a5, a5, 192
80200b6a: 93 87 07 f8  	addi	a5, a5, -128
80200b6e: 93 b7 17 00  	seqz	a5, a5
80200b72: fd 16        	addi	a3, a3, -1
80200b74: be 95        	add	a1, a1, a5
80200b76: ed f6        	bnez	a3, -22 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x4c>
80200b78: b3 86 5c 01  	add	a3, s9, s5
80200b7c: b3 8c b6 40  	sub	s9, a3, a1
80200b80: 32 8b        	add	s6, zero, a2
80200b82: 0c 60        	ld	a1, 0(s0)
80200b84: 85 4d        	addi	s11, zero, 1
80200b86: 63 81 b5 03  	beq	a1, s11, 34 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x94>
80200b8a: b1 a0        	j	76 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
80200b8c: 03 65 04 03  	lwu	a0, 48(s0)
80200b90: 93 8c 19 00  	addi	s9, s3, 1
80200b94: 13 0a d0 02  	addi	s4, zero, 45
80200b98: 93 75 45 00  	andi	a1, a0, 4
80200b9c: cd fd        	bnez	a1, -70 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x42>
80200b9e: 01 4b        	mv	s6, zero
80200ba0: 0c 60        	ld	a1, 0(s0)
80200ba2: 85 4d        	addi	s11, zero, 1
80200ba4: 63 99 b5 03  	bne	a1, s11, 50 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
80200ba8: 03 3d 84 00  	ld	s10, 8(s0)
80200bac: 63 f5 ac 03  	bgeu	s9, s10, 42 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
80200bb0: 21 89        	andi	a0, a0, 8
80200bb2: 3d ed        	bnez	a0, 126 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x11c>
80200bb4: 03 45 84 03  	lbu	a0, 56(s0)
80200bb8: 85 45        	addi	a1, zero, 1
80200bba: 8d 46        	addi	a3, zero, 3
80200bbc: 05 46        	addi	a2, zero, 1
80200bbe: 63 03 d5 00  	beq	a0, a3, 6 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xb0>
80200bc2: 2a 86        	add	a2, zero, a0
80200bc4: 0d 8a        	andi	a2, a2, 3
80200bc6: 33 05 9d 41  	sub	a0, s10, s9
80200bca: 63 c7 c5 0a  	blt	a1, a2, 174 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x164>
80200bce: 45 ea        	bnez	a2, 176 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16a>
80200bd0: 2a 8c        	add	s8, zero, a0
80200bd2: 01 45        	mv	a0, zero
80200bd4: c9 a0        	j	194 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
80200bd6: 22 85        	add	a0, zero, s0
80200bd8: d2 85        	add	a1, zero, s4
80200bda: 5a 86        	add	a2, zero, s6
80200bdc: d6 86        	add	a3, zero, s5
80200bde: 97 00 00 00  	auipc	ra, 0
80200be2: e7 80 40 17  	jalr	372(ra)
80200be6: 0d c1        	beqz	a0, 34 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xf4>
80200be8: 6e 85        	add	a0, zero, s11
80200bea: a2 6d        	ld	s11, 8(sp)
80200bec: 42 6d        	ld	s10, 16(sp)
80200bee: e2 6c        	ld	s9, 24(sp)
80200bf0: 02 7c        	ld	s8, 32(sp)
80200bf2: a2 7b        	ld	s7, 40(sp)
80200bf4: 42 7b        	ld	s6, 48(sp)
80200bf6: e2 7a        	ld	s5, 56(sp)
80200bf8: 06 6a        	ld	s4, 64(sp)
80200bfa: a6 69        	ld	s3, 72(sp)
80200bfc: 46 69        	ld	s2, 80(sp)
80200bfe: e6 64        	ld	s1, 88(sp)
80200c00: 06 74        	ld	s0, 96(sp)
80200c02: a6 70        	ld	ra, 104(sp)
80200c04: 65 61        	addi	sp, sp, 112
80200c06: 82 80        	ret
80200c08: 0c 74        	ld	a1, 40(s0)
80200c0a: 08 70        	ld	a0, 32(s0)
80200c0c: 9c 6d        	ld	a5, 24(a1)
80200c0e: ca 85        	add	a1, zero, s2
80200c10: 4e 86        	add	a2, zero, s3
80200c12: a2 6d        	ld	s11, 8(sp)
80200c14: 42 6d        	ld	s10, 16(sp)
80200c16: e2 6c        	ld	s9, 24(sp)
80200c18: 02 7c        	ld	s8, 32(sp)
80200c1a: a2 7b        	ld	s7, 40(sp)
80200c1c: 42 7b        	ld	s6, 48(sp)
80200c1e: e2 7a        	ld	s5, 56(sp)
80200c20: 06 6a        	ld	s4, 64(sp)
80200c22: a6 69        	ld	s3, 72(sp)
80200c24: 46 69        	ld	s2, 80(sp)
80200c26: e6 64        	ld	s1, 88(sp)
80200c28: 06 74        	ld	s0, 96(sp)
80200c2a: a6 70        	ld	ra, 104(sp)
80200c2c: 65 61        	addi	sp, sp, 112
80200c2e: 82 87        	jr	a5
80200c30: 83 6b 44 03  	lwu	s7, 52(s0)
80200c34: 13 05 00 03  	addi	a0, zero, 48
80200c38: 03 4c 84 03  	lbu	s8, 56(s0)
80200c3c: 48 d8        	sw	a0, 52(s0)
80200c3e: 85 4d        	addi	s11, zero, 1
80200c40: 23 0c b4 03  	sb	s11, 56(s0)
80200c44: 22 85        	add	a0, zero, s0
80200c46: d2 85        	add	a1, zero, s4
80200c48: 5a 86        	add	a2, zero, s6
80200c4a: d6 86        	add	a3, zero, s5
80200c4c: 97 00 00 00  	auipc	ra, 0
80200c50: e7 80 60 10  	jalr	262(ra)
80200c54: 51 f9        	bnez	a0, -108 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
80200c56: 03 45 84 03  	lbu	a0, 56(s0)
80200c5a: 85 45        	addi	a1, zero, 1
80200c5c: 8d 46        	addi	a3, zero, 3
80200c5e: 05 46        	addi	a2, zero, 1
80200c60: 63 03 d5 00  	beq	a0, a3, 6 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x152>
80200c64: 2a 86        	add	a2, zero, a0
80200c66: 0d 8a        	andi	a2, a2, 3
80200c68: 33 05 9d 41  	sub	a0, s10, s9
80200c6c: 63 cb c5 00  	blt	a1, a2, 22 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16e>
80200c70: 01 ee        	bnez	a2, 24 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x174>
80200c72: aa 8a        	add	s5, zero, a0
80200c74: 01 45        	mv	a0, zero
80200c76: 41 a0        	j	128 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
80200c78: 8d 45        	addi	a1, zero, 3
80200c7a: 63 19 b6 00  	bne	a2, a1, 18 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x178>
80200c7e: 01 4c        	mv	s8, zero
80200c80: 19 a8        	j	22 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
80200c82: 8d 45        	addi	a1, zero, 3
80200c84: 63 14 b6 06  	bne	a2, a1, 104 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1d8>
80200c88: 81 4a        	mv	s5, zero
80200c8a: b5 a0        	j	108 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
80200c8c: 93 05 15 00  	addi	a1, a0, 1
80200c90: 05 81        	srli	a0, a0, 1
80200c92: 13 dc 15 00  	srli	s8, a1, 1
80200c96: 93 04 15 00  	addi	s1, a0, 1
80200c9a: fd 14        	addi	s1, s1, -1
80200c9c: 81 c8        	beqz	s1, 16 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x198>
80200c9e: 0c 74        	ld	a1, 40(s0)
80200ca0: 08 70        	ld	a0, 32(s0)
80200ca2: 90 71        	ld	a2, 32(a1)
80200ca4: 4c 58        	lw	a1, 52(s0)
80200ca6: 02 96        	jalr	a2
80200ca8: 6d d9        	beqz	a0, -14 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x186>
80200caa: 85 a0        	j	96 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1f6>
80200cac: 83 6b 44 03  	lwu	s7, 52(s0)
80200cb0: 22 85        	add	a0, zero, s0
80200cb2: d2 85        	add	a1, zero, s4
80200cb4: 5a 86        	add	a2, zero, s6
80200cb6: d6 86        	add	a3, zero, s5
80200cb8: 97 00 00 00  	auipc	ra, 0
80200cbc: e7 80 a0 09  	jalr	154(ra)
80200cc0: 85 4d        	addi	s11, zero, 1
80200cc2: 1d f1        	bnez	a0, -218 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
80200cc4: 0c 74        	ld	a1, 40(s0)
80200cc6: 08 70        	ld	a0, 32(s0)
80200cc8: 94 6d        	ld	a3, 24(a1)
80200cca: ca 85        	add	a1, zero, s2
80200ccc: 4e 86        	add	a2, zero, s3
80200cce: 82 96        	jalr	a3
80200cd0: 01 fd        	bnez	a0, -232 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
80200cd2: 03 39 04 02  	ld	s2, 32(s0)
80200cd6: 00 74        	ld	s0, 40(s0)
80200cd8: 93 04 1c 00  	addi	s1, s8, 1
80200cdc: fd 14        	addi	s1, s1, -1
80200cde: b5 c0        	beqz	s1, 100 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x22e>
80200ce0: 10 70        	ld	a2, 32(s0)
80200ce2: 4a 85        	add	a0, zero, s2
80200ce4: de 85        	add	a1, zero, s7
80200ce6: 02 96        	jalr	a2
80200ce8: 75 d9        	beqz	a0, -12 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1c8>
80200cea: fd bd        	j	-258 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
80200cec: 93 05 15 00  	addi	a1, a0, 1
80200cf0: 05 81        	srli	a0, a0, 1
80200cf2: 93 da 15 00  	srli	s5, a1, 1
80200cf6: 93 04 15 00  	addi	s1, a0, 1
80200cfa: fd 14        	addi	s1, s1, -1
80200cfc: 89 c8        	beqz	s1, 18 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1fa>
80200cfe: 0c 74        	ld	a1, 40(s0)
80200d00: 08 70        	ld	a0, 32(s0)
80200d02: 90 71        	ld	a2, 32(a1)
80200d04: 4c 58        	lw	a1, 52(s0)
80200d06: 02 96        	jalr	a2
80200d08: 6d d9        	beqz	a0, -14 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e6>
80200d0a: 85 4d        	addi	s11, zero, 1
80200d0c: f1 bd        	j	-292 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
80200d0e: 0c 74        	ld	a1, 40(s0)
80200d10: 03 6a 44 03  	lwu	s4, 52(s0)
80200d14: 08 70        	ld	a0, 32(s0)
80200d16: 94 6d        	ld	a3, 24(a1)
80200d18: ca 85        	add	a1, zero, s2
80200d1a: 4e 86        	add	a2, zero, s3
80200d1c: 82 96        	jalr	a3
80200d1e: 85 4d        	addi	s11, zero, 1
80200d20: e3 14 05 ec  	bnez	a0, -312 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
80200d24: 03 39 04 02  	ld	s2, 32(s0)
80200d28: 83 39 84 02  	ld	s3, 40(s0)
80200d2c: 93 84 1a 00  	addi	s1, s5, 1
80200d30: fd 14        	addi	s1, s1, -1
80200d32: 91 c8        	beqz	s1, 20 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x232>
80200d34: 03 b6 09 02  	ld	a2, 32(s3)
80200d38: 4a 85        	add	a0, zero, s2
80200d3a: d2 85        	add	a1, zero, s4
80200d3c: 02 96        	jalr	a2
80200d3e: 6d d9        	beqz	a0, -14 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x21c>
80200d40: 65 b5        	j	-344 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
80200d42: 81 4d        	mv	s11, zero
80200d44: 55 b5        	j	-348 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
80200d46: 81 4d        	mv	s11, zero
80200d48: 23 2a 74 03  	sw	s7, 52(s0)
80200d4c: 23 0c 84 03  	sb	s8, 56(s0)
80200d50: 61 bd        	j	-360 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>

0000000080200d52 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>:
80200d52: 01 11        	addi	sp, sp, -32
80200d54: 06 ec        	sd	ra, 24(sp)
80200d56: 22 e8        	sd	s0, 16(sp)
80200d58: 26 e4        	sd	s1, 8(sp)
80200d5a: 4a e0        	sd	s2, 0(sp)
80200d5c: 13 97 05 02  	slli	a4, a1, 32
80200d60: 01 93        	srli	a4, a4, 32
80200d62: b7 07 11 00  	lui	a5, 272
80200d66: 36 89        	add	s2, zero, a3
80200d68: b2 84        	add	s1, zero, a2
80200d6a: 2a 84        	add	s0, zero, a0
80200d6c: 63 09 f7 00  	beq	a4, a5, 18 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x2c>
80200d70: 10 74        	ld	a2, 40(s0)
80200d72: 08 70        	ld	a0, 32(s0)
80200d74: 10 72        	ld	a2, 32(a2)
80200d76: 02 96        	jalr	a2
80200d78: aa 85        	add	a1, zero, a0
80200d7a: 05 45        	addi	a0, zero, 1
80200d7c: 91 ed        	bnez	a1, 28 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x46>
80200d7e: 81 cc        	beqz	s1, 24 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x44>
80200d80: 0c 74        	ld	a1, 40(s0)
80200d82: 08 70        	ld	a0, 32(s0)
80200d84: 9c 6d        	ld	a5, 24(a1)
80200d86: a6 85        	add	a1, zero, s1
80200d88: 4a 86        	add	a2, zero, s2
80200d8a: 02 69        	ld	s2, 0(sp)
80200d8c: a2 64        	ld	s1, 8(sp)
80200d8e: 42 64        	ld	s0, 16(sp)
80200d90: e2 60        	ld	ra, 24(sp)
80200d92: 05 61        	addi	sp, sp, 32
80200d94: 82 87        	jr	a5
80200d96: 01 45        	mv	a0, zero
80200d98: 02 69        	ld	s2, 0(sp)
80200d9a: a2 64        	ld	s1, 8(sp)
80200d9c: 42 64        	ld	s0, 16(sp)
80200d9e: e2 60        	ld	ra, 24(sp)
80200da0: 05 61        	addi	sp, sp, 32
80200da2: 82 80        	ret

0000000080200da4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>:
80200da4: 39 71        	addi	sp, sp, -64
80200da6: 06 fc        	sd	ra, 56(sp)
80200da8: 22 f8        	sd	s0, 48(sp)
80200daa: 26 f4        	sd	s1, 40(sp)
80200dac: 4a f0        	sd	s2, 32(sp)
80200dae: 4e ec        	sd	s3, 24(sp)
80200db0: 52 e8        	sd	s4, 16(sp)
80200db2: 56 e4        	sd	s5, 8(sp)
80200db4: 5a e0        	sd	s6, 0(sp)
80200db6: 2a 8b        	add	s6, zero, a0
80200db8: 14 69        	ld	a3, 16(a0)
80200dba: 08 61        	ld	a0, 0(a0)
80200dbc: b2 89        	add	s3, zero, a2
80200dbe: 2e 89        	add	s2, zero, a1
80200dc0: 93 85 f6 ff  	addi	a1, a3, -1
80200dc4: 05 46        	addi	a2, zero, 1
80200dc6: 93 b5 15 00  	seqz	a1, a1
80200dca: 63 14 c5 00  	bne	a0, a2, 8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2e>
80200dce: 81 e5        	bnez	a1, 8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x32>
80200dd0: 15 a2        	j	292 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x150>
80200dd2: 63 8f 05 18  	beqz	a1, 414 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
80200dd6: 83 36 8b 01  	ld	a3, 24(s6)
80200dda: 7d 15        	addi	a0, a0, -1
80200ddc: 13 38 15 00  	seqz	a6, a0
80200de0: 33 07 39 01  	add	a4, s2, s3
80200de4: 81 45        	mv	a1, zero
80200de6: dd c2        	beqz	a3, 166 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe8>
80200de8: 7d 5e        	addi	t3, zero, -1
80200dea: 93 03 00 0e  	addi	t2, zero, 224
80200dee: 13 03 00 0f  	addi	t1, zero, 240
80200df2: b7 08 1c 00  	lui	a7, 448
80200df6: b7 02 11 00  	lui	t0, 272
80200dfa: 4a 85        	add	a0, zero, s2
80200dfc: 15 a8        	j	52 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x8c>
80200dfe: 03 44 06 00  	lbu	s0, 0(a2)
80200e02: 93 04 16 00  	addi	s1, a2, 1
80200e06: 93 7f f4 03  	andi	t6, s0, 63
80200e0a: ca 07        	slli	a5, a5, 18
80200e0c: b3 f7 17 01  	and	a5, a5, a7
80200e10: 13 14 cf 00  	slli	s0, t5, 12
80200e14: 13 96 6e 00  	slli	a2, t4, 6
80200e18: c1 8f        	or	a5, a5, s0
80200e1a: 5d 8e        	or	a2, a2, a5
80200e1c: 33 66 f6 01  	or	a2, a2, t6
80200e20: 63 08 56 0c  	beq	a2, t0, 208 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
80200e24: 33 85 a4 40  	sub	a0, s1, a0
80200e28: fd 16        	addi	a3, a3, -1
80200e2a: aa 95        	add	a1, a1, a0
80200e2c: 26 85        	add	a0, zero, s1
80200e2e: a5 c2        	beqz	a3, 96 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xea>
80200e30: 63 00 a7 0c  	beq	a4, a0, 192 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
80200e34: 03 06 05 00  	lb	a2, 0(a0)
80200e38: 93 04 15 00  	addi	s1, a0, 1
80200e3c: e3 44 ce fe  	blt	t3, a2, -24 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
80200e40: 93 77 f6 0f  	andi	a5, a2, 255
80200e44: 63 8c e4 00  	beq	s1, a4, 24 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xb8>
80200e48: 03 46 15 00  	lbu	a2, 1(a0)
80200e4c: 93 04 25 00  	addi	s1, a0, 2
80200e50: 13 7f f6 03  	andi	t5, a2, 63
80200e54: 26 86        	add	a2, zero, s1
80200e56: e3 e7 77 fc  	bltu	a5, t2, -50 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
80200e5a: 29 a0        	j	10 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xc0>
80200e5c: 01 4f        	mv	t5, zero
80200e5e: 3a 86        	add	a2, zero, a4
80200e60: e3 e2 77 fc  	bltu	a5, t2, -60 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
80200e64: 63 0c e6 00  	beq	a2, a4, 24 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xd8>
80200e68: 03 44 06 00  	lbu	s0, 0(a2)
80200e6c: 93 04 16 00  	addi	s1, a2, 1
80200e70: 93 7e f4 03  	andi	t4, s0, 63
80200e74: 26 86        	add	a2, zero, s1
80200e76: e3 e7 67 fa  	bltu	a5, t1, -82 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
80200e7a: 29 a0        	j	10 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe0>
80200e7c: 81 4e        	mv	t4, zero
80200e7e: 3a 86        	add	a2, zero, a4
80200e80: e3 e2 67 fa  	bltu	a5, t1, -92 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
80200e84: e3 1d e6 f6  	bne	a2, a4, -134 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x5a>
80200e88: 81 4f        	mv	t6, zero
80200e8a: 41 b7        	j	-128 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x66>
80200e8c: ca 84        	add	s1, zero, s2
80200e8e: 63 01 97 06  	beq	a4, s1, 98 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
80200e92: 03 85 04 00  	lb	a0, 0(s1)
80200e96: 7d 56        	addi	a2, zero, -1
80200e98: 63 57 a6 02  	bge	a2, a0, 46 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x122>
80200e9c: 13 b5 15 00  	seqz	a0, a1
80200ea0: 33 c6 35 01  	xor	a2, a1, s3
80200ea4: 13 36 16 00  	seqz	a2, a2
80200ea8: 51 8d        	or	a0, a0, a2
80200eaa: 19 e9        	bnez	a0, 22 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x11c>
80200eac: 63 fe 35 03  	bgeu	a1, s3, 60 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
80200eb0: 33 05 b9 00  	add	a0, s2, a1
80200eb4: 03 05 05 00  	lb	a0, 0(a0)
80200eb8: 13 06 00 fc  	addi	a2, zero, -64
80200ebc: 63 46 c5 02  	blt	a0, a2, 44 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
80200ec0: 4a 85        	add	a0, zero, s2
80200ec2: 0d e5        	bnez	a0, 42 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x148>
80200ec4: 35 a0        	j	44 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
80200ec6: 13 86 14 00  	addi	a2, s1, 1
80200eca: 13 75 f5 0f  	andi	a0, a0, 255
80200ece: 63 01 e6 14  	beq	a2, a4, 322 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x26c>
80200ed2: 83 c6 14 00  	lbu	a3, 1(s1)
80200ed6: 13 86 24 00  	addi	a2, s1, 2
80200eda: 93 f6 f6 03  	andi	a3, a3, 63
80200ede: 93 07 00 0e  	addi	a5, zero, 224
80200ee2: 63 7d f5 12  	bgeu	a0, a5, 314 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x278>
80200ee6: 5d bf        	j	-74 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
80200ee8: 01 45        	mv	a0, zero
80200eea: 19 c1        	beqz	a0, 6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
80200eec: 2a 89        	add	s2, zero, a0
80200eee: ae 89        	add	s3, zero, a1
80200ef0: 63 00 08 08  	beqz	a6, 128 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
80200ef4: 63 87 09 04  	beqz	s3, 78 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x19e>
80200ef8: 81 45        	mv	a1, zero
80200efa: 4e 85        	add	a0, zero, s3
80200efc: 4a 86        	add	a2, zero, s2
80200efe: 83 46 06 00  	lbu	a3, 0(a2)
80200f02: 05 06        	addi	a2, a2, 1
80200f04: 93 f6 06 0c  	andi	a3, a3, 192
80200f08: 93 86 06 f8  	addi	a3, a3, -128
80200f0c: 93 b6 16 00  	seqz	a3, a3
80200f10: 7d 15        	addi	a0, a0, -1
80200f12: b6 95        	add	a1, a1, a3
80200f14: 6d f5        	bnez	a0, -22 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x15a>
80200f16: 03 35 8b 00  	ld	a0, 8(s6)
80200f1a: b3 85 b9 40  	sub	a1, s3, a1
80200f1e: 63 f9 a5 04  	bgeu	a1, a0, 82 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
80200f22: 81 45        	mv	a1, zero
80200f24: 4e 86        	add	a2, zero, s3
80200f26: ca 86        	add	a3, zero, s2
80200f28: 03 c7 06 00  	lbu	a4, 0(a3)
80200f2c: 85 06        	addi	a3, a3, 1
80200f2e: 13 77 07 0c  	andi	a4, a4, 192
80200f32: 13 07 07 f8  	addi	a4, a4, -128
80200f36: 13 37 17 00  	seqz	a4, a4
80200f3a: 7d 16        	addi	a2, a2, -1
80200f3c: ba 95        	add	a1, a1, a4
80200f3e: 6d f6        	bnez	a2, -22 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x184>
80200f40: 29 a0        	j	10 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1a6>
80200f42: 03 35 8b 00  	ld	a0, 8(s6)
80200f46: 81 45        	mv	a1, zero
80200f48: 05 c5        	beqz	a0, 40 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
80200f4a: 83 46 8b 03  	lbu	a3, 56(s6)
80200f4e: 01 47        	mv	a4, zero
80200f50: 8d 47        	addi	a5, zero, 3
80200f52: 33 86 35 41  	sub	a2, a1, s3
80200f56: 63 83 f6 00  	beq	a3, a5, 6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1b8>
80200f5a: 36 87        	add	a4, zero, a3
80200f5c: 93 75 37 00  	andi	a1, a4, 3
80200f60: 85 46        	addi	a3, zero, 1
80200f62: 32 95        	add	a0, a0, a2
80200f64: 63 c7 b6 02  	blt	a3, a1, 46 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1ee>
80200f68: 85 e9        	bnez	a1, 48 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f4>
80200f6a: aa 8a        	add	s5, zero, a0
80200f6c: 01 45        	mv	a0, zero
80200f6e: 25 a8        	j	56 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
80200f70: 83 35 8b 02  	ld	a1, 40(s6)
80200f74: 03 35 0b 02  	ld	a0, 32(s6)
80200f78: 9c 6d        	ld	a5, 24(a1)
80200f7a: ca 85        	add	a1, zero, s2
80200f7c: 4e 86        	add	a2, zero, s3
80200f7e: 02 6b        	ld	s6, 0(sp)
80200f80: a2 6a        	ld	s5, 8(sp)
80200f82: 42 6a        	ld	s4, 16(sp)
80200f84: e2 69        	ld	s3, 24(sp)
80200f86: 02 79        	ld	s2, 32(sp)
80200f88: a2 74        	ld	s1, 40(sp)
80200f8a: 42 74        	ld	s0, 48(sp)
80200f8c: e2 70        	ld	ra, 56(sp)
80200f8e: 21 61        	addi	sp, sp, 64
80200f90: 82 87        	jr	a5
80200f92: 0d 46        	addi	a2, zero, 3
80200f94: 63 94 c5 00  	bne	a1, a2, 8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f8>
80200f98: 81 4a        	mv	s5, zero
80200f9a: 31 a0        	j	12 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
80200f9c: 93 05 15 00  	addi	a1, a0, 1
80200fa0: 05 81        	srli	a0, a0, 1
80200fa2: 93 da 15 00  	srli	s5, a1, 1
80200fa6: 93 04 15 00  	addi	s1, a0, 1
80200faa: fd 14        	addi	s1, s1, -1
80200fac: 81 cc        	beqz	s1, 24 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x220>
80200fae: 83 35 8b 02  	ld	a1, 40(s6)
80200fb2: 03 35 0b 02  	ld	a0, 32(s6)
80200fb6: 90 71        	ld	a2, 32(a1)
80200fb8: 83 25 4b 03  	lw	a1, 52(s6)
80200fbc: 02 96        	jalr	a2
80200fbe: 75 d5        	beqz	a0, -20 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x206>
80200fc0: 05 49        	addi	s2, zero, 1
80200fc2: 25 a8        	j	56 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
80200fc4: 83 35 8b 02  	ld	a1, 40(s6)
80200fc8: 03 6a 4b 03  	lwu	s4, 52(s6)
80200fcc: 03 35 0b 02  	ld	a0, 32(s6)
80200fd0: 94 6d        	ld	a3, 24(a1)
80200fd2: ca 85        	add	a1, zero, s2
80200fd4: 4e 86        	add	a2, zero, s3
80200fd6: 82 96        	jalr	a3
80200fd8: 05 49        	addi	s2, zero, 1
80200fda: 05 e1        	bnez	a0, 32 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
80200fdc: 83 39 0b 02  	ld	s3, 32(s6)
80200fe0: 03 34 8b 02  	ld	s0, 40(s6)
80200fe4: 93 84 1a 00  	addi	s1, s5, 1
80200fe8: fd 14        	addi	s1, s1, -1
80200fea: 99 c4        	beqz	s1, 14 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x254>
80200fec: 10 70        	ld	a2, 32(s0)
80200fee: 4e 85        	add	a0, zero, s3
80200ff0: d2 85        	add	a1, zero, s4
80200ff2: 02 96        	jalr	a2
80200ff4: 75 d9        	beqz	a0, -12 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x244>
80200ff6: 11 a0        	j	4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
80200ff8: 01 49        	mv	s2, zero
80200ffa: 4a 85        	add	a0, zero, s2
80200ffc: 02 6b        	ld	s6, 0(sp)
80200ffe: a2 6a        	ld	s5, 8(sp)
80201000: 42 6a        	ld	s4, 16(sp)
80201002: e2 69        	ld	s3, 24(sp)
80201004: 02 79        	ld	s2, 32(sp)
80201006: a2 74        	ld	s1, 40(sp)
80201008: 42 74        	ld	s0, 48(sp)
8020100a: e2 70        	ld	ra, 56(sp)
8020100c: 21 61        	addi	sp, sp, 64
8020100e: 82 80        	ret
80201010: 81 46        	mv	a3, zero
80201012: 3a 86        	add	a2, zero, a4
80201014: 93 07 00 0e  	addi	a5, zero, 224
80201018: e3 62 f5 e8  	bltu	a0, a5, -380 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
8020101c: 63 0d e6 00  	beq	a2, a4, 26 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x292>
80201020: 83 44 06 00  	lbu	s1, 0(a2)
80201024: 93 07 16 00  	addi	a5, a2, 1
80201028: 13 f6 f4 03  	andi	a2, s1, 63
8020102c: 93 04 00 0f  	addi	s1, zero, 240
80201030: 63 79 95 00  	bgeu	a0, s1, 18 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x29e>
80201034: a5 b5        	j	-408 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
80201036: 01 46        	mv	a2, zero
80201038: ba 87        	add	a5, zero, a4
8020103a: 93 04 00 0f  	addi	s1, zero, 240
8020103e: e3 6f 95 e4  	bltu	a0, s1, -418 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
80201042: 63 87 e7 00  	beq	a5, a4, 14 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ac>
80201046: 03 c7 07 00  	lbu	a4, 0(a5)
8020104a: 13 77 f7 03  	andi	a4, a4, 63
8020104e: 11 a0        	j	4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ae>
80201050: 01 47        	mv	a4, zero
80201052: 4a 05        	slli	a0, a0, 18
80201054: b7 07 1c 00  	lui	a5, 448
80201058: 7d 8d        	and	a0, a0, a5
8020105a: b2 06        	slli	a3, a3, 12
8020105c: 1a 06        	slli	a2, a2, 6
8020105e: 55 8d        	or	a0, a0, a3
80201060: 51 8d        	or	a0, a0, a2
80201062: 59 8d        	or	a0, a0, a4
80201064: 37 06 11 00  	lui	a2, 272
80201068: e3 04 c5 e8  	beq	a0, a2, -376 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
8020106c: 05 bd        	j	-464 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>

000000008020106e <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>:
8020106e: ae 86        	add	a3, zero, a1
80201070: aa 85        	add	a1, zero, a0
80201072: 32 85        	add	a0, zero, a2
80201074: 36 86        	add	a2, zero, a3
80201076: 17 03 00 00  	auipc	t1, 0
8020107a: 67 00 e3 d2  	jr	-722(t1)

000000008020107e <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>:
8020107e: 59 71        	addi	sp, sp, -112
80201080: 86 f4        	sd	ra, 104(sp)
80201082: 2a e4        	sd	a0, 8(sp)
80201084: 2e e8        	sd	a1, 16(sp)
80201086: 28 00        	addi	a0, sp, 8
80201088: aa e4        	sd	a0, 72(sp)

000000008020108a <.LBB205_1>:
8020108a: 17 05 00 00  	auipc	a0, 0
8020108e: 13 05 05 27  	addi	a0, a0, 624
80201092: aa e8        	sd	a0, 80(sp)
80201094: 0c 08        	addi	a1, sp, 16
80201096: ae ec        	sd	a1, 88(sp)
80201098: aa f0        	sd	a0, 96(sp)

000000008020109a <.LBB205_2>:
8020109a: 17 15 00 00  	auipc	a0, 1
8020109e: 13 05 e5 4e  	addi	a0, a0, 1262
802010a2: 2a ec        	sd	a0, 24(sp)
802010a4: 09 45        	addi	a0, zero, 2
802010a6: 2a f0        	sd	a0, 32(sp)
802010a8: 02 f4        	sd	zero, 40(sp)
802010aa: ac 00        	addi	a1, sp, 72
802010ac: 2e fc        	sd	a1, 56(sp)
802010ae: aa e0        	sd	a0, 64(sp)
802010b0: 28 08        	addi	a0, sp, 24
802010b2: b2 85        	add	a1, zero, a2
802010b4: 97 00 00 00  	auipc	ra, 0
802010b8: e7 80 40 86  	jalr	-1948(ra)
802010bc: 00 00        	unimp	

00000000802010be <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h8027222638df1206E>:
802010be: 75 71        	addi	sp, sp, -144
802010c0: 06 e5        	sd	ra, 136(sp)
802010c2: 14 61        	ld	a3, 0(a0)
802010c4: 2e 85        	add	a0, zero, a1
802010c6: 81 45        	mv	a1, zero
802010c8: 13 08 81 00  	addi	a6, sp, 8
802010cc: 29 47        	addi	a4, zero, 10
802010ce: 39 a0        	j	14 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h8027222638df1206E+0x1e>
802010d0: 13 06 76 05  	addi	a2, a2, 87
802010d4: a3 8f c7 06  	sb	a2, 127(a5)
802010d8: fd 15        	addi	a1, a1, -1
802010da: 91 ce        	beqz	a3, 28 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h8027222638df1206E+0x38>
802010dc: b3 07 b8 00  	add	a5, a6, a1
802010e0: 13 f6 f6 00  	andi	a2, a3, 15
802010e4: 91 82        	srli	a3, a3, 4
802010e6: e3 75 e6 fe  	bgeu	a2, a4, -22 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h8027222638df1206E+0x12>
802010ea: 13 66 06 03  	ori	a2, a2, 48
802010ee: a3 8f c7 06  	sb	a2, 127(a5)
802010f2: fd 15        	addi	a1, a1, -1
802010f4: e5 f6        	bnez	a3, -24 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h8027222638df1206E+0x1e>
802010f6: 93 86 05 08  	addi	a3, a1, 128
802010fa: 13 06 10 08  	addi	a2, zero, 129
802010fe: 63 f4 c6 02  	bgeu	a3, a2, 40 <.LBB456_8>
80201102: b3 07 b0 40  	neg	a5, a1
80201106: c2 95        	add	a1, a1, a6
80201108: 13 87 05 08  	addi	a4, a1, 128

000000008020110c <.LBB456_7>:
8020110c: 17 16 00 00  	auipc	a2, 1
80201110: 13 06 c6 37  	addi	a2, a2, 892
80201114: 85 45        	addi	a1, zero, 1
80201116: 89 46        	addi	a3, zero, 2
80201118: 97 00 00 00  	auipc	ra, 0
8020111c: e7 80 c0 9f  	jalr	-1540(ra)
80201120: aa 60        	ld	ra, 136(sp)
80201122: 49 61        	addi	sp, sp, 144
80201124: 82 80        	ret

0000000080201126 <.LBB456_8>:
80201126: 17 16 00 00  	auipc	a2, 1
8020112a: 13 06 a6 34  	addi	a2, a2, 842
8020112e: 93 05 00 08  	addi	a1, zero, 128
80201132: 36 85        	add	a0, zero, a3
80201134: 97 00 00 00  	auipc	ra, 0
80201138: e7 80 a0 f4  	jalr	-182(ra)
8020113c: 00 00        	unimp	

000000008020113e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>:
8020113e: 5d 71        	addi	sp, sp, -80
80201140: 86 e4        	sd	ra, 72(sp)
80201142: a2 e0        	sd	s0, 64(sp)
80201144: 26 fc        	sd	s1, 56(sp)
80201146: 4a f8        	sd	s2, 48(sp)
80201148: 03 69 05 00  	lwu	s2, 0(a0)
8020114c: 2e 85        	add	a0, zero, a1
8020114e: 93 55 49 00  	srli	a1, s2, 4
80201152: 93 06 70 02  	addi	a3, zero, 39
80201156: 13 07 10 27  	addi	a4, zero, 625

000000008020115a <.LBB468_10>:
8020115a: 17 18 00 00  	auipc	a6, 1
8020115e: 13 08 08 33  	addi	a6, a6, 816
80201162: 63 f3 e5 02  	bgeu	a1, a4, 38 <.LBB468_10+0x2e>
80201166: 93 05 30 06  	addi	a1, zero, 99
8020116a: 63 e0 25 0f  	bltu	a1, s2, 224 <.LBB468_10+0xf0>
8020116e: a5 45        	addi	a1, zero, 9
80201170: 63 cd 25 13  	blt	a1, s2, 314 <.LBB468_10+0x150>
80201174: 93 85 f6 ff  	addi	a1, a3, -1
80201178: 13 06 91 00  	addi	a2, sp, 9
8020117c: 2e 96        	add	a2, a2, a1
8020117e: 93 06 09 03  	addi	a3, s2, 48
80201182: 23 00 d6 00  	sb	a3, 0(a2)
80201186: 91 a2        	j	324 <.LBB468_10+0x170>
80201188: 81 46        	mv	a3, zero
8020118a: b7 35 1a 00  	lui	a1, 419
8020118e: 9b 85 35 6e  	addiw	a1, a1, 1763
80201192: ba 05        	slli	a1, a1, 14
80201194: 93 85 75 ac  	addi	a1, a1, -1337
80201198: ba 05        	slli	a1, a1, 14
8020119a: 93 85 35 43  	addi	a1, a1, 1075
8020119e: b6 05        	slli	a1, a1, 13
802011a0: 93 88 b5 94  	addi	a7, a1, -1717
802011a4: 89 65        	lui	a1, 2
802011a6: 1b 83 05 71  	addiw	t1, a1, 1808
802011aa: c1 65        	lui	a1, 16
802011ac: 1b 8e c5 ff  	addiw	t3, a1, -4
802011b0: 37 f7 51 00  	lui	a4, 1311
802011b4: 1b 07 57 b8  	addiw	a4, a4, -1147
802011b8: 36 07        	slli	a4, a4, 13
802011ba: 13 07 77 3d  	addi	a4, a4, 983
802011be: 3a 07        	slli	a4, a4, 14
802011c0: 13 07 f7 28  	addi	a4, a4, 655
802011c4: 32 07        	slli	a4, a4, 12
802011c6: 93 0e 37 5c  	addi	t4, a4, 1475
802011ca: 93 02 40 06  	addi	t0, zero, 100
802011ce: 1b 8f e5 ff  	addiw	t5, a1, -2
802011d2: 93 03 91 00  	addi	t2, sp, 9
802011d6: b7 e5 f5 05  	lui	a1, 24414
802011da: 9b 8f f5 0f  	addiw	t6, a1, 255
802011de: 4a 86        	add	a2, zero, s2
802011e0: b3 37 19 03  	<unknown>
802011e4: 13 d9 b7 00  	srli	s2, a5, 11
802011e8: 33 07 69 02  	<unknown>
802011ec: 33 07 e6 40  	sub	a4, a2, a4
802011f0: b3 75 c7 01  	and	a1, a4, t3
802011f4: 89 81        	srli	a1, a1, 2
802011f6: b3 b5 d5 03  	<unknown>
802011fa: 89 81        	srli	a1, a1, 2
802011fc: 13 94 15 00  	slli	s0, a1, 1
80201200: b3 85 55 02  	<unknown>
80201204: b3 05 b7 40  	sub	a1, a4, a1
80201208: 86 05        	slli	a1, a1, 1
8020120a: b3 f5 e5 01  	and	a1, a1, t5
8020120e: 33 07 04 01  	add	a4, s0, a6
80201212: 33 84 d3 00  	add	s0, t2, a3
80201216: 83 44 07 00  	lbu	s1, 0(a4)
8020121a: 03 07 17 00  	lb	a4, 1(a4)
8020121e: c2 95        	add	a1, a1, a6
80201220: 83 87 15 00  	lb	a5, 1(a1)
80201224: 83 c5 05 00  	lbu	a1, 0(a1)
80201228: 23 02 e4 02  	sb	a4, 36(s0)
8020122c: a3 01 94 02  	sb	s1, 35(s0)
80201230: 23 03 f4 02  	sb	a5, 38(s0)
80201234: a3 02 b4 02  	sb	a1, 37(s0)
80201238: f1 16        	addi	a3, a3, -4
8020123a: e3 e2 cf fa  	bltu	t6, a2, -92 <.LBB468_10+0x84>
8020123e: 93 86 76 02  	addi	a3, a3, 39
80201242: 93 05 30 06  	addi	a1, zero, 99
80201246: e3 f4 25 f3  	bgeu	a1, s2, -216 <.LBB468_10+0x14>
8020124a: c1 65        	lui	a1, 16
8020124c: 1b 86 c5 ff  	addiw	a2, a1, -4
80201250: 33 76 c9 00  	and	a2, s2, a2
80201254: 09 82        	srli	a2, a2, 2
80201256: 37 f7 51 00  	lui	a4, 1311
8020125a: 1b 07 57 b8  	addiw	a4, a4, -1147
8020125e: 36 07        	slli	a4, a4, 13
80201260: 13 07 77 3d  	addi	a4, a4, 983
80201264: 3a 07        	slli	a4, a4, 14
80201266: 13 07 f7 28  	addi	a4, a4, 655
8020126a: 32 07        	slli	a4, a4, 12
8020126c: 13 07 37 5c  	addi	a4, a4, 1475
80201270: 33 36 e6 02  	<unknown>
80201274: 09 82        	srli	a2, a2, 2
80201276: 13 07 40 06  	addi	a4, zero, 100
8020127a: 33 07 e6 02  	<unknown>
8020127e: 33 07 e9 40  	sub	a4, s2, a4
80201282: 06 07        	slli	a4, a4, 1
80201284: f9 35        	addiw	a1, a1, -2
80201286: f9 8d        	and	a1, a1, a4
80201288: f9 16        	addi	a3, a3, -2
8020128a: c2 95        	add	a1, a1, a6
8020128c: 03 87 15 00  	lb	a4, 1(a1)
80201290: 83 c5 05 00  	lbu	a1, 0(a1)
80201294: 93 07 91 00  	addi	a5, sp, 9
80201298: b6 97        	add	a5, a5, a3
8020129a: a3 80 e7 00  	sb	a4, 1(a5)
8020129e: 23 80 b7 00  	sb	a1, 0(a5)
802012a2: 32 89        	add	s2, zero, a2
802012a4: a5 45        	addi	a1, zero, 9
802012a6: e3 d7 25 ed  	bge	a1, s2, -306 <.LBB468_10+0x1a>
802012aa: 13 16 19 00  	slli	a2, s2, 1
802012ae: 93 85 e6 ff  	addi	a1, a3, -2
802012b2: 42 96        	add	a2, a2, a6
802012b4: 83 06 16 00  	lb	a3, 1(a2)
802012b8: 03 46 06 00  	lbu	a2, 0(a2)
802012bc: 13 07 91 00  	addi	a4, sp, 9
802012c0: 2e 97        	add	a4, a4, a1
802012c2: a3 00 d7 00  	sb	a3, 1(a4)
802012c6: 23 00 c7 00  	sb	a2, 0(a4)
802012ca: 13 06 91 00  	addi	a2, sp, 9
802012ce: 33 07 b6 00  	add	a4, a2, a1
802012d2: 13 06 70 02  	addi	a2, zero, 39
802012d6: b3 07 b6 40  	sub	a5, a2, a1

00000000802012da <.LBB468_11>:
802012da: 17 16 00 00  	auipc	a2, 1
802012de: 13 06 e6 12  	addi	a2, a2, 302
802012e2: 85 45        	addi	a1, zero, 1
802012e4: 81 46        	mv	a3, zero
802012e6: 97 00 00 00  	auipc	ra, 0
802012ea: e7 80 e0 82  	jalr	-2002(ra)
802012ee: 42 79        	ld	s2, 48(sp)
802012f0: e2 74        	ld	s1, 56(sp)
802012f2: 06 64        	ld	s0, 64(sp)
802012f4: a6 60        	ld	ra, 72(sp)
802012f6: 61 61        	addi	sp, sp, 80
802012f8: 82 80        	ret

00000000802012fa <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h3ddc565198bd69ffE>:
802012fa: 5d 71        	addi	sp, sp, -80
802012fc: 86 e4        	sd	ra, 72(sp)
802012fe: a2 e0        	sd	s0, 64(sp)
80201300: 26 fc        	sd	s1, 56(sp)
80201302: 4a f8        	sd	s2, 48(sp)
80201304: 03 39 05 00  	ld	s2, 0(a0)
80201308: 2e 85        	add	a0, zero, a1
8020130a: 93 55 49 00  	srli	a1, s2, 4
8020130e: 93 06 70 02  	addi	a3, zero, 39
80201312: 13 07 10 27  	addi	a4, zero, 625

0000000080201316 <.LBB470_10>:
80201316: 17 18 00 00  	auipc	a6, 1
8020131a: 13 08 48 17  	addi	a6, a6, 372
8020131e: 63 f3 e5 02  	bgeu	a1, a4, 38 <.LBB470_10+0x2e>
80201322: 93 05 30 06  	addi	a1, zero, 99
80201326: 63 c0 25 0f  	blt	a1, s2, 224 <.LBB470_10+0xf0>
8020132a: a5 45        	addi	a1, zero, 9
8020132c: 63 cd 25 13  	blt	a1, s2, 314 <.LBB470_10+0x150>
80201330: 93 85 f6 ff  	addi	a1, a3, -1
80201334: 13 06 91 00  	addi	a2, sp, 9
80201338: 2e 96        	add	a2, a2, a1
8020133a: 93 06 09 03  	addi	a3, s2, 48
8020133e: 23 00 d6 00  	sb	a3, 0(a2)
80201342: 91 a2        	j	324 <.LBB470_10+0x170>
80201344: 81 46        	mv	a3, zero
80201346: b7 35 1a 00  	lui	a1, 419
8020134a: 9b 85 35 6e  	addiw	a1, a1, 1763
8020134e: ba 05        	slli	a1, a1, 14
80201350: 93 85 75 ac  	addi	a1, a1, -1337
80201354: ba 05        	slli	a1, a1, 14
80201356: 93 85 35 43  	addi	a1, a1, 1075
8020135a: b6 05        	slli	a1, a1, 13
8020135c: 93 88 b5 94  	addi	a7, a1, -1717
80201360: 89 65        	lui	a1, 2
80201362: 1b 83 05 71  	addiw	t1, a1, 1808
80201366: c1 65        	lui	a1, 16
80201368: 1b 8e c5 ff  	addiw	t3, a1, -4
8020136c: 37 f7 51 00  	lui	a4, 1311
80201370: 1b 07 57 b8  	addiw	a4, a4, -1147
80201374: 36 07        	slli	a4, a4, 13
80201376: 13 07 77 3d  	addi	a4, a4, 983
8020137a: 3a 07        	slli	a4, a4, 14
8020137c: 13 07 f7 28  	addi	a4, a4, 655
80201380: 32 07        	slli	a4, a4, 12
80201382: 93 0e 37 5c  	addi	t4, a4, 1475
80201386: 93 02 40 06  	addi	t0, zero, 100
8020138a: 1b 8f e5 ff  	addiw	t5, a1, -2
8020138e: 93 03 91 00  	addi	t2, sp, 9
80201392: b7 e5 f5 05  	lui	a1, 24414
80201396: 9b 8f f5 0f  	addiw	t6, a1, 255
8020139a: 4a 86        	add	a2, zero, s2
8020139c: b3 37 19 03  	<unknown>
802013a0: 13 d9 b7 00  	srli	s2, a5, 11
802013a4: 33 07 69 02  	<unknown>
802013a8: 33 07 e6 40  	sub	a4, a2, a4
802013ac: b3 75 c7 01  	and	a1, a4, t3
802013b0: 89 81        	srli	a1, a1, 2
802013b2: b3 b5 d5 03  	<unknown>
802013b6: 89 81        	srli	a1, a1, 2
802013b8: 13 94 15 00  	slli	s0, a1, 1
802013bc: b3 85 55 02  	<unknown>
802013c0: b3 05 b7 40  	sub	a1, a4, a1
802013c4: 86 05        	slli	a1, a1, 1
802013c6: b3 f5 e5 01  	and	a1, a1, t5
802013ca: 33 07 04 01  	add	a4, s0, a6
802013ce: 33 84 d3 00  	add	s0, t2, a3
802013d2: 83 44 07 00  	lbu	s1, 0(a4)
802013d6: 03 07 17 00  	lb	a4, 1(a4)
802013da: c2 95        	add	a1, a1, a6
802013dc: 83 87 15 00  	lb	a5, 1(a1)
802013e0: 83 c5 05 00  	lbu	a1, 0(a1)
802013e4: 23 02 e4 02  	sb	a4, 36(s0)
802013e8: a3 01 94 02  	sb	s1, 35(s0)
802013ec: 23 03 f4 02  	sb	a5, 38(s0)
802013f0: a3 02 b4 02  	sb	a1, 37(s0)
802013f4: f1 16        	addi	a3, a3, -4
802013f6: e3 e2 cf fa  	bltu	t6, a2, -92 <.LBB470_10+0x84>
802013fa: 93 86 76 02  	addi	a3, a3, 39
802013fe: 93 05 30 06  	addi	a1, zero, 99
80201402: e3 d4 25 f3  	bge	a1, s2, -216 <.LBB470_10+0x14>
80201406: c1 65        	lui	a1, 16
80201408: 1b 86 c5 ff  	addiw	a2, a1, -4
8020140c: 33 76 c9 00  	and	a2, s2, a2
80201410: 09 82        	srli	a2, a2, 2
80201412: 37 f7 51 00  	lui	a4, 1311
80201416: 1b 07 57 b8  	addiw	a4, a4, -1147
8020141a: 36 07        	slli	a4, a4, 13
8020141c: 13 07 77 3d  	addi	a4, a4, 983
80201420: 3a 07        	slli	a4, a4, 14
80201422: 13 07 f7 28  	addi	a4, a4, 655
80201426: 32 07        	slli	a4, a4, 12
80201428: 13 07 37 5c  	addi	a4, a4, 1475
8020142c: 33 36 e6 02  	<unknown>
80201430: 09 82        	srli	a2, a2, 2
80201432: 13 07 40 06  	addi	a4, zero, 100
80201436: 33 07 e6 02  	<unknown>
8020143a: 33 07 e9 40  	sub	a4, s2, a4
8020143e: 06 07        	slli	a4, a4, 1
80201440: f9 35        	addiw	a1, a1, -2
80201442: f9 8d        	and	a1, a1, a4
80201444: f9 16        	addi	a3, a3, -2
80201446: c2 95        	add	a1, a1, a6
80201448: 03 87 15 00  	lb	a4, 1(a1)
8020144c: 83 c5 05 00  	lbu	a1, 0(a1)
80201450: 93 07 91 00  	addi	a5, sp, 9
80201454: b6 97        	add	a5, a5, a3
80201456: a3 80 e7 00  	sb	a4, 1(a5)
8020145a: 23 80 b7 00  	sb	a1, 0(a5)
8020145e: 32 89        	add	s2, zero, a2
80201460: a5 45        	addi	a1, zero, 9
80201462: e3 d7 25 ed  	bge	a1, s2, -306 <.LBB470_10+0x1a>
80201466: 13 16 19 00  	slli	a2, s2, 1
8020146a: 93 85 e6 ff  	addi	a1, a3, -2
8020146e: 42 96        	add	a2, a2, a6
80201470: 83 06 16 00  	lb	a3, 1(a2)
80201474: 03 46 06 00  	lbu	a2, 0(a2)
80201478: 13 07 91 00  	addi	a4, sp, 9
8020147c: 2e 97        	add	a4, a4, a1
8020147e: a3 00 d7 00  	sb	a3, 1(a4)
80201482: 23 00 c7 00  	sb	a2, 0(a4)
80201486: 13 06 91 00  	addi	a2, sp, 9
8020148a: 33 07 b6 00  	add	a4, a2, a1
8020148e: 13 06 70 02  	addi	a2, zero, 39
80201492: b3 07 b6 40  	sub	a5, a2, a1

0000000080201496 <.LBB470_11>:
80201496: 17 16 00 00  	auipc	a2, 1
8020149a: 13 06 26 f7  	addi	a2, a2, -142
8020149e: 85 45        	addi	a1, zero, 1
802014a0: 81 46        	mv	a3, zero
802014a2: 97 f0 ff ff  	auipc	ra, 1048575
802014a6: e7 80 20 67  	jalr	1650(ra)
802014aa: 42 79        	ld	s2, 48(sp)
802014ac: e2 74        	ld	s1, 56(sp)
802014ae: 06 64        	ld	s0, 64(sp)
802014b0: a6 60        	ld	ra, 72(sp)
802014b2: 61 61        	addi	sp, sp, 80
802014b4: 82 80        	ret

00000000802014b6 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9b30d63a2778a2bdE>:
802014b6: 90 75        	ld	a2, 40(a1)
802014b8: 88 71        	ld	a0, 32(a1)
802014ba: 1c 6e        	ld	a5, 24(a2)

00000000802014bc <.LBB494_1>:
802014bc: 97 15 00 00  	auipc	a1, 1
802014c0: 93 85 c5 0e  	addi	a1, a1, 236
802014c4: 15 46        	addi	a2, zero, 5
802014c6: 82 87        	jr	a5

00000000802014c8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>:
802014c8: 10 65        	ld	a2, 8(a0)
802014ca: 08 61        	ld	a0, 0(a0)
802014cc: 1c 6e        	ld	a5, 24(a2)
802014ce: 82 87        	jr	a5

00000000802014d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>:
802014d0: 14 61        	ld	a3, 0(a0)
802014d2: 10 65        	ld	a2, 8(a0)
802014d4: 2e 85        	add	a0, zero, a1
802014d6: b6 85        	add	a1, zero, a3
802014d8: 17 03 00 00  	auipc	t1, 0
802014dc: 67 00 c3 8c  	jr	-1844(t1)
