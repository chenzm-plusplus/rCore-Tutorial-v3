Platform: qemu

target/riscv64gc-unknown-none-elf/release/os:     file format elf64-littleriscv


Disassembly of section .text:

0000000090000000 <_start>:
    90000000:	00013117          	auipc	sp,0x13
    90000004:	00010113          	mv	sp,sp
    90000008:	00000097          	auipc	ra,0x0
    9000000c:	4b2080e7          	jalr	1202(ra) # 900004ba <rust_main>

0000000090000010 <_ZN2os3sbi8shutdown17h3dc928f776538d6cE>:
    90000010:	1141                	addi	sp,sp,-16
    90000012:	e406                	sd	ra,8(sp)
    90000014:	e022                	sd	s0,0(sp)
    90000016:	0800                	addi	s0,sp,16
    90000018:	48a1                	li	a7,8
    9000001a:	4501                	li	a0,0
    9000001c:	4581                	li	a1,0
    9000001e:	4601                	li	a2,0
    90000020:	00000073          	ecall

0000000090000024 <.LBB1_1>:
    90000024:	00002517          	auipc	a0,0x2
    90000028:	fdc50513          	addi	a0,a0,-36 # 90002000 <etext>

000000009000002c <.LBB1_2>:
    9000002c:	00002617          	auipc	a2,0x2
    90000030:	ff460613          	addi	a2,a2,-12 # 90002020 <anon.c35b1856a9ce2cf94287a802c2a813c7.2.llvm.569807622299463821>
    90000034:	45cd                	li	a1,19
    90000036:	00000097          	auipc	ra,0x0
    9000003a:	78a080e7          	jalr	1930(ra) # 900007c0 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000040 <rust_begin_unwind>:
    90000040:	7171                	addi	sp,sp,-176
    90000042:	f506                	sd	ra,168(sp)
    90000044:	f122                	sd	s0,160(sp)
    90000046:	ed26                	sd	s1,152(sp)
    90000048:	e94a                	sd	s2,144(sp)
    9000004a:	1900                	addi	s0,sp,176
    9000004c:	892a                	mv	s2,a0
    9000004e:	00000097          	auipc	ra,0x0
    90000052:	762080e7          	jalr	1890(ra) # 900007b0 <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>
    90000056:	e515                	bnez	a0,90000082 <.LBB0_10+0x16>
    90000058:	854a                	mv	a0,s2
    9000005a:	00000097          	auipc	ra,0x0
    9000005e:	752080e7          	jalr	1874(ra) # 900007ac <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    90000062:	e52d                	bnez	a0,900000cc <.LBB0_12+0x16>

0000000090000064 <.LBB0_9>:
    90000064:	00002517          	auipc	a0,0x2
    90000068:	fd450513          	addi	a0,a0,-44 # 90002038 <.Lanon.86a3613c128665d32fc75176e6ae67c2.0>

000000009000006c <.LBB0_10>:
    9000006c:	00002617          	auipc	a2,0x2
    90000070:	03c60613          	addi	a2,a2,60 # 900020a8 <.Lanon.86a3613c128665d32fc75176e6ae67c2.5>
    90000074:	02b00593          	li	a1,43
    90000078:	00000097          	auipc	ra,0x0
    9000007c:	748080e7          	jalr	1864(ra) # 900007c0 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    90000080:	0000                	unimp
    90000082:	84aa                	mv	s1,a0
    90000084:	00000097          	auipc	ra,0x0
    90000088:	730080e7          	jalr	1840(ra) # 900007b4 <_ZN4core5panic8Location4file17h3a63c909928b6622E>
    9000008c:	f8a43423          	sd	a0,-120(s0)
    90000090:	f8b43823          	sd	a1,-112(s0)
    90000094:	8526                	mv	a0,s1
    90000096:	00000097          	auipc	ra,0x0
    9000009a:	726080e7          	jalr	1830(ra) # 900007bc <_ZN4core5panic8Location4line17h438064cf29667b6aE>
    9000009e:	f8a42e23          	sw	a0,-100(s0)
    900000a2:	854a                	mv	a0,s2
    900000a4:	00000097          	auipc	ra,0x0
    900000a8:	708080e7          	jalr	1800(ra) # 900007ac <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    900000ac:	e541                	bnez	a0,90000134 <.LBB0_15+0x24>

00000000900000ae <.LBB0_11>:
    900000ae:	00002517          	auipc	a0,0x2
    900000b2:	f8a50513          	addi	a0,a0,-118 # 90002038 <.Lanon.86a3613c128665d32fc75176e6ae67c2.0>

00000000900000b6 <.LBB0_12>:
    900000b6:	00002617          	auipc	a2,0x2
    900000ba:	05a60613          	addi	a2,a2,90 # 90002110 <.Lanon.86a3613c128665d32fc75176e6ae67c2.10>
    900000be:	02b00593          	li	a1,43
    900000c2:	00000097          	auipc	ra,0x0
    900000c6:	6fe080e7          	jalr	1790(ra) # 900007c0 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    900000ca:	0000                	unimp
    900000cc:	faa43423          	sd	a0,-88(s0)
    900000d0:	fa840513          	addi	a0,s0,-88
    900000d4:	f4a43c23          	sd	a0,-168(s0)

00000000900000d8 <.LBB0_13>:
    900000d8:	00000517          	auipc	a0,0x0
    900000dc:	12e50513          	addi	a0,a0,302 # 90000206 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he939f423bab25224E>
    900000e0:	f6a43023          	sd	a0,-160(s0)
    900000e4:	fb040513          	addi	a0,s0,-80
    900000e8:	f8a43423          	sd	a0,-120(s0)

00000000900000ec <.LBB0_14>:
    900000ec:	00002517          	auipc	a0,0x2
    900000f0:	f8450513          	addi	a0,a0,-124 # 90002070 <.Lanon.86a3613c128665d32fc75176e6ae67c2.3>
    900000f4:	faa43823          	sd	a0,-80(s0)
    900000f8:	4509                	li	a0,2
    900000fa:	faa43c23          	sd	a0,-72(s0)
    900000fe:	fc043023          	sd	zero,-64(s0)
    90000102:	f5840513          	addi	a0,s0,-168
    90000106:	fca43823          	sd	a0,-48(s0)
    9000010a:	4505                	li	a0,1
    9000010c:	fca43c23          	sd	a0,-40(s0)

0000000090000110 <.LBB0_15>:
    90000110:	00002597          	auipc	a1,0x2
    90000114:	01858593          	addi	a1,a1,24 # 90002128 <anon.29ae6766f1546785cf1924743cd44675.0.llvm.5475424443479341742>
    90000118:	f8840513          	addi	a0,s0,-120
    9000011c:	fb040613          	addi	a2,s0,-80
    90000120:	00000097          	auipc	ra,0x0
    90000124:	726080e7          	jalr	1830(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000128:	e949                	bnez	a0,900001ba <.LBB0_21>
    9000012a:	00000097          	auipc	ra,0x0
    9000012e:	ee6080e7          	jalr	-282(ra) # 90000010 <_ZN2os3sbi8shutdown17h3dc928f776538d6cE>
    90000132:	0000                	unimp
    90000134:	faa43023          	sd	a0,-96(s0)
    90000138:	f8840513          	addi	a0,s0,-120
    9000013c:	f4a43c23          	sd	a0,-168(s0)

0000000090000140 <.LBB0_16>:
    90000140:	00000517          	auipc	a0,0x0
    90000144:	0a450513          	addi	a0,a0,164 # 900001e4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h96f0635d6bfd66e6E>
    90000148:	f6a43023          	sd	a0,-160(s0)
    9000014c:	f9c40513          	addi	a0,s0,-100
    90000150:	f6a43423          	sd	a0,-152(s0)

0000000090000154 <.LBB0_17>:
    90000154:	00001517          	auipc	a0,0x1
    90000158:	ebe50513          	addi	a0,a0,-322 # 90001012 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>
    9000015c:	f6a43823          	sd	a0,-144(s0)
    90000160:	fa040513          	addi	a0,s0,-96
    90000164:	f6a43c23          	sd	a0,-136(s0)

0000000090000168 <.LBB0_18>:
    90000168:	00000517          	auipc	a0,0x0
    9000016c:	09e50513          	addi	a0,a0,158 # 90000206 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he939f423bab25224E>
    90000170:	f8a43023          	sd	a0,-128(s0)
    90000174:	fb040513          	addi	a0,s0,-80
    90000178:	faa43423          	sd	a0,-88(s0)

000000009000017c <.LBB0_19>:
    9000017c:	00002517          	auipc	a0,0x2
    90000180:	f5450513          	addi	a0,a0,-172 # 900020d0 <.Lanon.86a3613c128665d32fc75176e6ae67c2.9>
    90000184:	faa43823          	sd	a0,-80(s0)
    90000188:	4511                	li	a0,4
    9000018a:	faa43c23          	sd	a0,-72(s0)
    9000018e:	fc043023          	sd	zero,-64(s0)
    90000192:	f5840513          	addi	a0,s0,-168
    90000196:	fca43823          	sd	a0,-48(s0)
    9000019a:	450d                	li	a0,3
    9000019c:	fca43c23          	sd	a0,-40(s0)

00000000900001a0 <.LBB0_20>:
    900001a0:	00002597          	auipc	a1,0x2
    900001a4:	f8858593          	addi	a1,a1,-120 # 90002128 <anon.29ae6766f1546785cf1924743cd44675.0.llvm.5475424443479341742>
    900001a8:	fa840513          	addi	a0,s0,-88
    900001ac:	fb040613          	addi	a2,s0,-80
    900001b0:	00000097          	auipc	ra,0x0
    900001b4:	696080e7          	jalr	1686(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    900001b8:	d92d                	beqz	a0,9000012a <.LBB0_15+0x1a>

00000000900001ba <.LBB0_21>:
    900001ba:	00002517          	auipc	a0,0x2
    900001be:	f9e50513          	addi	a0,a0,-98 # 90002158 <anon.29ae6766f1546785cf1924743cd44675.1.llvm.5475424443479341742>

00000000900001c2 <.LBB0_22>:
    900001c2:	00002697          	auipc	a3,0x2
    900001c6:	fc668693          	addi	a3,a3,-58 # 90002188 <anon.29ae6766f1546785cf1924743cd44675.2.llvm.5475424443479341742>

00000000900001ca <.LBB0_23>:
    900001ca:	00002717          	auipc	a4,0x2
    900001ce:	fee70713          	addi	a4,a4,-18 # 900021b8 <anon.29ae6766f1546785cf1924743cd44675.4.llvm.5475424443479341742>
    900001d2:	fb040613          	addi	a2,s0,-80
    900001d6:	02b00593          	li	a1,43
    900001da:	00000097          	auipc	ra,0x0
    900001de:	586080e7          	jalr	1414(ra) # 90000760 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900001e4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h96f0635d6bfd66e6E>:
    900001e4:	1141                	addi	sp,sp,-16
    900001e6:	e406                	sd	ra,8(sp)
    900001e8:	e022                	sd	s0,0(sp)
    900001ea:	0800                	addi	s0,sp,16
    900001ec:	6110                	ld	a2,0(a0)
    900001ee:	6514                	ld	a3,8(a0)
    900001f0:	872e                	mv	a4,a1
    900001f2:	8532                	mv	a0,a2
    900001f4:	85b6                	mv	a1,a3
    900001f6:	863a                	mv	a2,a4
    900001f8:	6402                	ld	s0,0(sp)
    900001fa:	60a2                	ld	ra,8(sp)
    900001fc:	0141                	addi	sp,sp,16
    900001fe:	00001317          	auipc	t1,0x1
    90000202:	d4430067          	jr	-700(t1) # 90000f42 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>

0000000090000206 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he939f423bab25224E>:
    90000206:	1141                	addi	sp,sp,-16
    90000208:	e406                	sd	ra,8(sp)
    9000020a:	e022                	sd	s0,0(sp)
    9000020c:	0800                	addi	s0,sp,16
    9000020e:	6108                	ld	a0,0(a0)
    90000210:	6402                	ld	s0,0(sp)
    90000212:	60a2                	ld	ra,8(sp)
    90000214:	0141                	addi	sp,sp,16
    90000216:	00000317          	auipc	t1,0x0
    9000021a:	5fe30067          	jr	1534(t1) # 90000814 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>

000000009000021e <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h3e388fcce08b3b6cE.llvm.5475424443479341742>:
    9000021e:	1141                	addi	sp,sp,-16
    90000220:	e406                	sd	ra,8(sp)
    90000222:	e022                	sd	s0,0(sp)
    90000224:	0800                	addi	s0,sp,16
    90000226:	6402                	ld	s0,0(sp)
    90000228:	60a2                	ld	ra,8(sp)
    9000022a:	0141                	addi	sp,sp,16
    9000022c:	8082                	ret

000000009000022e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742>:
    9000022e:	1101                	addi	sp,sp,-32
    90000230:	ec06                	sd	ra,24(sp)
    90000232:	e822                	sd	s0,16(sp)
    90000234:	1000                	addi	s0,sp,32
    90000236:	0005851b          	sext.w	a0,a1
    9000023a:	08000613          	li	a2,128
    9000023e:	fe042623          	sw	zero,-20(s0)
    90000242:	00c57663          	bgeu	a0,a2,9000024e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x20>
    90000246:	feb40623          	sb	a1,-20(s0)
    9000024a:	4505                	li	a0,1
    9000024c:	a859                	j	900002e2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0xb4>
    9000024e:	00b5d51b          	srliw	a0,a1,0xb
    90000252:	e105                	bnez	a0,90000272 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x44>
    90000254:	0065d513          	srli	a0,a1,0x6
    90000258:	03f5f593          	andi	a1,a1,63
    9000025c:	fc056613          	ori	a2,a0,-64
    90000260:	fec40623          	sb	a2,-20(s0)
    90000264:	0805e513          	ori	a0,a1,128
    90000268:	fea406a3          	sb	a0,-19(s0)
    9000026c:	4509                	li	a0,2
    9000026e:	85b2                	mv	a1,a2
    90000270:	a88d                	j	900002e2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0xb4>
    90000272:	0105d51b          	srliw	a0,a1,0x10
    90000276:	e905                	bnez	a0,900002a6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x78>
    90000278:	00c5d51b          	srliw	a0,a1,0xc
    9000027c:	0065d61b          	srliw	a2,a1,0x6
    90000280:	03f5f593          	andi	a1,a1,63
    90000284:	fe056693          	ori	a3,a0,-32
    90000288:	fed40623          	sb	a3,-20(s0)
    9000028c:	03f67513          	andi	a0,a2,63
    90000290:	08056513          	ori	a0,a0,128
    90000294:	fea406a3          	sb	a0,-19(s0)
    90000298:	0805e513          	ori	a0,a1,128
    9000029c:	fea40723          	sb	a0,-18(s0)
    900002a0:	450d                	li	a0,3
    900002a2:	85b6                	mv	a1,a3
    900002a4:	a83d                	j	900002e2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0xb4>
    900002a6:	0125d51b          	srliw	a0,a1,0x12
    900002aa:	00c5d61b          	srliw	a2,a1,0xc
    900002ae:	0065d69b          	srliw	a3,a1,0x6
    900002b2:	03f5f593          	andi	a1,a1,63
    900002b6:	ff056713          	ori	a4,a0,-16
    900002ba:	fee40623          	sb	a4,-20(s0)
    900002be:	03f67513          	andi	a0,a2,63
    900002c2:	08056513          	ori	a0,a0,128
    900002c6:	fea406a3          	sb	a0,-19(s0)
    900002ca:	03f6f513          	andi	a0,a3,63
    900002ce:	08056513          	ori	a0,a0,128
    900002d2:	fea40723          	sb	a0,-18(s0)
    900002d6:	0805e513          	ori	a0,a1,128
    900002da:	fea407a3          	sb	a0,-17(s0)
    900002de:	4511                	li	a0,4
    900002e0:	85ba                	mv	a1,a4
    900002e2:	fec40613          	addi	a2,s0,-20
    900002e6:	00a607b3          	add	a5,a2,a0
    900002ea:	0e000393          	li	t2,224
    900002ee:	0f000313          	li	t1,240
    900002f2:	001c0837          	lui	a6,0x1c0
    900002f6:	001102b7          	lui	t0,0x110
    900002fa:	4885                	li	a7,1
    900002fc:	00160693          	addi	a3,a2,1
    90000300:	03859513          	slli	a0,a1,0x38
    90000304:	43855713          	srai	a4,a0,0x38
    90000308:	0ff5f513          	andi	a0,a1,255
    9000030c:	06075d63          	bgez	a4,90000386 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x158>
    90000310:	02f68e63          	beq	a3,a5,9000034c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x11e>
    90000314:	00164703          	lbu	a4,1(a2)
    90000318:	00260693          	addi	a3,a2,2
    9000031c:	03f77613          	andi	a2,a4,63
    90000320:	89fd                	andi	a1,a1,31
    90000322:	02756a63          	bltu	a0,t2,90000356 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x128>
    90000326:	02f68c63          	beq	a3,a5,9000035e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x130>
    9000032a:	0006c703          	lbu	a4,0(a3)
    9000032e:	0685                	addi	a3,a3,1
    90000330:	03f77713          	andi	a4,a4,63
    90000334:	061a                	slli	a2,a2,0x6
    90000336:	8e59                	or	a2,a2,a4
    90000338:	02656963          	bltu	a0,t1,9000036a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x13c>
    9000033c:	02f68b63          	beq	a3,a5,90000372 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x144>
    90000340:	0006c503          	lbu	a0,0(a3)
    90000344:	0685                	addi	a3,a3,1
    90000346:	03f57513          	andi	a0,a0,63
    9000034a:	a035                	j	90000376 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x148>
    9000034c:	4601                	li	a2,0
    9000034e:	86be                	mv	a3,a5
    90000350:	89fd                	andi	a1,a1,31
    90000352:	fc757ae3          	bgeu	a0,t2,90000326 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0xf8>
    90000356:	00659513          	slli	a0,a1,0x6
    9000035a:	8d51                	or	a0,a0,a2
    9000035c:	a02d                	j	90000386 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x158>
    9000035e:	4701                	li	a4,0
    90000360:	86be                	mv	a3,a5
    90000362:	061a                	slli	a2,a2,0x6
    90000364:	8e59                	or	a2,a2,a4
    90000366:	fc657be3          	bgeu	a0,t1,9000033c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x10e>
    9000036a:	00c59513          	slli	a0,a1,0xc
    9000036e:	8d51                	or	a0,a0,a2
    90000370:	a819                	j	90000386 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x158>
    90000372:	4501                	li	a0,0
    90000374:	86be                	mv	a3,a5
    90000376:	05ca                	slli	a1,a1,0x12
    90000378:	0105f5b3          	and	a1,a1,a6
    9000037c:	061a                	slli	a2,a2,0x6
    9000037e:	8dd1                	or	a1,a1,a2
    90000380:	8d4d                	or	a0,a0,a1
    90000382:	00550c63          	beq	a0,t0,9000039a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x16c>
    90000386:	4581                	li	a1,0
    90000388:	4601                	li	a2,0
    9000038a:	00000073          	ecall
    9000038e:	00f68663          	beq	a3,a5,9000039a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0x16c>
    90000392:	0006c583          	lbu	a1,0(a3)
    90000396:	8636                	mv	a2,a3
    90000398:	b795                	j	900002fc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hcca786c3e0e76fe8E.llvm.5475424443479341742+0xce>
    9000039a:	4501                	li	a0,0
    9000039c:	6442                	ld	s0,16(sp)
    9000039e:	60e2                	ld	ra,24(sp)
    900003a0:	6105                	addi	sp,sp,32
    900003a2:	8082                	ret

00000000900003a4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hec68ffbdcf4cbfd4E.llvm.5475424443479341742>:
    900003a4:	715d                	addi	sp,sp,-80
    900003a6:	e486                	sd	ra,72(sp)
    900003a8:	e0a2                	sd	s0,64(sp)
    900003aa:	0880                	addi	s0,sp,80
    900003ac:	6108                	ld	a0,0(a0)
    900003ae:	7590                	ld	a2,40(a1)
    900003b0:	7194                	ld	a3,32(a1)
    900003b2:	faa43c23          	sd	a0,-72(s0)
    900003b6:	fec43423          	sd	a2,-24(s0)
    900003ba:	fed43023          	sd	a3,-32(s0)
    900003be:	6d88                	ld	a0,24(a1)
    900003c0:	6990                	ld	a2,16(a1)
    900003c2:	6594                	ld	a3,8(a1)
    900003c4:	618c                	ld	a1,0(a1)
    900003c6:	fca43c23          	sd	a0,-40(s0)
    900003ca:	fcc43823          	sd	a2,-48(s0)
    900003ce:	fcd43423          	sd	a3,-56(s0)
    900003d2:	fcb43023          	sd	a1,-64(s0)

00000000900003d6 <.LBB2_1>:
    900003d6:	00002597          	auipc	a1,0x2
    900003da:	d5258593          	addi	a1,a1,-686 # 90002128 <anon.29ae6766f1546785cf1924743cd44675.0.llvm.5475424443479341742>
    900003de:	fb840513          	addi	a0,s0,-72
    900003e2:	fc040613          	addi	a2,s0,-64
    900003e6:	00000097          	auipc	ra,0x0
    900003ea:	460080e7          	jalr	1120(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    900003ee:	6406                	ld	s0,64(sp)
    900003f0:	60a6                	ld	ra,72(sp)
    900003f2:	6161                	addi	sp,sp,80
    900003f4:	8082                	ret

00000000900003f6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742>:
    900003f6:	1141                	addi	sp,sp,-16
    900003f8:	e406                	sd	ra,8(sp)
    900003fa:	e022                	sd	s0,0(sp)
    900003fc:	0800                	addi	s0,sp,16
    900003fe:	ca4d                	beqz	a2,900004b0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0xba>
    90000400:	00c587b3          	add	a5,a1,a2
    90000404:	0e000393          	li	t2,224
    90000408:	0f000313          	li	t1,240
    9000040c:	001c0837          	lui	a6,0x1c0
    90000410:	001102b7          	lui	t0,0x110
    90000414:	4885                	li	a7,1
    90000416:	a819                	j	9000042c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x36>
    90000418:	00659513          	slli	a0,a1,0x6
    9000041c:	8d51                	or	a0,a0,a2
    9000041e:	4581                	li	a1,0
    90000420:	4601                	li	a2,0
    90000422:	00000073          	ecall
    90000426:	85b6                	mv	a1,a3
    90000428:	08f68463          	beq	a3,a5,900004b0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0xba>
    9000042c:	00058603          	lb	a2,0(a1)
    90000430:	00158693          	addi	a3,a1,1
    90000434:	0ff67513          	andi	a0,a2,255
    90000438:	fe0653e3          	bgez	a2,9000041e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x28>
    9000043c:	00f68d63          	beq	a3,a5,90000456 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x60>
    90000440:	0015c603          	lbu	a2,1(a1)
    90000444:	00258693          	addi	a3,a1,2
    90000448:	03f67613          	andi	a2,a2,63
    9000044c:	01f57593          	andi	a1,a0,31
    90000450:	fc7564e3          	bltu	a0,t2,90000418 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x22>
    90000454:	a039                	j	90000462 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x6c>
    90000456:	4601                	li	a2,0
    90000458:	86be                	mv	a3,a5
    9000045a:	01f57593          	andi	a1,a0,31
    9000045e:	fa756de3          	bltu	a0,t2,90000418 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x22>
    90000462:	02f68363          	beq	a3,a5,90000488 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x92>
    90000466:	0006c703          	lbu	a4,0(a3)
    9000046a:	0685                	addi	a3,a3,1
    9000046c:	03f77713          	andi	a4,a4,63
    90000470:	061a                	slli	a2,a2,0x6
    90000472:	8e59                	or	a2,a2,a4
    90000474:	02656063          	bltu	a0,t1,90000494 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x9e>
    90000478:	02f68263          	beq	a3,a5,9000049c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0xa6>
    9000047c:	0006c503          	lbu	a0,0(a3)
    90000480:	0685                	addi	a3,a3,1
    90000482:	03f57513          	andi	a0,a0,63
    90000486:	a829                	j	900004a0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0xaa>
    90000488:	4701                	li	a4,0
    9000048a:	86be                	mv	a3,a5
    9000048c:	061a                	slli	a2,a2,0x6
    9000048e:	8e59                	or	a2,a2,a4
    90000490:	fe6574e3          	bgeu	a0,t1,90000478 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x82>
    90000494:	00c59513          	slli	a0,a1,0xc
    90000498:	8d51                	or	a0,a0,a2
    9000049a:	b751                	j	9000041e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x28>
    9000049c:	4501                	li	a0,0
    9000049e:	86be                	mv	a3,a5
    900004a0:	05ca                	slli	a1,a1,0x12
    900004a2:	0105f5b3          	and	a1,a1,a6
    900004a6:	061a                	slli	a2,a2,0x6
    900004a8:	8dd1                	or	a1,a1,a2
    900004aa:	8d4d                	or	a0,a0,a1
    900004ac:	f65519e3          	bne	a0,t0,9000041e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17had054024a73678b4E.llvm.5475424443479341742+0x28>
    900004b0:	4501                	li	a0,0
    900004b2:	6402                	ld	s0,0(sp)
    900004b4:	60a2                	ld	ra,8(sp)
    900004b6:	0141                	addi	sp,sp,16
    900004b8:	8082                	ret

00000000900004ba <rust_main>:
    900004ba:	7155                	addi	sp,sp,-208
    900004bc:	e586                	sd	ra,200(sp)
    900004be:	e1a2                	sd	s0,192(sp)
    900004c0:	fd26                	sd	s1,184(sp)
    900004c2:	f94a                	sd	s2,176(sp)
    900004c4:	f54e                	sd	s3,168(sp)
    900004c6:	f152                	sd	s4,160(sp)
    900004c8:	ed56                	sd	s5,152(sp)
    900004ca:	e95a                	sd	s6,144(sp)
    900004cc:	e55e                	sd	s7,136(sp)
    900004ce:	e162                	sd	s8,128(sp)
    900004d0:	fce6                	sd	s9,120(sp)
    900004d2:	f8ea                	sd	s10,112(sp)
    900004d4:	0980                	addi	s0,sp,208

00000000900004d6 <.LBB0_10>:
    900004d6:	00013997          	auipc	s3,0x13
    900004da:	b2a98993          	addi	s3,s3,-1238 # 90013000 <boot_stack_top>

00000000900004de <.LBB0_11>:
    900004de:	00013a17          	auipc	s4,0x13
    900004e2:	b22a0a13          	addi	s4,s4,-1246 # 90013000 <boot_stack_top>
    900004e6:	013a7a63          	bgeu	s4,s3,900004fa <.LBB0_11+0x1c>
    900004ea:	8552                	mv	a0,s4
    900004ec:	00150593          	addi	a1,a0,1
    900004f0:	00050023          	sb	zero,0(a0)
    900004f4:	852e                	mv	a0,a1
    900004f6:	ff35ebe3          	bltu	a1,s3,900004ec <.LBB0_11+0xe>
    900004fa:	f7040513          	addi	a0,s0,-144
    900004fe:	f2a43c23          	sd	a0,-200(s0)

0000000090000502 <.LBB0_12>:
    90000502:	00002517          	auipc	a0,0x2
    90000506:	cde50513          	addi	a0,a0,-802 # 900021e0 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.1>
    9000050a:	f6a43823          	sd	a0,-144(s0)
    9000050e:	4505                	li	a0,1
    90000510:	f6a43c23          	sd	a0,-136(s0)
    90000514:	f8043023          	sd	zero,-128(s0)

0000000090000518 <.LBB0_13>:
    90000518:	00002517          	auipc	a0,0x2
    9000051c:	cd850513          	addi	a0,a0,-808 # 900021f0 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.7>
    90000520:	f8a43823          	sd	a0,-112(s0)
    90000524:	f8043c23          	sd	zero,-104(s0)

0000000090000528 <.LBB0_14>:
    90000528:	00002597          	auipc	a1,0x2
    9000052c:	c0058593          	addi	a1,a1,-1024 # 90002128 <anon.29ae6766f1546785cf1924743cd44675.0.llvm.5475424443479341742>
    90000530:	f3840913          	addi	s2,s0,-200
    90000534:	f7040493          	addi	s1,s0,-144
    90000538:	854a                	mv	a0,s2
    9000053a:	8626                	mv	a2,s1
    9000053c:	00000097          	auipc	ra,0x0
    90000540:	30a080e7          	jalr	778(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000544:	1a051a63          	bnez	a0,900006f8 <.LBB0_31>

0000000090000548 <.LBB0_15>:
    90000548:	00000517          	auipc	a0,0x0
    9000054c:	ab850513          	addi	a0,a0,-1352 # 90000000 <_start>
    90000550:	f4a43c23          	sd	a0,-168(s0)

0000000090000554 <.LBB0_16>:
    90000554:	00002517          	auipc	a0,0x2
    90000558:	aac50513          	addi	a0,a0,-1364 # 90002000 <etext>
    9000055c:	f6a43023          	sd	a0,-160(s0)
    90000560:	f5840b13          	addi	s6,s0,-168
    90000564:	f3643c23          	sd	s6,-200(s0)

0000000090000568 <.LBB0_17>:
    90000568:	00001a97          	auipc	s5,0x1
    9000056c:	a2aa8a93          	addi	s5,s5,-1494 # 90000f92 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    90000570:	f5543023          	sd	s5,-192(s0)
    90000574:	f6040b93          	addi	s7,s0,-160
    90000578:	f5743423          	sd	s7,-184(s0)
    9000057c:	f5543823          	sd	s5,-176(s0)
    90000580:	f6943423          	sd	s1,-152(s0)

0000000090000584 <.LBB0_18>:
    90000584:	00002517          	auipc	a0,0x2
    90000588:	c8c50513          	addi	a0,a0,-884 # 90002210 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.10>
    9000058c:	f6a43823          	sd	a0,-144(s0)
    90000590:	4c8d                	li	s9,3
    90000592:	f7943c23          	sd	s9,-136(s0)

0000000090000596 <.LBB0_19>:
    90000596:	00002c17          	auipc	s8,0x2
    9000059a:	caac0c13          	addi	s8,s8,-854 # 90002240 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.11>
    9000059e:	f9843023          	sd	s8,-128(s0)
    900005a2:	4489                	li	s1,2
    900005a4:	f8943423          	sd	s1,-120(s0)
    900005a8:	f9243823          	sd	s2,-112(s0)
    900005ac:	f8943c23          	sd	s1,-104(s0)

00000000900005b0 <.LBB0_20>:
    900005b0:	00002597          	auipc	a1,0x2
    900005b4:	b7858593          	addi	a1,a1,-1160 # 90002128 <anon.29ae6766f1546785cf1924743cd44675.0.llvm.5475424443479341742>
    900005b8:	f6840513          	addi	a0,s0,-152
    900005bc:	f7040d13          	addi	s10,s0,-144
    900005c0:	866a                	mv	a2,s10
    900005c2:	00000097          	auipc	ra,0x0
    900005c6:	284080e7          	jalr	644(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    900005ca:	12051763          	bnez	a0,900006f8 <.LBB0_31>

00000000900005ce <.LBB0_21>:
    900005ce:	00002517          	auipc	a0,0x2
    900005d2:	a3250513          	addi	a0,a0,-1486 # 90002000 <etext>
    900005d6:	f4a43c23          	sd	a0,-168(s0)

00000000900005da <.LBB0_22>:
    900005da:	00003517          	auipc	a0,0x3
    900005de:	a2650513          	addi	a0,a0,-1498 # 90003000 <edata>
    900005e2:	f6a43023          	sd	a0,-160(s0)
    900005e6:	f3643c23          	sd	s6,-200(s0)
    900005ea:	f5543023          	sd	s5,-192(s0)
    900005ee:	f5743423          	sd	s7,-184(s0)
    900005f2:	f5543823          	sd	s5,-176(s0)
    900005f6:	f7a43423          	sd	s10,-152(s0)

00000000900005fa <.LBB0_23>:
    900005fa:	00002517          	auipc	a0,0x2
    900005fe:	cce50513          	addi	a0,a0,-818 # 900022c8 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.17>
    90000602:	f6a43823          	sd	a0,-144(s0)
    90000606:	f7943c23          	sd	s9,-136(s0)
    9000060a:	f9843023          	sd	s8,-128(s0)
    9000060e:	f8943423          	sd	s1,-120(s0)
    90000612:	f9243823          	sd	s2,-112(s0)
    90000616:	f8943c23          	sd	s1,-104(s0)

000000009000061a <.LBB0_24>:
    9000061a:	00002597          	auipc	a1,0x2
    9000061e:	b0e58593          	addi	a1,a1,-1266 # 90002128 <anon.29ae6766f1546785cf1924743cd44675.0.llvm.5475424443479341742>
    90000622:	f6840513          	addi	a0,s0,-152
    90000626:	f7040493          	addi	s1,s0,-144
    9000062a:	8626                	mv	a2,s1
    9000062c:	00000097          	auipc	ra,0x0
    90000630:	21a080e7          	jalr	538(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000634:	e171                	bnez	a0,900006f8 <.LBB0_31>

0000000090000636 <.LBB0_25>:
    90000636:	00003517          	auipc	a0,0x3
    9000063a:	9ca50513          	addi	a0,a0,-1590 # 90003000 <edata>
    9000063e:	f4a43c23          	sd	a0,-168(s0)

0000000090000642 <.LBB0_26>:
    90000642:	00003517          	auipc	a0,0x3
    90000646:	9be50513          	addi	a0,a0,-1602 # 90003000 <edata>
    9000064a:	f6a43023          	sd	a0,-160(s0)
    9000064e:	f3643c23          	sd	s6,-200(s0)
    90000652:	f5543023          	sd	s5,-192(s0)
    90000656:	f5743423          	sd	s7,-184(s0)
    9000065a:	f5543823          	sd	s5,-176(s0)
    9000065e:	f6943423          	sd	s1,-152(s0)

0000000090000662 <.LBB0_27>:
    90000662:	00002517          	auipc	a0,0x2
    90000666:	cae50513          	addi	a0,a0,-850 # 90002310 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.19>
    9000066a:	f6a43823          	sd	a0,-144(s0)
    9000066e:	4d0d                	li	s10,3
    90000670:	f7a43c23          	sd	s10,-136(s0)
    90000674:	f9843023          	sd	s8,-128(s0)
    90000678:	4489                	li	s1,2
    9000067a:	f8943423          	sd	s1,-120(s0)
    9000067e:	f9243823          	sd	s2,-112(s0)
    90000682:	f8943c23          	sd	s1,-104(s0)

0000000090000686 <.LBB0_28>:
    90000686:	00002597          	auipc	a1,0x2
    9000068a:	aa258593          	addi	a1,a1,-1374 # 90002128 <anon.29ae6766f1546785cf1924743cd44675.0.llvm.5475424443479341742>
    9000068e:	f6840513          	addi	a0,s0,-152
    90000692:	f7040c93          	addi	s9,s0,-144
    90000696:	8666                	mv	a2,s9
    90000698:	00000097          	auipc	ra,0x0
    9000069c:	1ae080e7          	jalr	430(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    900006a0:	ed21                	bnez	a0,900006f8 <.LBB0_31>
    900006a2:	f5443c23          	sd	s4,-168(s0)
    900006a6:	f7343023          	sd	s3,-160(s0)
    900006aa:	f3643c23          	sd	s6,-200(s0)
    900006ae:	f5543023          	sd	s5,-192(s0)
    900006b2:	f5743423          	sd	s7,-184(s0)
    900006b6:	f5543823          	sd	s5,-176(s0)
    900006ba:	f7943423          	sd	s9,-152(s0)

00000000900006be <.LBB0_29>:
    900006be:	00002517          	auipc	a0,0x2
    900006c2:	c9a50513          	addi	a0,a0,-870 # 90002358 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.21>
    900006c6:	f6a43823          	sd	a0,-144(s0)
    900006ca:	f7a43c23          	sd	s10,-136(s0)
    900006ce:	f9843023          	sd	s8,-128(s0)
    900006d2:	f8943423          	sd	s1,-120(s0)
    900006d6:	f9243823          	sd	s2,-112(s0)
    900006da:	f8943c23          	sd	s1,-104(s0)

00000000900006de <.LBB0_30>:
    900006de:	00002597          	auipc	a1,0x2
    900006e2:	a4a58593          	addi	a1,a1,-1462 # 90002128 <anon.29ae6766f1546785cf1924743cd44675.0.llvm.5475424443479341742>
    900006e6:	f6840513          	addi	a0,s0,-152
    900006ea:	f7040613          	addi	a2,s0,-144
    900006ee:	00000097          	auipc	ra,0x0
    900006f2:	158080e7          	jalr	344(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    900006f6:	c515                	beqz	a0,90000722 <.LBB0_34>

00000000900006f8 <.LBB0_31>:
    900006f8:	00002517          	auipc	a0,0x2
    900006fc:	a6050513          	addi	a0,a0,-1440 # 90002158 <anon.29ae6766f1546785cf1924743cd44675.1.llvm.5475424443479341742>

0000000090000700 <.LBB0_32>:
    90000700:	00002697          	auipc	a3,0x2
    90000704:	a8868693          	addi	a3,a3,-1400 # 90002188 <anon.29ae6766f1546785cf1924743cd44675.2.llvm.5475424443479341742>

0000000090000708 <.LBB0_33>:
    90000708:	00002717          	auipc	a4,0x2
    9000070c:	ab070713          	addi	a4,a4,-1360 # 900021b8 <anon.29ae6766f1546785cf1924743cd44675.4.llvm.5475424443479341742>
    90000710:	f7040613          	addi	a2,s0,-144
    90000714:	02b00593          	li	a1,43
    90000718:	00000097          	auipc	ra,0x0
    9000071c:	048080e7          	jalr	72(ra) # 90000760 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000722 <.LBB0_34>:
    90000722:	00002517          	auipc	a0,0x2
    90000726:	c6650513          	addi	a0,a0,-922 # 90002388 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.22>

000000009000072a <.LBB0_35>:
    9000072a:	00002617          	auipc	a2,0x2
    9000072e:	c7e60613          	addi	a2,a2,-898 # 900023a8 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.24>
    90000732:	45c5                	li	a1,17
    90000734:	00000097          	auipc	ra,0x0
    90000738:	08c080e7          	jalr	140(ra) # 900007c0 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000009000073e <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>:
    9000073e:	6108                	ld	a0,0(a0)
    90000740:	a001                	j	90000740 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E+0x2>

0000000090000742 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2c14ec9a62b1a876E>:
    90000742:	8082                	ret

0000000090000744 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7108e12ad9db6507E>:
    90000744:	0160f537          	lui	a0,0x160f
    90000748:	6275051b          	addiw	a0,a0,1575
    9000074c:	0536                	slli	a0,a0,0xd
    9000074e:	3d750513          	addi	a0,a0,983 # 160f3d7 <.Lline_table_start0+0x15f252d>
    90000752:	0532                	slli	a0,a0,0xc
    90000754:	f8150513          	addi	a0,a0,-127
    90000758:	0532                	slli	a0,a0,0xc
    9000075a:	f4250513          	addi	a0,a0,-190
    9000075e:	8082                	ret

0000000090000760 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>:
    90000760:	7119                	addi	sp,sp,-128
    90000762:	fc86                	sd	ra,120(sp)
    90000764:	e42a                	sd	a0,8(sp)
    90000766:	e82e                	sd	a1,16(sp)
    90000768:	ec32                	sd	a2,24(sp)
    9000076a:	f036                	sd	a3,32(sp)
    9000076c:	0028                	addi	a0,sp,8
    9000076e:	ecaa                	sd	a0,88(sp)

0000000090000770 <.LBB118_1>:
    90000770:	00001517          	auipc	a0,0x1
    90000774:	c3450513          	addi	a0,a0,-972 # 900013a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    90000778:	f0aa                	sd	a0,96(sp)
    9000077a:	0828                	addi	a0,sp,24
    9000077c:	f4aa                	sd	a0,104(sp)

000000009000077e <.LBB118_2>:
    9000077e:	00001517          	auipc	a0,0x1
    90000782:	c1e50513          	addi	a0,a0,-994 # 9000139c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>
    90000786:	f8aa                	sd	a0,112(sp)

0000000090000788 <.LBB118_3>:
    90000788:	00002517          	auipc	a0,0x2
    9000078c:	c4050513          	addi	a0,a0,-960 # 900023c8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.178>
    90000790:	f42a                	sd	a0,40(sp)
    90000792:	4509                	li	a0,2
    90000794:	f82a                	sd	a0,48(sp)
    90000796:	fc02                	sd	zero,56(sp)
    90000798:	08ac                	addi	a1,sp,88
    9000079a:	e4ae                	sd	a1,72(sp)
    9000079c:	e8aa                	sd	a0,80(sp)
    9000079e:	1028                	addi	a0,sp,40
    900007a0:	85ba                	mv	a1,a4
    900007a2:	00000097          	auipc	ra,0x0
    900007a6:	04a080e7          	jalr	74(ra) # 900007ec <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000900007ac <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>:
    900007ac:	6908                	ld	a0,16(a0)
    900007ae:	8082                	ret

00000000900007b0 <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>:
    900007b0:	6d08                	ld	a0,24(a0)
    900007b2:	8082                	ret

00000000900007b4 <_ZN4core5panic8Location4file17h3a63c909928b6622E>:
    900007b4:	6110                	ld	a2,0(a0)
    900007b6:	650c                	ld	a1,8(a0)
    900007b8:	8532                	mv	a0,a2
    900007ba:	8082                	ret

00000000900007bc <_ZN4core5panic8Location4line17h438064cf29667b6aE>:
    900007bc:	4908                	lw	a0,16(a0)
    900007be:	8082                	ret

00000000900007c0 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>:
    900007c0:	715d                	addi	sp,sp,-80
    900007c2:	e486                	sd	ra,72(sp)
    900007c4:	fc2a                	sd	a0,56(sp)
    900007c6:	e0ae                	sd	a1,64(sp)
    900007c8:	1828                	addi	a0,sp,56
    900007ca:	e42a                	sd	a0,8(sp)
    900007cc:	4505                	li	a0,1
    900007ce:	e82a                	sd	a0,16(sp)
    900007d0:	ec02                	sd	zero,24(sp)

00000000900007d2 <.LBB129_1>:
    900007d2:	00002517          	auipc	a0,0x2
    900007d6:	bee50513          	addi	a0,a0,-1042 # 900023c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    900007da:	f42a                	sd	a0,40(sp)
    900007dc:	f802                	sd	zero,48(sp)
    900007de:	0028                	addi	a0,sp,8
    900007e0:	85b2                	mv	a1,a2
    900007e2:	00000097          	auipc	ra,0x0
    900007e6:	00a080e7          	jalr	10(ra) # 900007ec <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000900007ec <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>:
    900007ec:	7179                	addi	sp,sp,-48
    900007ee:	f406                	sd	ra,40(sp)

00000000900007f0 <.LBB131_1>:
    900007f0:	00002617          	auipc	a2,0x2
    900007f4:	bd060613          	addi	a2,a2,-1072 # 900023c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    900007f8:	e432                	sd	a2,8(sp)

00000000900007fa <.LBB131_2>:
    900007fa:	00002617          	auipc	a2,0x2
    900007fe:	bee60613          	addi	a2,a2,-1042 # 900023e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.179>
    90000802:	e832                	sd	a2,16(sp)
    90000804:	ec2a                	sd	a0,24(sp)
    90000806:	f02e                	sd	a1,32(sp)
    90000808:	0028                	addi	a0,sp,8
    9000080a:	00000097          	auipc	ra,0x0
    9000080e:	836080e7          	jalr	-1994(ra) # 90000040 <rust_begin_unwind>
	...

0000000090000814 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>:
    90000814:	7139                	addi	sp,sp,-64
    90000816:	fc06                	sd	ra,56(sp)
    90000818:	7510                	ld	a2,40(a0)
    9000081a:	7118                	ld	a4,32(a0)
    9000081c:	7194                	ld	a3,32(a1)
    9000081e:	758c                	ld	a1,40(a1)
    90000820:	f832                	sd	a2,48(sp)
    90000822:	f43a                	sd	a4,40(sp)
    90000824:	6d10                	ld	a2,24(a0)
    90000826:	6918                	ld	a4,16(a0)
    90000828:	651c                	ld	a5,8(a0)
    9000082a:	6108                	ld	a0,0(a0)
    9000082c:	f032                	sd	a2,32(sp)
    9000082e:	ec3a                	sd	a4,24(sp)
    90000830:	e83e                	sd	a5,16(sp)
    90000832:	e42a                	sd	a0,8(sp)
    90000834:	0030                	addi	a2,sp,8
    90000836:	8536                	mv	a0,a3
    90000838:	00000097          	auipc	ra,0x0
    9000083c:	00e080e7          	jalr	14(ra) # 90000846 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000840:	70e2                	ld	ra,56(sp)
    90000842:	6121                	addi	sp,sp,64
    90000844:	8082                	ret

0000000090000846 <_ZN4core3fmt5write17h338141860f5a80fbE>:
    90000846:	7135                	addi	sp,sp,-160
    90000848:	ed06                	sd	ra,152(sp)
    9000084a:	e922                	sd	s0,144(sp)
    9000084c:	e526                	sd	s1,136(sp)
    9000084e:	e14a                	sd	s2,128(sp)
    90000850:	fcce                	sd	s3,120(sp)
    90000852:	f8d2                	sd	s4,112(sp)
    90000854:	f4d6                	sd	s5,104(sp)
    90000856:	f0da                	sd	s6,96(sp)
    90000858:	ecde                	sd	s7,88(sp)
    9000085a:	e8e2                	sd	s8,80(sp)
    9000085c:	e4e6                	sd	s9,72(sp)
    9000085e:	8432                	mv	s0,a2
    90000860:	4605                	li	a2,1
    90000862:	1616                	slli	a2,a2,0x25
    90000864:	fc32                	sd	a2,56(sp)
    90000866:	460d                	li	a2,3
    90000868:	04c10023          	sb	a2,64(sp) # 90013040 <boot_stack_top+0x40>
    9000086c:	6804                	ld	s1,16(s0)
    9000086e:	e402                	sd	zero,8(sp)
    90000870:	ec02                	sd	zero,24(sp)
    90000872:	f42a                	sd	a0,40(sp)
    90000874:	f82e                	sd	a1,48(sp)
    90000876:	cce9                	beqz	s1,90000950 <.LBB167_35+0x9e>
    90000878:	6c10                	ld	a2,24(s0)
    9000087a:	00843983          	ld	s3,8(s0)
    9000087e:	00043903          	ld	s2,0(s0)
    90000882:	8ace                	mv	s5,s3
    90000884:	00c9e363          	bltu	s3,a2,9000088a <_ZN4core3fmt5write17h338141860f5a80fbE+0x44>
    90000888:	8ab2                	mv	s5,a2
    9000088a:	120a8163          	beqz	s5,900009ac <.LBB167_35+0xfa>
    9000088e:	00093683          	ld	a3,0(s2)
    90000892:	00893603          	ld	a2,8(s2)
    90000896:	6d98                	ld	a4,24(a1)
    90000898:	85b6                	mv	a1,a3
    9000089a:	9702                	jalr	a4
    9000089c:	12051663          	bnez	a0,900009c8 <.LBB167_35+0x116>
    900008a0:	02043c03          	ld	s8,32(s0)
    900008a4:	03048493          	addi	s1,s1,48
    900008a8:	01890c93          	addi	s9,s2,24
    900008ac:	00810a13          	addi	s4,sp,8
    900008b0:	4b09                	li	s6,2

00000000900008b2 <.LBB167_35>:
    900008b2:	00000b97          	auipc	s7,0x0
    900008b6:	e8cb8b93          	addi	s7,s7,-372 # 9000073e <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>
    900008ba:	8456                	mv	s0,s5
    900008bc:	ff84a503          	lw	a0,-8(s1)
    900008c0:	de2a                	sw	a0,60(sp)
    900008c2:	00048503          	lb	a0,0(s1)
    900008c6:	04a10023          	sb	a0,64(sp)
    900008ca:	ffc4a503          	lw	a0,-4(s1)
    900008ce:	dc2a                	sw	a0,56(sp)
    900008d0:	fe84b603          	ld	a2,-24(s1)
    900008d4:	ff04b503          	ld	a0,-16(s1)
    900008d8:	ca19                	beqz	a2,900008ee <.LBB167_35+0x3c>
    900008da:	4581                	li	a1,0
    900008dc:	01660c63          	beq	a2,s6,900008f4 <.LBB167_35+0x42>
    900008e0:	0512                	slli	a0,a0,0x4
    900008e2:	9562                	add	a0,a0,s8
    900008e4:	650c                	ld	a1,8(a0)
    900008e6:	01759663          	bne	a1,s7,900008f2 <.LBB167_35+0x40>
    900008ea:	6108                	ld	a0,0(a0)
    900008ec:	6108                	ld	a0,0(a0)
    900008ee:	4585                	li	a1,1
    900008f0:	a011                	j	900008f4 <.LBB167_35+0x42>
    900008f2:	4581                	li	a1,0
    900008f4:	e42e                	sd	a1,8(sp)
    900008f6:	e82a                	sd	a0,16(sp)
    900008f8:	fd84b603          	ld	a2,-40(s1)
    900008fc:	fe04b503          	ld	a0,-32(s1)
    90000900:	ca19                	beqz	a2,90000916 <.LBB167_35+0x64>
    90000902:	4581                	li	a1,0
    90000904:	01660c63          	beq	a2,s6,9000091c <.LBB167_35+0x6a>
    90000908:	0512                	slli	a0,a0,0x4
    9000090a:	9562                	add	a0,a0,s8
    9000090c:	650c                	ld	a1,8(a0)
    9000090e:	01759663          	bne	a1,s7,9000091a <.LBB167_35+0x68>
    90000912:	6108                	ld	a0,0(a0)
    90000914:	6108                	ld	a0,0(a0)
    90000916:	4585                	li	a1,1
    90000918:	a011                	j	9000091c <.LBB167_35+0x6a>
    9000091a:	4581                	li	a1,0
    9000091c:	ec2e                	sd	a1,24(sp)
    9000091e:	f02a                	sd	a0,32(sp)
    90000920:	fd04b503          	ld	a0,-48(s1)
    90000924:	0512                	slli	a0,a0,0x4
    90000926:	9562                	add	a0,a0,s8
    90000928:	6510                	ld	a2,8(a0)
    9000092a:	6108                	ld	a0,0(a0)
    9000092c:	85d2                	mv	a1,s4
    9000092e:	9602                	jalr	a2
    90000930:	ed41                	bnez	a0,900009c8 <.LBB167_35+0x116>
    90000932:	147d                	addi	s0,s0,-1
    90000934:	cc2d                	beqz	s0,900009ae <.LBB167_35+0xfc>
    90000936:	76c2                	ld	a3,48(sp)
    90000938:	7522                	ld	a0,40(sp)
    9000093a:	ff8cb583          	ld	a1,-8(s9)
    9000093e:	000cb603          	ld	a2,0(s9)
    90000942:	6e94                	ld	a3,24(a3)
    90000944:	03848493          	addi	s1,s1,56
    90000948:	0cc1                	addi	s9,s9,16
    9000094a:	9682                	jalr	a3
    9000094c:	d925                	beqz	a0,900008bc <.LBB167_35+0xa>
    9000094e:	a8ad                	j	900009c8 <.LBB167_35+0x116>
    90000950:	7004                	ld	s1,32(s0)
    90000952:	7410                	ld	a2,40(s0)
    90000954:	00843983          	ld	s3,8(s0)
    90000958:	00043903          	ld	s2,0(s0)
    9000095c:	8ace                	mv	s5,s3
    9000095e:	00c9e363          	bltu	s3,a2,90000964 <.LBB167_35+0xb2>
    90000962:	8ab2                	mv	s5,a2
    90000964:	040a8463          	beqz	s5,900009ac <.LBB167_35+0xfa>
    90000968:	00093683          	ld	a3,0(s2)
    9000096c:	00893603          	ld	a2,8(s2)
    90000970:	6d98                	ld	a4,24(a1)
    90000972:	85b6                	mv	a1,a3
    90000974:	9702                	jalr	a4
    90000976:	e929                	bnez	a0,900009c8 <.LBB167_35+0x116>
    90000978:	04a1                	addi	s1,s1,8
    9000097a:	01890b13          	addi	s6,s2,24
    9000097e:	00810a13          	addi	s4,sp,8
    90000982:	8456                	mv	s0,s5
    90000984:	6090                	ld	a2,0(s1)
    90000986:	ff84b503          	ld	a0,-8(s1)
    9000098a:	85d2                	mv	a1,s4
    9000098c:	9602                	jalr	a2
    9000098e:	ed0d                	bnez	a0,900009c8 <.LBB167_35+0x116>
    90000990:	147d                	addi	s0,s0,-1
    90000992:	cc11                	beqz	s0,900009ae <.LBB167_35+0xfc>
    90000994:	76c2                	ld	a3,48(sp)
    90000996:	7522                	ld	a0,40(sp)
    90000998:	ff8b3583          	ld	a1,-8(s6)
    9000099c:	000b3603          	ld	a2,0(s6)
    900009a0:	6e94                	ld	a3,24(a3)
    900009a2:	04c1                	addi	s1,s1,16
    900009a4:	0b41                	addi	s6,s6,16
    900009a6:	9682                	jalr	a3
    900009a8:	dd71                	beqz	a0,90000984 <.LBB167_35+0xd2>
    900009aa:	a839                	j	900009c8 <.LBB167_35+0x116>
    900009ac:	4a81                	li	s5,0
    900009ae:	013aff63          	bgeu	s5,s3,900009cc <.LBB167_35+0x11a>
    900009b2:	7522                	ld	a0,40(sp)
    900009b4:	76c2                	ld	a3,48(sp)
    900009b6:	004a9593          	slli	a1,s5,0x4
    900009ba:	00b90633          	add	a2,s2,a1
    900009be:	620c                	ld	a1,0(a2)
    900009c0:	6610                	ld	a2,8(a2)
    900009c2:	6e94                	ld	a3,24(a3)
    900009c4:	9682                	jalr	a3
    900009c6:	c119                	beqz	a0,900009cc <.LBB167_35+0x11a>
    900009c8:	4505                	li	a0,1
    900009ca:	a011                	j	900009ce <.LBB167_35+0x11c>
    900009cc:	4501                	li	a0,0
    900009ce:	6ca6                	ld	s9,72(sp)
    900009d0:	6c46                	ld	s8,80(sp)
    900009d2:	6be6                	ld	s7,88(sp)
    900009d4:	7b06                	ld	s6,96(sp)
    900009d6:	7aa6                	ld	s5,104(sp)
    900009d8:	7a46                	ld	s4,112(sp)
    900009da:	79e6                	ld	s3,120(sp)
    900009dc:	690a                	ld	s2,128(sp)
    900009de:	64aa                	ld	s1,136(sp)
    900009e0:	644a                	ld	s0,144(sp)
    900009e2:	60ea                	ld	ra,152(sp)
    900009e4:	610d                	addi	sp,sp,160
    900009e6:	8082                	ret

00000000900009e8 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>:
    900009e8:	7159                	addi	sp,sp,-112
    900009ea:	f486                	sd	ra,104(sp)
    900009ec:	f0a2                	sd	s0,96(sp)
    900009ee:	eca6                	sd	s1,88(sp)
    900009f0:	e8ca                	sd	s2,80(sp)
    900009f2:	e4ce                	sd	s3,72(sp)
    900009f4:	e0d2                	sd	s4,64(sp)
    900009f6:	fc56                	sd	s5,56(sp)
    900009f8:	f85a                	sd	s6,48(sp)
    900009fa:	f45e                	sd	s7,40(sp)
    900009fc:	f062                	sd	s8,32(sp)
    900009fe:	ec66                	sd	s9,24(sp)
    90000a00:	e86a                	sd	s10,16(sp)
    90000a02:	e46e                	sd	s11,8(sp)
    90000a04:	89be                	mv	s3,a5
    90000a06:	893a                	mv	s2,a4
    90000a08:	8ab6                	mv	s5,a3
    90000a0a:	842a                	mv	s0,a0
    90000a0c:	c9b1                	beqz	a1,90000a60 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x78>
    90000a0e:	03046503          	lwu	a0,48(s0)
    90000a12:	00157593          	andi	a1,a0,1
    90000a16:	00110a37          	lui	s4,0x110
    90000a1a:	c199                	beqz	a1,90000a20 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x38>
    90000a1c:	02b00a13          	li	s4,43
    90000a20:	01358cb3          	add	s9,a1,s3
    90000a24:	00457593          	andi	a1,a0,4
    90000a28:	c5a9                	beqz	a1,90000a72 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x8a>
    90000a2a:	4581                	li	a1,0
    90000a2c:	020a8063          	beqz	s5,90000a4c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x64>
    90000a30:	86d6                	mv	a3,s5
    90000a32:	8732                	mv	a4,a2
    90000a34:	00074783          	lbu	a5,0(a4)
    90000a38:	0705                	addi	a4,a4,1
    90000a3a:	0c07f793          	andi	a5,a5,192
    90000a3e:	f8078793          	addi	a5,a5,-128
    90000a42:	0017b793          	seqz	a5,a5
    90000a46:	16fd                	addi	a3,a3,-1
    90000a48:	95be                	add	a1,a1,a5
    90000a4a:	f6ed                	bnez	a3,90000a34 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x4c>
    90000a4c:	015c86b3          	add	a3,s9,s5
    90000a50:	40b68cb3          	sub	s9,a3,a1
    90000a54:	8b32                	mv	s6,a2
    90000a56:	600c                	ld	a1,0(s0)
    90000a58:	4d85                	li	s11,1
    90000a5a:	03b58163          	beq	a1,s11,90000a7c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x94>
    90000a5e:	a0b1                	j	90000aaa <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90000a60:	03046503          	lwu	a0,48(s0)
    90000a64:	00198c93          	addi	s9,s3,1
    90000a68:	02d00a13          	li	s4,45
    90000a6c:	00457593          	andi	a1,a0,4
    90000a70:	fdcd                	bnez	a1,90000a2a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x42>
    90000a72:	4b01                	li	s6,0
    90000a74:	600c                	ld	a1,0(s0)
    90000a76:	4d85                	li	s11,1
    90000a78:	03b59963          	bne	a1,s11,90000aaa <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90000a7c:	00843d03          	ld	s10,8(s0)
    90000a80:	03acf563          	bgeu	s9,s10,90000aaa <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90000a84:	8921                	andi	a0,a0,8
    90000a86:	ed3d                	bnez	a0,90000b04 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x11c>
    90000a88:	03844503          	lbu	a0,56(s0)
    90000a8c:	4585                	li	a1,1
    90000a8e:	468d                	li	a3,3
    90000a90:	4605                	li	a2,1
    90000a92:	00d50363          	beq	a0,a3,90000a98 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xb0>
    90000a96:	862a                	mv	a2,a0
    90000a98:	8a0d                	andi	a2,a2,3
    90000a9a:	419d0533          	sub	a0,s10,s9
    90000a9e:	0ac5c763          	blt	a1,a2,90000b4c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x164>
    90000aa2:	ea45                	bnez	a2,90000b52 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16a>
    90000aa4:	8c2a                	mv	s8,a0
    90000aa6:	4501                	li	a0,0
    90000aa8:	a0c9                	j	90000b6a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    90000aaa:	8522                	mv	a0,s0
    90000aac:	85d2                	mv	a1,s4
    90000aae:	865a                	mv	a2,s6
    90000ab0:	86d6                	mv	a3,s5
    90000ab2:	00000097          	auipc	ra,0x0
    90000ab6:	174080e7          	jalr	372(ra) # 90000c26 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    90000aba:	c10d                	beqz	a0,90000adc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xf4>
    90000abc:	856e                	mv	a0,s11
    90000abe:	6da2                	ld	s11,8(sp)
    90000ac0:	6d42                	ld	s10,16(sp)
    90000ac2:	6ce2                	ld	s9,24(sp)
    90000ac4:	7c02                	ld	s8,32(sp)
    90000ac6:	7ba2                	ld	s7,40(sp)
    90000ac8:	7b42                	ld	s6,48(sp)
    90000aca:	7ae2                	ld	s5,56(sp)
    90000acc:	6a06                	ld	s4,64(sp)
    90000ace:	69a6                	ld	s3,72(sp)
    90000ad0:	6946                	ld	s2,80(sp)
    90000ad2:	64e6                	ld	s1,88(sp)
    90000ad4:	7406                	ld	s0,96(sp)
    90000ad6:	70a6                	ld	ra,104(sp)
    90000ad8:	6165                	addi	sp,sp,112
    90000ada:	8082                	ret
    90000adc:	740c                	ld	a1,40(s0)
    90000ade:	7008                	ld	a0,32(s0)
    90000ae0:	6d9c                	ld	a5,24(a1)
    90000ae2:	85ca                	mv	a1,s2
    90000ae4:	864e                	mv	a2,s3
    90000ae6:	6da2                	ld	s11,8(sp)
    90000ae8:	6d42                	ld	s10,16(sp)
    90000aea:	6ce2                	ld	s9,24(sp)
    90000aec:	7c02                	ld	s8,32(sp)
    90000aee:	7ba2                	ld	s7,40(sp)
    90000af0:	7b42                	ld	s6,48(sp)
    90000af2:	7ae2                	ld	s5,56(sp)
    90000af4:	6a06                	ld	s4,64(sp)
    90000af6:	69a6                	ld	s3,72(sp)
    90000af8:	6946                	ld	s2,80(sp)
    90000afa:	64e6                	ld	s1,88(sp)
    90000afc:	7406                	ld	s0,96(sp)
    90000afe:	70a6                	ld	ra,104(sp)
    90000b00:	6165                	addi	sp,sp,112
    90000b02:	8782                	jr	a5
    90000b04:	03446b83          	lwu	s7,52(s0)
    90000b08:	03000513          	li	a0,48
    90000b0c:	03844c03          	lbu	s8,56(s0)
    90000b10:	d848                	sw	a0,52(s0)
    90000b12:	4d85                	li	s11,1
    90000b14:	03b40c23          	sb	s11,56(s0)
    90000b18:	8522                	mv	a0,s0
    90000b1a:	85d2                	mv	a1,s4
    90000b1c:	865a                	mv	a2,s6
    90000b1e:	86d6                	mv	a3,s5
    90000b20:	00000097          	auipc	ra,0x0
    90000b24:	106080e7          	jalr	262(ra) # 90000c26 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    90000b28:	f951                	bnez	a0,90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90000b2a:	03844503          	lbu	a0,56(s0)
    90000b2e:	4585                	li	a1,1
    90000b30:	468d                	li	a3,3
    90000b32:	4605                	li	a2,1
    90000b34:	00d50363          	beq	a0,a3,90000b3a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x152>
    90000b38:	862a                	mv	a2,a0
    90000b3a:	8a0d                	andi	a2,a2,3
    90000b3c:	419d0533          	sub	a0,s10,s9
    90000b40:	00c5cb63          	blt	a1,a2,90000b56 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16e>
    90000b44:	ee01                	bnez	a2,90000b5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x174>
    90000b46:	8aaa                	mv	s5,a0
    90000b48:	4501                	li	a0,0
    90000b4a:	a041                	j	90000bca <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    90000b4c:	458d                	li	a1,3
    90000b4e:	00b61963          	bne	a2,a1,90000b60 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x178>
    90000b52:	4c01                	li	s8,0
    90000b54:	a819                	j	90000b6a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    90000b56:	458d                	li	a1,3
    90000b58:	06b61463          	bne	a2,a1,90000bc0 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1d8>
    90000b5c:	4a81                	li	s5,0
    90000b5e:	a0b5                	j	90000bca <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    90000b60:	00150593          	addi	a1,a0,1
    90000b64:	8105                	srli	a0,a0,0x1
    90000b66:	0015dc13          	srli	s8,a1,0x1
    90000b6a:	00150493          	addi	s1,a0,1
    90000b6e:	14fd                	addi	s1,s1,-1
    90000b70:	c881                	beqz	s1,90000b80 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x198>
    90000b72:	740c                	ld	a1,40(s0)
    90000b74:	7008                	ld	a0,32(s0)
    90000b76:	7190                	ld	a2,32(a1)
    90000b78:	584c                	lw	a1,52(s0)
    90000b7a:	9602                	jalr	a2
    90000b7c:	d96d                	beqz	a0,90000b6e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x186>
    90000b7e:	a085                	j	90000bde <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1f6>
    90000b80:	03446b83          	lwu	s7,52(s0)
    90000b84:	8522                	mv	a0,s0
    90000b86:	85d2                	mv	a1,s4
    90000b88:	865a                	mv	a2,s6
    90000b8a:	86d6                	mv	a3,s5
    90000b8c:	00000097          	auipc	ra,0x0
    90000b90:	09a080e7          	jalr	154(ra) # 90000c26 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    90000b94:	4d85                	li	s11,1
    90000b96:	f11d                	bnez	a0,90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90000b98:	740c                	ld	a1,40(s0)
    90000b9a:	7008                	ld	a0,32(s0)
    90000b9c:	6d94                	ld	a3,24(a1)
    90000b9e:	85ca                	mv	a1,s2
    90000ba0:	864e                	mv	a2,s3
    90000ba2:	9682                	jalr	a3
    90000ba4:	fd01                	bnez	a0,90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90000ba6:	02043903          	ld	s2,32(s0)
    90000baa:	7400                	ld	s0,40(s0)
    90000bac:	001c0493          	addi	s1,s8,1
    90000bb0:	14fd                	addi	s1,s1,-1
    90000bb2:	c0b5                	beqz	s1,90000c16 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x22e>
    90000bb4:	7010                	ld	a2,32(s0)
    90000bb6:	854a                	mv	a0,s2
    90000bb8:	85de                	mv	a1,s7
    90000bba:	9602                	jalr	a2
    90000bbc:	d975                	beqz	a0,90000bb0 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1c8>
    90000bbe:	bdfd                	j	90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90000bc0:	00150593          	addi	a1,a0,1
    90000bc4:	8105                	srli	a0,a0,0x1
    90000bc6:	0015da93          	srli	s5,a1,0x1
    90000bca:	00150493          	addi	s1,a0,1
    90000bce:	14fd                	addi	s1,s1,-1
    90000bd0:	c889                	beqz	s1,90000be2 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1fa>
    90000bd2:	740c                	ld	a1,40(s0)
    90000bd4:	7008                	ld	a0,32(s0)
    90000bd6:	7190                	ld	a2,32(a1)
    90000bd8:	584c                	lw	a1,52(s0)
    90000bda:	9602                	jalr	a2
    90000bdc:	d96d                	beqz	a0,90000bce <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e6>
    90000bde:	4d85                	li	s11,1
    90000be0:	bdf1                	j	90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90000be2:	740c                	ld	a1,40(s0)
    90000be4:	03446a03          	lwu	s4,52(s0)
    90000be8:	7008                	ld	a0,32(s0)
    90000bea:	6d94                	ld	a3,24(a1)
    90000bec:	85ca                	mv	a1,s2
    90000bee:	864e                	mv	a2,s3
    90000bf0:	9682                	jalr	a3
    90000bf2:	4d85                	li	s11,1
    90000bf4:	ec0514e3          	bnez	a0,90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90000bf8:	02043903          	ld	s2,32(s0)
    90000bfc:	02843983          	ld	s3,40(s0)
    90000c00:	001a8493          	addi	s1,s5,1
    90000c04:	14fd                	addi	s1,s1,-1
    90000c06:	c891                	beqz	s1,90000c1a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x232>
    90000c08:	0209b603          	ld	a2,32(s3)
    90000c0c:	854a                	mv	a0,s2
    90000c0e:	85d2                	mv	a1,s4
    90000c10:	9602                	jalr	a2
    90000c12:	d96d                	beqz	a0,90000c04 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x21c>
    90000c14:	b565                	j	90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90000c16:	4d81                	li	s11,0
    90000c18:	b555                	j	90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90000c1a:	4d81                	li	s11,0
    90000c1c:	03742a23          	sw	s7,52(s0)
    90000c20:	03840c23          	sb	s8,56(s0)
    90000c24:	bd61                	j	90000abc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>

0000000090000c26 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>:
    90000c26:	1101                	addi	sp,sp,-32
    90000c28:	ec06                	sd	ra,24(sp)
    90000c2a:	e822                	sd	s0,16(sp)
    90000c2c:	e426                	sd	s1,8(sp)
    90000c2e:	e04a                	sd	s2,0(sp)
    90000c30:	02059713          	slli	a4,a1,0x20
    90000c34:	9301                	srli	a4,a4,0x20
    90000c36:	001107b7          	lui	a5,0x110
    90000c3a:	8936                	mv	s2,a3
    90000c3c:	84b2                	mv	s1,a2
    90000c3e:	842a                	mv	s0,a0
    90000c40:	00f70963          	beq	a4,a5,90000c52 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x2c>
    90000c44:	7410                	ld	a2,40(s0)
    90000c46:	7008                	ld	a0,32(s0)
    90000c48:	7210                	ld	a2,32(a2)
    90000c4a:	9602                	jalr	a2
    90000c4c:	85aa                	mv	a1,a0
    90000c4e:	4505                	li	a0,1
    90000c50:	ed91                	bnez	a1,90000c6c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x46>
    90000c52:	cc81                	beqz	s1,90000c6a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x44>
    90000c54:	740c                	ld	a1,40(s0)
    90000c56:	7008                	ld	a0,32(s0)
    90000c58:	6d9c                	ld	a5,24(a1)
    90000c5a:	85a6                	mv	a1,s1
    90000c5c:	864a                	mv	a2,s2
    90000c5e:	6902                	ld	s2,0(sp)
    90000c60:	64a2                	ld	s1,8(sp)
    90000c62:	6442                	ld	s0,16(sp)
    90000c64:	60e2                	ld	ra,24(sp)
    90000c66:	6105                	addi	sp,sp,32
    90000c68:	8782                	jr	a5
    90000c6a:	4501                	li	a0,0
    90000c6c:	6902                	ld	s2,0(sp)
    90000c6e:	64a2                	ld	s1,8(sp)
    90000c70:	6442                	ld	s0,16(sp)
    90000c72:	60e2                	ld	ra,24(sp)
    90000c74:	6105                	addi	sp,sp,32
    90000c76:	8082                	ret

0000000090000c78 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>:
    90000c78:	7139                	addi	sp,sp,-64
    90000c7a:	fc06                	sd	ra,56(sp)
    90000c7c:	f822                	sd	s0,48(sp)
    90000c7e:	f426                	sd	s1,40(sp)
    90000c80:	f04a                	sd	s2,32(sp)
    90000c82:	ec4e                	sd	s3,24(sp)
    90000c84:	e852                	sd	s4,16(sp)
    90000c86:	e456                	sd	s5,8(sp)
    90000c88:	e05a                	sd	s6,0(sp)
    90000c8a:	8b2a                	mv	s6,a0
    90000c8c:	6914                	ld	a3,16(a0)
    90000c8e:	6108                	ld	a0,0(a0)
    90000c90:	89b2                	mv	s3,a2
    90000c92:	892e                	mv	s2,a1
    90000c94:	fff68593          	addi	a1,a3,-1
    90000c98:	4605                	li	a2,1
    90000c9a:	0015b593          	seqz	a1,a1
    90000c9e:	00c51463          	bne	a0,a2,90000ca6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2e>
    90000ca2:	e581                	bnez	a1,90000caa <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x32>
    90000ca4:	a215                	j	90000dc8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x150>
    90000ca6:	18058f63          	beqz	a1,90000e44 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90000caa:	018b3683          	ld	a3,24(s6)
    90000cae:	157d                	addi	a0,a0,-1
    90000cb0:	00153813          	seqz	a6,a0
    90000cb4:	01390733          	add	a4,s2,s3
    90000cb8:	4581                	li	a1,0
    90000cba:	c2dd                	beqz	a3,90000d60 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe8>
    90000cbc:	5e7d                	li	t3,-1
    90000cbe:	0e000393          	li	t2,224
    90000cc2:	0f000313          	li	t1,240
    90000cc6:	001c08b7          	lui	a7,0x1c0
    90000cca:	001102b7          	lui	t0,0x110
    90000cce:	854a                	mv	a0,s2
    90000cd0:	a815                	j	90000d04 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x8c>
    90000cd2:	00064403          	lbu	s0,0(a2)
    90000cd6:	00160493          	addi	s1,a2,1
    90000cda:	03f47f93          	andi	t6,s0,63
    90000cde:	07ca                	slli	a5,a5,0x12
    90000ce0:	0117f7b3          	and	a5,a5,a7
    90000ce4:	00cf1413          	slli	s0,t5,0xc
    90000ce8:	006e9613          	slli	a2,t4,0x6
    90000cec:	8fc1                	or	a5,a5,s0
    90000cee:	8e5d                	or	a2,a2,a5
    90000cf0:	01f66633          	or	a2,a2,t6
    90000cf4:	0c560863          	beq	a2,t0,90000dc4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90000cf8:	40a48533          	sub	a0,s1,a0
    90000cfc:	16fd                	addi	a3,a3,-1
    90000cfe:	95aa                	add	a1,a1,a0
    90000d00:	8526                	mv	a0,s1
    90000d02:	c2a5                	beqz	a3,90000d62 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xea>
    90000d04:	0ca70063          	beq	a4,a0,90000dc4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90000d08:	00050603          	lb	a2,0(a0)
    90000d0c:	00150493          	addi	s1,a0,1
    90000d10:	fece44e3          	blt	t3,a2,90000cf8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90000d14:	0ff67793          	andi	a5,a2,255
    90000d18:	00e48c63          	beq	s1,a4,90000d30 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xb8>
    90000d1c:	00154603          	lbu	a2,1(a0)
    90000d20:	00250493          	addi	s1,a0,2
    90000d24:	03f67f13          	andi	t5,a2,63
    90000d28:	8626                	mv	a2,s1
    90000d2a:	fc77e7e3          	bltu	a5,t2,90000cf8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90000d2e:	a029                	j	90000d38 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xc0>
    90000d30:	4f01                	li	t5,0
    90000d32:	863a                	mv	a2,a4
    90000d34:	fc77e2e3          	bltu	a5,t2,90000cf8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90000d38:	00e60c63          	beq	a2,a4,90000d50 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xd8>
    90000d3c:	00064403          	lbu	s0,0(a2)
    90000d40:	00160493          	addi	s1,a2,1
    90000d44:	03f47e93          	andi	t4,s0,63
    90000d48:	8626                	mv	a2,s1
    90000d4a:	fa67e7e3          	bltu	a5,t1,90000cf8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90000d4e:	a029                	j	90000d58 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe0>
    90000d50:	4e81                	li	t4,0
    90000d52:	863a                	mv	a2,a4
    90000d54:	fa67e2e3          	bltu	a5,t1,90000cf8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90000d58:	f6e61de3          	bne	a2,a4,90000cd2 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x5a>
    90000d5c:	4f81                	li	t6,0
    90000d5e:	b741                	j	90000cde <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x66>
    90000d60:	84ca                	mv	s1,s2
    90000d62:	06970163          	beq	a4,s1,90000dc4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90000d66:	00048503          	lb	a0,0(s1)
    90000d6a:	567d                	li	a2,-1
    90000d6c:	02a65763          	bge	a2,a0,90000d9a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x122>
    90000d70:	0015b513          	seqz	a0,a1
    90000d74:	0135c633          	xor	a2,a1,s3
    90000d78:	00163613          	seqz	a2,a2
    90000d7c:	8d51                	or	a0,a0,a2
    90000d7e:	e919                	bnez	a0,90000d94 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x11c>
    90000d80:	0335fe63          	bgeu	a1,s3,90000dbc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    90000d84:	00b90533          	add	a0,s2,a1
    90000d88:	00050503          	lb	a0,0(a0)
    90000d8c:	fc000613          	li	a2,-64
    90000d90:	02c54663          	blt	a0,a2,90000dbc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    90000d94:	854a                	mv	a0,s2
    90000d96:	e50d                	bnez	a0,90000dc0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x148>
    90000d98:	a035                	j	90000dc4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90000d9a:	00148613          	addi	a2,s1,1
    90000d9e:	0ff57513          	andi	a0,a0,255
    90000da2:	14e60163          	beq	a2,a4,90000ee4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x26c>
    90000da6:	0014c683          	lbu	a3,1(s1)
    90000daa:	00248613          	addi	a2,s1,2
    90000dae:	03f6f693          	andi	a3,a3,63
    90000db2:	0e000793          	li	a5,224
    90000db6:	12f57d63          	bgeu	a0,a5,90000ef0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x278>
    90000dba:	bf5d                	j	90000d70 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90000dbc:	4501                	li	a0,0
    90000dbe:	c119                	beqz	a0,90000dc4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90000dc0:	892a                	mv	s2,a0
    90000dc2:	89ae                	mv	s3,a1
    90000dc4:	08080063          	beqz	a6,90000e44 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90000dc8:	04098763          	beqz	s3,90000e16 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x19e>
    90000dcc:	4581                	li	a1,0
    90000dce:	854e                	mv	a0,s3
    90000dd0:	864a                	mv	a2,s2
    90000dd2:	00064683          	lbu	a3,0(a2)
    90000dd6:	0605                	addi	a2,a2,1
    90000dd8:	0c06f693          	andi	a3,a3,192
    90000ddc:	f8068693          	addi	a3,a3,-128
    90000de0:	0016b693          	seqz	a3,a3
    90000de4:	157d                	addi	a0,a0,-1
    90000de6:	95b6                	add	a1,a1,a3
    90000de8:	f56d                	bnez	a0,90000dd2 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x15a>
    90000dea:	008b3503          	ld	a0,8(s6)
    90000dee:	40b985b3          	sub	a1,s3,a1
    90000df2:	04a5f963          	bgeu	a1,a0,90000e44 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90000df6:	4581                	li	a1,0
    90000df8:	864e                	mv	a2,s3
    90000dfa:	86ca                	mv	a3,s2
    90000dfc:	0006c703          	lbu	a4,0(a3)
    90000e00:	0685                	addi	a3,a3,1
    90000e02:	0c077713          	andi	a4,a4,192
    90000e06:	f8070713          	addi	a4,a4,-128
    90000e0a:	00173713          	seqz	a4,a4
    90000e0e:	167d                	addi	a2,a2,-1
    90000e10:	95ba                	add	a1,a1,a4
    90000e12:	f66d                	bnez	a2,90000dfc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x184>
    90000e14:	a029                	j	90000e1e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1a6>
    90000e16:	008b3503          	ld	a0,8(s6)
    90000e1a:	4581                	li	a1,0
    90000e1c:	c505                	beqz	a0,90000e44 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90000e1e:	038b4683          	lbu	a3,56(s6)
    90000e22:	4701                	li	a4,0
    90000e24:	478d                	li	a5,3
    90000e26:	41358633          	sub	a2,a1,s3
    90000e2a:	00f68363          	beq	a3,a5,90000e30 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1b8>
    90000e2e:	8736                	mv	a4,a3
    90000e30:	00377593          	andi	a1,a4,3
    90000e34:	4685                	li	a3,1
    90000e36:	9532                	add	a0,a0,a2
    90000e38:	02b6c763          	blt	a3,a1,90000e66 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1ee>
    90000e3c:	e985                	bnez	a1,90000e6c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f4>
    90000e3e:	8aaa                	mv	s5,a0
    90000e40:	4501                	li	a0,0
    90000e42:	a825                	j	90000e7a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    90000e44:	028b3583          	ld	a1,40(s6)
    90000e48:	020b3503          	ld	a0,32(s6)
    90000e4c:	6d9c                	ld	a5,24(a1)
    90000e4e:	85ca                	mv	a1,s2
    90000e50:	864e                	mv	a2,s3
    90000e52:	6b02                	ld	s6,0(sp)
    90000e54:	6aa2                	ld	s5,8(sp)
    90000e56:	6a42                	ld	s4,16(sp)
    90000e58:	69e2                	ld	s3,24(sp)
    90000e5a:	7902                	ld	s2,32(sp)
    90000e5c:	74a2                	ld	s1,40(sp)
    90000e5e:	7442                	ld	s0,48(sp)
    90000e60:	70e2                	ld	ra,56(sp)
    90000e62:	6121                	addi	sp,sp,64
    90000e64:	8782                	jr	a5
    90000e66:	460d                	li	a2,3
    90000e68:	00c59463          	bne	a1,a2,90000e70 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f8>
    90000e6c:	4a81                	li	s5,0
    90000e6e:	a031                	j	90000e7a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    90000e70:	00150593          	addi	a1,a0,1
    90000e74:	8105                	srli	a0,a0,0x1
    90000e76:	0015da93          	srli	s5,a1,0x1
    90000e7a:	00150493          	addi	s1,a0,1
    90000e7e:	14fd                	addi	s1,s1,-1
    90000e80:	cc81                	beqz	s1,90000e98 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x220>
    90000e82:	028b3583          	ld	a1,40(s6)
    90000e86:	020b3503          	ld	a0,32(s6)
    90000e8a:	7190                	ld	a2,32(a1)
    90000e8c:	034b2583          	lw	a1,52(s6)
    90000e90:	9602                	jalr	a2
    90000e92:	d575                	beqz	a0,90000e7e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x206>
    90000e94:	4905                	li	s2,1
    90000e96:	a825                	j	90000ece <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90000e98:	028b3583          	ld	a1,40(s6)
    90000e9c:	034b6a03          	lwu	s4,52(s6)
    90000ea0:	020b3503          	ld	a0,32(s6)
    90000ea4:	6d94                	ld	a3,24(a1)
    90000ea6:	85ca                	mv	a1,s2
    90000ea8:	864e                	mv	a2,s3
    90000eaa:	9682                	jalr	a3
    90000eac:	4905                	li	s2,1
    90000eae:	e105                	bnez	a0,90000ece <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90000eb0:	020b3983          	ld	s3,32(s6)
    90000eb4:	028b3403          	ld	s0,40(s6)
    90000eb8:	001a8493          	addi	s1,s5,1
    90000ebc:	14fd                	addi	s1,s1,-1
    90000ebe:	c499                	beqz	s1,90000ecc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x254>
    90000ec0:	7010                	ld	a2,32(s0)
    90000ec2:	854e                	mv	a0,s3
    90000ec4:	85d2                	mv	a1,s4
    90000ec6:	9602                	jalr	a2
    90000ec8:	d975                	beqz	a0,90000ebc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x244>
    90000eca:	a011                	j	90000ece <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90000ecc:	4901                	li	s2,0
    90000ece:	854a                	mv	a0,s2
    90000ed0:	6b02                	ld	s6,0(sp)
    90000ed2:	6aa2                	ld	s5,8(sp)
    90000ed4:	6a42                	ld	s4,16(sp)
    90000ed6:	69e2                	ld	s3,24(sp)
    90000ed8:	7902                	ld	s2,32(sp)
    90000eda:	74a2                	ld	s1,40(sp)
    90000edc:	7442                	ld	s0,48(sp)
    90000ede:	70e2                	ld	ra,56(sp)
    90000ee0:	6121                	addi	sp,sp,64
    90000ee2:	8082                	ret
    90000ee4:	4681                	li	a3,0
    90000ee6:	863a                	mv	a2,a4
    90000ee8:	0e000793          	li	a5,224
    90000eec:	e8f562e3          	bltu	a0,a5,90000d70 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90000ef0:	00e60d63          	beq	a2,a4,90000f0a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x292>
    90000ef4:	00064483          	lbu	s1,0(a2)
    90000ef8:	00160793          	addi	a5,a2,1
    90000efc:	03f4f613          	andi	a2,s1,63
    90000f00:	0f000493          	li	s1,240
    90000f04:	00957963          	bgeu	a0,s1,90000f16 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x29e>
    90000f08:	b5a5                	j	90000d70 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90000f0a:	4601                	li	a2,0
    90000f0c:	87ba                	mv	a5,a4
    90000f0e:	0f000493          	li	s1,240
    90000f12:	e4956fe3          	bltu	a0,s1,90000d70 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90000f16:	00e78763          	beq	a5,a4,90000f24 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ac>
    90000f1a:	0007c703          	lbu	a4,0(a5) # 110000 <.Lline_table_start0+0xf3156>
    90000f1e:	03f77713          	andi	a4,a4,63
    90000f22:	a011                	j	90000f26 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ae>
    90000f24:	4701                	li	a4,0
    90000f26:	054a                	slli	a0,a0,0x12
    90000f28:	001c07b7          	lui	a5,0x1c0
    90000f2c:	8d7d                	and	a0,a0,a5
    90000f2e:	06b2                	slli	a3,a3,0xc
    90000f30:	061a                	slli	a2,a2,0x6
    90000f32:	8d55                	or	a0,a0,a3
    90000f34:	8d51                	or	a0,a0,a2
    90000f36:	8d59                	or	a0,a0,a4
    90000f38:	00110637          	lui	a2,0x110
    90000f3c:	e8c504e3          	beq	a0,a2,90000dc4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90000f40:	bd05                	j	90000d70 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>

0000000090000f42 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>:
    90000f42:	86ae                	mv	a3,a1
    90000f44:	85aa                	mv	a1,a0
    90000f46:	8532                	mv	a0,a2
    90000f48:	8636                	mv	a2,a3
    90000f4a:	00000317          	auipc	t1,0x0
    90000f4e:	d2e30067          	jr	-722(t1) # 90000c78 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

0000000090000f52 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>:
    90000f52:	7159                	addi	sp,sp,-112
    90000f54:	f486                	sd	ra,104(sp)
    90000f56:	e42a                	sd	a0,8(sp)
    90000f58:	e82e                	sd	a1,16(sp)
    90000f5a:	0028                	addi	a0,sp,8
    90000f5c:	e4aa                	sd	a0,72(sp)

0000000090000f5e <.LBB205_1>:
    90000f5e:	00000517          	auipc	a0,0x0
    90000f62:	27050513          	addi	a0,a0,624 # 900011ce <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90000f66:	e8aa                	sd	a0,80(sp)
    90000f68:	080c                	addi	a1,sp,16
    90000f6a:	ecae                	sd	a1,88(sp)
    90000f6c:	f0aa                	sd	a0,96(sp)

0000000090000f6e <.LBB205_2>:
    90000f6e:	00001517          	auipc	a0,0x1
    90000f72:	5d250513          	addi	a0,a0,1490 # 90002540 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.247>
    90000f76:	ec2a                	sd	a0,24(sp)
    90000f78:	4509                	li	a0,2
    90000f7a:	f02a                	sd	a0,32(sp)
    90000f7c:	f402                	sd	zero,40(sp)
    90000f7e:	00ac                	addi	a1,sp,72
    90000f80:	fc2e                	sd	a1,56(sp)
    90000f82:	e0aa                	sd	a0,64(sp)
    90000f84:	0828                	addi	a0,sp,24
    90000f86:	85b2                	mv	a1,a2
    90000f88:	00000097          	auipc	ra,0x0
    90000f8c:	864080e7          	jalr	-1948(ra) # 900007ec <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090000f92 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>:
    90000f92:	7175                	addi	sp,sp,-144
    90000f94:	e506                	sd	ra,136(sp)
    90000f96:	6114                	ld	a3,0(a0)
    90000f98:	852e                	mv	a0,a1
    90000f9a:	4581                	li	a1,0
    90000f9c:	00810813          	addi	a6,sp,8
    90000fa0:	4729                	li	a4,10
    90000fa2:	a039                	j	90000fb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    90000fa4:	05760613          	addi	a2,a2,87 # 110057 <.Lline_table_start0+0xf31ad>
    90000fa8:	06c78fa3          	sb	a2,127(a5) # 1c007f <.Lline_table_start0+0x1a31d5>
    90000fac:	15fd                	addi	a1,a1,-1
    90000fae:	ce91                	beqz	a3,90000fca <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x38>
    90000fb0:	00b807b3          	add	a5,a6,a1
    90000fb4:	00f6f613          	andi	a2,a3,15
    90000fb8:	8291                	srli	a3,a3,0x4
    90000fba:	fee675e3          	bgeu	a2,a4,90000fa4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x12>
    90000fbe:	03066613          	ori	a2,a2,48
    90000fc2:	06c78fa3          	sb	a2,127(a5)
    90000fc6:	15fd                	addi	a1,a1,-1
    90000fc8:	f6e5                	bnez	a3,90000fb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    90000fca:	08058693          	addi	a3,a1,128
    90000fce:	08100613          	li	a2,129
    90000fd2:	02c6f463          	bgeu	a3,a2,90000ffa <.LBB456_8>
    90000fd6:	40b007b3          	neg	a5,a1
    90000fda:	95c2                	add	a1,a1,a6
    90000fdc:	08058713          	addi	a4,a1,128

0000000090000fe0 <.LBB456_7>:
    90000fe0:	00001617          	auipc	a2,0x1
    90000fe4:	46060613          	addi	a2,a2,1120 # 90002440 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    90000fe8:	4585                	li	a1,1
    90000fea:	4689                	li	a3,2
    90000fec:	00000097          	auipc	ra,0x0
    90000ff0:	9fc080e7          	jalr	-1540(ra) # 900009e8 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90000ff4:	60aa                	ld	ra,136(sp)
    90000ff6:	6149                	addi	sp,sp,144
    90000ff8:	8082                	ret

0000000090000ffa <.LBB456_8>:
    90000ffa:	00001617          	auipc	a2,0x1
    90000ffe:	42e60613          	addi	a2,a2,1070 # 90002428 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    90001002:	08000593          	li	a1,128
    90001006:	8536                	mv	a0,a3
    90001008:	00000097          	auipc	ra,0x0
    9000100c:	f4a080e7          	jalr	-182(ra) # 90000f52 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

0000000090001012 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>:
    90001012:	715d                	addi	sp,sp,-80
    90001014:	e486                	sd	ra,72(sp)
    90001016:	e0a2                	sd	s0,64(sp)
    90001018:	fc26                	sd	s1,56(sp)
    9000101a:	f84a                	sd	s2,48(sp)
    9000101c:	00056903          	lwu	s2,0(a0)
    90001020:	852e                	mv	a0,a1
    90001022:	00495593          	srli	a1,s2,0x4
    90001026:	02700693          	li	a3,39
    9000102a:	27100713          	li	a4,625

000000009000102e <.LBB468_10>:
    9000102e:	00001817          	auipc	a6,0x1
    90001032:	41480813          	addi	a6,a6,1044 # 90002442 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    90001036:	02e5f363          	bgeu	a1,a4,9000105c <.LBB468_10+0x2e>
    9000103a:	06300593          	li	a1,99
    9000103e:	0f25e063          	bltu	a1,s2,9000111e <.LBB468_10+0xf0>
    90001042:	45a5                	li	a1,9
    90001044:	1325cd63          	blt	a1,s2,9000117e <.LBB468_10+0x150>
    90001048:	fff68593          	addi	a1,a3,-1
    9000104c:	00910613          	addi	a2,sp,9
    90001050:	962e                	add	a2,a2,a1
    90001052:	03090693          	addi	a3,s2,48
    90001056:	00d60023          	sb	a3,0(a2)
    9000105a:	a291                	j	9000119e <.LBB468_10+0x170>
    9000105c:	4681                	li	a3,0
    9000105e:	001a35b7          	lui	a1,0x1a3
    90001062:	6e35859b          	addiw	a1,a1,1763
    90001066:	05ba                	slli	a1,a1,0xe
    90001068:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    9000106c:	05ba                	slli	a1,a1,0xe
    9000106e:	43358593          	addi	a1,a1,1075
    90001072:	05b6                	slli	a1,a1,0xd
    90001074:	94b58893          	addi	a7,a1,-1717
    90001078:	6589                	lui	a1,0x2
    9000107a:	7105831b          	addiw	t1,a1,1808
    9000107e:	65c1                	lui	a1,0x10
    90001080:	ffc58e1b          	addiw	t3,a1,-4
    90001084:	0051f737          	lui	a4,0x51f
    90001088:	b857071b          	addiw	a4,a4,-1147
    9000108c:	0736                	slli	a4,a4,0xd
    9000108e:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90001092:	073a                	slli	a4,a4,0xe
    90001094:	28f70713          	addi	a4,a4,655
    90001098:	0732                	slli	a4,a4,0xc
    9000109a:	5c370e93          	addi	t4,a4,1475
    9000109e:	06400293          	li	t0,100
    900010a2:	ffe58f1b          	addiw	t5,a1,-2
    900010a6:	00910393          	addi	t2,sp,9
    900010aa:	05f5e5b7          	lui	a1,0x5f5e
    900010ae:	0ff58f9b          	addiw	t6,a1,255
    900010b2:	864a                	mv	a2,s2
    900010b4:	031937b3          	mulhu	a5,s2,a7
    900010b8:	00b7d913          	srli	s2,a5,0xb
    900010bc:	02690733          	mul	a4,s2,t1
    900010c0:	40e60733          	sub	a4,a2,a4
    900010c4:	01c775b3          	and	a1,a4,t3
    900010c8:	8189                	srli	a1,a1,0x2
    900010ca:	03d5b5b3          	mulhu	a1,a1,t4
    900010ce:	8189                	srli	a1,a1,0x2
    900010d0:	00159413          	slli	s0,a1,0x1
    900010d4:	025585b3          	mul	a1,a1,t0
    900010d8:	40b705b3          	sub	a1,a4,a1
    900010dc:	0586                	slli	a1,a1,0x1
    900010de:	01e5f5b3          	and	a1,a1,t5
    900010e2:	01040733          	add	a4,s0,a6
    900010e6:	00d38433          	add	s0,t2,a3
    900010ea:	00074483          	lbu	s1,0(a4)
    900010ee:	00170703          	lb	a4,1(a4)
    900010f2:	95c2                	add	a1,a1,a6
    900010f4:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f41157>
    900010f8:	0005c583          	lbu	a1,0(a1)
    900010fc:	02e40223          	sb	a4,36(s0)
    90001100:	029401a3          	sb	s1,35(s0)
    90001104:	02f40323          	sb	a5,38(s0)
    90001108:	02b402a3          	sb	a1,37(s0)
    9000110c:	16f1                	addi	a3,a3,-4
    9000110e:	facfe2e3          	bltu	t6,a2,900010b2 <.LBB468_10+0x84>
    90001112:	02768693          	addi	a3,a3,39
    90001116:	06300593          	li	a1,99
    9000111a:	f325f4e3          	bgeu	a1,s2,90001042 <.LBB468_10+0x14>
    9000111e:	65c1                	lui	a1,0x10
    90001120:	ffc5861b          	addiw	a2,a1,-4
    90001124:	00c97633          	and	a2,s2,a2
    90001128:	8209                	srli	a2,a2,0x2
    9000112a:	0051f737          	lui	a4,0x51f
    9000112e:	b857071b          	addiw	a4,a4,-1147
    90001132:	0736                	slli	a4,a4,0xd
    90001134:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90001138:	073a                	slli	a4,a4,0xe
    9000113a:	28f70713          	addi	a4,a4,655
    9000113e:	0732                	slli	a4,a4,0xc
    90001140:	5c370713          	addi	a4,a4,1475
    90001144:	02e63633          	mulhu	a2,a2,a4
    90001148:	8209                	srli	a2,a2,0x2
    9000114a:	06400713          	li	a4,100
    9000114e:	02e60733          	mul	a4,a2,a4
    90001152:	40e90733          	sub	a4,s2,a4
    90001156:	0706                	slli	a4,a4,0x1
    90001158:	35f9                	addiw	a1,a1,-2
    9000115a:	8df9                	and	a1,a1,a4
    9000115c:	16f9                	addi	a3,a3,-2
    9000115e:	95c2                	add	a1,a1,a6
    90001160:	00158703          	lb	a4,1(a1) # 10001 <.Lline_table_start0+0x10001>
    90001164:	0005c583          	lbu	a1,0(a1)
    90001168:	00910793          	addi	a5,sp,9
    9000116c:	97b6                	add	a5,a5,a3
    9000116e:	00e780a3          	sb	a4,1(a5)
    90001172:	00b78023          	sb	a1,0(a5)
    90001176:	8932                	mv	s2,a2
    90001178:	45a5                	li	a1,9
    9000117a:	ed25d7e3          	bge	a1,s2,90001048 <.LBB468_10+0x1a>
    9000117e:	00191613          	slli	a2,s2,0x1
    90001182:	ffe68593          	addi	a1,a3,-2
    90001186:	9642                	add	a2,a2,a6
    90001188:	00160683          	lb	a3,1(a2)
    9000118c:	00064603          	lbu	a2,0(a2)
    90001190:	00910713          	addi	a4,sp,9
    90001194:	972e                	add	a4,a4,a1
    90001196:	00d700a3          	sb	a3,1(a4)
    9000119a:	00c70023          	sb	a2,0(a4)
    9000119e:	00910613          	addi	a2,sp,9
    900011a2:	00b60733          	add	a4,a2,a1
    900011a6:	02700613          	li	a2,39
    900011aa:	40b607b3          	sub	a5,a2,a1

00000000900011ae <.LBB468_11>:
    900011ae:	00001617          	auipc	a2,0x1
    900011b2:	21260613          	addi	a2,a2,530 # 900023c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    900011b6:	4585                	li	a1,1
    900011b8:	4681                	li	a3,0
    900011ba:	00000097          	auipc	ra,0x0
    900011be:	82e080e7          	jalr	-2002(ra) # 900009e8 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    900011c2:	7942                	ld	s2,48(sp)
    900011c4:	74e2                	ld	s1,56(sp)
    900011c6:	6406                	ld	s0,64(sp)
    900011c8:	60a6                	ld	ra,72(sp)
    900011ca:	6161                	addi	sp,sp,80
    900011cc:	8082                	ret

00000000900011ce <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>:
    900011ce:	715d                	addi	sp,sp,-80
    900011d0:	e486                	sd	ra,72(sp)
    900011d2:	e0a2                	sd	s0,64(sp)
    900011d4:	fc26                	sd	s1,56(sp)
    900011d6:	f84a                	sd	s2,48(sp)
    900011d8:	00053903          	ld	s2,0(a0)
    900011dc:	852e                	mv	a0,a1
    900011de:	00495593          	srli	a1,s2,0x4
    900011e2:	02700693          	li	a3,39
    900011e6:	27100713          	li	a4,625

00000000900011ea <.LBB470_10>:
    900011ea:	00001817          	auipc	a6,0x1
    900011ee:	25880813          	addi	a6,a6,600 # 90002442 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    900011f2:	02e5f363          	bgeu	a1,a4,90001218 <.LBB470_10+0x2e>
    900011f6:	06300593          	li	a1,99
    900011fa:	0f25c063          	blt	a1,s2,900012da <.LBB470_10+0xf0>
    900011fe:	45a5                	li	a1,9
    90001200:	1325cd63          	blt	a1,s2,9000133a <.LBB470_10+0x150>
    90001204:	fff68593          	addi	a1,a3,-1
    90001208:	00910613          	addi	a2,sp,9
    9000120c:	962e                	add	a2,a2,a1
    9000120e:	03090693          	addi	a3,s2,48
    90001212:	00d60023          	sb	a3,0(a2)
    90001216:	a291                	j	9000135a <.LBB470_10+0x170>
    90001218:	4681                	li	a3,0
    9000121a:	001a35b7          	lui	a1,0x1a3
    9000121e:	6e35859b          	addiw	a1,a1,1763
    90001222:	05ba                	slli	a1,a1,0xe
    90001224:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    90001228:	05ba                	slli	a1,a1,0xe
    9000122a:	43358593          	addi	a1,a1,1075
    9000122e:	05b6                	slli	a1,a1,0xd
    90001230:	94b58893          	addi	a7,a1,-1717
    90001234:	6589                	lui	a1,0x2
    90001236:	7105831b          	addiw	t1,a1,1808
    9000123a:	65c1                	lui	a1,0x10
    9000123c:	ffc58e1b          	addiw	t3,a1,-4
    90001240:	0051f737          	lui	a4,0x51f
    90001244:	b857071b          	addiw	a4,a4,-1147
    90001248:	0736                	slli	a4,a4,0xd
    9000124a:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    9000124e:	073a                	slli	a4,a4,0xe
    90001250:	28f70713          	addi	a4,a4,655
    90001254:	0732                	slli	a4,a4,0xc
    90001256:	5c370e93          	addi	t4,a4,1475
    9000125a:	06400293          	li	t0,100
    9000125e:	ffe58f1b          	addiw	t5,a1,-2
    90001262:	00910393          	addi	t2,sp,9
    90001266:	05f5e5b7          	lui	a1,0x5f5e
    9000126a:	0ff58f9b          	addiw	t6,a1,255
    9000126e:	864a                	mv	a2,s2
    90001270:	031937b3          	mulhu	a5,s2,a7
    90001274:	00b7d913          	srli	s2,a5,0xb
    90001278:	02690733          	mul	a4,s2,t1
    9000127c:	40e60733          	sub	a4,a2,a4
    90001280:	01c775b3          	and	a1,a4,t3
    90001284:	8189                	srli	a1,a1,0x2
    90001286:	03d5b5b3          	mulhu	a1,a1,t4
    9000128a:	8189                	srli	a1,a1,0x2
    9000128c:	00159413          	slli	s0,a1,0x1
    90001290:	025585b3          	mul	a1,a1,t0
    90001294:	40b705b3          	sub	a1,a4,a1
    90001298:	0586                	slli	a1,a1,0x1
    9000129a:	01e5f5b3          	and	a1,a1,t5
    9000129e:	01040733          	add	a4,s0,a6
    900012a2:	00d38433          	add	s0,t2,a3
    900012a6:	00074483          	lbu	s1,0(a4)
    900012aa:	00170703          	lb	a4,1(a4)
    900012ae:	95c2                	add	a1,a1,a6
    900012b0:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f41157>
    900012b4:	0005c583          	lbu	a1,0(a1)
    900012b8:	02e40223          	sb	a4,36(s0)
    900012bc:	029401a3          	sb	s1,35(s0)
    900012c0:	02f40323          	sb	a5,38(s0)
    900012c4:	02b402a3          	sb	a1,37(s0)
    900012c8:	16f1                	addi	a3,a3,-4
    900012ca:	facfe2e3          	bltu	t6,a2,9000126e <.LBB470_10+0x84>
    900012ce:	02768693          	addi	a3,a3,39
    900012d2:	06300593          	li	a1,99
    900012d6:	f325d4e3          	bge	a1,s2,900011fe <.LBB470_10+0x14>
    900012da:	65c1                	lui	a1,0x10
    900012dc:	ffc5861b          	addiw	a2,a1,-4
    900012e0:	00c97633          	and	a2,s2,a2
    900012e4:	8209                	srli	a2,a2,0x2
    900012e6:	0051f737          	lui	a4,0x51f
    900012ea:	b857071b          	addiw	a4,a4,-1147
    900012ee:	0736                	slli	a4,a4,0xd
    900012f0:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    900012f4:	073a                	slli	a4,a4,0xe
    900012f6:	28f70713          	addi	a4,a4,655
    900012fa:	0732                	slli	a4,a4,0xc
    900012fc:	5c370713          	addi	a4,a4,1475
    90001300:	02e63633          	mulhu	a2,a2,a4
    90001304:	8209                	srli	a2,a2,0x2
    90001306:	06400713          	li	a4,100
    9000130a:	02e60733          	mul	a4,a2,a4
    9000130e:	40e90733          	sub	a4,s2,a4
    90001312:	0706                	slli	a4,a4,0x1
    90001314:	35f9                	addiw	a1,a1,-2
    90001316:	8df9                	and	a1,a1,a4
    90001318:	16f9                	addi	a3,a3,-2
    9000131a:	95c2                	add	a1,a1,a6
    9000131c:	00158703          	lb	a4,1(a1) # 10001 <.Lline_table_start0+0x10001>
    90001320:	0005c583          	lbu	a1,0(a1)
    90001324:	00910793          	addi	a5,sp,9
    90001328:	97b6                	add	a5,a5,a3
    9000132a:	00e780a3          	sb	a4,1(a5)
    9000132e:	00b78023          	sb	a1,0(a5)
    90001332:	8932                	mv	s2,a2
    90001334:	45a5                	li	a1,9
    90001336:	ed25d7e3          	bge	a1,s2,90001204 <.LBB470_10+0x1a>
    9000133a:	00191613          	slli	a2,s2,0x1
    9000133e:	ffe68593          	addi	a1,a3,-2
    90001342:	9642                	add	a2,a2,a6
    90001344:	00160683          	lb	a3,1(a2)
    90001348:	00064603          	lbu	a2,0(a2)
    9000134c:	00910713          	addi	a4,sp,9
    90001350:	972e                	add	a4,a4,a1
    90001352:	00d700a3          	sb	a3,1(a4)
    90001356:	00c70023          	sb	a2,0(a4)
    9000135a:	00910613          	addi	a2,sp,9
    9000135e:	00b60733          	add	a4,a2,a1
    90001362:	02700613          	li	a2,39
    90001366:	40b607b3          	sub	a5,a2,a1

000000009000136a <.LBB470_11>:
    9000136a:	00001617          	auipc	a2,0x1
    9000136e:	05660613          	addi	a2,a2,86 # 900023c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    90001372:	4585                	li	a1,1
    90001374:	4681                	li	a3,0
    90001376:	fffff097          	auipc	ra,0xfffff
    9000137a:	672080e7          	jalr	1650(ra) # 900009e8 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    9000137e:	7942                	ld	s2,48(sp)
    90001380:	74e2                	ld	s1,56(sp)
    90001382:	6406                	ld	s0,64(sp)
    90001384:	60a6                	ld	ra,72(sp)
    90001386:	6161                	addi	sp,sp,80
    90001388:	8082                	ret

000000009000138a <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9b30d63a2778a2bdE>:
    9000138a:	7590                	ld	a2,40(a1)
    9000138c:	7188                	ld	a0,32(a1)
    9000138e:	6e1c                	ld	a5,24(a2)

0000000090001390 <.LBB494_1>:
    90001390:	00001597          	auipc	a1,0x1
    90001394:	1d058593          	addi	a1,a1,464 # 90002560 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.541>
    90001398:	4615                	li	a2,5
    9000139a:	8782                	jr	a5

000000009000139c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>:
    9000139c:	6510                	ld	a2,8(a0)
    9000139e:	6108                	ld	a0,0(a0)
    900013a0:	6e1c                	ld	a5,24(a2)
    900013a2:	8782                	jr	a5

00000000900013a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>:
    900013a4:	6114                	ld	a3,0(a0)
    900013a6:	6510                	ld	a2,8(a0)
    900013a8:	852e                	mv	a0,a1
    900013aa:	85b6                	mv	a1,a3
    900013ac:	00000317          	auipc	t1,0x0
    900013b0:	8cc30067          	jr	-1844(t1) # 90000c78 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>
