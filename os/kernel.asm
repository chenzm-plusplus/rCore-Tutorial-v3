make[1]: Entering directory '/home/user/OS/GuestOS/user'
src/bin/00hello_world.rs src/bin/01store_fault.rs src/bin/02power.rs
target/riscv64gc-unknown-none-elf/release/00hello_world target/riscv64gc-unknown-none-elf/release/01store_fault target/riscv64gc-unknown-none-elf/release/02power
target/riscv64gc-unknown-none-elf/release/00hello_world.bin target/riscv64gc-unknown-none-elf/release/01store_fault.bin target/riscv64gc-unknown-none-elf/release/02power.bin
rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/00hello_world --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/00hello_world.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/01store_fault --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/01store_fault.bin;  rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/02power --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/02power.bin;
make[1]: Leaving directory '/home/user/OS/GuestOS/user'
Platform: qemu

target/riscv64gc-unknown-none-elf/release/os:     file format elf64-littleriscv


Disassembly of section .text:

0000000090000000 <_start>:
    90000000:	00036117          	auipc	sp,0x36
    90000004:	00010113          	mv	sp,sp
    90000008:	00001097          	auipc	ra,0x1
    9000000c:	0f0080e7          	jalr	240(ra) # 900010f8 <rust_main>

0000000090000010 <_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17hab50f443445cc63fE>:
    90000010:	1141                	addi	sp,sp,-16
    90000012:	e406                	sd	ra,8(sp)
    90000014:	e022                	sd	s0,0(sp)
    90000016:	0800                	addi	s0,sp,16
    90000018:	6402                	ld	s0,0(sp)
    9000001a:	60a2                	ld	ra,8(sp)
    9000001c:	0141                	addi	sp,sp,16
    9000001e:	8082                	ret

0000000090000020 <_ZN2os7syscall2fs9sys_write17hb2372f39f28320dbE>:
    90000020:	7115                	addi	sp,sp,-224
    90000022:	ed86                	sd	ra,216(sp)
    90000024:	e9a2                	sd	s0,208(sp)
    90000026:	e5a6                	sd	s1,200(sp)
    90000028:	e1ca                	sd	s2,192(sp)
    9000002a:	fd4e                	sd	s3,184(sp)
    9000002c:	f952                	sd	s4,176(sp)
    9000002e:	f556                	sd	s5,168(sp)
    90000030:	f15a                	sd	s6,160(sp)
    90000032:	ed5e                	sd	s7,152(sp)
    90000034:	e962                	sd	s8,144(sp)
    90000036:	e566                	sd	s9,136(sp)
    90000038:	1180                	addi	s0,sp,224
    9000003a:	8932                	mv	s2,a2
    9000003c:	8b2e                	mv	s6,a1
    9000003e:	89aa                	mv	s3,a0

0000000090000040 <.LBB1_14>:
    90000040:	00007517          	auipc	a0,0x7
    90000044:	fc050513          	addi	a0,a0,-64 # 90007000 <_ZN2os5batch10USER_STACK17h57e023ea41d6e6faE.llvm.18225423362530247450>
    90000048:	f2a43023          	sd	a0,-224(s0)
    9000004c:	6585                	lui	a1,0x1
    9000004e:	952e                	add	a0,a0,a1
    90000050:	f2a43423          	sd	a0,-216(s0)
    90000054:	24100513          	li	a0,577
    90000058:	055a                	slli	a0,a0,0x16
    9000005a:	f2a43823          	sd	a0,-208(s0)
    9000005e:	6515                	lui	a0,0x5
    90000060:	8215051b          	addiw	a0,a0,-2015
    90000064:	0546                	slli	a0,a0,0x11
    90000066:	f2a43c23          	sd	a0,-200(s0)
    9000006a:	f2040513          	addi	a0,s0,-224
    9000006e:	f4a43023          	sd	a0,-192(s0)

0000000090000072 <.LBB1_15>:
    90000072:	00003497          	auipc	s1,0x3
    90000076:	11648493          	addi	s1,s1,278 # 90003188 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    9000007a:	f4943423          	sd	s1,-184(s0)
    9000007e:	f2840513          	addi	a0,s0,-216
    90000082:	f4a43823          	sd	a0,-176(s0)
    90000086:	f4943c23          	sd	s1,-168(s0)
    9000008a:	f7840513          	addi	a0,s0,-136
    9000008e:	f6a43023          	sd	a0,-160(s0)

0000000090000092 <.LBB1_16>:
    90000092:	00004517          	auipc	a0,0x4
    90000096:	ff650513          	addi	a0,a0,-10 # 90004088 <.Lanon.4d737d5c66dae8371cb2648890a108b4.20>
    9000009a:	f6a43c23          	sd	a0,-136(s0)
    9000009e:	4a8d                	li	s5,3
    900000a0:	f9543023          	sd	s5,-128(s0)

00000000900000a4 <.LBB1_17>:
    900000a4:	00004c97          	auipc	s9,0x4
    900000a8:	014c8c93          	addi	s9,s9,20 # 900040b8 <.Lanon.4d737d5c66dae8371cb2648890a108b4.21>
    900000ac:	f9943423          	sd	s9,-120(s0)
    900000b0:	4c09                	li	s8,2
    900000b2:	f9843823          	sd	s8,-112(s0)
    900000b6:	f4040b93          	addi	s7,s0,-192
    900000ba:	f9743c23          	sd	s7,-104(s0)
    900000be:	fb843023          	sd	s8,-96(s0)

00000000900000c2 <.LBB1_18>:
    900000c2:	00008597          	auipc	a1,0x8
    900000c6:	5de58593          	addi	a1,a1,1502 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    900000ca:	f6040513          	addi	a0,s0,-160
    900000ce:	f7840a13          	addi	s4,s0,-136
    900000d2:	8652                	mv	a2,s4
    900000d4:	00002097          	auipc	ra,0x2
    900000d8:	d38080e7          	jalr	-712(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    900000dc:	16051463          	bnez	a0,90000244 <.LBB1_27>
    900000e0:	f3040513          	addi	a0,s0,-208
    900000e4:	f4a43023          	sd	a0,-192(s0)
    900000e8:	f4943423          	sd	s1,-184(s0)
    900000ec:	f3840513          	addi	a0,s0,-200
    900000f0:	f4a43823          	sd	a0,-176(s0)
    900000f4:	f4943c23          	sd	s1,-168(s0)
    900000f8:	f7443023          	sd	s4,-160(s0)

00000000900000fc <.LBB1_19>:
    900000fc:	00004517          	auipc	a0,0x4
    90000100:	05c50513          	addi	a0,a0,92 # 90004158 <.Lanon.4d737d5c66dae8371cb2648890a108b4.25>
    90000104:	f6a43c23          	sd	a0,-136(s0)
    90000108:	f9543023          	sd	s5,-128(s0)
    9000010c:	f9943423          	sd	s9,-120(s0)
    90000110:	f9843823          	sd	s8,-112(s0)
    90000114:	f9743c23          	sd	s7,-104(s0)
    90000118:	fb843023          	sd	s8,-96(s0)

000000009000011c <.LBB1_20>:
    9000011c:	00008597          	auipc	a1,0x8
    90000120:	58458593          	addi	a1,a1,1412 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000124:	f6040a13          	addi	s4,s0,-160
    90000128:	f7840a93          	addi	s5,s0,-136
    9000012c:	8552                	mv	a0,s4
    9000012e:	8656                	mv	a2,s5
    90000130:	00002097          	auipc	ra,0x2
    90000134:	cdc080e7          	jalr	-804(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000138:	10051663          	bnez	a0,90000244 <.LBB1_27>
    9000013c:	4505                	li	a0,1
    9000013e:	0ea99463          	bne	s3,a0,90000226 <.LBB1_26+0x1a>
    90000142:	f2043503          	ld	a0,-224(s0)
    90000146:	00ab6863          	bltu	s6,a0,90000156 <.LBB1_20+0x3a>
    9000014a:	f2843503          	ld	a0,-216(s0)
    9000014e:	012b05b3          	add	a1,s6,s2
    90000152:	00a5ec63          	bltu	a1,a0,9000016a <.LBB1_20+0x4e>
    90000156:	f3043503          	ld	a0,-208(s0)
    9000015a:	08ab6463          	bltu	s6,a0,900001e2 <.LBB1_23+0x1c>
    9000015e:	f3843503          	ld	a0,-200(s0)
    90000162:	012b05b3          	add	a1,s6,s2
    90000166:	06a5fe63          	bgeu	a1,a0,900001e2 <.LBB1_23+0x1c>
    9000016a:	f7840993          	addi	s3,s0,-136
    9000016e:	854e                	mv	a0,s3
    90000170:	85da                	mv	a1,s6
    90000172:	864a                	mv	a2,s2
    90000174:	00003097          	auipc	ra,0x3
    90000178:	838080e7          	jalr	-1992(ra) # 900029ac <_ZN4core3str8converts9from_utf817h36a155da9055aca2E>
    9000017c:	f7843583          	ld	a1,-136(s0)
    90000180:	4505                	li	a0,1
    90000182:	0ea58663          	beq	a1,a0,9000026e <.LBB1_29+0x1a>
    90000186:	f8043583          	ld	a1,-128(s0)
    9000018a:	f8843603          	ld	a2,-120(s0)
    9000018e:	f6b43023          	sd	a1,-160(s0)
    90000192:	f6c43423          	sd	a2,-152(s0)
    90000196:	f5443023          	sd	s4,-192(s0)

000000009000019a <.LBB1_21>:
    9000019a:	00001597          	auipc	a1,0x1
    9000019e:	01458593          	addi	a1,a1,20 # 900011ae <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h013e11055eb3fc78E>
    900001a2:	f4b43423          	sd	a1,-184(s0)
    900001a6:	f7343823          	sd	s3,-144(s0)

00000000900001aa <.LBB1_22>:
    900001aa:	00004597          	auipc	a1,0x4
    900001ae:	00e58593          	addi	a1,a1,14 # 900041b8 <.Lanon.4d737d5c66dae8371cb2648890a108b4.28>
    900001b2:	f6b43c23          	sd	a1,-136(s0)
    900001b6:	f8a43023          	sd	a0,-128(s0)
    900001ba:	f8043423          	sd	zero,-120(s0)
    900001be:	f9743c23          	sd	s7,-104(s0)
    900001c2:	faa43023          	sd	a0,-96(s0)

00000000900001c6 <.LBB1_23>:
    900001c6:	00008597          	auipc	a1,0x8
    900001ca:	4da58593          	addi	a1,a1,1242 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    900001ce:	f7040513          	addi	a0,s0,-144
    900001d2:	f7840613          	addi	a2,s0,-136
    900001d6:	00002097          	auipc	ra,0x2
    900001da:	c36080e7          	jalr	-970(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    900001de:	c529                	beqz	a0,90000228 <.LBB1_26+0x1c>
    900001e0:	a095                	j	90000244 <.LBB1_27>
    900001e2:	f5543023          	sd	s5,-192(s0)

00000000900001e6 <.LBB1_24>:
    900001e6:	00004517          	auipc	a0,0x4
    900001ea:	00a50513          	addi	a0,a0,10 # 900041f0 <.Lanon.4d737d5c66dae8371cb2648890a108b4.30>
    900001ee:	f6a43c23          	sd	a0,-136(s0)
    900001f2:	4505                	li	a0,1
    900001f4:	f8a43023          	sd	a0,-128(s0)
    900001f8:	f8043423          	sd	zero,-120(s0)

00000000900001fc <.LBB1_25>:
    900001fc:	00004517          	auipc	a0,0x4
    90000200:	e5450513          	addi	a0,a0,-428 # 90004050 <.Lanon.4d737d5c66dae8371cb2648890a108b4.17>
    90000204:	f8a43c23          	sd	a0,-104(s0)
    90000208:	fa043023          	sd	zero,-96(s0)

000000009000020c <.LBB1_26>:
    9000020c:	00008597          	auipc	a1,0x8
    90000210:	49458593          	addi	a1,a1,1172 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000214:	f4040513          	addi	a0,s0,-192
    90000218:	f7840613          	addi	a2,s0,-136
    9000021c:	00002097          	auipc	ra,0x2
    90000220:	bf0080e7          	jalr	-1040(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000224:	e105                	bnez	a0,90000244 <.LBB1_27>
    90000226:	597d                	li	s2,-1
    90000228:	854a                	mv	a0,s2
    9000022a:	6caa                	ld	s9,136(sp)
    9000022c:	6c4a                	ld	s8,144(sp)
    9000022e:	6bea                	ld	s7,152(sp)
    90000230:	7b0a                	ld	s6,160(sp)
    90000232:	7aaa                	ld	s5,168(sp)
    90000234:	7a4a                	ld	s4,176(sp)
    90000236:	79ea                	ld	s3,184(sp)
    90000238:	690e                	ld	s2,192(sp)
    9000023a:	64ae                	ld	s1,200(sp)
    9000023c:	644e                	ld	s0,208(sp)
    9000023e:	60ee                	ld	ra,216(sp)
    90000240:	612d                	addi	sp,sp,224
    90000242:	8082                	ret

0000000090000244 <.LBB1_27>:
    90000244:	00008517          	auipc	a0,0x8
    90000248:	48c50513          	addi	a0,a0,1164 # 900086d0 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

000000009000024c <.LBB1_28>:
    9000024c:	00008697          	auipc	a3,0x8
    90000250:	4b468693          	addi	a3,a3,1204 # 90008700 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

0000000090000254 <.LBB1_29>:
    90000254:	00008717          	auipc	a4,0x8
    90000258:	4dc70713          	addi	a4,a4,1244 # 90008730 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    9000025c:	f7840613          	addi	a2,s0,-136
    90000260:	02b00593          	li	a1,43
    90000264:	00001097          	auipc	ra,0x1
    90000268:	444080e7          	jalr	1092(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
    9000026c:	0000                	unimp
    9000026e:	f8843503          	ld	a0,-120(s0)
    90000272:	f8043583          	ld	a1,-128(s0)
    90000276:	f4a43423          	sd	a0,-184(s0)
    9000027a:	f4b43023          	sd	a1,-192(s0)

000000009000027e <.LBB1_30>:
    9000027e:	00004517          	auipc	a0,0x4
    90000282:	d8250513          	addi	a0,a0,-638 # 90004000 <etext>

0000000090000286 <.LBB1_31>:
    90000286:	00004697          	auipc	a3,0x4
    9000028a:	daa68693          	addi	a3,a3,-598 # 90004030 <.Lanon.4d737d5c66dae8371cb2648890a108b4.1>

000000009000028e <.LBB1_32>:
    9000028e:	00004717          	auipc	a4,0x4
    90000292:	f1270713          	addi	a4,a4,-238 # 900041a0 <.Lanon.4d737d5c66dae8371cb2648890a108b4.27>
    90000296:	f4040613          	addi	a2,s0,-192
    9000029a:	02b00593          	li	a1,43
    9000029e:	00001097          	auipc	ra,0x1
    900002a2:	40a080e7          	jalr	1034(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900002a8 <_ZN4core3ptr44drop_in_place$LT$core..cell..BorrowError$GT$17h18d803fc4ddbffd1E.llvm.18225423362530247450>:
    900002a8:	1141                	addi	sp,sp,-16
    900002aa:	e406                	sd	ra,8(sp)
    900002ac:	e022                	sd	s0,0(sp)
    900002ae:	0800                	addi	s0,sp,16
    900002b0:	6402                	ld	s0,0(sp)
    900002b2:	60a2                	ld	ra,8(sp)
    900002b4:	0141                	addi	sp,sp,16
    900002b6:	8082                	ret

00000000900002b8 <_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hbe50b65e97a8d660E.llvm.18225423362530247450>:
    900002b8:	1101                	addi	sp,sp,-32
    900002ba:	ec06                	sd	ra,24(sp)
    900002bc:	e822                	sd	s0,16(sp)
    900002be:	1000                	addi	s0,sp,32
    900002c0:	85aa                	mv	a1,a0
    900002c2:	6108                	ld	a0,0(a0)
    900002c4:	e909                	bnez	a0,900002d6 <.LBB3_3>
    900002c6:	567d                	li	a2,-1
    900002c8:	00858513          	addi	a0,a1,8
    900002cc:	e190                	sd	a2,0(a1)
    900002ce:	6442                	ld	s0,16(sp)
    900002d0:	60e2                	ld	ra,24(sp)
    900002d2:	6105                	addi	sp,sp,32
    900002d4:	8082                	ret

00000000900002d6 <.LBB3_3>:
    900002d6:	00004517          	auipc	a0,0x4
    900002da:	f3a50513          	addi	a0,a0,-198 # 90004210 <anon.dd013d8762cff77058a08f73d5951059.0.llvm.18225423362530247450>

00000000900002de <.LBB3_4>:
    900002de:	00004697          	auipc	a3,0x4
    900002e2:	fca68693          	addi	a3,a3,-54 # 900042a8 <anon.dd013d8762cff77058a08f73d5951059.4.llvm.18225423362530247450>

00000000900002e6 <.LBB3_5>:
    900002e6:	00008717          	auipc	a4,0x8
    900002ea:	f6a70713          	addi	a4,a4,-150 # 90008250 <anon.dd013d8762cff77058a08f73d5951059.36.llvm.18225423362530247450>
    900002ee:	fe840613          	addi	a2,s0,-24
    900002f2:	45c1                	li	a1,16
    900002f4:	00001097          	auipc	ra,0x1
    900002f8:	3b4080e7          	jalr	948(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900002fe <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h874475ac26ce1675E.llvm.18225423362530247450>:
    900002fe:	1101                	addi	sp,sp,-32
    90000300:	ec06                	sd	ra,24(sp)
    90000302:	e822                	sd	s0,16(sp)
    90000304:	1000                	addi	s0,sp,32
    90000306:	862a                	mv	a2,a0
    90000308:	6108                	ld	a0,0(a0)
    9000030a:	00150693          	addi	a3,a0,1
    9000030e:	00d05a63          	blez	a3,90000322 <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h874475ac26ce1675E.llvm.18225423362530247450+0x24>
    90000312:	00860513          	addi	a0,a2,8
    90000316:	e214                	sd	a3,0(a2)
    90000318:	85b2                	mv	a1,a2
    9000031a:	6442                	ld	s0,16(sp)
    9000031c:	60e2                	ld	ra,24(sp)
    9000031e:	6105                	addi	sp,sp,32
    90000320:	8082                	ret
    90000322:	872e                	mv	a4,a1

0000000090000324 <.LBB4_3>:
    90000324:	00004517          	auipc	a0,0x4
    90000328:	f1c50513          	addi	a0,a0,-228 # 90004240 <anon.dd013d8762cff77058a08f73d5951059.1.llvm.18225423362530247450>

000000009000032c <.LBB4_4>:
    9000032c:	00004697          	auipc	a3,0x4
    90000330:	f5c68693          	addi	a3,a3,-164 # 90004288 <anon.dd013d8762cff77058a08f73d5951059.3.llvm.18225423362530247450>
    90000334:	fe840613          	addi	a2,s0,-24
    90000338:	45e1                	li	a1,24
    9000033a:	00001097          	auipc	ra,0x1
    9000033e:	36e080e7          	jalr	878(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000344 <_ZN2os5batch11KernelStack12push_context17haf6e05de4efa521eE.llvm.18225423362530247450>:
    90000344:	1101                	addi	sp,sp,-32
    90000346:	ec06                	sd	ra,24(sp)
    90000348:	e822                	sd	s0,16(sp)
    9000034a:	e426                	sd	s1,8(sp)
    9000034c:	1000                	addi	s0,sp,32
    9000034e:	85aa                	mv	a1,a0
    90000350:	6509                	lui	a0,0x2
    90000352:	ef05051b          	addiw	a0,a0,-272

0000000090000356 <.LBB5_3>:
    90000356:	00005617          	auipc	a2,0x5
    9000035a:	caa60613          	addi	a2,a2,-854 # 90005000 <_ZN2os5batch12KERNEL_STACK17h0a7ac3b2a5cfbb11E.llvm.18225423362530247450>
    9000035e:	00a604b3          	add	s1,a2,a0
    90000362:	11000613          	li	a2,272
    90000366:	8526                	mv	a0,s1
    90000368:	00004097          	auipc	ra,0x4
    9000036c:	972080e7          	jalr	-1678(ra) # 90003cda <memcpy>
    90000370:	c499                	beqz	s1,9000037e <.LBB5_4>
    90000372:	8526                	mv	a0,s1
    90000374:	64a2                	ld	s1,8(sp)
    90000376:	6442                	ld	s0,16(sp)
    90000378:	60e2                	ld	ra,24(sp)
    9000037a:	6105                	addi	sp,sp,32
    9000037c:	8082                	ret

000000009000037e <.LBB5_4>:
    9000037e:	00004517          	auipc	a0,0x4
    90000382:	eda50513          	addi	a0,a0,-294 # 90004258 <anon.dd013d8762cff77058a08f73d5951059.2.llvm.18225423362530247450>

0000000090000386 <.LBB5_5>:
    90000386:	00008617          	auipc	a2,0x8
    9000038a:	c8a60613          	addi	a2,a2,-886 # 90008010 <anon.dd013d8762cff77058a08f73d5951059.6.llvm.18225423362530247450>
    9000038e:	02b00593          	li	a1,43
    90000392:	00001097          	auipc	ra,0x1
    90000396:	376080e7          	jalr	886(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000009000039c <_ZN2os5batch15AppManagerInner8load_app17h86b91ef154da4dc1E.llvm.18225423362530247450>:
    9000039c:	7159                	addi	sp,sp,-112
    9000039e:	f486                	sd	ra,104(sp)
    900003a0:	f0a2                	sd	s0,96(sp)
    900003a2:	eca6                	sd	s1,88(sp)
    900003a4:	1880                	addi	s0,sp,112
    900003a6:	84aa                	mv	s1,a0
    900003a8:	6108                	ld	a0,0(a0)
    900003aa:	f8b43c23          	sd	a1,-104(s0)
    900003ae:	0aa5f863          	bgeu	a1,a0,9000045e <.LBB6_14+0x6c>
    900003b2:	f9840513          	addi	a0,s0,-104
    900003b6:	faa43023          	sd	a0,-96(s0)

00000000900003ba <.LBB6_12>:
    900003ba:	00003517          	auipc	a0,0x3
    900003be:	2b050513          	addi	a0,a0,688 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    900003c2:	faa43423          	sd	a0,-88(s0)
    900003c6:	fb840513          	addi	a0,s0,-72
    900003ca:	faa43823          	sd	a0,-80(s0)

00000000900003ce <.LBB6_13>:
    900003ce:	00008517          	auipc	a0,0x8
    900003d2:	dea50513          	addi	a0,a0,-534 # 900081b8 <.Lanon.dd013d8762cff77058a08f73d5951059.26>
    900003d6:	faa43c23          	sd	a0,-72(s0)
    900003da:	4509                	li	a0,2
    900003dc:	fca43023          	sd	a0,-64(s0)
    900003e0:	fc043423          	sd	zero,-56(s0)
    900003e4:	fa040513          	addi	a0,s0,-96
    900003e8:	fca43c23          	sd	a0,-40(s0)
    900003ec:	4505                	li	a0,1
    900003ee:	fea43023          	sd	a0,-32(s0)

00000000900003f2 <.LBB6_14>:
    900003f2:	00008597          	auipc	a1,0x8
    900003f6:	2ae58593          	addi	a1,a1,686 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    900003fa:	fb040513          	addi	a0,s0,-80
    900003fe:	fb840613          	addi	a2,s0,-72
    90000402:	00002097          	auipc	ra,0x2
    90000406:	a0a080e7          	jalr	-1526(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    9000040a:	ed39                	bnez	a0,90000468 <.LBB6_15>
    9000040c:	0000100f          	fence.i
    90000410:	00020537          	lui	a0,0x20
    90000414:	24100593          	li	a1,577
    90000418:	05da                	slli	a1,a1,0x16
    9000041a:	00158613          	addi	a2,a1,1
    9000041e:	157d                	addi	a0,a0,-1
    90000420:	00058023          	sb	zero,0(a1)
    90000424:	85b2                	mv	a1,a2
    90000426:	f975                	bnez	a0,9000041a <.LBB6_14+0x28>
    90000428:	f9843503          	ld	a0,-104(s0)
    9000042c:	45c1                	li	a1,16
    9000042e:	06a5e263          	bltu	a1,a0,90000492 <.LBB6_18>
    90000432:	06b50563          	beq	a0,a1,9000049c <.LBB6_19>
    90000436:	050e                	slli	a0,a0,0x3
    90000438:	00a485b3          	add	a1,s1,a0
    9000043c:	698c                	ld	a1,16(a1)
    9000043e:	9526                	add	a0,a0,s1
    90000440:	6d08                	ld	a0,24(a0)
    90000442:	40b50633          	sub	a2,a0,a1
    90000446:	24100513          	li	a0,577
    9000044a:	055a                	slli	a0,a0,0x16
    9000044c:	00004097          	auipc	ra,0x4
    90000450:	88e080e7          	jalr	-1906(ra) # 90003cda <memcpy>
    90000454:	64e6                	ld	s1,88(sp)
    90000456:	7406                	ld	s0,96(sp)
    90000458:	70a6                	ld	ra,104(sp)
    9000045a:	6165                	addi	sp,sp,112
    9000045c:	8082                	ret
    9000045e:	00000097          	auipc	ra,0x0
    90000462:	38e080e7          	jalr	910(ra) # 900007ec <_ZN2os3sbi8shutdown17h7ebfb538db979bc8E>
	...

0000000090000468 <.LBB6_15>:
    90000468:	00008517          	auipc	a0,0x8
    9000046c:	26850513          	addi	a0,a0,616 # 900086d0 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

0000000090000470 <.LBB6_16>:
    90000470:	00008697          	auipc	a3,0x8
    90000474:	29068693          	addi	a3,a3,656 # 90008700 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

0000000090000478 <.LBB6_17>:
    90000478:	00008717          	auipc	a4,0x8
    9000047c:	2b870713          	addi	a4,a4,696 # 90008730 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    90000480:	fb840613          	addi	a2,s0,-72
    90000484:	02b00593          	li	a1,43
    90000488:	00001097          	auipc	ra,0x1
    9000048c:	220080e7          	jalr	544(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000492 <.LBB6_18>:
    90000492:	00008617          	auipc	a2,0x8
    90000496:	d4660613          	addi	a2,a2,-698 # 900081d8 <.Lanon.dd013d8762cff77058a08f73d5951059.31>
    9000049a:	a031                	j	900004a6 <.LBB6_19+0xa>

000000009000049c <.LBB6_19>:
    9000049c:	00008617          	auipc	a2,0x8
    900004a0:	d5460613          	addi	a2,a2,-684 # 900081f0 <.Lanon.dd013d8762cff77058a08f73d5951059.32>
    900004a4:	4545                	li	a0,17
    900004a6:	45c5                	li	a1,17
    900004a8:	00001097          	auipc	ra,0x1
    900004ac:	28c080e7          	jalr	652(ra) # 90001734 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

00000000900004b2 <_ZN2os5batch4init17h53107c46faa69cb8E>:
    900004b2:	7115                	addi	sp,sp,-224
    900004b4:	ed86                	sd	ra,216(sp)
    900004b6:	e9a2                	sd	s0,208(sp)
    900004b8:	e5a6                	sd	s1,200(sp)
    900004ba:	e1ca                	sd	s2,192(sp)
    900004bc:	fd4e                	sd	s3,184(sp)
    900004be:	f952                	sd	s4,176(sp)
    900004c0:	f556                	sd	s5,168(sp)
    900004c2:	f15a                	sd	s6,160(sp)
    900004c4:	ed5e                	sd	s7,152(sp)
    900004c6:	e962                	sd	s8,144(sp)
    900004c8:	e566                	sd	s9,136(sp)
    900004ca:	e16a                	sd	s10,128(sp)
    900004cc:	fcee                	sd	s11,120(sp)
    900004ce:	1180                	addi	s0,sp,224

00000000900004d0 <.LBB9_14>:
    900004d0:	00036517          	auipc	a0,0x36
    900004d4:	b3050513          	addi	a0,a0,-1232 # 90036000 <boot_stack_top>
    900004d8:	00000097          	auipc	ra,0x0
    900004dc:	7aa080e7          	jalr	1962(ra) # 90000c82 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE>
    900004e0:	610c                	ld	a1,0(a0)
    900004e2:	0585                	addi	a1,a1,1
    900004e4:	16b05c63          	blez	a1,9000065c <.LBB9_27>
    900004e8:	e10c                	sd	a1,0(a0)
    900004ea:	f2a43023          	sd	a0,-224(s0)
    900004ee:	00850493          	addi	s1,a0,8
    900004f2:	f2943823          	sd	s1,-208(s0)

00000000900004f6 <.LBB9_15>:
    900004f6:	00003a97          	auipc	s5,0x3
    900004fa:	174a8a93          	addi	s5,s5,372 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    900004fe:	f3543c23          	sd	s5,-200(s0)
    90000502:	f6840513          	addi	a0,s0,-152
    90000506:	f6a43023          	sd	a0,-160(s0)

000000009000050a <.LBB9_16>:
    9000050a:	00008517          	auipc	a0,0x8
    9000050e:	b3e50513          	addi	a0,a0,-1218 # 90008048 <.Lanon.dd013d8762cff77058a08f73d5951059.15>
    90000512:	f6a43423          	sd	a0,-152(s0)
    90000516:	4509                	li	a0,2
    90000518:	f6a43823          	sd	a0,-144(s0)
    9000051c:	f6043c23          	sd	zero,-136(s0)
    90000520:	f3040513          	addi	a0,s0,-208
    90000524:	f8a43423          	sd	a0,-120(s0)
    90000528:	4505                	li	a0,1
    9000052a:	f8a43823          	sd	a0,-112(s0)

000000009000052e <.LBB9_17>:
    9000052e:	00008597          	auipc	a1,0x8
    90000532:	17258593          	addi	a1,a1,370 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000536:	f6040513          	addi	a0,s0,-160
    9000053a:	f6840993          	addi	s3,s0,-152
    9000053e:	864e                	mv	a2,s3
    90000540:	00002097          	auipc	ra,0x2
    90000544:	8cc080e7          	jalr	-1844(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000548:	e569                	bnez	a0,90000612 <.LBB9_22>
    9000054a:	0004bb83          	ld	s7,0(s1)
    9000054e:	080b8e63          	beqz	s7,900005ea <.LBB9_21+0x76>
    90000552:	4481                	li	s1,0
    90000554:	f2043503          	ld	a0,-224(s0)
    90000558:	0561                	addi	a0,a0,24

000000009000055a <.LBB9_18>:
    9000055a:	00003917          	auipc	s2,0x3
    9000055e:	c2e90913          	addi	s2,s2,-978 # 90003188 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>

0000000090000562 <.LBB9_19>:
    90000562:	00008b17          	auipc	s6,0x8
    90000566:	b26b0b13          	addi	s6,s6,-1242 # 90008088 <.Lanon.dd013d8762cff77058a08f73d5951059.20>

000000009000056a <.LBB9_20>:
    9000056a:	00008d17          	auipc	s10,0x8
    9000056e:	b8ed0d13          	addi	s10,s10,-1138 # 900080f8 <.Lanon.dd013d8762cff77058a08f73d5951059.23>
    90000572:	4d8d                	li	s11,3

0000000090000574 <.LBB9_21>:
    90000574:	00008c17          	auipc	s8,0x8
    90000578:	12cc0c13          	addi	s8,s8,300 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    9000057c:	f6040a13          	addi	s4,s0,-160
    90000580:	f2943423          	sd	s1,-216(s0)
    90000584:	45c1                	li	a1,16
    90000586:	0ab48b63          	beq	s1,a1,9000063c <.LBB9_25>
    9000058a:	45c5                	li	a1,17
    9000058c:	0ab48d63          	beq	s1,a1,90000646 <.LBB9_26>
    90000590:	00850c93          	addi	s9,a0,8
    90000594:	f2840593          	addi	a1,s0,-216
    90000598:	f2b43823          	sd	a1,-208(s0)
    9000059c:	f3543c23          	sd	s5,-200(s0)
    900005a0:	f4a43023          	sd	a0,-192(s0)
    900005a4:	f5243423          	sd	s2,-184(s0)
    900005a8:	f5943823          	sd	s9,-176(s0)
    900005ac:	f5243c23          	sd	s2,-168(s0)
    900005b0:	f7343023          	sd	s3,-160(s0)
    900005b4:	f7643423          	sd	s6,-152(s0)
    900005b8:	4511                	li	a0,4
    900005ba:	f6a43823          	sd	a0,-144(s0)
    900005be:	f7a43c23          	sd	s10,-136(s0)
    900005c2:	f9b43023          	sd	s11,-128(s0)
    900005c6:	f3040513          	addi	a0,s0,-208
    900005ca:	f8a43423          	sd	a0,-120(s0)
    900005ce:	f9b43823          	sd	s11,-112(s0)
    900005d2:	8552                	mv	a0,s4
    900005d4:	85e2                	mv	a1,s8
    900005d6:	864e                	mv	a2,s3
    900005d8:	00002097          	auipc	ra,0x2
    900005dc:	834080e7          	jalr	-1996(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    900005e0:	e90d                	bnez	a0,90000612 <.LBB9_22>
    900005e2:	0485                	addi	s1,s1,1
    900005e4:	8566                	mv	a0,s9
    900005e6:	f89b9de3          	bne	s7,s1,90000580 <.LBB9_21+0xc>
    900005ea:	f2043583          	ld	a1,-224(s0)
    900005ee:	6188                	ld	a0,0(a1)
    900005f0:	157d                	addi	a0,a0,-1
    900005f2:	e188                	sd	a0,0(a1)
    900005f4:	7de6                	ld	s11,120(sp)
    900005f6:	6d0a                	ld	s10,128(sp)
    900005f8:	6caa                	ld	s9,136(sp)
    900005fa:	6c4a                	ld	s8,144(sp)
    900005fc:	6bea                	ld	s7,152(sp)
    900005fe:	7b0a                	ld	s6,160(sp)
    90000600:	7aaa                	ld	s5,168(sp)
    90000602:	7a4a                	ld	s4,176(sp)
    90000604:	79ea                	ld	s3,184(sp)
    90000606:	690e                	ld	s2,192(sp)
    90000608:	64ae                	ld	s1,200(sp)
    9000060a:	644e                	ld	s0,208(sp)
    9000060c:	60ee                	ld	ra,216(sp)
    9000060e:	612d                	addi	sp,sp,224
    90000610:	8082                	ret

0000000090000612 <.LBB9_22>:
    90000612:	00008517          	auipc	a0,0x8
    90000616:	0be50513          	addi	a0,a0,190 # 900086d0 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

000000009000061a <.LBB9_23>:
    9000061a:	00008697          	auipc	a3,0x8
    9000061e:	0e668693          	addi	a3,a3,230 # 90008700 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

0000000090000622 <.LBB9_24>:
    90000622:	00008717          	auipc	a4,0x8
    90000626:	10e70713          	addi	a4,a4,270 # 90008730 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    9000062a:	f6840613          	addi	a2,s0,-152
    9000062e:	02b00593          	li	a1,43
    90000632:	00001097          	auipc	ra,0x1
    90000636:	076080e7          	jalr	118(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

000000009000063c <.LBB9_25>:
    9000063c:	00008617          	auipc	a2,0x8
    90000640:	aa460613          	addi	a2,a2,-1372 # 900080e0 <.Lanon.dd013d8762cff77058a08f73d5951059.22>
    90000644:	a029                	j	9000064e <.LBB9_26+0x8>

0000000090000646 <.LBB9_26>:
    90000646:	00008617          	auipc	a2,0x8
    9000064a:	a8260613          	addi	a2,a2,-1406 # 900080c8 <.Lanon.dd013d8762cff77058a08f73d5951059.21>
    9000064e:	4545                	li	a0,17
    90000650:	45c5                	li	a1,17
    90000652:	00001097          	auipc	ra,0x1
    90000656:	0e2080e7          	jalr	226(ra) # 90001734 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

000000009000065c <.LBB9_27>:
    9000065c:	00004517          	auipc	a0,0x4
    90000660:	be450513          	addi	a0,a0,-1052 # 90004240 <anon.dd013d8762cff77058a08f73d5951059.1.llvm.18225423362530247450>

0000000090000664 <.LBB9_28>:
    90000664:	00004697          	auipc	a3,0x4
    90000668:	c2468693          	addi	a3,a3,-988 # 90004288 <anon.dd013d8762cff77058a08f73d5951059.3.llvm.18225423362530247450>

000000009000066c <.LBB9_29>:
    9000066c:	00008717          	auipc	a4,0x8
    90000670:	b9c70713          	addi	a4,a4,-1124 # 90008208 <.Lanon.dd013d8762cff77058a08f73d5951059.33>
    90000674:	f6840613          	addi	a2,s0,-152
    90000678:	45e1                	li	a1,24
    9000067a:	00001097          	auipc	ra,0x1
    9000067e:	02e080e7          	jalr	46(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000684 <_ZN2os5batch12run_next_app17h219220bb48d367c5E>:
    90000684:	7169                	addi	sp,sp,-304
    90000686:	f606                	sd	ra,296(sp)
    90000688:	f222                	sd	s0,288(sp)
    9000068a:	ee26                	sd	s1,280(sp)
    9000068c:	ea4a                	sd	s2,272(sp)
    9000068e:	1a00                	addi	s0,sp,304
    90000690:	00000097          	auipc	ra,0x0
    90000694:	0e4080e7          	jalr	228(ra) # 90000774 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2a571c4c71a99049E.llvm.18225423362530247450>

0000000090000698 <.LBB10_1>:
    90000698:	00008597          	auipc	a1,0x8
    9000069c:	b8858593          	addi	a1,a1,-1144 # 90008220 <anon.dd013d8762cff77058a08f73d5951059.34.llvm.18225423362530247450>
    900006a0:	00000097          	auipc	ra,0x0
    900006a4:	c5e080e7          	jalr	-930(ra) # 900002fe <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h874475ac26ce1675E.llvm.18225423362530247450>
    900006a8:	6190                	ld	a2,0(a1)
    900006aa:	00853903          	ld	s2,8(a0)
    900006ae:	fff60513          	addi	a0,a2,-1
    900006b2:	e188                	sd	a0,0(a1)
    900006b4:	00000097          	auipc	ra,0x0
    900006b8:	0c0080e7          	jalr	192(ra) # 90000774 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2a571c4c71a99049E.llvm.18225423362530247450>

00000000900006bc <.LBB10_2>:
    900006bc:	00008597          	auipc	a1,0x8
    900006c0:	b7c58593          	addi	a1,a1,-1156 # 90008238 <anon.dd013d8762cff77058a08f73d5951059.35.llvm.18225423362530247450>
    900006c4:	00000097          	auipc	ra,0x0
    900006c8:	c3a080e7          	jalr	-966(ra) # 900002fe <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h874475ac26ce1675E.llvm.18225423362530247450>
    900006cc:	84ae                	mv	s1,a1
    900006ce:	85ca                	mv	a1,s2
    900006d0:	00000097          	auipc	ra,0x0
    900006d4:	ccc080e7          	jalr	-820(ra) # 9000039c <_ZN2os5batch15AppManagerInner8load_app17h86b91ef154da4dc1E.llvm.18225423362530247450>
    900006d8:	6088                	ld	a0,0(s1)
    900006da:	157d                	addi	a0,a0,-1
    900006dc:	e088                	sd	a0,0(s1)
    900006de:	00000097          	auipc	ra,0x0
    900006e2:	096080e7          	jalr	150(ra) # 90000774 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2a571c4c71a99049E.llvm.18225423362530247450>
    900006e6:	00000097          	auipc	ra,0x0
    900006ea:	bd2080e7          	jalr	-1070(ra) # 900002b8 <_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hbe50b65e97a8d660E.llvm.18225423362530247450>
    900006ee:	6510                	ld	a2,8(a0)
    900006f0:	0605                	addi	a2,a2,1
    900006f2:	e510                	sd	a2,8(a0)
    900006f4:	6188                	ld	a0,0(a1)
    900006f6:	0505                	addi	a0,a0,1
    900006f8:	e188                	sd	a0,0(a1)
    900006fa:	10002573          	csrr	a0,sstatus
    900006fe:	eff57493          	andi	s1,a0,-257
    90000702:	ed040913          	addi	s2,s0,-304
    90000706:	10000613          	li	a2,256
    9000070a:	854a                	mv	a0,s2
    9000070c:	4581                	li	a1,0
    9000070e:	00003097          	auipc	ra,0x3
    90000712:	5e2080e7          	jalr	1506(ra) # 90003cf0 <memset>
    90000716:	fc943823          	sd	s1,-48(s0)
    9000071a:	24100513          	li	a0,577
    9000071e:	055a                	slli	a0,a0,0x16
    90000720:	fca43c23          	sd	a0,-40(s0)
    90000724:	6505                	lui	a0,0x1

0000000090000726 <.LBB10_3>:
    90000726:	00007597          	auipc	a1,0x7
    9000072a:	8da58593          	addi	a1,a1,-1830 # 90007000 <_ZN2os5batch10USER_STACK17h57e023ea41d6e6faE.llvm.18225423362530247450>
    9000072e:	952e                	add	a0,a0,a1
    90000730:	eea43023          	sd	a0,-288(s0)
    90000734:	854a                	mv	a0,s2
    90000736:	00000097          	auipc	ra,0x0
    9000073a:	c0e080e7          	jalr	-1010(ra) # 90000344 <_ZN2os5batch11KernelStack12push_context17haf6e05de4efa521eE.llvm.18225423362530247450>
    9000073e:	6509                	lui	a0,0x2
    90000740:	ef05051b          	addiw	a0,a0,-272

0000000090000744 <.LBB10_4>:
    90000744:	00005597          	auipc	a1,0x5
    90000748:	8bc58593          	addi	a1,a1,-1860 # 90005000 <_ZN2os5batch12KERNEL_STACK17h0a7ac3b2a5cfbb11E.llvm.18225423362530247450>
    9000074c:	952e                	add	a0,a0,a1
    9000074e:	00000097          	auipc	ra,0x0
    90000752:	12a080e7          	jalr	298(ra) # 90000878 <__restore>

0000000090000756 <.LBB10_5>:
    90000756:	00008517          	auipc	a0,0x8
    9000075a:	b1250513          	addi	a0,a0,-1262 # 90008268 <anon.dd013d8762cff77058a08f73d5951059.37.llvm.18225423362530247450>

000000009000075e <.LBB10_6>:
    9000075e:	00008617          	auipc	a2,0x8
    90000762:	b3260613          	addi	a2,a2,-1230 # 90008290 <anon.dd013d8762cff77058a08f73d5951059.38.llvm.18225423362530247450>
    90000766:	02600593          	li	a1,38
    9000076a:	00001097          	auipc	ra,0x1
    9000076e:	f9e080e7          	jalr	-98(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000774 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2a571c4c71a99049E.llvm.18225423362530247450>:
    90000774:	1141                	addi	sp,sp,-16
    90000776:	e406                	sd	ra,8(sp)
    90000778:	e022                	sd	s0,0(sp)
    9000077a:	0800                	addi	s0,sp,16

000000009000077c <.LBB11_1>:
    9000077c:	00036517          	auipc	a0,0x36
    90000780:	88450513          	addi	a0,a0,-1916 # 90036000 <boot_stack_top>
    90000784:	6402                	ld	s0,0(sp)
    90000786:	60a2                	ld	ra,8(sp)
    90000788:	0141                	addi	sp,sp,16
    9000078a:	00000317          	auipc	t1,0x0
    9000078e:	4f830067          	jr	1272(t1) # 90000c82 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE>

0000000090000792 <_ZN2os7syscall7process8sys_exit17h2ef8e22ddd733c83E>:
    90000792:	711d                	addi	sp,sp,-96
    90000794:	ec86                	sd	ra,88(sp)
    90000796:	e8a2                	sd	s0,80(sp)
    90000798:	1080                	addi	s0,sp,96
    9000079a:	faa42623          	sw	a0,-84(s0)
    9000079e:	fac40513          	addi	a0,s0,-84
    900007a2:	fea43023          	sd	a0,-32(s0)

00000000900007a6 <.LBB0_1>:
    900007a6:	00003517          	auipc	a0,0x3
    900007aa:	b3250513          	addi	a0,a0,-1230 # 900032d8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha29d76a3c5b8b223E>
    900007ae:	fea43423          	sd	a0,-24(s0)

00000000900007b2 <.LBB0_2>:
    900007b2:	00008517          	auipc	a0,0x8
    900007b6:	b2650513          	addi	a0,a0,-1242 # 900082d8 <anon.4ffe9abeb0ab3f2f1076fd197d85b03d.2.llvm.2879799647202752097>
    900007ba:	faa43823          	sd	a0,-80(s0)
    900007be:	4509                	li	a0,2
    900007c0:	faa43c23          	sd	a0,-72(s0)
    900007c4:	fc043023          	sd	zero,-64(s0)
    900007c8:	fe040513          	addi	a0,s0,-32
    900007cc:	fca43823          	sd	a0,-48(s0)
    900007d0:	4505                	li	a0,1
    900007d2:	fca43c23          	sd	a0,-40(s0)
    900007d6:	fb040513          	addi	a0,s0,-80
    900007da:	00001097          	auipc	ra,0x1
    900007de:	89e080e7          	jalr	-1890(ra) # 90001078 <_ZN2os7console5print17h8c28c37cb0950d91E>
    900007e2:	00000097          	auipc	ra,0x0
    900007e6:	ea2080e7          	jalr	-350(ra) # 90000684 <_ZN2os5batch12run_next_app17h219220bb48d367c5E>
	...

00000000900007ec <_ZN2os3sbi8shutdown17h7ebfb538db979bc8E>:
    900007ec:	1141                	addi	sp,sp,-16
    900007ee:	e406                	sd	ra,8(sp)
    900007f0:	e022                	sd	s0,0(sp)
    900007f2:	0800                	addi	s0,sp,16
    900007f4:	48a1                	li	a7,8
    900007f6:	4501                	li	a0,0
    900007f8:	4581                	li	a1,0
    900007fa:	4601                	li	a2,0
    900007fc:	00000073          	ecall

0000000090000800 <.LBB1_1>:
    90000800:	00008517          	auipc	a0,0x8
    90000804:	af850513          	addi	a0,a0,-1288 # 900082f8 <anon.2b3a083f86e8f65d0611f41e3a8a2be0.0.llvm.16930620006938887670>

0000000090000808 <.LBB1_2>:
    90000808:	00008617          	auipc	a2,0x8
    9000080c:	b1060613          	addi	a2,a2,-1264 # 90008318 <anon.2b3a083f86e8f65d0611f41e3a8a2be0.2.llvm.16930620006938887670>
    90000810:	45cd                	li	a1,19
    90000812:	00001097          	auipc	ra,0x1
    90000816:	ef6080e7          	jalr	-266(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000009000081c <__alltraps>:
    9000081c:	14011173          	csrrw	sp,sscratch,sp
    90000820:	716d                	addi	sp,sp,-272
    90000822:	e406                	sd	ra,8(sp)
    90000824:	ec0e                	sd	gp,24(sp)
    90000826:	f416                	sd	t0,40(sp)
    90000828:	f81a                	sd	t1,48(sp)
    9000082a:	fc1e                	sd	t2,56(sp)
    9000082c:	e0a2                	sd	s0,64(sp)
    9000082e:	e4a6                	sd	s1,72(sp)
    90000830:	e8aa                	sd	a0,80(sp)
    90000832:	ecae                	sd	a1,88(sp)
    90000834:	f0b2                	sd	a2,96(sp)
    90000836:	f4b6                	sd	a3,104(sp)
    90000838:	f8ba                	sd	a4,112(sp)
    9000083a:	fcbe                	sd	a5,120(sp)
    9000083c:	e142                	sd	a6,128(sp)
    9000083e:	e546                	sd	a7,136(sp)
    90000840:	e94a                	sd	s2,144(sp)
    90000842:	ed4e                	sd	s3,152(sp)
    90000844:	f152                	sd	s4,160(sp)
    90000846:	f556                	sd	s5,168(sp)
    90000848:	f95a                	sd	s6,176(sp)
    9000084a:	fd5e                	sd	s7,184(sp)
    9000084c:	e1e2                	sd	s8,192(sp)
    9000084e:	e5e6                	sd	s9,200(sp)
    90000850:	e9ea                	sd	s10,208(sp)
    90000852:	edee                	sd	s11,216(sp)
    90000854:	f1f2                	sd	t3,224(sp)
    90000856:	f5f6                	sd	t4,232(sp)
    90000858:	f9fa                	sd	t5,240(sp)
    9000085a:	fdfe                	sd	t6,248(sp)
    9000085c:	100022f3          	csrr	t0,sstatus
    90000860:	14102373          	csrr	t1,sepc
    90000864:	e216                	sd	t0,256(sp)
    90000866:	e61a                	sd	t1,264(sp)
    90000868:	140023f3          	csrr	t2,sscratch
    9000086c:	e81e                	sd	t2,16(sp)
    9000086e:	850a                	mv	a0,sp
    90000870:	00000097          	auipc	ra,0x0
    90000874:	0c0080e7          	jalr	192(ra) # 90000930 <trap_handler>

0000000090000878 <__restore>:
    90000878:	812a                	mv	sp,a0
    9000087a:	6292                	ld	t0,256(sp)
    9000087c:	6332                	ld	t1,264(sp)
    9000087e:	63c2                	ld	t2,16(sp)
    90000880:	10029073          	csrw	sstatus,t0
    90000884:	14131073          	csrw	sepc,t1
    90000888:	14039073          	csrw	sscratch,t2
    9000088c:	60a2                	ld	ra,8(sp)
    9000088e:	61e2                	ld	gp,24(sp)
    90000890:	72a2                	ld	t0,40(sp)
    90000892:	7342                	ld	t1,48(sp)
    90000894:	73e2                	ld	t2,56(sp)
    90000896:	6406                	ld	s0,64(sp)
    90000898:	64a6                	ld	s1,72(sp)
    9000089a:	6546                	ld	a0,80(sp)
    9000089c:	65e6                	ld	a1,88(sp)
    9000089e:	7606                	ld	a2,96(sp)
    900008a0:	76a6                	ld	a3,104(sp)
    900008a2:	7746                	ld	a4,112(sp)
    900008a4:	77e6                	ld	a5,120(sp)
    900008a6:	680a                	ld	a6,128(sp)
    900008a8:	68aa                	ld	a7,136(sp)
    900008aa:	694a                	ld	s2,144(sp)
    900008ac:	69ea                	ld	s3,152(sp)
    900008ae:	7a0a                	ld	s4,160(sp)
    900008b0:	7aaa                	ld	s5,168(sp)
    900008b2:	7b4a                	ld	s6,176(sp)
    900008b4:	7bea                	ld	s7,184(sp)
    900008b6:	6c0e                	ld	s8,192(sp)
    900008b8:	6cae                	ld	s9,200(sp)
    900008ba:	6d4e                	ld	s10,208(sp)
    900008bc:	6dee                	ld	s11,216(sp)
    900008be:	7e0e                	ld	t3,224(sp)
    900008c0:	7eae                	ld	t4,232(sp)
    900008c2:	7f4e                	ld	t5,240(sp)
    900008c4:	7fee                	ld	t6,248(sp)
    900008c6:	6151                	addi	sp,sp,272
    900008c8:	14011173          	csrrw	sp,sscratch,sp
    900008cc:	10200073          	sret

00000000900008d0 <_ZN5riscv8register6scause6Scause5cause17h61bc1e71e5a25ba9E>:
    900008d0:	1101                	addi	sp,sp,-32
    900008d2:	ec06                	sd	ra,24(sp)
    900008d4:	e822                	sd	s0,16(sp)
    900008d6:	e426                	sd	s1,8(sp)
    900008d8:	1000                	addi	s0,sp,32
    900008da:	6104                	ld	s1,0(a0)
    900008dc:	00001097          	auipc	ra,0x1
    900008e0:	a84080e7          	jalr	-1404(ra) # 90001360 <_ZN5riscv8register6scause6Scause4code17h25a276351377520bE>
    900008e4:	55fd                	li	a1,-1
    900008e6:	0095da63          	bge	a1,s1,900008fa <_ZN5riscv8register6scause6Scause5cause17h61bc1e71e5a25ba9E+0x2a>
    900008ea:	00001097          	auipc	ra,0x1
    900008ee:	9ac080e7          	jalr	-1620(ra) # 90001296 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E>
    900008f2:	0ff57593          	andi	a1,a0,255
    900008f6:	4505                	li	a0,1
    900008f8:	a809                	j	9000090a <_ZN5riscv8register6scause6Scause5cause17h61bc1e71e5a25ba9E+0x3a>
    900008fa:	00001097          	auipc	ra,0x1
    900008fe:	92e080e7          	jalr	-1746(ra) # 90001228 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E>
    90000902:	85aa                	mv	a1,a0
    90000904:	4501                	li	a0,0
    90000906:	0ff5f593          	andi	a1,a1,255
    9000090a:	64a2                	ld	s1,8(sp)
    9000090c:	6442                	ld	s0,16(sp)
    9000090e:	60e2                	ld	ra,24(sp)
    90000910:	6105                	addi	sp,sp,32
    90000912:	8082                	ret

0000000090000914 <_ZN2os4trap4init17h6c4ada7d88655b0dE>:
    90000914:	1141                	addi	sp,sp,-16
    90000916:	e406                	sd	ra,8(sp)
    90000918:	e022                	sd	s0,0(sp)
    9000091a:	0800                	addi	s0,sp,16

000000009000091c <.LBB1_1>:
    9000091c:	00000517          	auipc	a0,0x0
    90000920:	f0050513          	addi	a0,a0,-256 # 9000081c <__alltraps>
    90000924:	10551073          	csrw	stvec,a0
    90000928:	6402                	ld	s0,0(sp)
    9000092a:	60a2                	ld	ra,8(sp)
    9000092c:	0141                	addi	sp,sp,16
    9000092e:	8082                	ret

0000000090000930 <trap_handler>:
    90000930:	7175                	addi	sp,sp,-144
    90000932:	e506                	sd	ra,136(sp)
    90000934:	e122                	sd	s0,128(sp)
    90000936:	fca6                	sd	s1,120(sp)
    90000938:	f8ca                	sd	s2,112(sp)
    9000093a:	0900                	addi	s0,sp,144
    9000093c:	14202973          	csrr	s2,scause
    90000940:	f7243c23          	sd	s2,-136(s0)
    90000944:	143025f3          	csrr	a1,stval
    90000948:	84aa                	mv	s1,a0
    9000094a:	f8b43023          	sd	a1,-128(s0)
    9000094e:	f7840513          	addi	a0,s0,-136
    90000952:	00001097          	auipc	ra,0x1
    90000956:	a0e080e7          	jalr	-1522(ra) # 90001360 <_ZN5riscv8register6scause6Scause4code17h25a276351377520bE>
    9000095a:	55fd                	li	a1,-1
    9000095c:	0725de63          	bge	a1,s2,900009d8 <.LBB2_16+0x1c>
    90000960:	00001097          	auipc	ra,0x1
    90000964:	936080e7          	jalr	-1738(ra) # 90001296 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E>
    90000968:	0ff57513          	andi	a0,a0,255
    9000096c:	459d                	li	a1,7
    9000096e:	02b51e63          	bne	a0,a1,900009aa <trap_handler+0x7a>
    90000972:	1084b503          	ld	a0,264(s1)
    90000976:	00450713          	addi	a4,a0,4
    9000097a:	64d4                	ld	a3,136(s1)
    9000097c:	68a8                	ld	a0,80(s1)
    9000097e:	6cac                	ld	a1,88(s1)
    90000980:	70b0                	ld	a2,96(s1)
    90000982:	10e4b423          	sd	a4,264(s1)
    90000986:	04000713          	li	a4,64
    9000098a:	fad43423          	sd	a3,-88(s0)
    9000098e:	02e69c63          	bne	a3,a4,900009c6 <.LBB2_16+0xa>
    90000992:	fffff097          	auipc	ra,0xfffff
    90000996:	68e080e7          	jalr	1678(ra) # 90000020 <_ZN2os7syscall2fs9sys_write17hb2372f39f28320dbE>
    9000099a:	e8a8                	sd	a0,80(s1)
    9000099c:	8526                	mv	a0,s1
    9000099e:	7946                	ld	s2,112(sp)
    900009a0:	74e6                	ld	s1,120(sp)
    900009a2:	640a                	ld	s0,128(sp)
    900009a4:	60aa                	ld	ra,136(sp)
    900009a6:	6149                	addi	sp,sp,144
    900009a8:	8082                	ret
    900009aa:	4589                	li	a1,2
    900009ac:	0ab50563          	beq	a0,a1,90000a56 <.LBB2_22>
    900009b0:	4599                	li	a1,6
    900009b2:	00b50563          	beq	a0,a1,900009bc <.LBB2_16>
    900009b6:	45a9                	li	a1,10
    900009b8:	02b51463          	bne	a0,a1,900009e0 <.LBB2_16+0x24>

00000000900009bc <.LBB2_16>:
    900009bc:	00008517          	auipc	a0,0x8
    900009c0:	a8c50513          	addi	a0,a0,-1396 # 90008448 <.Lanon.16129c21127c7c22520f39f83dd3d7da.16>
    900009c4:	a869                	j	90000a5e <.LBB2_22+0x8>
    900009c6:	05d00593          	li	a1,93
    900009ca:	0cb69463          	bne	a3,a1,90000a92 <.LBB2_23+0x26>
    900009ce:	00000097          	auipc	ra,0x0
    900009d2:	dc4080e7          	jalr	-572(ra) # 90000792 <_ZN2os7syscall7process8sys_exit17h2ef8e22ddd733c83E>
    900009d6:	0000                	unimp
    900009d8:	00001097          	auipc	ra,0x1
    900009dc:	850080e7          	jalr	-1968(ra) # 90001228 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E>
    900009e0:	f7840513          	addi	a0,s0,-136
    900009e4:	00000097          	auipc	ra,0x0
    900009e8:	eec080e7          	jalr	-276(ra) # 900008d0 <_ZN5riscv8register6scause6Scause5cause17h61bc1e71e5a25ba9E>
    900009ec:	faa40423          	sb	a0,-88(s0)
    900009f0:	fab404a3          	sb	a1,-87(s0)
    900009f4:	fa840513          	addi	a0,s0,-88
    900009f8:	f8a43423          	sd	a0,-120(s0)

00000000900009fc <.LBB2_17>:
    900009fc:	00001517          	auipc	a0,0x1
    90000a00:	97e50513          	addi	a0,a0,-1666 # 9000137a <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17hcb018b9018ff1235E>
    90000a04:	f8a43823          	sd	a0,-112(s0)
    90000a08:	f8040513          	addi	a0,s0,-128
    90000a0c:	f8a43c23          	sd	a0,-104(s0)

0000000090000a10 <.LBB2_18>:
    90000a10:	00002517          	auipc	a0,0x2
    90000a14:	77850513          	addi	a0,a0,1912 # 90003188 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    90000a18:	faa43023          	sd	a0,-96(s0)

0000000090000a1c <.LBB2_19>:
    90000a1c:	00008517          	auipc	a0,0x8
    90000a20:	93450513          	addi	a0,a0,-1740 # 90008350 <.Lanon.16129c21127c7c22520f39f83dd3d7da.9>
    90000a24:	faa43823          	sd	a0,-80(s0)
    90000a28:	450d                	li	a0,3
    90000a2a:	faa43c23          	sd	a0,-72(s0)

0000000090000a2e <.LBB2_20>:
    90000a2e:	00008517          	auipc	a0,0x8
    90000a32:	95250513          	addi	a0,a0,-1710 # 90008380 <.Lanon.16129c21127c7c22520f39f83dd3d7da.10>
    90000a36:	fca43023          	sd	a0,-64(s0)
    90000a3a:	4509                	li	a0,2
    90000a3c:	fca43423          	sd	a0,-56(s0)
    90000a40:	f8840593          	addi	a1,s0,-120
    90000a44:	fcb43823          	sd	a1,-48(s0)
    90000a48:	fca43c23          	sd	a0,-40(s0)

0000000090000a4c <.LBB2_21>:
    90000a4c:	00008597          	auipc	a1,0x8
    90000a50:	9b458593          	addi	a1,a1,-1612 # 90008400 <.Lanon.16129c21127c7c22520f39f83dd3d7da.12>
    90000a54:	a8b5                	j	90000ad0 <.LBB2_26+0x8>

0000000090000a56 <.LBB2_22>:
    90000a56:	00008517          	auipc	a0,0x8
    90000a5a:	a4250513          	addi	a0,a0,-1470 # 90008498 <.Lanon.16129c21127c7c22520f39f83dd3d7da.18>
    90000a5e:	faa43823          	sd	a0,-80(s0)
    90000a62:	4505                	li	a0,1
    90000a64:	faa43c23          	sd	a0,-72(s0)
    90000a68:	fc043023          	sd	zero,-64(s0)

0000000090000a6c <.LBB2_23>:
    90000a6c:	00008517          	auipc	a0,0x8
    90000a70:	8c450513          	addi	a0,a0,-1852 # 90008330 <.Lanon.16129c21127c7c22520f39f83dd3d7da.6>
    90000a74:	fca43823          	sd	a0,-48(s0)
    90000a78:	fc043c23          	sd	zero,-40(s0)
    90000a7c:	fb040513          	addi	a0,s0,-80
    90000a80:	00000097          	auipc	ra,0x0
    90000a84:	5f8080e7          	jalr	1528(ra) # 90001078 <_ZN2os7console5print17h8c28c37cb0950d91E>
    90000a88:	00000097          	auipc	ra,0x0
    90000a8c:	bfc080e7          	jalr	-1028(ra) # 90000684 <_ZN2os5batch12run_next_app17h219220bb48d367c5E>
    90000a90:	0000                	unimp
    90000a92:	fa840513          	addi	a0,s0,-88
    90000a96:	f8a43423          	sd	a0,-120(s0)

0000000090000a9a <.LBB2_24>:
    90000a9a:	00003517          	auipc	a0,0x3
    90000a9e:	bd050513          	addi	a0,a0,-1072 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90000aa2:	f8a43823          	sd	a0,-112(s0)

0000000090000aa6 <.LBB2_25>:
    90000aa6:	00008517          	auipc	a0,0x8
    90000aaa:	cf250513          	addi	a0,a0,-782 # 90008798 <anon.e4e8438ee872072f8d0cec984e1e8d26.1.llvm.16429006436562869720>
    90000aae:	faa43823          	sd	a0,-80(s0)
    90000ab2:	4505                	li	a0,1
    90000ab4:	faa43c23          	sd	a0,-72(s0)
    90000ab8:	fc043023          	sd	zero,-64(s0)
    90000abc:	f8840593          	addi	a1,s0,-120
    90000ac0:	fcb43823          	sd	a1,-48(s0)
    90000ac4:	fca43c23          	sd	a0,-40(s0)

0000000090000ac8 <.LBB2_26>:
    90000ac8:	00008597          	auipc	a1,0x8
    90000acc:	cf858593          	addi	a1,a1,-776 # 900087c0 <anon.e4e8438ee872072f8d0cec984e1e8d26.3.llvm.16429006436562869720>
    90000ad0:	fb040513          	addi	a0,s0,-80
    90000ad4:	00001097          	auipc	ra,0x1
    90000ad8:	ca0080e7          	jalr	-864(ra) # 90001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090000ade <rust_begin_unwind>:
    90000ade:	7171                	addi	sp,sp,-176
    90000ae0:	f506                	sd	ra,168(sp)
    90000ae2:	f122                	sd	s0,160(sp)
    90000ae4:	ed26                	sd	s1,152(sp)
    90000ae6:	e94a                	sd	s2,144(sp)
    90000ae8:	1900                	addi	s0,sp,176
    90000aea:	892a                	mv	s2,a0
    90000aec:	00001097          	auipc	ra,0x1
    90000af0:	c0c080e7          	jalr	-1012(ra) # 900016f8 <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>
    90000af4:	e515                	bnez	a0,90000b20 <.LBB0_10+0x16>
    90000af6:	854a                	mv	a0,s2
    90000af8:	00001097          	auipc	ra,0x1
    90000afc:	bfc080e7          	jalr	-1028(ra) # 900016f4 <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    90000b00:	e52d                	bnez	a0,90000b6a <.LBB0_12+0x16>

0000000090000b02 <.LBB0_9>:
    90000b02:	00008517          	auipc	a0,0x8
    90000b06:	9a650513          	addi	a0,a0,-1626 # 900084a8 <.Lanon.86a3613c128665d32fc75176e6ae67c2.0>

0000000090000b0a <.LBB0_10>:
    90000b0a:	00008617          	auipc	a2,0x8
    90000b0e:	a1660613          	addi	a2,a2,-1514 # 90008520 <.Lanon.86a3613c128665d32fc75176e6ae67c2.5>
    90000b12:	02b00593          	li	a1,43
    90000b16:	00001097          	auipc	ra,0x1
    90000b1a:	bf2080e7          	jalr	-1038(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    90000b1e:	0000                	unimp
    90000b20:	84aa                	mv	s1,a0
    90000b22:	00001097          	auipc	ra,0x1
    90000b26:	bda080e7          	jalr	-1062(ra) # 900016fc <_ZN4core5panic8Location4file17h3a63c909928b6622E>
    90000b2a:	f8a43423          	sd	a0,-120(s0)
    90000b2e:	f8b43823          	sd	a1,-112(s0)
    90000b32:	8526                	mv	a0,s1
    90000b34:	00001097          	auipc	ra,0x1
    90000b38:	bd0080e7          	jalr	-1072(ra) # 90001704 <_ZN4core5panic8Location4line17h438064cf29667b6aE>
    90000b3c:	f8a42e23          	sw	a0,-100(s0)
    90000b40:	854a                	mv	a0,s2
    90000b42:	00001097          	auipc	ra,0x1
    90000b46:	bb2080e7          	jalr	-1102(ra) # 900016f4 <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    90000b4a:	e541                	bnez	a0,90000bd2 <.LBB0_15+0x24>

0000000090000b4c <.LBB0_11>:
    90000b4c:	00008517          	auipc	a0,0x8
    90000b50:	95c50513          	addi	a0,a0,-1700 # 900084a8 <.Lanon.86a3613c128665d32fc75176e6ae67c2.0>

0000000090000b54 <.LBB0_12>:
    90000b54:	00008617          	auipc	a2,0x8
    90000b58:	a3c60613          	addi	a2,a2,-1476 # 90008590 <.Lanon.86a3613c128665d32fc75176e6ae67c2.10>
    90000b5c:	02b00593          	li	a1,43
    90000b60:	00001097          	auipc	ra,0x1
    90000b64:	ba8080e7          	jalr	-1112(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    90000b68:	0000                	unimp
    90000b6a:	faa43423          	sd	a0,-88(s0)
    90000b6e:	fa840513          	addi	a0,s0,-88
    90000b72:	f4a43c23          	sd	a0,-168(s0)

0000000090000b76 <.LBB0_13>:
    90000b76:	00000517          	auipc	a0,0x0
    90000b7a:	65a50513          	addi	a0,a0,1626 # 900011d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3cffa91ed33bac73E>
    90000b7e:	f6a43023          	sd	a0,-160(s0)
    90000b82:	fb040513          	addi	a0,s0,-80
    90000b86:	f8a43423          	sd	a0,-120(s0)

0000000090000b8a <.LBB0_14>:
    90000b8a:	00008517          	auipc	a0,0x8
    90000b8e:	95e50513          	addi	a0,a0,-1698 # 900084e8 <.Lanon.86a3613c128665d32fc75176e6ae67c2.3>
    90000b92:	faa43823          	sd	a0,-80(s0)
    90000b96:	4509                	li	a0,2
    90000b98:	faa43c23          	sd	a0,-72(s0)
    90000b9c:	fc043023          	sd	zero,-64(s0)
    90000ba0:	f5840513          	addi	a0,s0,-168
    90000ba4:	fca43823          	sd	a0,-48(s0)
    90000ba8:	4505                	li	a0,1
    90000baa:	fca43c23          	sd	a0,-40(s0)

0000000090000bae <.LBB0_15>:
    90000bae:	00008597          	auipc	a1,0x8
    90000bb2:	af258593          	addi	a1,a1,-1294 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000bb6:	f8840513          	addi	a0,s0,-120
    90000bba:	fb040613          	addi	a2,s0,-80
    90000bbe:	00001097          	auipc	ra,0x1
    90000bc2:	24e080e7          	jalr	590(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000bc6:	e949                	bnez	a0,90000c58 <.LBB0_21>
    90000bc8:	00000097          	auipc	ra,0x0
    90000bcc:	c24080e7          	jalr	-988(ra) # 900007ec <_ZN2os3sbi8shutdown17h7ebfb538db979bc8E>
    90000bd0:	0000                	unimp
    90000bd2:	faa43023          	sd	a0,-96(s0)
    90000bd6:	f8840513          	addi	a0,s0,-120
    90000bda:	f4a43c23          	sd	a0,-168(s0)

0000000090000bde <.LBB0_16>:
    90000bde:	00000517          	auipc	a0,0x0
    90000be2:	5d050513          	addi	a0,a0,1488 # 900011ae <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h013e11055eb3fc78E>
    90000be6:	f6a43023          	sd	a0,-160(s0)
    90000bea:	f9c40513          	addi	a0,s0,-100
    90000bee:	f6a43423          	sd	a0,-152(s0)

0000000090000bf2 <.LBB0_17>:
    90000bf2:	00003517          	auipc	a0,0x3
    90000bf6:	8bc50513          	addi	a0,a0,-1860 # 900034ae <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>
    90000bfa:	f6a43823          	sd	a0,-144(s0)
    90000bfe:	fa040513          	addi	a0,s0,-96
    90000c02:	f6a43c23          	sd	a0,-136(s0)

0000000090000c06 <.LBB0_18>:
    90000c06:	00000517          	auipc	a0,0x0
    90000c0a:	5ca50513          	addi	a0,a0,1482 # 900011d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3cffa91ed33bac73E>
    90000c0e:	f8a43023          	sd	a0,-128(s0)
    90000c12:	fb040513          	addi	a0,s0,-80
    90000c16:	faa43423          	sd	a0,-88(s0)

0000000090000c1a <.LBB0_19>:
    90000c1a:	00008517          	auipc	a0,0x8
    90000c1e:	93650513          	addi	a0,a0,-1738 # 90008550 <.Lanon.86a3613c128665d32fc75176e6ae67c2.9>
    90000c22:	faa43823          	sd	a0,-80(s0)
    90000c26:	4511                	li	a0,4
    90000c28:	faa43c23          	sd	a0,-72(s0)
    90000c2c:	fc043023          	sd	zero,-64(s0)
    90000c30:	f5840513          	addi	a0,s0,-168
    90000c34:	fca43823          	sd	a0,-48(s0)
    90000c38:	450d                	li	a0,3
    90000c3a:	fca43c23          	sd	a0,-40(s0)

0000000090000c3e <.LBB0_20>:
    90000c3e:	00008597          	auipc	a1,0x8
    90000c42:	a6258593          	addi	a1,a1,-1438 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000c46:	fa840513          	addi	a0,s0,-88
    90000c4a:	fb040613          	addi	a2,s0,-80
    90000c4e:	00001097          	auipc	ra,0x1
    90000c52:	1be080e7          	jalr	446(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000c56:	d92d                	beqz	a0,90000bc8 <.LBB0_15+0x1a>

0000000090000c58 <.LBB0_21>:
    90000c58:	00008517          	auipc	a0,0x8
    90000c5c:	a7850513          	addi	a0,a0,-1416 # 900086d0 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

0000000090000c60 <.LBB0_22>:
    90000c60:	00008697          	auipc	a3,0x8
    90000c64:	aa068693          	addi	a3,a3,-1376 # 90008700 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

0000000090000c68 <.LBB0_23>:
    90000c68:	00008717          	auipc	a4,0x8
    90000c6c:	ac870713          	addi	a4,a4,-1336 # 90008730 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    90000c70:	fb040613          	addi	a2,s0,-80
    90000c74:	02b00593          	li	a1,43
    90000c78:	00001097          	auipc	ra,0x1
    90000c7c:	a30080e7          	jalr	-1488(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000c82 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE>:
    90000c82:	714d                	addi	sp,sp,-336
    90000c84:	e686                	sd	ra,328(sp)
    90000c86:	e2a2                	sd	s0,320(sp)
    90000c88:	fe26                	sd	s1,312(sp)
    90000c8a:	fa4a                	sd	s2,304(sp)
    90000c8c:	f64e                	sd	s3,296(sp)
    90000c8e:	f252                	sd	s4,288(sp)
    90000c90:	0a80                	addi	s0,sp,336
    90000c92:	84aa                	mv	s1,a0
    90000c94:	0330000f          	fence	rw,rw
    90000c98:	6108                	ld	a0,0(a0)
    90000c9a:	0230000f          	fence	r,rw
    90000c9e:	e555                	bnez	a0,90000d4a <.LBB0_14+0x92>
    90000ca0:	4585                	li	a1,1
    90000ca2:	1604b52f          	lr.d.aqrl	a0,(s1)
    90000ca6:	e501                	bnez	a0,90000cae <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE+0x2c>
    90000ca8:	1eb4b62f          	sc.d.aqrl	a2,a1,(s1)
    90000cac:	fa7d                	bnez	a2,90000ca2 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE+0x20>
    90000cae:	ed51                	bnez	a0,90000d4a <.LBB0_14+0x92>
    90000cb0:	ea943823          	sd	s1,-336(s0)
    90000cb4:	eab40c23          	sb	a1,-328(s0)

0000000090000cb8 <.LBB0_14>:
    90000cb8:	00009917          	auipc	s2,0x9
    90000cbc:	34890913          	addi	s2,s2,840 # 9000a000 <erodata>
    90000cc0:	00093a03          	ld	s4,0(s2)
    90000cc4:	f4840513          	addi	a0,s0,-184
    90000cc8:	08800613          	li	a2,136
    90000ccc:	4581                	li	a1,0
    90000cce:	00003097          	auipc	ra,0x3
    90000cd2:	022080e7          	jalr	34(ra) # 90003cf0 <memset>
    90000cd6:	001a0513          	addi	a0,s4,1
    90000cda:	0d456e63          	bltu	a0,s4,90000db6 <.LBB0_19>
    90000cde:	45c5                	li	a1,17
    90000ce0:	0eba7463          	bgeu	s4,a1,90000dc8 <.LBB0_20>
    90000ce4:	00351613          	slli	a2,a0,0x3
    90000ce8:	00890593          	addi	a1,s2,8
    90000cec:	f4840913          	addi	s2,s0,-184
    90000cf0:	854a                	mv	a0,s2
    90000cf2:	00003097          	auipc	ra,0x3
    90000cf6:	fe8080e7          	jalr	-24(ra) # 90003cda <memcpy>
    90000cfa:	ec040993          	addi	s3,s0,-320
    90000cfe:	08800613          	li	a2,136
    90000d02:	854e                	mv	a0,s3
    90000d04:	85ca                	mv	a1,s2
    90000d06:	00003097          	auipc	ra,0x3
    90000d0a:	fd4080e7          	jalr	-44(ra) # 90003cda <memcpy>
    90000d0e:	4505                	li	a0,1
    90000d10:	e488                	sd	a0,8(s1)
    90000d12:	0004b823          	sd	zero,16(s1)
    90000d16:	0144bc23          	sd	s4,24(s1)
    90000d1a:	0204b023          	sd	zero,32(s1)
    90000d1e:	02848513          	addi	a0,s1,40
    90000d22:	08800613          	li	a2,136
    90000d26:	85ce                	mv	a1,s3
    90000d28:	00003097          	auipc	ra,0x3
    90000d2c:	fb2080e7          	jalr	-78(ra) # 90003cda <memcpy>
    90000d30:	ea040c23          	sb	zero,-328(s0)
    90000d34:	0310000f          	fence	rw,w
    90000d38:	4509                	li	a0,2
    90000d3a:	e088                	sd	a0,0(s1)
    90000d3c:	eb040513          	addi	a0,s0,-336
    90000d40:	00001097          	auipc	ra,0x1
    90000d44:	89e080e7          	jalr	-1890(ra) # 900015de <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>
    90000d48:	a005                	j	90000d68 <.LBB0_14+0xb0>
    90000d4a:	4585                	li	a1,1
    90000d4c:	00a5cb63          	blt	a1,a0,90000d62 <.LBB0_14+0xaa>
    90000d50:	02b51663          	bne	a0,a1,90000d7c <.LBB0_15>
    90000d54:	0330000f          	fence	rw,rw
    90000d58:	6088                	ld	a0,0(s1)
    90000d5a:	0230000f          	fence	r,rw
    90000d5e:	fea5d9e3          	bge	a1,a0,90000d50 <.LBB0_14+0x98>
    90000d62:	4589                	li	a1,2
    90000d64:	02b51b63          	bne	a0,a1,90000d9a <.LBB0_17>
    90000d68:	01048513          	addi	a0,s1,16
    90000d6c:	7a12                	ld	s4,288(sp)
    90000d6e:	79b2                	ld	s3,296(sp)
    90000d70:	7952                	ld	s2,304(sp)
    90000d72:	74f2                	ld	s1,312(sp)
    90000d74:	6416                	ld	s0,320(sp)
    90000d76:	60b6                	ld	ra,328(sp)
    90000d78:	6171                	addi	sp,sp,336
    90000d7a:	8082                	ret

0000000090000d7c <.LBB0_15>:
    90000d7c:	00008517          	auipc	a0,0x8
    90000d80:	8bc50513          	addi	a0,a0,-1860 # 90008638 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.3.llvm.16892965281369196021>

0000000090000d84 <.LBB0_16>:
    90000d84:	00008617          	auipc	a2,0x8
    90000d88:	8dc60613          	addi	a2,a2,-1828 # 90008660 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.4.llvm.16892965281369196021>
    90000d8c:	02800593          	li	a1,40
    90000d90:	00001097          	auipc	ra,0x1
    90000d94:	978080e7          	jalr	-1672(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000d9a <.LBB0_17>:
    90000d9a:	00008517          	auipc	a0,0x8
    90000d9e:	80e50513          	addi	a0,a0,-2034 # 900085a8 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.0.llvm.16892965281369196021>

0000000090000da2 <.LBB0_18>:
    90000da2:	00008617          	auipc	a2,0x8
    90000da6:	87e60613          	addi	a2,a2,-1922 # 90008620 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.2.llvm.16892965281369196021>
    90000daa:	45c5                	li	a1,17
    90000dac:	00001097          	auipc	ra,0x1
    90000db0:	95c080e7          	jalr	-1700(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000db6 <.LBB0_19>:
    90000db6:	00008517          	auipc	a0,0x8
    90000dba:	8d250513          	addi	a0,a0,-1838 # 90008688 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.6.llvm.16892965281369196021>
    90000dbe:	00002097          	auipc	ra,0x2
    90000dc2:	bd2080e7          	jalr	-1070(ra) # 90002990 <_ZN4core5slice5index29slice_end_index_overflow_fail17h5ff2b53285909b6aE>
	...

0000000090000dc8 <.LBB0_20>:
    90000dc8:	00008617          	auipc	a2,0x8
    90000dcc:	8c060613          	addi	a2,a2,-1856 # 90008688 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.6.llvm.16892965281369196021>
    90000dd0:	45c5                	li	a1,17
    90000dd2:	00002097          	auipc	ra,0x2
    90000dd6:	b3e080e7          	jalr	-1218(ra) # 90002910 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
	...

0000000090000ddc <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hfa677e73d0acd94aE.llvm.14678122160713693238>:
    90000ddc:	1141                	addi	sp,sp,-16
    90000dde:	e406                	sd	ra,8(sp)
    90000de0:	e022                	sd	s0,0(sp)
    90000de2:	0800                	addi	s0,sp,16
    90000de4:	6402                	ld	s0,0(sp)
    90000de6:	60a2                	ld	ra,8(sp)
    90000de8:	0141                	addi	sp,sp,16
    90000dea:	8082                	ret

0000000090000dec <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238>:
    90000dec:	1101                	addi	sp,sp,-32
    90000dee:	ec06                	sd	ra,24(sp)
    90000df0:	e822                	sd	s0,16(sp)
    90000df2:	1000                	addi	s0,sp,32
    90000df4:	0005851b          	sext.w	a0,a1
    90000df8:	08000613          	li	a2,128
    90000dfc:	fe042623          	sw	zero,-20(s0)
    90000e00:	00c57663          	bgeu	a0,a2,90000e0c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x20>
    90000e04:	feb40623          	sb	a1,-20(s0)
    90000e08:	4505                	li	a0,1
    90000e0a:	a859                	j	90000ea0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xb4>
    90000e0c:	00b5d51b          	srliw	a0,a1,0xb
    90000e10:	e105                	bnez	a0,90000e30 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x44>
    90000e12:	0065d513          	srli	a0,a1,0x6
    90000e16:	03f5f593          	andi	a1,a1,63
    90000e1a:	fc056613          	ori	a2,a0,-64
    90000e1e:	fec40623          	sb	a2,-20(s0)
    90000e22:	0805e513          	ori	a0,a1,128
    90000e26:	fea406a3          	sb	a0,-19(s0)
    90000e2a:	4509                	li	a0,2
    90000e2c:	85b2                	mv	a1,a2
    90000e2e:	a88d                	j	90000ea0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xb4>
    90000e30:	0105d51b          	srliw	a0,a1,0x10
    90000e34:	e905                	bnez	a0,90000e64 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x78>
    90000e36:	00c5d51b          	srliw	a0,a1,0xc
    90000e3a:	0065d61b          	srliw	a2,a1,0x6
    90000e3e:	03f5f593          	andi	a1,a1,63
    90000e42:	fe056693          	ori	a3,a0,-32
    90000e46:	fed40623          	sb	a3,-20(s0)
    90000e4a:	03f67513          	andi	a0,a2,63
    90000e4e:	08056513          	ori	a0,a0,128
    90000e52:	fea406a3          	sb	a0,-19(s0)
    90000e56:	0805e513          	ori	a0,a1,128
    90000e5a:	fea40723          	sb	a0,-18(s0)
    90000e5e:	450d                	li	a0,3
    90000e60:	85b6                	mv	a1,a3
    90000e62:	a83d                	j	90000ea0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xb4>
    90000e64:	0125d51b          	srliw	a0,a1,0x12
    90000e68:	00c5d61b          	srliw	a2,a1,0xc
    90000e6c:	0065d69b          	srliw	a3,a1,0x6
    90000e70:	03f5f593          	andi	a1,a1,63
    90000e74:	ff056713          	ori	a4,a0,-16
    90000e78:	fee40623          	sb	a4,-20(s0)
    90000e7c:	03f67513          	andi	a0,a2,63
    90000e80:	08056513          	ori	a0,a0,128
    90000e84:	fea406a3          	sb	a0,-19(s0)
    90000e88:	03f6f513          	andi	a0,a3,63
    90000e8c:	08056513          	ori	a0,a0,128
    90000e90:	fea40723          	sb	a0,-18(s0)
    90000e94:	0805e513          	ori	a0,a1,128
    90000e98:	fea407a3          	sb	a0,-17(s0)
    90000e9c:	4511                	li	a0,4
    90000e9e:	85ba                	mv	a1,a4
    90000ea0:	fec40613          	addi	a2,s0,-20
    90000ea4:	00a607b3          	add	a5,a2,a0
    90000ea8:	0e000393          	li	t2,224
    90000eac:	0f000313          	li	t1,240
    90000eb0:	001c0837          	lui	a6,0x1c0
    90000eb4:	001102b7          	lui	t0,0x110
    90000eb8:	4885                	li	a7,1
    90000eba:	00160693          	addi	a3,a2,1
    90000ebe:	03859513          	slli	a0,a1,0x38
    90000ec2:	43855713          	srai	a4,a0,0x38
    90000ec6:	0ff5f513          	andi	a0,a1,255
    90000eca:	06075d63          	bgez	a4,90000f44 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x158>
    90000ece:	02f68e63          	beq	a3,a5,90000f0a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x11e>
    90000ed2:	00164703          	lbu	a4,1(a2)
    90000ed6:	00260693          	addi	a3,a2,2
    90000eda:	03f77613          	andi	a2,a4,63
    90000ede:	89fd                	andi	a1,a1,31
    90000ee0:	02756a63          	bltu	a0,t2,90000f14 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x128>
    90000ee4:	02f68c63          	beq	a3,a5,90000f1c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x130>
    90000ee8:	0006c703          	lbu	a4,0(a3)
    90000eec:	0685                	addi	a3,a3,1
    90000eee:	03f77713          	andi	a4,a4,63
    90000ef2:	061a                	slli	a2,a2,0x6
    90000ef4:	8e59                	or	a2,a2,a4
    90000ef6:	02656963          	bltu	a0,t1,90000f28 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x13c>
    90000efa:	02f68b63          	beq	a3,a5,90000f30 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x144>
    90000efe:	0006c503          	lbu	a0,0(a3)
    90000f02:	0685                	addi	a3,a3,1
    90000f04:	03f57513          	andi	a0,a0,63
    90000f08:	a035                	j	90000f34 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x148>
    90000f0a:	4601                	li	a2,0
    90000f0c:	86be                	mv	a3,a5
    90000f0e:	89fd                	andi	a1,a1,31
    90000f10:	fc757ae3          	bgeu	a0,t2,90000ee4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xf8>
    90000f14:	00659513          	slli	a0,a1,0x6
    90000f18:	8d51                	or	a0,a0,a2
    90000f1a:	a02d                	j	90000f44 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x158>
    90000f1c:	4701                	li	a4,0
    90000f1e:	86be                	mv	a3,a5
    90000f20:	061a                	slli	a2,a2,0x6
    90000f22:	8e59                	or	a2,a2,a4
    90000f24:	fc657be3          	bgeu	a0,t1,90000efa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x10e>
    90000f28:	00c59513          	slli	a0,a1,0xc
    90000f2c:	8d51                	or	a0,a0,a2
    90000f2e:	a819                	j	90000f44 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x158>
    90000f30:	4501                	li	a0,0
    90000f32:	86be                	mv	a3,a5
    90000f34:	05ca                	slli	a1,a1,0x12
    90000f36:	0105f5b3          	and	a1,a1,a6
    90000f3a:	061a                	slli	a2,a2,0x6
    90000f3c:	8dd1                	or	a1,a1,a2
    90000f3e:	8d4d                	or	a0,a0,a1
    90000f40:	00550c63          	beq	a0,t0,90000f58 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x16c>
    90000f44:	4581                	li	a1,0
    90000f46:	4601                	li	a2,0
    90000f48:	00000073          	ecall
    90000f4c:	00f68663          	beq	a3,a5,90000f58 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x16c>
    90000f50:	0006c583          	lbu	a1,0(a3)
    90000f54:	8636                	mv	a2,a3
    90000f56:	b795                	j	90000eba <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xce>
    90000f58:	4501                	li	a0,0
    90000f5a:	6442                	ld	s0,16(sp)
    90000f5c:	60e2                	ld	ra,24(sp)
    90000f5e:	6105                	addi	sp,sp,32
    90000f60:	8082                	ret

0000000090000f62 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h91066db99e541c9aE.llvm.14678122160713693238>:
    90000f62:	715d                	addi	sp,sp,-80
    90000f64:	e486                	sd	ra,72(sp)
    90000f66:	e0a2                	sd	s0,64(sp)
    90000f68:	0880                	addi	s0,sp,80
    90000f6a:	6108                	ld	a0,0(a0)
    90000f6c:	7590                	ld	a2,40(a1)
    90000f6e:	7194                	ld	a3,32(a1)
    90000f70:	faa43c23          	sd	a0,-72(s0)
    90000f74:	fec43423          	sd	a2,-24(s0)
    90000f78:	fed43023          	sd	a3,-32(s0)
    90000f7c:	6d88                	ld	a0,24(a1)
    90000f7e:	6990                	ld	a2,16(a1)
    90000f80:	6594                	ld	a3,8(a1)
    90000f82:	618c                	ld	a1,0(a1)
    90000f84:	fca43c23          	sd	a0,-40(s0)
    90000f88:	fcc43823          	sd	a2,-48(s0)
    90000f8c:	fcd43423          	sd	a3,-56(s0)
    90000f90:	fcb43023          	sd	a1,-64(s0)

0000000090000f94 <.LBB2_1>:
    90000f94:	00007597          	auipc	a1,0x7
    90000f98:	70c58593          	addi	a1,a1,1804 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000f9c:	fb840513          	addi	a0,s0,-72
    90000fa0:	fc040613          	addi	a2,s0,-64
    90000fa4:	00001097          	auipc	ra,0x1
    90000fa8:	e68080e7          	jalr	-408(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000fac:	6406                	ld	s0,64(sp)
    90000fae:	60a6                	ld	ra,72(sp)
    90000fb0:	6161                	addi	sp,sp,80
    90000fb2:	8082                	ret

0000000090000fb4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238>:
    90000fb4:	1141                	addi	sp,sp,-16
    90000fb6:	e406                	sd	ra,8(sp)
    90000fb8:	e022                	sd	s0,0(sp)
    90000fba:	0800                	addi	s0,sp,16
    90000fbc:	ca4d                	beqz	a2,9000106e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0xba>
    90000fbe:	00c587b3          	add	a5,a1,a2
    90000fc2:	0e000393          	li	t2,224
    90000fc6:	0f000313          	li	t1,240
    90000fca:	001c0837          	lui	a6,0x1c0
    90000fce:	001102b7          	lui	t0,0x110
    90000fd2:	4885                	li	a7,1
    90000fd4:	a819                	j	90000fea <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x36>
    90000fd6:	00659513          	slli	a0,a1,0x6
    90000fda:	8d51                	or	a0,a0,a2
    90000fdc:	4581                	li	a1,0
    90000fde:	4601                	li	a2,0
    90000fe0:	00000073          	ecall
    90000fe4:	85b6                	mv	a1,a3
    90000fe6:	08f68463          	beq	a3,a5,9000106e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0xba>
    90000fea:	00058603          	lb	a2,0(a1)
    90000fee:	00158693          	addi	a3,a1,1
    90000ff2:	0ff67513          	andi	a0,a2,255
    90000ff6:	fe0653e3          	bgez	a2,90000fdc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x28>
    90000ffa:	00f68d63          	beq	a3,a5,90001014 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x60>
    90000ffe:	0015c603          	lbu	a2,1(a1)
    90001002:	00258693          	addi	a3,a1,2
    90001006:	03f67613          	andi	a2,a2,63
    9000100a:	01f57593          	andi	a1,a0,31
    9000100e:	fc7564e3          	bltu	a0,t2,90000fd6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x22>
    90001012:	a039                	j	90001020 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x6c>
    90001014:	4601                	li	a2,0
    90001016:	86be                	mv	a3,a5
    90001018:	01f57593          	andi	a1,a0,31
    9000101c:	fa756de3          	bltu	a0,t2,90000fd6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x22>
    90001020:	02f68363          	beq	a3,a5,90001046 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x92>
    90001024:	0006c703          	lbu	a4,0(a3)
    90001028:	0685                	addi	a3,a3,1
    9000102a:	03f77713          	andi	a4,a4,63
    9000102e:	061a                	slli	a2,a2,0x6
    90001030:	8e59                	or	a2,a2,a4
    90001032:	02656063          	bltu	a0,t1,90001052 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x9e>
    90001036:	02f68263          	beq	a3,a5,9000105a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0xa6>
    9000103a:	0006c503          	lbu	a0,0(a3)
    9000103e:	0685                	addi	a3,a3,1
    90001040:	03f57513          	andi	a0,a0,63
    90001044:	a829                	j	9000105e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0xaa>
    90001046:	4701                	li	a4,0
    90001048:	86be                	mv	a3,a5
    9000104a:	061a                	slli	a2,a2,0x6
    9000104c:	8e59                	or	a2,a2,a4
    9000104e:	fe6574e3          	bgeu	a0,t1,90001036 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x82>
    90001052:	00c59513          	slli	a0,a1,0xc
    90001056:	8d51                	or	a0,a0,a2
    90001058:	b751                	j	90000fdc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x28>
    9000105a:	4501                	li	a0,0
    9000105c:	86be                	mv	a3,a5
    9000105e:	05ca                	slli	a1,a1,0x12
    90001060:	0105f5b3          	and	a1,a1,a6
    90001064:	061a                	slli	a2,a2,0x6
    90001066:	8dd1                	or	a1,a1,a2
    90001068:	8d4d                	or	a0,a0,a1
    9000106a:	f65519e3          	bne	a0,t0,90000fdc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x28>
    9000106e:	4501                	li	a0,0
    90001070:	6402                	ld	s0,0(sp)
    90001072:	60a2                	ld	ra,8(sp)
    90001074:	0141                	addi	sp,sp,16
    90001076:	8082                	ret

0000000090001078 <_ZN2os7console5print17h8c28c37cb0950d91E>:
    90001078:	715d                	addi	sp,sp,-80
    9000107a:	e486                	sd	ra,72(sp)
    9000107c:	e0a2                	sd	s0,64(sp)
    9000107e:	0880                	addi	s0,sp,80
    90001080:	750c                	ld	a1,40(a0)
    90001082:	7110                	ld	a2,32(a0)
    90001084:	fc040693          	addi	a3,s0,-64
    90001088:	fad43c23          	sd	a3,-72(s0)
    9000108c:	feb43423          	sd	a1,-24(s0)
    90001090:	fec43023          	sd	a2,-32(s0)
    90001094:	6d0c                	ld	a1,24(a0)
    90001096:	6910                	ld	a2,16(a0)
    90001098:	6514                	ld	a3,8(a0)
    9000109a:	6108                	ld	a0,0(a0)
    9000109c:	fcb43c23          	sd	a1,-40(s0)
    900010a0:	fcc43823          	sd	a2,-48(s0)
    900010a4:	fcd43423          	sd	a3,-56(s0)
    900010a8:	fca43023          	sd	a0,-64(s0)

00000000900010ac <.LBB4_3>:
    900010ac:	00007597          	auipc	a1,0x7
    900010b0:	5f458593          	addi	a1,a1,1524 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    900010b4:	fb840513          	addi	a0,s0,-72
    900010b8:	fc040613          	addi	a2,s0,-64
    900010bc:	00001097          	auipc	ra,0x1
    900010c0:	d50080e7          	jalr	-688(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    900010c4:	e509                	bnez	a0,900010ce <.LBB4_4>
    900010c6:	6406                	ld	s0,64(sp)
    900010c8:	60a6                	ld	ra,72(sp)
    900010ca:	6161                	addi	sp,sp,80
    900010cc:	8082                	ret

00000000900010ce <.LBB4_4>:
    900010ce:	00007517          	auipc	a0,0x7
    900010d2:	60250513          	addi	a0,a0,1538 # 900086d0 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

00000000900010d6 <.LBB4_5>:
    900010d6:	00007697          	auipc	a3,0x7
    900010da:	62a68693          	addi	a3,a3,1578 # 90008700 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

00000000900010de <.LBB4_6>:
    900010de:	00007717          	auipc	a4,0x7
    900010e2:	65270713          	addi	a4,a4,1618 # 90008730 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    900010e6:	fc040613          	addi	a2,s0,-64
    900010ea:	02b00593          	li	a1,43
    900010ee:	00000097          	auipc	ra,0x0
    900010f2:	5ba080e7          	jalr	1466(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900010f8 <rust_main>:
    900010f8:	715d                	addi	sp,sp,-80
    900010fa:	e486                	sd	ra,72(sp)
    900010fc:	e0a2                	sd	s0,64(sp)
    900010fe:	0880                	addi	s0,sp,80

0000000090001100 <.LBB0_5>:
    90001100:	00036517          	auipc	a0,0x36
    90001104:	f0050513          	addi	a0,a0,-256 # 90037000 <ebss>

0000000090001108 <.LBB0_6>:
    90001108:	00035597          	auipc	a1,0x35
    9000110c:	ef858593          	addi	a1,a1,-264 # 90036000 <boot_stack_top>
    90001110:	00a5f963          	bgeu	a1,a0,90001122 <.LBB0_6+0x1a>
    90001114:	00158613          	addi	a2,a1,1
    90001118:	00058023          	sb	zero,0(a1)
    9000111c:	85b2                	mv	a1,a2
    9000111e:	fea66be3          	bltu	a2,a0,90001114 <.LBB0_6+0xc>
    90001122:	fc040513          	addi	a0,s0,-64
    90001126:	faa43c23          	sd	a0,-72(s0)

000000009000112a <.LBB0_7>:
    9000112a:	00007517          	auipc	a0,0x7
    9000112e:	64650513          	addi	a0,a0,1606 # 90008770 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.5>
    90001132:	fca43023          	sd	a0,-64(s0)
    90001136:	4505                	li	a0,1
    90001138:	fca43423          	sd	a0,-56(s0)
    9000113c:	fc043823          	sd	zero,-48(s0)

0000000090001140 <.LBB0_8>:
    90001140:	00007517          	auipc	a0,0x7
    90001144:	64050513          	addi	a0,a0,1600 # 90008780 <anon.e4e8438ee872072f8d0cec984e1e8d26.0.llvm.16429006436562869720>
    90001148:	fea43023          	sd	a0,-32(s0)
    9000114c:	fe043423          	sd	zero,-24(s0)

0000000090001150 <.LBB0_9>:
    90001150:	00007597          	auipc	a1,0x7
    90001154:	55058593          	addi	a1,a1,1360 # 900086a0 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90001158:	fb840513          	addi	a0,s0,-72
    9000115c:	fc040613          	addi	a2,s0,-64
    90001160:	00001097          	auipc	ra,0x1
    90001164:	cac080e7          	jalr	-852(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001168:	c515                	beqz	a0,90001194 <.LBB0_12+0x1a>

000000009000116a <.LBB0_10>:
    9000116a:	00007517          	auipc	a0,0x7
    9000116e:	56650513          	addi	a0,a0,1382 # 900086d0 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

0000000090001172 <.LBB0_11>:
    90001172:	00007697          	auipc	a3,0x7
    90001176:	58e68693          	addi	a3,a3,1422 # 90008700 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

000000009000117a <.LBB0_12>:
    9000117a:	00007717          	auipc	a4,0x7
    9000117e:	5b670713          	addi	a4,a4,1462 # 90008730 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    90001182:	fc040613          	addi	a2,s0,-64
    90001186:	02b00593          	li	a1,43
    9000118a:	00000097          	auipc	ra,0x0
    9000118e:	51e080e7          	jalr	1310(ra) # 900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
    90001192:	0000                	unimp
    90001194:	fffff097          	auipc	ra,0xfffff
    90001198:	780080e7          	jalr	1920(ra) # 90000914 <_ZN2os4trap4init17h6c4ada7d88655b0dE>
    9000119c:	fffff097          	auipc	ra,0xfffff
    900011a0:	316080e7          	jalr	790(ra) # 900004b2 <_ZN2os5batch4init17h53107c46faa69cb8E>
    900011a4:	fffff097          	auipc	ra,0xfffff
    900011a8:	4e0080e7          	jalr	1248(ra) # 90000684 <_ZN2os5batch12run_next_app17h219220bb48d367c5E>
	...

00000000900011ae <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h013e11055eb3fc78E>:
    900011ae:	1141                	addi	sp,sp,-16
    900011b0:	e406                	sd	ra,8(sp)
    900011b2:	e022                	sd	s0,0(sp)
    900011b4:	0800                	addi	s0,sp,16
    900011b6:	6110                	ld	a2,0(a0)
    900011b8:	6514                	ld	a3,8(a0)
    900011ba:	872e                	mv	a4,a1
    900011bc:	8532                	mv	a0,a2
    900011be:	85b6                	mv	a1,a3
    900011c0:	863a                	mv	a2,a4
    900011c2:	6402                	ld	s0,0(sp)
    900011c4:	60a2                	ld	ra,8(sp)
    900011c6:	0141                	addi	sp,sp,16
    900011c8:	00001317          	auipc	t1,0x1
    900011cc:	37c30067          	jr	892(t1) # 90002544 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>

00000000900011d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3cffa91ed33bac73E>:
    900011d0:	1141                	addi	sp,sp,-16
    900011d2:	e406                	sd	ra,8(sp)
    900011d4:	e022                	sd	s0,0(sp)
    900011d6:	0800                	addi	s0,sp,16
    900011d8:	6108                	ld	a0,0(a0)
    900011da:	6402                	ld	s0,0(sp)
    900011dc:	60a2                	ld	ra,8(sp)
    900011de:	0141                	addi	sp,sp,16
    900011e0:	00001317          	auipc	t1,0x1
    900011e4:	bfa30067          	jr	-1030(t1) # 90001dda <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>

00000000900011e8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a10af6d90298f80E>:
    900011e8:	1141                	addi	sp,sp,-16
    900011ea:	e406                	sd	ra,8(sp)
    900011ec:	e022                	sd	s0,0(sp)
    900011ee:	0800                	addi	s0,sp,16
    900011f0:	6108                	ld	a0,0(a0)
    900011f2:	6402                	ld	s0,0(sp)
    900011f4:	60a2                	ld	ra,8(sp)
    900011f6:	0141                	addi	sp,sp,16
    900011f8:	00000317          	auipc	t1,0x0
    900011fc:	2c430067          	jr	708(t1) # 900014bc <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ea901fb0f7a0b63E>

0000000090001200 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd37e93de3c4e9000E>:
    90001200:	1141                	addi	sp,sp,-16
    90001202:	e406                	sd	ra,8(sp)
    90001204:	e022                	sd	s0,0(sp)
    90001206:	0800                	addi	s0,sp,16
    90001208:	6108                	ld	a0,0(a0)
    9000120a:	6402                	ld	s0,0(sp)
    9000120c:	60a2                	ld	ra,8(sp)
    9000120e:	0141                	addi	sp,sp,16
    90001210:	00000317          	auipc	t1,0x0
    90001214:	1f230067          	jr	498(t1) # 90001402 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h5550b07615409f43E>

0000000090001218 <_ZN4core3ptr59drop_in_place$LT$$RF$riscv..register..scause..Exception$GT$17h232a53927400fdabE>:
    90001218:	1141                	addi	sp,sp,-16
    9000121a:	e406                	sd	ra,8(sp)
    9000121c:	e022                	sd	s0,0(sp)
    9000121e:	0800                	addi	s0,sp,16
    90001220:	6402                	ld	s0,0(sp)
    90001222:	60a2                	ld	ra,8(sp)
    90001224:	0141                	addi	sp,sp,16
    90001226:	8082                	ret

0000000090001228 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E>:
    90001228:	1141                	addi	sp,sp,-16
    9000122a:	e406                	sd	ra,8(sp)
    9000122c:	e022                	sd	s0,0(sp)
    9000122e:	0800                	addi	s0,sp,16
    90001230:	85aa                	mv	a1,a0
    90001232:	4611                	li	a2,4
    90001234:	4519                	li	a0,6
    90001236:	00b64e63          	blt	a2,a1,90001252 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x2a>
    9000123a:	c995                	beqz	a1,9000126e <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x46>
    9000123c:	4605                	li	a2,1
    9000123e:	02c58d63          	beq	a1,a2,90001278 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x50>
    90001242:	4611                	li	a2,4
    90001244:	00c59363          	bne	a1,a2,9000124a <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x22>
    90001248:	4509                	li	a0,2
    9000124a:	6402                	ld	s0,0(sp)
    9000124c:	60a2                	ld	ra,8(sp)
    9000124e:	0141                	addi	sp,sp,16
    90001250:	8082                	ret
    90001252:	4615                	li	a2,5
    90001254:	02c58763          	beq	a1,a2,90001282 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x5a>
    90001258:	4621                	li	a2,8
    9000125a:	02c58963          	beq	a1,a2,9000128c <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x64>
    9000125e:	4625                	li	a2,9
    90001260:	fec595e3          	bne	a1,a2,9000124a <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x22>
    90001264:	4515                	li	a0,5
    90001266:	6402                	ld	s0,0(sp)
    90001268:	60a2                	ld	ra,8(sp)
    9000126a:	0141                	addi	sp,sp,16
    9000126c:	8082                	ret
    9000126e:	4501                	li	a0,0
    90001270:	6402                	ld	s0,0(sp)
    90001272:	60a2                	ld	ra,8(sp)
    90001274:	0141                	addi	sp,sp,16
    90001276:	8082                	ret
    90001278:	4505                	li	a0,1
    9000127a:	6402                	ld	s0,0(sp)
    9000127c:	60a2                	ld	ra,8(sp)
    9000127e:	0141                	addi	sp,sp,16
    90001280:	8082                	ret
    90001282:	450d                	li	a0,3
    90001284:	6402                	ld	s0,0(sp)
    90001286:	60a2                	ld	ra,8(sp)
    90001288:	0141                	addi	sp,sp,16
    9000128a:	8082                	ret
    9000128c:	4511                	li	a0,4
    9000128e:	6402                	ld	s0,0(sp)
    90001290:	60a2                	ld	ra,8(sp)
    90001292:	0141                	addi	sp,sp,16
    90001294:	8082                	ret

0000000090001296 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E>:
    90001296:	1141                	addi	sp,sp,-16
    90001298:	e406                	sd	ra,8(sp)
    9000129a:	e022                	sd	s0,0(sp)
    9000129c:	0800                	addi	s0,sp,16
    9000129e:	85aa                	mv	a1,a0
    900012a0:	4615                	li	a2,5
    900012a2:	452d                	li	a0,11
    900012a4:	02b65363          	bge	a2,a1,900012ca <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x34>
    900012a8:	462d                	li	a2,11
    900012aa:	04b64163          	blt	a2,a1,900012ec <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x56>
    900012ae:	4619                	li	a2,6
    900012b0:	06c58563          	beq	a1,a2,9000131a <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x84>
    900012b4:	461d                	li	a2,7
    900012b6:	06c58763          	beq	a1,a2,90001324 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x8e>
    900012ba:	4621                	li	a2,8
    900012bc:	00c59363          	bne	a1,a2,900012c2 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x2c>
    900012c0:	451d                	li	a0,7
    900012c2:	6402                	ld	s0,0(sp)
    900012c4:	60a2                	ld	ra,8(sp)
    900012c6:	0141                	addi	sp,sp,16
    900012c8:	8082                	ret
    900012ca:	4605                	li	a2,1
    900012cc:	02b65e63          	bge	a2,a1,90001308 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x72>
    900012d0:	4609                	li	a2,2
    900012d2:	04c58e63          	beq	a1,a2,9000132e <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x98>
    900012d6:	460d                	li	a2,3
    900012d8:	06c58063          	beq	a1,a2,90001338 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0xa2>
    900012dc:	4615                	li	a2,5
    900012de:	fec592e3          	bne	a1,a2,900012c2 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x2c>
    900012e2:	4511                	li	a0,4
    900012e4:	6402                	ld	s0,0(sp)
    900012e6:	60a2                	ld	ra,8(sp)
    900012e8:	0141                	addi	sp,sp,16
    900012ea:	8082                	ret
    900012ec:	4631                	li	a2,12
    900012ee:	04c58a63          	beq	a1,a2,90001342 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0xac>
    900012f2:	4635                	li	a2,13
    900012f4:	04c58c63          	beq	a1,a2,9000134c <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0xb6>
    900012f8:	463d                	li	a2,15
    900012fa:	fcc594e3          	bne	a1,a2,900012c2 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x2c>
    900012fe:	4529                	li	a0,10
    90001300:	6402                	ld	s0,0(sp)
    90001302:	60a2                	ld	ra,8(sp)
    90001304:	0141                	addi	sp,sp,16
    90001306:	8082                	ret
    90001308:	c5b9                	beqz	a1,90001356 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0xc0>
    9000130a:	4605                	li	a2,1
    9000130c:	fac59be3          	bne	a1,a2,900012c2 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x2c>
    90001310:	4505                	li	a0,1
    90001312:	6402                	ld	s0,0(sp)
    90001314:	60a2                	ld	ra,8(sp)
    90001316:	0141                	addi	sp,sp,16
    90001318:	8082                	ret
    9000131a:	4515                	li	a0,5
    9000131c:	6402                	ld	s0,0(sp)
    9000131e:	60a2                	ld	ra,8(sp)
    90001320:	0141                	addi	sp,sp,16
    90001322:	8082                	ret
    90001324:	4519                	li	a0,6
    90001326:	6402                	ld	s0,0(sp)
    90001328:	60a2                	ld	ra,8(sp)
    9000132a:	0141                	addi	sp,sp,16
    9000132c:	8082                	ret
    9000132e:	4509                	li	a0,2
    90001330:	6402                	ld	s0,0(sp)
    90001332:	60a2                	ld	ra,8(sp)
    90001334:	0141                	addi	sp,sp,16
    90001336:	8082                	ret
    90001338:	450d                	li	a0,3
    9000133a:	6402                	ld	s0,0(sp)
    9000133c:	60a2                	ld	ra,8(sp)
    9000133e:	0141                	addi	sp,sp,16
    90001340:	8082                	ret
    90001342:	4521                	li	a0,8
    90001344:	6402                	ld	s0,0(sp)
    90001346:	60a2                	ld	ra,8(sp)
    90001348:	0141                	addi	sp,sp,16
    9000134a:	8082                	ret
    9000134c:	4525                	li	a0,9
    9000134e:	6402                	ld	s0,0(sp)
    90001350:	60a2                	ld	ra,8(sp)
    90001352:	0141                	addi	sp,sp,16
    90001354:	8082                	ret
    90001356:	4501                	li	a0,0
    90001358:	6402                	ld	s0,0(sp)
    9000135a:	60a2                	ld	ra,8(sp)
    9000135c:	0141                	addi	sp,sp,16
    9000135e:	8082                	ret

0000000090001360 <_ZN5riscv8register6scause6Scause4code17h25a276351377520bE>:
    90001360:	1141                	addi	sp,sp,-16
    90001362:	e406                	sd	ra,8(sp)
    90001364:	e022                	sd	s0,0(sp)
    90001366:	0800                	addi	s0,sp,16
    90001368:	6108                	ld	a0,0(a0)
    9000136a:	55fd                	li	a1,-1
    9000136c:	15fe                	slli	a1,a1,0x3f
    9000136e:	15fd                	addi	a1,a1,-1
    90001370:	8d6d                	and	a0,a0,a1
    90001372:	6402                	ld	s0,0(sp)
    90001374:	60a2                	ld	ra,8(sp)
    90001376:	0141                	addi	sp,sp,16
    90001378:	8082                	ret

000000009000137a <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17hcb018b9018ff1235E>:
    9000137a:	7139                	addi	sp,sp,-64
    9000137c:	fc06                	sd	ra,56(sp)
    9000137e:	f822                	sd	s0,48(sp)
    90001380:	f426                	sd	s1,40(sp)
    90001382:	f04a                	sd	s2,32(sp)
    90001384:	0080                	addi	s0,sp,64
    90001386:	00054603          	lbu	a2,0(a0)
    9000138a:	4685                	li	a3,1
    9000138c:	00150493          	addi	s1,a0,1
    90001390:	02d61563          	bne	a2,a3,900013ba <.LBB6_6>

0000000090001394 <.LBB6_4>:
    90001394:	00007617          	auipc	a2,0x7
    90001398:	44460613          	addi	a2,a2,1092 # 900087d8 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.0>
    9000139c:	fc040913          	addi	s2,s0,-64
    900013a0:	46a5                	li	a3,9
    900013a2:	854a                	mv	a0,s2
    900013a4:	00001097          	auipc	ra,0x1
    900013a8:	164080e7          	jalr	356(ra) # 90002508 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    900013ac:	fc943c23          	sd	s1,-40(s0)

00000000900013b0 <.LBB6_5>:
    900013b0:	00007617          	auipc	a2,0x7
    900013b4:	43860613          	addi	a2,a2,1080 # 900087e8 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.1>
    900013b8:	a01d                	j	900013de <.LBB6_7+0x8>

00000000900013ba <.LBB6_6>:
    900013ba:	00007617          	auipc	a2,0x7
    900013be:	44e60613          	addi	a2,a2,1102 # 90008808 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.2>
    900013c2:	fc040913          	addi	s2,s0,-64
    900013c6:	46a5                	li	a3,9
    900013c8:	854a                	mv	a0,s2
    900013ca:	00001097          	auipc	ra,0x1
    900013ce:	13e080e7          	jalr	318(ra) # 90002508 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    900013d2:	fc943c23          	sd	s1,-40(s0)

00000000900013d6 <.LBB6_7>:
    900013d6:	00007617          	auipc	a2,0x7
    900013da:	44260613          	addi	a2,a2,1090 # 90008818 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.3>
    900013de:	fd840593          	addi	a1,s0,-40
    900013e2:	854a                	mv	a0,s2
    900013e4:	00000097          	auipc	ra,0x0
    900013e8:	658080e7          	jalr	1624(ra) # 90001a3c <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>
    900013ec:	854a                	mv	a0,s2
    900013ee:	00000097          	auipc	ra,0x0
    900013f2:	742080e7          	jalr	1858(ra) # 90001b30 <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    900013f6:	7902                	ld	s2,32(sp)
    900013f8:	74a2                	ld	s1,40(sp)
    900013fa:	7442                	ld	s0,48(sp)
    900013fc:	70e2                	ld	ra,56(sp)
    900013fe:	6121                	addi	sp,sp,64
    90001400:	8082                	ret

0000000090001402 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h5550b07615409f43E>:
    90001402:	7179                	addi	sp,sp,-48
    90001404:	f406                	sd	ra,40(sp)
    90001406:	f022                	sd	s0,32(sp)
    90001408:	ec26                	sd	s1,24(sp)
    9000140a:	1800                	addi	s0,sp,48
    9000140c:	00054503          	lbu	a0,0(a0)
    90001410:	4609                	li	a2,2
    90001412:	02a65063          	bge	a2,a0,90001432 <.LBB7_14+0x10>
    90001416:	4611                	li	a2,4
    90001418:	02a64963          	blt	a2,a0,9000144a <.LBB7_15+0x10>
    9000141c:	460d                	li	a2,3
    9000141e:	04c51163          	bne	a0,a2,90001460 <.LBB7_17>

0000000090001422 <.LBB7_14>:
    90001422:	00007617          	auipc	a2,0x7
    90001426:	43b60613          	addi	a2,a2,1083 # 9000885d <.Lanon.4033300a360cfe3f635d5cb9b1d37207.7>
    9000142a:	fd040493          	addi	s1,s0,-48
    9000142e:	46bd                	li	a3,15
    90001430:	a0bd                	j	9000149e <.LBB7_20+0xe>
    90001432:	cd1d                	beqz	a0,90001470 <.LBB7_18>
    90001434:	4605                	li	a2,1
    90001436:	04c51563          	bne	a0,a2,90001480 <.LBB7_19>

000000009000143a <.LBB7_15>:
    9000143a:	00007617          	auipc	a2,0x7
    9000143e:	43b60613          	addi	a2,a2,1083 # 90008875 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.9>
    90001442:	fd040493          	addi	s1,s0,-48
    90001446:	46b9                	li	a3,14
    90001448:	a899                	j	9000149e <.LBB7_20+0xe>
    9000144a:	4615                	li	a2,5
    9000144c:	04c51263          	bne	a0,a2,90001490 <.LBB7_20>

0000000090001450 <.LBB7_16>:
    90001450:	00007617          	auipc	a2,0x7
    90001454:	3ef60613          	addi	a2,a2,1007 # 9000883f <.Lanon.4033300a360cfe3f635d5cb9b1d37207.5>
    90001458:	fd040493          	addi	s1,s0,-48
    9000145c:	46c9                	li	a3,18
    9000145e:	a081                	j	9000149e <.LBB7_20+0xe>

0000000090001460 <.LBB7_17>:
    90001460:	00007617          	auipc	a2,0x7
    90001464:	3f160613          	addi	a2,a2,1009 # 90008851 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.6>
    90001468:	fd040493          	addi	s1,s0,-48
    9000146c:	46b1                	li	a3,12
    9000146e:	a805                	j	9000149e <.LBB7_20+0xe>

0000000090001470 <.LBB7_18>:
    90001470:	00007617          	auipc	a2,0x7
    90001474:	41b60613          	addi	a2,a2,1051 # 9000888b <.Lanon.4033300a360cfe3f635d5cb9b1d37207.9+0x16>
    90001478:	fd040493          	addi	s1,s0,-48
    9000147c:	46a1                	li	a3,8
    9000147e:	a005                	j	9000149e <.LBB7_20+0xe>

0000000090001480 <.LBB7_19>:
    90001480:	00007617          	auipc	a2,0x7
    90001484:	3ec60613          	addi	a2,a2,1004 # 9000886c <.Lanon.4033300a360cfe3f635d5cb9b1d37207.8>
    90001488:	fd040493          	addi	s1,s0,-48
    9000148c:	46a5                	li	a3,9
    9000148e:	a801                	j	9000149e <.LBB7_20+0xe>

0000000090001490 <.LBB7_20>:
    90001490:	00007617          	auipc	a2,0x7
    90001494:	3a860613          	addi	a2,a2,936 # 90008838 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.4>
    90001498:	fd040493          	addi	s1,s0,-48
    9000149c:	469d                	li	a3,7
    9000149e:	8526                	mv	a0,s1
    900014a0:	00001097          	auipc	ra,0x1
    900014a4:	068080e7          	jalr	104(ra) # 90002508 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    900014a8:	8526                	mv	a0,s1
    900014aa:	00000097          	auipc	ra,0x0
    900014ae:	686080e7          	jalr	1670(ra) # 90001b30 <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    900014b2:	64e2                	ld	s1,24(sp)
    900014b4:	7402                	ld	s0,32(sp)
    900014b6:	70a2                	ld	ra,40(sp)
    900014b8:	6145                	addi	sp,sp,48
    900014ba:	8082                	ret

00000000900014bc <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ea901fb0f7a0b63E>:
    900014bc:	7179                	addi	sp,sp,-48
    900014be:	f406                	sd	ra,40(sp)
    900014c0:	f022                	sd	s0,32(sp)
    900014c2:	ec26                	sd	s1,24(sp)
    900014c4:	1800                	addi	s0,sp,48
    900014c6:	00054503          	lbu	a0,0(a0)
    900014ca:	4615                	li	a2,5
    900014cc:	02a64163          	blt	a2,a0,900014ee <.LBB8_25+0x10>
    900014d0:	4609                	li	a2,2
    900014d2:	02a64f63          	blt	a2,a0,90001510 <.LBB8_26+0x10>
    900014d6:	c92d                	beqz	a0,90001548 <.LBB8_29>
    900014d8:	4605                	li	a2,1
    900014da:	06c51f63          	bne	a0,a2,90001558 <.LBB8_30>

00000000900014de <.LBB8_25>:
    900014de:	00003617          	auipc	a2,0x3
    900014e2:	d5260613          	addi	a2,a2,-686 # 90004230 <anon.dd013d8762cff77058a08f73d5951059.0.llvm.18225423362530247450+0x20>
    900014e6:	fd040493          	addi	s1,s0,-48
    900014ea:	46c1                	li	a3,16
    900014ec:	a8d1                	j	900015c0 <.LBB8_36+0xe>
    900014ee:	4621                	li	a2,8
    900014f0:	02a64e63          	blt	a2,a0,9000152c <.LBB8_27+0x10>
    900014f4:	4619                	li	a2,6
    900014f6:	06c50963          	beq	a0,a2,90001568 <.LBB8_31>
    900014fa:	461d                	li	a2,7
    900014fc:	06c51b63          	bne	a0,a2,90001572 <.LBB8_32>

0000000090001500 <.LBB8_26>:
    90001500:	00007617          	auipc	a2,0x7
    90001504:	3c260613          	addi	a2,a2,962 # 900088c2 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.14>
    90001508:	fd040493          	addi	s1,s0,-48
    9000150c:	46ad                	li	a3,11
    9000150e:	a84d                	j	900015c0 <.LBB8_36+0xe>
    90001510:	460d                	li	a2,3
    90001512:	06c50863          	beq	a0,a2,90001582 <.LBB8_33>
    90001516:	4611                	li	a2,4
    90001518:	06c51d63          	bne	a0,a2,90001592 <.LBB8_34>

000000009000151c <.LBB8_27>:
    9000151c:	00007617          	auipc	a2,0x7
    90001520:	3ca60613          	addi	a2,a2,970 # 900088e6 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.17>
    90001524:	fd040493          	addi	s1,s0,-48
    90001528:	46a5                	li	a3,9
    9000152a:	a859                	j	900015c0 <.LBB8_36+0xe>
    9000152c:	4625                	li	a2,9
    9000152e:	06c50a63          	beq	a0,a2,900015a2 <.LBB8_35>
    90001532:	4629                	li	a2,10
    90001534:	06c51f63          	bne	a0,a2,900015b2 <.LBB8_36>

0000000090001538 <.LBB8_28>:
    90001538:	00007617          	auipc	a2,0x7
    9000153c:	35b60613          	addi	a2,a2,859 # 90008893 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.11>
    90001540:	fd040493          	addi	s1,s0,-48
    90001544:	46b9                	li	a3,14
    90001546:	a8ad                	j	900015c0 <.LBB8_36+0xe>

0000000090001548 <.LBB8_29>:
    90001548:	00007617          	auipc	a2,0x7
    9000154c:	3c360613          	addi	a2,a2,963 # 9000890b <.Lanon.4033300a360cfe3f635d5cb9b1d37207.21>
    90001550:	fd040493          	addi	s1,s0,-48
    90001554:	46d5                	li	a3,21
    90001556:	a0ad                	j	900015c0 <.LBB8_36+0xe>

0000000090001558 <.LBB8_30>:
    90001558:	00007617          	auipc	a2,0x7
    9000155c:	3a160613          	addi	a2,a2,929 # 900088f9 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.19>
    90001560:	fd040493          	addi	s1,s0,-48
    90001564:	46c9                	li	a3,18
    90001566:	a8a9                	j	900015c0 <.LBB8_36+0xe>

0000000090001568 <.LBB8_31>:
    90001568:	00007617          	auipc	a2,0x7
    9000156c:	36560613          	addi	a2,a2,869 # 900088cd <.Lanon.4033300a360cfe3f635d5cb9b1d37207.15>
    90001570:	a829                	j	9000158a <.LBB8_33+0x8>

0000000090001572 <.LBB8_32>:
    90001572:	00007617          	auipc	a2,0x7
    90001576:	33c60613          	addi	a2,a2,828 # 900088ae <.Lanon.4033300a360cfe3f635d5cb9b1d37207.13>
    9000157a:	fd040493          	addi	s1,s0,-48
    9000157e:	46d1                	li	a3,20
    90001580:	a081                	j	900015c0 <.LBB8_36+0xe>

0000000090001582 <.LBB8_33>:
    90001582:	00007617          	auipc	a2,0x7
    90001586:	36d60613          	addi	a2,a2,877 # 900088ef <.Lanon.4033300a360cfe3f635d5cb9b1d37207.18>
    9000158a:	fd040493          	addi	s1,s0,-48
    9000158e:	46a9                	li	a3,10
    90001590:	a805                	j	900015c0 <.LBB8_36+0xe>

0000000090001592 <.LBB8_34>:
    90001592:	00007617          	auipc	a2,0x7
    90001596:	34560613          	addi	a2,a2,837 # 900088d7 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.16>
    9000159a:	fd040493          	addi	s1,s0,-48
    9000159e:	46bd                	li	a3,15
    900015a0:	a005                	j	900015c0 <.LBB8_36+0xe>

00000000900015a2 <.LBB8_35>:
    900015a2:	00007617          	auipc	a2,0x7
    900015a6:	2ff60613          	addi	a2,a2,767 # 900088a1 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.12>
    900015aa:	fd040493          	addi	s1,s0,-48
    900015ae:	46b5                	li	a3,13
    900015b0:	a801                	j	900015c0 <.LBB8_36+0xe>

00000000900015b2 <.LBB8_36>:
    900015b2:	00007617          	auipc	a2,0x7
    900015b6:	28660613          	addi	a2,a2,646 # 90008838 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.4>
    900015ba:	fd040493          	addi	s1,s0,-48
    900015be:	469d                	li	a3,7
    900015c0:	8526                	mv	a0,s1
    900015c2:	00001097          	auipc	ra,0x1
    900015c6:	f46080e7          	jalr	-186(ra) # 90002508 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    900015ca:	8526                	mv	a0,s1
    900015cc:	00000097          	auipc	ra,0x0
    900015d0:	564080e7          	jalr	1380(ra) # 90001b30 <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    900015d4:	64e2                	ld	s1,24(sp)
    900015d6:	7402                	ld	s0,32(sp)
    900015d8:	70a2                	ld	ra,40(sp)
    900015da:	6145                	addi	sp,sp,48
    900015dc:	8082                	ret

00000000900015de <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>:
    900015de:	1141                	addi	sp,sp,-16
    900015e0:	e406                	sd	ra,8(sp)
    900015e2:	e022                	sd	s0,0(sp)
    900015e4:	0800                	addi	s0,sp,16
    900015e6:	00854583          	lbu	a1,8(a0)
    900015ea:	c591                	beqz	a1,900015f6 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E+0x18>
    900015ec:	6108                	ld	a0,0(a0)
    900015ee:	0310000f          	fence	rw,w
    900015f2:	458d                	li	a1,3
    900015f4:	e10c                	sd	a1,0(a0)
    900015f6:	6402                	ld	s0,0(sp)
    900015f8:	60a2                	ld	ra,8(sp)
    900015fa:	0141                	addi	sp,sp,16
    900015fc:	8082                	ret

00000000900015fe <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>:
    900015fe:	6108                	ld	a0,0(a0)
    90001600:	a001                	j	90001600 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E+0x2>

0000000090001602 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2c14ec9a62b1a876E>:
    90001602:	8082                	ret

0000000090001604 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c19ef341f8f601cE>:
    90001604:	715d                	addi	sp,sp,-80
    90001606:	e486                	sd	ra,72(sp)
    90001608:	e0a2                	sd	s0,64(sp)
    9000160a:	fc26                	sd	s1,56(sp)
    9000160c:	842e                	mv	s0,a1
    9000160e:	84aa                	mv	s1,a0
    90001610:	00002097          	auipc	ra,0x2
    90001614:	bf8080e7          	jalr	-1032(ra) # 90003208 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>
    90001618:	e51d                	bnez	a0,90001646 <.LBB76_5+0x18>
    9000161a:	7008                	ld	a0,32(s0)
    9000161c:	740c                	ld	a1,40(s0)

000000009000161e <.LBB76_4>:
    9000161e:	00007617          	auipc	a2,0x7
    90001622:	30a60613          	addi	a2,a2,778 # 90008928 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.141>
    90001626:	e432                	sd	a2,8(sp)
    90001628:	4605                	li	a2,1
    9000162a:	e832                	sd	a2,16(sp)
    9000162c:	ec02                	sd	zero,24(sp)

000000009000162e <.LBB76_5>:
    9000162e:	00007617          	auipc	a2,0x7
    90001632:	2f260613          	addi	a2,a2,754 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90001636:	f432                	sd	a2,40(sp)
    90001638:	f802                	sd	zero,48(sp)
    9000163a:	0030                	addi	a2,sp,8
    9000163c:	00000097          	auipc	ra,0x0
    90001640:	7d0080e7          	jalr	2000(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001644:	c519                	beqz	a0,90001652 <.LBB76_5+0x24>
    90001646:	4505                	li	a0,1
    90001648:	74e2                	ld	s1,56(sp)
    9000164a:	6406                	ld	s0,64(sp)
    9000164c:	60a6                	ld	ra,72(sp)
    9000164e:	6161                	addi	sp,sp,80
    90001650:	8082                	ret
    90001652:	00848513          	addi	a0,s1,8
    90001656:	85a2                	mv	a1,s0
    90001658:	74e2                	ld	s1,56(sp)
    9000165a:	6406                	ld	s0,64(sp)
    9000165c:	60a6                	ld	ra,72(sp)
    9000165e:	6161                	addi	sp,sp,80
    90001660:	00002317          	auipc	t1,0x2
    90001664:	ba830067          	jr	-1112(t1) # 90003208 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>

0000000090001668 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7108e12ad9db6507E>:
    90001668:	0160f537          	lui	a0,0x160f
    9000166c:	6275051b          	addiw	a0,a0,1575
    90001670:	0536                	slli	a0,a0,0xd
    90001672:	3d750513          	addi	a0,a0,983 # 160f3d7 <.Lline_table_start0+0x15f252d>
    90001676:	0532                	slli	a0,a0,0xc
    90001678:	f8150513          	addi	a0,a0,-127
    9000167c:	0532                	slli	a0,a0,0xc
    9000167e:	f4250513          	addi	a0,a0,-190
    90001682:	8082                	ret

0000000090001684 <_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha8996aa14fce6a9aE>:
    90001684:	7590                	ld	a2,40(a1)
    90001686:	7188                	ld	a0,32(a1)
    90001688:	6e1c                	ld	a5,24(a2)

000000009000168a <.LBB87_1>:
    9000168a:	00007597          	auipc	a1,0x7
    9000168e:	2ae58593          	addi	a1,a1,686 # 90008938 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.148>
    90001692:	462d                	li	a2,11
    90001694:	8782                	jr	a5

0000000090001696 <_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h27d9b69ec3d38322E>:
    90001696:	7590                	ld	a2,40(a1)
    90001698:	7188                	ld	a0,32(a1)
    9000169a:	6e1c                	ld	a5,24(a2)

000000009000169c <.LBB89_1>:
    9000169c:	00007597          	auipc	a1,0x7
    900016a0:	2a758593          	addi	a1,a1,679 # 90008943 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150>
    900016a4:	4639                	li	a2,14
    900016a6:	8782                	jr	a5

00000000900016a8 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>:
    900016a8:	7119                	addi	sp,sp,-128
    900016aa:	fc86                	sd	ra,120(sp)
    900016ac:	e42a                	sd	a0,8(sp)
    900016ae:	e82e                	sd	a1,16(sp)
    900016b0:	ec32                	sd	a2,24(sp)
    900016b2:	f036                	sd	a3,32(sp)
    900016b4:	0028                	addi	a0,sp,8
    900016b6:	ecaa                	sd	a0,88(sp)

00000000900016b8 <.LBB118_1>:
    900016b8:	00002517          	auipc	a0,0x2
    900016bc:	3ec50513          	addi	a0,a0,1004 # 90003aa4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    900016c0:	f0aa                	sd	a0,96(sp)
    900016c2:	0828                	addi	a0,sp,24
    900016c4:	f4aa                	sd	a0,104(sp)

00000000900016c6 <.LBB118_2>:
    900016c6:	00002517          	auipc	a0,0x2
    900016ca:	3d650513          	addi	a0,a0,982 # 90003a9c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>
    900016ce:	f8aa                	sd	a0,112(sp)

00000000900016d0 <.LBB118_3>:
    900016d0:	00007517          	auipc	a0,0x7
    900016d4:	2c050513          	addi	a0,a0,704 # 90008990 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.178>
    900016d8:	f42a                	sd	a0,40(sp)
    900016da:	4509                	li	a0,2
    900016dc:	f82a                	sd	a0,48(sp)
    900016de:	fc02                	sd	zero,56(sp)
    900016e0:	08ac                	addi	a1,sp,88
    900016e2:	e4ae                	sd	a1,72(sp)
    900016e4:	e8aa                	sd	a0,80(sp)
    900016e6:	1028                	addi	a0,sp,40
    900016e8:	85ba                	mv	a1,a4
    900016ea:	00000097          	auipc	ra,0x0
    900016ee:	08a080e7          	jalr	138(ra) # 90001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000900016f4 <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>:
    900016f4:	6908                	ld	a0,16(a0)
    900016f6:	8082                	ret

00000000900016f8 <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>:
    900016f8:	6d08                	ld	a0,24(a0)
    900016fa:	8082                	ret

00000000900016fc <_ZN4core5panic8Location4file17h3a63c909928b6622E>:
    900016fc:	6110                	ld	a2,0(a0)
    900016fe:	650c                	ld	a1,8(a0)
    90001700:	8532                	mv	a0,a2
    90001702:	8082                	ret

0000000090001704 <_ZN4core5panic8Location4line17h438064cf29667b6aE>:
    90001704:	4908                	lw	a0,16(a0)
    90001706:	8082                	ret

0000000090001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>:
    90001708:	715d                	addi	sp,sp,-80
    9000170a:	e486                	sd	ra,72(sp)
    9000170c:	fc2a                	sd	a0,56(sp)
    9000170e:	e0ae                	sd	a1,64(sp)
    90001710:	1828                	addi	a0,sp,56
    90001712:	e42a                	sd	a0,8(sp)
    90001714:	4505                	li	a0,1
    90001716:	e82a                	sd	a0,16(sp)
    90001718:	ec02                	sd	zero,24(sp)

000000009000171a <.LBB129_1>:
    9000171a:	00007517          	auipc	a0,0x7
    9000171e:	20650513          	addi	a0,a0,518 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90001722:	f42a                	sd	a0,40(sp)
    90001724:	f802                	sd	zero,48(sp)
    90001726:	0028                	addi	a0,sp,8
    90001728:	85b2                	mv	a1,a2
    9000172a:	00000097          	auipc	ra,0x0
    9000172e:	04a080e7          	jalr	74(ra) # 90001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090001734 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>:
    90001734:	7159                	addi	sp,sp,-112
    90001736:	f486                	sd	ra,104(sp)
    90001738:	e42a                	sd	a0,8(sp)
    9000173a:	e82e                	sd	a1,16(sp)
    9000173c:	0808                	addi	a0,sp,16
    9000173e:	e4aa                	sd	a0,72(sp)

0000000090001740 <.LBB130_1>:
    90001740:	00002517          	auipc	a0,0x2
    90001744:	f2a50513          	addi	a0,a0,-214 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90001748:	e8aa                	sd	a0,80(sp)
    9000174a:	002c                	addi	a1,sp,8
    9000174c:	ecae                	sd	a1,88(sp)
    9000174e:	f0aa                	sd	a0,96(sp)

0000000090001750 <.LBB130_2>:
    90001750:	00007517          	auipc	a0,0x7
    90001754:	2f850513          	addi	a0,a0,760 # 90008a48 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.188>
    90001758:	ec2a                	sd	a0,24(sp)
    9000175a:	4509                	li	a0,2
    9000175c:	f02a                	sd	a0,32(sp)
    9000175e:	f402                	sd	zero,40(sp)
    90001760:	00ac                	addi	a1,sp,72
    90001762:	fc2e                	sd	a1,56(sp)
    90001764:	e0aa                	sd	a0,64(sp)
    90001766:	0828                	addi	a0,sp,24
    90001768:	85b2                	mv	a1,a2
    9000176a:	00000097          	auipc	ra,0x0
    9000176e:	00a080e7          	jalr	10(ra) # 90001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>:
    90001774:	7179                	addi	sp,sp,-48
    90001776:	f406                	sd	ra,40(sp)

0000000090001778 <.LBB131_1>:
    90001778:	00007617          	auipc	a2,0x7
    9000177c:	1a860613          	addi	a2,a2,424 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90001780:	e432                	sd	a2,8(sp)

0000000090001782 <.LBB131_2>:
    90001782:	00007617          	auipc	a2,0x7
    90001786:	22e60613          	addi	a2,a2,558 # 900089b0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.179>
    9000178a:	e832                	sd	a2,16(sp)
    9000178c:	ec2a                	sd	a0,24(sp)
    9000178e:	f02e                	sd	a1,32(sp)
    90001790:	0028                	addi	a0,sp,8
    90001792:	fffff097          	auipc	ra,0xfffff
    90001796:	34c080e7          	jalr	844(ra) # 90000ade <rust_begin_unwind>
	...

000000009000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>:
    9000179c:	715d                	addi	sp,sp,-80
    9000179e:	e486                	sd	ra,72(sp)
    900017a0:	e0a2                	sd	s0,64(sp)
    900017a2:	fc26                	sd	s1,56(sp)
    900017a4:	f84a                	sd	s2,48(sp)
    900017a6:	f44e                	sd	s3,40(sp)
    900017a8:	f052                	sd	s4,32(sp)
    900017aa:	ec56                	sd	s5,24(sp)
    900017ac:	e85a                	sd	s6,16(sp)
    900017ae:	e45e                	sd	s7,8(sp)
    900017b0:	e062                	sd	s8,0(sp)
    900017b2:	ca7d                	beqz	a2,900018a8 <.LBB133_30+0x1a>
    900017b4:	84b2                	mv	s1,a2
    900017b6:	89ae                	mv	s3,a1
    900017b8:	892a                	mv	s2,a0
    900017ba:	4a3d                	li	s4,15
    900017bc:	4aa9                	li	s5,10
    900017be:	fbf00b13          	li	s6,-65
    900017c2:	4b85                	li	s7,1
    900017c4:	a809                	j	900017d6 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x3a>
    900017c6:	6d94                	ld	a3,24(a1)
    900017c8:	85ce                	mv	a1,s3
    900017ca:	8622                	mv	a2,s0
    900017cc:	9682                	jalr	a3
    900017ce:	ed79                	bnez	a0,900018ac <.LBB133_30+0x1e>
    900017d0:	8c81                	sub	s1,s1,s0
    900017d2:	89e2                	mv	s3,s8
    900017d4:	c8f1                	beqz	s1,900018a8 <.LBB133_30+0x1a>
    900017d6:	01093503          	ld	a0,16(s2)
    900017da:	00054503          	lbu	a0,0(a0)
    900017de:	cd09                	beqz	a0,900017f8 <.LBB133_29+0xe>
    900017e0:	00893583          	ld	a1,8(s2)
    900017e4:	00093503          	ld	a0,0(s2)
    900017e8:	6d94                	ld	a3,24(a1)

00000000900017ea <.LBB133_29>:
    900017ea:	00007597          	auipc	a1,0x7
    900017ee:	16758593          	addi	a1,a1,359 # 90008951 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0xe>
    900017f2:	4611                	li	a2,4
    900017f4:	9682                	jalr	a3
    900017f6:	e95d                	bnez	a0,900018ac <.LBB133_30+0x1e>
    900017f8:	4401                	li	s0,0
    900017fa:	8626                	mv	a2,s1
    900017fc:	a029                	j	90001806 <.LBB133_29+0x1c>
    900017fe:	40848633          	sub	a2,s1,s0
    90001802:	0484e963          	bltu	s1,s0,90001854 <.LBB133_29+0x6a>
    90001806:	008985b3          	add	a1,s3,s0
    9000180a:	02ca6063          	bltu	s4,a2,9000182a <.LBB133_29+0x40>
    9000180e:	c239                	beqz	a2,90001854 <.LBB133_29+0x6a>
    90001810:	4601                	li	a2,0
    90001812:	40848533          	sub	a0,s1,s0
    90001816:	00c586b3          	add	a3,a1,a2
    9000181a:	0006c683          	lbu	a3,0(a3)
    9000181e:	01568e63          	beq	a3,s5,9000183a <.LBB133_29+0x50>
    90001822:	0605                	addi	a2,a2,1
    90001824:	fec519e3          	bne	a0,a2,90001816 <.LBB133_29+0x2c>
    90001828:	a035                	j	90001854 <.LBB133_29+0x6a>
    9000182a:	4529                	li	a0,10
    9000182c:	00001097          	auipc	ra,0x1
    90001830:	f9c080e7          	jalr	-100(ra) # 900027c8 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E>
    90001834:	03751063          	bne	a0,s7,90001854 <.LBB133_29+0x6a>
    90001838:	862e                	mv	a2,a1
    9000183a:	00860533          	add	a0,a2,s0
    9000183e:	00150413          	addi	s0,a0,1
    90001842:	fa957ee3          	bgeu	a0,s1,900017fe <.LBB133_29+0x14>
    90001846:	954e                	add	a0,a0,s3
    90001848:	00054503          	lbu	a0,0(a0)
    9000184c:	fb5519e3          	bne	a0,s5,900017fe <.LBB133_29+0x14>
    90001850:	4505                	li	a0,1
    90001852:	a019                	j	90001858 <.LBB133_29+0x6e>
    90001854:	4501                	li	a0,0
    90001856:	8426                	mv	s0,s1
    90001858:	01093583          	ld	a1,16(s2)
    9000185c:	00a58023          	sb	a0,0(a1)
    90001860:	00093503          	ld	a0,0(s2)
    90001864:	00893583          	ld	a1,8(s2)
    90001868:	00898c33          	add	s8,s3,s0
    9000186c:	f4848de3          	beq	s1,s0,900017c6 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x2a>
    90001870:	04947b63          	bgeu	s0,s1,900018c6 <.LBB133_31>
    90001874:	000c0603          	lb	a2,0(s8)
    90001878:	04cb5763          	bge	s6,a2,900018c6 <.LBB133_31>
    9000187c:	6d94                	ld	a3,24(a1)
    9000187e:	85ce                	mv	a1,s3
    90001880:	8622                	mv	a2,s0
    90001882:	9682                	jalr	a3
    90001884:	e505                	bnez	a0,900018ac <.LBB133_30+0x1e>
    90001886:	000c0503          	lb	a0,0(s8)
    9000188a:	f4ab43e3          	blt	s6,a0,900017d0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x34>

000000009000188e <.LBB133_30>:
    9000188e:	00007717          	auipc	a4,0x7
    90001892:	22270713          	addi	a4,a4,546 # 90008ab0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.193>
    90001896:	854e                	mv	a0,s3
    90001898:	85a6                	mv	a1,s1
    9000189a:	8622                	mv	a2,s0
    9000189c:	86a6                	mv	a3,s1
    9000189e:	00001097          	auipc	ra,0x1
    900018a2:	37c080e7          	jalr	892(ra) # 90002c1a <_ZN4core3str16slice_error_fail17he9562343589499f6E>
    900018a6:	0000                	unimp
    900018a8:	4501                	li	a0,0
    900018aa:	a011                	j	900018ae <.LBB133_30+0x20>
    900018ac:	4505                	li	a0,1
    900018ae:	6c02                	ld	s8,0(sp)
    900018b0:	6ba2                	ld	s7,8(sp)
    900018b2:	6b42                	ld	s6,16(sp)
    900018b4:	6ae2                	ld	s5,24(sp)
    900018b6:	7a02                	ld	s4,32(sp)
    900018b8:	79a2                	ld	s3,40(sp)
    900018ba:	7942                	ld	s2,48(sp)
    900018bc:	74e2                	ld	s1,56(sp)
    900018be:	6406                	ld	s0,64(sp)
    900018c0:	60a6                	ld	ra,72(sp)
    900018c2:	6161                	addi	sp,sp,80
    900018c4:	8082                	ret

00000000900018c6 <.LBB133_31>:
    900018c6:	00007717          	auipc	a4,0x7
    900018ca:	1d270713          	addi	a4,a4,466 # 90008a98 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.192>
    900018ce:	854e                	mv	a0,s3
    900018d0:	85a6                	mv	a1,s1
    900018d2:	4601                	li	a2,0
    900018d4:	86a2                	mv	a3,s0
    900018d6:	00001097          	auipc	ra,0x1
    900018da:	344080e7          	jalr	836(ra) # 90002c1a <_ZN4core3str16slice_error_fail17he9562343589499f6E>
	...

00000000900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>:
    900018e0:	7135                	addi	sp,sp,-160
    900018e2:	ed06                	sd	ra,152(sp)
    900018e4:	e922                	sd	s0,144(sp)
    900018e6:	e526                	sd	s1,136(sp)
    900018e8:	e14a                	sd	s2,128(sp)
    900018ea:	fcce                	sd	s3,120(sp)
    900018ec:	f8d2                	sd	s4,112(sp)
    900018ee:	f4d6                	sd	s5,104(sp)
    900018f0:	f0da                	sd	s6,96(sp)
    900018f2:	842a                	mv	s0,a0
    900018f4:	00854503          	lbu	a0,8(a0)
    900018f8:	4b05                	li	s6,1
    900018fa:	4485                	li	s1,1
    900018fc:	c105                	beqz	a0,9000191c <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x3c>
    900018fe:	00940423          	sb	s1,8(s0)
    90001902:	016404a3          	sb	s6,9(s0)
    90001906:	8522                	mv	a0,s0
    90001908:	7b06                	ld	s6,96(sp)
    9000190a:	7aa6                	ld	s5,104(sp)
    9000190c:	7a46                	ld	s4,112(sp)
    9000190e:	79e6                	ld	s3,120(sp)
    90001910:	690a                	ld	s2,128(sp)
    90001912:	64aa                	ld	s1,136(sp)
    90001914:	644a                	ld	s0,144(sp)
    90001916:	60ea                	ld	ra,152(sp)
    90001918:	610d                	addi	sp,sp,160
    9000191a:	8082                	ret
    9000191c:	89ba                	mv	s3,a4
    9000191e:	8936                	mv	s2,a3
    90001920:	8a32                	mv	s4,a2
    90001922:	8aae                	mv	s5,a1
    90001924:	6008                	ld	a0,0(s0)
    90001926:	03056583          	lwu	a1,48(a0)
    9000192a:	00944603          	lbu	a2,9(s0)
    9000192e:	0045f693          	andi	a3,a1,4
    90001932:	00163613          	seqz	a2,a2
    90001936:	e699                	bnez	a3,90001944 <.LBB134_18+0xa>
    90001938:	ea45                	bnez	a2,900019e8 <.LBB134_23>

000000009000193a <.LBB134_18>:
    9000193a:	00007597          	auipc	a1,0x7
    9000193e:	19358593          	addi	a1,a1,403 # 90008acd <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    90001942:	a07d                	j	900019f0 <.LBB134_23+0x8>
    90001944:	ce19                	beqz	a2,90001962 <.LBB134_19+0x16>
    90001946:	750c                	ld	a1,40(a0)
    90001948:	7108                	ld	a0,32(a0)
    9000194a:	6d94                	ld	a3,24(a1)

000000009000194c <.LBB134_19>:
    9000194c:	00007597          	auipc	a1,0x7
    90001950:	17c58593          	addi	a1,a1,380 # 90008ac8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.194>
    90001954:	460d                	li	a2,3
    90001956:	9682                	jalr	a3
    90001958:	4485                	li	s1,1
    9000195a:	f155                	bnez	a0,900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    9000195c:	6008                	ld	a0,0(s0)
    9000195e:	03056583          	lwu	a1,48(a0)
    90001962:	4485                	li	s1,1
    90001964:	00910fa3          	sb	s1,31(sp) # 9003601f <boot_stack_top+0x1f>
    90001968:	7110                	ld	a2,32(a0)
    9000196a:	7514                	ld	a3,40(a0)
    9000196c:	e032                	sd	a2,0(sp)
    9000196e:	e436                	sd	a3,8(sp)
    90001970:	01f10613          	addi	a2,sp,31
    90001974:	e832                	sd	a2,16(sp)
    90001976:	5950                	lw	a2,52(a0)
    90001978:	03850683          	lb	a3,56(a0)
    9000197c:	6118                	ld	a4,0(a0)
    9000197e:	651c                	ld	a5,8(a0)
    90001980:	01053803          	ld	a6,16(a0)
    90001984:	6d08                	ld	a0,24(a0)
    90001986:	c8ae                	sw	a1,80(sp)
    90001988:	cab2                	sw	a2,84(sp)
    9000198a:	04d10c23          	sb	a3,88(sp)
    9000198e:	f03a                	sd	a4,32(sp)
    90001990:	f43e                	sd	a5,40(sp)
    90001992:	f842                	sd	a6,48(sp)
    90001994:	fc2a                	sd	a0,56(sp)
    90001996:	850a                	mv	a0,sp
    90001998:	e0aa                	sd	a0,64(sp)

000000009000199a <.LBB134_20>:
    9000199a:	00007597          	auipc	a1,0x7
    9000199e:	0ce58593          	addi	a1,a1,206 # 90008a68 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    900019a2:	e4ae                	sd	a1,72(sp)
    900019a4:	85d6                	mv	a1,s5
    900019a6:	8652                	mv	a2,s4
    900019a8:	00000097          	auipc	ra,0x0
    900019ac:	df4080e7          	jalr	-524(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    900019b0:	f539                	bnez	a0,900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>

00000000900019b2 <.LBB134_21>:
    900019b2:	00007597          	auipc	a1,0x7
    900019b6:	fda58593          	addi	a1,a1,-38 # 9000898c <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    900019ba:	850a                	mv	a0,sp
    900019bc:	4609                	li	a2,2
    900019be:	00000097          	auipc	ra,0x0
    900019c2:	dde080e7          	jalr	-546(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    900019c6:	fd05                	bnez	a0,900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900019c8:	0189b603          	ld	a2,24(s3)
    900019cc:	100c                	addi	a1,sp,32
    900019ce:	854a                	mv	a0,s2
    900019d0:	9602                	jalr	a2
    900019d2:	f515                	bnez	a0,900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900019d4:	65a6                	ld	a1,72(sp)
    900019d6:	6506                	ld	a0,64(sp)
    900019d8:	6d94                	ld	a3,24(a1)

00000000900019da <.LBB134_22>:
    900019da:	00007597          	auipc	a1,0x7
    900019de:	0f158593          	addi	a1,a1,241 # 90008acb <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    900019e2:	4609                	li	a2,2
    900019e4:	9682                	jalr	a3
    900019e6:	a889                	j	90001a38 <.LBB134_24+0x1c>

00000000900019e8 <.LBB134_23>:
    900019e8:	00007597          	auipc	a1,0x7
    900019ec:	0e758593          	addi	a1,a1,231 # 90008acf <.Lanon.9d4bfc86079e95d674f3cded52b1db19.197>
    900019f0:	7514                	ld	a3,40(a0)
    900019f2:	7108                	ld	a0,32(a0)
    900019f4:	6e94                	ld	a3,24(a3)
    900019f6:	00266613          	ori	a2,a2,2
    900019fa:	9682                	jalr	a3
    900019fc:	4485                	li	s1,1
    900019fe:	f101                	bnez	a0,900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    90001a00:	6008                	ld	a0,0(s0)
    90001a02:	750c                	ld	a1,40(a0)
    90001a04:	7108                	ld	a0,32(a0)
    90001a06:	6d94                	ld	a3,24(a1)
    90001a08:	85d6                	mv	a1,s5
    90001a0a:	8652                	mv	a2,s4
    90001a0c:	9682                	jalr	a3
    90001a0e:	4485                	li	s1,1
    90001a10:	ee0517e3          	bnez	a0,900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    90001a14:	6008                	ld	a0,0(s0)
    90001a16:	750c                	ld	a1,40(a0)
    90001a18:	7108                	ld	a0,32(a0)
    90001a1a:	6d94                	ld	a3,24(a1)

0000000090001a1c <.LBB134_24>:
    90001a1c:	00007597          	auipc	a1,0x7
    90001a20:	f7058593          	addi	a1,a1,-144 # 9000898c <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    90001a24:	4609                	li	a2,2
    90001a26:	9682                	jalr	a3
    90001a28:	4485                	li	s1,1
    90001a2a:	ec051ae3          	bnez	a0,900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    90001a2e:	600c                	ld	a1,0(s0)
    90001a30:	0189b603          	ld	a2,24(s3)
    90001a34:	854a                	mv	a0,s2
    90001a36:	9602                	jalr	a2
    90001a38:	84aa                	mv	s1,a0
    90001a3a:	b5d1                	j	900018fe <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>

0000000090001a3c <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>:
    90001a3c:	7175                	addi	sp,sp,-144
    90001a3e:	e506                	sd	ra,136(sp)
    90001a40:	e122                	sd	s0,128(sp)
    90001a42:	fca6                	sd	s1,120(sp)
    90001a44:	f8ca                	sd	s2,112(sp)
    90001a46:	f4ce                	sd	s3,104(sp)
    90001a48:	842a                	mv	s0,a0
    90001a4a:	01054503          	lbu	a0,16(a0)
    90001a4e:	4485                	li	s1,1
    90001a50:	e179                	bnez	a0,90001b16 <.LBB137_18+0x24>
    90001a52:	89b2                	mv	s3,a2
    90001a54:	892e                	mv	s2,a1
    90001a56:	6008                	ld	a0,0(s0)
    90001a58:	03056583          	lwu	a1,48(a0)
    90001a5c:	6410                	ld	a2,8(s0)
    90001a5e:	0045f693          	andi	a3,a1,4
    90001a62:	00163613          	seqz	a2,a2
    90001a66:	e699                	bnez	a3,90001a74 <.LBB137_14+0xa>
    90001a68:	e649                	bnez	a2,90001af2 <.LBB137_18>

0000000090001a6a <.LBB137_14>:
    90001a6a:	00007597          	auipc	a1,0x7
    90001a6e:	06358593          	addi	a1,a1,99 # 90008acd <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    90001a72:	a061                	j	90001afa <.LBB137_18+0x8>
    90001a74:	ce11                	beqz	a2,90001a90 <.LBB137_15+0x14>
    90001a76:	750c                	ld	a1,40(a0)
    90001a78:	7108                	ld	a0,32(a0)
    90001a7a:	6d94                	ld	a3,24(a1)

0000000090001a7c <.LBB137_15>:
    90001a7c:	00007597          	auipc	a1,0x7
    90001a80:	05958593          	addi	a1,a1,89 # 90008ad5 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.203>
    90001a84:	4609                	li	a2,2
    90001a86:	9682                	jalr	a3
    90001a88:	e559                	bnez	a0,90001b16 <.LBB137_18+0x24>
    90001a8a:	6008                	ld	a0,0(s0)
    90001a8c:	03056583          	lwu	a1,48(a0)
    90001a90:	4485                	li	s1,1
    90001a92:	029103a3          	sb	s1,39(sp)
    90001a96:	7110                	ld	a2,32(a0)
    90001a98:	7514                	ld	a3,40(a0)
    90001a9a:	e432                	sd	a2,8(sp)
    90001a9c:	e836                	sd	a3,16(sp)
    90001a9e:	02710613          	addi	a2,sp,39
    90001aa2:	ec32                	sd	a2,24(sp)
    90001aa4:	5950                	lw	a2,52(a0)
    90001aa6:	03850683          	lb	a3,56(a0)
    90001aaa:	6118                	ld	a4,0(a0)
    90001aac:	651c                	ld	a5,8(a0)
    90001aae:	01053803          	ld	a6,16(a0)
    90001ab2:	6d08                	ld	a0,24(a0)
    90001ab4:	ccae                	sw	a1,88(sp)
    90001ab6:	ceb2                	sw	a2,92(sp)
    90001ab8:	06d10023          	sb	a3,96(sp)
    90001abc:	f43a                	sd	a4,40(sp)
    90001abe:	f83e                	sd	a5,48(sp)
    90001ac0:	fc42                	sd	a6,56(sp)
    90001ac2:	e0aa                	sd	a0,64(sp)
    90001ac4:	0028                	addi	a0,sp,8
    90001ac6:	0189b603          	ld	a2,24(s3)
    90001aca:	e4aa                	sd	a0,72(sp)

0000000090001acc <.LBB137_16>:
    90001acc:	00007517          	auipc	a0,0x7
    90001ad0:	f9c50513          	addi	a0,a0,-100 # 90008a68 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    90001ad4:	e8aa                	sd	a0,80(sp)
    90001ad6:	102c                	addi	a1,sp,40
    90001ad8:	854a                	mv	a0,s2
    90001ada:	9602                	jalr	a2
    90001adc:	ed0d                	bnez	a0,90001b16 <.LBB137_18+0x24>
    90001ade:	65c6                	ld	a1,80(sp)
    90001ae0:	6526                	ld	a0,72(sp)
    90001ae2:	6d94                	ld	a3,24(a1)

0000000090001ae4 <.LBB137_17>:
    90001ae4:	00007597          	auipc	a1,0x7
    90001ae8:	fe758593          	addi	a1,a1,-25 # 90008acb <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    90001aec:	4609                	li	a2,2
    90001aee:	9682                	jalr	a3
    90001af0:	a015                	j	90001b14 <.LBB137_18+0x22>

0000000090001af2 <.LBB137_18>:
    90001af2:	00007597          	auipc	a1,0x7
    90001af6:	fe558593          	addi	a1,a1,-27 # 90008ad7 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.204>
    90001afa:	7514                	ld	a3,40(a0)
    90001afc:	7108                	ld	a0,32(a0)
    90001afe:	6e94                	ld	a3,24(a3)
    90001b00:	4709                	li	a4,2
    90001b02:	40c70633          	sub	a2,a4,a2
    90001b06:	9682                	jalr	a3
    90001b08:	e519                	bnez	a0,90001b16 <.LBB137_18+0x24>
    90001b0a:	600c                	ld	a1,0(s0)
    90001b0c:	0189b603          	ld	a2,24(s3)
    90001b10:	854a                	mv	a0,s2
    90001b12:	9602                	jalr	a2
    90001b14:	84aa                	mv	s1,a0
    90001b16:	6408                	ld	a0,8(s0)
    90001b18:	00940823          	sb	s1,16(s0)
    90001b1c:	0505                	addi	a0,a0,1
    90001b1e:	e408                	sd	a0,8(s0)
    90001b20:	8522                	mv	a0,s0
    90001b22:	79a6                	ld	s3,104(sp)
    90001b24:	7946                	ld	s2,112(sp)
    90001b26:	74e6                	ld	s1,120(sp)
    90001b28:	640a                	ld	s0,128(sp)
    90001b2a:	60aa                	ld	ra,136(sp)
    90001b2c:	6149                	addi	sp,sp,144
    90001b2e:	8082                	ret

0000000090001b30 <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>:
    90001b30:	1101                	addi	sp,sp,-32
    90001b32:	ec06                	sd	ra,24(sp)
    90001b34:	e822                	sd	s0,16(sp)
    90001b36:	e426                	sd	s1,8(sp)
    90001b38:	842a                	mv	s0,a0
    90001b3a:	650c                	ld	a1,8(a0)
    90001b3c:	01054503          	lbu	a0,16(a0)
    90001b40:	c5b9                	beqz	a1,90001b8e <.LBB138_10+0x14>
    90001b42:	4485                	li	s1,1
    90001b44:	e131                	bnez	a0,90001b88 <.LBB138_10+0xe>
    90001b46:	4505                	li	a0,1
    90001b48:	02a59563          	bne	a1,a0,90001b72 <.LBB138_9+0x10>
    90001b4c:	01144503          	lbu	a0,17(s0)
    90001b50:	c10d                	beqz	a0,90001b72 <.LBB138_9+0x10>
    90001b52:	6008                	ld	a0,0(s0)
    90001b54:	03054583          	lbu	a1,48(a0)
    90001b58:	8991                	andi	a1,a1,4
    90001b5a:	ed81                	bnez	a1,90001b72 <.LBB138_9+0x10>
    90001b5c:	750c                	ld	a1,40(a0)
    90001b5e:	7108                	ld	a0,32(a0)
    90001b60:	6d94                	ld	a3,24(a1)

0000000090001b62 <.LBB138_9>:
    90001b62:	00007597          	auipc	a1,0x7
    90001b66:	f7658593          	addi	a1,a1,-138 # 90008ad8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.205>
    90001b6a:	4605                	li	a2,1
    90001b6c:	4485                	li	s1,1
    90001b6e:	9682                	jalr	a3
    90001b70:	ed01                	bnez	a0,90001b88 <.LBB138_10+0xe>
    90001b72:	6008                	ld	a0,0(s0)
    90001b74:	750c                	ld	a1,40(a0)
    90001b76:	7108                	ld	a0,32(a0)
    90001b78:	6d94                	ld	a3,24(a1)

0000000090001b7a <.LBB138_10>:
    90001b7a:	00007597          	auipc	a1,0x7
    90001b7e:	f5f58593          	addi	a1,a1,-161 # 90008ad9 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.206>
    90001b82:	4605                	li	a2,1
    90001b84:	9682                	jalr	a3
    90001b86:	84aa                	mv	s1,a0
    90001b88:	00940823          	sb	s1,16(s0)
    90001b8c:	8526                	mv	a0,s1
    90001b8e:	00a03533          	snez	a0,a0
    90001b92:	64a2                	ld	s1,8(sp)
    90001b94:	6442                	ld	s0,16(sp)
    90001b96:	60e2                	ld	ra,24(sp)
    90001b98:	6105                	addi	sp,sp,32
    90001b9a:	8082                	ret

0000000090001b9c <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E>:
    90001b9c:	1141                	addi	sp,sp,-16
    90001b9e:	e406                	sd	ra,8(sp)
    90001ba0:	862e                	mv	a2,a1
    90001ba2:	2581                	sext.w	a1,a1
    90001ba4:	08000693          	li	a3,128
    90001ba8:	c202                	sw	zero,4(sp)
    90001baa:	00d5fd63          	bgeu	a1,a3,90001bc4 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x28>
    90001bae:	004c                	addi	a1,sp,4
    90001bb0:	00c10223          	sb	a2,4(sp)
    90001bb4:	4605                	li	a2,1
    90001bb6:	00000097          	auipc	ra,0x0
    90001bba:	be6080e7          	jalr	-1050(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001bbe:	60a2                	ld	ra,8(sp)
    90001bc0:	0141                	addi	sp,sp,16
    90001bc2:	8082                	ret
    90001bc4:	00b6559b          	srliw	a1,a2,0xb
    90001bc8:	e595                	bnez	a1,90001bf4 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x58>
    90001bca:	004c                	addi	a1,sp,4
    90001bcc:	00665693          	srli	a3,a2,0x6
    90001bd0:	0c06e693          	ori	a3,a3,192
    90001bd4:	00d10223          	sb	a3,4(sp)
    90001bd8:	03f67613          	andi	a2,a2,63
    90001bdc:	08066613          	ori	a2,a2,128
    90001be0:	00c102a3          	sb	a2,5(sp)
    90001be4:	4609                	li	a2,2
    90001be6:	00000097          	auipc	ra,0x0
    90001bea:	bb6080e7          	jalr	-1098(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001bee:	60a2                	ld	ra,8(sp)
    90001bf0:	0141                	addi	sp,sp,16
    90001bf2:	8082                	ret
    90001bf4:	0106569b          	srliw	a3,a2,0x10
    90001bf8:	004c                	addi	a1,sp,4
    90001bfa:	ee8d                	bnez	a3,90001c34 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x98>
    90001bfc:	00c6569b          	srliw	a3,a2,0xc
    90001c00:	0e06e693          	ori	a3,a3,224
    90001c04:	00d10223          	sb	a3,4(sp)
    90001c08:	0066569b          	srliw	a3,a2,0x6
    90001c0c:	03f6f693          	andi	a3,a3,63
    90001c10:	0806e693          	ori	a3,a3,128
    90001c14:	00d102a3          	sb	a3,5(sp)
    90001c18:	03f67613          	andi	a2,a2,63
    90001c1c:	08066613          	ori	a2,a2,128
    90001c20:	00c10323          	sb	a2,6(sp)
    90001c24:	460d                	li	a2,3
    90001c26:	00000097          	auipc	ra,0x0
    90001c2a:	b76080e7          	jalr	-1162(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001c2e:	60a2                	ld	ra,8(sp)
    90001c30:	0141                	addi	sp,sp,16
    90001c32:	8082                	ret
    90001c34:	0126569b          	srliw	a3,a2,0x12
    90001c38:	0f06e693          	ori	a3,a3,240
    90001c3c:	00d10223          	sb	a3,4(sp)
    90001c40:	00c6569b          	srliw	a3,a2,0xc
    90001c44:	03f6f693          	andi	a3,a3,63
    90001c48:	0806e693          	ori	a3,a3,128
    90001c4c:	00d102a3          	sb	a3,5(sp)
    90001c50:	0066569b          	srliw	a3,a2,0x6
    90001c54:	03f6f693          	andi	a3,a3,63
    90001c58:	0806e693          	ori	a3,a3,128
    90001c5c:	00d10323          	sb	a3,6(sp)
    90001c60:	03f67613          	andi	a2,a2,63
    90001c64:	08066613          	ori	a2,a2,128
    90001c68:	00c103a3          	sb	a2,7(sp)
    90001c6c:	4611                	li	a2,4
    90001c6e:	00000097          	auipc	ra,0x0
    90001c72:	b2e080e7          	jalr	-1234(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001c76:	60a2                	ld	ra,8(sp)
    90001c78:	0141                	addi	sp,sp,16
    90001c7a:	8082                	ret

0000000090001c7c <_ZN4core3fmt5Write9write_fmt17hddb7215d3127a3d2E>:
    90001c7c:	7139                	addi	sp,sp,-64
    90001c7e:	fc06                	sd	ra,56(sp)
    90001c80:	7590                	ld	a2,40(a1)
    90001c82:	7194                	ld	a3,32(a1)
    90001c84:	e02a                	sd	a0,0(sp)
    90001c86:	f832                	sd	a2,48(sp)
    90001c88:	f436                	sd	a3,40(sp)
    90001c8a:	6d88                	ld	a0,24(a1)
    90001c8c:	6990                	ld	a2,16(a1)
    90001c8e:	6594                	ld	a3,8(a1)
    90001c90:	618c                	ld	a1,0(a1)
    90001c92:	f02a                	sd	a0,32(sp)
    90001c94:	ec32                	sd	a2,24(sp)
    90001c96:	e836                	sd	a3,16(sp)
    90001c98:	e42e                	sd	a1,8(sp)

0000000090001c9a <.LBB160_1>:
    90001c9a:	00007597          	auipc	a1,0x7
    90001c9e:	f6e58593          	addi	a1,a1,-146 # 90008c08 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.228>
    90001ca2:	850a                	mv	a0,sp
    90001ca4:	0030                	addi	a2,sp,8
    90001ca6:	00000097          	auipc	ra,0x0
    90001caa:	166080e7          	jalr	358(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001cae:	70e2                	ld	ra,56(sp)
    90001cb0:	6121                	addi	sp,sp,64
    90001cb2:	8082                	ret

0000000090001cb4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfa57a7fc9f8589d2E>:
    90001cb4:	6108                	ld	a0,0(a0)
    90001cb6:	00000317          	auipc	t1,0x0
    90001cba:	ae630067          	jr	-1306(t1) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>

0000000090001cbe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE>:
    90001cbe:	1141                	addi	sp,sp,-16
    90001cc0:	e406                	sd	ra,8(sp)
    90001cc2:	862e                	mv	a2,a1
    90001cc4:	6108                	ld	a0,0(a0)
    90001cc6:	2581                	sext.w	a1,a1
    90001cc8:	08000693          	li	a3,128
    90001ccc:	c202                	sw	zero,4(sp)
    90001cce:	00d5fd63          	bgeu	a1,a3,90001ce8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x2a>
    90001cd2:	004c                	addi	a1,sp,4
    90001cd4:	00c10223          	sb	a2,4(sp)
    90001cd8:	4605                	li	a2,1
    90001cda:	00000097          	auipc	ra,0x0
    90001cde:	ac2080e7          	jalr	-1342(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001ce2:	60a2                	ld	ra,8(sp)
    90001ce4:	0141                	addi	sp,sp,16
    90001ce6:	8082                	ret
    90001ce8:	00b6559b          	srliw	a1,a2,0xb
    90001cec:	e595                	bnez	a1,90001d18 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x5a>
    90001cee:	004c                	addi	a1,sp,4
    90001cf0:	00665693          	srli	a3,a2,0x6
    90001cf4:	0c06e693          	ori	a3,a3,192
    90001cf8:	00d10223          	sb	a3,4(sp)
    90001cfc:	03f67613          	andi	a2,a2,63
    90001d00:	08066613          	ori	a2,a2,128
    90001d04:	00c102a3          	sb	a2,5(sp)
    90001d08:	4609                	li	a2,2
    90001d0a:	00000097          	auipc	ra,0x0
    90001d0e:	a92080e7          	jalr	-1390(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001d12:	60a2                	ld	ra,8(sp)
    90001d14:	0141                	addi	sp,sp,16
    90001d16:	8082                	ret
    90001d18:	0106569b          	srliw	a3,a2,0x10
    90001d1c:	004c                	addi	a1,sp,4
    90001d1e:	ee8d                	bnez	a3,90001d58 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x9a>
    90001d20:	00c6569b          	srliw	a3,a2,0xc
    90001d24:	0e06e693          	ori	a3,a3,224
    90001d28:	00d10223          	sb	a3,4(sp)
    90001d2c:	0066569b          	srliw	a3,a2,0x6
    90001d30:	03f6f693          	andi	a3,a3,63
    90001d34:	0806e693          	ori	a3,a3,128
    90001d38:	00d102a3          	sb	a3,5(sp)
    90001d3c:	03f67613          	andi	a2,a2,63
    90001d40:	08066613          	ori	a2,a2,128
    90001d44:	00c10323          	sb	a2,6(sp)
    90001d48:	460d                	li	a2,3
    90001d4a:	00000097          	auipc	ra,0x0
    90001d4e:	a52080e7          	jalr	-1454(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001d52:	60a2                	ld	ra,8(sp)
    90001d54:	0141                	addi	sp,sp,16
    90001d56:	8082                	ret
    90001d58:	0126569b          	srliw	a3,a2,0x12
    90001d5c:	0f06e693          	ori	a3,a3,240
    90001d60:	00d10223          	sb	a3,4(sp)
    90001d64:	00c6569b          	srliw	a3,a2,0xc
    90001d68:	03f6f693          	andi	a3,a3,63
    90001d6c:	0806e693          	ori	a3,a3,128
    90001d70:	00d102a3          	sb	a3,5(sp)
    90001d74:	0066569b          	srliw	a3,a2,0x6
    90001d78:	03f6f693          	andi	a3,a3,63
    90001d7c:	0806e693          	ori	a3,a3,128
    90001d80:	00d10323          	sb	a3,6(sp)
    90001d84:	03f67613          	andi	a2,a2,63
    90001d88:	08066613          	ori	a2,a2,128
    90001d8c:	00c103a3          	sb	a2,7(sp)
    90001d90:	4611                	li	a2,4
    90001d92:	00000097          	auipc	ra,0x0
    90001d96:	a0a080e7          	jalr	-1526(ra) # 9000179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001d9a:	60a2                	ld	ra,8(sp)
    90001d9c:	0141                	addi	sp,sp,16
    90001d9e:	8082                	ret

0000000090001da0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h242554f80beddc1fE>:
    90001da0:	7139                	addi	sp,sp,-64
    90001da2:	fc06                	sd	ra,56(sp)
    90001da4:	6108                	ld	a0,0(a0)
    90001da6:	7590                	ld	a2,40(a1)
    90001da8:	7194                	ld	a3,32(a1)
    90001daa:	e02a                	sd	a0,0(sp)
    90001dac:	f832                	sd	a2,48(sp)
    90001dae:	f436                	sd	a3,40(sp)
    90001db0:	6d88                	ld	a0,24(a1)
    90001db2:	6990                	ld	a2,16(a1)
    90001db4:	6594                	ld	a3,8(a1)
    90001db6:	618c                	ld	a1,0(a1)
    90001db8:	f02a                	sd	a0,32(sp)
    90001dba:	ec32                	sd	a2,24(sp)
    90001dbc:	e836                	sd	a3,16(sp)
    90001dbe:	e42e                	sd	a1,8(sp)

0000000090001dc0 <.LBB163_1>:
    90001dc0:	00007597          	auipc	a1,0x7
    90001dc4:	e4858593          	addi	a1,a1,-440 # 90008c08 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.228>
    90001dc8:	850a                	mv	a0,sp
    90001dca:	0030                	addi	a2,sp,8
    90001dcc:	00000097          	auipc	ra,0x0
    90001dd0:	040080e7          	jalr	64(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001dd4:	70e2                	ld	ra,56(sp)
    90001dd6:	6121                	addi	sp,sp,64
    90001dd8:	8082                	ret

0000000090001dda <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>:
    90001dda:	7139                	addi	sp,sp,-64
    90001ddc:	fc06                	sd	ra,56(sp)
    90001dde:	7510                	ld	a2,40(a0)
    90001de0:	7118                	ld	a4,32(a0)
    90001de2:	7194                	ld	a3,32(a1)
    90001de4:	758c                	ld	a1,40(a1)
    90001de6:	f832                	sd	a2,48(sp)
    90001de8:	f43a                	sd	a4,40(sp)
    90001dea:	6d10                	ld	a2,24(a0)
    90001dec:	6918                	ld	a4,16(a0)
    90001dee:	651c                	ld	a5,8(a0)
    90001df0:	6108                	ld	a0,0(a0)
    90001df2:	f032                	sd	a2,32(sp)
    90001df4:	ec3a                	sd	a4,24(sp)
    90001df6:	e83e                	sd	a5,16(sp)
    90001df8:	e42a                	sd	a0,8(sp)
    90001dfa:	0030                	addi	a2,sp,8
    90001dfc:	8536                	mv	a0,a3
    90001dfe:	00000097          	auipc	ra,0x0
    90001e02:	00e080e7          	jalr	14(ra) # 90001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001e06:	70e2                	ld	ra,56(sp)
    90001e08:	6121                	addi	sp,sp,64
    90001e0a:	8082                	ret

0000000090001e0c <_ZN4core3fmt5write17h338141860f5a80fbE>:
    90001e0c:	7135                	addi	sp,sp,-160
    90001e0e:	ed06                	sd	ra,152(sp)
    90001e10:	e922                	sd	s0,144(sp)
    90001e12:	e526                	sd	s1,136(sp)
    90001e14:	e14a                	sd	s2,128(sp)
    90001e16:	fcce                	sd	s3,120(sp)
    90001e18:	f8d2                	sd	s4,112(sp)
    90001e1a:	f4d6                	sd	s5,104(sp)
    90001e1c:	f0da                	sd	s6,96(sp)
    90001e1e:	ecde                	sd	s7,88(sp)
    90001e20:	e8e2                	sd	s8,80(sp)
    90001e22:	e4e6                	sd	s9,72(sp)
    90001e24:	8432                	mv	s0,a2
    90001e26:	4605                	li	a2,1
    90001e28:	1616                	slli	a2,a2,0x25
    90001e2a:	fc32                	sd	a2,56(sp)
    90001e2c:	460d                	li	a2,3
    90001e2e:	04c10023          	sb	a2,64(sp)
    90001e32:	6804                	ld	s1,16(s0)
    90001e34:	e402                	sd	zero,8(sp)
    90001e36:	ec02                	sd	zero,24(sp)
    90001e38:	f42a                	sd	a0,40(sp)
    90001e3a:	f82e                	sd	a1,48(sp)
    90001e3c:	cce9                	beqz	s1,90001f16 <.LBB167_35+0x9e>
    90001e3e:	6c10                	ld	a2,24(s0)
    90001e40:	00843983          	ld	s3,8(s0)
    90001e44:	00043903          	ld	s2,0(s0)
    90001e48:	8ace                	mv	s5,s3
    90001e4a:	00c9e363          	bltu	s3,a2,90001e50 <_ZN4core3fmt5write17h338141860f5a80fbE+0x44>
    90001e4e:	8ab2                	mv	s5,a2
    90001e50:	120a8163          	beqz	s5,90001f72 <.LBB167_35+0xfa>
    90001e54:	00093683          	ld	a3,0(s2)
    90001e58:	00893603          	ld	a2,8(s2)
    90001e5c:	6d98                	ld	a4,24(a1)
    90001e5e:	85b6                	mv	a1,a3
    90001e60:	9702                	jalr	a4
    90001e62:	12051663          	bnez	a0,90001f8e <.LBB167_35+0x116>
    90001e66:	02043c03          	ld	s8,32(s0)
    90001e6a:	03048493          	addi	s1,s1,48
    90001e6e:	01890c93          	addi	s9,s2,24
    90001e72:	00810a13          	addi	s4,sp,8
    90001e76:	4b09                	li	s6,2

0000000090001e78 <.LBB167_35>:
    90001e78:	fffffb97          	auipc	s7,0xfffff
    90001e7c:	786b8b93          	addi	s7,s7,1926 # 900015fe <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>
    90001e80:	8456                	mv	s0,s5
    90001e82:	ff84a503          	lw	a0,-8(s1)
    90001e86:	de2a                	sw	a0,60(sp)
    90001e88:	00048503          	lb	a0,0(s1)
    90001e8c:	04a10023          	sb	a0,64(sp)
    90001e90:	ffc4a503          	lw	a0,-4(s1)
    90001e94:	dc2a                	sw	a0,56(sp)
    90001e96:	fe84b603          	ld	a2,-24(s1)
    90001e9a:	ff04b503          	ld	a0,-16(s1)
    90001e9e:	ca19                	beqz	a2,90001eb4 <.LBB167_35+0x3c>
    90001ea0:	4581                	li	a1,0
    90001ea2:	01660c63          	beq	a2,s6,90001eba <.LBB167_35+0x42>
    90001ea6:	0512                	slli	a0,a0,0x4
    90001ea8:	9562                	add	a0,a0,s8
    90001eaa:	650c                	ld	a1,8(a0)
    90001eac:	01759663          	bne	a1,s7,90001eb8 <.LBB167_35+0x40>
    90001eb0:	6108                	ld	a0,0(a0)
    90001eb2:	6108                	ld	a0,0(a0)
    90001eb4:	4585                	li	a1,1
    90001eb6:	a011                	j	90001eba <.LBB167_35+0x42>
    90001eb8:	4581                	li	a1,0
    90001eba:	e42e                	sd	a1,8(sp)
    90001ebc:	e82a                	sd	a0,16(sp)
    90001ebe:	fd84b603          	ld	a2,-40(s1)
    90001ec2:	fe04b503          	ld	a0,-32(s1)
    90001ec6:	ca19                	beqz	a2,90001edc <.LBB167_35+0x64>
    90001ec8:	4581                	li	a1,0
    90001eca:	01660c63          	beq	a2,s6,90001ee2 <.LBB167_35+0x6a>
    90001ece:	0512                	slli	a0,a0,0x4
    90001ed0:	9562                	add	a0,a0,s8
    90001ed2:	650c                	ld	a1,8(a0)
    90001ed4:	01759663          	bne	a1,s7,90001ee0 <.LBB167_35+0x68>
    90001ed8:	6108                	ld	a0,0(a0)
    90001eda:	6108                	ld	a0,0(a0)
    90001edc:	4585                	li	a1,1
    90001ede:	a011                	j	90001ee2 <.LBB167_35+0x6a>
    90001ee0:	4581                	li	a1,0
    90001ee2:	ec2e                	sd	a1,24(sp)
    90001ee4:	f02a                	sd	a0,32(sp)
    90001ee6:	fd04b503          	ld	a0,-48(s1)
    90001eea:	0512                	slli	a0,a0,0x4
    90001eec:	9562                	add	a0,a0,s8
    90001eee:	6510                	ld	a2,8(a0)
    90001ef0:	6108                	ld	a0,0(a0)
    90001ef2:	85d2                	mv	a1,s4
    90001ef4:	9602                	jalr	a2
    90001ef6:	ed41                	bnez	a0,90001f8e <.LBB167_35+0x116>
    90001ef8:	147d                	addi	s0,s0,-1
    90001efa:	cc2d                	beqz	s0,90001f74 <.LBB167_35+0xfc>
    90001efc:	76c2                	ld	a3,48(sp)
    90001efe:	7522                	ld	a0,40(sp)
    90001f00:	ff8cb583          	ld	a1,-8(s9)
    90001f04:	000cb603          	ld	a2,0(s9)
    90001f08:	6e94                	ld	a3,24(a3)
    90001f0a:	03848493          	addi	s1,s1,56
    90001f0e:	0cc1                	addi	s9,s9,16
    90001f10:	9682                	jalr	a3
    90001f12:	d925                	beqz	a0,90001e82 <.LBB167_35+0xa>
    90001f14:	a8ad                	j	90001f8e <.LBB167_35+0x116>
    90001f16:	7004                	ld	s1,32(s0)
    90001f18:	7410                	ld	a2,40(s0)
    90001f1a:	00843983          	ld	s3,8(s0)
    90001f1e:	00043903          	ld	s2,0(s0)
    90001f22:	8ace                	mv	s5,s3
    90001f24:	00c9e363          	bltu	s3,a2,90001f2a <.LBB167_35+0xb2>
    90001f28:	8ab2                	mv	s5,a2
    90001f2a:	040a8463          	beqz	s5,90001f72 <.LBB167_35+0xfa>
    90001f2e:	00093683          	ld	a3,0(s2)
    90001f32:	00893603          	ld	a2,8(s2)
    90001f36:	6d98                	ld	a4,24(a1)
    90001f38:	85b6                	mv	a1,a3
    90001f3a:	9702                	jalr	a4
    90001f3c:	e929                	bnez	a0,90001f8e <.LBB167_35+0x116>
    90001f3e:	04a1                	addi	s1,s1,8
    90001f40:	01890b13          	addi	s6,s2,24
    90001f44:	00810a13          	addi	s4,sp,8
    90001f48:	8456                	mv	s0,s5
    90001f4a:	6090                	ld	a2,0(s1)
    90001f4c:	ff84b503          	ld	a0,-8(s1)
    90001f50:	85d2                	mv	a1,s4
    90001f52:	9602                	jalr	a2
    90001f54:	ed0d                	bnez	a0,90001f8e <.LBB167_35+0x116>
    90001f56:	147d                	addi	s0,s0,-1
    90001f58:	cc11                	beqz	s0,90001f74 <.LBB167_35+0xfc>
    90001f5a:	76c2                	ld	a3,48(sp)
    90001f5c:	7522                	ld	a0,40(sp)
    90001f5e:	ff8b3583          	ld	a1,-8(s6)
    90001f62:	000b3603          	ld	a2,0(s6)
    90001f66:	6e94                	ld	a3,24(a3)
    90001f68:	04c1                	addi	s1,s1,16
    90001f6a:	0b41                	addi	s6,s6,16
    90001f6c:	9682                	jalr	a3
    90001f6e:	dd71                	beqz	a0,90001f4a <.LBB167_35+0xd2>
    90001f70:	a839                	j	90001f8e <.LBB167_35+0x116>
    90001f72:	4a81                	li	s5,0
    90001f74:	013aff63          	bgeu	s5,s3,90001f92 <.LBB167_35+0x11a>
    90001f78:	7522                	ld	a0,40(sp)
    90001f7a:	76c2                	ld	a3,48(sp)
    90001f7c:	004a9593          	slli	a1,s5,0x4
    90001f80:	00b90633          	add	a2,s2,a1
    90001f84:	620c                	ld	a1,0(a2)
    90001f86:	6610                	ld	a2,8(a2)
    90001f88:	6e94                	ld	a3,24(a3)
    90001f8a:	9682                	jalr	a3
    90001f8c:	c119                	beqz	a0,90001f92 <.LBB167_35+0x11a>
    90001f8e:	4505                	li	a0,1
    90001f90:	a011                	j	90001f94 <.LBB167_35+0x11c>
    90001f92:	4501                	li	a0,0
    90001f94:	6ca6                	ld	s9,72(sp)
    90001f96:	6c46                	ld	s8,80(sp)
    90001f98:	6be6                	ld	s7,88(sp)
    90001f9a:	7b06                	ld	s6,96(sp)
    90001f9c:	7aa6                	ld	s5,104(sp)
    90001f9e:	7a46                	ld	s4,112(sp)
    90001fa0:	79e6                	ld	s3,120(sp)
    90001fa2:	690a                	ld	s2,128(sp)
    90001fa4:	64aa                	ld	s1,136(sp)
    90001fa6:	644a                	ld	s0,144(sp)
    90001fa8:	60ea                	ld	ra,152(sp)
    90001faa:	610d                	addi	sp,sp,160
    90001fac:	8082                	ret

0000000090001fae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>:
    90001fae:	7159                	addi	sp,sp,-112
    90001fb0:	f486                	sd	ra,104(sp)
    90001fb2:	f0a2                	sd	s0,96(sp)
    90001fb4:	eca6                	sd	s1,88(sp)
    90001fb6:	e8ca                	sd	s2,80(sp)
    90001fb8:	e4ce                	sd	s3,72(sp)
    90001fba:	e0d2                	sd	s4,64(sp)
    90001fbc:	fc56                	sd	s5,56(sp)
    90001fbe:	f85a                	sd	s6,48(sp)
    90001fc0:	f45e                	sd	s7,40(sp)
    90001fc2:	f062                	sd	s8,32(sp)
    90001fc4:	ec66                	sd	s9,24(sp)
    90001fc6:	e86a                	sd	s10,16(sp)
    90001fc8:	e46e                	sd	s11,8(sp)
    90001fca:	89be                	mv	s3,a5
    90001fcc:	893a                	mv	s2,a4
    90001fce:	8ab6                	mv	s5,a3
    90001fd0:	842a                	mv	s0,a0
    90001fd2:	c9b1                	beqz	a1,90002026 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x78>
    90001fd4:	03046503          	lwu	a0,48(s0)
    90001fd8:	00157593          	andi	a1,a0,1
    90001fdc:	00110a37          	lui	s4,0x110
    90001fe0:	c199                	beqz	a1,90001fe6 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x38>
    90001fe2:	02b00a13          	li	s4,43
    90001fe6:	01358cb3          	add	s9,a1,s3
    90001fea:	00457593          	andi	a1,a0,4
    90001fee:	c5a9                	beqz	a1,90002038 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x8a>
    90001ff0:	4581                	li	a1,0
    90001ff2:	020a8063          	beqz	s5,90002012 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x64>
    90001ff6:	86d6                	mv	a3,s5
    90001ff8:	8732                	mv	a4,a2
    90001ffa:	00074783          	lbu	a5,0(a4)
    90001ffe:	0705                	addi	a4,a4,1
    90002000:	0c07f793          	andi	a5,a5,192
    90002004:	f8078793          	addi	a5,a5,-128
    90002008:	0017b793          	seqz	a5,a5
    9000200c:	16fd                	addi	a3,a3,-1
    9000200e:	95be                	add	a1,a1,a5
    90002010:	f6ed                	bnez	a3,90001ffa <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x4c>
    90002012:	015c86b3          	add	a3,s9,s5
    90002016:	40b68cb3          	sub	s9,a3,a1
    9000201a:	8b32                	mv	s6,a2
    9000201c:	600c                	ld	a1,0(s0)
    9000201e:	4d85                	li	s11,1
    90002020:	03b58163          	beq	a1,s11,90002042 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x94>
    90002024:	a0b1                	j	90002070 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90002026:	03046503          	lwu	a0,48(s0)
    9000202a:	00198c93          	addi	s9,s3,1
    9000202e:	02d00a13          	li	s4,45
    90002032:	00457593          	andi	a1,a0,4
    90002036:	fdcd                	bnez	a1,90001ff0 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x42>
    90002038:	4b01                	li	s6,0
    9000203a:	600c                	ld	a1,0(s0)
    9000203c:	4d85                	li	s11,1
    9000203e:	03b59963          	bne	a1,s11,90002070 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90002042:	00843d03          	ld	s10,8(s0)
    90002046:	03acf563          	bgeu	s9,s10,90002070 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    9000204a:	8921                	andi	a0,a0,8
    9000204c:	ed3d                	bnez	a0,900020ca <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x11c>
    9000204e:	03844503          	lbu	a0,56(s0)
    90002052:	4585                	li	a1,1
    90002054:	468d                	li	a3,3
    90002056:	4605                	li	a2,1
    90002058:	00d50363          	beq	a0,a3,9000205e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xb0>
    9000205c:	862a                	mv	a2,a0
    9000205e:	8a0d                	andi	a2,a2,3
    90002060:	419d0533          	sub	a0,s10,s9
    90002064:	0ac5c763          	blt	a1,a2,90002112 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x164>
    90002068:	ea45                	bnez	a2,90002118 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16a>
    9000206a:	8c2a                	mv	s8,a0
    9000206c:	4501                	li	a0,0
    9000206e:	a0c9                	j	90002130 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    90002070:	8522                	mv	a0,s0
    90002072:	85d2                	mv	a1,s4
    90002074:	865a                	mv	a2,s6
    90002076:	86d6                	mv	a3,s5
    90002078:	00000097          	auipc	ra,0x0
    9000207c:	174080e7          	jalr	372(ra) # 900021ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    90002080:	c10d                	beqz	a0,900020a2 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xf4>
    90002082:	856e                	mv	a0,s11
    90002084:	6da2                	ld	s11,8(sp)
    90002086:	6d42                	ld	s10,16(sp)
    90002088:	6ce2                	ld	s9,24(sp)
    9000208a:	7c02                	ld	s8,32(sp)
    9000208c:	7ba2                	ld	s7,40(sp)
    9000208e:	7b42                	ld	s6,48(sp)
    90002090:	7ae2                	ld	s5,56(sp)
    90002092:	6a06                	ld	s4,64(sp)
    90002094:	69a6                	ld	s3,72(sp)
    90002096:	6946                	ld	s2,80(sp)
    90002098:	64e6                	ld	s1,88(sp)
    9000209a:	7406                	ld	s0,96(sp)
    9000209c:	70a6                	ld	ra,104(sp)
    9000209e:	6165                	addi	sp,sp,112
    900020a0:	8082                	ret
    900020a2:	740c                	ld	a1,40(s0)
    900020a4:	7008                	ld	a0,32(s0)
    900020a6:	6d9c                	ld	a5,24(a1)
    900020a8:	85ca                	mv	a1,s2
    900020aa:	864e                	mv	a2,s3
    900020ac:	6da2                	ld	s11,8(sp)
    900020ae:	6d42                	ld	s10,16(sp)
    900020b0:	6ce2                	ld	s9,24(sp)
    900020b2:	7c02                	ld	s8,32(sp)
    900020b4:	7ba2                	ld	s7,40(sp)
    900020b6:	7b42                	ld	s6,48(sp)
    900020b8:	7ae2                	ld	s5,56(sp)
    900020ba:	6a06                	ld	s4,64(sp)
    900020bc:	69a6                	ld	s3,72(sp)
    900020be:	6946                	ld	s2,80(sp)
    900020c0:	64e6                	ld	s1,88(sp)
    900020c2:	7406                	ld	s0,96(sp)
    900020c4:	70a6                	ld	ra,104(sp)
    900020c6:	6165                	addi	sp,sp,112
    900020c8:	8782                	jr	a5
    900020ca:	03446b83          	lwu	s7,52(s0)
    900020ce:	03000513          	li	a0,48
    900020d2:	03844c03          	lbu	s8,56(s0)
    900020d6:	d848                	sw	a0,52(s0)
    900020d8:	4d85                	li	s11,1
    900020da:	03b40c23          	sb	s11,56(s0)
    900020de:	8522                	mv	a0,s0
    900020e0:	85d2                	mv	a1,s4
    900020e2:	865a                	mv	a2,s6
    900020e4:	86d6                	mv	a3,s5
    900020e6:	00000097          	auipc	ra,0x0
    900020ea:	106080e7          	jalr	262(ra) # 900021ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    900020ee:	f951                	bnez	a0,90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900020f0:	03844503          	lbu	a0,56(s0)
    900020f4:	4585                	li	a1,1
    900020f6:	468d                	li	a3,3
    900020f8:	4605                	li	a2,1
    900020fa:	00d50363          	beq	a0,a3,90002100 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x152>
    900020fe:	862a                	mv	a2,a0
    90002100:	8a0d                	andi	a2,a2,3
    90002102:	419d0533          	sub	a0,s10,s9
    90002106:	00c5cb63          	blt	a1,a2,9000211c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16e>
    9000210a:	ee01                	bnez	a2,90002122 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x174>
    9000210c:	8aaa                	mv	s5,a0
    9000210e:	4501                	li	a0,0
    90002110:	a041                	j	90002190 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    90002112:	458d                	li	a1,3
    90002114:	00b61963          	bne	a2,a1,90002126 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x178>
    90002118:	4c01                	li	s8,0
    9000211a:	a819                	j	90002130 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    9000211c:	458d                	li	a1,3
    9000211e:	06b61463          	bne	a2,a1,90002186 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1d8>
    90002122:	4a81                	li	s5,0
    90002124:	a0b5                	j	90002190 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    90002126:	00150593          	addi	a1,a0,1
    9000212a:	8105                	srli	a0,a0,0x1
    9000212c:	0015dc13          	srli	s8,a1,0x1
    90002130:	00150493          	addi	s1,a0,1
    90002134:	14fd                	addi	s1,s1,-1
    90002136:	c881                	beqz	s1,90002146 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x198>
    90002138:	740c                	ld	a1,40(s0)
    9000213a:	7008                	ld	a0,32(s0)
    9000213c:	7190                	ld	a2,32(a1)
    9000213e:	584c                	lw	a1,52(s0)
    90002140:	9602                	jalr	a2
    90002142:	d96d                	beqz	a0,90002134 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x186>
    90002144:	a085                	j	900021a4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1f6>
    90002146:	03446b83          	lwu	s7,52(s0)
    9000214a:	8522                	mv	a0,s0
    9000214c:	85d2                	mv	a1,s4
    9000214e:	865a                	mv	a2,s6
    90002150:	86d6                	mv	a3,s5
    90002152:	00000097          	auipc	ra,0x0
    90002156:	09a080e7          	jalr	154(ra) # 900021ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    9000215a:	4d85                	li	s11,1
    9000215c:	f11d                	bnez	a0,90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    9000215e:	740c                	ld	a1,40(s0)
    90002160:	7008                	ld	a0,32(s0)
    90002162:	6d94                	ld	a3,24(a1)
    90002164:	85ca                	mv	a1,s2
    90002166:	864e                	mv	a2,s3
    90002168:	9682                	jalr	a3
    9000216a:	fd01                	bnez	a0,90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    9000216c:	02043903          	ld	s2,32(s0)
    90002170:	7400                	ld	s0,40(s0)
    90002172:	001c0493          	addi	s1,s8,1
    90002176:	14fd                	addi	s1,s1,-1
    90002178:	c0b5                	beqz	s1,900021dc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x22e>
    9000217a:	7010                	ld	a2,32(s0)
    9000217c:	854a                	mv	a0,s2
    9000217e:	85de                	mv	a1,s7
    90002180:	9602                	jalr	a2
    90002182:	d975                	beqz	a0,90002176 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1c8>
    90002184:	bdfd                	j	90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90002186:	00150593          	addi	a1,a0,1
    9000218a:	8105                	srli	a0,a0,0x1
    9000218c:	0015da93          	srli	s5,a1,0x1
    90002190:	00150493          	addi	s1,a0,1
    90002194:	14fd                	addi	s1,s1,-1
    90002196:	c889                	beqz	s1,900021a8 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1fa>
    90002198:	740c                	ld	a1,40(s0)
    9000219a:	7008                	ld	a0,32(s0)
    9000219c:	7190                	ld	a2,32(a1)
    9000219e:	584c                	lw	a1,52(s0)
    900021a0:	9602                	jalr	a2
    900021a2:	d96d                	beqz	a0,90002194 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e6>
    900021a4:	4d85                	li	s11,1
    900021a6:	bdf1                	j	90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900021a8:	740c                	ld	a1,40(s0)
    900021aa:	03446a03          	lwu	s4,52(s0)
    900021ae:	7008                	ld	a0,32(s0)
    900021b0:	6d94                	ld	a3,24(a1)
    900021b2:	85ca                	mv	a1,s2
    900021b4:	864e                	mv	a2,s3
    900021b6:	9682                	jalr	a3
    900021b8:	4d85                	li	s11,1
    900021ba:	ec0514e3          	bnez	a0,90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900021be:	02043903          	ld	s2,32(s0)
    900021c2:	02843983          	ld	s3,40(s0)
    900021c6:	001a8493          	addi	s1,s5,1
    900021ca:	14fd                	addi	s1,s1,-1
    900021cc:	c891                	beqz	s1,900021e0 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x232>
    900021ce:	0209b603          	ld	a2,32(s3)
    900021d2:	854a                	mv	a0,s2
    900021d4:	85d2                	mv	a1,s4
    900021d6:	9602                	jalr	a2
    900021d8:	d96d                	beqz	a0,900021ca <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x21c>
    900021da:	b565                	j	90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900021dc:	4d81                	li	s11,0
    900021de:	b555                	j	90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    900021e0:	4d81                	li	s11,0
    900021e2:	03742a23          	sw	s7,52(s0)
    900021e6:	03840c23          	sb	s8,56(s0)
    900021ea:	bd61                	j	90002082 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>

00000000900021ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>:
    900021ec:	1101                	addi	sp,sp,-32
    900021ee:	ec06                	sd	ra,24(sp)
    900021f0:	e822                	sd	s0,16(sp)
    900021f2:	e426                	sd	s1,8(sp)
    900021f4:	e04a                	sd	s2,0(sp)
    900021f6:	02059713          	slli	a4,a1,0x20
    900021fa:	9301                	srli	a4,a4,0x20
    900021fc:	001107b7          	lui	a5,0x110
    90002200:	8936                	mv	s2,a3
    90002202:	84b2                	mv	s1,a2
    90002204:	842a                	mv	s0,a0
    90002206:	00f70963          	beq	a4,a5,90002218 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x2c>
    9000220a:	7410                	ld	a2,40(s0)
    9000220c:	7008                	ld	a0,32(s0)
    9000220e:	7210                	ld	a2,32(a2)
    90002210:	9602                	jalr	a2
    90002212:	85aa                	mv	a1,a0
    90002214:	4505                	li	a0,1
    90002216:	ed91                	bnez	a1,90002232 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x46>
    90002218:	cc81                	beqz	s1,90002230 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x44>
    9000221a:	740c                	ld	a1,40(s0)
    9000221c:	7008                	ld	a0,32(s0)
    9000221e:	6d9c                	ld	a5,24(a1)
    90002220:	85a6                	mv	a1,s1
    90002222:	864a                	mv	a2,s2
    90002224:	6902                	ld	s2,0(sp)
    90002226:	64a2                	ld	s1,8(sp)
    90002228:	6442                	ld	s0,16(sp)
    9000222a:	60e2                	ld	ra,24(sp)
    9000222c:	6105                	addi	sp,sp,32
    9000222e:	8782                	jr	a5
    90002230:	4501                	li	a0,0
    90002232:	6902                	ld	s2,0(sp)
    90002234:	64a2                	ld	s1,8(sp)
    90002236:	6442                	ld	s0,16(sp)
    90002238:	60e2                	ld	ra,24(sp)
    9000223a:	6105                	addi	sp,sp,32
    9000223c:	8082                	ret

000000009000223e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>:
    9000223e:	7139                	addi	sp,sp,-64
    90002240:	fc06                	sd	ra,56(sp)
    90002242:	f822                	sd	s0,48(sp)
    90002244:	f426                	sd	s1,40(sp)
    90002246:	f04a                	sd	s2,32(sp)
    90002248:	ec4e                	sd	s3,24(sp)
    9000224a:	e852                	sd	s4,16(sp)
    9000224c:	e456                	sd	s5,8(sp)
    9000224e:	e05a                	sd	s6,0(sp)
    90002250:	8b2a                	mv	s6,a0
    90002252:	6914                	ld	a3,16(a0)
    90002254:	6108                	ld	a0,0(a0)
    90002256:	89b2                	mv	s3,a2
    90002258:	892e                	mv	s2,a1
    9000225a:	fff68593          	addi	a1,a3,-1
    9000225e:	4605                	li	a2,1
    90002260:	0015b593          	seqz	a1,a1
    90002264:	00c51463          	bne	a0,a2,9000226c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2e>
    90002268:	e581                	bnez	a1,90002270 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x32>
    9000226a:	a215                	j	9000238e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x150>
    9000226c:	18058f63          	beqz	a1,9000240a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90002270:	018b3683          	ld	a3,24(s6)
    90002274:	157d                	addi	a0,a0,-1
    90002276:	00153813          	seqz	a6,a0
    9000227a:	01390733          	add	a4,s2,s3
    9000227e:	4581                	li	a1,0
    90002280:	c2dd                	beqz	a3,90002326 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe8>
    90002282:	5e7d                	li	t3,-1
    90002284:	0e000393          	li	t2,224
    90002288:	0f000313          	li	t1,240
    9000228c:	001c08b7          	lui	a7,0x1c0
    90002290:	001102b7          	lui	t0,0x110
    90002294:	854a                	mv	a0,s2
    90002296:	a815                	j	900022ca <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x8c>
    90002298:	00064403          	lbu	s0,0(a2)
    9000229c:	00160493          	addi	s1,a2,1
    900022a0:	03f47f93          	andi	t6,s0,63
    900022a4:	07ca                	slli	a5,a5,0x12
    900022a6:	0117f7b3          	and	a5,a5,a7
    900022aa:	00cf1413          	slli	s0,t5,0xc
    900022ae:	006e9613          	slli	a2,t4,0x6
    900022b2:	8fc1                	or	a5,a5,s0
    900022b4:	8e5d                	or	a2,a2,a5
    900022b6:	01f66633          	or	a2,a2,t6
    900022ba:	0c560863          	beq	a2,t0,9000238a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    900022be:	40a48533          	sub	a0,s1,a0
    900022c2:	16fd                	addi	a3,a3,-1
    900022c4:	95aa                	add	a1,a1,a0
    900022c6:	8526                	mv	a0,s1
    900022c8:	c2a5                	beqz	a3,90002328 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xea>
    900022ca:	0ca70063          	beq	a4,a0,9000238a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    900022ce:	00050603          	lb	a2,0(a0)
    900022d2:	00150493          	addi	s1,a0,1
    900022d6:	fece44e3          	blt	t3,a2,900022be <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    900022da:	0ff67793          	andi	a5,a2,255
    900022de:	00e48c63          	beq	s1,a4,900022f6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xb8>
    900022e2:	00154603          	lbu	a2,1(a0)
    900022e6:	00250493          	addi	s1,a0,2
    900022ea:	03f67f13          	andi	t5,a2,63
    900022ee:	8626                	mv	a2,s1
    900022f0:	fc77e7e3          	bltu	a5,t2,900022be <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    900022f4:	a029                	j	900022fe <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xc0>
    900022f6:	4f01                	li	t5,0
    900022f8:	863a                	mv	a2,a4
    900022fa:	fc77e2e3          	bltu	a5,t2,900022be <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    900022fe:	00e60c63          	beq	a2,a4,90002316 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xd8>
    90002302:	00064403          	lbu	s0,0(a2)
    90002306:	00160493          	addi	s1,a2,1
    9000230a:	03f47e93          	andi	t4,s0,63
    9000230e:	8626                	mv	a2,s1
    90002310:	fa67e7e3          	bltu	a5,t1,900022be <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90002314:	a029                	j	9000231e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe0>
    90002316:	4e81                	li	t4,0
    90002318:	863a                	mv	a2,a4
    9000231a:	fa67e2e3          	bltu	a5,t1,900022be <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    9000231e:	f6e61de3          	bne	a2,a4,90002298 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x5a>
    90002322:	4f81                	li	t6,0
    90002324:	b741                	j	900022a4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x66>
    90002326:	84ca                	mv	s1,s2
    90002328:	06970163          	beq	a4,s1,9000238a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    9000232c:	00048503          	lb	a0,0(s1)
    90002330:	567d                	li	a2,-1
    90002332:	02a65763          	bge	a2,a0,90002360 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x122>
    90002336:	0015b513          	seqz	a0,a1
    9000233a:	0135c633          	xor	a2,a1,s3
    9000233e:	00163613          	seqz	a2,a2
    90002342:	8d51                	or	a0,a0,a2
    90002344:	e919                	bnez	a0,9000235a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x11c>
    90002346:	0335fe63          	bgeu	a1,s3,90002382 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    9000234a:	00b90533          	add	a0,s2,a1
    9000234e:	00050503          	lb	a0,0(a0)
    90002352:	fc000613          	li	a2,-64
    90002356:	02c54663          	blt	a0,a2,90002382 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    9000235a:	854a                	mv	a0,s2
    9000235c:	e50d                	bnez	a0,90002386 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x148>
    9000235e:	a035                	j	9000238a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90002360:	00148613          	addi	a2,s1,1
    90002364:	0ff57513          	andi	a0,a0,255
    90002368:	14e60163          	beq	a2,a4,900024aa <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x26c>
    9000236c:	0014c683          	lbu	a3,1(s1)
    90002370:	00248613          	addi	a2,s1,2
    90002374:	03f6f693          	andi	a3,a3,63
    90002378:	0e000793          	li	a5,224
    9000237c:	12f57d63          	bgeu	a0,a5,900024b6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x278>
    90002380:	bf5d                	j	90002336 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90002382:	4501                	li	a0,0
    90002384:	c119                	beqz	a0,9000238a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90002386:	892a                	mv	s2,a0
    90002388:	89ae                	mv	s3,a1
    9000238a:	08080063          	beqz	a6,9000240a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    9000238e:	04098763          	beqz	s3,900023dc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x19e>
    90002392:	4581                	li	a1,0
    90002394:	854e                	mv	a0,s3
    90002396:	864a                	mv	a2,s2
    90002398:	00064683          	lbu	a3,0(a2)
    9000239c:	0605                	addi	a2,a2,1
    9000239e:	0c06f693          	andi	a3,a3,192
    900023a2:	f8068693          	addi	a3,a3,-128
    900023a6:	0016b693          	seqz	a3,a3
    900023aa:	157d                	addi	a0,a0,-1
    900023ac:	95b6                	add	a1,a1,a3
    900023ae:	f56d                	bnez	a0,90002398 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x15a>
    900023b0:	008b3503          	ld	a0,8(s6)
    900023b4:	40b985b3          	sub	a1,s3,a1
    900023b8:	04a5f963          	bgeu	a1,a0,9000240a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    900023bc:	4581                	li	a1,0
    900023be:	864e                	mv	a2,s3
    900023c0:	86ca                	mv	a3,s2
    900023c2:	0006c703          	lbu	a4,0(a3)
    900023c6:	0685                	addi	a3,a3,1
    900023c8:	0c077713          	andi	a4,a4,192
    900023cc:	f8070713          	addi	a4,a4,-128
    900023d0:	00173713          	seqz	a4,a4
    900023d4:	167d                	addi	a2,a2,-1
    900023d6:	95ba                	add	a1,a1,a4
    900023d8:	f66d                	bnez	a2,900023c2 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x184>
    900023da:	a029                	j	900023e4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1a6>
    900023dc:	008b3503          	ld	a0,8(s6)
    900023e0:	4581                	li	a1,0
    900023e2:	c505                	beqz	a0,9000240a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    900023e4:	038b4683          	lbu	a3,56(s6)
    900023e8:	4701                	li	a4,0
    900023ea:	478d                	li	a5,3
    900023ec:	41358633          	sub	a2,a1,s3
    900023f0:	00f68363          	beq	a3,a5,900023f6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1b8>
    900023f4:	8736                	mv	a4,a3
    900023f6:	00377593          	andi	a1,a4,3
    900023fa:	4685                	li	a3,1
    900023fc:	9532                	add	a0,a0,a2
    900023fe:	02b6c763          	blt	a3,a1,9000242c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1ee>
    90002402:	e985                	bnez	a1,90002432 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f4>
    90002404:	8aaa                	mv	s5,a0
    90002406:	4501                	li	a0,0
    90002408:	a825                	j	90002440 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    9000240a:	028b3583          	ld	a1,40(s6)
    9000240e:	020b3503          	ld	a0,32(s6)
    90002412:	6d9c                	ld	a5,24(a1)
    90002414:	85ca                	mv	a1,s2
    90002416:	864e                	mv	a2,s3
    90002418:	6b02                	ld	s6,0(sp)
    9000241a:	6aa2                	ld	s5,8(sp)
    9000241c:	6a42                	ld	s4,16(sp)
    9000241e:	69e2                	ld	s3,24(sp)
    90002420:	7902                	ld	s2,32(sp)
    90002422:	74a2                	ld	s1,40(sp)
    90002424:	7442                	ld	s0,48(sp)
    90002426:	70e2                	ld	ra,56(sp)
    90002428:	6121                	addi	sp,sp,64
    9000242a:	8782                	jr	a5
    9000242c:	460d                	li	a2,3
    9000242e:	00c59463          	bne	a1,a2,90002436 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f8>
    90002432:	4a81                	li	s5,0
    90002434:	a031                	j	90002440 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    90002436:	00150593          	addi	a1,a0,1
    9000243a:	8105                	srli	a0,a0,0x1
    9000243c:	0015da93          	srli	s5,a1,0x1
    90002440:	00150493          	addi	s1,a0,1
    90002444:	14fd                	addi	s1,s1,-1
    90002446:	cc81                	beqz	s1,9000245e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x220>
    90002448:	028b3583          	ld	a1,40(s6)
    9000244c:	020b3503          	ld	a0,32(s6)
    90002450:	7190                	ld	a2,32(a1)
    90002452:	034b2583          	lw	a1,52(s6)
    90002456:	9602                	jalr	a2
    90002458:	d575                	beqz	a0,90002444 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x206>
    9000245a:	4905                	li	s2,1
    9000245c:	a825                	j	90002494 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    9000245e:	028b3583          	ld	a1,40(s6)
    90002462:	034b6a03          	lwu	s4,52(s6)
    90002466:	020b3503          	ld	a0,32(s6)
    9000246a:	6d94                	ld	a3,24(a1)
    9000246c:	85ca                	mv	a1,s2
    9000246e:	864e                	mv	a2,s3
    90002470:	9682                	jalr	a3
    90002472:	4905                	li	s2,1
    90002474:	e105                	bnez	a0,90002494 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90002476:	020b3983          	ld	s3,32(s6)
    9000247a:	028b3403          	ld	s0,40(s6)
    9000247e:	001a8493          	addi	s1,s5,1
    90002482:	14fd                	addi	s1,s1,-1
    90002484:	c499                	beqz	s1,90002492 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x254>
    90002486:	7010                	ld	a2,32(s0)
    90002488:	854e                	mv	a0,s3
    9000248a:	85d2                	mv	a1,s4
    9000248c:	9602                	jalr	a2
    9000248e:	d975                	beqz	a0,90002482 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x244>
    90002490:	a011                	j	90002494 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90002492:	4901                	li	s2,0
    90002494:	854a                	mv	a0,s2
    90002496:	6b02                	ld	s6,0(sp)
    90002498:	6aa2                	ld	s5,8(sp)
    9000249a:	6a42                	ld	s4,16(sp)
    9000249c:	69e2                	ld	s3,24(sp)
    9000249e:	7902                	ld	s2,32(sp)
    900024a0:	74a2                	ld	s1,40(sp)
    900024a2:	7442                	ld	s0,48(sp)
    900024a4:	70e2                	ld	ra,56(sp)
    900024a6:	6121                	addi	sp,sp,64
    900024a8:	8082                	ret
    900024aa:	4681                	li	a3,0
    900024ac:	863a                	mv	a2,a4
    900024ae:	0e000793          	li	a5,224
    900024b2:	e8f562e3          	bltu	a0,a5,90002336 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    900024b6:	00e60d63          	beq	a2,a4,900024d0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x292>
    900024ba:	00064483          	lbu	s1,0(a2)
    900024be:	00160793          	addi	a5,a2,1
    900024c2:	03f4f613          	andi	a2,s1,63
    900024c6:	0f000493          	li	s1,240
    900024ca:	00957963          	bgeu	a0,s1,900024dc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x29e>
    900024ce:	b5a5                	j	90002336 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    900024d0:	4601                	li	a2,0
    900024d2:	87ba                	mv	a5,a4
    900024d4:	0f000493          	li	s1,240
    900024d8:	e4956fe3          	bltu	a0,s1,90002336 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    900024dc:	00e78763          	beq	a5,a4,900024ea <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ac>
    900024e0:	0007c703          	lbu	a4,0(a5) # 110000 <.Lline_table_start0+0xf3156>
    900024e4:	03f77713          	andi	a4,a4,63
    900024e8:	a011                	j	900024ec <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ae>
    900024ea:	4701                	li	a4,0
    900024ec:	054a                	slli	a0,a0,0x12
    900024ee:	001c07b7          	lui	a5,0x1c0
    900024f2:	8d7d                	and	a0,a0,a5
    900024f4:	06b2                	slli	a3,a3,0xc
    900024f6:	061a                	slli	a2,a2,0x6
    900024f8:	8d55                	or	a0,a0,a3
    900024fa:	8d51                	or	a0,a0,a2
    900024fc:	8d59                	or	a0,a0,a4
    900024fe:	00110637          	lui	a2,0x110
    90002502:	e8c504e3          	beq	a0,a2,9000238a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90002506:	bd05                	j	90002336 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>

0000000090002508 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>:
    90002508:	1101                	addi	sp,sp,-32
    9000250a:	ec06                	sd	ra,24(sp)
    9000250c:	e822                	sd	s0,16(sp)
    9000250e:	e426                	sd	s1,8(sp)
    90002510:	e04a                	sd	s2,0(sp)
    90002512:	842e                	mv	s0,a1
    90002514:	7598                	ld	a4,40(a1)
    90002516:	718c                	ld	a1,32(a1)
    90002518:	6f18                	ld	a4,24(a4)
    9000251a:	8936                	mv	s2,a3
    9000251c:	84aa                	mv	s1,a0
    9000251e:	852e                	mv	a0,a1
    90002520:	85b2                	mv	a1,a2
    90002522:	8636                	mv	a2,a3
    90002524:	9702                	jalr	a4
    90002526:	00193593          	seqz	a1,s2
    9000252a:	e080                	sd	s0,0(s1)
    9000252c:	00a48823          	sb	a0,16(s1)
    90002530:	0004b423          	sd	zero,8(s1)
    90002534:	00b488a3          	sb	a1,17(s1)
    90002538:	6902                	ld	s2,0(sp)
    9000253a:	64a2                	ld	s1,8(sp)
    9000253c:	6442                	ld	s0,16(sp)
    9000253e:	60e2                	ld	ra,24(sp)
    90002540:	6105                	addi	sp,sp,32
    90002542:	8082                	ret

0000000090002544 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>:
    90002544:	86ae                	mv	a3,a1
    90002546:	85aa                	mv	a1,a0
    90002548:	8532                	mv	a0,a2
    9000254a:	8636                	mv	a2,a3
    9000254c:	00000317          	auipc	t1,0x0
    90002550:	cf230067          	jr	-782(t1) # 9000223e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

0000000090002554 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E>:
    90002554:	7159                	addi	sp,sp,-112
    90002556:	f486                	sd	ra,104(sp)
    90002558:	f0a2                	sd	s0,96(sp)
    9000255a:	eca6                	sd	s1,88(sp)
    9000255c:	e8ca                	sd	s2,80(sp)
    9000255e:	e4ce                	sd	s3,72(sp)
    90002560:	e0d2                	sd	s4,64(sp)
    90002562:	fc56                	sd	s5,56(sp)
    90002564:	f85a                	sd	s6,48(sp)
    90002566:	f45e                	sd	s7,40(sp)
    90002568:	f062                	sd	s8,32(sp)
    9000256a:	ec66                	sd	s9,24(sp)
    9000256c:	e86a                	sd	s10,16(sp)
    9000256e:	e46e                	sd	s11,8(sp)
    90002570:	842e                	mv	s0,a1
    90002572:	758c                	ld	a1,40(a1)
    90002574:	7010                	ld	a2,32(s0)
    90002576:	7194                	ld	a3,32(a1)
    90002578:	84aa                	mv	s1,a0
    9000257a:	02700593          	li	a1,39
    9000257e:	8532                	mv	a0,a2
    90002580:	9682                	jalr	a3
    90002582:	c10d                	beqz	a0,900025a4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x50>
    90002584:	4505                	li	a0,1
    90002586:	6da2                	ld	s11,8(sp)
    90002588:	6d42                	ld	s10,16(sp)
    9000258a:	6ce2                	ld	s9,24(sp)
    9000258c:	7c02                	ld	s8,32(sp)
    9000258e:	7ba2                	ld	s7,40(sp)
    90002590:	7b42                	ld	s6,48(sp)
    90002592:	7ae2                	ld	s5,56(sp)
    90002594:	6a06                	ld	s4,64(sp)
    90002596:	69a6                	ld	s3,72(sp)
    90002598:	6946                	ld	s2,80(sp)
    9000259a:	64e6                	ld	s1,88(sp)
    9000259c:	7406                	ld	s0,96(sp)
    9000259e:	70a6                	ld	ra,104(sp)
    900025a0:	6165                	addi	sp,sp,112
    900025a2:	8082                	ret
    900025a4:	0004ea83          	lwu	s5,0(s1)
    900025a8:	02100513          	li	a0,33
    900025ac:	4489                	li	s1,2
    900025ae:	01554e63          	blt	a0,s5,900025ca <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x76>
    900025b2:	4525                	li	a0,9
    900025b4:	04aa8763          	beq	s5,a0,90002602 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xae>
    900025b8:	4529                	li	a0,10
    900025ba:	04aa8763          	beq	s5,a0,90002608 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb4>
    900025be:	4535                	li	a0,13
    900025c0:	02aa9163          	bne	s5,a0,900025e2 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x8e>
    900025c4:	07200a93          	li	s5,114
    900025c8:	a091                	j	9000260c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025ca:	02200513          	li	a0,34
    900025ce:	02aa8f63          	beq	s5,a0,9000260c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025d2:	02700513          	li	a0,39
    900025d6:	02aa8b63          	beq	s5,a0,9000260c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025da:	05c00513          	li	a0,92
    900025de:	02aa8763          	beq	s5,a0,9000260c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900025e2:	8556                	mv	a0,s5
    900025e4:	00001097          	auipc	ra,0x1
    900025e8:	58a080e7          	jalr	1418(ra) # 90003b6e <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>
    900025ec:	10051b63          	bnez	a0,90002702 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x1ae>
    900025f0:	8556                	mv	a0,s5
    900025f2:	00001097          	auipc	ra,0x1
    900025f6:	902080e7          	jalr	-1790(ra) # 90002ef4 <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>
    900025fa:	10050463          	beqz	a0,90002702 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x1ae>
    900025fe:	4485                	li	s1,1
    90002600:	a031                	j	9000260c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    90002602:	07400a93          	li	s5,116
    90002606:	a019                	j	9000260c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    90002608:	06e00a93          	li	s5,110
    9000260c:	4a09                	li	s4,2
    9000260e:	4b05                	li	s6,1
    90002610:	f0100513          	li	a0,-255
    90002614:	1502                	slli	a0,a0,0x20
    90002616:	fff50b93          	addi	s7,a0,-1
    9000261a:	4c29                	li	s8,10
    9000261c:	020b1c93          	slli	s9,s6,0x20
    90002620:	4d0d                	li	s10,3
    90002622:	021b1d93          	slli	s11,s6,0x21
    90002626:	4911                	li	s2,4
    90002628:	a039                	j	90002636 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xe2>
    9000262a:	4485                	li	s1,1
    9000262c:	7410                	ld	a2,40(s0)
    9000262e:	7008                	ld	a0,32(s0)
    90002630:	7210                	ld	a2,32(a2)
    90002632:	9602                	jalr	a2
    90002634:	f921                	bnez	a0,90002584 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x30>
    90002636:	02049513          	slli	a0,s1,0x20
    9000263a:	9101                	srli	a0,a0,0x20
    9000263c:	00ab4663          	blt	s6,a0,90002648 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xf4>
    90002640:	cd49                	beqz	a0,900026da <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x186>
    90002642:	4481                	li	s1,0
    90002644:	85d6                	mv	a1,s5
    90002646:	b7dd                	j	9000262c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    90002648:	05c00593          	li	a1,92
    9000264c:	fd450fe3          	beq	a0,s4,9000262a <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd6>
    90002650:	0209d513          	srli	a0,s3,0x20
    90002654:	0ff57513          	andi	a0,a0,255
    90002658:	00aa4b63          	blt	s4,a0,9000266e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x11a>
    9000265c:	cd3d                	beqz	a0,900026da <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x186>
    9000265e:	03651663          	bne	a0,s6,9000268a <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x136>
    90002662:	0179f9b3          	and	s3,s3,s7
    90002666:	448d                	li	s1,3
    90002668:	07d00593          	li	a1,125
    9000266c:	b7c1                	j	9000262c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    9000266e:	05a50063          	beq	a0,s10,900026ae <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x15a>
    90002672:	05251663          	bne	a0,s2,900026be <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x16a>
    90002676:	0179f533          	and	a0,s3,s7
    9000267a:	448d                	li	s1,3
    9000267c:	02049593          	slli	a1,s1,0x20
    90002680:	00b569b3          	or	s3,a0,a1
    90002684:	07500593          	li	a1,117
    90002688:	b755                	j	9000262c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    9000268a:	6602                	ld	a2,0(sp)
    9000268c:	00261513          	slli	a0,a2,0x2
    90002690:	00a9d53b          	srlw	a0,s3,a0
    90002694:	893d                	andi	a0,a0,15
    90002696:	03000593          	li	a1,48
    9000269a:	01856463          	bltu	a0,s8,900026a2 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x14e>
    9000269e:	05700593          	li	a1,87
    900026a2:	95aa                	add	a1,a1,a0
    900026a4:	c60d                	beqz	a2,900026ce <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x17a>
    900026a6:	167d                	addi	a2,a2,-1
    900026a8:	e032                	sd	a2,0(sp)
    900026aa:	448d                	li	s1,3
    900026ac:	b741                	j	9000262c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900026ae:	0179f533          	and	a0,s3,s7
    900026b2:	01b569b3          	or	s3,a0,s11
    900026b6:	448d                	li	s1,3
    900026b8:	07b00593          	li	a1,123
    900026bc:	bf85                	j	9000262c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900026be:	0179f533          	and	a0,s3,s7
    900026c2:	022b1613          	slli	a2,s6,0x22
    900026c6:	00c569b3          	or	s3,a0,a2
    900026ca:	448d                	li	s1,3
    900026cc:	b785                	j	9000262c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900026ce:	0179f533          	and	a0,s3,s7
    900026d2:	019569b3          	or	s3,a0,s9
    900026d6:	448d                	li	s1,3
    900026d8:	bf91                	j	9000262c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900026da:	740c                	ld	a1,40(s0)
    900026dc:	7008                	ld	a0,32(s0)
    900026de:	719c                	ld	a5,32(a1)
    900026e0:	02700593          	li	a1,39
    900026e4:	6da2                	ld	s11,8(sp)
    900026e6:	6d42                	ld	s10,16(sp)
    900026e8:	6ce2                	ld	s9,24(sp)
    900026ea:	7c02                	ld	s8,32(sp)
    900026ec:	7ba2                	ld	s7,40(sp)
    900026ee:	7b42                	ld	s6,48(sp)
    900026f0:	7ae2                	ld	s5,56(sp)
    900026f2:	6a06                	ld	s4,64(sp)
    900026f4:	69a6                	ld	s3,72(sp)
    900026f6:	6946                	ld	s2,80(sp)
    900026f8:	64e6                	ld	s1,88(sp)
    900026fa:	7406                	ld	s0,96(sp)
    900026fc:	70a6                	ld	ra,104(sp)
    900026fe:	6165                	addi	sp,sp,112
    90002700:	8782                	jr	a5
    90002702:	001ae513          	ori	a0,s5,1
    90002706:	00155593          	srli	a1,a0,0x1
    9000270a:	8d4d                	or	a0,a0,a1
    9000270c:	00255593          	srli	a1,a0,0x2
    90002710:	8d4d                	or	a0,a0,a1
    90002712:	00455593          	srli	a1,a0,0x4
    90002716:	8d4d                	or	a0,a0,a1
    90002718:	00855593          	srli	a1,a0,0x8
    9000271c:	8d4d                	or	a0,a0,a1
    9000271e:	01055593          	srli	a1,a0,0x10
    90002722:	8d4d                	or	a0,a0,a1
    90002724:	02055593          	srli	a1,a0,0x20
    90002728:	8d4d                	or	a0,a0,a1
    9000272a:	fff54513          	not	a0,a0
    9000272e:	00155593          	srli	a1,a0,0x1
    90002732:	05555637          	lui	a2,0x5555
    90002736:	5556061b          	addiw	a2,a2,1365
    9000273a:	0632                	slli	a2,a2,0xc
    9000273c:	55560613          	addi	a2,a2,1365 # 5555555 <.Lline_table_start0+0x55386ab>
    90002740:	0632                	slli	a2,a2,0xc
    90002742:	55560613          	addi	a2,a2,1365
    90002746:	0632                	slli	a2,a2,0xc
    90002748:	55560613          	addi	a2,a2,1365
    9000274c:	8df1                	and	a1,a1,a2
    9000274e:	8d0d                	sub	a0,a0,a1
    90002750:	033335b7          	lui	a1,0x3333
    90002754:	3335859b          	addiw	a1,a1,819
    90002758:	05b2                	slli	a1,a1,0xc
    9000275a:	33358593          	addi	a1,a1,819 # 3333333 <.Lline_table_start0+0x3316489>
    9000275e:	05b2                	slli	a1,a1,0xc
    90002760:	33358593          	addi	a1,a1,819
    90002764:	05b2                	slli	a1,a1,0xc
    90002766:	33358593          	addi	a1,a1,819
    9000276a:	00b57633          	and	a2,a0,a1
    9000276e:	8109                	srli	a0,a0,0x2
    90002770:	8d6d                	and	a0,a0,a1
    90002772:	9532                	add	a0,a0,a2
    90002774:	00455593          	srli	a1,a0,0x4
    90002778:	952e                	add	a0,a0,a1
    9000277a:	00f0f5b7          	lui	a1,0xf0f
    9000277e:	0f15859b          	addiw	a1,a1,241
    90002782:	05b2                	slli	a1,a1,0xc
    90002784:	f0f58593          	addi	a1,a1,-241 # f0ef0f <.Lline_table_start0+0xef2065>
    90002788:	05b2                	slli	a1,a1,0xc
    9000278a:	0f158593          	addi	a1,a1,241
    9000278e:	05b2                	slli	a1,a1,0xc
    90002790:	f0f58593          	addi	a1,a1,-241
    90002794:	8d6d                	and	a0,a0,a1
    90002796:	010105b7          	lui	a1,0x1010
    9000279a:	1015859b          	addiw	a1,a1,257
    9000279e:	05c2                	slli	a1,a1,0x10
    900027a0:	10158593          	addi	a1,a1,257 # 1010101 <.Lline_table_start0+0xff3257>
    900027a4:	05c2                	slli	a1,a1,0x10
    900027a6:	10158593          	addi	a1,a1,257
    900027aa:	02b50533          	mul	a0,a0,a1
    900027ae:	9161                	srli	a0,a0,0x38
    900027b0:	1501                	addi	a0,a0,-32
    900027b2:	0025551b          	srliw	a0,a0,0x2
    900027b6:	00754513          	xori	a0,a0,7
    900027ba:	e02a                	sd	a0,0(sp)
    900027bc:	4515                	li	a0,5
    900027be:	1502                	slli	a0,a0,0x20
    900027c0:	00aae9b3          	or	s3,s5,a0
    900027c4:	448d                	li	s1,3
    900027c6:	b599                	j	9000260c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>

00000000900027c8 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E>:
    900027c8:	1141                	addi	sp,sp,-16
    900027ca:	e406                	sd	ra,8(sp)
    900027cc:	00758693          	addi	a3,a1,7
    900027d0:	9ae1                	andi	a3,a3,-8
    900027d2:	8e8d                	sub	a3,a3,a1
    900027d4:	0ff57813          	andi	a6,a0,255
    900027d8:	c68d                	beqz	a3,90002802 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x3a>
    900027da:	8532                	mv	a0,a2
    900027dc:	00d66363          	bltu	a2,a3,900027e2 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x1a>
    900027e0:	8536                	mv	a0,a3
    900027e2:	c105                	beqz	a0,90002802 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x3a>
    900027e4:	4681                	li	a3,0
    900027e6:	00d58733          	add	a4,a1,a3
    900027ea:	00074703          	lbu	a4,0(a4)
    900027ee:	0d070463          	beq	a4,a6,900028b6 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xee>
    900027f2:	0685                	addi	a3,a3,1
    900027f4:	fed519e3          	bne	a0,a3,900027e6 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x1e>
    900027f8:	ff060893          	addi	a7,a2,-16
    900027fc:	00a8f663          	bgeu	a7,a0,90002808 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x40>
    90002800:	a049                	j	90002882 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xba>
    90002802:	4501                	li	a0,0
    90002804:	ff060893          	addi	a7,a2,-16
    90002808:	feff06b7          	lui	a3,0xfeff0
    9000280c:	eff6869b          	addiw	a3,a3,-257
    90002810:	06c2                	slli	a3,a3,0x10
    90002812:	eff68693          	addi	a3,a3,-257 # fffffffffefefeff <ebss+0xffffffff6efb8eff>
    90002816:	06c2                	slli	a3,a3,0x10
    90002818:	eff68293          	addi	t0,a3,-257
    9000281c:	76c1                	lui	a3,0xffff0
    9000281e:	1016869b          	addiw	a3,a3,257
    90002822:	06c2                	slli	a3,a3,0x10
    90002824:	10168693          	addi	a3,a3,257 # ffffffffffff0101 <ebss+0xffffffff6ffb9101>
    90002828:	06c2                	slli	a3,a3,0x10
    9000282a:	10168693          	addi	a3,a3,257
    9000282e:	06be                	slli	a3,a3,0xf
    90002830:	08068313          	addi	t1,a3,128
    90002834:	010106b7          	lui	a3,0x1010
    90002838:	1016869b          	addiw	a3,a3,257
    9000283c:	06c2                	slli	a3,a3,0x10
    9000283e:	10168693          	addi	a3,a3,257 # 1010101 <.Lline_table_start0+0xff3257>
    90002842:	06c2                	slli	a3,a3,0x10
    90002844:	10168693          	addi	a3,a3,257
    90002848:	02d803b3          	mul	t2,a6,a3
    9000284c:	00a587b3          	add	a5,a1,a0
    90002850:	6398                	ld	a4,0(a5)
    90002852:	679c                	ld	a5,8(a5)
    90002854:	00774733          	xor	a4,a4,t2
    90002858:	fff74693          	not	a3,a4
    9000285c:	9716                	add	a4,a4,t0
    9000285e:	0066f6b3          	and	a3,a3,t1
    90002862:	8ef9                	and	a3,a3,a4
    90002864:	0077c733          	xor	a4,a5,t2
    90002868:	fff74793          	not	a5,a4
    9000286c:	9716                	add	a4,a4,t0
    9000286e:	0067f7b3          	and	a5,a5,t1
    90002872:	8f7d                	and	a4,a4,a5
    90002874:	8ed9                	or	a3,a3,a4
    90002876:	e681                	bnez	a3,9000287e <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xb6>
    90002878:	0541                	addi	a0,a0,16
    9000287a:	fca8f9e3          	bgeu	a7,a0,9000284c <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x84>
    9000287e:	02a66e63          	bltu	a2,a0,900028ba <.LBB203_24>
    90002882:	4681                	li	a3,0
    90002884:	00c51463          	bne	a0,a2,9000288c <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xc4>
    90002888:	4581                	li	a1,0
    9000288a:	a005                	j	900028aa <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe2>
    9000288c:	8e09                	sub	a2,a2,a0
    9000288e:	95aa                	add	a1,a1,a0
    90002890:	00d58733          	add	a4,a1,a3
    90002894:	00074703          	lbu	a4,0(a4)
    90002898:	01070863          	beq	a4,a6,900028a8 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe0>
    9000289c:	0685                	addi	a3,a3,1
    9000289e:	fed619e3          	bne	a2,a3,90002890 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xc8>
    900028a2:	4581                	li	a1,0
    900028a4:	86b2                	mv	a3,a2
    900028a6:	a011                	j	900028aa <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe2>
    900028a8:	4585                	li	a1,1
    900028aa:	96aa                	add	a3,a3,a0
    900028ac:	852e                	mv	a0,a1
    900028ae:	85b6                	mv	a1,a3
    900028b0:	60a2                	ld	ra,8(sp)
    900028b2:	0141                	addi	sp,sp,16
    900028b4:	8082                	ret
    900028b6:	4585                	li	a1,1
    900028b8:	bfd5                	j	900028ac <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe4>

00000000900028ba <.LBB203_24>:
    900028ba:	00006697          	auipc	a3,0x6
    900028be:	37e68693          	addi	a3,a3,894 # 90008c38 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.242>
    900028c2:	85b2                	mv	a1,a2
    900028c4:	8636                	mv	a2,a3
    900028c6:	00000097          	auipc	ra,0x0
    900028ca:	00a080e7          	jalr	10(ra) # 900028d0 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900028d0 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>:
    900028d0:	7159                	addi	sp,sp,-112
    900028d2:	f486                	sd	ra,104(sp)
    900028d4:	e42a                	sd	a0,8(sp)
    900028d6:	e82e                	sd	a1,16(sp)
    900028d8:	0028                	addi	a0,sp,8
    900028da:	e4aa                	sd	a0,72(sp)

00000000900028dc <.LBB205_1>:
    900028dc:	00001517          	auipc	a0,0x1
    900028e0:	d8e50513          	addi	a0,a0,-626 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    900028e4:	e8aa                	sd	a0,80(sp)
    900028e6:	080c                	addi	a1,sp,16
    900028e8:	ecae                	sd	a1,88(sp)
    900028ea:	f0aa                	sd	a0,96(sp)

00000000900028ec <.LBB205_2>:
    900028ec:	00006517          	auipc	a0,0x6
    900028f0:	39c50513          	addi	a0,a0,924 # 90008c88 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.247>
    900028f4:	ec2a                	sd	a0,24(sp)
    900028f6:	4509                	li	a0,2
    900028f8:	f02a                	sd	a0,32(sp)
    900028fa:	f402                	sd	zero,40(sp)
    900028fc:	00ac                	addi	a1,sp,72
    900028fe:	fc2e                	sd	a1,56(sp)
    90002900:	e0aa                	sd	a0,64(sp)
    90002902:	0828                	addi	a0,sp,24
    90002904:	85b2                	mv	a1,a2
    90002906:	fffff097          	auipc	ra,0xfffff
    9000290a:	e6e080e7          	jalr	-402(ra) # 90001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090002910 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>:
    90002910:	7159                	addi	sp,sp,-112
    90002912:	f486                	sd	ra,104(sp)
    90002914:	e42a                	sd	a0,8(sp)
    90002916:	e82e                	sd	a1,16(sp)
    90002918:	0028                	addi	a0,sp,8
    9000291a:	e4aa                	sd	a0,72(sp)

000000009000291c <.LBB206_1>:
    9000291c:	00001517          	auipc	a0,0x1
    90002920:	d4e50513          	addi	a0,a0,-690 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002924:	e8aa                	sd	a0,80(sp)
    90002926:	080c                	addi	a1,sp,16
    90002928:	ecae                	sd	a1,88(sp)
    9000292a:	f0aa                	sd	a0,96(sp)

000000009000292c <.LBB206_2>:
    9000292c:	00006517          	auipc	a0,0x6
    90002930:	37c50513          	addi	a0,a0,892 # 90008ca8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.249>
    90002934:	ec2a                	sd	a0,24(sp)
    90002936:	4509                	li	a0,2
    90002938:	f02a                	sd	a0,32(sp)
    9000293a:	f402                	sd	zero,40(sp)
    9000293c:	00ac                	addi	a1,sp,72
    9000293e:	fc2e                	sd	a1,56(sp)
    90002940:	e0aa                	sd	a0,64(sp)
    90002942:	0828                	addi	a0,sp,24
    90002944:	85b2                	mv	a1,a2
    90002946:	fffff097          	auipc	ra,0xfffff
    9000294a:	e2e080e7          	jalr	-466(ra) # 90001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090002950 <_ZN4core5slice5index22slice_index_order_fail17h17f07731262cfc7fE>:
    90002950:	7159                	addi	sp,sp,-112
    90002952:	f486                	sd	ra,104(sp)
    90002954:	e42a                	sd	a0,8(sp)
    90002956:	e82e                	sd	a1,16(sp)
    90002958:	0028                	addi	a0,sp,8
    9000295a:	e4aa                	sd	a0,72(sp)

000000009000295c <.LBB207_1>:
    9000295c:	00001517          	auipc	a0,0x1
    90002960:	d0e50513          	addi	a0,a0,-754 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002964:	e8aa                	sd	a0,80(sp)
    90002966:	080c                	addi	a1,sp,16
    90002968:	ecae                	sd	a1,88(sp)
    9000296a:	f0aa                	sd	a0,96(sp)

000000009000296c <.LBB207_2>:
    9000296c:	00006517          	auipc	a0,0x6
    90002970:	38450513          	addi	a0,a0,900 # 90008cf0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.252>
    90002974:	ec2a                	sd	a0,24(sp)
    90002976:	4509                	li	a0,2
    90002978:	f02a                	sd	a0,32(sp)
    9000297a:	f402                	sd	zero,40(sp)
    9000297c:	00ac                	addi	a1,sp,72
    9000297e:	fc2e                	sd	a1,56(sp)
    90002980:	e0aa                	sd	a0,64(sp)
    90002982:	0828                	addi	a0,sp,24
    90002984:	85b2                	mv	a1,a2
    90002986:	fffff097          	auipc	ra,0xfffff
    9000298a:	dee080e7          	jalr	-530(ra) # 90001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090002990 <_ZN4core5slice5index29slice_end_index_overflow_fail17h5ff2b53285909b6aE>:
    90002990:	1141                	addi	sp,sp,-16
    90002992:	e406                	sd	ra,8(sp)
    90002994:	862a                	mv	a2,a0

0000000090002996 <.LBB209_1>:
    90002996:	00006517          	auipc	a0,0x6
    9000299a:	37a50513          	addi	a0,a0,890 # 90008d10 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.254>
    9000299e:	02c00593          	li	a1,44
    900029a2:	fffff097          	auipc	ra,0xfffff
    900029a6:	d66080e7          	jalr	-666(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

00000000900029ac <_ZN4core3str8converts9from_utf817h36a155da9055aca2E>:
    900029ac:	711d                	addi	sp,sp,-96
    900029ae:	eca2                	sd	s0,88(sp)
    900029b0:	e8a6                	sd	s1,80(sp)
    900029b2:	e4ca                	sd	s2,72(sp)
    900029b4:	e0ce                	sd	s3,64(sp)
    900029b6:	fc52                	sd	s4,56(sp)
    900029b8:	f856                	sd	s5,48(sp)
    900029ba:	f45a                	sd	s6,40(sp)
    900029bc:	f05e                	sd	s7,32(sp)
    900029be:	ec62                	sd	s8,24(sp)
    900029c0:	e866                	sd	s9,16(sp)
    900029c2:	e46a                	sd	s10,8(sp)
    900029c4:	ff160693          	addi	a3,a2,-15
    900029c8:	00d63733          	sltu	a4,a2,a3
    900029cc:	4d01                	li	s10,0
    900029ce:	e311                	bnez	a4,900029d2 <_ZN4core3str8converts9from_utf817h36a155da9055aca2E+0x26>
    900029d0:	8d36                	mv	s10,a3
    900029d2:	20060463          	beqz	a2,90002bda <.LBB212_49+0x1f0>
    900029d6:	4681                	li	a3,0
    900029d8:	00758713          	addi	a4,a1,7
    900029dc:	9b61                	andi	a4,a4,-8
    900029de:	40b70833          	sub	a6,a4,a1
    900029e2:	00180713          	addi	a4,a6,1 # 1c0001 <.Lline_table_start0+0x1a3157>
    900029e6:	00173c13          	seqz	s8,a4

00000000900029ea <.LBB212_49>:
    900029ea:	00006897          	auipc	a7,0x6
    900029ee:	35288893          	addi	a7,a7,850 # 90008d3c <_ZN4core3str11validations15UTF8_CHAR_WIDTH17h8bfa167165964ee9E>
    900029f2:	4291                	li	t0,4
    900029f4:	0f400313          	li	t1,244
    900029f8:	08000393          	li	t2,128
    900029fc:	0f000e13          	li	t3,240
    90002a00:	03000e93          	li	t4,48
    90002a04:	4f09                	li	t5,2
    90002a06:	5ffd                	li	t6,-1
    90002a08:	0bf00913          	li	s2,191
    90002a0c:	4b8d                	li	s7,3
    90002a0e:	0ed00b13          	li	s6,237
    90002a12:	0e000993          	li	s3,224
    90002a16:	0a000a13          	li	s4,160
    90002a1a:	4aad                	li	s5,11
    90002a1c:	7741                	lui	a4,0xffff0
    90002a1e:	1017071b          	addiw	a4,a4,257
    90002a22:	0742                	slli	a4,a4,0x10
    90002a24:	10170713          	addi	a4,a4,257 # ffffffffffff0101 <ebss+0xffffffff6ffb9101>
    90002a28:	0742                	slli	a4,a4,0x10
    90002a2a:	10170713          	addi	a4,a4,257
    90002a2e:	073e                	slli	a4,a4,0xf
    90002a30:	08070413          	addi	s0,a4,128
    90002a34:	a029                	j	90002a3e <.LBB212_49+0x54>
    90002a36:	00178693          	addi	a3,a5,1 # 1c0001 <.Lline_table_start0+0x1a3157>
    90002a3a:	1ac6f063          	bgeu	a3,a2,90002bda <.LBB212_49+0x1f0>
    90002a3e:	00d58733          	add	a4,a1,a3
    90002a42:	00074783          	lbu	a5,0(a4)
    90002a46:	03879713          	slli	a4,a5,0x38
    90002a4a:	43875493          	srai	s1,a4,0x38
    90002a4e:	0004cc63          	bltz	s1,90002a66 <.LBB212_49+0x7c>
    90002a52:	000c1663          	bnez	s8,90002a5e <.LBB212_49+0x74>
    90002a56:	40d80733          	sub	a4,a6,a3
    90002a5a:	8b1d                	andi	a4,a4,7
    90002a5c:	cf05                	beqz	a4,90002a94 <.LBB212_49+0xaa>
    90002a5e:	0685                	addi	a3,a3,1
    90002a60:	fcc6efe3          	bltu	a3,a2,90002a3e <.LBB212_49+0x54>
    90002a64:	aa9d                	j	90002bda <.LBB212_49+0x1f0>
    90002a66:	01178733          	add	a4,a5,a7
    90002a6a:	00074703          	lbu	a4,0(a4)
    90002a6e:	04570b63          	beq	a4,t0,90002ac4 <.LBB212_49+0xda>
    90002a72:	07770b63          	beq	a4,s7,90002ae8 <.LBB212_49+0xfe>
    90002a76:	17e71663          	bne	a4,t5,90002be2 <.LBB212_49+0x1f8>
    90002a7a:	00168793          	addi	a5,a3,1
    90002a7e:	16c7f563          	bgeu	a5,a2,90002be8 <.LBB212_49+0x1fe>
    90002a82:	00f58733          	add	a4,a1,a5
    90002a86:	00074703          	lbu	a4,0(a4)
    90002a8a:	0c077713          	andi	a4,a4,192
    90002a8e:	fa7704e3          	beq	a4,t2,90002a36 <.LBB212_49+0x4c>
    90002a92:	aa81                	j	90002be2 <.LBB212_49+0x1f8>
    90002a94:	01a6fc63          	bgeu	a3,s10,90002aac <.LBB212_49+0xc2>
    90002a98:	00d58733          	add	a4,a1,a3
    90002a9c:	631c                	ld	a5,0(a4)
    90002a9e:	6718                	ld	a4,8(a4)
    90002aa0:	8f5d                	or	a4,a4,a5
    90002aa2:	8f61                	and	a4,a4,s0
    90002aa4:	e701                	bnez	a4,90002aac <.LBB212_49+0xc2>
    90002aa6:	06c1                	addi	a3,a3,16
    90002aa8:	ffa6e8e3          	bltu	a3,s10,90002a98 <.LBB212_49+0xae>
    90002aac:	fac6fae3          	bgeu	a3,a2,90002a60 <.LBB212_49+0x76>
    90002ab0:	00d58733          	add	a4,a1,a3
    90002ab4:	00070703          	lb	a4,0(a4)
    90002ab8:	fa0744e3          	bltz	a4,90002a60 <.LBB212_49+0x76>
    90002abc:	0685                	addi	a3,a3,1
    90002abe:	fed619e3          	bne	a2,a3,90002ab0 <.LBB212_49+0xc6>
    90002ac2:	aa21                	j	90002bda <.LBB212_49+0x1f0>
    90002ac4:	00168713          	addi	a4,a3,1
    90002ac8:	12c77063          	bgeu	a4,a2,90002be8 <.LBB212_49+0x1fe>
    90002acc:	972e                	add	a4,a4,a1
    90002ace:	00074703          	lbu	a4,0(a4)
    90002ad2:	02678b63          	beq	a5,t1,90002b08 <.LBB212_49+0x11e>
    90002ad6:	05c79363          	bne	a5,t3,90002b1c <.LBB212_49+0x132>
    90002ada:	07070713          	addi	a4,a4,112
    90002ade:	0ff77713          	andi	a4,a4,255
    90002ae2:	05d76d63          	bltu	a4,t4,90002b3c <.LBB212_49+0x152>
    90002ae6:	a8f5                	j	90002be2 <.LBB212_49+0x1f8>
    90002ae8:	00168713          	addi	a4,a3,1
    90002aec:	0ec77e63          	bgeu	a4,a2,90002be8 <.LBB212_49+0x1fe>
    90002af0:	972e                	add	a4,a4,a1
    90002af2:	00074c83          	lbu	s9,0(a4)
    90002af6:	07678c63          	beq	a5,s6,90002b6e <.LBB212_49+0x184>
    90002afa:	09379463          	bne	a5,s3,90002b82 <.LBB212_49+0x198>
    90002afe:	0e0cf713          	andi	a4,s9,224
    90002b02:	0b470d63          	beq	a4,s4,90002bbc <.LBB212_49+0x1d2>
    90002b06:	a8f1                	j	90002be2 <.LBB212_49+0x1f8>
    90002b08:	03871793          	slli	a5,a4,0x38
    90002b0c:	97e1                	srai	a5,a5,0x38
    90002b0e:	0007a793          	slti	a5,a5,0
    90002b12:	09073713          	sltiu	a4,a4,144
    90002b16:	8f7d                	and	a4,a4,a5
    90002b18:	e315                	bnez	a4,90002b3c <.LBB212_49+0x152>
    90002b1a:	a0e1                	j	90002be2 <.LBB212_49+0x1f8>
    90002b1c:	00f48793          	addi	a5,s1,15
    90002b20:	0ff7f793          	andi	a5,a5,255
    90002b24:	00ff37b3          	sltu	a5,t5,a5
    90002b28:	03871493          	slli	s1,a4,0x38
    90002b2c:	94e1                	srai	s1,s1,0x38
    90002b2e:	009fa4b3          	slt	s1,t6,s1
    90002b32:	8fc5                	or	a5,a5,s1
    90002b34:	00e93733          	sltu	a4,s2,a4
    90002b38:	8f5d                	or	a4,a4,a5
    90002b3a:	e745                	bnez	a4,90002be2 <.LBB212_49+0x1f8>
    90002b3c:	00268713          	addi	a4,a3,2
    90002b40:	0ac77463          	bgeu	a4,a2,90002be8 <.LBB212_49+0x1fe>
    90002b44:	972e                	add	a4,a4,a1
    90002b46:	00074703          	lbu	a4,0(a4)
    90002b4a:	0c077713          	andi	a4,a4,192
    90002b4e:	4485                	li	s1,1
    90002b50:	0c771163          	bne	a4,t2,90002c12 <.LBB212_49+0x228>
    90002b54:	00368793          	addi	a5,a3,3
    90002b58:	08c7f863          	bgeu	a5,a2,90002be8 <.LBB212_49+0x1fe>
    90002b5c:	00f58733          	add	a4,a1,a5
    90002b60:	00074703          	lbu	a4,0(a4)
    90002b64:	0c077713          	andi	a4,a4,192
    90002b68:	ec7707e3          	beq	a4,t2,90002a36 <.LBB212_49+0x4c>
    90002b6c:	a06d                	j	90002c16 <.LBB212_49+0x22c>
    90002b6e:	038c9713          	slli	a4,s9,0x38
    90002b72:	9761                	srai	a4,a4,0x38
    90002b74:	00072713          	slti	a4,a4,0
    90002b78:	0a0cb793          	sltiu	a5,s9,160
    90002b7c:	8f7d                	and	a4,a4,a5
    90002b7e:	ef1d                	bnez	a4,90002bbc <.LBB212_49+0x1d2>
    90002b80:	a08d                	j	90002be2 <.LBB212_49+0x1f8>
    90002b82:	01f48713          	addi	a4,s1,31
    90002b86:	0ff77793          	andi	a5,a4,255
    90002b8a:	038c9713          	slli	a4,s9,0x38
    90002b8e:	00faea63          	bltu	s5,a5,90002ba2 <.LBB212_49+0x1b8>
    90002b92:	9761                	srai	a4,a4,0x38
    90002b94:	00072713          	slti	a4,a4,0
    90002b98:	0c0cb793          	sltiu	a5,s9,192
    90002b9c:	8f7d                	and	a4,a4,a5
    90002b9e:	ef19                	bnez	a4,90002bbc <.LBB212_49+0x1d2>
    90002ba0:	a089                	j	90002be2 <.LBB212_49+0x1f8>
    90002ba2:	ffe4f793          	andi	a5,s1,-2
    90002ba6:	07c9                	addi	a5,a5,18
    90002ba8:	00f037b3          	snez	a5,a5
    90002bac:	9761                	srai	a4,a4,0x38
    90002bae:	00efa733          	slt	a4,t6,a4
    90002bb2:	8f5d                	or	a4,a4,a5
    90002bb4:	019937b3          	sltu	a5,s2,s9
    90002bb8:	8f5d                	or	a4,a4,a5
    90002bba:	e705                	bnez	a4,90002be2 <.LBB212_49+0x1f8>
    90002bbc:	00268793          	addi	a5,a3,2
    90002bc0:	02c7f463          	bgeu	a5,a2,90002be8 <.LBB212_49+0x1fe>
    90002bc4:	00f58733          	add	a4,a1,a5
    90002bc8:	00074703          	lbu	a4,0(a4)
    90002bcc:	0c077713          	andi	a4,a4,192
    90002bd0:	e67703e3          	beq	a4,t2,90002a36 <.LBB212_49+0x4c>
    90002bd4:	4485                	li	s1,1
    90002bd6:	4589                	li	a1,2
    90002bd8:	a811                	j	90002bec <.LBB212_49+0x202>
    90002bda:	4681                	li	a3,0
    90002bdc:	e50c                	sd	a1,8(a0)
    90002bde:	e910                	sd	a2,16(a0)
    90002be0:	a819                	j	90002bf6 <.LBB212_49+0x20c>
    90002be2:	4585                	li	a1,1
    90002be4:	4485                	li	s1,1
    90002be6:	a019                	j	90002bec <.LBB212_49+0x202>
    90002be8:	4581                	li	a1,0
    90002bea:	4481                	li	s1,0
    90002bec:	05a2                	slli	a1,a1,0x8
    90002bee:	8dc5                	or	a1,a1,s1
    90002bf0:	e514                	sd	a3,8(a0)
    90002bf2:	e90c                	sd	a1,16(a0)
    90002bf4:	4685                	li	a3,1
    90002bf6:	e114                	sd	a3,0(a0)
    90002bf8:	6d22                	ld	s10,8(sp)
    90002bfa:	6cc2                	ld	s9,16(sp)
    90002bfc:	6c62                	ld	s8,24(sp)
    90002bfe:	7b82                	ld	s7,32(sp)
    90002c00:	7b22                	ld	s6,40(sp)
    90002c02:	7ac2                	ld	s5,48(sp)
    90002c04:	7a62                	ld	s4,56(sp)
    90002c06:	6986                	ld	s3,64(sp)
    90002c08:	6926                	ld	s2,72(sp)
    90002c0a:	64c6                	ld	s1,80(sp)
    90002c0c:	6466                	ld	s0,88(sp)
    90002c0e:	6125                	addi	sp,sp,96
    90002c10:	8082                	ret
    90002c12:	4589                	li	a1,2
    90002c14:	bfe1                	j	90002bec <.LBB212_49+0x202>
    90002c16:	458d                	li	a1,3
    90002c18:	bfd1                	j	90002bec <.LBB212_49+0x202>

0000000090002c1a <_ZN4core3str16slice_error_fail17he9562343589499f6E>:
    90002c1a:	7115                	addi	sp,sp,-224
    90002c1c:	ed86                	sd	ra,216(sp)
    90002c1e:	e432                	sd	a2,8(sp)
    90002c20:	e836                	sd	a3,16(sp)
    90002c22:	10100793          	li	a5,257
    90002c26:	4885                	li	a7,1
    90002c28:	882e                	mv	a6,a1
    90002c2a:	04f5e263          	bltu	a1,a5,90002c6e <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x54>
    90002c2e:	4381                	li	t2,0
    90002c30:	f0158893          	addi	a7,a1,-255
    90002c34:	10050293          	addi	t0,a0,256
    90002c38:	fbf00313          	li	t1,-65
    90002c3c:	10038813          	addi	a6,t2,256
    90002c40:	00b87863          	bgeu	a6,a1,90002c50 <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x36>
    90002c44:	007287b3          	add	a5,t0,t2
    90002c48:	00078783          	lb	a5,0(a5)
    90002c4c:	02f34b63          	blt	t1,a5,90002c82 <.LBB228_49+0xc>
    90002c50:	0ff38793          	addi	a5,t2,255
    90002c54:	00f03833          	snez	a6,a5
    90002c58:	0078c7b3          	xor	a5,a7,t2
    90002c5c:	00f037b3          	snez	a5,a5
    90002c60:	00f877b3          	and	a5,a6,a5
    90002c64:	13fd                	addi	t2,t2,-1
    90002c66:	fbf9                	bnez	a5,90002c3c <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x22>
    90002c68:	4881                	li	a7,0
    90002c6a:	10038813          	addi	a6,t2,256
    90002c6e:	ec2a                	sd	a0,24(sp)
    90002c70:	f042                	sd	a6,32(sp)
    90002c72:	00089d63          	bnez	a7,90002c8c <.LBB228_49+0x16>

0000000090002c76 <.LBB228_49>:
    90002c76:	00006797          	auipc	a5,0x6
    90002c7a:	1c678793          	addi	a5,a5,454 # 90008e3c <.Lanon.9d4bfc86079e95d674f3cded52b1db19.310>
    90002c7e:	4815                	li	a6,5
    90002c80:	a819                	j	90002c96 <.LBB228_50+0x8>
    90002c82:	4881                	li	a7,0
    90002c84:	ec2a                	sd	a0,24(sp)
    90002c86:	f042                	sd	a6,32(sp)
    90002c88:	fe0887e3          	beqz	a7,90002c76 <.LBB228_49>
    90002c8c:	4801                	li	a6,0

0000000090002c8e <.LBB228_50>:
    90002c8e:	00006797          	auipc	a5,0x6
    90002c92:	c9278793          	addi	a5,a5,-878 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90002c96:	f43e                	sd	a5,40(sp)
    90002c98:	00c5b8b3          	sltu	a7,a1,a2
    90002c9c:	0018c293          	xori	t0,a7,1
    90002ca0:	00d5b7b3          	sltu	a5,a1,a3
    90002ca4:	0017c793          	xori	a5,a5,1
    90002ca8:	00f2f7b3          	and	a5,t0,a5
    90002cac:	f842                	sd	a6,48(sp)
    90002cae:	ef8d                	bnez	a5,90002ce8 <.LBB228_53+0xe>
    90002cb0:	00089363          	bnez	a7,90002cb6 <.LBB228_50+0x28>
    90002cb4:	8636                	mv	a2,a3
    90002cb6:	e4b2                	sd	a2,72(sp)
    90002cb8:	00a8                	addi	a0,sp,72
    90002cba:	e52a                	sd	a0,136(sp)

0000000090002cbc <.LBB228_51>:
    90002cbc:	00001517          	auipc	a0,0x1
    90002cc0:	9ae50513          	addi	a0,a0,-1618 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002cc4:	e92a                	sd	a0,144(sp)
    90002cc6:	0828                	addi	a0,sp,24
    90002cc8:	ed2a                	sd	a0,152(sp)

0000000090002cca <.LBB228_52>:
    90002cca:	00001517          	auipc	a0,0x1
    90002cce:	dda50513          	addi	a0,a0,-550 # 90003aa4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    90002cd2:	f12a                	sd	a0,160(sp)
    90002cd4:	102c                	addi	a1,sp,40
    90002cd6:	f52e                	sd	a1,168(sp)
    90002cd8:	f92a                	sd	a0,176(sp)

0000000090002cda <.LBB228_53>:
    90002cda:	00006517          	auipc	a0,0x6
    90002cde:	18e50513          	addi	a0,a0,398 # 90008e68 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.313>
    90002ce2:	ecaa                	sd	a0,88(sp)
    90002ce4:	450d                	li	a0,3
    90002ce6:	aadd                	j	90002edc <.LBB228_62+0xc>
    90002ce8:	02c6fd63          	bgeu	a3,a2,90002d22 <.LBB228_56+0xe>
    90002cec:	0028                	addi	a0,sp,8
    90002cee:	e52a                	sd	a0,136(sp)

0000000090002cf0 <.LBB228_54>:
    90002cf0:	00001517          	auipc	a0,0x1
    90002cf4:	97a50513          	addi	a0,a0,-1670 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002cf8:	e92a                	sd	a0,144(sp)
    90002cfa:	080c                	addi	a1,sp,16
    90002cfc:	ed2e                	sd	a1,152(sp)
    90002cfe:	f12a                	sd	a0,160(sp)
    90002d00:	0828                	addi	a0,sp,24
    90002d02:	f52a                	sd	a0,168(sp)

0000000090002d04 <.LBB228_55>:
    90002d04:	00001517          	auipc	a0,0x1
    90002d08:	da050513          	addi	a0,a0,-608 # 90003aa4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    90002d0c:	f92a                	sd	a0,176(sp)
    90002d0e:	102c                	addi	a1,sp,40
    90002d10:	fd2e                	sd	a1,184(sp)
    90002d12:	e1aa                	sd	a0,192(sp)

0000000090002d14 <.LBB228_56>:
    90002d14:	00006517          	auipc	a0,0x6
    90002d18:	19450513          	addi	a0,a0,404 # 90008ea8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.317>
    90002d1c:	ecaa                	sd	a0,88(sp)
    90002d1e:	4511                	li	a0,4
    90002d20:	aa75                	j	90002edc <.LBB228_62+0xc>
    90002d22:	00163813          	seqz	a6,a2
    90002d26:	00c5c7b3          	xor	a5,a1,a2
    90002d2a:	0017b793          	seqz	a5,a5
    90002d2e:	00f867b3          	or	a5,a6,a5
    90002d32:	c399                	beqz	a5,90002d38 <.LBB228_56+0x24>
    90002d34:	8636                	mv	a2,a3
    90002d36:	a819                	j	90002d4c <.LBB228_56+0x38>
    90002d38:	00b67a63          	bgeu	a2,a1,90002d4c <.LBB228_56+0x38>
    90002d3c:	00c507b3          	add	a5,a0,a2
    90002d40:	00078803          	lb	a6,0(a5)
    90002d44:	fc000793          	li	a5,-64
    90002d48:	fef856e3          	bge	a6,a5,90002d34 <.LBB228_56+0x20>
    90002d4c:	00163693          	seqz	a3,a2
    90002d50:	00b647b3          	xor	a5,a2,a1
    90002d54:	0017b793          	seqz	a5,a5
    90002d58:	8edd                	or	a3,a3,a5
    90002d5a:	fc32                	sd	a2,56(sp)
    90002d5c:	ca81                	beqz	a3,90002d6c <.LBB228_56+0x58>
    90002d5e:	87b2                	mv	a5,a2
    90002d60:	04410313          	addi	t1,sp,68
    90002d64:	863e                	mv	a2,a5
    90002d66:	02b60f63          	beq	a2,a1,90002da4 <.LBB228_57>
    90002d6a:	a8a9                	j	90002dc4 <.LBB228_57+0x20>
    90002d6c:	00158893          	addi	a7,a1,1
    90002d70:	fc000813          	li	a6,-64
    90002d74:	00b67863          	bgeu	a2,a1,90002d84 <.LBB228_56+0x70>
    90002d78:	00c507b3          	add	a5,a0,a2
    90002d7c:	00078783          	lb	a5,0(a5)
    90002d80:	0307de63          	bge	a5,a6,90002dbc <.LBB228_57+0x18>
    90002d84:	fff60793          	addi	a5,a2,-1
    90002d88:	0017b693          	seqz	a3,a5
    90002d8c:	00c8c633          	xor	a2,a7,a2
    90002d90:	00163613          	seqz	a2,a2
    90002d94:	8ed1                	or	a3,a3,a2
    90002d96:	863e                	mv	a2,a5
    90002d98:	def1                	beqz	a3,90002d74 <.LBB228_56+0x60>
    90002d9a:	04410313          	addi	t1,sp,68
    90002d9e:	863e                	mv	a2,a5
    90002da0:	02b61263          	bne	a2,a1,90002dc4 <.LBB228_57+0x20>

0000000090002da4 <.LBB228_57>:
    90002da4:	00006517          	auipc	a0,0x6
    90002da8:	bbd50513          	addi	a0,a0,-1091 # 90008961 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.175>
    90002dac:	02b00593          	li	a1,43
    90002db0:	863a                	mv	a2,a4
    90002db2:	fffff097          	auipc	ra,0xfffff
    90002db6:	956080e7          	jalr	-1706(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    90002dba:	0000                	unimp
    90002dbc:	04410313          	addi	t1,sp,68
    90002dc0:	feb602e3          	beq	a2,a1,90002da4 <.LBB228_57>
    90002dc4:	00c506b3          	add	a3,a0,a2
    90002dc8:	00068783          	lb	a5,0(a3)
    90002dcc:	0ff7f393          	andi	t2,a5,255
    90002dd0:	0007c663          	bltz	a5,90002ddc <.LBB228_57+0x38>
    90002dd4:	c29e                	sw	t2,68(sp)
    90002dd6:	00a8                	addi	a0,sp,72
    90002dd8:	4785                	li	a5,1
    90002dda:	a855                	j	90002e8e <.LBB228_57+0xea>
    90002ddc:	952e                	add	a0,a0,a1
    90002dde:	00168593          	addi	a1,a3,1
    90002de2:	00a59f63          	bne	a1,a0,90002e00 <.LBB228_57+0x5c>
    90002de6:	4881                	li	a7,0
    90002de8:	85aa                	mv	a1,a0
    90002dea:	0e000693          	li	a3,224
    90002dee:	01f3f813          	andi	a6,t2,31
    90002df2:	02d3f363          	bgeu	t2,a3,90002e18 <.LBB228_57+0x74>
    90002df6:	00681513          	slli	a0,a6,0x6
    90002dfa:	011565b3          	or	a1,a0,a7
    90002dfe:	a0bd                	j	90002e6c <.LBB228_57+0xc8>
    90002e00:	0016c783          	lbu	a5,1(a3)
    90002e04:	00268593          	addi	a1,a3,2
    90002e08:	03f7f893          	andi	a7,a5,63
    90002e0c:	0e000693          	li	a3,224
    90002e10:	01f3f813          	andi	a6,t2,31
    90002e14:	fed3e1e3          	bltu	t2,a3,90002df6 <.LBB228_57+0x52>
    90002e18:	00a59563          	bne	a1,a0,90002e22 <.LBB228_57+0x7e>
    90002e1c:	4581                	li	a1,0
    90002e1e:	82aa                	mv	t0,a0
    90002e20:	a039                	j	90002e2e <.LBB228_57+0x8a>
    90002e22:	0005c683          	lbu	a3,0(a1)
    90002e26:	00158293          	addi	t0,a1,1
    90002e2a:	03f6f593          	andi	a1,a3,63
    90002e2e:	00689693          	slli	a3,a7,0x6
    90002e32:	0f000793          	li	a5,240
    90002e36:	8dd5                	or	a1,a1,a3
    90002e38:	00f3e663          	bltu	t2,a5,90002e44 <.LBB228_57+0xa0>
    90002e3c:	00a29863          	bne	t0,a0,90002e4c <.LBB228_57+0xa8>
    90002e40:	4501                	li	a0,0
    90002e42:	a809                	j	90002e54 <.LBB228_57+0xb0>
    90002e44:	00c81513          	slli	a0,a6,0xc
    90002e48:	8dc9                	or	a1,a1,a0
    90002e4a:	a00d                	j	90002e6c <.LBB228_57+0xc8>
    90002e4c:	0002c503          	lbu	a0,0(t0) # 110000 <.Lline_table_start0+0xf3156>
    90002e50:	03f57513          	andi	a0,a0,63
    90002e54:	01281693          	slli	a3,a6,0x12
    90002e58:	001c07b7          	lui	a5,0x1c0
    90002e5c:	8efd                	and	a3,a3,a5
    90002e5e:	059a                	slli	a1,a1,0x6
    90002e60:	8dd5                	or	a1,a1,a3
    90002e62:	8dc9                	or	a1,a1,a0
    90002e64:	00110537          	lui	a0,0x110
    90002e68:	f2a58ee3          	beq	a1,a0,90002da4 <.LBB228_57>
    90002e6c:	c2ae                	sw	a1,68(sp)
    90002e6e:	00a8                	addi	a0,sp,72
    90002e70:	08000693          	li	a3,128
    90002e74:	4785                	li	a5,1
    90002e76:	00d5ec63          	bltu	a1,a3,90002e8e <.LBB228_57+0xea>
    90002e7a:	00b5d693          	srli	a3,a1,0xb
    90002e7e:	4789                	li	a5,2
    90002e80:	c699                	beqz	a3,90002e8e <.LBB228_57+0xea>
    90002e82:	81c1                	srli	a1,a1,0x10
    90002e84:	0015b593          	seqz	a1,a1
    90002e88:	4691                	li	a3,4
    90002e8a:	40b687b3          	sub	a5,a3,a1
    90002e8e:	00c785b3          	add	a1,a5,a2
    90002e92:	e4b2                	sd	a2,72(sp)
    90002e94:	e8ae                	sd	a1,80(sp)
    90002e96:	182c                	addi	a1,sp,56
    90002e98:	e52e                	sd	a1,136(sp)

0000000090002e9a <.LBB228_58>:
    90002e9a:	00000597          	auipc	a1,0x0
    90002e9e:	7d058593          	addi	a1,a1,2000 # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002ea2:	e92e                	sd	a1,144(sp)
    90002ea4:	ed1a                	sd	t1,152(sp)

0000000090002ea6 <.LBB228_59>:
    90002ea6:	fffff597          	auipc	a1,0xfffff
    90002eaa:	6ae58593          	addi	a1,a1,1710 # 90002554 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E>
    90002eae:	f12e                	sd	a1,160(sp)
    90002eb0:	f52a                	sd	a0,168(sp)

0000000090002eb2 <.LBB228_60>:
    90002eb2:	ffffe517          	auipc	a0,0xffffe
    90002eb6:	75250513          	addi	a0,a0,1874 # 90001604 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c19ef341f8f601cE>
    90002eba:	f92a                	sd	a0,176(sp)
    90002ebc:	0828                	addi	a0,sp,24
    90002ebe:	fd2a                	sd	a0,184(sp)

0000000090002ec0 <.LBB228_61>:
    90002ec0:	00001517          	auipc	a0,0x1
    90002ec4:	be450513          	addi	a0,a0,-1052 # 90003aa4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    90002ec8:	e1aa                	sd	a0,192(sp)
    90002eca:	102c                	addi	a1,sp,40
    90002ecc:	e5ae                	sd	a1,200(sp)
    90002ece:	e9aa                	sd	a0,208(sp)

0000000090002ed0 <.LBB228_62>:
    90002ed0:	00006517          	auipc	a0,0x6
    90002ed4:	04850513          	addi	a0,a0,72 # 90008f18 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.321>
    90002ed8:	ecaa                	sd	a0,88(sp)
    90002eda:	4515                	li	a0,5
    90002edc:	f0aa                	sd	a0,96(sp)
    90002ede:	f482                	sd	zero,104(sp)
    90002ee0:	012c                	addi	a1,sp,136
    90002ee2:	fcae                	sd	a1,120(sp)
    90002ee4:	e12a                	sd	a0,128(sp)
    90002ee6:	08a8                	addi	a0,sp,88
    90002ee8:	85ba                	mv	a1,a4
    90002eea:	fffff097          	auipc	ra,0xfffff
    90002eee:	88a080e7          	jalr	-1910(ra) # 90001774 <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090002ef4 <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>:
    90002ef4:	1141                	addi	sp,sp,-16
    90002ef6:	e406                	sd	ra,8(sp)
    90002ef8:	0105559b          	srliw	a1,a0,0x10
    90002efc:	e1f1                	bnez	a1,90002fc0 <.LBB244_43+0x4c>
    90002efe:	4581                	li	a1,0
    90002f00:	6641                	lui	a2,0x10
    90002f02:	f006061b          	addiw	a2,a2,-256
    90002f06:	8e69                	and	a2,a2,a0
    90002f08:	00865313          	srli	t1,a2,0x8

0000000090002f0c <.LBB244_41>:
    90002f0c:	00006717          	auipc	a4,0x6
    90002f10:	0b470713          	addi	a4,a4,180 # 90008fc0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.344>
    90002f14:	12300813          	li	a6,291

0000000090002f18 <.LBB244_42>:
    90002f18:	00006897          	auipc	a7,0x6
    90002f1c:	0fa88893          	addi	a7,a7,250 # 90009012 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.345>
    90002f20:	05270293          	addi	t0,a4,82
    90002f24:	0ff57793          	andi	a5,a0,255
    90002f28:	a811                	j	90002f3c <.LBB244_42+0x24>
    90002f2a:	00d335b3          	sltu	a1,t1,a3
    90002f2e:	00574633          	xor	a2,a4,t0
    90002f32:	00163613          	seqz	a2,a2
    90002f36:	8e4d                	or	a2,a2,a1
    90002f38:	859e                	mv	a1,t2
    90002f3a:	ea15                	bnez	a2,90002f6e <.LBB244_42+0x56>
    90002f3c:	00074683          	lbu	a3,0(a4)
    90002f40:	00174603          	lbu	a2,1(a4)
    90002f44:	0709                	addi	a4,a4,2
    90002f46:	00c583b3          	add	t2,a1,a2
    90002f4a:	fe6690e3          	bne	a3,t1,90002f2a <.LBB244_42+0x12>
    90002f4e:	1eb3e063          	bltu	t2,a1,9000312e <.LBB244_47>
    90002f52:	1f03f963          	bgeu	t2,a6,90003144 <.LBB244_48>
    90002f56:	95c6                	add	a1,a1,a7
    90002f58:	ca01                	beqz	a2,90002f68 <.LBB244_42+0x50>
    90002f5a:	0005c683          	lbu	a3,0(a1)
    90002f5e:	0585                	addi	a1,a1,1
    90002f60:	167d                	addi	a2,a2,-1
    90002f62:	fef69be3          	bne	a3,a5,90002f58 <.LBB244_42+0x40>
    90002f66:	a26d                	j	90003110 <.LBB244_46+0xd4>
    90002f68:	859e                	mv	a1,t2
    90002f6a:	fc5719e3          	bne	a4,t0,90002f3c <.LBB244_42+0x24>
    90002f6e:	65c1                	lui	a1,0x10
    90002f70:	35fd                	addiw	a1,a1,-1
    90002f72:	8de9                	and	a1,a1,a0

0000000090002f74 <.LBB244_43>:
    90002f74:	00006717          	auipc	a4,0x6
    90002f78:	1c070713          	addi	a4,a4,448 # 90009134 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.346>
    90002f7c:	4505                	li	a0,1
    90002f7e:	587d                	li	a6,-1
    90002f80:	13570693          	addi	a3,a4,309
    90002f84:	00070783          	lb	a5,0(a4)
    90002f88:	00170613          	addi	a2,a4,1
    90002f8c:	00f85963          	bge	a6,a5,90002f9e <.LBB244_43+0x2a>
    90002f90:	0ff7f793          	andi	a5,a5,255
    90002f94:	8732                	mv	a4,a2
    90002f96:	9d9d                	subw	a1,a1,a5
    90002f98:	0005df63          	bgez	a1,90002fb6 <.LBB244_43+0x42>
    90002f9c:	aa9d                	j	90003112 <.LBB244_46+0xd6>
    90002f9e:	1cd60663          	beq	a2,a3,9000316a <.LBB244_50>
    90002fa2:	00174603          	lbu	a2,1(a4)
    90002fa6:	07f7f793          	andi	a5,a5,127
    90002faa:	07a2                	slli	a5,a5,0x8
    90002fac:	0709                	addi	a4,a4,2
    90002fae:	8fd1                	or	a5,a5,a2
    90002fb0:	9d9d                	subw	a1,a1,a5
    90002fb2:	1605c063          	bltz	a1,90003112 <.LBB244_46+0xd6>
    90002fb6:	00154513          	xori	a0,a0,1
    90002fba:	fcd715e3          	bne	a4,a3,90002f84 <.LBB244_43+0x10>
    90002fbe:	aa91                	j	90003112 <.LBB244_46+0xd6>
    90002fc0:	0115559b          	srliw	a1,a0,0x11
    90002fc4:	e1f1                	bnez	a1,90003088 <.LBB244_46+0x4c>
    90002fc6:	4581                	li	a1,0
    90002fc8:	6641                	lui	a2,0x10
    90002fca:	f006061b          	addiw	a2,a2,-256
    90002fce:	8e69                	and	a2,a2,a0
    90002fd0:	00865313          	srli	t1,a2,0x8

0000000090002fd4 <.LBB244_44>:
    90002fd4:	00006717          	auipc	a4,0x6
    90002fd8:	29570713          	addi	a4,a4,661 # 90009269 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.347>
    90002fdc:	0b000813          	li	a6,176

0000000090002fe0 <.LBB244_45>:
    90002fe0:	00006897          	auipc	a7,0x6
    90002fe4:	2d588893          	addi	a7,a7,725 # 900092b5 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.348>
    90002fe8:	04c70293          	addi	t0,a4,76
    90002fec:	0ff57793          	andi	a5,a0,255
    90002ff0:	a811                	j	90003004 <.LBB244_45+0x24>
    90002ff2:	00d335b3          	sltu	a1,t1,a3
    90002ff6:	00574633          	xor	a2,a4,t0
    90002ffa:	00163613          	seqz	a2,a2
    90002ffe:	8e4d                	or	a2,a2,a1
    90003000:	859e                	mv	a1,t2
    90003002:	ea15                	bnez	a2,90003036 <.LBB244_45+0x56>
    90003004:	00074683          	lbu	a3,0(a4)
    90003008:	00174603          	lbu	a2,1(a4)
    9000300c:	0709                	addi	a4,a4,2
    9000300e:	00c583b3          	add	t2,a1,a2
    90003012:	fe6690e3          	bne	a3,t1,90002ff2 <.LBB244_45+0x12>
    90003016:	10b3ec63          	bltu	t2,a1,9000312e <.LBB244_47>
    9000301a:	1303fc63          	bgeu	t2,a6,90003152 <.LBB244_49>
    9000301e:	95c6                	add	a1,a1,a7
    90003020:	ca01                	beqz	a2,90003030 <.LBB244_45+0x50>
    90003022:	0005c683          	lbu	a3,0(a1) # 10000 <n+0xffe0>
    90003026:	0585                	addi	a1,a1,1
    90003028:	167d                	addi	a2,a2,-1
    9000302a:	fef69be3          	bne	a3,a5,90003020 <.LBB244_45+0x40>
    9000302e:	a0cd                	j	90003110 <.LBB244_46+0xd4>
    90003030:	859e                	mv	a1,t2
    90003032:	fc5719e3          	bne	a4,t0,90003004 <.LBB244_45+0x24>
    90003036:	65c1                	lui	a1,0x10
    90003038:	35fd                	addiw	a1,a1,-1
    9000303a:	8de9                	and	a1,a1,a0

000000009000303c <.LBB244_46>:
    9000303c:	00006717          	auipc	a4,0x6
    90003040:	32870713          	addi	a4,a4,808 # 90009364 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.349>
    90003044:	4505                	li	a0,1
    90003046:	587d                	li	a6,-1
    90003048:	1a370693          	addi	a3,a4,419
    9000304c:	00070783          	lb	a5,0(a4)
    90003050:	00170613          	addi	a2,a4,1
    90003054:	00f85963          	bge	a6,a5,90003066 <.LBB244_46+0x2a>
    90003058:	0ff7f793          	andi	a5,a5,255
    9000305c:	8732                	mv	a4,a2
    9000305e:	9d9d                	subw	a1,a1,a5
    90003060:	0005df63          	bgez	a1,9000307e <.LBB244_46+0x42>
    90003064:	a07d                	j	90003112 <.LBB244_46+0xd6>
    90003066:	10d60263          	beq	a2,a3,9000316a <.LBB244_50>
    9000306a:	00174603          	lbu	a2,1(a4)
    9000306e:	07f7f793          	andi	a5,a5,127
    90003072:	07a2                	slli	a5,a5,0x8
    90003074:	0709                	addi	a4,a4,2
    90003076:	8fd1                	or	a5,a5,a2
    90003078:	9d9d                	subw	a1,a1,a5
    9000307a:	0805cc63          	bltz	a1,90003112 <.LBB244_46+0xd6>
    9000307e:	00154513          	xori	a0,a0,1
    90003082:	fcd715e3          	bne	a4,a3,9000304c <.LBB244_46+0x10>
    90003086:	a071                	j	90003112 <.LBB244_46+0xd6>
    90003088:	fffd65b7          	lui	a1,0xfffd6
    9000308c:	9225859b          	addiw	a1,a1,-1758
    90003090:	9da9                	addw	a1,a1,a0
    90003092:	0225b593          	sltiu	a1,a1,34
    90003096:	fffd5637          	lui	a2,0xfffd5
    9000309a:	8cb6061b          	addiw	a2,a2,-1845
    9000309e:	9e29                	addw	a2,a2,a0
    900030a0:	00b63613          	sltiu	a2,a2,11
    900030a4:	8dd1                	or	a1,a1,a2
    900030a6:	00200637          	lui	a2,0x200
    900030aa:	3679                	addiw	a2,a2,-2
    900030ac:	8e69                	and	a2,a2,a0
    900030ae:	0002c6b7          	lui	a3,0x2c
    900030b2:	81e6869b          	addiw	a3,a3,-2018
    900030b6:	8e35                	xor	a2,a2,a3
    900030b8:	00163613          	seqz	a2,a2
    900030bc:	8dd1                	or	a1,a1,a2
    900030be:	fffd3637          	lui	a2,0xfffd3
    900030c2:	15e6061b          	addiw	a2,a2,350
    900030c6:	9e29                	addw	a2,a2,a0
    900030c8:	00e63613          	sltiu	a2,a2,14
    900030cc:	8dd1                	or	a1,a1,a2
    900030ce:	fffd1637          	lui	a2,0xfffd1
    900030d2:	41f6061b          	addiw	a2,a2,1055
    900030d6:	9e29                	addw	a2,a2,a0
    900030d8:	6685                	lui	a3,0x1
    900030da:	c1f6869b          	addiw	a3,a3,-993
    900030de:	00d63633          	sltu	a2,a2,a3
    900030e2:	8dd1                	or	a1,a1,a2
    900030e4:	fffd0637          	lui	a2,0xfffd0
    900030e8:	5e26061b          	addiw	a2,a2,1506
    900030ec:	9e29                	addw	a2,a2,a0
    900030ee:	5e263613          	sltiu	a2,a2,1506
    900030f2:	8dd1                	or	a1,a1,a2
    900030f4:	fffcf637          	lui	a2,0xfffcf
    900030f8:	cb56061b          	addiw	a2,a2,-843
    900030fc:	9e29                	addw	a2,a2,a0
    900030fe:	000af6b7          	lui	a3,0xaf
    90003102:	db56869b          	addiw	a3,a3,-587
    90003106:	00d63633          	sltu	a2,a2,a3
    9000310a:	8dd1                	or	a1,a1,a2
    9000310c:	8985                	andi	a1,a1,1
    9000310e:	c591                	beqz	a1,9000311a <.LBB244_46+0xde>
    90003110:	4501                	li	a0,0
    90003112:	8905                	andi	a0,a0,1
    90003114:	60a2                	ld	ra,8(sp)
    90003116:	0141                	addi	sp,sp,16
    90003118:	8082                	ret
    9000311a:	2501                	sext.w	a0,a0
    9000311c:	000e05b7          	lui	a1,0xe0
    90003120:	1f05859b          	addiw	a1,a1,496
    90003124:	00b53533          	sltu	a0,a0,a1
    90003128:	60a2                	ld	ra,8(sp)
    9000312a:	0141                	addi	sp,sp,16
    9000312c:	8082                	ret

000000009000312e <.LBB244_47>:
    9000312e:	00006617          	auipc	a2,0x6
    90003132:	e6260613          	addi	a2,a2,-414 # 90008f90 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    90003136:	852e                	mv	a0,a1
    90003138:	859e                	mv	a1,t2
    9000313a:	00000097          	auipc	ra,0x0
    9000313e:	816080e7          	jalr	-2026(ra) # 90002950 <_ZN4core5slice5index22slice_index_order_fail17h17f07731262cfc7fE>
	...

0000000090003144 <.LBB244_48>:
    90003144:	00006617          	auipc	a2,0x6
    90003148:	e4c60613          	addi	a2,a2,-436 # 90008f90 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    9000314c:	12200593          	li	a1,290
    90003150:	a039                	j	9000315e <.LBB244_49+0xc>

0000000090003152 <.LBB244_49>:
    90003152:	00006617          	auipc	a2,0x6
    90003156:	e3e60613          	addi	a2,a2,-450 # 90008f90 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    9000315a:	0af00593          	li	a1,175
    9000315e:	851e                	mv	a0,t2
    90003160:	fffff097          	auipc	ra,0xfffff
    90003164:	7b0080e7          	jalr	1968(ra) # 90002910 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
	...

000000009000316a <.LBB244_50>:
    9000316a:	00005517          	auipc	a0,0x5
    9000316e:	7f750513          	addi	a0,a0,2039 # 90008961 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.175>

0000000090003172 <.LBB244_51>:
    90003172:	00006617          	auipc	a2,0x6
    90003176:	e3660613          	addi	a2,a2,-458 # 90008fa8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.343>
    9000317a:	02b00593          	li	a1,43
    9000317e:	ffffe097          	auipc	ra,0xffffe
    90003182:	58a080e7          	jalr	1418(ra) # 90001708 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090003188 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>:
    90003188:	7175                	addi	sp,sp,-144
    9000318a:	e506                	sd	ra,136(sp)
    9000318c:	6114                	ld	a3,0(a0)
    9000318e:	852e                	mv	a0,a1
    90003190:	4581                	li	a1,0
    90003192:	00810813          	addi	a6,sp,8
    90003196:	4729                	li	a4,10
    90003198:	a039                	j	900031a6 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    9000319a:	05760613          	addi	a2,a2,87
    9000319e:	06c78fa3          	sb	a2,127(a5) # 1c007f <.Lline_table_start0+0x1a31d5>
    900031a2:	15fd                	addi	a1,a1,-1
    900031a4:	ce91                	beqz	a3,900031c0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x38>
    900031a6:	00b807b3          	add	a5,a6,a1
    900031aa:	00f6f613          	andi	a2,a3,15
    900031ae:	8291                	srli	a3,a3,0x4
    900031b0:	fee675e3          	bgeu	a2,a4,9000319a <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x12>
    900031b4:	03066613          	ori	a2,a2,48
    900031b8:	06c78fa3          	sb	a2,127(a5)
    900031bc:	15fd                	addi	a1,a1,-1
    900031be:	f6e5                	bnez	a3,900031a6 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    900031c0:	08058693          	addi	a3,a1,128 # e0080 <.Lline_table_start0+0xc31d6>
    900031c4:	08100613          	li	a2,129
    900031c8:	02c6f463          	bgeu	a3,a2,900031f0 <.LBB456_8>
    900031cc:	40b007b3          	neg	a5,a1
    900031d0:	95c2                	add	a1,a1,a6
    900031d2:	08058713          	addi	a4,a1,128

00000000900031d6 <.LBB456_7>:
    900031d6:	00006617          	auipc	a2,0x6
    900031da:	96260613          	addi	a2,a2,-1694 # 90008b38 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    900031de:	4585                	li	a1,1
    900031e0:	4689                	li	a3,2
    900031e2:	fffff097          	auipc	ra,0xfffff
    900031e6:	dcc080e7          	jalr	-564(ra) # 90001fae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    900031ea:	60aa                	ld	ra,136(sp)
    900031ec:	6149                	addi	sp,sp,144
    900031ee:	8082                	ret

00000000900031f0 <.LBB456_8>:
    900031f0:	00006617          	auipc	a2,0x6
    900031f4:	93060613          	addi	a2,a2,-1744 # 90008b20 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    900031f8:	08000593          	li	a1,128
    900031fc:	8536                	mv	a0,a3
    900031fe:	fffff097          	auipc	ra,0xfffff
    90003202:	6d2080e7          	jalr	1746(ra) # 900028d0 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

0000000090003208 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>:
    90003208:	7175                	addi	sp,sp,-144
    9000320a:	e506                	sd	ra,136(sp)
    9000320c:	882e                	mv	a6,a1
    9000320e:	0305e583          	lwu	a1,48(a1)
    90003212:	0105f613          	andi	a2,a1,16
    90003216:	ea19                	bnez	a2,9000322c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x24>
    90003218:	0205f593          	andi	a1,a1,32
    9000321c:	e1a9                	bnez	a1,9000325e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x56>
    9000321e:	85c2                	mv	a1,a6
    90003220:	60aa                	ld	ra,136(sp)
    90003222:	6149                	addi	sp,sp,144
    90003224:	00000317          	auipc	t1,0x0
    90003228:	44630067          	jr	1094(t1) # 9000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    9000322c:	6108                	ld	a0,0(a0)
    9000322e:	4581                	li	a1,0
    90003230:	0030                	addi	a2,sp,8
    90003232:	46a9                	li	a3,10
    90003234:	a039                	j	90003242 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x3a>
    90003236:	05778793          	addi	a5,a5,87
    9000323a:	06f70fa3          	sb	a5,127(a4)
    9000323e:	15fd                	addi	a1,a1,-1
    90003240:	c539                	beqz	a0,9000328e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    90003242:	00b60733          	add	a4,a2,a1
    90003246:	00f57793          	andi	a5,a0,15
    9000324a:	8111                	srli	a0,a0,0x4
    9000324c:	fed7f5e3          	bgeu	a5,a3,90003236 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x2e>
    90003250:	0307e793          	ori	a5,a5,48
    90003254:	06f70fa3          	sb	a5,127(a4)
    90003258:	15fd                	addi	a1,a1,-1
    9000325a:	f565                	bnez	a0,90003242 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x3a>
    9000325c:	a80d                	j	9000328e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    9000325e:	6108                	ld	a0,0(a0)
    90003260:	4581                	li	a1,0
    90003262:	0030                	addi	a2,sp,8
    90003264:	46a9                	li	a3,10
    90003266:	a039                	j	90003274 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x6c>
    90003268:	03778793          	addi	a5,a5,55
    9000326c:	06f70fa3          	sb	a5,127(a4)
    90003270:	15fd                	addi	a1,a1,-1
    90003272:	cd11                	beqz	a0,9000328e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    90003274:	00b60733          	add	a4,a2,a1
    90003278:	00f57793          	andi	a5,a0,15
    9000327c:	8111                	srli	a0,a0,0x4
    9000327e:	fed7f5e3          	bgeu	a5,a3,90003268 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x60>
    90003282:	0307e793          	ori	a5,a5,48
    90003286:	06f70fa3          	sb	a5,127(a4)
    9000328a:	15fd                	addi	a1,a1,-1
    9000328c:	f565                	bnez	a0,90003274 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x6c>
    9000328e:	08058513          	addi	a0,a1,128
    90003292:	08100693          	li	a3,129
    90003296:	02d57663          	bgeu	a0,a3,900032c2 <.LBB462_15>
    9000329a:	40b007b3          	neg	a5,a1
    9000329e:	00b60533          	add	a0,a2,a1
    900032a2:	08050713          	addi	a4,a0,128

00000000900032a6 <.LBB462_14>:
    900032a6:	00006617          	auipc	a2,0x6
    900032aa:	89260613          	addi	a2,a2,-1902 # 90008b38 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    900032ae:	4585                	li	a1,1
    900032b0:	4689                	li	a3,2
    900032b2:	8542                	mv	a0,a6
    900032b4:	fffff097          	auipc	ra,0xfffff
    900032b8:	cfa080e7          	jalr	-774(ra) # 90001fae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    900032bc:	60aa                	ld	ra,136(sp)
    900032be:	6149                	addi	sp,sp,144
    900032c0:	8082                	ret

00000000900032c2 <.LBB462_15>:
    900032c2:	00006617          	auipc	a2,0x6
    900032c6:	85e60613          	addi	a2,a2,-1954 # 90008b20 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    900032ca:	08000593          	li	a1,128
    900032ce:	fffff097          	auipc	ra,0xfffff
    900032d2:	602080e7          	jalr	1538(ra) # 900028d0 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900032d8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha29d76a3c5b8b223E>:
    900032d8:	715d                	addi	sp,sp,-80
    900032da:	e486                	sd	ra,72(sp)
    900032dc:	e0a2                	sd	s0,64(sp)
    900032de:	fc26                	sd	s1,56(sp)
    900032e0:	f84a                	sd	s2,48(sp)
    900032e2:	f44e                	sd	s3,40(sp)
    900032e4:	00052803          	lw	a6,0(a0)
    900032e8:	852e                	mv	a0,a1
    900032ea:	43f85593          	srai	a1,a6,0x3f
    900032ee:	00b80633          	add	a2,a6,a1
    900032f2:	00b649b3          	xor	s3,a2,a1
    900032f6:	0049d593          	srli	a1,s3,0x4
    900032fa:	02700693          	li	a3,39
    900032fe:	27100613          	li	a2,625

0000000090003302 <.LBB467_10>:
    90003302:	00006897          	auipc	a7,0x6
    90003306:	83888893          	addi	a7,a7,-1992 # 90008b3a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    9000330a:	02c5f663          	bgeu	a1,a2,90003336 <.LBB467_10+0x34>
    9000330e:	06300613          	li	a2,99
    90003312:	55fd                	li	a1,-1
    90003314:	0f366263          	bltu	a2,s3,900033f8 <.LBB467_10+0xf6>
    90003318:	4625                	li	a2,9
    9000331a:	0105a5b3          	slt	a1,a1,a6
    9000331e:	13364f63          	blt	a2,s3,9000345c <.LBB467_10+0x15a>
    90003322:	fff68613          	addi	a2,a3,-1 # aefff <.Lline_table_start0+0x92155>
    90003326:	00110693          	addi	a3,sp,1
    9000332a:	96b2                	add	a3,a3,a2
    9000332c:	03098713          	addi	a4,s3,48
    90003330:	00e68023          	sb	a4,0(a3)
    90003334:	a2a9                	j	9000347e <.LBB467_10+0x17c>
    90003336:	4581                	li	a1,0
    90003338:	001a3637          	lui	a2,0x1a3
    9000333c:	6e36061b          	addiw	a2,a2,1763
    90003340:	063a                	slli	a2,a2,0xe
    90003342:	ac760613          	addi	a2,a2,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    90003346:	063a                	slli	a2,a2,0xe
    90003348:	43360613          	addi	a2,a2,1075
    9000334c:	0636                	slli	a2,a2,0xd
    9000334e:	94b60293          	addi	t0,a2,-1717
    90003352:	6609                	lui	a2,0x2
    90003354:	7106039b          	addiw	t2,a2,1808
    90003358:	6641                	lui	a2,0x10
    9000335a:	ffc60e9b          	addiw	t4,a2,-4
    9000335e:	0051f6b7          	lui	a3,0x51f
    90003362:	b856869b          	addiw	a3,a3,-1147
    90003366:	06b6                	slli	a3,a3,0xd
    90003368:	3d768693          	addi	a3,a3,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    9000336c:	06ba                	slli	a3,a3,0xe
    9000336e:	28f68693          	addi	a3,a3,655
    90003372:	06b2                	slli	a3,a3,0xc
    90003374:	5c368f13          	addi	t5,a3,1475
    90003378:	06400313          	li	t1,100
    9000337c:	ffe60f9b          	addiw	t6,a2,-2
    90003380:	00110e13          	addi	t3,sp,1
    90003384:	05f5e6b7          	lui	a3,0x5f5e
    90003388:	0ff6891b          	addiw	s2,a3,255
    9000338c:	874e                	mv	a4,s3
    9000338e:	0259b7b3          	mulhu	a5,s3,t0
    90003392:	00b7d993          	srli	s3,a5,0xb
    90003396:	02798633          	mul	a2,s3,t2
    9000339a:	40c70633          	sub	a2,a4,a2
    9000339e:	01d67433          	and	s0,a2,t4
    900033a2:	8009                	srli	s0,s0,0x2
    900033a4:	03e43433          	mulhu	s0,s0,t5
    900033a8:	8009                	srli	s0,s0,0x2
    900033aa:	00141493          	slli	s1,s0,0x1
    900033ae:	02640433          	mul	s0,s0,t1
    900033b2:	8e01                	sub	a2,a2,s0
    900033b4:	0606                	slli	a2,a2,0x1
    900033b6:	01f67633          	and	a2,a2,t6
    900033ba:	01148433          	add	s0,s1,a7
    900033be:	00be04b3          	add	s1,t3,a1
    900033c2:	00044683          	lbu	a3,0(s0)
    900033c6:	00140403          	lb	s0,1(s0)
    900033ca:	9646                	add	a2,a2,a7
    900033cc:	00160783          	lb	a5,1(a2) # 10001 <n+0xffe1>
    900033d0:	00064603          	lbu	a2,0(a2)
    900033d4:	02848223          	sb	s0,36(s1)
    900033d8:	02d481a3          	sb	a3,35(s1)
    900033dc:	02f48323          	sb	a5,38(s1)
    900033e0:	02c482a3          	sb	a2,37(s1)
    900033e4:	15f1                	addi	a1,a1,-4
    900033e6:	fae963e3          	bltu	s2,a4,9000338c <.LBB467_10+0x8a>
    900033ea:	02758693          	addi	a3,a1,39
    900033ee:	06300613          	li	a2,99
    900033f2:	55fd                	li	a1,-1
    900033f4:	f33672e3          	bgeu	a2,s3,90003318 <.LBB467_10+0x16>
    900033f8:	6641                	lui	a2,0x10
    900033fa:	ffc6071b          	addiw	a4,a2,-4
    900033fe:	00e9f733          	and	a4,s3,a4
    90003402:	8309                	srli	a4,a4,0x2
    90003404:	0051f7b7          	lui	a5,0x51f
    90003408:	b857879b          	addiw	a5,a5,-1147
    9000340c:	07b6                	slli	a5,a5,0xd
    9000340e:	3d778793          	addi	a5,a5,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90003412:	07ba                	slli	a5,a5,0xe
    90003414:	28f78793          	addi	a5,a5,655
    90003418:	07b2                	slli	a5,a5,0xc
    9000341a:	5c378793          	addi	a5,a5,1475
    9000341e:	02f73733          	mulhu	a4,a4,a5
    90003422:	8309                	srli	a4,a4,0x2
    90003424:	06400793          	li	a5,100
    90003428:	02f707b3          	mul	a5,a4,a5
    9000342c:	40f987b3          	sub	a5,s3,a5
    90003430:	0786                	slli	a5,a5,0x1
    90003432:	3679                	addiw	a2,a2,-2
    90003434:	8e7d                	and	a2,a2,a5
    90003436:	16f9                	addi	a3,a3,-2
    90003438:	9646                	add	a2,a2,a7
    9000343a:	00160783          	lb	a5,1(a2) # 10001 <n+0xffe1>
    9000343e:	00064603          	lbu	a2,0(a2)
    90003442:	00110493          	addi	s1,sp,1
    90003446:	94b6                	add	s1,s1,a3
    90003448:	00f480a3          	sb	a5,1(s1)
    9000344c:	00c48023          	sb	a2,0(s1)
    90003450:	89ba                	mv	s3,a4
    90003452:	4625                	li	a2,9
    90003454:	0105a5b3          	slt	a1,a1,a6
    90003458:	ed3655e3          	bge	a2,s3,90003322 <.LBB467_10+0x20>
    9000345c:	00199713          	slli	a4,s3,0x1
    90003460:	ffe68613          	addi	a2,a3,-2 # 5f5dffe <.Lline_table_start0+0x5f41154>
    90003464:	011706b3          	add	a3,a4,a7
    90003468:	00168703          	lb	a4,1(a3)
    9000346c:	0006c683          	lbu	a3,0(a3)
    90003470:	00110793          	addi	a5,sp,1
    90003474:	97b2                	add	a5,a5,a2
    90003476:	00e780a3          	sb	a4,1(a5)
    9000347a:	00d78023          	sb	a3,0(a5)
    9000347e:	00110693          	addi	a3,sp,1
    90003482:	00c68733          	add	a4,a3,a2
    90003486:	02700693          	li	a3,39
    9000348a:	40c687b3          	sub	a5,a3,a2

000000009000348e <.LBB467_11>:
    9000348e:	00005617          	auipc	a2,0x5
    90003492:	49260613          	addi	a2,a2,1170 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90003496:	4681                	li	a3,0
    90003498:	fffff097          	auipc	ra,0xfffff
    9000349c:	b16080e7          	jalr	-1258(ra) # 90001fae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    900034a0:	79a2                	ld	s3,40(sp)
    900034a2:	7942                	ld	s2,48(sp)
    900034a4:	74e2                	ld	s1,56(sp)
    900034a6:	6406                	ld	s0,64(sp)
    900034a8:	60a6                	ld	ra,72(sp)
    900034aa:	6161                	addi	sp,sp,80
    900034ac:	8082                	ret

00000000900034ae <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>:
    900034ae:	715d                	addi	sp,sp,-80
    900034b0:	e486                	sd	ra,72(sp)
    900034b2:	e0a2                	sd	s0,64(sp)
    900034b4:	fc26                	sd	s1,56(sp)
    900034b6:	f84a                	sd	s2,48(sp)
    900034b8:	00056903          	lwu	s2,0(a0)
    900034bc:	852e                	mv	a0,a1
    900034be:	00495593          	srli	a1,s2,0x4
    900034c2:	02700693          	li	a3,39
    900034c6:	27100713          	li	a4,625

00000000900034ca <.LBB468_10>:
    900034ca:	00005817          	auipc	a6,0x5
    900034ce:	67080813          	addi	a6,a6,1648 # 90008b3a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    900034d2:	02e5f363          	bgeu	a1,a4,900034f8 <.LBB468_10+0x2e>
    900034d6:	06300593          	li	a1,99
    900034da:	0f25e063          	bltu	a1,s2,900035ba <.LBB468_10+0xf0>
    900034de:	45a5                	li	a1,9
    900034e0:	1325cd63          	blt	a1,s2,9000361a <.LBB468_10+0x150>
    900034e4:	fff68593          	addi	a1,a3,-1
    900034e8:	00910613          	addi	a2,sp,9
    900034ec:	962e                	add	a2,a2,a1
    900034ee:	03090693          	addi	a3,s2,48
    900034f2:	00d60023          	sb	a3,0(a2)
    900034f6:	a291                	j	9000363a <.LBB468_10+0x170>
    900034f8:	4681                	li	a3,0
    900034fa:	001a35b7          	lui	a1,0x1a3
    900034fe:	6e35859b          	addiw	a1,a1,1763
    90003502:	05ba                	slli	a1,a1,0xe
    90003504:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    90003508:	05ba                	slli	a1,a1,0xe
    9000350a:	43358593          	addi	a1,a1,1075
    9000350e:	05b6                	slli	a1,a1,0xd
    90003510:	94b58893          	addi	a7,a1,-1717
    90003514:	6589                	lui	a1,0x2
    90003516:	7105831b          	addiw	t1,a1,1808
    9000351a:	65c1                	lui	a1,0x10
    9000351c:	ffc58e1b          	addiw	t3,a1,-4
    90003520:	0051f737          	lui	a4,0x51f
    90003524:	b857071b          	addiw	a4,a4,-1147
    90003528:	0736                	slli	a4,a4,0xd
    9000352a:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    9000352e:	073a                	slli	a4,a4,0xe
    90003530:	28f70713          	addi	a4,a4,655
    90003534:	0732                	slli	a4,a4,0xc
    90003536:	5c370e93          	addi	t4,a4,1475
    9000353a:	06400293          	li	t0,100
    9000353e:	ffe58f1b          	addiw	t5,a1,-2
    90003542:	00910393          	addi	t2,sp,9
    90003546:	05f5e5b7          	lui	a1,0x5f5e
    9000354a:	0ff58f9b          	addiw	t6,a1,255
    9000354e:	864a                	mv	a2,s2
    90003550:	031937b3          	mulhu	a5,s2,a7
    90003554:	00b7d913          	srli	s2,a5,0xb
    90003558:	02690733          	mul	a4,s2,t1
    9000355c:	40e60733          	sub	a4,a2,a4
    90003560:	01c775b3          	and	a1,a4,t3
    90003564:	8189                	srli	a1,a1,0x2
    90003566:	03d5b5b3          	mulhu	a1,a1,t4
    9000356a:	8189                	srli	a1,a1,0x2
    9000356c:	00159413          	slli	s0,a1,0x1
    90003570:	025585b3          	mul	a1,a1,t0
    90003574:	40b705b3          	sub	a1,a4,a1
    90003578:	0586                	slli	a1,a1,0x1
    9000357a:	01e5f5b3          	and	a1,a1,t5
    9000357e:	01040733          	add	a4,s0,a6
    90003582:	00d38433          	add	s0,t2,a3
    90003586:	00074483          	lbu	s1,0(a4)
    9000358a:	00170703          	lb	a4,1(a4)
    9000358e:	95c2                	add	a1,a1,a6
    90003590:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f41157>
    90003594:	0005c583          	lbu	a1,0(a1)
    90003598:	02e40223          	sb	a4,36(s0)
    9000359c:	029401a3          	sb	s1,35(s0)
    900035a0:	02f40323          	sb	a5,38(s0)
    900035a4:	02b402a3          	sb	a1,37(s0)
    900035a8:	16f1                	addi	a3,a3,-4
    900035aa:	facfe2e3          	bltu	t6,a2,9000354e <.LBB468_10+0x84>
    900035ae:	02768693          	addi	a3,a3,39
    900035b2:	06300593          	li	a1,99
    900035b6:	f325f4e3          	bgeu	a1,s2,900034de <.LBB468_10+0x14>
    900035ba:	65c1                	lui	a1,0x10
    900035bc:	ffc5861b          	addiw	a2,a1,-4
    900035c0:	00c97633          	and	a2,s2,a2
    900035c4:	8209                	srli	a2,a2,0x2
    900035c6:	0051f737          	lui	a4,0x51f
    900035ca:	b857071b          	addiw	a4,a4,-1147
    900035ce:	0736                	slli	a4,a4,0xd
    900035d0:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    900035d4:	073a                	slli	a4,a4,0xe
    900035d6:	28f70713          	addi	a4,a4,655
    900035da:	0732                	slli	a4,a4,0xc
    900035dc:	5c370713          	addi	a4,a4,1475
    900035e0:	02e63633          	mulhu	a2,a2,a4
    900035e4:	8209                	srli	a2,a2,0x2
    900035e6:	06400713          	li	a4,100
    900035ea:	02e60733          	mul	a4,a2,a4
    900035ee:	40e90733          	sub	a4,s2,a4
    900035f2:	0706                	slli	a4,a4,0x1
    900035f4:	35f9                	addiw	a1,a1,-2
    900035f6:	8df9                	and	a1,a1,a4
    900035f8:	16f9                	addi	a3,a3,-2
    900035fa:	95c2                	add	a1,a1,a6
    900035fc:	00158703          	lb	a4,1(a1) # 10001 <n+0xffe1>
    90003600:	0005c583          	lbu	a1,0(a1)
    90003604:	00910793          	addi	a5,sp,9
    90003608:	97b6                	add	a5,a5,a3
    9000360a:	00e780a3          	sb	a4,1(a5)
    9000360e:	00b78023          	sb	a1,0(a5)
    90003612:	8932                	mv	s2,a2
    90003614:	45a5                	li	a1,9
    90003616:	ed25d7e3          	bge	a1,s2,900034e4 <.LBB468_10+0x1a>
    9000361a:	00191613          	slli	a2,s2,0x1
    9000361e:	ffe68593          	addi	a1,a3,-2
    90003622:	9642                	add	a2,a2,a6
    90003624:	00160683          	lb	a3,1(a2)
    90003628:	00064603          	lbu	a2,0(a2)
    9000362c:	00910713          	addi	a4,sp,9
    90003630:	972e                	add	a4,a4,a1
    90003632:	00d700a3          	sb	a3,1(a4)
    90003636:	00c70023          	sb	a2,0(a4)
    9000363a:	00910613          	addi	a2,sp,9
    9000363e:	00b60733          	add	a4,a2,a1
    90003642:	02700613          	li	a2,39
    90003646:	40b607b3          	sub	a5,a2,a1

000000009000364a <.LBB468_11>:
    9000364a:	00005617          	auipc	a2,0x5
    9000364e:	2d660613          	addi	a2,a2,726 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90003652:	4585                	li	a1,1
    90003654:	4681                	li	a3,0
    90003656:	fffff097          	auipc	ra,0xfffff
    9000365a:	958080e7          	jalr	-1704(ra) # 90001fae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    9000365e:	7942                	ld	s2,48(sp)
    90003660:	74e2                	ld	s1,56(sp)
    90003662:	6406                	ld	s0,64(sp)
    90003664:	60a6                	ld	ra,72(sp)
    90003666:	6161                	addi	sp,sp,80
    90003668:	8082                	ret

000000009000366a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>:
    9000366a:	715d                	addi	sp,sp,-80
    9000366c:	e486                	sd	ra,72(sp)
    9000366e:	e0a2                	sd	s0,64(sp)
    90003670:	fc26                	sd	s1,56(sp)
    90003672:	f84a                	sd	s2,48(sp)
    90003674:	00053903          	ld	s2,0(a0)
    90003678:	852e                	mv	a0,a1
    9000367a:	00495593          	srli	a1,s2,0x4
    9000367e:	02700693          	li	a3,39
    90003682:	27100713          	li	a4,625

0000000090003686 <.LBB470_10>:
    90003686:	00005817          	auipc	a6,0x5
    9000368a:	4b480813          	addi	a6,a6,1204 # 90008b3a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    9000368e:	02e5f363          	bgeu	a1,a4,900036b4 <.LBB470_10+0x2e>
    90003692:	06300593          	li	a1,99
    90003696:	0f25c063          	blt	a1,s2,90003776 <.LBB470_10+0xf0>
    9000369a:	45a5                	li	a1,9
    9000369c:	1325cd63          	blt	a1,s2,900037d6 <.LBB470_10+0x150>
    900036a0:	fff68593          	addi	a1,a3,-1
    900036a4:	00910613          	addi	a2,sp,9
    900036a8:	962e                	add	a2,a2,a1
    900036aa:	03090693          	addi	a3,s2,48
    900036ae:	00d60023          	sb	a3,0(a2)
    900036b2:	a291                	j	900037f6 <.LBB470_10+0x170>
    900036b4:	4681                	li	a3,0
    900036b6:	001a35b7          	lui	a1,0x1a3
    900036ba:	6e35859b          	addiw	a1,a1,1763
    900036be:	05ba                	slli	a1,a1,0xe
    900036c0:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    900036c4:	05ba                	slli	a1,a1,0xe
    900036c6:	43358593          	addi	a1,a1,1075
    900036ca:	05b6                	slli	a1,a1,0xd
    900036cc:	94b58893          	addi	a7,a1,-1717
    900036d0:	6589                	lui	a1,0x2
    900036d2:	7105831b          	addiw	t1,a1,1808
    900036d6:	65c1                	lui	a1,0x10
    900036d8:	ffc58e1b          	addiw	t3,a1,-4
    900036dc:	0051f737          	lui	a4,0x51f
    900036e0:	b857071b          	addiw	a4,a4,-1147
    900036e4:	0736                	slli	a4,a4,0xd
    900036e6:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    900036ea:	073a                	slli	a4,a4,0xe
    900036ec:	28f70713          	addi	a4,a4,655
    900036f0:	0732                	slli	a4,a4,0xc
    900036f2:	5c370e93          	addi	t4,a4,1475
    900036f6:	06400293          	li	t0,100
    900036fa:	ffe58f1b          	addiw	t5,a1,-2
    900036fe:	00910393          	addi	t2,sp,9
    90003702:	05f5e5b7          	lui	a1,0x5f5e
    90003706:	0ff58f9b          	addiw	t6,a1,255
    9000370a:	864a                	mv	a2,s2
    9000370c:	031937b3          	mulhu	a5,s2,a7
    90003710:	00b7d913          	srli	s2,a5,0xb
    90003714:	02690733          	mul	a4,s2,t1
    90003718:	40e60733          	sub	a4,a2,a4
    9000371c:	01c775b3          	and	a1,a4,t3
    90003720:	8189                	srli	a1,a1,0x2
    90003722:	03d5b5b3          	mulhu	a1,a1,t4
    90003726:	8189                	srli	a1,a1,0x2
    90003728:	00159413          	slli	s0,a1,0x1
    9000372c:	025585b3          	mul	a1,a1,t0
    90003730:	40b705b3          	sub	a1,a4,a1
    90003734:	0586                	slli	a1,a1,0x1
    90003736:	01e5f5b3          	and	a1,a1,t5
    9000373a:	01040733          	add	a4,s0,a6
    9000373e:	00d38433          	add	s0,t2,a3
    90003742:	00074483          	lbu	s1,0(a4)
    90003746:	00170703          	lb	a4,1(a4)
    9000374a:	95c2                	add	a1,a1,a6
    9000374c:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f41157>
    90003750:	0005c583          	lbu	a1,0(a1)
    90003754:	02e40223          	sb	a4,36(s0)
    90003758:	029401a3          	sb	s1,35(s0)
    9000375c:	02f40323          	sb	a5,38(s0)
    90003760:	02b402a3          	sb	a1,37(s0)
    90003764:	16f1                	addi	a3,a3,-4
    90003766:	facfe2e3          	bltu	t6,a2,9000370a <.LBB470_10+0x84>
    9000376a:	02768693          	addi	a3,a3,39
    9000376e:	06300593          	li	a1,99
    90003772:	f325d4e3          	bge	a1,s2,9000369a <.LBB470_10+0x14>
    90003776:	65c1                	lui	a1,0x10
    90003778:	ffc5861b          	addiw	a2,a1,-4
    9000377c:	00c97633          	and	a2,s2,a2
    90003780:	8209                	srli	a2,a2,0x2
    90003782:	0051f737          	lui	a4,0x51f
    90003786:	b857071b          	addiw	a4,a4,-1147
    9000378a:	0736                	slli	a4,a4,0xd
    9000378c:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90003790:	073a                	slli	a4,a4,0xe
    90003792:	28f70713          	addi	a4,a4,655
    90003796:	0732                	slli	a4,a4,0xc
    90003798:	5c370713          	addi	a4,a4,1475
    9000379c:	02e63633          	mulhu	a2,a2,a4
    900037a0:	8209                	srli	a2,a2,0x2
    900037a2:	06400713          	li	a4,100
    900037a6:	02e60733          	mul	a4,a2,a4
    900037aa:	40e90733          	sub	a4,s2,a4
    900037ae:	0706                	slli	a4,a4,0x1
    900037b0:	35f9                	addiw	a1,a1,-2
    900037b2:	8df9                	and	a1,a1,a4
    900037b4:	16f9                	addi	a3,a3,-2
    900037b6:	95c2                	add	a1,a1,a6
    900037b8:	00158703          	lb	a4,1(a1) # 10001 <n+0xffe1>
    900037bc:	0005c583          	lbu	a1,0(a1)
    900037c0:	00910793          	addi	a5,sp,9
    900037c4:	97b6                	add	a5,a5,a3
    900037c6:	00e780a3          	sb	a4,1(a5)
    900037ca:	00b78023          	sb	a1,0(a5)
    900037ce:	8932                	mv	s2,a2
    900037d0:	45a5                	li	a1,9
    900037d2:	ed25d7e3          	bge	a1,s2,900036a0 <.LBB470_10+0x1a>
    900037d6:	00191613          	slli	a2,s2,0x1
    900037da:	ffe68593          	addi	a1,a3,-2
    900037de:	9642                	add	a2,a2,a6
    900037e0:	00160683          	lb	a3,1(a2)
    900037e4:	00064603          	lbu	a2,0(a2)
    900037e8:	00910713          	addi	a4,sp,9
    900037ec:	972e                	add	a4,a4,a1
    900037ee:	00d700a3          	sb	a3,1(a4)
    900037f2:	00c70023          	sb	a2,0(a4)
    900037f6:	00910613          	addi	a2,sp,9
    900037fa:	00b60733          	add	a4,a2,a1
    900037fe:	02700613          	li	a2,39
    90003802:	40b607b3          	sub	a5,a2,a1

0000000090003806 <.LBB470_11>:
    90003806:	00005617          	auipc	a2,0x5
    9000380a:	11a60613          	addi	a2,a2,282 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    9000380e:	4585                	li	a1,1
    90003810:	4681                	li	a3,0
    90003812:	ffffe097          	auipc	ra,0xffffe
    90003816:	79c080e7          	jalr	1948(ra) # 90001fae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    9000381a:	7942                	ld	s2,48(sp)
    9000381c:	74e2                	ld	s1,56(sp)
    9000381e:	6406                	ld	s0,64(sp)
    90003820:	60a6                	ld	ra,72(sp)
    90003822:	6161                	addi	sp,sp,80
    90003824:	8082                	ret

0000000090003826 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9b30d63a2778a2bdE>:
    90003826:	7590                	ld	a2,40(a1)
    90003828:	7188                	ld	a0,32(a1)
    9000382a:	6e1c                	ld	a5,24(a2)

000000009000382c <.LBB494_1>:
    9000382c:	00006597          	auipc	a1,0x6
    90003830:	d6c58593          	addi	a1,a1,-660 # 90009598 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.541>
    90003834:	4615                	li	a2,5
    90003836:	8782                	jr	a5

0000000090003838 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h583af7b57dae1f0cE>:
    90003838:	6108                	ld	a0,0(a0)
    9000383a:	00000317          	auipc	t1,0x0
    9000383e:	9ce30067          	jr	-1586(t1) # 90003208 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>

0000000090003842 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60a88569702d73e5E>:
    90003842:	7175                	addi	sp,sp,-144
    90003844:	e506                	sd	ra,136(sp)
    90003846:	882e                	mv	a6,a1
    90003848:	0305e583          	lwu	a1,48(a1)
    9000384c:	6108                	ld	a0,0(a0)
    9000384e:	0105f613          	andi	a2,a1,16
    90003852:	e625                	bnez	a2,900038ba <.LBB526_19+0x22>
    90003854:	00054503          	lbu	a0,0(a0)
    90003858:	0205f593          	andi	a1,a1,32
    9000385c:	e9d1                	bnez	a1,900038f0 <.LBB526_19+0x58>
    9000385e:	06400593          	li	a1,100
    90003862:	0eb56963          	bltu	a0,a1,90003954 <.LBB526_20+0x1c>
    90003866:	0fc57613          	andi	a2,a0,252
    9000386a:	8209                	srli	a2,a2,0x2
    9000386c:	0051f6b7          	lui	a3,0x51f
    90003870:	b856869b          	addiw	a3,a3,-1147
    90003874:	06b6                	slli	a3,a3,0xd
    90003876:	3d768693          	addi	a3,a3,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    9000387a:	06ba                	slli	a3,a3,0xe
    9000387c:	28f68693          	addi	a3,a3,655
    90003880:	06b2                	slli	a3,a3,0xc
    90003882:	5c368693          	addi	a3,a3,1475
    90003886:	02d63633          	mulhu	a2,a2,a3
    9000388a:	8209                	srli	a2,a2,0x2
    9000388c:	02b605b3          	mul	a1,a2,a1
    90003890:	8d0d                	sub	a0,a0,a1
    90003892:	0506                	slli	a0,a0,0x1
    90003894:	0fe57513          	andi	a0,a0,254

0000000090003898 <.LBB526_19>:
    90003898:	00005597          	auipc	a1,0x5
    9000389c:	2a258593          	addi	a1,a1,674 # 90008b3a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    900038a0:	952e                	add	a0,a0,a1
    900038a2:	00150583          	lb	a1,1(a0)
    900038a6:	00054503          	lbu	a0,0(a0)
    900038aa:	02b10723          	sb	a1,46(sp)
    900038ae:	02a106a3          	sb	a0,45(sp)
    900038b2:	02400593          	li	a1,36
    900038b6:	8532                	mv	a0,a2
    900038b8:	a05d                	j	9000395e <.LBB526_20+0x26>
    900038ba:	00054503          	lbu	a0,0(a0)
    900038be:	4581                	li	a1,0
    900038c0:	0030                	addi	a2,sp,8
    900038c2:	46a9                	li	a3,10
    900038c4:	a039                	j	900038d2 <.LBB526_19+0x3a>
    900038c6:	05778793          	addi	a5,a5,87
    900038ca:	06f70fa3          	sb	a5,127(a4)
    900038ce:	15fd                	addi	a1,a1,-1
    900038d0:	c921                	beqz	a0,90003920 <.LBB526_19+0x88>
    900038d2:	00b60733          	add	a4,a2,a1
    900038d6:	00f57793          	andi	a5,a0,15
    900038da:	8111                	srli	a0,a0,0x4
    900038dc:	893d                	andi	a0,a0,15
    900038de:	fed7f4e3          	bgeu	a5,a3,900038c6 <.LBB526_19+0x2e>
    900038e2:	0307e793          	ori	a5,a5,48
    900038e6:	06f70fa3          	sb	a5,127(a4)
    900038ea:	15fd                	addi	a1,a1,-1
    900038ec:	f17d                	bnez	a0,900038d2 <.LBB526_19+0x3a>
    900038ee:	a80d                	j	90003920 <.LBB526_19+0x88>
    900038f0:	4581                	li	a1,0
    900038f2:	0030                	addi	a2,sp,8
    900038f4:	46a9                	li	a3,10
    900038f6:	a039                	j	90003904 <.LBB526_19+0x6c>
    900038f8:	03778793          	addi	a5,a5,55
    900038fc:	06f70fa3          	sb	a5,127(a4)
    90003900:	15fd                	addi	a1,a1,-1
    90003902:	cd19                	beqz	a0,90003920 <.LBB526_19+0x88>
    90003904:	00b60733          	add	a4,a2,a1
    90003908:	00f57793          	andi	a5,a0,15
    9000390c:	8111                	srli	a0,a0,0x4
    9000390e:	893d                	andi	a0,a0,15
    90003910:	fed7f4e3          	bgeu	a5,a3,900038f8 <.LBB526_19+0x60>
    90003914:	0307e793          	ori	a5,a5,48
    90003918:	06f70fa3          	sb	a5,127(a4)
    9000391c:	15fd                	addi	a1,a1,-1
    9000391e:	f17d                	bnez	a0,90003904 <.LBB526_19+0x6c>
    90003920:	08058513          	addi	a0,a1,128
    90003924:	08100693          	li	a3,129
    90003928:	08d57763          	bgeu	a0,a3,900039b6 <.LBB526_23>
    9000392c:	40b007b3          	neg	a5,a1
    90003930:	00b60533          	add	a0,a2,a1
    90003934:	08050713          	addi	a4,a0,128

0000000090003938 <.LBB526_20>:
    90003938:	00005617          	auipc	a2,0x5
    9000393c:	20060613          	addi	a2,a2,512 # 90008b38 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    90003940:	4585                	li	a1,1
    90003942:	4689                	li	a3,2
    90003944:	8542                	mv	a0,a6
    90003946:	ffffe097          	auipc	ra,0xffffe
    9000394a:	668080e7          	jalr	1640(ra) # 90001fae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    9000394e:	60aa                	ld	ra,136(sp)
    90003950:	6149                	addi	sp,sp,144
    90003952:	8082                	ret
    90003954:	4625                	li	a2,9
    90003956:	02600593          	li	a1,38
    9000395a:	00a66963          	bltu	a2,a0,9000396c <.LBB526_20+0x34>
    9000395e:	0030                	addi	a2,sp,8
    90003960:	962e                	add	a2,a2,a1
    90003962:	03050513          	addi	a0,a0,48
    90003966:	00a60023          	sb	a0,0(a2)
    9000396a:	a00d                	j	9000398c <.LBB526_21+0x1e>
    9000396c:	0506                	slli	a0,a0,0x1

000000009000396e <.LBB526_21>:
    9000396e:	00005597          	auipc	a1,0x5
    90003972:	1cc58593          	addi	a1,a1,460 # 90008b3a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    90003976:	952e                	add	a0,a0,a1
    90003978:	00150583          	lb	a1,1(a0)
    9000397c:	00054503          	lbu	a0,0(a0)
    90003980:	02b10723          	sb	a1,46(sp)
    90003984:	02a106a3          	sb	a0,45(sp)
    90003988:	02500593          	li	a1,37
    9000398c:	0028                	addi	a0,sp,8
    9000398e:	00b50733          	add	a4,a0,a1
    90003992:	02700513          	li	a0,39
    90003996:	40b507b3          	sub	a5,a0,a1

000000009000399a <.LBB526_22>:
    9000399a:	00005617          	auipc	a2,0x5
    9000399e:	f8660613          	addi	a2,a2,-122 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    900039a2:	4585                	li	a1,1
    900039a4:	8542                	mv	a0,a6
    900039a6:	4681                	li	a3,0
    900039a8:	ffffe097          	auipc	ra,0xffffe
    900039ac:	606080e7          	jalr	1542(ra) # 90001fae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    900039b0:	60aa                	ld	ra,136(sp)
    900039b2:	6149                	addi	sp,sp,144
    900039b4:	8082                	ret

00000000900039b6 <.LBB526_23>:
    900039b6:	00005617          	auipc	a2,0x5
    900039ba:	16a60613          	addi	a2,a2,362 # 90008b20 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    900039be:	08000593          	li	a1,128
    900039c2:	fffff097          	auipc	ra,0xfffff
    900039c6:	f0e080e7          	jalr	-242(ra) # 900028d0 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900039cc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2d2d27b812270d6E>:
    900039cc:	7139                	addi	sp,sp,-64
    900039ce:	fc06                	sd	ra,56(sp)
    900039d0:	f822                	sd	s0,48(sp)
    900039d2:	f426                	sd	s1,40(sp)
    900039d4:	6110                	ld	a2,0(a0)
    900039d6:	00064503          	lbu	a0,0(a2)
    900039da:	4685                	li	a3,1
    900039dc:	842e                	mv	s0,a1
    900039de:	0ad51263          	bne	a0,a3,90003a82 <.LBB548_13+0x22>
    900039e2:	740c                	ld	a1,40(s0)
    900039e4:	7008                	ld	a0,32(s0)
    900039e6:	6d94                	ld	a3,24(a1)
    900039e8:	00160493          	addi	s1,a2,1

00000000900039ec <.LBB548_10>:
    900039ec:	00005597          	auipc	a1,0x5
    900039f0:	f6958593          	addi	a1,a1,-151 # 90008955 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0x12>
    900039f4:	4611                	li	a2,4
    900039f6:	9682                	jalr	a3
    900039f8:	e422                	sd	s0,8(sp)
    900039fa:	00a10c23          	sb	a0,24(sp)
    900039fe:	e802                	sd	zero,16(sp)
    90003a00:	00010ca3          	sb	zero,25(sp)
    90003a04:	f026                	sd	s1,32(sp)

0000000090003a06 <.LBB548_11>:
    90003a06:	00005617          	auipc	a2,0x5
    90003a0a:	0da60613          	addi	a2,a2,218 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.210>
    90003a0e:	0028                	addi	a0,sp,8
    90003a10:	100c                	addi	a1,sp,32
    90003a12:	ffffe097          	auipc	ra,0xffffe
    90003a16:	02a080e7          	jalr	42(ra) # 90001a3c <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>
    90003a1a:	6542                	ld	a0,16(sp)
    90003a1c:	01814583          	lbu	a1,24(sp)
    90003a20:	c931                	beqz	a0,90003a74 <.LBB548_13+0x14>
    90003a22:	4405                	li	s0,1
    90003a24:	e5a9                	bnez	a1,90003a6e <.LBB548_13+0xe>
    90003a26:	01914583          	lbu	a1,25(sp)
    90003a2a:	157d                	addi	a0,a0,-1
    90003a2c:	00a03533          	snez	a0,a0
    90003a30:	0015b593          	seqz	a1,a1
    90003a34:	8d4d                	or	a0,a0,a1
    90003a36:	e10d                	bnez	a0,90003a58 <.LBB548_12+0x10>
    90003a38:	6522                	ld	a0,8(sp)
    90003a3a:	03054583          	lbu	a1,48(a0)
    90003a3e:	8991                	andi	a1,a1,4
    90003a40:	ed81                	bnez	a1,90003a58 <.LBB548_12+0x10>
    90003a42:	750c                	ld	a1,40(a0)
    90003a44:	7108                	ld	a0,32(a0)
    90003a46:	6d94                	ld	a3,24(a1)

0000000090003a48 <.LBB548_12>:
    90003a48:	00005597          	auipc	a1,0x5
    90003a4c:	09058593          	addi	a1,a1,144 # 90008ad8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.205>
    90003a50:	4605                	li	a2,1
    90003a52:	4405                	li	s0,1
    90003a54:	9682                	jalr	a3
    90003a56:	ed01                	bnez	a0,90003a6e <.LBB548_13+0xe>
    90003a58:	6522                	ld	a0,8(sp)
    90003a5a:	750c                	ld	a1,40(a0)
    90003a5c:	7108                	ld	a0,32(a0)
    90003a5e:	6d94                	ld	a3,24(a1)

0000000090003a60 <.LBB548_13>:
    90003a60:	00005597          	auipc	a1,0x5
    90003a64:	07958593          	addi	a1,a1,121 # 90008ad9 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.206>
    90003a68:	4605                	li	a2,1
    90003a6a:	9682                	jalr	a3
    90003a6c:	842a                	mv	s0,a0
    90003a6e:	00810c23          	sb	s0,24(sp)
    90003a72:	85a2                	mv	a1,s0
    90003a74:	00b03533          	snez	a0,a1
    90003a78:	74a2                	ld	s1,40(sp)
    90003a7a:	7442                	ld	s0,48(sp)
    90003a7c:	70e2                	ld	ra,56(sp)
    90003a7e:	6121                	addi	sp,sp,64
    90003a80:	8082                	ret
    90003a82:	740c                	ld	a1,40(s0)
    90003a84:	7008                	ld	a0,32(s0)
    90003a86:	6d9c                	ld	a5,24(a1)

0000000090003a88 <.LBB548_14>:
    90003a88:	00005597          	auipc	a1,0x5
    90003a8c:	ed558593          	addi	a1,a1,-299 # 9000895d <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0x1a>
    90003a90:	4611                	li	a2,4
    90003a92:	74a2                	ld	s1,40(sp)
    90003a94:	7442                	ld	s0,48(sp)
    90003a96:	70e2                	ld	ra,56(sp)
    90003a98:	6121                	addi	sp,sp,64
    90003a9a:	8782                	jr	a5

0000000090003a9c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>:
    90003a9c:	6510                	ld	a2,8(a0)
    90003a9e:	6108                	ld	a0,0(a0)
    90003aa0:	6e1c                	ld	a5,24(a2)
    90003aa2:	8782                	jr	a5

0000000090003aa4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>:
    90003aa4:	6114                	ld	a3,0(a0)
    90003aa6:	6510                	ld	a2,8(a0)
    90003aa8:	852e                	mv	a0,a1
    90003aaa:	85b6                	mv	a1,a3
    90003aac:	ffffe317          	auipc	t1,0xffffe
    90003ab0:	79230067          	jr	1938(t1) # 9000223e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

0000000090003ab4 <_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3ebd7e5e05aa8206E>:
    90003ab4:	7139                	addi	sp,sp,-64
    90003ab6:	fc06                	sd	ra,56(sp)
    90003ab8:	f822                	sd	s0,48(sp)
    90003aba:	f426                	sd	s1,40(sp)
    90003abc:	f04a                	sd	s2,32(sp)
    90003abe:	842e                	mv	s0,a1
    90003ac0:	758c                	ld	a1,40(a1)
    90003ac2:	7014                	ld	a3,32(s0)
    90003ac4:	6d98                	ld	a4,24(a1)
    90003ac6:	84aa                	mv	s1,a0
    90003ac8:	00850913          	addi	s2,a0,8

0000000090003acc <.LBB586_8>:
    90003acc:	00006597          	auipc	a1,0x6
    90003ad0:	ad158593          	addi	a1,a1,-1327 # 9000959d <.Lanon.9d4bfc86079e95d674f3cded52b1db19.565>
    90003ad4:	4625                	li	a2,9
    90003ad6:	8536                	mv	a0,a3
    90003ad8:	9702                	jalr	a4
    90003ada:	e42a                	sd	a0,8(sp)
    90003adc:	e022                	sd	s0,0(sp)
    90003ade:	ec26                	sd	s1,24(sp)

0000000090003ae0 <.LBB586_9>:
    90003ae0:	00006597          	auipc	a1,0x6
    90003ae4:	ac658593          	addi	a1,a1,-1338 # 900095a6 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.566>

0000000090003ae8 <.LBB586_10>:
    90003ae8:	00006717          	auipc	a4,0x6
    90003aec:	a9070713          	addi	a4,a4,-1392 # 90009578 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.418>
    90003af0:	840a                	mv	s0,sp
    90003af2:	0834                	addi	a3,sp,24
    90003af4:	462d                	li	a2,11
    90003af6:	8522                	mv	a0,s0
    90003af8:	ffffe097          	auipc	ra,0xffffe
    90003afc:	de8080e7          	jalr	-536(ra) # 900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    90003b00:	ec4a                	sd	s2,24(sp)

0000000090003b02 <.LBB586_11>:
    90003b02:	00006597          	auipc	a1,0x6
    90003b06:	aaf58593          	addi	a1,a1,-1361 # 900095b1 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.567>

0000000090003b0a <.LBB586_12>:
    90003b0a:	00006717          	auipc	a4,0x6
    90003b0e:	ab670713          	addi	a4,a4,-1354 # 900095c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.568>
    90003b12:	0834                	addi	a3,sp,24
    90003b14:	4625                	li	a2,9
    90003b16:	8522                	mv	a0,s0
    90003b18:	ffffe097          	auipc	ra,0xffffe
    90003b1c:	dc8080e7          	jalr	-568(ra) # 900018e0 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    90003b20:	00914503          	lbu	a0,9(sp)
    90003b24:	00814583          	lbu	a1,8(sp)
    90003b28:	c91d                	beqz	a0,90003b5e <.LBB586_14+0x12>
    90003b2a:	4505                	li	a0,1
    90003b2c:	e595                	bnez	a1,90003b58 <.LBB586_14+0xc>
    90003b2e:	6502                	ld	a0,0(sp)
    90003b30:	750c                	ld	a1,40(a0)
    90003b32:	03054603          	lbu	a2,48(a0)
    90003b36:	7108                	ld	a0,32(a0)
    90003b38:	6d94                	ld	a3,24(a1)
    90003b3a:	00467593          	andi	a1,a2,4
    90003b3e:	e599                	bnez	a1,90003b4c <.LBB586_14>

0000000090003b40 <.LBB586_13>:
    90003b40:	00005597          	auipc	a1,0x5
    90003b44:	f9358593          	addi	a1,a1,-109 # 90008ad3 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.202>
    90003b48:	4609                	li	a2,2
    90003b4a:	a031                	j	90003b56 <.LBB586_14+0xa>

0000000090003b4c <.LBB586_14>:
    90003b4c:	00005597          	auipc	a1,0x5
    90003b50:	f8658593          	addi	a1,a1,-122 # 90008ad2 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.201>
    90003b54:	4605                	li	a2,1
    90003b56:	9682                	jalr	a3
    90003b58:	00a10423          	sb	a0,8(sp)
    90003b5c:	85aa                	mv	a1,a0
    90003b5e:	00b03533          	snez	a0,a1
    90003b62:	7902                	ld	s2,32(sp)
    90003b64:	74a2                	ld	s1,40(sp)
    90003b66:	7442                	ld	s0,48(sp)
    90003b68:	70e2                	ld	ra,56(sp)
    90003b6a:	6121                	addi	sp,sp,64
    90003b6c:	8082                	ret

0000000090003b6e <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>:
    90003b6e:	1141                	addi	sp,sp,-16
    90003b70:	e406                	sd	ra,8(sp)
    90003b72:	4681                	li	a3,0
    90003b74:	0005059b          	sext.w	a1,a0
    90003b78:	6645                	lui	a2,0x11
    90003b7a:	d246071b          	addiw	a4,a2,-732
    90003b7e:	00b5161b          	slliw	a2,a0,0xb
    90003b82:	00e5e363          	bltu	a1,a4,90003b88 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E+0x1a>
    90003b86:	46bd                	li	a3,15
    90003b88:	00868713          	addi	a4,a3,8
    90003b8c:	00271793          	slli	a5,a4,0x2

0000000090003b90 <.LBB614_29>:
    90003b90:	00006597          	auipc	a1,0x6
    90003b94:	a5058593          	addi	a1,a1,-1456 # 900095e0 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hfd93ef645f5e63d2E>
    90003b98:	97ae                	add	a5,a5,a1
    90003b9a:	439c                	lw	a5,0(a5)
    90003b9c:	00b7979b          	slliw	a5,a5,0xb
    90003ba0:	00f66363          	bltu	a2,a5,90003ba6 <.LBB614_29+0x16>
    90003ba4:	86ba                	mv	a3,a4
    90003ba6:	00468713          	addi	a4,a3,4
    90003baa:	00271793          	slli	a5,a4,0x2
    90003bae:	97ae                	add	a5,a5,a1
    90003bb0:	439c                	lw	a5,0(a5)
    90003bb2:	00b7979b          	slliw	a5,a5,0xb
    90003bb6:	00f66363          	bltu	a2,a5,90003bbc <.LBB614_29+0x2c>
    90003bba:	86ba                	mv	a3,a4
    90003bbc:	00268713          	addi	a4,a3,2
    90003bc0:	00271793          	slli	a5,a4,0x2
    90003bc4:	97ae                	add	a5,a5,a1
    90003bc6:	439c                	lw	a5,0(a5)
    90003bc8:	00b7979b          	slliw	a5,a5,0xb
    90003bcc:	00f66363          	bltu	a2,a5,90003bd2 <.LBB614_29+0x42>
    90003bd0:	86ba                	mv	a3,a4
    90003bd2:	00168713          	addi	a4,a3,1
    90003bd6:	00271793          	slli	a5,a4,0x2
    90003bda:	97ae                	add	a5,a5,a1
    90003bdc:	439c                	lw	a5,0(a5)
    90003bde:	00b7979b          	slliw	a5,a5,0xb
    90003be2:	00f66363          	bltu	a2,a5,90003be8 <.LBB614_29+0x58>
    90003be6:	86ba                	mv	a3,a4
    90003be8:	00269713          	slli	a4,a3,0x2
    90003bec:	972e                	add	a4,a4,a1
    90003bee:	4318                	lw	a4,0(a4)
    90003bf0:	00b7171b          	slliw	a4,a4,0xb
    90003bf4:	00c737b3          	sltu	a5,a4,a2
    90003bf8:	8e39                	xor	a2,a2,a4
    90003bfa:	00163613          	seqz	a2,a2
    90003bfe:	963e                	add	a2,a2,a5
    90003c00:	00d60733          	add	a4,a2,a3
    90003c04:	46f9                	li	a3,30
    90003c06:	0ae6e463          	bltu	a3,a4,90003cae <.LBB614_32>
    90003c0a:	00271793          	slli	a5,a4,0x2
    90003c0e:	2b100613          	li	a2,689
    90003c12:	00d70763          	beq	a4,a3,90003c20 <.LBB614_29+0x90>
    90003c16:	00f58633          	add	a2,a1,a5
    90003c1a:	00466603          	lwu	a2,4(a2) # 11004 <n+0x10fe4>
    90003c1e:	8255                	srli	a2,a2,0x15
    90003c20:	fff70693          	addi	a3,a4,-1
    90003c24:	00d77463          	bgeu	a4,a3,90003c2c <.LBB614_29+0x9c>
    90003c28:	4701                	li	a4,0
    90003c2a:	a821                	j	90003c42 <.LBB614_29+0xb2>
    90003c2c:	477d                	li	a4,31
    90003c2e:	08e6fb63          	bgeu	a3,a4,90003cc4 <.LBB614_33>
    90003c32:	068a                	slli	a3,a3,0x2
    90003c34:	96ae                	add	a3,a3,a1
    90003c36:	0006e683          	lwu	a3,0(a3)
    90003c3a:	00200737          	lui	a4,0x200
    90003c3e:	377d                	addiw	a4,a4,-1
    90003c40:	8f75                	and	a4,a4,a3
    90003c42:	95be                	add	a1,a1,a5
    90003c44:	0005e583          	lwu	a1,0(a1)
    90003c48:	81d5                	srli	a1,a1,0x15
    90003c4a:	00158693          	addi	a3,a1,1
    90003c4e:	02d60f63          	beq	a2,a3,90003c8c <.LBB614_30+0x22>
    90003c52:	2b100793          	li	a5,689
    90003c56:	882e                	mv	a6,a1
    90003c58:	00b7e463          	bltu	a5,a1,90003c60 <.LBB614_29+0xd0>
    90003c5c:	2b100813          	li	a6,689
    90003c60:	4781                	li	a5,0
    90003c62:	40e5073b          	subw	a4,a0,a4
    90003c66:	fff60513          	addi	a0,a2,-1

0000000090003c6a <.LBB614_30>:
    90003c6a:	00006617          	auipc	a2,0x6
    90003c6e:	9f260613          	addi	a2,a2,-1550 # 9000965c <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h95afd816ac45989cE>
    90003c72:	02b80263          	beq	a6,a1,90003c96 <.LBB614_31>
    90003c76:	00c586b3          	add	a3,a1,a2
    90003c7a:	0006c683          	lbu	a3,0(a3)
    90003c7e:	9fb5                	addw	a5,a5,a3
    90003c80:	00f76663          	bltu	a4,a5,90003c8c <.LBB614_30+0x22>
    90003c84:	0585                	addi	a1,a1,1
    90003c86:	feb516e3          	bne	a0,a1,90003c72 <.LBB614_30+0x8>
    90003c8a:	85aa                	mv	a1,a0
    90003c8c:	0015f513          	andi	a0,a1,1
    90003c90:	60a2                	ld	ra,8(sp)
    90003c92:	0141                	addi	sp,sp,16
    90003c94:	8082                	ret

0000000090003c96 <.LBB614_31>:
    90003c96:	00006617          	auipc	a2,0x6
    90003c9a:	8b260613          	addi	a2,a2,-1870 # 90009548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.355>
    90003c9e:	2b100593          	li	a1,689
    90003ca2:	8542                	mv	a0,a6
    90003ca4:	ffffe097          	auipc	ra,0xffffe
    90003ca8:	a90080e7          	jalr	-1392(ra) # 90001734 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000090003cae <.LBB614_32>:
    90003cae:	00006617          	auipc	a2,0x6
    90003cb2:	88260613          	addi	a2,a2,-1918 # 90009530 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.354>
    90003cb6:	45fd                	li	a1,31
    90003cb8:	853a                	mv	a0,a4
    90003cba:	ffffe097          	auipc	ra,0xffffe
    90003cbe:	a7a080e7          	jalr	-1414(ra) # 90001734 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000090003cc4 <.LBB614_33>:
    90003cc4:	00006617          	auipc	a2,0x6
    90003cc8:	89c60613          	addi	a2,a2,-1892 # 90009560 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.356>
    90003ccc:	45fd                	li	a1,31
    90003cce:	8536                	mv	a0,a3
    90003cd0:	ffffe097          	auipc	ra,0xffffe
    90003cd4:	a64080e7          	jalr	-1436(ra) # 90001734 <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000090003cda <memcpy>:
    90003cda:	ca11                	beqz	a2,90003cee <memcpy+0x14>
    90003cdc:	86aa                	mv	a3,a0
    90003cde:	00058703          	lb	a4,0(a1)
    90003ce2:	00e68023          	sb	a4,0(a3)
    90003ce6:	167d                	addi	a2,a2,-1
    90003ce8:	0685                	addi	a3,a3,1
    90003cea:	0585                	addi	a1,a1,1
    90003cec:	fa6d                	bnez	a2,90003cde <memcpy+0x4>
    90003cee:	8082                	ret

0000000090003cf0 <memset>:
    90003cf0:	c619                	beqz	a2,90003cfe <memset+0xe>
    90003cf2:	86aa                	mv	a3,a0
    90003cf4:	00b68023          	sb	a1,0(a3)
    90003cf8:	167d                	addi	a2,a2,-1
    90003cfa:	0685                	addi	a3,a3,1
    90003cfc:	fe65                	bnez	a2,90003cf4 <memset+0x4>
    90003cfe:	8082                	ret
