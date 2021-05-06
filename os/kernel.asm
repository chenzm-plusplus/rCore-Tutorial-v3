make[1]: Entering directory '/home/user/OS/GuestOS/user'
src/bin/00hello_world.rs
target/riscv64gc-unknown-none-elf/release/00hello_world
target/riscv64gc-unknown-none-elf/release/00hello_world.bin
rust-objcopy --binary-architecture=riscv64 target/riscv64gc-unknown-none-elf/release/00hello_world --strip-all -O binary  target/riscv64gc-unknown-none-elf/release/00hello_world.bin;
make[1]: Leaving directory '/home/user/OS/GuestOS/user'
Platform: qemu

target/riscv64gc-unknown-none-elf/release/os:     file format elf64-littleriscv


Disassembly of section .text:

0000000090000000 <_start>:
    90000000:	0001c117          	auipc	sp,0x1c
    90000004:	00010113          	mv	sp,sp
    90000008:	00000097          	auipc	ra,0x0
    9000000c:	5ae080e7          	jalr	1454(ra) # 900005b6 <rust_main>

0000000090000010 <_ZN4core3ptr44drop_in_place$LT$core..cell..BorrowError$GT$17h18d803fc4ddbffd1E.llvm.1193307735727972488>:
    90000010:	1141                	addi	sp,sp,-16
    90000012:	e406                	sd	ra,8(sp)
    90000014:	e022                	sd	s0,0(sp)
    90000016:	0800                	addi	s0,sp,16
    90000018:	6402                	ld	s0,0(sp)
    9000001a:	60a2                	ld	ra,8(sp)
    9000001c:	0141                	addi	sp,sp,16
    9000001e:	8082                	ret

0000000090000020 <_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hbe50b65e97a8d660E.llvm.1193307735727972488>:
    90000020:	1101                	addi	sp,sp,-32
    90000022:	ec06                	sd	ra,24(sp)
    90000024:	e822                	sd	s0,16(sp)
    90000026:	1000                	addi	s0,sp,32
    90000028:	85aa                	mv	a1,a0
    9000002a:	6108                	ld	a0,0(a0)
    9000002c:	e909                	bnez	a0,9000003e <.LBB3_3>
    9000002e:	567d                	li	a2,-1
    90000030:	00858513          	addi	a0,a1,8
    90000034:	e190                	sd	a2,0(a1)
    90000036:	6442                	ld	s0,16(sp)
    90000038:	60e2                	ld	ra,24(sp)
    9000003a:	6105                	addi	sp,sp,32
    9000003c:	8082                	ret

000000009000003e <.LBB3_3>:
    9000003e:	00004517          	auipc	a0,0x4
    90000042:	fd250513          	addi	a0,a0,-46 # 90004010 <anon.dd013d8762cff77058a08f73d5951059.0.llvm.1193307735727972488>

0000000090000046 <.LBB3_4>:
    90000046:	00004697          	auipc	a3,0x4
    9000004a:	06268693          	addi	a3,a3,98 # 900040a8 <anon.dd013d8762cff77058a08f73d5951059.4.llvm.1193307735727972488>

000000009000004e <.LBB3_5>:
    9000004e:	00008717          	auipc	a4,0x8
    90000052:	05270713          	addi	a4,a4,82 # 900080a0 <anon.dd013d8762cff77058a08f73d5951059.12.llvm.1193307735727972488>
    90000056:	fe840613          	addi	a2,s0,-24
    9000005a:	45c1                	li	a1,16
    9000005c:	00001097          	auipc	ra,0x1
    90000060:	226080e7          	jalr	550(ra) # 90001282 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000066 <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h874475ac26ce1675E.llvm.1193307735727972488>:
    90000066:	1101                	addi	sp,sp,-32
    90000068:	ec06                	sd	ra,24(sp)
    9000006a:	e822                	sd	s0,16(sp)
    9000006c:	1000                	addi	s0,sp,32
    9000006e:	862a                	mv	a2,a0
    90000070:	6108                	ld	a0,0(a0)
    90000072:	00150693          	addi	a3,a0,1
    90000076:	00d05a63          	blez	a3,9000008a <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h874475ac26ce1675E.llvm.1193307735727972488+0x24>
    9000007a:	00860513          	addi	a0,a2,8
    9000007e:	e214                	sd	a3,0(a2)
    90000080:	85b2                	mv	a1,a2
    90000082:	6442                	ld	s0,16(sp)
    90000084:	60e2                	ld	ra,24(sp)
    90000086:	6105                	addi	sp,sp,32
    90000088:	8082                	ret
    9000008a:	872e                	mv	a4,a1

000000009000008c <.LBB4_3>:
    9000008c:	00004517          	auipc	a0,0x4
    90000090:	fb450513          	addi	a0,a0,-76 # 90004040 <anon.dd013d8762cff77058a08f73d5951059.1.llvm.1193307735727972488>

0000000090000094 <.LBB4_4>:
    90000094:	00004697          	auipc	a3,0x4
    90000098:	ff468693          	addi	a3,a3,-12 # 90004088 <anon.dd013d8762cff77058a08f73d5951059.3.llvm.1193307735727972488>
    9000009c:	fe840613          	addi	a2,s0,-24
    900000a0:	45e1                	li	a1,24
    900000a2:	00001097          	auipc	ra,0x1
    900000a6:	1e0080e7          	jalr	480(ra) # 90001282 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900000ac <_ZN2os5batch11KernelStack12push_context17haf6e05de4efa521eE.llvm.1193307735727972488>:
    900000ac:	1101                	addi	sp,sp,-32
    900000ae:	ec06                	sd	ra,24(sp)
    900000b0:	e822                	sd	s0,16(sp)
    900000b2:	e426                	sd	s1,8(sp)
    900000b4:	1000                	addi	s0,sp,32
    900000b6:	85aa                	mv	a1,a0
    900000b8:	6509                	lui	a0,0x2
    900000ba:	ef05051b          	addiw	a0,a0,-272

00000000900000be <.LBB5_3>:
    900000be:	00005617          	auipc	a2,0x5
    900000c2:	f4260613          	addi	a2,a2,-190 # 90005000 <_ZN2os5batch12KERNEL_STACK17h0a7ac3b2a5cfbb11E.llvm.1193307735727972488>
    900000c6:	00a604b3          	add	s1,a2,a0
    900000ca:	11000613          	li	a2,272
    900000ce:	8526                	mv	a0,s1
    900000d0:	00003097          	auipc	ra,0x3
    900000d4:	60e080e7          	jalr	1550(ra) # 900036de <memcpy>
    900000d8:	c499                	beqz	s1,900000e6 <.LBB5_4>
    900000da:	8526                	mv	a0,s1
    900000dc:	64a2                	ld	s1,8(sp)
    900000de:	6442                	ld	s0,16(sp)
    900000e0:	60e2                	ld	ra,24(sp)
    900000e2:	6105                	addi	sp,sp,32
    900000e4:	8082                	ret

00000000900000e6 <.LBB5_4>:
    900000e6:	00004517          	auipc	a0,0x4
    900000ea:	f7250513          	addi	a0,a0,-142 # 90004058 <anon.dd013d8762cff77058a08f73d5951059.2.llvm.1193307735727972488>

00000000900000ee <.LBB5_5>:
    900000ee:	00008617          	auipc	a2,0x8
    900000f2:	f2260613          	addi	a2,a2,-222 # 90008010 <anon.dd013d8762cff77058a08f73d5951059.6.llvm.1193307735727972488>
    900000f6:	02b00593          	li	a1,43
    900000fa:	00001097          	auipc	ra,0x1
    900000fe:	1e8080e7          	jalr	488(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000104 <_ZN2os5batch15AppManagerInner8load_app17h86b91ef154da4dc1E.llvm.1193307735727972488>:
    90000104:	1141                	addi	sp,sp,-16
    90000106:	e406                	sd	ra,8(sp)
    90000108:	e022                	sd	s0,0(sp)
    9000010a:	0800                	addi	s0,sp,16
    9000010c:	6110                	ld	a2,0(a0)
    9000010e:	04c5f963          	bgeu	a1,a2,90000160 <_ZN2os5batch15AppManagerInner8load_app17h86b91ef154da4dc1E.llvm.1193307735727972488+0x5c>
    90000112:	86ae                	mv	a3,a1
    90000114:	0000100f          	fence.i
    90000118:	000205b7          	lui	a1,0x20
    9000011c:	24100613          	li	a2,577
    90000120:	065a                	slli	a2,a2,0x16
    90000122:	00160713          	addi	a4,a2,1
    90000126:	15fd                	addi	a1,a1,-1
    90000128:	00060023          	sb	zero,0(a2)
    9000012c:	863a                	mv	a2,a4
    9000012e:	f9f5                	bnez	a1,90000122 <_ZN2os5batch15AppManagerInner8load_app17h86b91ef154da4dc1E.llvm.1193307735727972488+0x1e>
    90000130:	45c1                	li	a1,16
    90000132:	02d5ec63          	bltu	a1,a3,9000016a <.LBB6_9>
    90000136:	04b68563          	beq	a3,a1,90000180 <.LBB6_10>
    9000013a:	00369613          	slli	a2,a3,0x3
    9000013e:	00c505b3          	add	a1,a0,a2
    90000142:	698c                	ld	a1,16(a1)
    90000144:	9532                	add	a0,a0,a2
    90000146:	6d08                	ld	a0,24(a0)
    90000148:	40b50633          	sub	a2,a0,a1
    9000014c:	24100513          	li	a0,577
    90000150:	055a                	slli	a0,a0,0x16
    90000152:	6402                	ld	s0,0(sp)
    90000154:	60a2                	ld	ra,8(sp)
    90000156:	0141                	addi	sp,sp,16
    90000158:	00003317          	auipc	t1,0x3
    9000015c:	58630067          	jr	1414(t1) # 900036de <memcpy>
    90000160:	00000097          	auipc	ra,0x0
    90000164:	49a080e7          	jalr	1178(ra) # 900005fa <_ZN2os3sbi8shutdown17h7ebfb538db979bc8E>
	...

000000009000016a <.LBB6_9>:
    9000016a:	00008617          	auipc	a2,0x8
    9000016e:	ebe60613          	addi	a2,a2,-322 # 90008028 <anon.dd013d8762cff77058a08f73d5951059.7.llvm.1193307735727972488>
    90000172:	45c5                	li	a1,17
    90000174:	8536                	mv	a0,a3
    90000176:	00001097          	auipc	ra,0x1
    9000017a:	198080e7          	jalr	408(ra) # 9000130e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000090000180 <.LBB6_10>:
    90000180:	00008617          	auipc	a2,0x8
    90000184:	ec060613          	addi	a2,a2,-320 # 90008040 <anon.dd013d8762cff77058a08f73d5951059.8.llvm.1193307735727972488>
    90000188:	4545                	li	a0,17
    9000018a:	45c5                	li	a1,17
    9000018c:	00001097          	auipc	ra,0x1
    90000190:	182080e7          	jalr	386(ra) # 9000130e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000090000196 <_ZN2os5batch4init17h53107c46faa69cb8E>:
    90000196:	1101                	addi	sp,sp,-32
    90000198:	ec06                	sd	ra,24(sp)
    9000019a:	e822                	sd	s0,16(sp)
    9000019c:	1000                	addi	s0,sp,32

000000009000019e <.LBB9_3>:
    9000019e:	0001c517          	auipc	a0,0x1c
    900001a2:	e6250513          	addi	a0,a0,-414 # 9001c000 <boot_stack_top>
    900001a6:	00000097          	auipc	ra,0x0
    900001aa:	76c080e7          	jalr	1900(ra) # 90000912 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE>
    900001ae:	6108                	ld	a0,0(a0)
    900001b0:	0505                	addi	a0,a0,1
    900001b2:	00a05663          	blez	a0,900001be <.LBB9_4>
    900001b6:	6442                	ld	s0,16(sp)
    900001b8:	60e2                	ld	ra,24(sp)
    900001ba:	6105                	addi	sp,sp,32
    900001bc:	8082                	ret

00000000900001be <.LBB9_4>:
    900001be:	00004517          	auipc	a0,0x4
    900001c2:	e8250513          	addi	a0,a0,-382 # 90004040 <anon.dd013d8762cff77058a08f73d5951059.1.llvm.1193307735727972488>

00000000900001c6 <.LBB9_5>:
    900001c6:	00004697          	auipc	a3,0x4
    900001ca:	ec268693          	addi	a3,a3,-318 # 90004088 <anon.dd013d8762cff77058a08f73d5951059.3.llvm.1193307735727972488>

00000000900001ce <.LBB9_6>:
    900001ce:	00008717          	auipc	a4,0x8
    900001d2:	e8a70713          	addi	a4,a4,-374 # 90008058 <anon.dd013d8762cff77058a08f73d5951059.9.llvm.1193307735727972488>
    900001d6:	fe840613          	addi	a2,s0,-24
    900001da:	45e1                	li	a1,24
    900001dc:	00001097          	auipc	ra,0x1
    900001e0:	0a6080e7          	jalr	166(ra) # 90001282 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000900001e6 <_ZN2os5batch12run_next_app17h219220bb48d367c5E>:
    900001e6:	7169                	addi	sp,sp,-304
    900001e8:	f606                	sd	ra,296(sp)
    900001ea:	f222                	sd	s0,288(sp)
    900001ec:	ee26                	sd	s1,280(sp)
    900001ee:	ea4a                	sd	s2,272(sp)
    900001f0:	1a00                	addi	s0,sp,304
    900001f2:	00000097          	auipc	ra,0x0
    900001f6:	0e4080e7          	jalr	228(ra) # 900002d6 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2a571c4c71a99049E.llvm.1193307735727972488>

00000000900001fa <.LBB10_1>:
    900001fa:	00008597          	auipc	a1,0x8
    900001fe:	e7658593          	addi	a1,a1,-394 # 90008070 <anon.dd013d8762cff77058a08f73d5951059.10.llvm.1193307735727972488>
    90000202:	00000097          	auipc	ra,0x0
    90000206:	e64080e7          	jalr	-412(ra) # 90000066 <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h874475ac26ce1675E.llvm.1193307735727972488>
    9000020a:	6190                	ld	a2,0(a1)
    9000020c:	00853903          	ld	s2,8(a0)
    90000210:	fff60513          	addi	a0,a2,-1
    90000214:	e188                	sd	a0,0(a1)
    90000216:	00000097          	auipc	ra,0x0
    9000021a:	0c0080e7          	jalr	192(ra) # 900002d6 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2a571c4c71a99049E.llvm.1193307735727972488>

000000009000021e <.LBB10_2>:
    9000021e:	00008597          	auipc	a1,0x8
    90000222:	e6a58593          	addi	a1,a1,-406 # 90008088 <anon.dd013d8762cff77058a08f73d5951059.11.llvm.1193307735727972488>
    90000226:	00000097          	auipc	ra,0x0
    9000022a:	e40080e7          	jalr	-448(ra) # 90000066 <_ZN4core4cell16RefCell$LT$T$GT$6borrow17h874475ac26ce1675E.llvm.1193307735727972488>
    9000022e:	84ae                	mv	s1,a1
    90000230:	85ca                	mv	a1,s2
    90000232:	00000097          	auipc	ra,0x0
    90000236:	ed2080e7          	jalr	-302(ra) # 90000104 <_ZN2os5batch15AppManagerInner8load_app17h86b91ef154da4dc1E.llvm.1193307735727972488>
    9000023a:	6088                	ld	a0,0(s1)
    9000023c:	157d                	addi	a0,a0,-1
    9000023e:	e088                	sd	a0,0(s1)
    90000240:	00000097          	auipc	ra,0x0
    90000244:	096080e7          	jalr	150(ra) # 900002d6 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2a571c4c71a99049E.llvm.1193307735727972488>
    90000248:	00000097          	auipc	ra,0x0
    9000024c:	dd8080e7          	jalr	-552(ra) # 90000020 <_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17hbe50b65e97a8d660E.llvm.1193307735727972488>
    90000250:	6510                	ld	a2,8(a0)
    90000252:	0605                	addi	a2,a2,1
    90000254:	e510                	sd	a2,8(a0)
    90000256:	6188                	ld	a0,0(a1)
    90000258:	0505                	addi	a0,a0,1
    9000025a:	e188                	sd	a0,0(a1)
    9000025c:	10002573          	csrr	a0,sstatus
    90000260:	eff57493          	andi	s1,a0,-257
    90000264:	ed040913          	addi	s2,s0,-304
    90000268:	10000613          	li	a2,256
    9000026c:	854a                	mv	a0,s2
    9000026e:	4581                	li	a1,0
    90000270:	00003097          	auipc	ra,0x3
    90000274:	484080e7          	jalr	1156(ra) # 900036f4 <memset>
    90000278:	fc943823          	sd	s1,-48(s0)
    9000027c:	24100513          	li	a0,577
    90000280:	055a                	slli	a0,a0,0x16
    90000282:	fca43c23          	sd	a0,-40(s0)
    90000286:	6505                	lui	a0,0x1

0000000090000288 <.LBB10_3>:
    90000288:	00007597          	auipc	a1,0x7
    9000028c:	d7858593          	addi	a1,a1,-648 # 90007000 <_ZN2os5batch10USER_STACK17h57e023ea41d6e6faE.llvm.1193307735727972488>
    90000290:	952e                	add	a0,a0,a1
    90000292:	eea43023          	sd	a0,-288(s0)
    90000296:	854a                	mv	a0,s2
    90000298:	00000097          	auipc	ra,0x0
    9000029c:	e14080e7          	jalr	-492(ra) # 900000ac <_ZN2os5batch11KernelStack12push_context17haf6e05de4efa521eE.llvm.1193307735727972488>
    900002a0:	6509                	lui	a0,0x2
    900002a2:	ef05051b          	addiw	a0,a0,-272

00000000900002a6 <.LBB10_4>:
    900002a6:	00005597          	auipc	a1,0x5
    900002aa:	d5a58593          	addi	a1,a1,-678 # 90005000 <_ZN2os5batch12KERNEL_STACK17h0a7ac3b2a5cfbb11E.llvm.1193307735727972488>
    900002ae:	952e                	add	a0,a0,a1
    900002b0:	00000097          	auipc	ra,0x0
    900002b4:	0a0080e7          	jalr	160(ra) # 90000350 <__restore>

00000000900002b8 <.LBB10_5>:
    900002b8:	00008517          	auipc	a0,0x8
    900002bc:	e0050513          	addi	a0,a0,-512 # 900080b8 <anon.dd013d8762cff77058a08f73d5951059.13.llvm.1193307735727972488>

00000000900002c0 <.LBB10_6>:
    900002c0:	00008617          	auipc	a2,0x8
    900002c4:	e2060613          	addi	a2,a2,-480 # 900080e0 <anon.dd013d8762cff77058a08f73d5951059.14.llvm.1193307735727972488>
    900002c8:	02600593          	li	a1,38
    900002cc:	00001097          	auipc	ra,0x1
    900002d0:	016080e7          	jalr	22(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

00000000900002d6 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h2a571c4c71a99049E.llvm.1193307735727972488>:
    900002d6:	1141                	addi	sp,sp,-16
    900002d8:	e406                	sd	ra,8(sp)
    900002da:	e022                	sd	s0,0(sp)
    900002dc:	0800                	addi	s0,sp,16

00000000900002de <.LBB11_1>:
    900002de:	0001c517          	auipc	a0,0x1c
    900002e2:	d2250513          	addi	a0,a0,-734 # 9001c000 <boot_stack_top>
    900002e6:	6402                	ld	s0,0(sp)
    900002e8:	60a2                	ld	ra,8(sp)
    900002ea:	0141                	addi	sp,sp,16
    900002ec:	00000317          	auipc	t1,0x0
    900002f0:	62630067          	jr	1574(t1) # 90000912 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE>

00000000900002f4 <__alltraps>:
    900002f4:	14011173          	csrrw	sp,sscratch,sp
    900002f8:	716d                	addi	sp,sp,-272
    900002fa:	e406                	sd	ra,8(sp)
    900002fc:	ec0e                	sd	gp,24(sp)
    900002fe:	f416                	sd	t0,40(sp)
    90000300:	f81a                	sd	t1,48(sp)
    90000302:	fc1e                	sd	t2,56(sp)
    90000304:	e0a2                	sd	s0,64(sp)
    90000306:	e4a6                	sd	s1,72(sp)
    90000308:	e8aa                	sd	a0,80(sp)
    9000030a:	ecae                	sd	a1,88(sp)
    9000030c:	f0b2                	sd	a2,96(sp)
    9000030e:	f4b6                	sd	a3,104(sp)
    90000310:	f8ba                	sd	a4,112(sp)
    90000312:	fcbe                	sd	a5,120(sp)
    90000314:	e142                	sd	a6,128(sp)
    90000316:	e546                	sd	a7,136(sp)
    90000318:	e94a                	sd	s2,144(sp)
    9000031a:	ed4e                	sd	s3,152(sp)
    9000031c:	f152                	sd	s4,160(sp)
    9000031e:	f556                	sd	s5,168(sp)
    90000320:	f95a                	sd	s6,176(sp)
    90000322:	fd5e                	sd	s7,184(sp)
    90000324:	e1e2                	sd	s8,192(sp)
    90000326:	e5e6                	sd	s9,200(sp)
    90000328:	e9ea                	sd	s10,208(sp)
    9000032a:	edee                	sd	s11,216(sp)
    9000032c:	f1f2                	sd	t3,224(sp)
    9000032e:	f5f6                	sd	t4,232(sp)
    90000330:	f9fa                	sd	t5,240(sp)
    90000332:	fdfe                	sd	t6,248(sp)
    90000334:	100022f3          	csrr	t0,sstatus
    90000338:	14102373          	csrr	t1,sepc
    9000033c:	e216                	sd	t0,256(sp)
    9000033e:	e61a                	sd	t1,264(sp)
    90000340:	140023f3          	csrr	t2,sscratch
    90000344:	e81e                	sd	t2,16(sp)
    90000346:	850a                	mv	a0,sp
    90000348:	00000097          	auipc	ra,0x0
    9000034c:	0c0080e7          	jalr	192(ra) # 90000408 <trap_handler>

0000000090000350 <__restore>:
    90000350:	812a                	mv	sp,a0
    90000352:	6292                	ld	t0,256(sp)
    90000354:	6332                	ld	t1,264(sp)
    90000356:	63c2                	ld	t2,16(sp)
    90000358:	10029073          	csrw	sstatus,t0
    9000035c:	14131073          	csrw	sepc,t1
    90000360:	14039073          	csrw	sscratch,t2
    90000364:	60a2                	ld	ra,8(sp)
    90000366:	61e2                	ld	gp,24(sp)
    90000368:	72a2                	ld	t0,40(sp)
    9000036a:	7342                	ld	t1,48(sp)
    9000036c:	73e2                	ld	t2,56(sp)
    9000036e:	6406                	ld	s0,64(sp)
    90000370:	64a6                	ld	s1,72(sp)
    90000372:	6546                	ld	a0,80(sp)
    90000374:	65e6                	ld	a1,88(sp)
    90000376:	7606                	ld	a2,96(sp)
    90000378:	76a6                	ld	a3,104(sp)
    9000037a:	7746                	ld	a4,112(sp)
    9000037c:	77e6                	ld	a5,120(sp)
    9000037e:	680a                	ld	a6,128(sp)
    90000380:	68aa                	ld	a7,136(sp)
    90000382:	694a                	ld	s2,144(sp)
    90000384:	69ea                	ld	s3,152(sp)
    90000386:	7a0a                	ld	s4,160(sp)
    90000388:	7aaa                	ld	s5,168(sp)
    9000038a:	7b4a                	ld	s6,176(sp)
    9000038c:	7bea                	ld	s7,184(sp)
    9000038e:	6c0e                	ld	s8,192(sp)
    90000390:	6cae                	ld	s9,200(sp)
    90000392:	6d4e                	ld	s10,208(sp)
    90000394:	6dee                	ld	s11,216(sp)
    90000396:	7e0e                	ld	t3,224(sp)
    90000398:	7eae                	ld	t4,232(sp)
    9000039a:	7f4e                	ld	t5,240(sp)
    9000039c:	7fee                	ld	t6,248(sp)
    9000039e:	6151                	addi	sp,sp,272
    900003a0:	14011173          	csrrw	sp,sscratch,sp
    900003a4:	10200073          	sret

00000000900003a8 <_ZN5riscv8register6scause6Scause5cause17h61bc1e71e5a25ba9E>:
    900003a8:	1101                	addi	sp,sp,-32
    900003aa:	ec06                	sd	ra,24(sp)
    900003ac:	e822                	sd	s0,16(sp)
    900003ae:	e426                	sd	s1,8(sp)
    900003b0:	1000                	addi	s0,sp,32
    900003b2:	6104                	ld	s1,0(a0)
    900003b4:	00001097          	auipc	ra,0x1
    900003b8:	b86080e7          	jalr	-1146(ra) # 90000f3a <_ZN5riscv8register6scause6Scause4code17h25a276351377520bE>
    900003bc:	55fd                	li	a1,-1
    900003be:	0095da63          	bge	a1,s1,900003d2 <_ZN5riscv8register6scause6Scause5cause17h61bc1e71e5a25ba9E+0x2a>
    900003c2:	00001097          	auipc	ra,0x1
    900003c6:	aae080e7          	jalr	-1362(ra) # 90000e70 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E>
    900003ca:	0ff57593          	andi	a1,a0,255
    900003ce:	4505                	li	a0,1
    900003d0:	a809                	j	900003e2 <_ZN5riscv8register6scause6Scause5cause17h61bc1e71e5a25ba9E+0x3a>
    900003d2:	00001097          	auipc	ra,0x1
    900003d6:	a30080e7          	jalr	-1488(ra) # 90000e02 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E>
    900003da:	85aa                	mv	a1,a0
    900003dc:	4501                	li	a0,0
    900003de:	0ff5f593          	andi	a1,a1,255
    900003e2:	64a2                	ld	s1,8(sp)
    900003e4:	6442                	ld	s0,16(sp)
    900003e6:	60e2                	ld	ra,24(sp)
    900003e8:	6105                	addi	sp,sp,32
    900003ea:	8082                	ret

00000000900003ec <_ZN2os4trap4init17h6c4ada7d88655b0dE>:
    900003ec:	1141                	addi	sp,sp,-16
    900003ee:	e406                	sd	ra,8(sp)
    900003f0:	e022                	sd	s0,0(sp)
    900003f2:	0800                	addi	s0,sp,16

00000000900003f4 <.LBB1_1>:
    900003f4:	00000517          	auipc	a0,0x0
    900003f8:	f0050513          	addi	a0,a0,-256 # 900002f4 <__alltraps>
    900003fc:	10551073          	csrw	stvec,a0
    90000400:	6402                	ld	s0,0(sp)
    90000402:	60a2                	ld	ra,8(sp)
    90000404:	0141                	addi	sp,sp,16
    90000406:	8082                	ret

0000000090000408 <trap_handler>:
    90000408:	7175                	addi	sp,sp,-144
    9000040a:	e506                	sd	ra,136(sp)
    9000040c:	e122                	sd	s0,128(sp)
    9000040e:	fca6                	sd	s1,120(sp)
    90000410:	f8ca                	sd	s2,112(sp)
    90000412:	0900                	addi	s0,sp,144
    90000414:	14202973          	csrr	s2,scause
    90000418:	f7243c23          	sd	s2,-136(s0)
    9000041c:	143025f3          	csrr	a1,stval
    90000420:	84aa                	mv	s1,a0
    90000422:	f8b43023          	sd	a1,-128(s0)
    90000426:	f7840513          	addi	a0,s0,-136
    9000042a:	00001097          	auipc	ra,0x1
    9000042e:	b10080e7          	jalr	-1264(ra) # 90000f3a <_ZN5riscv8register6scause6Scause4code17h25a276351377520bE>
    90000432:	55fd                	li	a1,-1
    90000434:	0725de63          	bge	a1,s2,900004b0 <.LBB2_16+0x1c>
    90000438:	00001097          	auipc	ra,0x1
    9000043c:	a38080e7          	jalr	-1480(ra) # 90000e70 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E>
    90000440:	0ff57513          	andi	a0,a0,255
    90000444:	459d                	li	a1,7
    90000446:	02b51e63          	bne	a0,a1,90000482 <trap_handler+0x7a>
    9000044a:	1084b503          	ld	a0,264(s1)
    9000044e:	00450713          	addi	a4,a0,4
    90000452:	64d4                	ld	a3,136(s1)
    90000454:	68a8                	ld	a0,80(s1)
    90000456:	6cac                	ld	a1,88(s1)
    90000458:	70b0                	ld	a2,96(s1)
    9000045a:	10e4b423          	sd	a4,264(s1)
    9000045e:	04000713          	li	a4,64
    90000462:	fad43423          	sd	a3,-88(s0)
    90000466:	02e69c63          	bne	a3,a4,9000049e <.LBB2_16+0xa>
    9000046a:	00000097          	auipc	ra,0x0
    9000046e:	1d0080e7          	jalr	464(ra) # 9000063a <_ZN2os7syscall2fs9sys_write17hb2372f39f28320dbE>
    90000472:	e8a8                	sd	a0,80(s1)
    90000474:	8526                	mv	a0,s1
    90000476:	7946                	ld	s2,112(sp)
    90000478:	74e6                	ld	s1,120(sp)
    9000047a:	640a                	ld	s0,128(sp)
    9000047c:	60aa                	ld	ra,136(sp)
    9000047e:	6149                	addi	sp,sp,144
    90000480:	8082                	ret
    90000482:	4589                	li	a1,2
    90000484:	0ab50563          	beq	a0,a1,9000052e <.LBB2_22>
    90000488:	4599                	li	a1,6
    9000048a:	00b50563          	beq	a0,a1,90000494 <.LBB2_16>
    9000048e:	45a9                	li	a1,10
    90000490:	02b51463          	bne	a0,a1,900004b8 <.LBB2_16+0x24>

0000000090000494 <.LBB2_16>:
    90000494:	00008517          	auipc	a0,0x8
    90000498:	d7c50513          	addi	a0,a0,-644 # 90008210 <.Lanon.16129c21127c7c22520f39f83dd3d7da.8>
    9000049c:	a869                	j	90000536 <.LBB2_22+0x8>
    9000049e:	05d00513          	li	a0,93
    900004a2:	0ca69463          	bne	a3,a0,9000056a <.LBB2_23+0x26>
    900004a6:	00000097          	auipc	ra,0x0
    900004aa:	d40080e7          	jalr	-704(ra) # 900001e6 <_ZN2os5batch12run_next_app17h219220bb48d367c5E>
    900004ae:	0000                	unimp
    900004b0:	00001097          	auipc	ra,0x1
    900004b4:	952080e7          	jalr	-1710(ra) # 90000e02 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E>
    900004b8:	f7840513          	addi	a0,s0,-136
    900004bc:	00000097          	auipc	ra,0x0
    900004c0:	eec080e7          	jalr	-276(ra) # 900003a8 <_ZN5riscv8register6scause6Scause5cause17h61bc1e71e5a25ba9E>
    900004c4:	faa40423          	sb	a0,-88(s0)
    900004c8:	fab404a3          	sb	a1,-87(s0)
    900004cc:	fa840513          	addi	a0,s0,-88
    900004d0:	f8a43423          	sd	a0,-120(s0)

00000000900004d4 <.LBB2_17>:
    900004d4:	00001517          	auipc	a0,0x1
    900004d8:	a8050513          	addi	a0,a0,-1408 # 90000f54 <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17hcb018b9018ff1235E>
    900004dc:	f8a43823          	sd	a0,-112(s0)
    900004e0:	f8040513          	addi	a0,s0,-128
    900004e4:	f8a43c23          	sd	a0,-104(s0)

00000000900004e8 <.LBB2_18>:
    900004e8:	00003517          	auipc	a0,0x3
    900004ec:	87a50513          	addi	a0,a0,-1926 # 90002d62 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    900004f0:	faa43023          	sd	a0,-96(s0)

00000000900004f4 <.LBB2_19>:
    900004f4:	00008517          	auipc	a0,0x8
    900004f8:	c2450513          	addi	a0,a0,-988 # 90008118 <.Lanon.16129c21127c7c22520f39f83dd3d7da.3>
    900004fc:	faa43823          	sd	a0,-80(s0)
    90000500:	450d                	li	a0,3
    90000502:	faa43c23          	sd	a0,-72(s0)

0000000090000506 <.LBB2_20>:
    90000506:	00008517          	auipc	a0,0x8
    9000050a:	c4250513          	addi	a0,a0,-958 # 90008148 <.Lanon.16129c21127c7c22520f39f83dd3d7da.4>
    9000050e:	fca43023          	sd	a0,-64(s0)
    90000512:	4509                	li	a0,2
    90000514:	fca43423          	sd	a0,-56(s0)
    90000518:	f8840593          	addi	a1,s0,-120
    9000051c:	fcb43823          	sd	a1,-48(s0)
    90000520:	fca43c23          	sd	a0,-40(s0)

0000000090000524 <.LBB2_21>:
    90000524:	00008597          	auipc	a1,0x8
    90000528:	ca458593          	addi	a1,a1,-860 # 900081c8 <.Lanon.16129c21127c7c22520f39f83dd3d7da.6>
    9000052c:	a8b5                	j	900005a8 <.LBB2_26+0x8>

000000009000052e <.LBB2_22>:
    9000052e:	00008517          	auipc	a0,0x8
    90000532:	d3250513          	addi	a0,a0,-718 # 90008260 <.Lanon.16129c21127c7c22520f39f83dd3d7da.11>
    90000536:	faa43823          	sd	a0,-80(s0)
    9000053a:	4505                	li	a0,1
    9000053c:	faa43c23          	sd	a0,-72(s0)
    90000540:	fc043023          	sd	zero,-64(s0)

0000000090000544 <.LBB2_23>:
    90000544:	00008517          	auipc	a0,0x8
    90000548:	cdc50513          	addi	a0,a0,-804 # 90008220 <.Lanon.16129c21127c7c22520f39f83dd3d7da.10>
    9000054c:	fca43823          	sd	a0,-48(s0)
    90000550:	fc043c23          	sd	zero,-40(s0)
    90000554:	fb040513          	addi	a0,s0,-80
    90000558:	00000097          	auipc	ra,0x0
    9000055c:	7b0080e7          	jalr	1968(ra) # 90000d08 <_ZN2os7console5print17h8c28c37cb0950d91E>
    90000560:	00000097          	auipc	ra,0x0
    90000564:	c86080e7          	jalr	-890(ra) # 900001e6 <_ZN2os5batch12run_next_app17h219220bb48d367c5E>
    90000568:	0000                	unimp
    9000056a:	fa840513          	addi	a0,s0,-88
    9000056e:	f8a43423          	sd	a0,-120(s0)

0000000090000572 <.LBB2_24>:
    90000572:	00003517          	auipc	a0,0x3
    90000576:	afc50513          	addi	a0,a0,-1284 # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    9000057a:	f8a43823          	sd	a0,-112(s0)

000000009000057e <.LBB2_25>:
    9000057e:	00008517          	auipc	a0,0x8
    90000582:	07250513          	addi	a0,a0,114 # 900085f0 <anon.e4e8438ee872072f8d0cec984e1e8d26.1.llvm.2336077547468054441>
    90000586:	faa43823          	sd	a0,-80(s0)
    9000058a:	4505                	li	a0,1
    9000058c:	faa43c23          	sd	a0,-72(s0)
    90000590:	fc043023          	sd	zero,-64(s0)
    90000594:	f8840593          	addi	a1,s0,-120
    90000598:	fcb43823          	sd	a1,-48(s0)
    9000059c:	fca43c23          	sd	a0,-40(s0)

00000000900005a0 <.LBB2_26>:
    900005a0:	00008597          	auipc	a1,0x8
    900005a4:	07858593          	addi	a1,a1,120 # 90008618 <anon.e4e8438ee872072f8d0cec984e1e8d26.3.llvm.2336077547468054441>
    900005a8:	fb040513          	addi	a0,s0,-80
    900005ac:	00001097          	auipc	ra,0x1
    900005b0:	da2080e7          	jalr	-606(ra) # 9000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000900005b6 <rust_main>:
    900005b6:	1141                	addi	sp,sp,-16
    900005b8:	e406                	sd	ra,8(sp)
    900005ba:	e022                	sd	s0,0(sp)
    900005bc:	0800                	addi	s0,sp,16

00000000900005be <.LBB0_3>:
    900005be:	0001d517          	auipc	a0,0x1d
    900005c2:	a4250513          	addi	a0,a0,-1470 # 9001d000 <ebss>

00000000900005c6 <.LBB0_4>:
    900005c6:	0001c597          	auipc	a1,0x1c
    900005ca:	a3a58593          	addi	a1,a1,-1478 # 9001c000 <boot_stack_top>
    900005ce:	00a5f963          	bgeu	a1,a0,900005e0 <.LBB0_4+0x1a>
    900005d2:	00158613          	addi	a2,a1,1
    900005d6:	00058023          	sb	zero,0(a1)
    900005da:	85b2                	mv	a1,a2
    900005dc:	fea66be3          	bltu	a2,a0,900005d2 <.LBB0_4+0xc>
    900005e0:	00000097          	auipc	ra,0x0
    900005e4:	e0c080e7          	jalr	-500(ra) # 900003ec <_ZN2os4trap4init17h6c4ada7d88655b0dE>
    900005e8:	00000097          	auipc	ra,0x0
    900005ec:	bae080e7          	jalr	-1106(ra) # 90000196 <_ZN2os5batch4init17h53107c46faa69cb8E>
    900005f0:	00000097          	auipc	ra,0x0
    900005f4:	bf6080e7          	jalr	-1034(ra) # 900001e6 <_ZN2os5batch12run_next_app17h219220bb48d367c5E>
	...

00000000900005fa <_ZN2os3sbi8shutdown17h7ebfb538db979bc8E>:
    900005fa:	1141                	addi	sp,sp,-16
    900005fc:	e406                	sd	ra,8(sp)
    900005fe:	e022                	sd	s0,0(sp)
    90000600:	0800                	addi	s0,sp,16
    90000602:	48a1                	li	a7,8
    90000604:	4501                	li	a0,0
    90000606:	4581                	li	a1,0
    90000608:	4601                	li	a2,0
    9000060a:	00000073          	ecall

000000009000060e <.LBB1_1>:
    9000060e:	00008517          	auipc	a0,0x8
    90000612:	c6250513          	addi	a0,a0,-926 # 90008270 <anon.2b3a083f86e8f65d0611f41e3a8a2be0.0.llvm.3597235521690418926>

0000000090000616 <.LBB1_2>:
    90000616:	00008617          	auipc	a2,0x8
    9000061a:	c7a60613          	addi	a2,a2,-902 # 90008290 <anon.2b3a083f86e8f65d0611f41e3a8a2be0.2.llvm.3597235521690418926>
    9000061e:	45cd                	li	a1,19
    90000620:	00001097          	auipc	ra,0x1
    90000624:	cc2080e7          	jalr	-830(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000009000062a <_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17hab50f443445cc63fE.llvm.11687005045712755133>:
    9000062a:	1141                	addi	sp,sp,-16
    9000062c:	e406                	sd	ra,8(sp)
    9000062e:	e022                	sd	s0,0(sp)
    90000630:	0800                	addi	s0,sp,16
    90000632:	6402                	ld	s0,0(sp)
    90000634:	60a2                	ld	ra,8(sp)
    90000636:	0141                	addi	sp,sp,16
    90000638:	8082                	ret

000000009000063a <_ZN2os7syscall2fs9sys_write17hb2372f39f28320dbE>:
    9000063a:	7119                	addi	sp,sp,-128
    9000063c:	fc86                	sd	ra,120(sp)
    9000063e:	f8a2                	sd	s0,112(sp)
    90000640:	f4a6                	sd	s1,104(sp)
    90000642:	f0ca                	sd	s2,96(sp)
    90000644:	0100                	addi	s0,sp,128
    90000646:	84b2                	mv	s1,a2
    90000648:	862a                	mv	a2,a0
    9000064a:	4685                	li	a3,1
    9000064c:	557d                	li	a0,-1
    9000064e:	0ad61e63          	bne	a2,a3,9000070a <.LBB1_13+0x1c>

0000000090000652 <.LBB1_10>:
    90000652:	00007697          	auipc	a3,0x7
    90000656:	9ae68693          	addi	a3,a3,-1618 # 90007000 <_ZN2os5batch10USER_STACK17h57e023ea41d6e6faE.llvm.1193307735727972488>
    9000065a:	00d5b633          	sltu	a2,a1,a3
    9000065e:	00164713          	xori	a4,a2,1
    90000662:	00958633          	add	a2,a1,s1
    90000666:	6785                	lui	a5,0x1
    90000668:	96be                	add	a3,a3,a5
    9000066a:	00d636b3          	sltu	a3,a2,a3
    9000066e:	8ef9                	and	a3,a3,a4
    90000670:	ee91                	bnez	a3,9000068c <.LBB1_10+0x3a>
    90000672:	0165d693          	srli	a3,a1,0x16
    90000676:	2416b693          	sltiu	a3,a3,577
    9000067a:	6715                	lui	a4,0x5
    9000067c:	8217071b          	addiw	a4,a4,-2015
    90000680:	0746                	slli	a4,a4,0x11
    90000682:	177d                	addi	a4,a4,-1
    90000684:	00c73633          	sltu	a2,a4,a2
    90000688:	8e55                	or	a2,a2,a3
    9000068a:	e241                	bnez	a2,9000070a <.LBB1_13+0x1c>
    9000068c:	fb040913          	addi	s2,s0,-80
    90000690:	854a                	mv	a0,s2
    90000692:	8626                	mv	a2,s1
    90000694:	00002097          	auipc	ra,0x2
    90000698:	ef2080e7          	jalr	-270(ra) # 90002586 <_ZN4core3str8converts9from_utf817h36a155da9055aca2E>
    9000069c:	fb043583          	ld	a1,-80(s0)
    900006a0:	4505                	li	a0,1
    900006a2:	06a58a63          	beq	a1,a0,90000716 <.LBB1_13+0x28>
    900006a6:	fb843583          	ld	a1,-72(s0)
    900006aa:	fc043603          	ld	a2,-64(s0)
    900006ae:	f8b43423          	sd	a1,-120(s0)
    900006b2:	f8c43823          	sd	a2,-112(s0)
    900006b6:	f8840593          	addi	a1,s0,-120
    900006ba:	f8b43c23          	sd	a1,-104(s0)

00000000900006be <.LBB1_11>:
    900006be:	00000597          	auipc	a1,0x0
    900006c2:	6ca58593          	addi	a1,a1,1738 # 90000d88 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h013e11055eb3fc78E>
    900006c6:	fab43023          	sd	a1,-96(s0)
    900006ca:	fb243423          	sd	s2,-88(s0)

00000000900006ce <.LBB1_12>:
    900006ce:	00008597          	auipc	a1,0x8
    900006d2:	c5a58593          	addi	a1,a1,-934 # 90008328 <anon.4d737d5c66dae8371cb2648890a108b4.5.llvm.11687005045712755133>
    900006d6:	fab43823          	sd	a1,-80(s0)
    900006da:	faa43c23          	sd	a0,-72(s0)
    900006de:	fc043023          	sd	zero,-64(s0)
    900006e2:	f9840593          	addi	a1,s0,-104
    900006e6:	fcb43823          	sd	a1,-48(s0)
    900006ea:	fca43c23          	sd	a0,-40(s0)

00000000900006ee <.LBB1_13>:
    900006ee:	00008597          	auipc	a1,0x8
    900006f2:	e4258593          	addi	a1,a1,-446 # 90008530 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    900006f6:	fa840513          	addi	a0,s0,-88
    900006fa:	fb040613          	addi	a2,s0,-80
    900006fe:	00001097          	auipc	ra,0x1
    90000702:	2e8080e7          	jalr	744(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000706:	ed1d                	bnez	a0,90000744 <.LBB1_17>
    90000708:	8526                	mv	a0,s1
    9000070a:	7906                	ld	s2,96(sp)
    9000070c:	74a6                	ld	s1,104(sp)
    9000070e:	7446                	ld	s0,112(sp)
    90000710:	70e6                	ld	ra,120(sp)
    90000712:	6109                	addi	sp,sp,128
    90000714:	8082                	ret
    90000716:	fc043503          	ld	a0,-64(s0)
    9000071a:	fb843583          	ld	a1,-72(s0)
    9000071e:	faa43023          	sd	a0,-96(s0)
    90000722:	f8b43c23          	sd	a1,-104(s0)

0000000090000726 <.LBB1_14>:
    90000726:	00008517          	auipc	a0,0x8
    9000072a:	b8250513          	addi	a0,a0,-1150 # 900082a8 <anon.4d737d5c66dae8371cb2648890a108b4.0.llvm.11687005045712755133>

000000009000072e <.LBB1_15>:
    9000072e:	00008697          	auipc	a3,0x8
    90000732:	baa68693          	addi	a3,a3,-1110 # 900082d8 <anon.4d737d5c66dae8371cb2648890a108b4.1.llvm.11687005045712755133>

0000000090000736 <.LBB1_16>:
    90000736:	00008717          	auipc	a4,0x8
    9000073a:	bda70713          	addi	a4,a4,-1062 # 90008310 <anon.4d737d5c66dae8371cb2648890a108b4.3.llvm.11687005045712755133>
    9000073e:	f9840613          	addi	a2,s0,-104
    90000742:	a839                	j	90000760 <.LBB1_19+0xc>

0000000090000744 <.LBB1_17>:
    90000744:	00008517          	auipc	a0,0x8
    90000748:	e1c50513          	addi	a0,a0,-484 # 90008560 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

000000009000074c <.LBB1_18>:
    9000074c:	00008697          	auipc	a3,0x8
    90000750:	e4468693          	addi	a3,a3,-444 # 90008590 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

0000000090000754 <.LBB1_19>:
    90000754:	00008717          	auipc	a4,0x8
    90000758:	e6c70713          	addi	a4,a4,-404 # 900085c0 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    9000075c:	fb040613          	addi	a2,s0,-80
    90000760:	02b00593          	li	a1,43
    90000764:	00001097          	auipc	ra,0x1
    90000768:	b1e080e7          	jalr	-1250(ra) # 90001282 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

000000009000076e <rust_begin_unwind>:
    9000076e:	7171                	addi	sp,sp,-176
    90000770:	f506                	sd	ra,168(sp)
    90000772:	f122                	sd	s0,160(sp)
    90000774:	ed26                	sd	s1,152(sp)
    90000776:	e94a                	sd	s2,144(sp)
    90000778:	1900                	addi	s0,sp,176
    9000077a:	892a                	mv	s2,a0
    9000077c:	00001097          	auipc	ra,0x1
    90000780:	b56080e7          	jalr	-1194(ra) # 900012d2 <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>
    90000784:	e515                	bnez	a0,900007b0 <.LBB0_10+0x16>
    90000786:	854a                	mv	a0,s2
    90000788:	00001097          	auipc	ra,0x1
    9000078c:	b46080e7          	jalr	-1210(ra) # 900012ce <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    90000790:	e52d                	bnez	a0,900007fa <.LBB0_12+0x16>

0000000090000792 <.LBB0_9>:
    90000792:	00008517          	auipc	a0,0x8
    90000796:	ba650513          	addi	a0,a0,-1114 # 90008338 <.Lanon.86a3613c128665d32fc75176e6ae67c2.0>

000000009000079a <.LBB0_10>:
    9000079a:	00008617          	auipc	a2,0x8
    9000079e:	c1660613          	addi	a2,a2,-1002 # 900083b0 <.Lanon.86a3613c128665d32fc75176e6ae67c2.5>
    900007a2:	02b00593          	li	a1,43
    900007a6:	00001097          	auipc	ra,0x1
    900007aa:	b3c080e7          	jalr	-1220(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    900007ae:	0000                	unimp
    900007b0:	84aa                	mv	s1,a0
    900007b2:	00001097          	auipc	ra,0x1
    900007b6:	b24080e7          	jalr	-1244(ra) # 900012d6 <_ZN4core5panic8Location4file17h3a63c909928b6622E>
    900007ba:	f8a43423          	sd	a0,-120(s0)
    900007be:	f8b43823          	sd	a1,-112(s0)
    900007c2:	8526                	mv	a0,s1
    900007c4:	00001097          	auipc	ra,0x1
    900007c8:	b1a080e7          	jalr	-1254(ra) # 900012de <_ZN4core5panic8Location4line17h438064cf29667b6aE>
    900007cc:	f8a42e23          	sw	a0,-100(s0)
    900007d0:	854a                	mv	a0,s2
    900007d2:	00001097          	auipc	ra,0x1
    900007d6:	afc080e7          	jalr	-1284(ra) # 900012ce <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    900007da:	e541                	bnez	a0,90000862 <.LBB0_15+0x24>

00000000900007dc <.LBB0_11>:
    900007dc:	00008517          	auipc	a0,0x8
    900007e0:	b5c50513          	addi	a0,a0,-1188 # 90008338 <.Lanon.86a3613c128665d32fc75176e6ae67c2.0>

00000000900007e4 <.LBB0_12>:
    900007e4:	00008617          	auipc	a2,0x8
    900007e8:	c3c60613          	addi	a2,a2,-964 # 90008420 <.Lanon.86a3613c128665d32fc75176e6ae67c2.10>
    900007ec:	02b00593          	li	a1,43
    900007f0:	00001097          	auipc	ra,0x1
    900007f4:	af2080e7          	jalr	-1294(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    900007f8:	0000                	unimp
    900007fa:	faa43423          	sd	a0,-88(s0)
    900007fe:	fa840513          	addi	a0,s0,-88
    90000802:	f4a43c23          	sd	a0,-168(s0)

0000000090000806 <.LBB0_13>:
    90000806:	00000517          	auipc	a0,0x0
    9000080a:	5a450513          	addi	a0,a0,1444 # 90000daa <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3cffa91ed33bac73E>
    9000080e:	f6a43023          	sd	a0,-160(s0)
    90000812:	fb040513          	addi	a0,s0,-80
    90000816:	f8a43423          	sd	a0,-120(s0)

000000009000081a <.LBB0_14>:
    9000081a:	00008517          	auipc	a0,0x8
    9000081e:	b5e50513          	addi	a0,a0,-1186 # 90008378 <.Lanon.86a3613c128665d32fc75176e6ae67c2.3>
    90000822:	faa43823          	sd	a0,-80(s0)
    90000826:	4509                	li	a0,2
    90000828:	faa43c23          	sd	a0,-72(s0)
    9000082c:	fc043023          	sd	zero,-64(s0)
    90000830:	f5840513          	addi	a0,s0,-168
    90000834:	fca43823          	sd	a0,-48(s0)
    90000838:	4505                	li	a0,1
    9000083a:	fca43c23          	sd	a0,-40(s0)

000000009000083e <.LBB0_15>:
    9000083e:	00008597          	auipc	a1,0x8
    90000842:	cf258593          	addi	a1,a1,-782 # 90008530 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000846:	f8840513          	addi	a0,s0,-120
    9000084a:	fb040613          	addi	a2,s0,-80
    9000084e:	00001097          	auipc	ra,0x1
    90000852:	198080e7          	jalr	408(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000856:	e949                	bnez	a0,900008e8 <.LBB0_21>
    90000858:	00000097          	auipc	ra,0x0
    9000085c:	da2080e7          	jalr	-606(ra) # 900005fa <_ZN2os3sbi8shutdown17h7ebfb538db979bc8E>
    90000860:	0000                	unimp
    90000862:	faa43023          	sd	a0,-96(s0)
    90000866:	f8840513          	addi	a0,s0,-120
    9000086a:	f4a43c23          	sd	a0,-168(s0)

000000009000086e <.LBB0_16>:
    9000086e:	00000517          	auipc	a0,0x0
    90000872:	51a50513          	addi	a0,a0,1306 # 90000d88 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h013e11055eb3fc78E>
    90000876:	f6a43023          	sd	a0,-160(s0)
    9000087a:	f9c40513          	addi	a0,s0,-100
    9000087e:	f6a43423          	sd	a0,-152(s0)

0000000090000882 <.LBB0_17>:
    90000882:	00002517          	auipc	a0,0x2
    90000886:	63050513          	addi	a0,a0,1584 # 90002eb2 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>
    9000088a:	f6a43823          	sd	a0,-144(s0)
    9000088e:	fa040513          	addi	a0,s0,-96
    90000892:	f6a43c23          	sd	a0,-136(s0)

0000000090000896 <.LBB0_18>:
    90000896:	00000517          	auipc	a0,0x0
    9000089a:	51450513          	addi	a0,a0,1300 # 90000daa <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3cffa91ed33bac73E>
    9000089e:	f8a43023          	sd	a0,-128(s0)
    900008a2:	fb040513          	addi	a0,s0,-80
    900008a6:	faa43423          	sd	a0,-88(s0)

00000000900008aa <.LBB0_19>:
    900008aa:	00008517          	auipc	a0,0x8
    900008ae:	b3650513          	addi	a0,a0,-1226 # 900083e0 <.Lanon.86a3613c128665d32fc75176e6ae67c2.9>
    900008b2:	faa43823          	sd	a0,-80(s0)
    900008b6:	4511                	li	a0,4
    900008b8:	faa43c23          	sd	a0,-72(s0)
    900008bc:	fc043023          	sd	zero,-64(s0)
    900008c0:	f5840513          	addi	a0,s0,-168
    900008c4:	fca43823          	sd	a0,-48(s0)
    900008c8:	450d                	li	a0,3
    900008ca:	fca43c23          	sd	a0,-40(s0)

00000000900008ce <.LBB0_20>:
    900008ce:	00008597          	auipc	a1,0x8
    900008d2:	c6258593          	addi	a1,a1,-926 # 90008530 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    900008d6:	fa840513          	addi	a0,s0,-88
    900008da:	fb040613          	addi	a2,s0,-80
    900008de:	00001097          	auipc	ra,0x1
    900008e2:	108080e7          	jalr	264(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    900008e6:	d92d                	beqz	a0,90000858 <.LBB0_15+0x1a>

00000000900008e8 <.LBB0_21>:
    900008e8:	00008517          	auipc	a0,0x8
    900008ec:	c7850513          	addi	a0,a0,-904 # 90008560 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

00000000900008f0 <.LBB0_22>:
    900008f0:	00008697          	auipc	a3,0x8
    900008f4:	ca068693          	addi	a3,a3,-864 # 90008590 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

00000000900008f8 <.LBB0_23>:
    900008f8:	00008717          	auipc	a4,0x8
    900008fc:	cc870713          	addi	a4,a4,-824 # 900085c0 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    90000900:	fb040613          	addi	a2,s0,-80
    90000904:	02b00593          	li	a1,43
    90000908:	00001097          	auipc	ra,0x1
    9000090c:	97a080e7          	jalr	-1670(ra) # 90001282 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000912 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE>:
    90000912:	714d                	addi	sp,sp,-336
    90000914:	e686                	sd	ra,328(sp)
    90000916:	e2a2                	sd	s0,320(sp)
    90000918:	fe26                	sd	s1,312(sp)
    9000091a:	fa4a                	sd	s2,304(sp)
    9000091c:	f64e                	sd	s3,296(sp)
    9000091e:	f252                	sd	s4,288(sp)
    90000920:	0a80                	addi	s0,sp,336
    90000922:	84aa                	mv	s1,a0
    90000924:	0330000f          	fence	rw,rw
    90000928:	6108                	ld	a0,0(a0)
    9000092a:	0230000f          	fence	r,rw
    9000092e:	e555                	bnez	a0,900009da <.LBB0_14+0x92>
    90000930:	4585                	li	a1,1
    90000932:	1604b52f          	lr.d.aqrl	a0,(s1)
    90000936:	e501                	bnez	a0,9000093e <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE+0x2c>
    90000938:	1eb4b62f          	sc.d.aqrl	a2,a1,(s1)
    9000093c:	fa7d                	bnez	a2,90000932 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb825d27ba1977edaE+0x20>
    9000093e:	ed51                	bnez	a0,900009da <.LBB0_14+0x92>
    90000940:	ea943823          	sd	s1,-336(s0)
    90000944:	eab40c23          	sb	a1,-328(s0)

0000000090000948 <.LBB0_14>:
    90000948:	00009917          	auipc	s2,0x9
    9000094c:	6b890913          	addi	s2,s2,1720 # 9000a000 <erodata>
    90000950:	00093a03          	ld	s4,0(s2)
    90000954:	f4840513          	addi	a0,s0,-184
    90000958:	08800613          	li	a2,136
    9000095c:	4581                	li	a1,0
    9000095e:	00003097          	auipc	ra,0x3
    90000962:	d96080e7          	jalr	-618(ra) # 900036f4 <memset>
    90000966:	001a0513          	addi	a0,s4,1
    9000096a:	0d456e63          	bltu	a0,s4,90000a46 <.LBB0_19>
    9000096e:	45c5                	li	a1,17
    90000970:	0eba7463          	bgeu	s4,a1,90000a58 <.LBB0_20>
    90000974:	00351613          	slli	a2,a0,0x3
    90000978:	00890593          	addi	a1,s2,8
    9000097c:	f4840913          	addi	s2,s0,-184
    90000980:	854a                	mv	a0,s2
    90000982:	00003097          	auipc	ra,0x3
    90000986:	d5c080e7          	jalr	-676(ra) # 900036de <memcpy>
    9000098a:	ec040993          	addi	s3,s0,-320
    9000098e:	08800613          	li	a2,136
    90000992:	854e                	mv	a0,s3
    90000994:	85ca                	mv	a1,s2
    90000996:	00003097          	auipc	ra,0x3
    9000099a:	d48080e7          	jalr	-696(ra) # 900036de <memcpy>
    9000099e:	4505                	li	a0,1
    900009a0:	e488                	sd	a0,8(s1)
    900009a2:	0004b823          	sd	zero,16(s1)
    900009a6:	0144bc23          	sd	s4,24(s1)
    900009aa:	0204b023          	sd	zero,32(s1)
    900009ae:	02848513          	addi	a0,s1,40
    900009b2:	08800613          	li	a2,136
    900009b6:	85ce                	mv	a1,s3
    900009b8:	00003097          	auipc	ra,0x3
    900009bc:	d26080e7          	jalr	-730(ra) # 900036de <memcpy>
    900009c0:	ea040c23          	sb	zero,-328(s0)
    900009c4:	0310000f          	fence	rw,w
    900009c8:	4509                	li	a0,2
    900009ca:	e088                	sd	a0,0(s1)
    900009cc:	eb040513          	addi	a0,s0,-336
    900009d0:	00000097          	auipc	ra,0x0
    900009d4:	7e8080e7          	jalr	2024(ra) # 900011b8 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>
    900009d8:	a005                	j	900009f8 <.LBB0_14+0xb0>
    900009da:	4585                	li	a1,1
    900009dc:	00a5cb63          	blt	a1,a0,900009f2 <.LBB0_14+0xaa>
    900009e0:	02b51663          	bne	a0,a1,90000a0c <.LBB0_15>
    900009e4:	0330000f          	fence	rw,rw
    900009e8:	6088                	ld	a0,0(s1)
    900009ea:	0230000f          	fence	r,rw
    900009ee:	fea5d9e3          	bge	a1,a0,900009e0 <.LBB0_14+0x98>
    900009f2:	4589                	li	a1,2
    900009f4:	02b51b63          	bne	a0,a1,90000a2a <.LBB0_17>
    900009f8:	01048513          	addi	a0,s1,16
    900009fc:	7a12                	ld	s4,288(sp)
    900009fe:	79b2                	ld	s3,296(sp)
    90000a00:	7952                	ld	s2,304(sp)
    90000a02:	74f2                	ld	s1,312(sp)
    90000a04:	6416                	ld	s0,320(sp)
    90000a06:	60b6                	ld	ra,328(sp)
    90000a08:	6171                	addi	sp,sp,336
    90000a0a:	8082                	ret

0000000090000a0c <.LBB0_15>:
    90000a0c:	00008517          	auipc	a0,0x8
    90000a10:	abc50513          	addi	a0,a0,-1348 # 900084c8 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.3.llvm.16892965281369196021>

0000000090000a14 <.LBB0_16>:
    90000a14:	00008617          	auipc	a2,0x8
    90000a18:	adc60613          	addi	a2,a2,-1316 # 900084f0 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.4.llvm.16892965281369196021>
    90000a1c:	02800593          	li	a1,40
    90000a20:	00001097          	auipc	ra,0x1
    90000a24:	8c2080e7          	jalr	-1854(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000a2a <.LBB0_17>:
    90000a2a:	00008517          	auipc	a0,0x8
    90000a2e:	a0e50513          	addi	a0,a0,-1522 # 90008438 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.0.llvm.16892965281369196021>

0000000090000a32 <.LBB0_18>:
    90000a32:	00008617          	auipc	a2,0x8
    90000a36:	a7e60613          	addi	a2,a2,-1410 # 900084b0 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.2.llvm.16892965281369196021>
    90000a3a:	45c5                	li	a1,17
    90000a3c:	00001097          	auipc	ra,0x1
    90000a40:	8a6080e7          	jalr	-1882(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090000a46 <.LBB0_19>:
    90000a46:	00008517          	auipc	a0,0x8
    90000a4a:	ad250513          	addi	a0,a0,-1326 # 90008518 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.6.llvm.16892965281369196021>
    90000a4e:	00002097          	auipc	ra,0x2
    90000a52:	b1c080e7          	jalr	-1252(ra) # 9000256a <_ZN4core5slice5index29slice_end_index_overflow_fail17h5ff2b53285909b6aE>
	...

0000000090000a58 <.LBB0_20>:
    90000a58:	00008617          	auipc	a2,0x8
    90000a5c:	ac060613          	addi	a2,a2,-1344 # 90008518 <anon.e0c0503b2e4bb2abd0b3d795d29915d1.6.llvm.16892965281369196021>
    90000a60:	45c5                	li	a1,17
    90000a62:	00002097          	auipc	ra,0x2
    90000a66:	a88080e7          	jalr	-1400(ra) # 900024ea <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
	...

0000000090000a6c <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hfa677e73d0acd94aE.llvm.14678122160713693238>:
    90000a6c:	1141                	addi	sp,sp,-16
    90000a6e:	e406                	sd	ra,8(sp)
    90000a70:	e022                	sd	s0,0(sp)
    90000a72:	0800                	addi	s0,sp,16
    90000a74:	6402                	ld	s0,0(sp)
    90000a76:	60a2                	ld	ra,8(sp)
    90000a78:	0141                	addi	sp,sp,16
    90000a7a:	8082                	ret

0000000090000a7c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238>:
    90000a7c:	1101                	addi	sp,sp,-32
    90000a7e:	ec06                	sd	ra,24(sp)
    90000a80:	e822                	sd	s0,16(sp)
    90000a82:	1000                	addi	s0,sp,32
    90000a84:	0005851b          	sext.w	a0,a1
    90000a88:	08000613          	li	a2,128
    90000a8c:	fe042623          	sw	zero,-20(s0)
    90000a90:	00c57663          	bgeu	a0,a2,90000a9c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x20>
    90000a94:	feb40623          	sb	a1,-20(s0)
    90000a98:	4505                	li	a0,1
    90000a9a:	a859                	j	90000b30 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xb4>
    90000a9c:	00b5d51b          	srliw	a0,a1,0xb
    90000aa0:	e105                	bnez	a0,90000ac0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x44>
    90000aa2:	0065d513          	srli	a0,a1,0x6
    90000aa6:	03f5f593          	andi	a1,a1,63
    90000aaa:	fc056613          	ori	a2,a0,-64
    90000aae:	fec40623          	sb	a2,-20(s0)
    90000ab2:	0805e513          	ori	a0,a1,128
    90000ab6:	fea406a3          	sb	a0,-19(s0)
    90000aba:	4509                	li	a0,2
    90000abc:	85b2                	mv	a1,a2
    90000abe:	a88d                	j	90000b30 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xb4>
    90000ac0:	0105d51b          	srliw	a0,a1,0x10
    90000ac4:	e905                	bnez	a0,90000af4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x78>
    90000ac6:	00c5d51b          	srliw	a0,a1,0xc
    90000aca:	0065d61b          	srliw	a2,a1,0x6
    90000ace:	03f5f593          	andi	a1,a1,63
    90000ad2:	fe056693          	ori	a3,a0,-32
    90000ad6:	fed40623          	sb	a3,-20(s0)
    90000ada:	03f67513          	andi	a0,a2,63
    90000ade:	08056513          	ori	a0,a0,128
    90000ae2:	fea406a3          	sb	a0,-19(s0)
    90000ae6:	0805e513          	ori	a0,a1,128
    90000aea:	fea40723          	sb	a0,-18(s0)
    90000aee:	450d                	li	a0,3
    90000af0:	85b6                	mv	a1,a3
    90000af2:	a83d                	j	90000b30 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xb4>
    90000af4:	0125d51b          	srliw	a0,a1,0x12
    90000af8:	00c5d61b          	srliw	a2,a1,0xc
    90000afc:	0065d69b          	srliw	a3,a1,0x6
    90000b00:	03f5f593          	andi	a1,a1,63
    90000b04:	ff056713          	ori	a4,a0,-16
    90000b08:	fee40623          	sb	a4,-20(s0)
    90000b0c:	03f67513          	andi	a0,a2,63
    90000b10:	08056513          	ori	a0,a0,128
    90000b14:	fea406a3          	sb	a0,-19(s0)
    90000b18:	03f6f513          	andi	a0,a3,63
    90000b1c:	08056513          	ori	a0,a0,128
    90000b20:	fea40723          	sb	a0,-18(s0)
    90000b24:	0805e513          	ori	a0,a1,128
    90000b28:	fea407a3          	sb	a0,-17(s0)
    90000b2c:	4511                	li	a0,4
    90000b2e:	85ba                	mv	a1,a4
    90000b30:	fec40613          	addi	a2,s0,-20
    90000b34:	00a607b3          	add	a5,a2,a0
    90000b38:	0e000393          	li	t2,224
    90000b3c:	0f000313          	li	t1,240
    90000b40:	001c0837          	lui	a6,0x1c0
    90000b44:	001102b7          	lui	t0,0x110
    90000b48:	4885                	li	a7,1
    90000b4a:	00160693          	addi	a3,a2,1
    90000b4e:	03859513          	slli	a0,a1,0x38
    90000b52:	43855713          	srai	a4,a0,0x38
    90000b56:	0ff5f513          	andi	a0,a1,255
    90000b5a:	06075d63          	bgez	a4,90000bd4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x158>
    90000b5e:	02f68e63          	beq	a3,a5,90000b9a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x11e>
    90000b62:	00164703          	lbu	a4,1(a2)
    90000b66:	00260693          	addi	a3,a2,2
    90000b6a:	03f77613          	andi	a2,a4,63
    90000b6e:	89fd                	andi	a1,a1,31
    90000b70:	02756a63          	bltu	a0,t2,90000ba4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x128>
    90000b74:	02f68c63          	beq	a3,a5,90000bac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x130>
    90000b78:	0006c703          	lbu	a4,0(a3)
    90000b7c:	0685                	addi	a3,a3,1
    90000b7e:	03f77713          	andi	a4,a4,63
    90000b82:	061a                	slli	a2,a2,0x6
    90000b84:	8e59                	or	a2,a2,a4
    90000b86:	02656963          	bltu	a0,t1,90000bb8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x13c>
    90000b8a:	02f68b63          	beq	a3,a5,90000bc0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x144>
    90000b8e:	0006c503          	lbu	a0,0(a3)
    90000b92:	0685                	addi	a3,a3,1
    90000b94:	03f57513          	andi	a0,a0,63
    90000b98:	a035                	j	90000bc4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x148>
    90000b9a:	4601                	li	a2,0
    90000b9c:	86be                	mv	a3,a5
    90000b9e:	89fd                	andi	a1,a1,31
    90000ba0:	fc757ae3          	bgeu	a0,t2,90000b74 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xf8>
    90000ba4:	00659513          	slli	a0,a1,0x6
    90000ba8:	8d51                	or	a0,a0,a2
    90000baa:	a02d                	j	90000bd4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x158>
    90000bac:	4701                	li	a4,0
    90000bae:	86be                	mv	a3,a5
    90000bb0:	061a                	slli	a2,a2,0x6
    90000bb2:	8e59                	or	a2,a2,a4
    90000bb4:	fc657be3          	bgeu	a0,t1,90000b8a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x10e>
    90000bb8:	00c59513          	slli	a0,a1,0xc
    90000bbc:	8d51                	or	a0,a0,a2
    90000bbe:	a819                	j	90000bd4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x158>
    90000bc0:	4501                	li	a0,0
    90000bc2:	86be                	mv	a3,a5
    90000bc4:	05ca                	slli	a1,a1,0x12
    90000bc6:	0105f5b3          	and	a1,a1,a6
    90000bca:	061a                	slli	a2,a2,0x6
    90000bcc:	8dd1                	or	a1,a1,a2
    90000bce:	8d4d                	or	a0,a0,a1
    90000bd0:	00550c63          	beq	a0,t0,90000be8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x16c>
    90000bd4:	4581                	li	a1,0
    90000bd6:	4601                	li	a2,0
    90000bd8:	00000073          	ecall
    90000bdc:	00f68663          	beq	a3,a5,90000be8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0x16c>
    90000be0:	0006c583          	lbu	a1,0(a3)
    90000be4:	8636                	mv	a2,a3
    90000be6:	b795                	j	90000b4a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4faf243f4042f78eE.llvm.14678122160713693238+0xce>
    90000be8:	4501                	li	a0,0
    90000bea:	6442                	ld	s0,16(sp)
    90000bec:	60e2                	ld	ra,24(sp)
    90000bee:	6105                	addi	sp,sp,32
    90000bf0:	8082                	ret

0000000090000bf2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h91066db99e541c9aE.llvm.14678122160713693238>:
    90000bf2:	715d                	addi	sp,sp,-80
    90000bf4:	e486                	sd	ra,72(sp)
    90000bf6:	e0a2                	sd	s0,64(sp)
    90000bf8:	0880                	addi	s0,sp,80
    90000bfa:	6108                	ld	a0,0(a0)
    90000bfc:	7590                	ld	a2,40(a1)
    90000bfe:	7194                	ld	a3,32(a1)
    90000c00:	faa43c23          	sd	a0,-72(s0)
    90000c04:	fec43423          	sd	a2,-24(s0)
    90000c08:	fed43023          	sd	a3,-32(s0)
    90000c0c:	6d88                	ld	a0,24(a1)
    90000c0e:	6990                	ld	a2,16(a1)
    90000c10:	6594                	ld	a3,8(a1)
    90000c12:	618c                	ld	a1,0(a1)
    90000c14:	fca43c23          	sd	a0,-40(s0)
    90000c18:	fcc43823          	sd	a2,-48(s0)
    90000c1c:	fcd43423          	sd	a3,-56(s0)
    90000c20:	fcb43023          	sd	a1,-64(s0)

0000000090000c24 <.LBB2_1>:
    90000c24:	00008597          	auipc	a1,0x8
    90000c28:	90c58593          	addi	a1,a1,-1780 # 90008530 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000c2c:	fb840513          	addi	a0,s0,-72
    90000c30:	fc040613          	addi	a2,s0,-64
    90000c34:	00001097          	auipc	ra,0x1
    90000c38:	db2080e7          	jalr	-590(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000c3c:	6406                	ld	s0,64(sp)
    90000c3e:	60a6                	ld	ra,72(sp)
    90000c40:	6161                	addi	sp,sp,80
    90000c42:	8082                	ret

0000000090000c44 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238>:
    90000c44:	1141                	addi	sp,sp,-16
    90000c46:	e406                	sd	ra,8(sp)
    90000c48:	e022                	sd	s0,0(sp)
    90000c4a:	0800                	addi	s0,sp,16
    90000c4c:	ca4d                	beqz	a2,90000cfe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0xba>
    90000c4e:	00c587b3          	add	a5,a1,a2
    90000c52:	0e000393          	li	t2,224
    90000c56:	0f000313          	li	t1,240
    90000c5a:	001c0837          	lui	a6,0x1c0
    90000c5e:	001102b7          	lui	t0,0x110
    90000c62:	4885                	li	a7,1
    90000c64:	a819                	j	90000c7a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x36>
    90000c66:	00659513          	slli	a0,a1,0x6
    90000c6a:	8d51                	or	a0,a0,a2
    90000c6c:	4581                	li	a1,0
    90000c6e:	4601                	li	a2,0
    90000c70:	00000073          	ecall
    90000c74:	85b6                	mv	a1,a3
    90000c76:	08f68463          	beq	a3,a5,90000cfe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0xba>
    90000c7a:	00058603          	lb	a2,0(a1)
    90000c7e:	00158693          	addi	a3,a1,1
    90000c82:	0ff67513          	andi	a0,a2,255
    90000c86:	fe0653e3          	bgez	a2,90000c6c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x28>
    90000c8a:	00f68d63          	beq	a3,a5,90000ca4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x60>
    90000c8e:	0015c603          	lbu	a2,1(a1)
    90000c92:	00258693          	addi	a3,a1,2
    90000c96:	03f67613          	andi	a2,a2,63
    90000c9a:	01f57593          	andi	a1,a0,31
    90000c9e:	fc7564e3          	bltu	a0,t2,90000c66 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x22>
    90000ca2:	a039                	j	90000cb0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x6c>
    90000ca4:	4601                	li	a2,0
    90000ca6:	86be                	mv	a3,a5
    90000ca8:	01f57593          	andi	a1,a0,31
    90000cac:	fa756de3          	bltu	a0,t2,90000c66 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x22>
    90000cb0:	02f68363          	beq	a3,a5,90000cd6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x92>
    90000cb4:	0006c703          	lbu	a4,0(a3)
    90000cb8:	0685                	addi	a3,a3,1
    90000cba:	03f77713          	andi	a4,a4,63
    90000cbe:	061a                	slli	a2,a2,0x6
    90000cc0:	8e59                	or	a2,a2,a4
    90000cc2:	02656063          	bltu	a0,t1,90000ce2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x9e>
    90000cc6:	02f68263          	beq	a3,a5,90000cea <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0xa6>
    90000cca:	0006c503          	lbu	a0,0(a3)
    90000cce:	0685                	addi	a3,a3,1
    90000cd0:	03f57513          	andi	a0,a0,63
    90000cd4:	a829                	j	90000cee <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0xaa>
    90000cd6:	4701                	li	a4,0
    90000cd8:	86be                	mv	a3,a5
    90000cda:	061a                	slli	a2,a2,0x6
    90000cdc:	8e59                	or	a2,a2,a4
    90000cde:	fe6574e3          	bgeu	a0,t1,90000cc6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x82>
    90000ce2:	00c59513          	slli	a0,a1,0xc
    90000ce6:	8d51                	or	a0,a0,a2
    90000ce8:	b751                	j	90000c6c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x28>
    90000cea:	4501                	li	a0,0
    90000cec:	86be                	mv	a3,a5
    90000cee:	05ca                	slli	a1,a1,0x12
    90000cf0:	0105f5b3          	and	a1,a1,a6
    90000cf4:	061a                	slli	a2,a2,0x6
    90000cf6:	8dd1                	or	a1,a1,a2
    90000cf8:	8d4d                	or	a0,a0,a1
    90000cfa:	f65519e3          	bne	a0,t0,90000c6c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h03be197611a8e72aE.llvm.14678122160713693238+0x28>
    90000cfe:	4501                	li	a0,0
    90000d00:	6402                	ld	s0,0(sp)
    90000d02:	60a2                	ld	ra,8(sp)
    90000d04:	0141                	addi	sp,sp,16
    90000d06:	8082                	ret

0000000090000d08 <_ZN2os7console5print17h8c28c37cb0950d91E>:
    90000d08:	715d                	addi	sp,sp,-80
    90000d0a:	e486                	sd	ra,72(sp)
    90000d0c:	e0a2                	sd	s0,64(sp)
    90000d0e:	0880                	addi	s0,sp,80
    90000d10:	750c                	ld	a1,40(a0)
    90000d12:	7110                	ld	a2,32(a0)
    90000d14:	fc040693          	addi	a3,s0,-64
    90000d18:	fad43c23          	sd	a3,-72(s0)
    90000d1c:	feb43423          	sd	a1,-24(s0)
    90000d20:	fec43023          	sd	a2,-32(s0)
    90000d24:	6d0c                	ld	a1,24(a0)
    90000d26:	6910                	ld	a2,16(a0)
    90000d28:	6514                	ld	a3,8(a0)
    90000d2a:	6108                	ld	a0,0(a0)
    90000d2c:	fcb43c23          	sd	a1,-40(s0)
    90000d30:	fcc43823          	sd	a2,-48(s0)
    90000d34:	fcd43423          	sd	a3,-56(s0)
    90000d38:	fca43023          	sd	a0,-64(s0)

0000000090000d3c <.LBB4_3>:
    90000d3c:	00007597          	auipc	a1,0x7
    90000d40:	7f458593          	addi	a1,a1,2036 # 90008530 <anon.7163a9d01d6f5e4292794dae7acb084f.0.llvm.14678122160713693238>
    90000d44:	fb840513          	addi	a0,s0,-72
    90000d48:	fc040613          	addi	a2,s0,-64
    90000d4c:	00001097          	auipc	ra,0x1
    90000d50:	c9a080e7          	jalr	-870(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90000d54:	e509                	bnez	a0,90000d5e <.LBB4_4>
    90000d56:	6406                	ld	s0,64(sp)
    90000d58:	60a6                	ld	ra,72(sp)
    90000d5a:	6161                	addi	sp,sp,80
    90000d5c:	8082                	ret

0000000090000d5e <.LBB4_4>:
    90000d5e:	00008517          	auipc	a0,0x8
    90000d62:	80250513          	addi	a0,a0,-2046 # 90008560 <anon.7163a9d01d6f5e4292794dae7acb084f.1.llvm.14678122160713693238>

0000000090000d66 <.LBB4_5>:
    90000d66:	00008697          	auipc	a3,0x8
    90000d6a:	82a68693          	addi	a3,a3,-2006 # 90008590 <anon.7163a9d01d6f5e4292794dae7acb084f.2.llvm.14678122160713693238>

0000000090000d6e <.LBB4_6>:
    90000d6e:	00008717          	auipc	a4,0x8
    90000d72:	85270713          	addi	a4,a4,-1966 # 900085c0 <anon.7163a9d01d6f5e4292794dae7acb084f.4.llvm.14678122160713693238>
    90000d76:	fc040613          	addi	a2,s0,-64
    90000d7a:	02b00593          	li	a1,43
    90000d7e:	00000097          	auipc	ra,0x0
    90000d82:	504080e7          	jalr	1284(ra) # 90001282 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000090000d88 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h013e11055eb3fc78E>:
    90000d88:	1141                	addi	sp,sp,-16
    90000d8a:	e406                	sd	ra,8(sp)
    90000d8c:	e022                	sd	s0,0(sp)
    90000d8e:	0800                	addi	s0,sp,16
    90000d90:	6110                	ld	a2,0(a0)
    90000d92:	6514                	ld	a3,8(a0)
    90000d94:	872e                	mv	a4,a1
    90000d96:	8532                	mv	a0,a2
    90000d98:	85b6                	mv	a1,a3
    90000d9a:	863a                	mv	a2,a4
    90000d9c:	6402                	ld	s0,0(sp)
    90000d9e:	60a2                	ld	ra,8(sp)
    90000da0:	0141                	addi	sp,sp,16
    90000da2:	00001317          	auipc	t1,0x1
    90000da6:	37c30067          	jr	892(t1) # 9000211e <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>

0000000090000daa <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3cffa91ed33bac73E>:
    90000daa:	1141                	addi	sp,sp,-16
    90000dac:	e406                	sd	ra,8(sp)
    90000dae:	e022                	sd	s0,0(sp)
    90000db0:	0800                	addi	s0,sp,16
    90000db2:	6108                	ld	a0,0(a0)
    90000db4:	6402                	ld	s0,0(sp)
    90000db6:	60a2                	ld	ra,8(sp)
    90000db8:	0141                	addi	sp,sp,16
    90000dba:	00001317          	auipc	t1,0x1
    90000dbe:	bfa30067          	jr	-1030(t1) # 900019b4 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>

0000000090000dc2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a10af6d90298f80E>:
    90000dc2:	1141                	addi	sp,sp,-16
    90000dc4:	e406                	sd	ra,8(sp)
    90000dc6:	e022                	sd	s0,0(sp)
    90000dc8:	0800                	addi	s0,sp,16
    90000dca:	6108                	ld	a0,0(a0)
    90000dcc:	6402                	ld	s0,0(sp)
    90000dce:	60a2                	ld	ra,8(sp)
    90000dd0:	0141                	addi	sp,sp,16
    90000dd2:	00000317          	auipc	t1,0x0
    90000dd6:	2c430067          	jr	708(t1) # 90001096 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ea901fb0f7a0b63E>

0000000090000dda <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd37e93de3c4e9000E>:
    90000dda:	1141                	addi	sp,sp,-16
    90000ddc:	e406                	sd	ra,8(sp)
    90000dde:	e022                	sd	s0,0(sp)
    90000de0:	0800                	addi	s0,sp,16
    90000de2:	6108                	ld	a0,0(a0)
    90000de4:	6402                	ld	s0,0(sp)
    90000de6:	60a2                	ld	ra,8(sp)
    90000de8:	0141                	addi	sp,sp,16
    90000dea:	00000317          	auipc	t1,0x0
    90000dee:	1f230067          	jr	498(t1) # 90000fdc <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h5550b07615409f43E>

0000000090000df2 <_ZN4core3ptr59drop_in_place$LT$$RF$riscv..register..scause..Exception$GT$17h232a53927400fdabE>:
    90000df2:	1141                	addi	sp,sp,-16
    90000df4:	e406                	sd	ra,8(sp)
    90000df6:	e022                	sd	s0,0(sp)
    90000df8:	0800                	addi	s0,sp,16
    90000dfa:	6402                	ld	s0,0(sp)
    90000dfc:	60a2                	ld	ra,8(sp)
    90000dfe:	0141                	addi	sp,sp,16
    90000e00:	8082                	ret

0000000090000e02 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E>:
    90000e02:	1141                	addi	sp,sp,-16
    90000e04:	e406                	sd	ra,8(sp)
    90000e06:	e022                	sd	s0,0(sp)
    90000e08:	0800                	addi	s0,sp,16
    90000e0a:	85aa                	mv	a1,a0
    90000e0c:	4611                	li	a2,4
    90000e0e:	4519                	li	a0,6
    90000e10:	00b64e63          	blt	a2,a1,90000e2c <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x2a>
    90000e14:	c995                	beqz	a1,90000e48 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x46>
    90000e16:	4605                	li	a2,1
    90000e18:	02c58d63          	beq	a1,a2,90000e52 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x50>
    90000e1c:	4611                	li	a2,4
    90000e1e:	00c59363          	bne	a1,a2,90000e24 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x22>
    90000e22:	4509                	li	a0,2
    90000e24:	6402                	ld	s0,0(sp)
    90000e26:	60a2                	ld	ra,8(sp)
    90000e28:	0141                	addi	sp,sp,16
    90000e2a:	8082                	ret
    90000e2c:	4615                	li	a2,5
    90000e2e:	02c58763          	beq	a1,a2,90000e5c <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x5a>
    90000e32:	4621                	li	a2,8
    90000e34:	02c58963          	beq	a1,a2,90000e66 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x64>
    90000e38:	4625                	li	a2,9
    90000e3a:	fec595e3          	bne	a1,a2,90000e24 <_ZN5riscv8register6scause9Interrupt4from17h0b84e6718e384982E+0x22>
    90000e3e:	4515                	li	a0,5
    90000e40:	6402                	ld	s0,0(sp)
    90000e42:	60a2                	ld	ra,8(sp)
    90000e44:	0141                	addi	sp,sp,16
    90000e46:	8082                	ret
    90000e48:	4501                	li	a0,0
    90000e4a:	6402                	ld	s0,0(sp)
    90000e4c:	60a2                	ld	ra,8(sp)
    90000e4e:	0141                	addi	sp,sp,16
    90000e50:	8082                	ret
    90000e52:	4505                	li	a0,1
    90000e54:	6402                	ld	s0,0(sp)
    90000e56:	60a2                	ld	ra,8(sp)
    90000e58:	0141                	addi	sp,sp,16
    90000e5a:	8082                	ret
    90000e5c:	450d                	li	a0,3
    90000e5e:	6402                	ld	s0,0(sp)
    90000e60:	60a2                	ld	ra,8(sp)
    90000e62:	0141                	addi	sp,sp,16
    90000e64:	8082                	ret
    90000e66:	4511                	li	a0,4
    90000e68:	6402                	ld	s0,0(sp)
    90000e6a:	60a2                	ld	ra,8(sp)
    90000e6c:	0141                	addi	sp,sp,16
    90000e6e:	8082                	ret

0000000090000e70 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E>:
    90000e70:	1141                	addi	sp,sp,-16
    90000e72:	e406                	sd	ra,8(sp)
    90000e74:	e022                	sd	s0,0(sp)
    90000e76:	0800                	addi	s0,sp,16
    90000e78:	85aa                	mv	a1,a0
    90000e7a:	4615                	li	a2,5
    90000e7c:	452d                	li	a0,11
    90000e7e:	02b65363          	bge	a2,a1,90000ea4 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x34>
    90000e82:	462d                	li	a2,11
    90000e84:	04b64163          	blt	a2,a1,90000ec6 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x56>
    90000e88:	4619                	li	a2,6
    90000e8a:	06c58563          	beq	a1,a2,90000ef4 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x84>
    90000e8e:	461d                	li	a2,7
    90000e90:	06c58763          	beq	a1,a2,90000efe <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x8e>
    90000e94:	4621                	li	a2,8
    90000e96:	00c59363          	bne	a1,a2,90000e9c <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x2c>
    90000e9a:	451d                	li	a0,7
    90000e9c:	6402                	ld	s0,0(sp)
    90000e9e:	60a2                	ld	ra,8(sp)
    90000ea0:	0141                	addi	sp,sp,16
    90000ea2:	8082                	ret
    90000ea4:	4605                	li	a2,1
    90000ea6:	02b65e63          	bge	a2,a1,90000ee2 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x72>
    90000eaa:	4609                	li	a2,2
    90000eac:	04c58e63          	beq	a1,a2,90000f08 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x98>
    90000eb0:	460d                	li	a2,3
    90000eb2:	06c58063          	beq	a1,a2,90000f12 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0xa2>
    90000eb6:	4615                	li	a2,5
    90000eb8:	fec592e3          	bne	a1,a2,90000e9c <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x2c>
    90000ebc:	4511                	li	a0,4
    90000ebe:	6402                	ld	s0,0(sp)
    90000ec0:	60a2                	ld	ra,8(sp)
    90000ec2:	0141                	addi	sp,sp,16
    90000ec4:	8082                	ret
    90000ec6:	4631                	li	a2,12
    90000ec8:	04c58a63          	beq	a1,a2,90000f1c <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0xac>
    90000ecc:	4635                	li	a2,13
    90000ece:	04c58c63          	beq	a1,a2,90000f26 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0xb6>
    90000ed2:	463d                	li	a2,15
    90000ed4:	fcc594e3          	bne	a1,a2,90000e9c <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x2c>
    90000ed8:	4529                	li	a0,10
    90000eda:	6402                	ld	s0,0(sp)
    90000edc:	60a2                	ld	ra,8(sp)
    90000ede:	0141                	addi	sp,sp,16
    90000ee0:	8082                	ret
    90000ee2:	c5b9                	beqz	a1,90000f30 <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0xc0>
    90000ee4:	4605                	li	a2,1
    90000ee6:	fac59be3          	bne	a1,a2,90000e9c <_ZN5riscv8register6scause9Exception4from17h72c6340daa329d88E+0x2c>
    90000eea:	4505                	li	a0,1
    90000eec:	6402                	ld	s0,0(sp)
    90000eee:	60a2                	ld	ra,8(sp)
    90000ef0:	0141                	addi	sp,sp,16
    90000ef2:	8082                	ret
    90000ef4:	4515                	li	a0,5
    90000ef6:	6402                	ld	s0,0(sp)
    90000ef8:	60a2                	ld	ra,8(sp)
    90000efa:	0141                	addi	sp,sp,16
    90000efc:	8082                	ret
    90000efe:	4519                	li	a0,6
    90000f00:	6402                	ld	s0,0(sp)
    90000f02:	60a2                	ld	ra,8(sp)
    90000f04:	0141                	addi	sp,sp,16
    90000f06:	8082                	ret
    90000f08:	4509                	li	a0,2
    90000f0a:	6402                	ld	s0,0(sp)
    90000f0c:	60a2                	ld	ra,8(sp)
    90000f0e:	0141                	addi	sp,sp,16
    90000f10:	8082                	ret
    90000f12:	450d                	li	a0,3
    90000f14:	6402                	ld	s0,0(sp)
    90000f16:	60a2                	ld	ra,8(sp)
    90000f18:	0141                	addi	sp,sp,16
    90000f1a:	8082                	ret
    90000f1c:	4521                	li	a0,8
    90000f1e:	6402                	ld	s0,0(sp)
    90000f20:	60a2                	ld	ra,8(sp)
    90000f22:	0141                	addi	sp,sp,16
    90000f24:	8082                	ret
    90000f26:	4525                	li	a0,9
    90000f28:	6402                	ld	s0,0(sp)
    90000f2a:	60a2                	ld	ra,8(sp)
    90000f2c:	0141                	addi	sp,sp,16
    90000f2e:	8082                	ret
    90000f30:	4501                	li	a0,0
    90000f32:	6402                	ld	s0,0(sp)
    90000f34:	60a2                	ld	ra,8(sp)
    90000f36:	0141                	addi	sp,sp,16
    90000f38:	8082                	ret

0000000090000f3a <_ZN5riscv8register6scause6Scause4code17h25a276351377520bE>:
    90000f3a:	1141                	addi	sp,sp,-16
    90000f3c:	e406                	sd	ra,8(sp)
    90000f3e:	e022                	sd	s0,0(sp)
    90000f40:	0800                	addi	s0,sp,16
    90000f42:	6108                	ld	a0,0(a0)
    90000f44:	55fd                	li	a1,-1
    90000f46:	15fe                	slli	a1,a1,0x3f
    90000f48:	15fd                	addi	a1,a1,-1
    90000f4a:	8d6d                	and	a0,a0,a1
    90000f4c:	6402                	ld	s0,0(sp)
    90000f4e:	60a2                	ld	ra,8(sp)
    90000f50:	0141                	addi	sp,sp,16
    90000f52:	8082                	ret

0000000090000f54 <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17hcb018b9018ff1235E>:
    90000f54:	7139                	addi	sp,sp,-64
    90000f56:	fc06                	sd	ra,56(sp)
    90000f58:	f822                	sd	s0,48(sp)
    90000f5a:	f426                	sd	s1,40(sp)
    90000f5c:	f04a                	sd	s2,32(sp)
    90000f5e:	0080                	addi	s0,sp,64
    90000f60:	00054603          	lbu	a2,0(a0)
    90000f64:	4685                	li	a3,1
    90000f66:	00150493          	addi	s1,a0,1
    90000f6a:	02d61563          	bne	a2,a3,90000f94 <.LBB6_6>

0000000090000f6e <.LBB6_4>:
    90000f6e:	00007617          	auipc	a2,0x7
    90000f72:	6c260613          	addi	a2,a2,1730 # 90008630 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.0>
    90000f76:	fc040913          	addi	s2,s0,-64
    90000f7a:	46a5                	li	a3,9
    90000f7c:	854a                	mv	a0,s2
    90000f7e:	00001097          	auipc	ra,0x1
    90000f82:	164080e7          	jalr	356(ra) # 900020e2 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    90000f86:	fc943c23          	sd	s1,-40(s0)

0000000090000f8a <.LBB6_5>:
    90000f8a:	00007617          	auipc	a2,0x7
    90000f8e:	6b660613          	addi	a2,a2,1718 # 90008640 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.1>
    90000f92:	a01d                	j	90000fb8 <.LBB6_7+0x8>

0000000090000f94 <.LBB6_6>:
    90000f94:	00007617          	auipc	a2,0x7
    90000f98:	6cc60613          	addi	a2,a2,1740 # 90008660 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.2>
    90000f9c:	fc040913          	addi	s2,s0,-64
    90000fa0:	46a5                	li	a3,9
    90000fa2:	854a                	mv	a0,s2
    90000fa4:	00001097          	auipc	ra,0x1
    90000fa8:	13e080e7          	jalr	318(ra) # 900020e2 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    90000fac:	fc943c23          	sd	s1,-40(s0)

0000000090000fb0 <.LBB6_7>:
    90000fb0:	00007617          	auipc	a2,0x7
    90000fb4:	6c060613          	addi	a2,a2,1728 # 90008670 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.3>
    90000fb8:	fd840593          	addi	a1,s0,-40
    90000fbc:	854a                	mv	a0,s2
    90000fbe:	00000097          	auipc	ra,0x0
    90000fc2:	658080e7          	jalr	1624(ra) # 90001616 <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>
    90000fc6:	854a                	mv	a0,s2
    90000fc8:	00000097          	auipc	ra,0x0
    90000fcc:	742080e7          	jalr	1858(ra) # 9000170a <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    90000fd0:	7902                	ld	s2,32(sp)
    90000fd2:	74a2                	ld	s1,40(sp)
    90000fd4:	7442                	ld	s0,48(sp)
    90000fd6:	70e2                	ld	ra,56(sp)
    90000fd8:	6121                	addi	sp,sp,64
    90000fda:	8082                	ret

0000000090000fdc <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h5550b07615409f43E>:
    90000fdc:	7179                	addi	sp,sp,-48
    90000fde:	f406                	sd	ra,40(sp)
    90000fe0:	f022                	sd	s0,32(sp)
    90000fe2:	ec26                	sd	s1,24(sp)
    90000fe4:	1800                	addi	s0,sp,48
    90000fe6:	00054503          	lbu	a0,0(a0)
    90000fea:	4609                	li	a2,2
    90000fec:	02a65063          	bge	a2,a0,9000100c <.LBB7_14+0x10>
    90000ff0:	4611                	li	a2,4
    90000ff2:	02a64963          	blt	a2,a0,90001024 <.LBB7_15+0x10>
    90000ff6:	460d                	li	a2,3
    90000ff8:	04c51163          	bne	a0,a2,9000103a <.LBB7_17>

0000000090000ffc <.LBB7_14>:
    90000ffc:	00007617          	auipc	a2,0x7
    90001000:	6b960613          	addi	a2,a2,1721 # 900086b5 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.7>
    90001004:	fd040493          	addi	s1,s0,-48
    90001008:	46bd                	li	a3,15
    9000100a:	a0bd                	j	90001078 <.LBB7_20+0xe>
    9000100c:	cd1d                	beqz	a0,9000104a <.LBB7_18>
    9000100e:	4605                	li	a2,1
    90001010:	04c51563          	bne	a0,a2,9000105a <.LBB7_19>

0000000090001014 <.LBB7_15>:
    90001014:	00007617          	auipc	a2,0x7
    90001018:	6b960613          	addi	a2,a2,1721 # 900086cd <.Lanon.4033300a360cfe3f635d5cb9b1d37207.9>
    9000101c:	fd040493          	addi	s1,s0,-48
    90001020:	46b9                	li	a3,14
    90001022:	a899                	j	90001078 <.LBB7_20+0xe>
    90001024:	4615                	li	a2,5
    90001026:	04c51263          	bne	a0,a2,9000106a <.LBB7_20>

000000009000102a <.LBB7_16>:
    9000102a:	00007617          	auipc	a2,0x7
    9000102e:	66d60613          	addi	a2,a2,1645 # 90008697 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.5>
    90001032:	fd040493          	addi	s1,s0,-48
    90001036:	46c9                	li	a3,18
    90001038:	a081                	j	90001078 <.LBB7_20+0xe>

000000009000103a <.LBB7_17>:
    9000103a:	00007617          	auipc	a2,0x7
    9000103e:	66f60613          	addi	a2,a2,1647 # 900086a9 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.6>
    90001042:	fd040493          	addi	s1,s0,-48
    90001046:	46b1                	li	a3,12
    90001048:	a805                	j	90001078 <.LBB7_20+0xe>

000000009000104a <.LBB7_18>:
    9000104a:	00007617          	auipc	a2,0x7
    9000104e:	69960613          	addi	a2,a2,1689 # 900086e3 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.9+0x16>
    90001052:	fd040493          	addi	s1,s0,-48
    90001056:	46a1                	li	a3,8
    90001058:	a005                	j	90001078 <.LBB7_20+0xe>

000000009000105a <.LBB7_19>:
    9000105a:	00007617          	auipc	a2,0x7
    9000105e:	66a60613          	addi	a2,a2,1642 # 900086c4 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.8>
    90001062:	fd040493          	addi	s1,s0,-48
    90001066:	46a5                	li	a3,9
    90001068:	a801                	j	90001078 <.LBB7_20+0xe>

000000009000106a <.LBB7_20>:
    9000106a:	00007617          	auipc	a2,0x7
    9000106e:	62660613          	addi	a2,a2,1574 # 90008690 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.4>
    90001072:	fd040493          	addi	s1,s0,-48
    90001076:	469d                	li	a3,7
    90001078:	8526                	mv	a0,s1
    9000107a:	00001097          	auipc	ra,0x1
    9000107e:	068080e7          	jalr	104(ra) # 900020e2 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    90001082:	8526                	mv	a0,s1
    90001084:	00000097          	auipc	ra,0x0
    90001088:	686080e7          	jalr	1670(ra) # 9000170a <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    9000108c:	64e2                	ld	s1,24(sp)
    9000108e:	7402                	ld	s0,32(sp)
    90001090:	70a2                	ld	ra,40(sp)
    90001092:	6145                	addi	sp,sp,48
    90001094:	8082                	ret

0000000090001096 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ea901fb0f7a0b63E>:
    90001096:	7179                	addi	sp,sp,-48
    90001098:	f406                	sd	ra,40(sp)
    9000109a:	f022                	sd	s0,32(sp)
    9000109c:	ec26                	sd	s1,24(sp)
    9000109e:	1800                	addi	s0,sp,48
    900010a0:	00054503          	lbu	a0,0(a0)
    900010a4:	4615                	li	a2,5
    900010a6:	02a64163          	blt	a2,a0,900010c8 <.LBB8_25+0x10>
    900010aa:	4609                	li	a2,2
    900010ac:	02a64f63          	blt	a2,a0,900010ea <.LBB8_26+0x10>
    900010b0:	c92d                	beqz	a0,90001122 <.LBB8_29>
    900010b2:	4605                	li	a2,1
    900010b4:	06c51f63          	bne	a0,a2,90001132 <.LBB8_30>

00000000900010b8 <.LBB8_25>:
    900010b8:	00003617          	auipc	a2,0x3
    900010bc:	f7860613          	addi	a2,a2,-136 # 90004030 <anon.dd013d8762cff77058a08f73d5951059.0.llvm.1193307735727972488+0x20>
    900010c0:	fd040493          	addi	s1,s0,-48
    900010c4:	46c1                	li	a3,16
    900010c6:	a8d1                	j	9000119a <.LBB8_36+0xe>
    900010c8:	4621                	li	a2,8
    900010ca:	02a64e63          	blt	a2,a0,90001106 <.LBB8_27+0x10>
    900010ce:	4619                	li	a2,6
    900010d0:	06c50963          	beq	a0,a2,90001142 <.LBB8_31>
    900010d4:	461d                	li	a2,7
    900010d6:	06c51b63          	bne	a0,a2,9000114c <.LBB8_32>

00000000900010da <.LBB8_26>:
    900010da:	00007617          	auipc	a2,0x7
    900010de:	64060613          	addi	a2,a2,1600 # 9000871a <.Lanon.4033300a360cfe3f635d5cb9b1d37207.14>
    900010e2:	fd040493          	addi	s1,s0,-48
    900010e6:	46ad                	li	a3,11
    900010e8:	a84d                	j	9000119a <.LBB8_36+0xe>
    900010ea:	460d                	li	a2,3
    900010ec:	06c50863          	beq	a0,a2,9000115c <.LBB8_33>
    900010f0:	4611                	li	a2,4
    900010f2:	06c51d63          	bne	a0,a2,9000116c <.LBB8_34>

00000000900010f6 <.LBB8_27>:
    900010f6:	00007617          	auipc	a2,0x7
    900010fa:	64860613          	addi	a2,a2,1608 # 9000873e <.Lanon.4033300a360cfe3f635d5cb9b1d37207.17>
    900010fe:	fd040493          	addi	s1,s0,-48
    90001102:	46a5                	li	a3,9
    90001104:	a859                	j	9000119a <.LBB8_36+0xe>
    90001106:	4625                	li	a2,9
    90001108:	06c50a63          	beq	a0,a2,9000117c <.LBB8_35>
    9000110c:	4629                	li	a2,10
    9000110e:	06c51f63          	bne	a0,a2,9000118c <.LBB8_36>

0000000090001112 <.LBB8_28>:
    90001112:	00007617          	auipc	a2,0x7
    90001116:	5d960613          	addi	a2,a2,1497 # 900086eb <.Lanon.4033300a360cfe3f635d5cb9b1d37207.11>
    9000111a:	fd040493          	addi	s1,s0,-48
    9000111e:	46b9                	li	a3,14
    90001120:	a8ad                	j	9000119a <.LBB8_36+0xe>

0000000090001122 <.LBB8_29>:
    90001122:	00007617          	auipc	a2,0x7
    90001126:	64160613          	addi	a2,a2,1601 # 90008763 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.21>
    9000112a:	fd040493          	addi	s1,s0,-48
    9000112e:	46d5                	li	a3,21
    90001130:	a0ad                	j	9000119a <.LBB8_36+0xe>

0000000090001132 <.LBB8_30>:
    90001132:	00007617          	auipc	a2,0x7
    90001136:	61f60613          	addi	a2,a2,1567 # 90008751 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.19>
    9000113a:	fd040493          	addi	s1,s0,-48
    9000113e:	46c9                	li	a3,18
    90001140:	a8a9                	j	9000119a <.LBB8_36+0xe>

0000000090001142 <.LBB8_31>:
    90001142:	00007617          	auipc	a2,0x7
    90001146:	5e360613          	addi	a2,a2,1507 # 90008725 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.15>
    9000114a:	a829                	j	90001164 <.LBB8_33+0x8>

000000009000114c <.LBB8_32>:
    9000114c:	00007617          	auipc	a2,0x7
    90001150:	5ba60613          	addi	a2,a2,1466 # 90008706 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.13>
    90001154:	fd040493          	addi	s1,s0,-48
    90001158:	46d1                	li	a3,20
    9000115a:	a081                	j	9000119a <.LBB8_36+0xe>

000000009000115c <.LBB8_33>:
    9000115c:	00007617          	auipc	a2,0x7
    90001160:	5eb60613          	addi	a2,a2,1515 # 90008747 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.18>
    90001164:	fd040493          	addi	s1,s0,-48
    90001168:	46a9                	li	a3,10
    9000116a:	a805                	j	9000119a <.LBB8_36+0xe>

000000009000116c <.LBB8_34>:
    9000116c:	00007617          	auipc	a2,0x7
    90001170:	5c360613          	addi	a2,a2,1475 # 9000872f <.Lanon.4033300a360cfe3f635d5cb9b1d37207.16>
    90001174:	fd040493          	addi	s1,s0,-48
    90001178:	46bd                	li	a3,15
    9000117a:	a005                	j	9000119a <.LBB8_36+0xe>

000000009000117c <.LBB8_35>:
    9000117c:	00007617          	auipc	a2,0x7
    90001180:	57d60613          	addi	a2,a2,1405 # 900086f9 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.12>
    90001184:	fd040493          	addi	s1,s0,-48
    90001188:	46b5                	li	a3,13
    9000118a:	a801                	j	9000119a <.LBB8_36+0xe>

000000009000118c <.LBB8_36>:
    9000118c:	00007617          	auipc	a2,0x7
    90001190:	50460613          	addi	a2,a2,1284 # 90008690 <.Lanon.4033300a360cfe3f635d5cb9b1d37207.4>
    90001194:	fd040493          	addi	s1,s0,-48
    90001198:	469d                	li	a3,7
    9000119a:	8526                	mv	a0,s1
    9000119c:	00001097          	auipc	ra,0x1
    900011a0:	f46080e7          	jalr	-186(ra) # 900020e2 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    900011a4:	8526                	mv	a0,s1
    900011a6:	00000097          	auipc	ra,0x0
    900011aa:	564080e7          	jalr	1380(ra) # 9000170a <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    900011ae:	64e2                	ld	s1,24(sp)
    900011b0:	7402                	ld	s0,32(sp)
    900011b2:	70a2                	ld	ra,40(sp)
    900011b4:	6145                	addi	sp,sp,48
    900011b6:	8082                	ret

00000000900011b8 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>:
    900011b8:	1141                	addi	sp,sp,-16
    900011ba:	e406                	sd	ra,8(sp)
    900011bc:	e022                	sd	s0,0(sp)
    900011be:	0800                	addi	s0,sp,16
    900011c0:	00854583          	lbu	a1,8(a0)
    900011c4:	c591                	beqz	a1,900011d0 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E+0x18>
    900011c6:	6108                	ld	a0,0(a0)
    900011c8:	0310000f          	fence	rw,w
    900011cc:	458d                	li	a1,3
    900011ce:	e10c                	sd	a1,0(a0)
    900011d0:	6402                	ld	s0,0(sp)
    900011d2:	60a2                	ld	ra,8(sp)
    900011d4:	0141                	addi	sp,sp,16
    900011d6:	8082                	ret

00000000900011d8 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>:
    900011d8:	6108                	ld	a0,0(a0)
    900011da:	a001                	j	900011da <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E+0x2>

00000000900011dc <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2c14ec9a62b1a876E>:
    900011dc:	8082                	ret

00000000900011de <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c19ef341f8f601cE>:
    900011de:	715d                	addi	sp,sp,-80
    900011e0:	e486                	sd	ra,72(sp)
    900011e2:	e0a2                	sd	s0,64(sp)
    900011e4:	fc26                	sd	s1,56(sp)
    900011e6:	842e                	mv	s0,a1
    900011e8:	84aa                	mv	s1,a0
    900011ea:	00002097          	auipc	ra,0x2
    900011ee:	bf8080e7          	jalr	-1032(ra) # 90002de2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>
    900011f2:	e51d                	bnez	a0,90001220 <.LBB76_5+0x18>
    900011f4:	7008                	ld	a0,32(s0)
    900011f6:	740c                	ld	a1,40(s0)

00000000900011f8 <.LBB76_4>:
    900011f8:	00007617          	auipc	a2,0x7
    900011fc:	58860613          	addi	a2,a2,1416 # 90008780 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.141>
    90001200:	e432                	sd	a2,8(sp)
    90001202:	4605                	li	a2,1
    90001204:	e832                	sd	a2,16(sp)
    90001206:	ec02                	sd	zero,24(sp)

0000000090001208 <.LBB76_5>:
    90001208:	00007617          	auipc	a2,0x7
    9000120c:	57060613          	addi	a2,a2,1392 # 90008778 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90001210:	f432                	sd	a2,40(sp)
    90001212:	f802                	sd	zero,48(sp)
    90001214:	0030                	addi	a2,sp,8
    90001216:	00000097          	auipc	ra,0x0
    9000121a:	7d0080e7          	jalr	2000(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    9000121e:	c519                	beqz	a0,9000122c <.LBB76_5+0x24>
    90001220:	4505                	li	a0,1
    90001222:	74e2                	ld	s1,56(sp)
    90001224:	6406                	ld	s0,64(sp)
    90001226:	60a6                	ld	ra,72(sp)
    90001228:	6161                	addi	sp,sp,80
    9000122a:	8082                	ret
    9000122c:	00848513          	addi	a0,s1,8
    90001230:	85a2                	mv	a1,s0
    90001232:	74e2                	ld	s1,56(sp)
    90001234:	6406                	ld	s0,64(sp)
    90001236:	60a6                	ld	ra,72(sp)
    90001238:	6161                	addi	sp,sp,80
    9000123a:	00002317          	auipc	t1,0x2
    9000123e:	ba830067          	jr	-1112(t1) # 90002de2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>

0000000090001242 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7108e12ad9db6507E>:
    90001242:	0160f537          	lui	a0,0x160f
    90001246:	6275051b          	addiw	a0,a0,1575
    9000124a:	0536                	slli	a0,a0,0xd
    9000124c:	3d750513          	addi	a0,a0,983 # 160f3d7 <.Lline_table_start0+0x15f252d>
    90001250:	0532                	slli	a0,a0,0xc
    90001252:	f8150513          	addi	a0,a0,-127
    90001256:	0532                	slli	a0,a0,0xc
    90001258:	f4250513          	addi	a0,a0,-190
    9000125c:	8082                	ret

000000009000125e <_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha8996aa14fce6a9aE>:
    9000125e:	7590                	ld	a2,40(a1)
    90001260:	7188                	ld	a0,32(a1)
    90001262:	6e1c                	ld	a5,24(a2)

0000000090001264 <.LBB87_1>:
    90001264:	00007597          	auipc	a1,0x7
    90001268:	52c58593          	addi	a1,a1,1324 # 90008790 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.148>
    9000126c:	462d                	li	a2,11
    9000126e:	8782                	jr	a5

0000000090001270 <_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h27d9b69ec3d38322E>:
    90001270:	7590                	ld	a2,40(a1)
    90001272:	7188                	ld	a0,32(a1)
    90001274:	6e1c                	ld	a5,24(a2)

0000000090001276 <.LBB89_1>:
    90001276:	00007597          	auipc	a1,0x7
    9000127a:	52558593          	addi	a1,a1,1317 # 9000879b <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150>
    9000127e:	4639                	li	a2,14
    90001280:	8782                	jr	a5

0000000090001282 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>:
    90001282:	7119                	addi	sp,sp,-128
    90001284:	fc86                	sd	ra,120(sp)
    90001286:	e42a                	sd	a0,8(sp)
    90001288:	e82e                	sd	a1,16(sp)
    9000128a:	ec32                	sd	a2,24(sp)
    9000128c:	f036                	sd	a3,32(sp)
    9000128e:	0028                	addi	a0,sp,8
    90001290:	ecaa                	sd	a0,88(sp)

0000000090001292 <.LBB118_1>:
    90001292:	00002517          	auipc	a0,0x2
    90001296:	21650513          	addi	a0,a0,534 # 900034a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    9000129a:	f0aa                	sd	a0,96(sp)
    9000129c:	0828                	addi	a0,sp,24
    9000129e:	f4aa                	sd	a0,104(sp)

00000000900012a0 <.LBB118_2>:
    900012a0:	00002517          	auipc	a0,0x2
    900012a4:	20050513          	addi	a0,a0,512 # 900034a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>
    900012a8:	f8aa                	sd	a0,112(sp)

00000000900012aa <.LBB118_3>:
    900012aa:	00007517          	auipc	a0,0x7
    900012ae:	53e50513          	addi	a0,a0,1342 # 900087e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.178>
    900012b2:	f42a                	sd	a0,40(sp)
    900012b4:	4509                	li	a0,2
    900012b6:	f82a                	sd	a0,48(sp)
    900012b8:	fc02                	sd	zero,56(sp)
    900012ba:	08ac                	addi	a1,sp,88
    900012bc:	e4ae                	sd	a1,72(sp)
    900012be:	e8aa                	sd	a0,80(sp)
    900012c0:	1028                	addi	a0,sp,40
    900012c2:	85ba                	mv	a1,a4
    900012c4:	00000097          	auipc	ra,0x0
    900012c8:	08a080e7          	jalr	138(ra) # 9000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000900012ce <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>:
    900012ce:	6908                	ld	a0,16(a0)
    900012d0:	8082                	ret

00000000900012d2 <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>:
    900012d2:	6d08                	ld	a0,24(a0)
    900012d4:	8082                	ret

00000000900012d6 <_ZN4core5panic8Location4file17h3a63c909928b6622E>:
    900012d6:	6110                	ld	a2,0(a0)
    900012d8:	650c                	ld	a1,8(a0)
    900012da:	8532                	mv	a0,a2
    900012dc:	8082                	ret

00000000900012de <_ZN4core5panic8Location4line17h438064cf29667b6aE>:
    900012de:	4908                	lw	a0,16(a0)
    900012e0:	8082                	ret

00000000900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>:
    900012e2:	715d                	addi	sp,sp,-80
    900012e4:	e486                	sd	ra,72(sp)
    900012e6:	fc2a                	sd	a0,56(sp)
    900012e8:	e0ae                	sd	a1,64(sp)
    900012ea:	1828                	addi	a0,sp,56
    900012ec:	e42a                	sd	a0,8(sp)
    900012ee:	4505                	li	a0,1
    900012f0:	e82a                	sd	a0,16(sp)
    900012f2:	ec02                	sd	zero,24(sp)

00000000900012f4 <.LBB129_1>:
    900012f4:	00007517          	auipc	a0,0x7
    900012f8:	48450513          	addi	a0,a0,1156 # 90008778 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    900012fc:	f42a                	sd	a0,40(sp)
    900012fe:	f802                	sd	zero,48(sp)
    90001300:	0028                	addi	a0,sp,8
    90001302:	85b2                	mv	a1,a2
    90001304:	00000097          	auipc	ra,0x0
    90001308:	04a080e7          	jalr	74(ra) # 9000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000009000130e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>:
    9000130e:	7159                	addi	sp,sp,-112
    90001310:	f486                	sd	ra,104(sp)
    90001312:	e42a                	sd	a0,8(sp)
    90001314:	e82e                	sd	a1,16(sp)
    90001316:	0808                	addi	a0,sp,16
    90001318:	e4aa                	sd	a0,72(sp)

000000009000131a <.LBB130_1>:
    9000131a:	00002517          	auipc	a0,0x2
    9000131e:	d5450513          	addi	a0,a0,-684 # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90001322:	e8aa                	sd	a0,80(sp)
    90001324:	002c                	addi	a1,sp,8
    90001326:	ecae                	sd	a1,88(sp)
    90001328:	f0aa                	sd	a0,96(sp)

000000009000132a <.LBB130_2>:
    9000132a:	00007517          	auipc	a0,0x7
    9000132e:	57650513          	addi	a0,a0,1398 # 900088a0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.188>
    90001332:	ec2a                	sd	a0,24(sp)
    90001334:	4509                	li	a0,2
    90001336:	f02a                	sd	a0,32(sp)
    90001338:	f402                	sd	zero,40(sp)
    9000133a:	00ac                	addi	a1,sp,72
    9000133c:	fc2e                	sd	a1,56(sp)
    9000133e:	e0aa                	sd	a0,64(sp)
    90001340:	0828                	addi	a0,sp,24
    90001342:	85b2                	mv	a1,a2
    90001344:	00000097          	auipc	ra,0x0
    90001348:	00a080e7          	jalr	10(ra) # 9000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000009000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>:
    9000134e:	7179                	addi	sp,sp,-48
    90001350:	f406                	sd	ra,40(sp)

0000000090001352 <.LBB131_1>:
    90001352:	00007617          	auipc	a2,0x7
    90001356:	42660613          	addi	a2,a2,1062 # 90008778 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    9000135a:	e432                	sd	a2,8(sp)

000000009000135c <.LBB131_2>:
    9000135c:	00007617          	auipc	a2,0x7
    90001360:	4ac60613          	addi	a2,a2,1196 # 90008808 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.179>
    90001364:	e832                	sd	a2,16(sp)
    90001366:	ec2a                	sd	a0,24(sp)
    90001368:	f02e                	sd	a1,32(sp)
    9000136a:	0028                	addi	a0,sp,8
    9000136c:	fffff097          	auipc	ra,0xfffff
    90001370:	402080e7          	jalr	1026(ra) # 9000076e <rust_begin_unwind>
	...

0000000090001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>:
    90001376:	715d                	addi	sp,sp,-80
    90001378:	e486                	sd	ra,72(sp)
    9000137a:	e0a2                	sd	s0,64(sp)
    9000137c:	fc26                	sd	s1,56(sp)
    9000137e:	f84a                	sd	s2,48(sp)
    90001380:	f44e                	sd	s3,40(sp)
    90001382:	f052                	sd	s4,32(sp)
    90001384:	ec56                	sd	s5,24(sp)
    90001386:	e85a                	sd	s6,16(sp)
    90001388:	e45e                	sd	s7,8(sp)
    9000138a:	e062                	sd	s8,0(sp)
    9000138c:	ca7d                	beqz	a2,90001482 <.LBB133_30+0x1a>
    9000138e:	84b2                	mv	s1,a2
    90001390:	89ae                	mv	s3,a1
    90001392:	892a                	mv	s2,a0
    90001394:	4a3d                	li	s4,15
    90001396:	4aa9                	li	s5,10
    90001398:	fbf00b13          	li	s6,-65
    9000139c:	4b85                	li	s7,1
    9000139e:	a809                	j	900013b0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x3a>
    900013a0:	6d94                	ld	a3,24(a1)
    900013a2:	85ce                	mv	a1,s3
    900013a4:	8622                	mv	a2,s0
    900013a6:	9682                	jalr	a3
    900013a8:	ed79                	bnez	a0,90001486 <.LBB133_30+0x1e>
    900013aa:	8c81                	sub	s1,s1,s0
    900013ac:	89e2                	mv	s3,s8
    900013ae:	c8f1                	beqz	s1,90001482 <.LBB133_30+0x1a>
    900013b0:	01093503          	ld	a0,16(s2)
    900013b4:	00054503          	lbu	a0,0(a0)
    900013b8:	cd09                	beqz	a0,900013d2 <.LBB133_29+0xe>
    900013ba:	00893583          	ld	a1,8(s2)
    900013be:	00093503          	ld	a0,0(s2)
    900013c2:	6d94                	ld	a3,24(a1)

00000000900013c4 <.LBB133_29>:
    900013c4:	00007597          	auipc	a1,0x7
    900013c8:	3e558593          	addi	a1,a1,997 # 900087a9 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0xe>
    900013cc:	4611                	li	a2,4
    900013ce:	9682                	jalr	a3
    900013d0:	e95d                	bnez	a0,90001486 <.LBB133_30+0x1e>
    900013d2:	4401                	li	s0,0
    900013d4:	8626                	mv	a2,s1
    900013d6:	a029                	j	900013e0 <.LBB133_29+0x1c>
    900013d8:	40848633          	sub	a2,s1,s0
    900013dc:	0484e963          	bltu	s1,s0,9000142e <.LBB133_29+0x6a>
    900013e0:	008985b3          	add	a1,s3,s0
    900013e4:	02ca6063          	bltu	s4,a2,90001404 <.LBB133_29+0x40>
    900013e8:	c239                	beqz	a2,9000142e <.LBB133_29+0x6a>
    900013ea:	4601                	li	a2,0
    900013ec:	40848533          	sub	a0,s1,s0
    900013f0:	00c586b3          	add	a3,a1,a2
    900013f4:	0006c683          	lbu	a3,0(a3)
    900013f8:	01568e63          	beq	a3,s5,90001414 <.LBB133_29+0x50>
    900013fc:	0605                	addi	a2,a2,1
    900013fe:	fec519e3          	bne	a0,a2,900013f0 <.LBB133_29+0x2c>
    90001402:	a035                	j	9000142e <.LBB133_29+0x6a>
    90001404:	4529                	li	a0,10
    90001406:	00001097          	auipc	ra,0x1
    9000140a:	f9c080e7          	jalr	-100(ra) # 900023a2 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E>
    9000140e:	03751063          	bne	a0,s7,9000142e <.LBB133_29+0x6a>
    90001412:	862e                	mv	a2,a1
    90001414:	00860533          	add	a0,a2,s0
    90001418:	00150413          	addi	s0,a0,1
    9000141c:	fa957ee3          	bgeu	a0,s1,900013d8 <.LBB133_29+0x14>
    90001420:	954e                	add	a0,a0,s3
    90001422:	00054503          	lbu	a0,0(a0)
    90001426:	fb5519e3          	bne	a0,s5,900013d8 <.LBB133_29+0x14>
    9000142a:	4505                	li	a0,1
    9000142c:	a019                	j	90001432 <.LBB133_29+0x6e>
    9000142e:	4501                	li	a0,0
    90001430:	8426                	mv	s0,s1
    90001432:	01093583          	ld	a1,16(s2)
    90001436:	00a58023          	sb	a0,0(a1)
    9000143a:	00093503          	ld	a0,0(s2)
    9000143e:	00893583          	ld	a1,8(s2)
    90001442:	00898c33          	add	s8,s3,s0
    90001446:	f4848de3          	beq	s1,s0,900013a0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x2a>
    9000144a:	04947b63          	bgeu	s0,s1,900014a0 <.LBB133_31>
    9000144e:	000c0603          	lb	a2,0(s8)
    90001452:	04cb5763          	bge	s6,a2,900014a0 <.LBB133_31>
    90001456:	6d94                	ld	a3,24(a1)
    90001458:	85ce                	mv	a1,s3
    9000145a:	8622                	mv	a2,s0
    9000145c:	9682                	jalr	a3
    9000145e:	e505                	bnez	a0,90001486 <.LBB133_30+0x1e>
    90001460:	000c0503          	lb	a0,0(s8)
    90001464:	f4ab43e3          	blt	s6,a0,900013aa <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x34>

0000000090001468 <.LBB133_30>:
    90001468:	00007717          	auipc	a4,0x7
    9000146c:	4a070713          	addi	a4,a4,1184 # 90008908 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.193>
    90001470:	854e                	mv	a0,s3
    90001472:	85a6                	mv	a1,s1
    90001474:	8622                	mv	a2,s0
    90001476:	86a6                	mv	a3,s1
    90001478:	00001097          	auipc	ra,0x1
    9000147c:	37c080e7          	jalr	892(ra) # 900027f4 <_ZN4core3str16slice_error_fail17he9562343589499f6E>
    90001480:	0000                	unimp
    90001482:	4501                	li	a0,0
    90001484:	a011                	j	90001488 <.LBB133_30+0x20>
    90001486:	4505                	li	a0,1
    90001488:	6c02                	ld	s8,0(sp)
    9000148a:	6ba2                	ld	s7,8(sp)
    9000148c:	6b42                	ld	s6,16(sp)
    9000148e:	6ae2                	ld	s5,24(sp)
    90001490:	7a02                	ld	s4,32(sp)
    90001492:	79a2                	ld	s3,40(sp)
    90001494:	7942                	ld	s2,48(sp)
    90001496:	74e2                	ld	s1,56(sp)
    90001498:	6406                	ld	s0,64(sp)
    9000149a:	60a6                	ld	ra,72(sp)
    9000149c:	6161                	addi	sp,sp,80
    9000149e:	8082                	ret

00000000900014a0 <.LBB133_31>:
    900014a0:	00007717          	auipc	a4,0x7
    900014a4:	45070713          	addi	a4,a4,1104 # 900088f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.192>
    900014a8:	854e                	mv	a0,s3
    900014aa:	85a6                	mv	a1,s1
    900014ac:	4601                	li	a2,0
    900014ae:	86a2                	mv	a3,s0
    900014b0:	00001097          	auipc	ra,0x1
    900014b4:	344080e7          	jalr	836(ra) # 900027f4 <_ZN4core3str16slice_error_fail17he9562343589499f6E>
	...

00000000900014ba <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>:
    900014ba:	7135                	addi	sp,sp,-160
    900014bc:	ed06                	sd	ra,152(sp)
    900014be:	e922                	sd	s0,144(sp)
    900014c0:	e526                	sd	s1,136(sp)
    900014c2:	e14a                	sd	s2,128(sp)
    900014c4:	fcce                	sd	s3,120(sp)
    900014c6:	f8d2                	sd	s4,112(sp)
    900014c8:	f4d6                	sd	s5,104(sp)
    900014ca:	f0da                	sd	s6,96(sp)
    900014cc:	842a                	mv	s0,a0
    900014ce:	00854503          	lbu	a0,8(a0)
    900014d2:	4b05                	li	s6,1
    900014d4:	4485                	li	s1,1
    900014d6:	c105                	beqz	a0,900014f6 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x3c>
    900014d8:	00940423          	sb	s1,8(s0)
    900014dc:	016404a3          	sb	s6,9(s0)
    900014e0:	8522                	mv	a0,s0
    900014e2:	7b06                	ld	s6,96(sp)
    900014e4:	7aa6                	ld	s5,104(sp)
    900014e6:	7a46                	ld	s4,112(sp)
    900014e8:	79e6                	ld	s3,120(sp)
    900014ea:	690a                	ld	s2,128(sp)
    900014ec:	64aa                	ld	s1,136(sp)
    900014ee:	644a                	ld	s0,144(sp)
    900014f0:	60ea                	ld	ra,152(sp)
    900014f2:	610d                	addi	sp,sp,160
    900014f4:	8082                	ret
    900014f6:	89ba                	mv	s3,a4
    900014f8:	8936                	mv	s2,a3
    900014fa:	8a32                	mv	s4,a2
    900014fc:	8aae                	mv	s5,a1
    900014fe:	6008                	ld	a0,0(s0)
    90001500:	03056583          	lwu	a1,48(a0)
    90001504:	00944603          	lbu	a2,9(s0)
    90001508:	0045f693          	andi	a3,a1,4
    9000150c:	00163613          	seqz	a2,a2
    90001510:	e699                	bnez	a3,9000151e <.LBB134_18+0xa>
    90001512:	ea45                	bnez	a2,900015c2 <.LBB134_23>

0000000090001514 <.LBB134_18>:
    90001514:	00007597          	auipc	a1,0x7
    90001518:	41158593          	addi	a1,a1,1041 # 90008925 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    9000151c:	a07d                	j	900015ca <.LBB134_23+0x8>
    9000151e:	ce19                	beqz	a2,9000153c <.LBB134_19+0x16>
    90001520:	750c                	ld	a1,40(a0)
    90001522:	7108                	ld	a0,32(a0)
    90001524:	6d94                	ld	a3,24(a1)

0000000090001526 <.LBB134_19>:
    90001526:	00007597          	auipc	a1,0x7
    9000152a:	3fa58593          	addi	a1,a1,1018 # 90008920 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.194>
    9000152e:	460d                	li	a2,3
    90001530:	9682                	jalr	a3
    90001532:	4485                	li	s1,1
    90001534:	f155                	bnez	a0,900014d8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    90001536:	6008                	ld	a0,0(s0)
    90001538:	03056583          	lwu	a1,48(a0)
    9000153c:	4485                	li	s1,1
    9000153e:	00910fa3          	sb	s1,31(sp) # 9001c01f <boot_stack_top+0x1f>
    90001542:	7110                	ld	a2,32(a0)
    90001544:	7514                	ld	a3,40(a0)
    90001546:	e032                	sd	a2,0(sp)
    90001548:	e436                	sd	a3,8(sp)
    9000154a:	01f10613          	addi	a2,sp,31
    9000154e:	e832                	sd	a2,16(sp)
    90001550:	5950                	lw	a2,52(a0)
    90001552:	03850683          	lb	a3,56(a0)
    90001556:	6118                	ld	a4,0(a0)
    90001558:	651c                	ld	a5,8(a0)
    9000155a:	01053803          	ld	a6,16(a0)
    9000155e:	6d08                	ld	a0,24(a0)
    90001560:	c8ae                	sw	a1,80(sp)
    90001562:	cab2                	sw	a2,84(sp)
    90001564:	04d10c23          	sb	a3,88(sp)
    90001568:	f03a                	sd	a4,32(sp)
    9000156a:	f43e                	sd	a5,40(sp)
    9000156c:	f842                	sd	a6,48(sp)
    9000156e:	fc2a                	sd	a0,56(sp)
    90001570:	850a                	mv	a0,sp
    90001572:	e0aa                	sd	a0,64(sp)

0000000090001574 <.LBB134_20>:
    90001574:	00007597          	auipc	a1,0x7
    90001578:	34c58593          	addi	a1,a1,844 # 900088c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    9000157c:	e4ae                	sd	a1,72(sp)
    9000157e:	85d6                	mv	a1,s5
    90001580:	8652                	mv	a2,s4
    90001582:	00000097          	auipc	ra,0x0
    90001586:	df4080e7          	jalr	-524(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    9000158a:	f539                	bnez	a0,900014d8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>

000000009000158c <.LBB134_21>:
    9000158c:	00007597          	auipc	a1,0x7
    90001590:	25858593          	addi	a1,a1,600 # 900087e4 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    90001594:	850a                	mv	a0,sp
    90001596:	4609                	li	a2,2
    90001598:	00000097          	auipc	ra,0x0
    9000159c:	dde080e7          	jalr	-546(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    900015a0:	fd05                	bnez	a0,900014d8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900015a2:	0189b603          	ld	a2,24(s3)
    900015a6:	100c                	addi	a1,sp,32
    900015a8:	854a                	mv	a0,s2
    900015aa:	9602                	jalr	a2
    900015ac:	f515                	bnez	a0,900014d8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900015ae:	65a6                	ld	a1,72(sp)
    900015b0:	6506                	ld	a0,64(sp)
    900015b2:	6d94                	ld	a3,24(a1)

00000000900015b4 <.LBB134_22>:
    900015b4:	00007597          	auipc	a1,0x7
    900015b8:	36f58593          	addi	a1,a1,879 # 90008923 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    900015bc:	4609                	li	a2,2
    900015be:	9682                	jalr	a3
    900015c0:	a889                	j	90001612 <.LBB134_24+0x1c>

00000000900015c2 <.LBB134_23>:
    900015c2:	00007597          	auipc	a1,0x7
    900015c6:	36558593          	addi	a1,a1,869 # 90008927 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.197>
    900015ca:	7514                	ld	a3,40(a0)
    900015cc:	7108                	ld	a0,32(a0)
    900015ce:	6e94                	ld	a3,24(a3)
    900015d0:	00266613          	ori	a2,a2,2
    900015d4:	9682                	jalr	a3
    900015d6:	4485                	li	s1,1
    900015d8:	f101                	bnez	a0,900014d8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900015da:	6008                	ld	a0,0(s0)
    900015dc:	750c                	ld	a1,40(a0)
    900015de:	7108                	ld	a0,32(a0)
    900015e0:	6d94                	ld	a3,24(a1)
    900015e2:	85d6                	mv	a1,s5
    900015e4:	8652                	mv	a2,s4
    900015e6:	9682                	jalr	a3
    900015e8:	4485                	li	s1,1
    900015ea:	ee0517e3          	bnez	a0,900014d8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    900015ee:	6008                	ld	a0,0(s0)
    900015f0:	750c                	ld	a1,40(a0)
    900015f2:	7108                	ld	a0,32(a0)
    900015f4:	6d94                	ld	a3,24(a1)

00000000900015f6 <.LBB134_24>:
    900015f6:	00007597          	auipc	a1,0x7
    900015fa:	1ee58593          	addi	a1,a1,494 # 900087e4 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    900015fe:	4609                	li	a2,2
    90001600:	9682                	jalr	a3
    90001602:	4485                	li	s1,1
    90001604:	ec051ae3          	bnez	a0,900014d8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    90001608:	600c                	ld	a1,0(s0)
    9000160a:	0189b603          	ld	a2,24(s3)
    9000160e:	854a                	mv	a0,s2
    90001610:	9602                	jalr	a2
    90001612:	84aa                	mv	s1,a0
    90001614:	b5d1                	j	900014d8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>

0000000090001616 <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>:
    90001616:	7175                	addi	sp,sp,-144
    90001618:	e506                	sd	ra,136(sp)
    9000161a:	e122                	sd	s0,128(sp)
    9000161c:	fca6                	sd	s1,120(sp)
    9000161e:	f8ca                	sd	s2,112(sp)
    90001620:	f4ce                	sd	s3,104(sp)
    90001622:	842a                	mv	s0,a0
    90001624:	01054503          	lbu	a0,16(a0)
    90001628:	4485                	li	s1,1
    9000162a:	e179                	bnez	a0,900016f0 <.LBB137_18+0x24>
    9000162c:	89b2                	mv	s3,a2
    9000162e:	892e                	mv	s2,a1
    90001630:	6008                	ld	a0,0(s0)
    90001632:	03056583          	lwu	a1,48(a0)
    90001636:	6410                	ld	a2,8(s0)
    90001638:	0045f693          	andi	a3,a1,4
    9000163c:	00163613          	seqz	a2,a2
    90001640:	e699                	bnez	a3,9000164e <.LBB137_14+0xa>
    90001642:	e649                	bnez	a2,900016cc <.LBB137_18>

0000000090001644 <.LBB137_14>:
    90001644:	00007597          	auipc	a1,0x7
    90001648:	2e158593          	addi	a1,a1,737 # 90008925 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    9000164c:	a061                	j	900016d4 <.LBB137_18+0x8>
    9000164e:	ce11                	beqz	a2,9000166a <.LBB137_15+0x14>
    90001650:	750c                	ld	a1,40(a0)
    90001652:	7108                	ld	a0,32(a0)
    90001654:	6d94                	ld	a3,24(a1)

0000000090001656 <.LBB137_15>:
    90001656:	00007597          	auipc	a1,0x7
    9000165a:	2d758593          	addi	a1,a1,727 # 9000892d <.Lanon.9d4bfc86079e95d674f3cded52b1db19.203>
    9000165e:	4609                	li	a2,2
    90001660:	9682                	jalr	a3
    90001662:	e559                	bnez	a0,900016f0 <.LBB137_18+0x24>
    90001664:	6008                	ld	a0,0(s0)
    90001666:	03056583          	lwu	a1,48(a0)
    9000166a:	4485                	li	s1,1
    9000166c:	029103a3          	sb	s1,39(sp)
    90001670:	7110                	ld	a2,32(a0)
    90001672:	7514                	ld	a3,40(a0)
    90001674:	e432                	sd	a2,8(sp)
    90001676:	e836                	sd	a3,16(sp)
    90001678:	02710613          	addi	a2,sp,39
    9000167c:	ec32                	sd	a2,24(sp)
    9000167e:	5950                	lw	a2,52(a0)
    90001680:	03850683          	lb	a3,56(a0)
    90001684:	6118                	ld	a4,0(a0)
    90001686:	651c                	ld	a5,8(a0)
    90001688:	01053803          	ld	a6,16(a0)
    9000168c:	6d08                	ld	a0,24(a0)
    9000168e:	ccae                	sw	a1,88(sp)
    90001690:	ceb2                	sw	a2,92(sp)
    90001692:	06d10023          	sb	a3,96(sp)
    90001696:	f43a                	sd	a4,40(sp)
    90001698:	f83e                	sd	a5,48(sp)
    9000169a:	fc42                	sd	a6,56(sp)
    9000169c:	e0aa                	sd	a0,64(sp)
    9000169e:	0028                	addi	a0,sp,8
    900016a0:	0189b603          	ld	a2,24(s3)
    900016a4:	e4aa                	sd	a0,72(sp)

00000000900016a6 <.LBB137_16>:
    900016a6:	00007517          	auipc	a0,0x7
    900016aa:	21a50513          	addi	a0,a0,538 # 900088c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    900016ae:	e8aa                	sd	a0,80(sp)
    900016b0:	102c                	addi	a1,sp,40
    900016b2:	854a                	mv	a0,s2
    900016b4:	9602                	jalr	a2
    900016b6:	ed0d                	bnez	a0,900016f0 <.LBB137_18+0x24>
    900016b8:	65c6                	ld	a1,80(sp)
    900016ba:	6526                	ld	a0,72(sp)
    900016bc:	6d94                	ld	a3,24(a1)

00000000900016be <.LBB137_17>:
    900016be:	00007597          	auipc	a1,0x7
    900016c2:	26558593          	addi	a1,a1,613 # 90008923 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    900016c6:	4609                	li	a2,2
    900016c8:	9682                	jalr	a3
    900016ca:	a015                	j	900016ee <.LBB137_18+0x22>

00000000900016cc <.LBB137_18>:
    900016cc:	00007597          	auipc	a1,0x7
    900016d0:	26358593          	addi	a1,a1,611 # 9000892f <.Lanon.9d4bfc86079e95d674f3cded52b1db19.204>
    900016d4:	7514                	ld	a3,40(a0)
    900016d6:	7108                	ld	a0,32(a0)
    900016d8:	6e94                	ld	a3,24(a3)
    900016da:	4709                	li	a4,2
    900016dc:	40c70633          	sub	a2,a4,a2
    900016e0:	9682                	jalr	a3
    900016e2:	e519                	bnez	a0,900016f0 <.LBB137_18+0x24>
    900016e4:	600c                	ld	a1,0(s0)
    900016e6:	0189b603          	ld	a2,24(s3)
    900016ea:	854a                	mv	a0,s2
    900016ec:	9602                	jalr	a2
    900016ee:	84aa                	mv	s1,a0
    900016f0:	6408                	ld	a0,8(s0)
    900016f2:	00940823          	sb	s1,16(s0)
    900016f6:	0505                	addi	a0,a0,1
    900016f8:	e408                	sd	a0,8(s0)
    900016fa:	8522                	mv	a0,s0
    900016fc:	79a6                	ld	s3,104(sp)
    900016fe:	7946                	ld	s2,112(sp)
    90001700:	74e6                	ld	s1,120(sp)
    90001702:	640a                	ld	s0,128(sp)
    90001704:	60aa                	ld	ra,136(sp)
    90001706:	6149                	addi	sp,sp,144
    90001708:	8082                	ret

000000009000170a <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>:
    9000170a:	1101                	addi	sp,sp,-32
    9000170c:	ec06                	sd	ra,24(sp)
    9000170e:	e822                	sd	s0,16(sp)
    90001710:	e426                	sd	s1,8(sp)
    90001712:	842a                	mv	s0,a0
    90001714:	650c                	ld	a1,8(a0)
    90001716:	01054503          	lbu	a0,16(a0)
    9000171a:	c5b9                	beqz	a1,90001768 <.LBB138_10+0x14>
    9000171c:	4485                	li	s1,1
    9000171e:	e131                	bnez	a0,90001762 <.LBB138_10+0xe>
    90001720:	4505                	li	a0,1
    90001722:	02a59563          	bne	a1,a0,9000174c <.LBB138_9+0x10>
    90001726:	01144503          	lbu	a0,17(s0)
    9000172a:	c10d                	beqz	a0,9000174c <.LBB138_9+0x10>
    9000172c:	6008                	ld	a0,0(s0)
    9000172e:	03054583          	lbu	a1,48(a0)
    90001732:	8991                	andi	a1,a1,4
    90001734:	ed81                	bnez	a1,9000174c <.LBB138_9+0x10>
    90001736:	750c                	ld	a1,40(a0)
    90001738:	7108                	ld	a0,32(a0)
    9000173a:	6d94                	ld	a3,24(a1)

000000009000173c <.LBB138_9>:
    9000173c:	00007597          	auipc	a1,0x7
    90001740:	1f458593          	addi	a1,a1,500 # 90008930 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.205>
    90001744:	4605                	li	a2,1
    90001746:	4485                	li	s1,1
    90001748:	9682                	jalr	a3
    9000174a:	ed01                	bnez	a0,90001762 <.LBB138_10+0xe>
    9000174c:	6008                	ld	a0,0(s0)
    9000174e:	750c                	ld	a1,40(a0)
    90001750:	7108                	ld	a0,32(a0)
    90001752:	6d94                	ld	a3,24(a1)

0000000090001754 <.LBB138_10>:
    90001754:	00007597          	auipc	a1,0x7
    90001758:	1dd58593          	addi	a1,a1,477 # 90008931 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.206>
    9000175c:	4605                	li	a2,1
    9000175e:	9682                	jalr	a3
    90001760:	84aa                	mv	s1,a0
    90001762:	00940823          	sb	s1,16(s0)
    90001766:	8526                	mv	a0,s1
    90001768:	00a03533          	snez	a0,a0
    9000176c:	64a2                	ld	s1,8(sp)
    9000176e:	6442                	ld	s0,16(sp)
    90001770:	60e2                	ld	ra,24(sp)
    90001772:	6105                	addi	sp,sp,32
    90001774:	8082                	ret

0000000090001776 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E>:
    90001776:	1141                	addi	sp,sp,-16
    90001778:	e406                	sd	ra,8(sp)
    9000177a:	862e                	mv	a2,a1
    9000177c:	2581                	sext.w	a1,a1
    9000177e:	08000693          	li	a3,128
    90001782:	c202                	sw	zero,4(sp)
    90001784:	00d5fd63          	bgeu	a1,a3,9000179e <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x28>
    90001788:	004c                	addi	a1,sp,4
    9000178a:	00c10223          	sb	a2,4(sp)
    9000178e:	4605                	li	a2,1
    90001790:	00000097          	auipc	ra,0x0
    90001794:	be6080e7          	jalr	-1050(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001798:	60a2                	ld	ra,8(sp)
    9000179a:	0141                	addi	sp,sp,16
    9000179c:	8082                	ret
    9000179e:	00b6559b          	srliw	a1,a2,0xb
    900017a2:	e595                	bnez	a1,900017ce <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x58>
    900017a4:	004c                	addi	a1,sp,4
    900017a6:	00665693          	srli	a3,a2,0x6
    900017aa:	0c06e693          	ori	a3,a3,192
    900017ae:	00d10223          	sb	a3,4(sp)
    900017b2:	03f67613          	andi	a2,a2,63
    900017b6:	08066613          	ori	a2,a2,128
    900017ba:	00c102a3          	sb	a2,5(sp)
    900017be:	4609                	li	a2,2
    900017c0:	00000097          	auipc	ra,0x0
    900017c4:	bb6080e7          	jalr	-1098(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    900017c8:	60a2                	ld	ra,8(sp)
    900017ca:	0141                	addi	sp,sp,16
    900017cc:	8082                	ret
    900017ce:	0106569b          	srliw	a3,a2,0x10
    900017d2:	004c                	addi	a1,sp,4
    900017d4:	ee8d                	bnez	a3,9000180e <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x98>
    900017d6:	00c6569b          	srliw	a3,a2,0xc
    900017da:	0e06e693          	ori	a3,a3,224
    900017de:	00d10223          	sb	a3,4(sp)
    900017e2:	0066569b          	srliw	a3,a2,0x6
    900017e6:	03f6f693          	andi	a3,a3,63
    900017ea:	0806e693          	ori	a3,a3,128
    900017ee:	00d102a3          	sb	a3,5(sp)
    900017f2:	03f67613          	andi	a2,a2,63
    900017f6:	08066613          	ori	a2,a2,128
    900017fa:	00c10323          	sb	a2,6(sp)
    900017fe:	460d                	li	a2,3
    90001800:	00000097          	auipc	ra,0x0
    90001804:	b76080e7          	jalr	-1162(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001808:	60a2                	ld	ra,8(sp)
    9000180a:	0141                	addi	sp,sp,16
    9000180c:	8082                	ret
    9000180e:	0126569b          	srliw	a3,a2,0x12
    90001812:	0f06e693          	ori	a3,a3,240
    90001816:	00d10223          	sb	a3,4(sp)
    9000181a:	00c6569b          	srliw	a3,a2,0xc
    9000181e:	03f6f693          	andi	a3,a3,63
    90001822:	0806e693          	ori	a3,a3,128
    90001826:	00d102a3          	sb	a3,5(sp)
    9000182a:	0066569b          	srliw	a3,a2,0x6
    9000182e:	03f6f693          	andi	a3,a3,63
    90001832:	0806e693          	ori	a3,a3,128
    90001836:	00d10323          	sb	a3,6(sp)
    9000183a:	03f67613          	andi	a2,a2,63
    9000183e:	08066613          	ori	a2,a2,128
    90001842:	00c103a3          	sb	a2,7(sp)
    90001846:	4611                	li	a2,4
    90001848:	00000097          	auipc	ra,0x0
    9000184c:	b2e080e7          	jalr	-1234(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001850:	60a2                	ld	ra,8(sp)
    90001852:	0141                	addi	sp,sp,16
    90001854:	8082                	ret

0000000090001856 <_ZN4core3fmt5Write9write_fmt17hddb7215d3127a3d2E>:
    90001856:	7139                	addi	sp,sp,-64
    90001858:	fc06                	sd	ra,56(sp)
    9000185a:	7590                	ld	a2,40(a1)
    9000185c:	7194                	ld	a3,32(a1)
    9000185e:	e02a                	sd	a0,0(sp)
    90001860:	f832                	sd	a2,48(sp)
    90001862:	f436                	sd	a3,40(sp)
    90001864:	6d88                	ld	a0,24(a1)
    90001866:	6990                	ld	a2,16(a1)
    90001868:	6594                	ld	a3,8(a1)
    9000186a:	618c                	ld	a1,0(a1)
    9000186c:	f02a                	sd	a0,32(sp)
    9000186e:	ec32                	sd	a2,24(sp)
    90001870:	e836                	sd	a3,16(sp)
    90001872:	e42e                	sd	a1,8(sp)

0000000090001874 <.LBB160_1>:
    90001874:	00007597          	auipc	a1,0x7
    90001878:	1ec58593          	addi	a1,a1,492 # 90008a60 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.228>
    9000187c:	850a                	mv	a0,sp
    9000187e:	0030                	addi	a2,sp,8
    90001880:	00000097          	auipc	ra,0x0
    90001884:	166080e7          	jalr	358(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    90001888:	70e2                	ld	ra,56(sp)
    9000188a:	6121                	addi	sp,sp,64
    9000188c:	8082                	ret

000000009000188e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfa57a7fc9f8589d2E>:
    9000188e:	6108                	ld	a0,0(a0)
    90001890:	00000317          	auipc	t1,0x0
    90001894:	ae630067          	jr	-1306(t1) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>

0000000090001898 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE>:
    90001898:	1141                	addi	sp,sp,-16
    9000189a:	e406                	sd	ra,8(sp)
    9000189c:	862e                	mv	a2,a1
    9000189e:	6108                	ld	a0,0(a0)
    900018a0:	2581                	sext.w	a1,a1
    900018a2:	08000693          	li	a3,128
    900018a6:	c202                	sw	zero,4(sp)
    900018a8:	00d5fd63          	bgeu	a1,a3,900018c2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x2a>
    900018ac:	004c                	addi	a1,sp,4
    900018ae:	00c10223          	sb	a2,4(sp)
    900018b2:	4605                	li	a2,1
    900018b4:	00000097          	auipc	ra,0x0
    900018b8:	ac2080e7          	jalr	-1342(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    900018bc:	60a2                	ld	ra,8(sp)
    900018be:	0141                	addi	sp,sp,16
    900018c0:	8082                	ret
    900018c2:	00b6559b          	srliw	a1,a2,0xb
    900018c6:	e595                	bnez	a1,900018f2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x5a>
    900018c8:	004c                	addi	a1,sp,4
    900018ca:	00665693          	srli	a3,a2,0x6
    900018ce:	0c06e693          	ori	a3,a3,192
    900018d2:	00d10223          	sb	a3,4(sp)
    900018d6:	03f67613          	andi	a2,a2,63
    900018da:	08066613          	ori	a2,a2,128
    900018de:	00c102a3          	sb	a2,5(sp)
    900018e2:	4609                	li	a2,2
    900018e4:	00000097          	auipc	ra,0x0
    900018e8:	a92080e7          	jalr	-1390(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    900018ec:	60a2                	ld	ra,8(sp)
    900018ee:	0141                	addi	sp,sp,16
    900018f0:	8082                	ret
    900018f2:	0106569b          	srliw	a3,a2,0x10
    900018f6:	004c                	addi	a1,sp,4
    900018f8:	ee8d                	bnez	a3,90001932 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x9a>
    900018fa:	00c6569b          	srliw	a3,a2,0xc
    900018fe:	0e06e693          	ori	a3,a3,224
    90001902:	00d10223          	sb	a3,4(sp)
    90001906:	0066569b          	srliw	a3,a2,0x6
    9000190a:	03f6f693          	andi	a3,a3,63
    9000190e:	0806e693          	ori	a3,a3,128
    90001912:	00d102a3          	sb	a3,5(sp)
    90001916:	03f67613          	andi	a2,a2,63
    9000191a:	08066613          	ori	a2,a2,128
    9000191e:	00c10323          	sb	a2,6(sp)
    90001922:	460d                	li	a2,3
    90001924:	00000097          	auipc	ra,0x0
    90001928:	a52080e7          	jalr	-1454(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    9000192c:	60a2                	ld	ra,8(sp)
    9000192e:	0141                	addi	sp,sp,16
    90001930:	8082                	ret
    90001932:	0126569b          	srliw	a3,a2,0x12
    90001936:	0f06e693          	ori	a3,a3,240
    9000193a:	00d10223          	sb	a3,4(sp)
    9000193e:	00c6569b          	srliw	a3,a2,0xc
    90001942:	03f6f693          	andi	a3,a3,63
    90001946:	0806e693          	ori	a3,a3,128
    9000194a:	00d102a3          	sb	a3,5(sp)
    9000194e:	0066569b          	srliw	a3,a2,0x6
    90001952:	03f6f693          	andi	a3,a3,63
    90001956:	0806e693          	ori	a3,a3,128
    9000195a:	00d10323          	sb	a3,6(sp)
    9000195e:	03f67613          	andi	a2,a2,63
    90001962:	08066613          	ori	a2,a2,128
    90001966:	00c103a3          	sb	a2,7(sp)
    9000196a:	4611                	li	a2,4
    9000196c:	00000097          	auipc	ra,0x0
    90001970:	a0a080e7          	jalr	-1526(ra) # 90001376 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    90001974:	60a2                	ld	ra,8(sp)
    90001976:	0141                	addi	sp,sp,16
    90001978:	8082                	ret

000000009000197a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h242554f80beddc1fE>:
    9000197a:	7139                	addi	sp,sp,-64
    9000197c:	fc06                	sd	ra,56(sp)
    9000197e:	6108                	ld	a0,0(a0)
    90001980:	7590                	ld	a2,40(a1)
    90001982:	7194                	ld	a3,32(a1)
    90001984:	e02a                	sd	a0,0(sp)
    90001986:	f832                	sd	a2,48(sp)
    90001988:	f436                	sd	a3,40(sp)
    9000198a:	6d88                	ld	a0,24(a1)
    9000198c:	6990                	ld	a2,16(a1)
    9000198e:	6594                	ld	a3,8(a1)
    90001990:	618c                	ld	a1,0(a1)
    90001992:	f02a                	sd	a0,32(sp)
    90001994:	ec32                	sd	a2,24(sp)
    90001996:	e836                	sd	a3,16(sp)
    90001998:	e42e                	sd	a1,8(sp)

000000009000199a <.LBB163_1>:
    9000199a:	00007597          	auipc	a1,0x7
    9000199e:	0c658593          	addi	a1,a1,198 # 90008a60 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.228>
    900019a2:	850a                	mv	a0,sp
    900019a4:	0030                	addi	a2,sp,8
    900019a6:	00000097          	auipc	ra,0x0
    900019aa:	040080e7          	jalr	64(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    900019ae:	70e2                	ld	ra,56(sp)
    900019b0:	6121                	addi	sp,sp,64
    900019b2:	8082                	ret

00000000900019b4 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>:
    900019b4:	7139                	addi	sp,sp,-64
    900019b6:	fc06                	sd	ra,56(sp)
    900019b8:	7510                	ld	a2,40(a0)
    900019ba:	7118                	ld	a4,32(a0)
    900019bc:	7194                	ld	a3,32(a1)
    900019be:	758c                	ld	a1,40(a1)
    900019c0:	f832                	sd	a2,48(sp)
    900019c2:	f43a                	sd	a4,40(sp)
    900019c4:	6d10                	ld	a2,24(a0)
    900019c6:	6918                	ld	a4,16(a0)
    900019c8:	651c                	ld	a5,8(a0)
    900019ca:	6108                	ld	a0,0(a0)
    900019cc:	f032                	sd	a2,32(sp)
    900019ce:	ec3a                	sd	a4,24(sp)
    900019d0:	e83e                	sd	a5,16(sp)
    900019d2:	e42a                	sd	a0,8(sp)
    900019d4:	0030                	addi	a2,sp,8
    900019d6:	8536                	mv	a0,a3
    900019d8:	00000097          	auipc	ra,0x0
    900019dc:	00e080e7          	jalr	14(ra) # 900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>
    900019e0:	70e2                	ld	ra,56(sp)
    900019e2:	6121                	addi	sp,sp,64
    900019e4:	8082                	ret

00000000900019e6 <_ZN4core3fmt5write17h338141860f5a80fbE>:
    900019e6:	7135                	addi	sp,sp,-160
    900019e8:	ed06                	sd	ra,152(sp)
    900019ea:	e922                	sd	s0,144(sp)
    900019ec:	e526                	sd	s1,136(sp)
    900019ee:	e14a                	sd	s2,128(sp)
    900019f0:	fcce                	sd	s3,120(sp)
    900019f2:	f8d2                	sd	s4,112(sp)
    900019f4:	f4d6                	sd	s5,104(sp)
    900019f6:	f0da                	sd	s6,96(sp)
    900019f8:	ecde                	sd	s7,88(sp)
    900019fa:	e8e2                	sd	s8,80(sp)
    900019fc:	e4e6                	sd	s9,72(sp)
    900019fe:	8432                	mv	s0,a2
    90001a00:	4605                	li	a2,1
    90001a02:	1616                	slli	a2,a2,0x25
    90001a04:	fc32                	sd	a2,56(sp)
    90001a06:	460d                	li	a2,3
    90001a08:	04c10023          	sb	a2,64(sp)
    90001a0c:	6804                	ld	s1,16(s0)
    90001a0e:	e402                	sd	zero,8(sp)
    90001a10:	ec02                	sd	zero,24(sp)
    90001a12:	f42a                	sd	a0,40(sp)
    90001a14:	f82e                	sd	a1,48(sp)
    90001a16:	cce9                	beqz	s1,90001af0 <.LBB167_35+0x9e>
    90001a18:	6c10                	ld	a2,24(s0)
    90001a1a:	00843983          	ld	s3,8(s0)
    90001a1e:	00043903          	ld	s2,0(s0)
    90001a22:	8ace                	mv	s5,s3
    90001a24:	00c9e363          	bltu	s3,a2,90001a2a <_ZN4core3fmt5write17h338141860f5a80fbE+0x44>
    90001a28:	8ab2                	mv	s5,a2
    90001a2a:	120a8163          	beqz	s5,90001b4c <.LBB167_35+0xfa>
    90001a2e:	00093683          	ld	a3,0(s2)
    90001a32:	00893603          	ld	a2,8(s2)
    90001a36:	6d98                	ld	a4,24(a1)
    90001a38:	85b6                	mv	a1,a3
    90001a3a:	9702                	jalr	a4
    90001a3c:	12051663          	bnez	a0,90001b68 <.LBB167_35+0x116>
    90001a40:	02043c03          	ld	s8,32(s0)
    90001a44:	03048493          	addi	s1,s1,48
    90001a48:	01890c93          	addi	s9,s2,24
    90001a4c:	00810a13          	addi	s4,sp,8
    90001a50:	4b09                	li	s6,2

0000000090001a52 <.LBB167_35>:
    90001a52:	fffffb97          	auipc	s7,0xfffff
    90001a56:	786b8b93          	addi	s7,s7,1926 # 900011d8 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>
    90001a5a:	8456                	mv	s0,s5
    90001a5c:	ff84a503          	lw	a0,-8(s1)
    90001a60:	de2a                	sw	a0,60(sp)
    90001a62:	00048503          	lb	a0,0(s1)
    90001a66:	04a10023          	sb	a0,64(sp)
    90001a6a:	ffc4a503          	lw	a0,-4(s1)
    90001a6e:	dc2a                	sw	a0,56(sp)
    90001a70:	fe84b603          	ld	a2,-24(s1)
    90001a74:	ff04b503          	ld	a0,-16(s1)
    90001a78:	ca19                	beqz	a2,90001a8e <.LBB167_35+0x3c>
    90001a7a:	4581                	li	a1,0
    90001a7c:	01660c63          	beq	a2,s6,90001a94 <.LBB167_35+0x42>
    90001a80:	0512                	slli	a0,a0,0x4
    90001a82:	9562                	add	a0,a0,s8
    90001a84:	650c                	ld	a1,8(a0)
    90001a86:	01759663          	bne	a1,s7,90001a92 <.LBB167_35+0x40>
    90001a8a:	6108                	ld	a0,0(a0)
    90001a8c:	6108                	ld	a0,0(a0)
    90001a8e:	4585                	li	a1,1
    90001a90:	a011                	j	90001a94 <.LBB167_35+0x42>
    90001a92:	4581                	li	a1,0
    90001a94:	e42e                	sd	a1,8(sp)
    90001a96:	e82a                	sd	a0,16(sp)
    90001a98:	fd84b603          	ld	a2,-40(s1)
    90001a9c:	fe04b503          	ld	a0,-32(s1)
    90001aa0:	ca19                	beqz	a2,90001ab6 <.LBB167_35+0x64>
    90001aa2:	4581                	li	a1,0
    90001aa4:	01660c63          	beq	a2,s6,90001abc <.LBB167_35+0x6a>
    90001aa8:	0512                	slli	a0,a0,0x4
    90001aaa:	9562                	add	a0,a0,s8
    90001aac:	650c                	ld	a1,8(a0)
    90001aae:	01759663          	bne	a1,s7,90001aba <.LBB167_35+0x68>
    90001ab2:	6108                	ld	a0,0(a0)
    90001ab4:	6108                	ld	a0,0(a0)
    90001ab6:	4585                	li	a1,1
    90001ab8:	a011                	j	90001abc <.LBB167_35+0x6a>
    90001aba:	4581                	li	a1,0
    90001abc:	ec2e                	sd	a1,24(sp)
    90001abe:	f02a                	sd	a0,32(sp)
    90001ac0:	fd04b503          	ld	a0,-48(s1)
    90001ac4:	0512                	slli	a0,a0,0x4
    90001ac6:	9562                	add	a0,a0,s8
    90001ac8:	6510                	ld	a2,8(a0)
    90001aca:	6108                	ld	a0,0(a0)
    90001acc:	85d2                	mv	a1,s4
    90001ace:	9602                	jalr	a2
    90001ad0:	ed41                	bnez	a0,90001b68 <.LBB167_35+0x116>
    90001ad2:	147d                	addi	s0,s0,-1
    90001ad4:	cc2d                	beqz	s0,90001b4e <.LBB167_35+0xfc>
    90001ad6:	76c2                	ld	a3,48(sp)
    90001ad8:	7522                	ld	a0,40(sp)
    90001ada:	ff8cb583          	ld	a1,-8(s9)
    90001ade:	000cb603          	ld	a2,0(s9)
    90001ae2:	6e94                	ld	a3,24(a3)
    90001ae4:	03848493          	addi	s1,s1,56
    90001ae8:	0cc1                	addi	s9,s9,16
    90001aea:	9682                	jalr	a3
    90001aec:	d925                	beqz	a0,90001a5c <.LBB167_35+0xa>
    90001aee:	a8ad                	j	90001b68 <.LBB167_35+0x116>
    90001af0:	7004                	ld	s1,32(s0)
    90001af2:	7410                	ld	a2,40(s0)
    90001af4:	00843983          	ld	s3,8(s0)
    90001af8:	00043903          	ld	s2,0(s0)
    90001afc:	8ace                	mv	s5,s3
    90001afe:	00c9e363          	bltu	s3,a2,90001b04 <.LBB167_35+0xb2>
    90001b02:	8ab2                	mv	s5,a2
    90001b04:	040a8463          	beqz	s5,90001b4c <.LBB167_35+0xfa>
    90001b08:	00093683          	ld	a3,0(s2)
    90001b0c:	00893603          	ld	a2,8(s2)
    90001b10:	6d98                	ld	a4,24(a1)
    90001b12:	85b6                	mv	a1,a3
    90001b14:	9702                	jalr	a4
    90001b16:	e929                	bnez	a0,90001b68 <.LBB167_35+0x116>
    90001b18:	04a1                	addi	s1,s1,8
    90001b1a:	01890b13          	addi	s6,s2,24
    90001b1e:	00810a13          	addi	s4,sp,8
    90001b22:	8456                	mv	s0,s5
    90001b24:	6090                	ld	a2,0(s1)
    90001b26:	ff84b503          	ld	a0,-8(s1)
    90001b2a:	85d2                	mv	a1,s4
    90001b2c:	9602                	jalr	a2
    90001b2e:	ed0d                	bnez	a0,90001b68 <.LBB167_35+0x116>
    90001b30:	147d                	addi	s0,s0,-1
    90001b32:	cc11                	beqz	s0,90001b4e <.LBB167_35+0xfc>
    90001b34:	76c2                	ld	a3,48(sp)
    90001b36:	7522                	ld	a0,40(sp)
    90001b38:	ff8b3583          	ld	a1,-8(s6)
    90001b3c:	000b3603          	ld	a2,0(s6)
    90001b40:	6e94                	ld	a3,24(a3)
    90001b42:	04c1                	addi	s1,s1,16
    90001b44:	0b41                	addi	s6,s6,16
    90001b46:	9682                	jalr	a3
    90001b48:	dd71                	beqz	a0,90001b24 <.LBB167_35+0xd2>
    90001b4a:	a839                	j	90001b68 <.LBB167_35+0x116>
    90001b4c:	4a81                	li	s5,0
    90001b4e:	013aff63          	bgeu	s5,s3,90001b6c <.LBB167_35+0x11a>
    90001b52:	7522                	ld	a0,40(sp)
    90001b54:	76c2                	ld	a3,48(sp)
    90001b56:	004a9593          	slli	a1,s5,0x4
    90001b5a:	00b90633          	add	a2,s2,a1
    90001b5e:	620c                	ld	a1,0(a2)
    90001b60:	6610                	ld	a2,8(a2)
    90001b62:	6e94                	ld	a3,24(a3)
    90001b64:	9682                	jalr	a3
    90001b66:	c119                	beqz	a0,90001b6c <.LBB167_35+0x11a>
    90001b68:	4505                	li	a0,1
    90001b6a:	a011                	j	90001b6e <.LBB167_35+0x11c>
    90001b6c:	4501                	li	a0,0
    90001b6e:	6ca6                	ld	s9,72(sp)
    90001b70:	6c46                	ld	s8,80(sp)
    90001b72:	6be6                	ld	s7,88(sp)
    90001b74:	7b06                	ld	s6,96(sp)
    90001b76:	7aa6                	ld	s5,104(sp)
    90001b78:	7a46                	ld	s4,112(sp)
    90001b7a:	79e6                	ld	s3,120(sp)
    90001b7c:	690a                	ld	s2,128(sp)
    90001b7e:	64aa                	ld	s1,136(sp)
    90001b80:	644a                	ld	s0,144(sp)
    90001b82:	60ea                	ld	ra,152(sp)
    90001b84:	610d                	addi	sp,sp,160
    90001b86:	8082                	ret

0000000090001b88 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>:
    90001b88:	7159                	addi	sp,sp,-112
    90001b8a:	f486                	sd	ra,104(sp)
    90001b8c:	f0a2                	sd	s0,96(sp)
    90001b8e:	eca6                	sd	s1,88(sp)
    90001b90:	e8ca                	sd	s2,80(sp)
    90001b92:	e4ce                	sd	s3,72(sp)
    90001b94:	e0d2                	sd	s4,64(sp)
    90001b96:	fc56                	sd	s5,56(sp)
    90001b98:	f85a                	sd	s6,48(sp)
    90001b9a:	f45e                	sd	s7,40(sp)
    90001b9c:	f062                	sd	s8,32(sp)
    90001b9e:	ec66                	sd	s9,24(sp)
    90001ba0:	e86a                	sd	s10,16(sp)
    90001ba2:	e46e                	sd	s11,8(sp)
    90001ba4:	89be                	mv	s3,a5
    90001ba6:	893a                	mv	s2,a4
    90001ba8:	8ab6                	mv	s5,a3
    90001baa:	842a                	mv	s0,a0
    90001bac:	c9b1                	beqz	a1,90001c00 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x78>
    90001bae:	03046503          	lwu	a0,48(s0)
    90001bb2:	00157593          	andi	a1,a0,1
    90001bb6:	00110a37          	lui	s4,0x110
    90001bba:	c199                	beqz	a1,90001bc0 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x38>
    90001bbc:	02b00a13          	li	s4,43
    90001bc0:	01358cb3          	add	s9,a1,s3
    90001bc4:	00457593          	andi	a1,a0,4
    90001bc8:	c5a9                	beqz	a1,90001c12 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x8a>
    90001bca:	4581                	li	a1,0
    90001bcc:	020a8063          	beqz	s5,90001bec <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x64>
    90001bd0:	86d6                	mv	a3,s5
    90001bd2:	8732                	mv	a4,a2
    90001bd4:	00074783          	lbu	a5,0(a4)
    90001bd8:	0705                	addi	a4,a4,1
    90001bda:	0c07f793          	andi	a5,a5,192
    90001bde:	f8078793          	addi	a5,a5,-128 # f80 <n+0xf60>
    90001be2:	0017b793          	seqz	a5,a5
    90001be6:	16fd                	addi	a3,a3,-1
    90001be8:	95be                	add	a1,a1,a5
    90001bea:	f6ed                	bnez	a3,90001bd4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x4c>
    90001bec:	015c86b3          	add	a3,s9,s5
    90001bf0:	40b68cb3          	sub	s9,a3,a1
    90001bf4:	8b32                	mv	s6,a2
    90001bf6:	600c                	ld	a1,0(s0)
    90001bf8:	4d85                	li	s11,1
    90001bfa:	03b58163          	beq	a1,s11,90001c1c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x94>
    90001bfe:	a0b1                	j	90001c4a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90001c00:	03046503          	lwu	a0,48(s0)
    90001c04:	00198c93          	addi	s9,s3,1
    90001c08:	02d00a13          	li	s4,45
    90001c0c:	00457593          	andi	a1,a0,4
    90001c10:	fdcd                	bnez	a1,90001bca <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x42>
    90001c12:	4b01                	li	s6,0
    90001c14:	600c                	ld	a1,0(s0)
    90001c16:	4d85                	li	s11,1
    90001c18:	03b59963          	bne	a1,s11,90001c4a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90001c1c:	00843d03          	ld	s10,8(s0)
    90001c20:	03acf563          	bgeu	s9,s10,90001c4a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    90001c24:	8921                	andi	a0,a0,8
    90001c26:	ed3d                	bnez	a0,90001ca4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x11c>
    90001c28:	03844503          	lbu	a0,56(s0)
    90001c2c:	4585                	li	a1,1
    90001c2e:	468d                	li	a3,3
    90001c30:	4605                	li	a2,1
    90001c32:	00d50363          	beq	a0,a3,90001c38 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xb0>
    90001c36:	862a                	mv	a2,a0
    90001c38:	8a0d                	andi	a2,a2,3
    90001c3a:	419d0533          	sub	a0,s10,s9
    90001c3e:	0ac5c763          	blt	a1,a2,90001cec <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x164>
    90001c42:	ea45                	bnez	a2,90001cf2 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16a>
    90001c44:	8c2a                	mv	s8,a0
    90001c46:	4501                	li	a0,0
    90001c48:	a0c9                	j	90001d0a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    90001c4a:	8522                	mv	a0,s0
    90001c4c:	85d2                	mv	a1,s4
    90001c4e:	865a                	mv	a2,s6
    90001c50:	86d6                	mv	a3,s5
    90001c52:	00000097          	auipc	ra,0x0
    90001c56:	174080e7          	jalr	372(ra) # 90001dc6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    90001c5a:	c10d                	beqz	a0,90001c7c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xf4>
    90001c5c:	856e                	mv	a0,s11
    90001c5e:	6da2                	ld	s11,8(sp)
    90001c60:	6d42                	ld	s10,16(sp)
    90001c62:	6ce2                	ld	s9,24(sp)
    90001c64:	7c02                	ld	s8,32(sp)
    90001c66:	7ba2                	ld	s7,40(sp)
    90001c68:	7b42                	ld	s6,48(sp)
    90001c6a:	7ae2                	ld	s5,56(sp)
    90001c6c:	6a06                	ld	s4,64(sp)
    90001c6e:	69a6                	ld	s3,72(sp)
    90001c70:	6946                	ld	s2,80(sp)
    90001c72:	64e6                	ld	s1,88(sp)
    90001c74:	7406                	ld	s0,96(sp)
    90001c76:	70a6                	ld	ra,104(sp)
    90001c78:	6165                	addi	sp,sp,112
    90001c7a:	8082                	ret
    90001c7c:	740c                	ld	a1,40(s0)
    90001c7e:	7008                	ld	a0,32(s0)
    90001c80:	6d9c                	ld	a5,24(a1)
    90001c82:	85ca                	mv	a1,s2
    90001c84:	864e                	mv	a2,s3
    90001c86:	6da2                	ld	s11,8(sp)
    90001c88:	6d42                	ld	s10,16(sp)
    90001c8a:	6ce2                	ld	s9,24(sp)
    90001c8c:	7c02                	ld	s8,32(sp)
    90001c8e:	7ba2                	ld	s7,40(sp)
    90001c90:	7b42                	ld	s6,48(sp)
    90001c92:	7ae2                	ld	s5,56(sp)
    90001c94:	6a06                	ld	s4,64(sp)
    90001c96:	69a6                	ld	s3,72(sp)
    90001c98:	6946                	ld	s2,80(sp)
    90001c9a:	64e6                	ld	s1,88(sp)
    90001c9c:	7406                	ld	s0,96(sp)
    90001c9e:	70a6                	ld	ra,104(sp)
    90001ca0:	6165                	addi	sp,sp,112
    90001ca2:	8782                	jr	a5
    90001ca4:	03446b83          	lwu	s7,52(s0)
    90001ca8:	03000513          	li	a0,48
    90001cac:	03844c03          	lbu	s8,56(s0)
    90001cb0:	d848                	sw	a0,52(s0)
    90001cb2:	4d85                	li	s11,1
    90001cb4:	03b40c23          	sb	s11,56(s0)
    90001cb8:	8522                	mv	a0,s0
    90001cba:	85d2                	mv	a1,s4
    90001cbc:	865a                	mv	a2,s6
    90001cbe:	86d6                	mv	a3,s5
    90001cc0:	00000097          	auipc	ra,0x0
    90001cc4:	106080e7          	jalr	262(ra) # 90001dc6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    90001cc8:	f951                	bnez	a0,90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90001cca:	03844503          	lbu	a0,56(s0)
    90001cce:	4585                	li	a1,1
    90001cd0:	468d                	li	a3,3
    90001cd2:	4605                	li	a2,1
    90001cd4:	00d50363          	beq	a0,a3,90001cda <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x152>
    90001cd8:	862a                	mv	a2,a0
    90001cda:	8a0d                	andi	a2,a2,3
    90001cdc:	419d0533          	sub	a0,s10,s9
    90001ce0:	00c5cb63          	blt	a1,a2,90001cf6 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16e>
    90001ce4:	ee01                	bnez	a2,90001cfc <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x174>
    90001ce6:	8aaa                	mv	s5,a0
    90001ce8:	4501                	li	a0,0
    90001cea:	a041                	j	90001d6a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    90001cec:	458d                	li	a1,3
    90001cee:	00b61963          	bne	a2,a1,90001d00 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x178>
    90001cf2:	4c01                	li	s8,0
    90001cf4:	a819                	j	90001d0a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    90001cf6:	458d                	li	a1,3
    90001cf8:	06b61463          	bne	a2,a1,90001d60 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1d8>
    90001cfc:	4a81                	li	s5,0
    90001cfe:	a0b5                	j	90001d6a <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    90001d00:	00150593          	addi	a1,a0,1
    90001d04:	8105                	srli	a0,a0,0x1
    90001d06:	0015dc13          	srli	s8,a1,0x1
    90001d0a:	00150493          	addi	s1,a0,1
    90001d0e:	14fd                	addi	s1,s1,-1
    90001d10:	c881                	beqz	s1,90001d20 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x198>
    90001d12:	740c                	ld	a1,40(s0)
    90001d14:	7008                	ld	a0,32(s0)
    90001d16:	7190                	ld	a2,32(a1)
    90001d18:	584c                	lw	a1,52(s0)
    90001d1a:	9602                	jalr	a2
    90001d1c:	d96d                	beqz	a0,90001d0e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x186>
    90001d1e:	a085                	j	90001d7e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1f6>
    90001d20:	03446b83          	lwu	s7,52(s0)
    90001d24:	8522                	mv	a0,s0
    90001d26:	85d2                	mv	a1,s4
    90001d28:	865a                	mv	a2,s6
    90001d2a:	86d6                	mv	a3,s5
    90001d2c:	00000097          	auipc	ra,0x0
    90001d30:	09a080e7          	jalr	154(ra) # 90001dc6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    90001d34:	4d85                	li	s11,1
    90001d36:	f11d                	bnez	a0,90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90001d38:	740c                	ld	a1,40(s0)
    90001d3a:	7008                	ld	a0,32(s0)
    90001d3c:	6d94                	ld	a3,24(a1)
    90001d3e:	85ca                	mv	a1,s2
    90001d40:	864e                	mv	a2,s3
    90001d42:	9682                	jalr	a3
    90001d44:	fd01                	bnez	a0,90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90001d46:	02043903          	ld	s2,32(s0)
    90001d4a:	7400                	ld	s0,40(s0)
    90001d4c:	001c0493          	addi	s1,s8,1
    90001d50:	14fd                	addi	s1,s1,-1
    90001d52:	c0b5                	beqz	s1,90001db6 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x22e>
    90001d54:	7010                	ld	a2,32(s0)
    90001d56:	854a                	mv	a0,s2
    90001d58:	85de                	mv	a1,s7
    90001d5a:	9602                	jalr	a2
    90001d5c:	d975                	beqz	a0,90001d50 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1c8>
    90001d5e:	bdfd                	j	90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90001d60:	00150593          	addi	a1,a0,1
    90001d64:	8105                	srli	a0,a0,0x1
    90001d66:	0015da93          	srli	s5,a1,0x1
    90001d6a:	00150493          	addi	s1,a0,1
    90001d6e:	14fd                	addi	s1,s1,-1
    90001d70:	c889                	beqz	s1,90001d82 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1fa>
    90001d72:	740c                	ld	a1,40(s0)
    90001d74:	7008                	ld	a0,32(s0)
    90001d76:	7190                	ld	a2,32(a1)
    90001d78:	584c                	lw	a1,52(s0)
    90001d7a:	9602                	jalr	a2
    90001d7c:	d96d                	beqz	a0,90001d6e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e6>
    90001d7e:	4d85                	li	s11,1
    90001d80:	bdf1                	j	90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90001d82:	740c                	ld	a1,40(s0)
    90001d84:	03446a03          	lwu	s4,52(s0)
    90001d88:	7008                	ld	a0,32(s0)
    90001d8a:	6d94                	ld	a3,24(a1)
    90001d8c:	85ca                	mv	a1,s2
    90001d8e:	864e                	mv	a2,s3
    90001d90:	9682                	jalr	a3
    90001d92:	4d85                	li	s11,1
    90001d94:	ec0514e3          	bnez	a0,90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90001d98:	02043903          	ld	s2,32(s0)
    90001d9c:	02843983          	ld	s3,40(s0)
    90001da0:	001a8493          	addi	s1,s5,1
    90001da4:	14fd                	addi	s1,s1,-1
    90001da6:	c891                	beqz	s1,90001dba <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x232>
    90001da8:	0209b603          	ld	a2,32(s3)
    90001dac:	854a                	mv	a0,s2
    90001dae:	85d2                	mv	a1,s4
    90001db0:	9602                	jalr	a2
    90001db2:	d96d                	beqz	a0,90001da4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x21c>
    90001db4:	b565                	j	90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90001db6:	4d81                	li	s11,0
    90001db8:	b555                	j	90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    90001dba:	4d81                	li	s11,0
    90001dbc:	03742a23          	sw	s7,52(s0)
    90001dc0:	03840c23          	sb	s8,56(s0)
    90001dc4:	bd61                	j	90001c5c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>

0000000090001dc6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>:
    90001dc6:	1101                	addi	sp,sp,-32
    90001dc8:	ec06                	sd	ra,24(sp)
    90001dca:	e822                	sd	s0,16(sp)
    90001dcc:	e426                	sd	s1,8(sp)
    90001dce:	e04a                	sd	s2,0(sp)
    90001dd0:	02059713          	slli	a4,a1,0x20
    90001dd4:	9301                	srli	a4,a4,0x20
    90001dd6:	001107b7          	lui	a5,0x110
    90001dda:	8936                	mv	s2,a3
    90001ddc:	84b2                	mv	s1,a2
    90001dde:	842a                	mv	s0,a0
    90001de0:	00f70963          	beq	a4,a5,90001df2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x2c>
    90001de4:	7410                	ld	a2,40(s0)
    90001de6:	7008                	ld	a0,32(s0)
    90001de8:	7210                	ld	a2,32(a2)
    90001dea:	9602                	jalr	a2
    90001dec:	85aa                	mv	a1,a0
    90001dee:	4505                	li	a0,1
    90001df0:	ed91                	bnez	a1,90001e0c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x46>
    90001df2:	cc81                	beqz	s1,90001e0a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x44>
    90001df4:	740c                	ld	a1,40(s0)
    90001df6:	7008                	ld	a0,32(s0)
    90001df8:	6d9c                	ld	a5,24(a1)
    90001dfa:	85a6                	mv	a1,s1
    90001dfc:	864a                	mv	a2,s2
    90001dfe:	6902                	ld	s2,0(sp)
    90001e00:	64a2                	ld	s1,8(sp)
    90001e02:	6442                	ld	s0,16(sp)
    90001e04:	60e2                	ld	ra,24(sp)
    90001e06:	6105                	addi	sp,sp,32
    90001e08:	8782                	jr	a5
    90001e0a:	4501                	li	a0,0
    90001e0c:	6902                	ld	s2,0(sp)
    90001e0e:	64a2                	ld	s1,8(sp)
    90001e10:	6442                	ld	s0,16(sp)
    90001e12:	60e2                	ld	ra,24(sp)
    90001e14:	6105                	addi	sp,sp,32
    90001e16:	8082                	ret

0000000090001e18 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>:
    90001e18:	7139                	addi	sp,sp,-64
    90001e1a:	fc06                	sd	ra,56(sp)
    90001e1c:	f822                	sd	s0,48(sp)
    90001e1e:	f426                	sd	s1,40(sp)
    90001e20:	f04a                	sd	s2,32(sp)
    90001e22:	ec4e                	sd	s3,24(sp)
    90001e24:	e852                	sd	s4,16(sp)
    90001e26:	e456                	sd	s5,8(sp)
    90001e28:	e05a                	sd	s6,0(sp)
    90001e2a:	8b2a                	mv	s6,a0
    90001e2c:	6914                	ld	a3,16(a0)
    90001e2e:	6108                	ld	a0,0(a0)
    90001e30:	89b2                	mv	s3,a2
    90001e32:	892e                	mv	s2,a1
    90001e34:	fff68593          	addi	a1,a3,-1
    90001e38:	4605                	li	a2,1
    90001e3a:	0015b593          	seqz	a1,a1
    90001e3e:	00c51463          	bne	a0,a2,90001e46 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2e>
    90001e42:	e581                	bnez	a1,90001e4a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x32>
    90001e44:	a215                	j	90001f68 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x150>
    90001e46:	18058f63          	beqz	a1,90001fe4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90001e4a:	018b3683          	ld	a3,24(s6)
    90001e4e:	157d                	addi	a0,a0,-1
    90001e50:	00153813          	seqz	a6,a0
    90001e54:	01390733          	add	a4,s2,s3
    90001e58:	4581                	li	a1,0
    90001e5a:	c2dd                	beqz	a3,90001f00 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe8>
    90001e5c:	5e7d                	li	t3,-1
    90001e5e:	0e000393          	li	t2,224
    90001e62:	0f000313          	li	t1,240
    90001e66:	001c08b7          	lui	a7,0x1c0
    90001e6a:	001102b7          	lui	t0,0x110
    90001e6e:	854a                	mv	a0,s2
    90001e70:	a815                	j	90001ea4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x8c>
    90001e72:	00064403          	lbu	s0,0(a2)
    90001e76:	00160493          	addi	s1,a2,1
    90001e7a:	03f47f93          	andi	t6,s0,63
    90001e7e:	07ca                	slli	a5,a5,0x12
    90001e80:	0117f7b3          	and	a5,a5,a7
    90001e84:	00cf1413          	slli	s0,t5,0xc
    90001e88:	006e9613          	slli	a2,t4,0x6
    90001e8c:	8fc1                	or	a5,a5,s0
    90001e8e:	8e5d                	or	a2,a2,a5
    90001e90:	01f66633          	or	a2,a2,t6
    90001e94:	0c560863          	beq	a2,t0,90001f64 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90001e98:	40a48533          	sub	a0,s1,a0
    90001e9c:	16fd                	addi	a3,a3,-1
    90001e9e:	95aa                	add	a1,a1,a0
    90001ea0:	8526                	mv	a0,s1
    90001ea2:	c2a5                	beqz	a3,90001f02 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xea>
    90001ea4:	0ca70063          	beq	a4,a0,90001f64 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90001ea8:	00050603          	lb	a2,0(a0)
    90001eac:	00150493          	addi	s1,a0,1
    90001eb0:	fece44e3          	blt	t3,a2,90001e98 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90001eb4:	0ff67793          	andi	a5,a2,255
    90001eb8:	00e48c63          	beq	s1,a4,90001ed0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xb8>
    90001ebc:	00154603          	lbu	a2,1(a0)
    90001ec0:	00250493          	addi	s1,a0,2
    90001ec4:	03f67f13          	andi	t5,a2,63
    90001ec8:	8626                	mv	a2,s1
    90001eca:	fc77e7e3          	bltu	a5,t2,90001e98 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90001ece:	a029                	j	90001ed8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xc0>
    90001ed0:	4f01                	li	t5,0
    90001ed2:	863a                	mv	a2,a4
    90001ed4:	fc77e2e3          	bltu	a5,t2,90001e98 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90001ed8:	00e60c63          	beq	a2,a4,90001ef0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xd8>
    90001edc:	00064403          	lbu	s0,0(a2)
    90001ee0:	00160493          	addi	s1,a2,1
    90001ee4:	03f47e93          	andi	t4,s0,63
    90001ee8:	8626                	mv	a2,s1
    90001eea:	fa67e7e3          	bltu	a5,t1,90001e98 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90001eee:	a029                	j	90001ef8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe0>
    90001ef0:	4e81                	li	t4,0
    90001ef2:	863a                	mv	a2,a4
    90001ef4:	fa67e2e3          	bltu	a5,t1,90001e98 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    90001ef8:	f6e61de3          	bne	a2,a4,90001e72 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x5a>
    90001efc:	4f81                	li	t6,0
    90001efe:	b741                	j	90001e7e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x66>
    90001f00:	84ca                	mv	s1,s2
    90001f02:	06970163          	beq	a4,s1,90001f64 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90001f06:	00048503          	lb	a0,0(s1)
    90001f0a:	567d                	li	a2,-1
    90001f0c:	02a65763          	bge	a2,a0,90001f3a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x122>
    90001f10:	0015b513          	seqz	a0,a1
    90001f14:	0135c633          	xor	a2,a1,s3
    90001f18:	00163613          	seqz	a2,a2
    90001f1c:	8d51                	or	a0,a0,a2
    90001f1e:	e919                	bnez	a0,90001f34 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x11c>
    90001f20:	0335fe63          	bgeu	a1,s3,90001f5c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    90001f24:	00b90533          	add	a0,s2,a1
    90001f28:	00050503          	lb	a0,0(a0)
    90001f2c:	fc000613          	li	a2,-64
    90001f30:	02c54663          	blt	a0,a2,90001f5c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    90001f34:	854a                	mv	a0,s2
    90001f36:	e50d                	bnez	a0,90001f60 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x148>
    90001f38:	a035                	j	90001f64 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90001f3a:	00148613          	addi	a2,s1,1
    90001f3e:	0ff57513          	andi	a0,a0,255
    90001f42:	14e60163          	beq	a2,a4,90002084 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x26c>
    90001f46:	0014c683          	lbu	a3,1(s1)
    90001f4a:	00248613          	addi	a2,s1,2
    90001f4e:	03f6f693          	andi	a3,a3,63
    90001f52:	0e000793          	li	a5,224
    90001f56:	12f57d63          	bgeu	a0,a5,90002090 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x278>
    90001f5a:	bf5d                	j	90001f10 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90001f5c:	4501                	li	a0,0
    90001f5e:	c119                	beqz	a0,90001f64 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    90001f60:	892a                	mv	s2,a0
    90001f62:	89ae                	mv	s3,a1
    90001f64:	08080063          	beqz	a6,90001fe4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90001f68:	04098763          	beqz	s3,90001fb6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x19e>
    90001f6c:	4581                	li	a1,0
    90001f6e:	854e                	mv	a0,s3
    90001f70:	864a                	mv	a2,s2
    90001f72:	00064683          	lbu	a3,0(a2)
    90001f76:	0605                	addi	a2,a2,1
    90001f78:	0c06f693          	andi	a3,a3,192
    90001f7c:	f8068693          	addi	a3,a3,-128
    90001f80:	0016b693          	seqz	a3,a3
    90001f84:	157d                	addi	a0,a0,-1
    90001f86:	95b6                	add	a1,a1,a3
    90001f88:	f56d                	bnez	a0,90001f72 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x15a>
    90001f8a:	008b3503          	ld	a0,8(s6)
    90001f8e:	40b985b3          	sub	a1,s3,a1
    90001f92:	04a5f963          	bgeu	a1,a0,90001fe4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90001f96:	4581                	li	a1,0
    90001f98:	864e                	mv	a2,s3
    90001f9a:	86ca                	mv	a3,s2
    90001f9c:	0006c703          	lbu	a4,0(a3)
    90001fa0:	0685                	addi	a3,a3,1
    90001fa2:	0c077713          	andi	a4,a4,192
    90001fa6:	f8070713          	addi	a4,a4,-128
    90001faa:	00173713          	seqz	a4,a4
    90001fae:	167d                	addi	a2,a2,-1
    90001fb0:	95ba                	add	a1,a1,a4
    90001fb2:	f66d                	bnez	a2,90001f9c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x184>
    90001fb4:	a029                	j	90001fbe <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1a6>
    90001fb6:	008b3503          	ld	a0,8(s6)
    90001fba:	4581                	li	a1,0
    90001fbc:	c505                	beqz	a0,90001fe4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    90001fbe:	038b4683          	lbu	a3,56(s6)
    90001fc2:	4701                	li	a4,0
    90001fc4:	478d                	li	a5,3
    90001fc6:	41358633          	sub	a2,a1,s3
    90001fca:	00f68363          	beq	a3,a5,90001fd0 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1b8>
    90001fce:	8736                	mv	a4,a3
    90001fd0:	00377593          	andi	a1,a4,3
    90001fd4:	4685                	li	a3,1
    90001fd6:	9532                	add	a0,a0,a2
    90001fd8:	02b6c763          	blt	a3,a1,90002006 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1ee>
    90001fdc:	e985                	bnez	a1,9000200c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f4>
    90001fde:	8aaa                	mv	s5,a0
    90001fe0:	4501                	li	a0,0
    90001fe2:	a825                	j	9000201a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    90001fe4:	028b3583          	ld	a1,40(s6)
    90001fe8:	020b3503          	ld	a0,32(s6)
    90001fec:	6d9c                	ld	a5,24(a1)
    90001fee:	85ca                	mv	a1,s2
    90001ff0:	864e                	mv	a2,s3
    90001ff2:	6b02                	ld	s6,0(sp)
    90001ff4:	6aa2                	ld	s5,8(sp)
    90001ff6:	6a42                	ld	s4,16(sp)
    90001ff8:	69e2                	ld	s3,24(sp)
    90001ffa:	7902                	ld	s2,32(sp)
    90001ffc:	74a2                	ld	s1,40(sp)
    90001ffe:	7442                	ld	s0,48(sp)
    90002000:	70e2                	ld	ra,56(sp)
    90002002:	6121                	addi	sp,sp,64
    90002004:	8782                	jr	a5
    90002006:	460d                	li	a2,3
    90002008:	00c59463          	bne	a1,a2,90002010 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f8>
    9000200c:	4a81                	li	s5,0
    9000200e:	a031                	j	9000201a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    90002010:	00150593          	addi	a1,a0,1
    90002014:	8105                	srli	a0,a0,0x1
    90002016:	0015da93          	srli	s5,a1,0x1
    9000201a:	00150493          	addi	s1,a0,1
    9000201e:	14fd                	addi	s1,s1,-1
    90002020:	cc81                	beqz	s1,90002038 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x220>
    90002022:	028b3583          	ld	a1,40(s6)
    90002026:	020b3503          	ld	a0,32(s6)
    9000202a:	7190                	ld	a2,32(a1)
    9000202c:	034b2583          	lw	a1,52(s6)
    90002030:	9602                	jalr	a2
    90002032:	d575                	beqz	a0,9000201e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x206>
    90002034:	4905                	li	s2,1
    90002036:	a825                	j	9000206e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90002038:	028b3583          	ld	a1,40(s6)
    9000203c:	034b6a03          	lwu	s4,52(s6)
    90002040:	020b3503          	ld	a0,32(s6)
    90002044:	6d94                	ld	a3,24(a1)
    90002046:	85ca                	mv	a1,s2
    90002048:	864e                	mv	a2,s3
    9000204a:	9682                	jalr	a3
    9000204c:	4905                	li	s2,1
    9000204e:	e105                	bnez	a0,9000206e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    90002050:	020b3983          	ld	s3,32(s6)
    90002054:	028b3403          	ld	s0,40(s6)
    90002058:	001a8493          	addi	s1,s5,1
    9000205c:	14fd                	addi	s1,s1,-1
    9000205e:	c499                	beqz	s1,9000206c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x254>
    90002060:	7010                	ld	a2,32(s0)
    90002062:	854e                	mv	a0,s3
    90002064:	85d2                	mv	a1,s4
    90002066:	9602                	jalr	a2
    90002068:	d975                	beqz	a0,9000205c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x244>
    9000206a:	a011                	j	9000206e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    9000206c:	4901                	li	s2,0
    9000206e:	854a                	mv	a0,s2
    90002070:	6b02                	ld	s6,0(sp)
    90002072:	6aa2                	ld	s5,8(sp)
    90002074:	6a42                	ld	s4,16(sp)
    90002076:	69e2                	ld	s3,24(sp)
    90002078:	7902                	ld	s2,32(sp)
    9000207a:	74a2                	ld	s1,40(sp)
    9000207c:	7442                	ld	s0,48(sp)
    9000207e:	70e2                	ld	ra,56(sp)
    90002080:	6121                	addi	sp,sp,64
    90002082:	8082                	ret
    90002084:	4681                	li	a3,0
    90002086:	863a                	mv	a2,a4
    90002088:	0e000793          	li	a5,224
    9000208c:	e8f562e3          	bltu	a0,a5,90001f10 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    90002090:	00e60d63          	beq	a2,a4,900020aa <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x292>
    90002094:	00064483          	lbu	s1,0(a2)
    90002098:	00160793          	addi	a5,a2,1
    9000209c:	03f4f613          	andi	a2,s1,63
    900020a0:	0f000493          	li	s1,240
    900020a4:	00957963          	bgeu	a0,s1,900020b6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x29e>
    900020a8:	b5a5                	j	90001f10 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    900020aa:	4601                	li	a2,0
    900020ac:	87ba                	mv	a5,a4
    900020ae:	0f000493          	li	s1,240
    900020b2:	e4956fe3          	bltu	a0,s1,90001f10 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    900020b6:	00e78763          	beq	a5,a4,900020c4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ac>
    900020ba:	0007c703          	lbu	a4,0(a5) # 110000 <.Lline_table_start0+0xf3156>
    900020be:	03f77713          	andi	a4,a4,63
    900020c2:	a011                	j	900020c6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ae>
    900020c4:	4701                	li	a4,0
    900020c6:	054a                	slli	a0,a0,0x12
    900020c8:	001c07b7          	lui	a5,0x1c0
    900020cc:	8d7d                	and	a0,a0,a5
    900020ce:	06b2                	slli	a3,a3,0xc
    900020d0:	061a                	slli	a2,a2,0x6
    900020d2:	8d55                	or	a0,a0,a3
    900020d4:	8d51                	or	a0,a0,a2
    900020d6:	8d59                	or	a0,a0,a4
    900020d8:	00110637          	lui	a2,0x110
    900020dc:	e8c504e3          	beq	a0,a2,90001f64 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    900020e0:	bd05                	j	90001f10 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>

00000000900020e2 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>:
    900020e2:	1101                	addi	sp,sp,-32
    900020e4:	ec06                	sd	ra,24(sp)
    900020e6:	e822                	sd	s0,16(sp)
    900020e8:	e426                	sd	s1,8(sp)
    900020ea:	e04a                	sd	s2,0(sp)
    900020ec:	842e                	mv	s0,a1
    900020ee:	7598                	ld	a4,40(a1)
    900020f0:	718c                	ld	a1,32(a1)
    900020f2:	6f18                	ld	a4,24(a4)
    900020f4:	8936                	mv	s2,a3
    900020f6:	84aa                	mv	s1,a0
    900020f8:	852e                	mv	a0,a1
    900020fa:	85b2                	mv	a1,a2
    900020fc:	8636                	mv	a2,a3
    900020fe:	9702                	jalr	a4
    90002100:	00193593          	seqz	a1,s2
    90002104:	e080                	sd	s0,0(s1)
    90002106:	00a48823          	sb	a0,16(s1)
    9000210a:	0004b423          	sd	zero,8(s1)
    9000210e:	00b488a3          	sb	a1,17(s1)
    90002112:	6902                	ld	s2,0(sp)
    90002114:	64a2                	ld	s1,8(sp)
    90002116:	6442                	ld	s0,16(sp)
    90002118:	60e2                	ld	ra,24(sp)
    9000211a:	6105                	addi	sp,sp,32
    9000211c:	8082                	ret

000000009000211e <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>:
    9000211e:	86ae                	mv	a3,a1
    90002120:	85aa                	mv	a1,a0
    90002122:	8532                	mv	a0,a2
    90002124:	8636                	mv	a2,a3
    90002126:	00000317          	auipc	t1,0x0
    9000212a:	cf230067          	jr	-782(t1) # 90001e18 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

000000009000212e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E>:
    9000212e:	7159                	addi	sp,sp,-112
    90002130:	f486                	sd	ra,104(sp)
    90002132:	f0a2                	sd	s0,96(sp)
    90002134:	eca6                	sd	s1,88(sp)
    90002136:	e8ca                	sd	s2,80(sp)
    90002138:	e4ce                	sd	s3,72(sp)
    9000213a:	e0d2                	sd	s4,64(sp)
    9000213c:	fc56                	sd	s5,56(sp)
    9000213e:	f85a                	sd	s6,48(sp)
    90002140:	f45e                	sd	s7,40(sp)
    90002142:	f062                	sd	s8,32(sp)
    90002144:	ec66                	sd	s9,24(sp)
    90002146:	e86a                	sd	s10,16(sp)
    90002148:	e46e                	sd	s11,8(sp)
    9000214a:	842e                	mv	s0,a1
    9000214c:	758c                	ld	a1,40(a1)
    9000214e:	7010                	ld	a2,32(s0)
    90002150:	7194                	ld	a3,32(a1)
    90002152:	84aa                	mv	s1,a0
    90002154:	02700593          	li	a1,39
    90002158:	8532                	mv	a0,a2
    9000215a:	9682                	jalr	a3
    9000215c:	c10d                	beqz	a0,9000217e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x50>
    9000215e:	4505                	li	a0,1
    90002160:	6da2                	ld	s11,8(sp)
    90002162:	6d42                	ld	s10,16(sp)
    90002164:	6ce2                	ld	s9,24(sp)
    90002166:	7c02                	ld	s8,32(sp)
    90002168:	7ba2                	ld	s7,40(sp)
    9000216a:	7b42                	ld	s6,48(sp)
    9000216c:	7ae2                	ld	s5,56(sp)
    9000216e:	6a06                	ld	s4,64(sp)
    90002170:	69a6                	ld	s3,72(sp)
    90002172:	6946                	ld	s2,80(sp)
    90002174:	64e6                	ld	s1,88(sp)
    90002176:	7406                	ld	s0,96(sp)
    90002178:	70a6                	ld	ra,104(sp)
    9000217a:	6165                	addi	sp,sp,112
    9000217c:	8082                	ret
    9000217e:	0004ea83          	lwu	s5,0(s1)
    90002182:	02100513          	li	a0,33
    90002186:	4489                	li	s1,2
    90002188:	01554e63          	blt	a0,s5,900021a4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x76>
    9000218c:	4525                	li	a0,9
    9000218e:	04aa8763          	beq	s5,a0,900021dc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xae>
    90002192:	4529                	li	a0,10
    90002194:	04aa8763          	beq	s5,a0,900021e2 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb4>
    90002198:	4535                	li	a0,13
    9000219a:	02aa9163          	bne	s5,a0,900021bc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x8e>
    9000219e:	07200a93          	li	s5,114
    900021a2:	a091                	j	900021e6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900021a4:	02200513          	li	a0,34
    900021a8:	02aa8f63          	beq	s5,a0,900021e6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900021ac:	02700513          	li	a0,39
    900021b0:	02aa8b63          	beq	s5,a0,900021e6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900021b4:	05c00513          	li	a0,92
    900021b8:	02aa8763          	beq	s5,a0,900021e6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900021bc:	8556                	mv	a0,s5
    900021be:	00001097          	auipc	ra,0x1
    900021c2:	3b4080e7          	jalr	948(ra) # 90003572 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>
    900021c6:	10051b63          	bnez	a0,900022dc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x1ae>
    900021ca:	8556                	mv	a0,s5
    900021cc:	00001097          	auipc	ra,0x1
    900021d0:	902080e7          	jalr	-1790(ra) # 90002ace <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>
    900021d4:	10050463          	beqz	a0,900022dc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x1ae>
    900021d8:	4485                	li	s1,1
    900021da:	a031                	j	900021e6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900021dc:	07400a93          	li	s5,116
    900021e0:	a019                	j	900021e6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    900021e2:	06e00a93          	li	s5,110
    900021e6:	4a09                	li	s4,2
    900021e8:	4b05                	li	s6,1
    900021ea:	f0100513          	li	a0,-255
    900021ee:	1502                	slli	a0,a0,0x20
    900021f0:	fff50b93          	addi	s7,a0,-1
    900021f4:	4c29                	li	s8,10
    900021f6:	020b1c93          	slli	s9,s6,0x20
    900021fa:	4d0d                	li	s10,3
    900021fc:	021b1d93          	slli	s11,s6,0x21
    90002200:	4911                	li	s2,4
    90002202:	a039                	j	90002210 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xe2>
    90002204:	4485                	li	s1,1
    90002206:	7410                	ld	a2,40(s0)
    90002208:	7008                	ld	a0,32(s0)
    9000220a:	7210                	ld	a2,32(a2)
    9000220c:	9602                	jalr	a2
    9000220e:	f921                	bnez	a0,9000215e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x30>
    90002210:	02049513          	slli	a0,s1,0x20
    90002214:	9101                	srli	a0,a0,0x20
    90002216:	00ab4663          	blt	s6,a0,90002222 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xf4>
    9000221a:	cd49                	beqz	a0,900022b4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x186>
    9000221c:	4481                	li	s1,0
    9000221e:	85d6                	mv	a1,s5
    90002220:	b7dd                	j	90002206 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    90002222:	05c00593          	li	a1,92
    90002226:	fd450fe3          	beq	a0,s4,90002204 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd6>
    9000222a:	0209d513          	srli	a0,s3,0x20
    9000222e:	0ff57513          	andi	a0,a0,255
    90002232:	00aa4b63          	blt	s4,a0,90002248 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x11a>
    90002236:	cd3d                	beqz	a0,900022b4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x186>
    90002238:	03651663          	bne	a0,s6,90002264 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x136>
    9000223c:	0179f9b3          	and	s3,s3,s7
    90002240:	448d                	li	s1,3
    90002242:	07d00593          	li	a1,125
    90002246:	b7c1                	j	90002206 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    90002248:	05a50063          	beq	a0,s10,90002288 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x15a>
    9000224c:	05251663          	bne	a0,s2,90002298 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x16a>
    90002250:	0179f533          	and	a0,s3,s7
    90002254:	448d                	li	s1,3
    90002256:	02049593          	slli	a1,s1,0x20
    9000225a:	00b569b3          	or	s3,a0,a1
    9000225e:	07500593          	li	a1,117
    90002262:	b755                	j	90002206 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    90002264:	6602                	ld	a2,0(sp)
    90002266:	00261513          	slli	a0,a2,0x2
    9000226a:	00a9d53b          	srlw	a0,s3,a0
    9000226e:	893d                	andi	a0,a0,15
    90002270:	03000593          	li	a1,48
    90002274:	01856463          	bltu	a0,s8,9000227c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x14e>
    90002278:	05700593          	li	a1,87
    9000227c:	95aa                	add	a1,a1,a0
    9000227e:	c60d                	beqz	a2,900022a8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x17a>
    90002280:	167d                	addi	a2,a2,-1
    90002282:	e032                	sd	a2,0(sp)
    90002284:	448d                	li	s1,3
    90002286:	b741                	j	90002206 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    90002288:	0179f533          	and	a0,s3,s7
    9000228c:	01b569b3          	or	s3,a0,s11
    90002290:	448d                	li	s1,3
    90002292:	07b00593          	li	a1,123
    90002296:	bf85                	j	90002206 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    90002298:	0179f533          	and	a0,s3,s7
    9000229c:	022b1613          	slli	a2,s6,0x22
    900022a0:	00c569b3          	or	s3,a0,a2
    900022a4:	448d                	li	s1,3
    900022a6:	b785                	j	90002206 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900022a8:	0179f533          	and	a0,s3,s7
    900022ac:	019569b3          	or	s3,a0,s9
    900022b0:	448d                	li	s1,3
    900022b2:	bf91                	j	90002206 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    900022b4:	740c                	ld	a1,40(s0)
    900022b6:	7008                	ld	a0,32(s0)
    900022b8:	719c                	ld	a5,32(a1)
    900022ba:	02700593          	li	a1,39
    900022be:	6da2                	ld	s11,8(sp)
    900022c0:	6d42                	ld	s10,16(sp)
    900022c2:	6ce2                	ld	s9,24(sp)
    900022c4:	7c02                	ld	s8,32(sp)
    900022c6:	7ba2                	ld	s7,40(sp)
    900022c8:	7b42                	ld	s6,48(sp)
    900022ca:	7ae2                	ld	s5,56(sp)
    900022cc:	6a06                	ld	s4,64(sp)
    900022ce:	69a6                	ld	s3,72(sp)
    900022d0:	6946                	ld	s2,80(sp)
    900022d2:	64e6                	ld	s1,88(sp)
    900022d4:	7406                	ld	s0,96(sp)
    900022d6:	70a6                	ld	ra,104(sp)
    900022d8:	6165                	addi	sp,sp,112
    900022da:	8782                	jr	a5
    900022dc:	001ae513          	ori	a0,s5,1
    900022e0:	00155593          	srli	a1,a0,0x1
    900022e4:	8d4d                	or	a0,a0,a1
    900022e6:	00255593          	srli	a1,a0,0x2
    900022ea:	8d4d                	or	a0,a0,a1
    900022ec:	00455593          	srli	a1,a0,0x4
    900022f0:	8d4d                	or	a0,a0,a1
    900022f2:	00855593          	srli	a1,a0,0x8
    900022f6:	8d4d                	or	a0,a0,a1
    900022f8:	01055593          	srli	a1,a0,0x10
    900022fc:	8d4d                	or	a0,a0,a1
    900022fe:	02055593          	srli	a1,a0,0x20
    90002302:	8d4d                	or	a0,a0,a1
    90002304:	fff54513          	not	a0,a0
    90002308:	00155593          	srli	a1,a0,0x1
    9000230c:	05555637          	lui	a2,0x5555
    90002310:	5556061b          	addiw	a2,a2,1365
    90002314:	0632                	slli	a2,a2,0xc
    90002316:	55560613          	addi	a2,a2,1365 # 5555555 <.Lline_table_start0+0x55386ab>
    9000231a:	0632                	slli	a2,a2,0xc
    9000231c:	55560613          	addi	a2,a2,1365
    90002320:	0632                	slli	a2,a2,0xc
    90002322:	55560613          	addi	a2,a2,1365
    90002326:	8df1                	and	a1,a1,a2
    90002328:	8d0d                	sub	a0,a0,a1
    9000232a:	033335b7          	lui	a1,0x3333
    9000232e:	3335859b          	addiw	a1,a1,819
    90002332:	05b2                	slli	a1,a1,0xc
    90002334:	33358593          	addi	a1,a1,819 # 3333333 <.Lline_table_start0+0x3316489>
    90002338:	05b2                	slli	a1,a1,0xc
    9000233a:	33358593          	addi	a1,a1,819
    9000233e:	05b2                	slli	a1,a1,0xc
    90002340:	33358593          	addi	a1,a1,819
    90002344:	00b57633          	and	a2,a0,a1
    90002348:	8109                	srli	a0,a0,0x2
    9000234a:	8d6d                	and	a0,a0,a1
    9000234c:	9532                	add	a0,a0,a2
    9000234e:	00455593          	srli	a1,a0,0x4
    90002352:	952e                	add	a0,a0,a1
    90002354:	00f0f5b7          	lui	a1,0xf0f
    90002358:	0f15859b          	addiw	a1,a1,241
    9000235c:	05b2                	slli	a1,a1,0xc
    9000235e:	f0f58593          	addi	a1,a1,-241 # f0ef0f <.Lline_table_start0+0xef2065>
    90002362:	05b2                	slli	a1,a1,0xc
    90002364:	0f158593          	addi	a1,a1,241
    90002368:	05b2                	slli	a1,a1,0xc
    9000236a:	f0f58593          	addi	a1,a1,-241
    9000236e:	8d6d                	and	a0,a0,a1
    90002370:	010105b7          	lui	a1,0x1010
    90002374:	1015859b          	addiw	a1,a1,257
    90002378:	05c2                	slli	a1,a1,0x10
    9000237a:	10158593          	addi	a1,a1,257 # 1010101 <.Lline_table_start0+0xff3257>
    9000237e:	05c2                	slli	a1,a1,0x10
    90002380:	10158593          	addi	a1,a1,257
    90002384:	02b50533          	mul	a0,a0,a1
    90002388:	9161                	srli	a0,a0,0x38
    9000238a:	1501                	addi	a0,a0,-32
    9000238c:	0025551b          	srliw	a0,a0,0x2
    90002390:	00754513          	xori	a0,a0,7
    90002394:	e02a                	sd	a0,0(sp)
    90002396:	4515                	li	a0,5
    90002398:	1502                	slli	a0,a0,0x20
    9000239a:	00aae9b3          	or	s3,s5,a0
    9000239e:	448d                	li	s1,3
    900023a0:	b599                	j	900021e6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>

00000000900023a2 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E>:
    900023a2:	1141                	addi	sp,sp,-16
    900023a4:	e406                	sd	ra,8(sp)
    900023a6:	00758693          	addi	a3,a1,7
    900023aa:	9ae1                	andi	a3,a3,-8
    900023ac:	8e8d                	sub	a3,a3,a1
    900023ae:	0ff57813          	andi	a6,a0,255
    900023b2:	c68d                	beqz	a3,900023dc <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x3a>
    900023b4:	8532                	mv	a0,a2
    900023b6:	00d66363          	bltu	a2,a3,900023bc <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x1a>
    900023ba:	8536                	mv	a0,a3
    900023bc:	c105                	beqz	a0,900023dc <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x3a>
    900023be:	4681                	li	a3,0
    900023c0:	00d58733          	add	a4,a1,a3
    900023c4:	00074703          	lbu	a4,0(a4)
    900023c8:	0d070463          	beq	a4,a6,90002490 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xee>
    900023cc:	0685                	addi	a3,a3,1
    900023ce:	fed519e3          	bne	a0,a3,900023c0 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x1e>
    900023d2:	ff060893          	addi	a7,a2,-16
    900023d6:	00a8f663          	bgeu	a7,a0,900023e2 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x40>
    900023da:	a049                	j	9000245c <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xba>
    900023dc:	4501                	li	a0,0
    900023de:	ff060893          	addi	a7,a2,-16
    900023e2:	feff06b7          	lui	a3,0xfeff0
    900023e6:	eff6869b          	addiw	a3,a3,-257
    900023ea:	06c2                	slli	a3,a3,0x10
    900023ec:	eff68693          	addi	a3,a3,-257 # fffffffffefefeff <ebss+0xffffffff6efd2eff>
    900023f0:	06c2                	slli	a3,a3,0x10
    900023f2:	eff68293          	addi	t0,a3,-257
    900023f6:	76c1                	lui	a3,0xffff0
    900023f8:	1016869b          	addiw	a3,a3,257
    900023fc:	06c2                	slli	a3,a3,0x10
    900023fe:	10168693          	addi	a3,a3,257 # ffffffffffff0101 <ebss+0xffffffff6ffd3101>
    90002402:	06c2                	slli	a3,a3,0x10
    90002404:	10168693          	addi	a3,a3,257
    90002408:	06be                	slli	a3,a3,0xf
    9000240a:	08068313          	addi	t1,a3,128
    9000240e:	010106b7          	lui	a3,0x1010
    90002412:	1016869b          	addiw	a3,a3,257
    90002416:	06c2                	slli	a3,a3,0x10
    90002418:	10168693          	addi	a3,a3,257 # 1010101 <.Lline_table_start0+0xff3257>
    9000241c:	06c2                	slli	a3,a3,0x10
    9000241e:	10168693          	addi	a3,a3,257
    90002422:	02d803b3          	mul	t2,a6,a3
    90002426:	00a587b3          	add	a5,a1,a0
    9000242a:	6398                	ld	a4,0(a5)
    9000242c:	679c                	ld	a5,8(a5)
    9000242e:	00774733          	xor	a4,a4,t2
    90002432:	fff74693          	not	a3,a4
    90002436:	9716                	add	a4,a4,t0
    90002438:	0066f6b3          	and	a3,a3,t1
    9000243c:	8ef9                	and	a3,a3,a4
    9000243e:	0077c733          	xor	a4,a5,t2
    90002442:	fff74793          	not	a5,a4
    90002446:	9716                	add	a4,a4,t0
    90002448:	0067f7b3          	and	a5,a5,t1
    9000244c:	8f7d                	and	a4,a4,a5
    9000244e:	8ed9                	or	a3,a3,a4
    90002450:	e681                	bnez	a3,90002458 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xb6>
    90002452:	0541                	addi	a0,a0,16
    90002454:	fca8f9e3          	bgeu	a7,a0,90002426 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x84>
    90002458:	02a66e63          	bltu	a2,a0,90002494 <.LBB203_24>
    9000245c:	4681                	li	a3,0
    9000245e:	00c51463          	bne	a0,a2,90002466 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xc4>
    90002462:	4581                	li	a1,0
    90002464:	a005                	j	90002484 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe2>
    90002466:	8e09                	sub	a2,a2,a0
    90002468:	95aa                	add	a1,a1,a0
    9000246a:	00d58733          	add	a4,a1,a3
    9000246e:	00074703          	lbu	a4,0(a4)
    90002472:	01070863          	beq	a4,a6,90002482 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe0>
    90002476:	0685                	addi	a3,a3,1
    90002478:	fed619e3          	bne	a2,a3,9000246a <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xc8>
    9000247c:	4581                	li	a1,0
    9000247e:	86b2                	mv	a3,a2
    90002480:	a011                	j	90002484 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe2>
    90002482:	4585                	li	a1,1
    90002484:	96aa                	add	a3,a3,a0
    90002486:	852e                	mv	a0,a1
    90002488:	85b6                	mv	a1,a3
    9000248a:	60a2                	ld	ra,8(sp)
    9000248c:	0141                	addi	sp,sp,16
    9000248e:	8082                	ret
    90002490:	4585                	li	a1,1
    90002492:	bfd5                	j	90002486 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe4>

0000000090002494 <.LBB203_24>:
    90002494:	00006697          	auipc	a3,0x6
    90002498:	5fc68693          	addi	a3,a3,1532 # 90008a90 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.242>
    9000249c:	85b2                	mv	a1,a2
    9000249e:	8636                	mv	a2,a3
    900024a0:	00000097          	auipc	ra,0x0
    900024a4:	00a080e7          	jalr	10(ra) # 900024aa <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900024aa <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>:
    900024aa:	7159                	addi	sp,sp,-112
    900024ac:	f486                	sd	ra,104(sp)
    900024ae:	e42a                	sd	a0,8(sp)
    900024b0:	e82e                	sd	a1,16(sp)
    900024b2:	0028                	addi	a0,sp,8
    900024b4:	e4aa                	sd	a0,72(sp)

00000000900024b6 <.LBB205_1>:
    900024b6:	00001517          	auipc	a0,0x1
    900024ba:	bb850513          	addi	a0,a0,-1096 # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    900024be:	e8aa                	sd	a0,80(sp)
    900024c0:	080c                	addi	a1,sp,16
    900024c2:	ecae                	sd	a1,88(sp)
    900024c4:	f0aa                	sd	a0,96(sp)

00000000900024c6 <.LBB205_2>:
    900024c6:	00006517          	auipc	a0,0x6
    900024ca:	61a50513          	addi	a0,a0,1562 # 90008ae0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.247>
    900024ce:	ec2a                	sd	a0,24(sp)
    900024d0:	4509                	li	a0,2
    900024d2:	f02a                	sd	a0,32(sp)
    900024d4:	f402                	sd	zero,40(sp)
    900024d6:	00ac                	addi	a1,sp,72
    900024d8:	fc2e                	sd	a1,56(sp)
    900024da:	e0aa                	sd	a0,64(sp)
    900024dc:	0828                	addi	a0,sp,24
    900024de:	85b2                	mv	a1,a2
    900024e0:	fffff097          	auipc	ra,0xfffff
    900024e4:	e6e080e7          	jalr	-402(ra) # 9000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000900024ea <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>:
    900024ea:	7159                	addi	sp,sp,-112
    900024ec:	f486                	sd	ra,104(sp)
    900024ee:	e42a                	sd	a0,8(sp)
    900024f0:	e82e                	sd	a1,16(sp)
    900024f2:	0028                	addi	a0,sp,8
    900024f4:	e4aa                	sd	a0,72(sp)

00000000900024f6 <.LBB206_1>:
    900024f6:	00001517          	auipc	a0,0x1
    900024fa:	b7850513          	addi	a0,a0,-1160 # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    900024fe:	e8aa                	sd	a0,80(sp)
    90002500:	080c                	addi	a1,sp,16
    90002502:	ecae                	sd	a1,88(sp)
    90002504:	f0aa                	sd	a0,96(sp)

0000000090002506 <.LBB206_2>:
    90002506:	00006517          	auipc	a0,0x6
    9000250a:	5fa50513          	addi	a0,a0,1530 # 90008b00 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.249>
    9000250e:	ec2a                	sd	a0,24(sp)
    90002510:	4509                	li	a0,2
    90002512:	f02a                	sd	a0,32(sp)
    90002514:	f402                	sd	zero,40(sp)
    90002516:	00ac                	addi	a1,sp,72
    90002518:	fc2e                	sd	a1,56(sp)
    9000251a:	e0aa                	sd	a0,64(sp)
    9000251c:	0828                	addi	a0,sp,24
    9000251e:	85b2                	mv	a1,a2
    90002520:	fffff097          	auipc	ra,0xfffff
    90002524:	e2e080e7          	jalr	-466(ra) # 9000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000009000252a <_ZN4core5slice5index22slice_index_order_fail17h17f07731262cfc7fE>:
    9000252a:	7159                	addi	sp,sp,-112
    9000252c:	f486                	sd	ra,104(sp)
    9000252e:	e42a                	sd	a0,8(sp)
    90002530:	e82e                	sd	a1,16(sp)
    90002532:	0028                	addi	a0,sp,8
    90002534:	e4aa                	sd	a0,72(sp)

0000000090002536 <.LBB207_1>:
    90002536:	00001517          	auipc	a0,0x1
    9000253a:	b3850513          	addi	a0,a0,-1224 # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    9000253e:	e8aa                	sd	a0,80(sp)
    90002540:	080c                	addi	a1,sp,16
    90002542:	ecae                	sd	a1,88(sp)
    90002544:	f0aa                	sd	a0,96(sp)

0000000090002546 <.LBB207_2>:
    90002546:	00006517          	auipc	a0,0x6
    9000254a:	60250513          	addi	a0,a0,1538 # 90008b48 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.252>
    9000254e:	ec2a                	sd	a0,24(sp)
    90002550:	4509                	li	a0,2
    90002552:	f02a                	sd	a0,32(sp)
    90002554:	f402                	sd	zero,40(sp)
    90002556:	00ac                	addi	a1,sp,72
    90002558:	fc2e                	sd	a1,56(sp)
    9000255a:	e0aa                	sd	a0,64(sp)
    9000255c:	0828                	addi	a0,sp,24
    9000255e:	85b2                	mv	a1,a2
    90002560:	fffff097          	auipc	ra,0xfffff
    90002564:	dee080e7          	jalr	-530(ra) # 9000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000009000256a <_ZN4core5slice5index29slice_end_index_overflow_fail17h5ff2b53285909b6aE>:
    9000256a:	1141                	addi	sp,sp,-16
    9000256c:	e406                	sd	ra,8(sp)
    9000256e:	862a                	mv	a2,a0

0000000090002570 <.LBB209_1>:
    90002570:	00006517          	auipc	a0,0x6
    90002574:	5f850513          	addi	a0,a0,1528 # 90008b68 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.254>
    90002578:	02c00593          	li	a1,44
    9000257c:	fffff097          	auipc	ra,0xfffff
    90002580:	d66080e7          	jalr	-666(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090002586 <_ZN4core3str8converts9from_utf817h36a155da9055aca2E>:
    90002586:	711d                	addi	sp,sp,-96
    90002588:	eca2                	sd	s0,88(sp)
    9000258a:	e8a6                	sd	s1,80(sp)
    9000258c:	e4ca                	sd	s2,72(sp)
    9000258e:	e0ce                	sd	s3,64(sp)
    90002590:	fc52                	sd	s4,56(sp)
    90002592:	f856                	sd	s5,48(sp)
    90002594:	f45a                	sd	s6,40(sp)
    90002596:	f05e                	sd	s7,32(sp)
    90002598:	ec62                	sd	s8,24(sp)
    9000259a:	e866                	sd	s9,16(sp)
    9000259c:	e46a                	sd	s10,8(sp)
    9000259e:	ff160693          	addi	a3,a2,-15
    900025a2:	00d63733          	sltu	a4,a2,a3
    900025a6:	4d01                	li	s10,0
    900025a8:	e311                	bnez	a4,900025ac <_ZN4core3str8converts9from_utf817h36a155da9055aca2E+0x26>
    900025aa:	8d36                	mv	s10,a3
    900025ac:	20060463          	beqz	a2,900027b4 <.LBB212_49+0x1f0>
    900025b0:	4681                	li	a3,0
    900025b2:	00758713          	addi	a4,a1,7
    900025b6:	9b61                	andi	a4,a4,-8
    900025b8:	40b70833          	sub	a6,a4,a1
    900025bc:	00180713          	addi	a4,a6,1 # 1c0001 <.Lline_table_start0+0x1a3157>
    900025c0:	00173c13          	seqz	s8,a4

00000000900025c4 <.LBB212_49>:
    900025c4:	00006897          	auipc	a7,0x6
    900025c8:	5d088893          	addi	a7,a7,1488 # 90008b94 <_ZN4core3str11validations15UTF8_CHAR_WIDTH17h8bfa167165964ee9E>
    900025cc:	4291                	li	t0,4
    900025ce:	0f400313          	li	t1,244
    900025d2:	08000393          	li	t2,128
    900025d6:	0f000e13          	li	t3,240
    900025da:	03000e93          	li	t4,48
    900025de:	4f09                	li	t5,2
    900025e0:	5ffd                	li	t6,-1
    900025e2:	0bf00913          	li	s2,191
    900025e6:	4b8d                	li	s7,3
    900025e8:	0ed00b13          	li	s6,237
    900025ec:	0e000993          	li	s3,224
    900025f0:	0a000a13          	li	s4,160
    900025f4:	4aad                	li	s5,11
    900025f6:	7741                	lui	a4,0xffff0
    900025f8:	1017071b          	addiw	a4,a4,257
    900025fc:	0742                	slli	a4,a4,0x10
    900025fe:	10170713          	addi	a4,a4,257 # ffffffffffff0101 <ebss+0xffffffff6ffd3101>
    90002602:	0742                	slli	a4,a4,0x10
    90002604:	10170713          	addi	a4,a4,257
    90002608:	073e                	slli	a4,a4,0xf
    9000260a:	08070413          	addi	s0,a4,128
    9000260e:	a029                	j	90002618 <.LBB212_49+0x54>
    90002610:	00178693          	addi	a3,a5,1 # 1c0001 <.Lline_table_start0+0x1a3157>
    90002614:	1ac6f063          	bgeu	a3,a2,900027b4 <.LBB212_49+0x1f0>
    90002618:	00d58733          	add	a4,a1,a3
    9000261c:	00074783          	lbu	a5,0(a4)
    90002620:	03879713          	slli	a4,a5,0x38
    90002624:	43875493          	srai	s1,a4,0x38
    90002628:	0004cc63          	bltz	s1,90002640 <.LBB212_49+0x7c>
    9000262c:	000c1663          	bnez	s8,90002638 <.LBB212_49+0x74>
    90002630:	40d80733          	sub	a4,a6,a3
    90002634:	8b1d                	andi	a4,a4,7
    90002636:	cf05                	beqz	a4,9000266e <.LBB212_49+0xaa>
    90002638:	0685                	addi	a3,a3,1
    9000263a:	fcc6efe3          	bltu	a3,a2,90002618 <.LBB212_49+0x54>
    9000263e:	aa9d                	j	900027b4 <.LBB212_49+0x1f0>
    90002640:	01178733          	add	a4,a5,a7
    90002644:	00074703          	lbu	a4,0(a4)
    90002648:	04570b63          	beq	a4,t0,9000269e <.LBB212_49+0xda>
    9000264c:	07770b63          	beq	a4,s7,900026c2 <.LBB212_49+0xfe>
    90002650:	17e71663          	bne	a4,t5,900027bc <.LBB212_49+0x1f8>
    90002654:	00168793          	addi	a5,a3,1
    90002658:	16c7f563          	bgeu	a5,a2,900027c2 <.LBB212_49+0x1fe>
    9000265c:	00f58733          	add	a4,a1,a5
    90002660:	00074703          	lbu	a4,0(a4)
    90002664:	0c077713          	andi	a4,a4,192
    90002668:	fa7704e3          	beq	a4,t2,90002610 <.LBB212_49+0x4c>
    9000266c:	aa81                	j	900027bc <.LBB212_49+0x1f8>
    9000266e:	01a6fc63          	bgeu	a3,s10,90002686 <.LBB212_49+0xc2>
    90002672:	00d58733          	add	a4,a1,a3
    90002676:	631c                	ld	a5,0(a4)
    90002678:	6718                	ld	a4,8(a4)
    9000267a:	8f5d                	or	a4,a4,a5
    9000267c:	8f61                	and	a4,a4,s0
    9000267e:	e701                	bnez	a4,90002686 <.LBB212_49+0xc2>
    90002680:	06c1                	addi	a3,a3,16
    90002682:	ffa6e8e3          	bltu	a3,s10,90002672 <.LBB212_49+0xae>
    90002686:	fac6fae3          	bgeu	a3,a2,9000263a <.LBB212_49+0x76>
    9000268a:	00d58733          	add	a4,a1,a3
    9000268e:	00070703          	lb	a4,0(a4)
    90002692:	fa0744e3          	bltz	a4,9000263a <.LBB212_49+0x76>
    90002696:	0685                	addi	a3,a3,1
    90002698:	fed619e3          	bne	a2,a3,9000268a <.LBB212_49+0xc6>
    9000269c:	aa21                	j	900027b4 <.LBB212_49+0x1f0>
    9000269e:	00168713          	addi	a4,a3,1
    900026a2:	12c77063          	bgeu	a4,a2,900027c2 <.LBB212_49+0x1fe>
    900026a6:	972e                	add	a4,a4,a1
    900026a8:	00074703          	lbu	a4,0(a4)
    900026ac:	02678b63          	beq	a5,t1,900026e2 <.LBB212_49+0x11e>
    900026b0:	05c79363          	bne	a5,t3,900026f6 <.LBB212_49+0x132>
    900026b4:	07070713          	addi	a4,a4,112
    900026b8:	0ff77713          	andi	a4,a4,255
    900026bc:	05d76d63          	bltu	a4,t4,90002716 <.LBB212_49+0x152>
    900026c0:	a8f5                	j	900027bc <.LBB212_49+0x1f8>
    900026c2:	00168713          	addi	a4,a3,1
    900026c6:	0ec77e63          	bgeu	a4,a2,900027c2 <.LBB212_49+0x1fe>
    900026ca:	972e                	add	a4,a4,a1
    900026cc:	00074c83          	lbu	s9,0(a4)
    900026d0:	07678c63          	beq	a5,s6,90002748 <.LBB212_49+0x184>
    900026d4:	09379463          	bne	a5,s3,9000275c <.LBB212_49+0x198>
    900026d8:	0e0cf713          	andi	a4,s9,224
    900026dc:	0b470d63          	beq	a4,s4,90002796 <.LBB212_49+0x1d2>
    900026e0:	a8f1                	j	900027bc <.LBB212_49+0x1f8>
    900026e2:	03871793          	slli	a5,a4,0x38
    900026e6:	97e1                	srai	a5,a5,0x38
    900026e8:	0007a793          	slti	a5,a5,0
    900026ec:	09073713          	sltiu	a4,a4,144
    900026f0:	8f7d                	and	a4,a4,a5
    900026f2:	e315                	bnez	a4,90002716 <.LBB212_49+0x152>
    900026f4:	a0e1                	j	900027bc <.LBB212_49+0x1f8>
    900026f6:	00f48793          	addi	a5,s1,15
    900026fa:	0ff7f793          	andi	a5,a5,255
    900026fe:	00ff37b3          	sltu	a5,t5,a5
    90002702:	03871493          	slli	s1,a4,0x38
    90002706:	94e1                	srai	s1,s1,0x38
    90002708:	009fa4b3          	slt	s1,t6,s1
    9000270c:	8fc5                	or	a5,a5,s1
    9000270e:	00e93733          	sltu	a4,s2,a4
    90002712:	8f5d                	or	a4,a4,a5
    90002714:	e745                	bnez	a4,900027bc <.LBB212_49+0x1f8>
    90002716:	00268713          	addi	a4,a3,2
    9000271a:	0ac77463          	bgeu	a4,a2,900027c2 <.LBB212_49+0x1fe>
    9000271e:	972e                	add	a4,a4,a1
    90002720:	00074703          	lbu	a4,0(a4)
    90002724:	0c077713          	andi	a4,a4,192
    90002728:	4485                	li	s1,1
    9000272a:	0c771163          	bne	a4,t2,900027ec <.LBB212_49+0x228>
    9000272e:	00368793          	addi	a5,a3,3
    90002732:	08c7f863          	bgeu	a5,a2,900027c2 <.LBB212_49+0x1fe>
    90002736:	00f58733          	add	a4,a1,a5
    9000273a:	00074703          	lbu	a4,0(a4)
    9000273e:	0c077713          	andi	a4,a4,192
    90002742:	ec7707e3          	beq	a4,t2,90002610 <.LBB212_49+0x4c>
    90002746:	a06d                	j	900027f0 <.LBB212_49+0x22c>
    90002748:	038c9713          	slli	a4,s9,0x38
    9000274c:	9761                	srai	a4,a4,0x38
    9000274e:	00072713          	slti	a4,a4,0
    90002752:	0a0cb793          	sltiu	a5,s9,160
    90002756:	8f7d                	and	a4,a4,a5
    90002758:	ef1d                	bnez	a4,90002796 <.LBB212_49+0x1d2>
    9000275a:	a08d                	j	900027bc <.LBB212_49+0x1f8>
    9000275c:	01f48713          	addi	a4,s1,31
    90002760:	0ff77793          	andi	a5,a4,255
    90002764:	038c9713          	slli	a4,s9,0x38
    90002768:	00faea63          	bltu	s5,a5,9000277c <.LBB212_49+0x1b8>
    9000276c:	9761                	srai	a4,a4,0x38
    9000276e:	00072713          	slti	a4,a4,0
    90002772:	0c0cb793          	sltiu	a5,s9,192
    90002776:	8f7d                	and	a4,a4,a5
    90002778:	ef19                	bnez	a4,90002796 <.LBB212_49+0x1d2>
    9000277a:	a089                	j	900027bc <.LBB212_49+0x1f8>
    9000277c:	ffe4f793          	andi	a5,s1,-2
    90002780:	07c9                	addi	a5,a5,18
    90002782:	00f037b3          	snez	a5,a5
    90002786:	9761                	srai	a4,a4,0x38
    90002788:	00efa733          	slt	a4,t6,a4
    9000278c:	8f5d                	or	a4,a4,a5
    9000278e:	019937b3          	sltu	a5,s2,s9
    90002792:	8f5d                	or	a4,a4,a5
    90002794:	e705                	bnez	a4,900027bc <.LBB212_49+0x1f8>
    90002796:	00268793          	addi	a5,a3,2
    9000279a:	02c7f463          	bgeu	a5,a2,900027c2 <.LBB212_49+0x1fe>
    9000279e:	00f58733          	add	a4,a1,a5
    900027a2:	00074703          	lbu	a4,0(a4)
    900027a6:	0c077713          	andi	a4,a4,192
    900027aa:	e67703e3          	beq	a4,t2,90002610 <.LBB212_49+0x4c>
    900027ae:	4485                	li	s1,1
    900027b0:	4589                	li	a1,2
    900027b2:	a811                	j	900027c6 <.LBB212_49+0x202>
    900027b4:	4681                	li	a3,0
    900027b6:	e50c                	sd	a1,8(a0)
    900027b8:	e910                	sd	a2,16(a0)
    900027ba:	a819                	j	900027d0 <.LBB212_49+0x20c>
    900027bc:	4585                	li	a1,1
    900027be:	4485                	li	s1,1
    900027c0:	a019                	j	900027c6 <.LBB212_49+0x202>
    900027c2:	4581                	li	a1,0
    900027c4:	4481                	li	s1,0
    900027c6:	05a2                	slli	a1,a1,0x8
    900027c8:	8dc5                	or	a1,a1,s1
    900027ca:	e514                	sd	a3,8(a0)
    900027cc:	e90c                	sd	a1,16(a0)
    900027ce:	4685                	li	a3,1
    900027d0:	e114                	sd	a3,0(a0)
    900027d2:	6d22                	ld	s10,8(sp)
    900027d4:	6cc2                	ld	s9,16(sp)
    900027d6:	6c62                	ld	s8,24(sp)
    900027d8:	7b82                	ld	s7,32(sp)
    900027da:	7b22                	ld	s6,40(sp)
    900027dc:	7ac2                	ld	s5,48(sp)
    900027de:	7a62                	ld	s4,56(sp)
    900027e0:	6986                	ld	s3,64(sp)
    900027e2:	6926                	ld	s2,72(sp)
    900027e4:	64c6                	ld	s1,80(sp)
    900027e6:	6466                	ld	s0,88(sp)
    900027e8:	6125                	addi	sp,sp,96
    900027ea:	8082                	ret
    900027ec:	4589                	li	a1,2
    900027ee:	bfe1                	j	900027c6 <.LBB212_49+0x202>
    900027f0:	458d                	li	a1,3
    900027f2:	bfd1                	j	900027c6 <.LBB212_49+0x202>

00000000900027f4 <_ZN4core3str16slice_error_fail17he9562343589499f6E>:
    900027f4:	7115                	addi	sp,sp,-224
    900027f6:	ed86                	sd	ra,216(sp)
    900027f8:	e432                	sd	a2,8(sp)
    900027fa:	e836                	sd	a3,16(sp)
    900027fc:	10100793          	li	a5,257
    90002800:	4885                	li	a7,1
    90002802:	882e                	mv	a6,a1
    90002804:	04f5e263          	bltu	a1,a5,90002848 <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x54>
    90002808:	4381                	li	t2,0
    9000280a:	f0158893          	addi	a7,a1,-255
    9000280e:	10050293          	addi	t0,a0,256
    90002812:	fbf00313          	li	t1,-65
    90002816:	10038813          	addi	a6,t2,256
    9000281a:	00b87863          	bgeu	a6,a1,9000282a <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x36>
    9000281e:	007287b3          	add	a5,t0,t2
    90002822:	00078783          	lb	a5,0(a5)
    90002826:	02f34b63          	blt	t1,a5,9000285c <.LBB228_49+0xc>
    9000282a:	0ff38793          	addi	a5,t2,255
    9000282e:	00f03833          	snez	a6,a5
    90002832:	0078c7b3          	xor	a5,a7,t2
    90002836:	00f037b3          	snez	a5,a5
    9000283a:	00f877b3          	and	a5,a6,a5
    9000283e:	13fd                	addi	t2,t2,-1
    90002840:	fbf9                	bnez	a5,90002816 <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x22>
    90002842:	4881                	li	a7,0
    90002844:	10038813          	addi	a6,t2,256
    90002848:	ec2a                	sd	a0,24(sp)
    9000284a:	f042                	sd	a6,32(sp)
    9000284c:	00089d63          	bnez	a7,90002866 <.LBB228_49+0x16>

0000000090002850 <.LBB228_49>:
    90002850:	00006797          	auipc	a5,0x6
    90002854:	44478793          	addi	a5,a5,1092 # 90008c94 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.310>
    90002858:	4815                	li	a6,5
    9000285a:	a819                	j	90002870 <.LBB228_50+0x8>
    9000285c:	4881                	li	a7,0
    9000285e:	ec2a                	sd	a0,24(sp)
    90002860:	f042                	sd	a6,32(sp)
    90002862:	fe0887e3          	beqz	a7,90002850 <.LBB228_49>
    90002866:	4801                	li	a6,0

0000000090002868 <.LBB228_50>:
    90002868:	00006797          	auipc	a5,0x6
    9000286c:	f1078793          	addi	a5,a5,-240 # 90008778 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90002870:	f43e                	sd	a5,40(sp)
    90002872:	00c5b8b3          	sltu	a7,a1,a2
    90002876:	0018c293          	xori	t0,a7,1
    9000287a:	00d5b7b3          	sltu	a5,a1,a3
    9000287e:	0017c793          	xori	a5,a5,1
    90002882:	00f2f7b3          	and	a5,t0,a5
    90002886:	f842                	sd	a6,48(sp)
    90002888:	ef8d                	bnez	a5,900028c2 <.LBB228_53+0xe>
    9000288a:	00089363          	bnez	a7,90002890 <.LBB228_50+0x28>
    9000288e:	8636                	mv	a2,a3
    90002890:	e4b2                	sd	a2,72(sp)
    90002892:	00a8                	addi	a0,sp,72
    90002894:	e52a                	sd	a0,136(sp)

0000000090002896 <.LBB228_51>:
    90002896:	00000517          	auipc	a0,0x0
    9000289a:	7d850513          	addi	a0,a0,2008 # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    9000289e:	e92a                	sd	a0,144(sp)
    900028a0:	0828                	addi	a0,sp,24
    900028a2:	ed2a                	sd	a0,152(sp)

00000000900028a4 <.LBB228_52>:
    900028a4:	00001517          	auipc	a0,0x1
    900028a8:	c0450513          	addi	a0,a0,-1020 # 900034a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    900028ac:	f12a                	sd	a0,160(sp)
    900028ae:	102c                	addi	a1,sp,40
    900028b0:	f52e                	sd	a1,168(sp)
    900028b2:	f92a                	sd	a0,176(sp)

00000000900028b4 <.LBB228_53>:
    900028b4:	00006517          	auipc	a0,0x6
    900028b8:	40c50513          	addi	a0,a0,1036 # 90008cc0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.313>
    900028bc:	ecaa                	sd	a0,88(sp)
    900028be:	450d                	li	a0,3
    900028c0:	aadd                	j	90002ab6 <.LBB228_62+0xc>
    900028c2:	02c6fd63          	bgeu	a3,a2,900028fc <.LBB228_56+0xe>
    900028c6:	0028                	addi	a0,sp,8
    900028c8:	e52a                	sd	a0,136(sp)

00000000900028ca <.LBB228_54>:
    900028ca:	00000517          	auipc	a0,0x0
    900028ce:	7a450513          	addi	a0,a0,1956 # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    900028d2:	e92a                	sd	a0,144(sp)
    900028d4:	080c                	addi	a1,sp,16
    900028d6:	ed2e                	sd	a1,152(sp)
    900028d8:	f12a                	sd	a0,160(sp)
    900028da:	0828                	addi	a0,sp,24
    900028dc:	f52a                	sd	a0,168(sp)

00000000900028de <.LBB228_55>:
    900028de:	00001517          	auipc	a0,0x1
    900028e2:	bca50513          	addi	a0,a0,-1078 # 900034a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    900028e6:	f92a                	sd	a0,176(sp)
    900028e8:	102c                	addi	a1,sp,40
    900028ea:	fd2e                	sd	a1,184(sp)
    900028ec:	e1aa                	sd	a0,192(sp)

00000000900028ee <.LBB228_56>:
    900028ee:	00006517          	auipc	a0,0x6
    900028f2:	41250513          	addi	a0,a0,1042 # 90008d00 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.317>
    900028f6:	ecaa                	sd	a0,88(sp)
    900028f8:	4511                	li	a0,4
    900028fa:	aa75                	j	90002ab6 <.LBB228_62+0xc>
    900028fc:	00163813          	seqz	a6,a2
    90002900:	00c5c7b3          	xor	a5,a1,a2
    90002904:	0017b793          	seqz	a5,a5
    90002908:	00f867b3          	or	a5,a6,a5
    9000290c:	c399                	beqz	a5,90002912 <.LBB228_56+0x24>
    9000290e:	8636                	mv	a2,a3
    90002910:	a819                	j	90002926 <.LBB228_56+0x38>
    90002912:	00b67a63          	bgeu	a2,a1,90002926 <.LBB228_56+0x38>
    90002916:	00c507b3          	add	a5,a0,a2
    9000291a:	00078803          	lb	a6,0(a5)
    9000291e:	fc000793          	li	a5,-64
    90002922:	fef856e3          	bge	a6,a5,9000290e <.LBB228_56+0x20>
    90002926:	00163693          	seqz	a3,a2
    9000292a:	00b647b3          	xor	a5,a2,a1
    9000292e:	0017b793          	seqz	a5,a5
    90002932:	8edd                	or	a3,a3,a5
    90002934:	fc32                	sd	a2,56(sp)
    90002936:	ca81                	beqz	a3,90002946 <.LBB228_56+0x58>
    90002938:	87b2                	mv	a5,a2
    9000293a:	04410313          	addi	t1,sp,68
    9000293e:	863e                	mv	a2,a5
    90002940:	02b60f63          	beq	a2,a1,9000297e <.LBB228_57>
    90002944:	a8a9                	j	9000299e <.LBB228_57+0x20>
    90002946:	00158893          	addi	a7,a1,1
    9000294a:	fc000813          	li	a6,-64
    9000294e:	00b67863          	bgeu	a2,a1,9000295e <.LBB228_56+0x70>
    90002952:	00c507b3          	add	a5,a0,a2
    90002956:	00078783          	lb	a5,0(a5)
    9000295a:	0307de63          	bge	a5,a6,90002996 <.LBB228_57+0x18>
    9000295e:	fff60793          	addi	a5,a2,-1
    90002962:	0017b693          	seqz	a3,a5
    90002966:	00c8c633          	xor	a2,a7,a2
    9000296a:	00163613          	seqz	a2,a2
    9000296e:	8ed1                	or	a3,a3,a2
    90002970:	863e                	mv	a2,a5
    90002972:	def1                	beqz	a3,9000294e <.LBB228_56+0x60>
    90002974:	04410313          	addi	t1,sp,68
    90002978:	863e                	mv	a2,a5
    9000297a:	02b61263          	bne	a2,a1,9000299e <.LBB228_57+0x20>

000000009000297e <.LBB228_57>:
    9000297e:	00006517          	auipc	a0,0x6
    90002982:	e3b50513          	addi	a0,a0,-453 # 900087b9 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.175>
    90002986:	02b00593          	li	a1,43
    9000298a:	863a                	mv	a2,a4
    9000298c:	fffff097          	auipc	ra,0xfffff
    90002990:	956080e7          	jalr	-1706(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    90002994:	0000                	unimp
    90002996:	04410313          	addi	t1,sp,68
    9000299a:	feb602e3          	beq	a2,a1,9000297e <.LBB228_57>
    9000299e:	00c506b3          	add	a3,a0,a2
    900029a2:	00068783          	lb	a5,0(a3)
    900029a6:	0ff7f393          	andi	t2,a5,255
    900029aa:	0007c663          	bltz	a5,900029b6 <.LBB228_57+0x38>
    900029ae:	c29e                	sw	t2,68(sp)
    900029b0:	00a8                	addi	a0,sp,72
    900029b2:	4785                	li	a5,1
    900029b4:	a855                	j	90002a68 <.LBB228_57+0xea>
    900029b6:	952e                	add	a0,a0,a1
    900029b8:	00168593          	addi	a1,a3,1
    900029bc:	00a59f63          	bne	a1,a0,900029da <.LBB228_57+0x5c>
    900029c0:	4881                	li	a7,0
    900029c2:	85aa                	mv	a1,a0
    900029c4:	0e000693          	li	a3,224
    900029c8:	01f3f813          	andi	a6,t2,31
    900029cc:	02d3f363          	bgeu	t2,a3,900029f2 <.LBB228_57+0x74>
    900029d0:	00681513          	slli	a0,a6,0x6
    900029d4:	011565b3          	or	a1,a0,a7
    900029d8:	a0bd                	j	90002a46 <.LBB228_57+0xc8>
    900029da:	0016c783          	lbu	a5,1(a3)
    900029de:	00268593          	addi	a1,a3,2
    900029e2:	03f7f893          	andi	a7,a5,63
    900029e6:	0e000693          	li	a3,224
    900029ea:	01f3f813          	andi	a6,t2,31
    900029ee:	fed3e1e3          	bltu	t2,a3,900029d0 <.LBB228_57+0x52>
    900029f2:	00a59563          	bne	a1,a0,900029fc <.LBB228_57+0x7e>
    900029f6:	4581                	li	a1,0
    900029f8:	82aa                	mv	t0,a0
    900029fa:	a039                	j	90002a08 <.LBB228_57+0x8a>
    900029fc:	0005c683          	lbu	a3,0(a1)
    90002a00:	00158293          	addi	t0,a1,1
    90002a04:	03f6f593          	andi	a1,a3,63
    90002a08:	00689693          	slli	a3,a7,0x6
    90002a0c:	0f000793          	li	a5,240
    90002a10:	8dd5                	or	a1,a1,a3
    90002a12:	00f3e663          	bltu	t2,a5,90002a1e <.LBB228_57+0xa0>
    90002a16:	00a29863          	bne	t0,a0,90002a26 <.LBB228_57+0xa8>
    90002a1a:	4501                	li	a0,0
    90002a1c:	a809                	j	90002a2e <.LBB228_57+0xb0>
    90002a1e:	00c81513          	slli	a0,a6,0xc
    90002a22:	8dc9                	or	a1,a1,a0
    90002a24:	a00d                	j	90002a46 <.LBB228_57+0xc8>
    90002a26:	0002c503          	lbu	a0,0(t0) # 110000 <.Lline_table_start0+0xf3156>
    90002a2a:	03f57513          	andi	a0,a0,63
    90002a2e:	01281693          	slli	a3,a6,0x12
    90002a32:	001c07b7          	lui	a5,0x1c0
    90002a36:	8efd                	and	a3,a3,a5
    90002a38:	059a                	slli	a1,a1,0x6
    90002a3a:	8dd5                	or	a1,a1,a3
    90002a3c:	8dc9                	or	a1,a1,a0
    90002a3e:	00110537          	lui	a0,0x110
    90002a42:	f2a58ee3          	beq	a1,a0,9000297e <.LBB228_57>
    90002a46:	c2ae                	sw	a1,68(sp)
    90002a48:	00a8                	addi	a0,sp,72
    90002a4a:	08000693          	li	a3,128
    90002a4e:	4785                	li	a5,1
    90002a50:	00d5ec63          	bltu	a1,a3,90002a68 <.LBB228_57+0xea>
    90002a54:	00b5d693          	srli	a3,a1,0xb
    90002a58:	4789                	li	a5,2
    90002a5a:	c699                	beqz	a3,90002a68 <.LBB228_57+0xea>
    90002a5c:	81c1                	srli	a1,a1,0x10
    90002a5e:	0015b593          	seqz	a1,a1
    90002a62:	4691                	li	a3,4
    90002a64:	40b687b3          	sub	a5,a3,a1
    90002a68:	00c785b3          	add	a1,a5,a2
    90002a6c:	e4b2                	sd	a2,72(sp)
    90002a6e:	e8ae                	sd	a1,80(sp)
    90002a70:	182c                	addi	a1,sp,56
    90002a72:	e52e                	sd	a1,136(sp)

0000000090002a74 <.LBB228_58>:
    90002a74:	00000597          	auipc	a1,0x0
    90002a78:	5fa58593          	addi	a1,a1,1530 # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002a7c:	e92e                	sd	a1,144(sp)
    90002a7e:	ed1a                	sd	t1,152(sp)

0000000090002a80 <.LBB228_59>:
    90002a80:	fffff597          	auipc	a1,0xfffff
    90002a84:	6ae58593          	addi	a1,a1,1710 # 9000212e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E>
    90002a88:	f12e                	sd	a1,160(sp)
    90002a8a:	f52a                	sd	a0,168(sp)

0000000090002a8c <.LBB228_60>:
    90002a8c:	ffffe517          	auipc	a0,0xffffe
    90002a90:	75250513          	addi	a0,a0,1874 # 900011de <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c19ef341f8f601cE>
    90002a94:	f92a                	sd	a0,176(sp)
    90002a96:	0828                	addi	a0,sp,24
    90002a98:	fd2a                	sd	a0,184(sp)

0000000090002a9a <.LBB228_61>:
    90002a9a:	00001517          	auipc	a0,0x1
    90002a9e:	a0e50513          	addi	a0,a0,-1522 # 900034a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    90002aa2:	e1aa                	sd	a0,192(sp)
    90002aa4:	102c                	addi	a1,sp,40
    90002aa6:	e5ae                	sd	a1,200(sp)
    90002aa8:	e9aa                	sd	a0,208(sp)

0000000090002aaa <.LBB228_62>:
    90002aaa:	00006517          	auipc	a0,0x6
    90002aae:	2c650513          	addi	a0,a0,710 # 90008d70 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.321>
    90002ab2:	ecaa                	sd	a0,88(sp)
    90002ab4:	4515                	li	a0,5
    90002ab6:	f0aa                	sd	a0,96(sp)
    90002ab8:	f482                	sd	zero,104(sp)
    90002aba:	012c                	addi	a1,sp,136
    90002abc:	fcae                	sd	a1,120(sp)
    90002abe:	e12a                	sd	a0,128(sp)
    90002ac0:	08a8                	addi	a0,sp,88
    90002ac2:	85ba                	mv	a1,a4
    90002ac4:	fffff097          	auipc	ra,0xfffff
    90002ac8:	88a080e7          	jalr	-1910(ra) # 9000134e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000090002ace <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>:
    90002ace:	1141                	addi	sp,sp,-16
    90002ad0:	e406                	sd	ra,8(sp)
    90002ad2:	0105559b          	srliw	a1,a0,0x10
    90002ad6:	e1f1                	bnez	a1,90002b9a <.LBB244_43+0x4c>
    90002ad8:	4581                	li	a1,0
    90002ada:	6641                	lui	a2,0x10
    90002adc:	f006061b          	addiw	a2,a2,-256
    90002ae0:	8e69                	and	a2,a2,a0
    90002ae2:	00865313          	srli	t1,a2,0x8

0000000090002ae6 <.LBB244_41>:
    90002ae6:	00006717          	auipc	a4,0x6
    90002aea:	33270713          	addi	a4,a4,818 # 90008e18 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.344>
    90002aee:	12300813          	li	a6,291

0000000090002af2 <.LBB244_42>:
    90002af2:	00006897          	auipc	a7,0x6
    90002af6:	37888893          	addi	a7,a7,888 # 90008e6a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.345>
    90002afa:	05270293          	addi	t0,a4,82
    90002afe:	0ff57793          	andi	a5,a0,255
    90002b02:	a811                	j	90002b16 <.LBB244_42+0x24>
    90002b04:	00d335b3          	sltu	a1,t1,a3
    90002b08:	00574633          	xor	a2,a4,t0
    90002b0c:	00163613          	seqz	a2,a2
    90002b10:	8e4d                	or	a2,a2,a1
    90002b12:	859e                	mv	a1,t2
    90002b14:	ea15                	bnez	a2,90002b48 <.LBB244_42+0x56>
    90002b16:	00074683          	lbu	a3,0(a4)
    90002b1a:	00174603          	lbu	a2,1(a4)
    90002b1e:	0709                	addi	a4,a4,2
    90002b20:	00c583b3          	add	t2,a1,a2
    90002b24:	fe6690e3          	bne	a3,t1,90002b04 <.LBB244_42+0x12>
    90002b28:	1eb3e063          	bltu	t2,a1,90002d08 <.LBB244_47>
    90002b2c:	1f03f963          	bgeu	t2,a6,90002d1e <.LBB244_48>
    90002b30:	95c6                	add	a1,a1,a7
    90002b32:	ca01                	beqz	a2,90002b42 <.LBB244_42+0x50>
    90002b34:	0005c683          	lbu	a3,0(a1)
    90002b38:	0585                	addi	a1,a1,1
    90002b3a:	167d                	addi	a2,a2,-1
    90002b3c:	fef69be3          	bne	a3,a5,90002b32 <.LBB244_42+0x40>
    90002b40:	a26d                	j	90002cea <.LBB244_46+0xd4>
    90002b42:	859e                	mv	a1,t2
    90002b44:	fc5719e3          	bne	a4,t0,90002b16 <.LBB244_42+0x24>
    90002b48:	65c1                	lui	a1,0x10
    90002b4a:	35fd                	addiw	a1,a1,-1
    90002b4c:	8de9                	and	a1,a1,a0

0000000090002b4e <.LBB244_43>:
    90002b4e:	00006717          	auipc	a4,0x6
    90002b52:	43e70713          	addi	a4,a4,1086 # 90008f8c <.Lanon.9d4bfc86079e95d674f3cded52b1db19.346>
    90002b56:	4505                	li	a0,1
    90002b58:	587d                	li	a6,-1
    90002b5a:	13570693          	addi	a3,a4,309
    90002b5e:	00070783          	lb	a5,0(a4)
    90002b62:	00170613          	addi	a2,a4,1
    90002b66:	00f85963          	bge	a6,a5,90002b78 <.LBB244_43+0x2a>
    90002b6a:	0ff7f793          	andi	a5,a5,255
    90002b6e:	8732                	mv	a4,a2
    90002b70:	9d9d                	subw	a1,a1,a5
    90002b72:	0005df63          	bgez	a1,90002b90 <.LBB244_43+0x42>
    90002b76:	aa9d                	j	90002cec <.LBB244_46+0xd6>
    90002b78:	1cd60663          	beq	a2,a3,90002d44 <.LBB244_50>
    90002b7c:	00174603          	lbu	a2,1(a4)
    90002b80:	07f7f793          	andi	a5,a5,127
    90002b84:	07a2                	slli	a5,a5,0x8
    90002b86:	0709                	addi	a4,a4,2
    90002b88:	8fd1                	or	a5,a5,a2
    90002b8a:	9d9d                	subw	a1,a1,a5
    90002b8c:	1605c063          	bltz	a1,90002cec <.LBB244_46+0xd6>
    90002b90:	00154513          	xori	a0,a0,1
    90002b94:	fcd715e3          	bne	a4,a3,90002b5e <.LBB244_43+0x10>
    90002b98:	aa91                	j	90002cec <.LBB244_46+0xd6>
    90002b9a:	0115559b          	srliw	a1,a0,0x11
    90002b9e:	e1f1                	bnez	a1,90002c62 <.LBB244_46+0x4c>
    90002ba0:	4581                	li	a1,0
    90002ba2:	6641                	lui	a2,0x10
    90002ba4:	f006061b          	addiw	a2,a2,-256
    90002ba8:	8e69                	and	a2,a2,a0
    90002baa:	00865313          	srli	t1,a2,0x8

0000000090002bae <.LBB244_44>:
    90002bae:	00006717          	auipc	a4,0x6
    90002bb2:	51370713          	addi	a4,a4,1299 # 900090c1 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.347>
    90002bb6:	0b000813          	li	a6,176

0000000090002bba <.LBB244_45>:
    90002bba:	00006897          	auipc	a7,0x6
    90002bbe:	55388893          	addi	a7,a7,1363 # 9000910d <.Lanon.9d4bfc86079e95d674f3cded52b1db19.348>
    90002bc2:	04c70293          	addi	t0,a4,76
    90002bc6:	0ff57793          	andi	a5,a0,255
    90002bca:	a811                	j	90002bde <.LBB244_45+0x24>
    90002bcc:	00d335b3          	sltu	a1,t1,a3
    90002bd0:	00574633          	xor	a2,a4,t0
    90002bd4:	00163613          	seqz	a2,a2
    90002bd8:	8e4d                	or	a2,a2,a1
    90002bda:	859e                	mv	a1,t2
    90002bdc:	ea15                	bnez	a2,90002c10 <.LBB244_45+0x56>
    90002bde:	00074683          	lbu	a3,0(a4)
    90002be2:	00174603          	lbu	a2,1(a4)
    90002be6:	0709                	addi	a4,a4,2
    90002be8:	00c583b3          	add	t2,a1,a2
    90002bec:	fe6690e3          	bne	a3,t1,90002bcc <.LBB244_45+0x12>
    90002bf0:	10b3ec63          	bltu	t2,a1,90002d08 <.LBB244_47>
    90002bf4:	1303fc63          	bgeu	t2,a6,90002d2c <.LBB244_49>
    90002bf8:	95c6                	add	a1,a1,a7
    90002bfa:	ca01                	beqz	a2,90002c0a <.LBB244_45+0x50>
    90002bfc:	0005c683          	lbu	a3,0(a1) # 10000 <n+0xffe0>
    90002c00:	0585                	addi	a1,a1,1
    90002c02:	167d                	addi	a2,a2,-1
    90002c04:	fef69be3          	bne	a3,a5,90002bfa <.LBB244_45+0x40>
    90002c08:	a0cd                	j	90002cea <.LBB244_46+0xd4>
    90002c0a:	859e                	mv	a1,t2
    90002c0c:	fc5719e3          	bne	a4,t0,90002bde <.LBB244_45+0x24>
    90002c10:	65c1                	lui	a1,0x10
    90002c12:	35fd                	addiw	a1,a1,-1
    90002c14:	8de9                	and	a1,a1,a0

0000000090002c16 <.LBB244_46>:
    90002c16:	00006717          	auipc	a4,0x6
    90002c1a:	5a670713          	addi	a4,a4,1446 # 900091bc <.Lanon.9d4bfc86079e95d674f3cded52b1db19.349>
    90002c1e:	4505                	li	a0,1
    90002c20:	587d                	li	a6,-1
    90002c22:	1a370693          	addi	a3,a4,419
    90002c26:	00070783          	lb	a5,0(a4)
    90002c2a:	00170613          	addi	a2,a4,1
    90002c2e:	00f85963          	bge	a6,a5,90002c40 <.LBB244_46+0x2a>
    90002c32:	0ff7f793          	andi	a5,a5,255
    90002c36:	8732                	mv	a4,a2
    90002c38:	9d9d                	subw	a1,a1,a5
    90002c3a:	0005df63          	bgez	a1,90002c58 <.LBB244_46+0x42>
    90002c3e:	a07d                	j	90002cec <.LBB244_46+0xd6>
    90002c40:	10d60263          	beq	a2,a3,90002d44 <.LBB244_50>
    90002c44:	00174603          	lbu	a2,1(a4)
    90002c48:	07f7f793          	andi	a5,a5,127
    90002c4c:	07a2                	slli	a5,a5,0x8
    90002c4e:	0709                	addi	a4,a4,2
    90002c50:	8fd1                	or	a5,a5,a2
    90002c52:	9d9d                	subw	a1,a1,a5
    90002c54:	0805cc63          	bltz	a1,90002cec <.LBB244_46+0xd6>
    90002c58:	00154513          	xori	a0,a0,1
    90002c5c:	fcd715e3          	bne	a4,a3,90002c26 <.LBB244_46+0x10>
    90002c60:	a071                	j	90002cec <.LBB244_46+0xd6>
    90002c62:	fffd65b7          	lui	a1,0xfffd6
    90002c66:	9225859b          	addiw	a1,a1,-1758
    90002c6a:	9da9                	addw	a1,a1,a0
    90002c6c:	0225b593          	sltiu	a1,a1,34
    90002c70:	fffd5637          	lui	a2,0xfffd5
    90002c74:	8cb6061b          	addiw	a2,a2,-1845
    90002c78:	9e29                	addw	a2,a2,a0
    90002c7a:	00b63613          	sltiu	a2,a2,11
    90002c7e:	8dd1                	or	a1,a1,a2
    90002c80:	00200637          	lui	a2,0x200
    90002c84:	3679                	addiw	a2,a2,-2
    90002c86:	8e69                	and	a2,a2,a0
    90002c88:	0002c6b7          	lui	a3,0x2c
    90002c8c:	81e6869b          	addiw	a3,a3,-2018
    90002c90:	8e35                	xor	a2,a2,a3
    90002c92:	00163613          	seqz	a2,a2
    90002c96:	8dd1                	or	a1,a1,a2
    90002c98:	fffd3637          	lui	a2,0xfffd3
    90002c9c:	15e6061b          	addiw	a2,a2,350
    90002ca0:	9e29                	addw	a2,a2,a0
    90002ca2:	00e63613          	sltiu	a2,a2,14
    90002ca6:	8dd1                	or	a1,a1,a2
    90002ca8:	fffd1637          	lui	a2,0xfffd1
    90002cac:	41f6061b          	addiw	a2,a2,1055
    90002cb0:	9e29                	addw	a2,a2,a0
    90002cb2:	6685                	lui	a3,0x1
    90002cb4:	c1f6869b          	addiw	a3,a3,-993
    90002cb8:	00d63633          	sltu	a2,a2,a3
    90002cbc:	8dd1                	or	a1,a1,a2
    90002cbe:	fffd0637          	lui	a2,0xfffd0
    90002cc2:	5e26061b          	addiw	a2,a2,1506
    90002cc6:	9e29                	addw	a2,a2,a0
    90002cc8:	5e263613          	sltiu	a2,a2,1506
    90002ccc:	8dd1                	or	a1,a1,a2
    90002cce:	fffcf637          	lui	a2,0xfffcf
    90002cd2:	cb56061b          	addiw	a2,a2,-843
    90002cd6:	9e29                	addw	a2,a2,a0
    90002cd8:	000af6b7          	lui	a3,0xaf
    90002cdc:	db56869b          	addiw	a3,a3,-587
    90002ce0:	00d63633          	sltu	a2,a2,a3
    90002ce4:	8dd1                	or	a1,a1,a2
    90002ce6:	8985                	andi	a1,a1,1
    90002ce8:	c591                	beqz	a1,90002cf4 <.LBB244_46+0xde>
    90002cea:	4501                	li	a0,0
    90002cec:	8905                	andi	a0,a0,1
    90002cee:	60a2                	ld	ra,8(sp)
    90002cf0:	0141                	addi	sp,sp,16
    90002cf2:	8082                	ret
    90002cf4:	2501                	sext.w	a0,a0
    90002cf6:	000e05b7          	lui	a1,0xe0
    90002cfa:	1f05859b          	addiw	a1,a1,496
    90002cfe:	00b53533          	sltu	a0,a0,a1
    90002d02:	60a2                	ld	ra,8(sp)
    90002d04:	0141                	addi	sp,sp,16
    90002d06:	8082                	ret

0000000090002d08 <.LBB244_47>:
    90002d08:	00006617          	auipc	a2,0x6
    90002d0c:	0e060613          	addi	a2,a2,224 # 90008de8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    90002d10:	852e                	mv	a0,a1
    90002d12:	859e                	mv	a1,t2
    90002d14:	00000097          	auipc	ra,0x0
    90002d18:	816080e7          	jalr	-2026(ra) # 9000252a <_ZN4core5slice5index22slice_index_order_fail17h17f07731262cfc7fE>
	...

0000000090002d1e <.LBB244_48>:
    90002d1e:	00006617          	auipc	a2,0x6
    90002d22:	0ca60613          	addi	a2,a2,202 # 90008de8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    90002d26:	12200593          	li	a1,290
    90002d2a:	a039                	j	90002d38 <.LBB244_49+0xc>

0000000090002d2c <.LBB244_49>:
    90002d2c:	00006617          	auipc	a2,0x6
    90002d30:	0bc60613          	addi	a2,a2,188 # 90008de8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    90002d34:	0af00593          	li	a1,175
    90002d38:	851e                	mv	a0,t2
    90002d3a:	fffff097          	auipc	ra,0xfffff
    90002d3e:	7b0080e7          	jalr	1968(ra) # 900024ea <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
	...

0000000090002d44 <.LBB244_50>:
    90002d44:	00006517          	auipc	a0,0x6
    90002d48:	a7550513          	addi	a0,a0,-1419 # 900087b9 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.175>

0000000090002d4c <.LBB244_51>:
    90002d4c:	00006617          	auipc	a2,0x6
    90002d50:	0b460613          	addi	a2,a2,180 # 90008e00 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.343>
    90002d54:	02b00593          	li	a1,43
    90002d58:	ffffe097          	auipc	ra,0xffffe
    90002d5c:	58a080e7          	jalr	1418(ra) # 900012e2 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000090002d62 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>:
    90002d62:	7175                	addi	sp,sp,-144
    90002d64:	e506                	sd	ra,136(sp)
    90002d66:	6114                	ld	a3,0(a0)
    90002d68:	852e                	mv	a0,a1
    90002d6a:	4581                	li	a1,0
    90002d6c:	00810813          	addi	a6,sp,8
    90002d70:	4729                	li	a4,10
    90002d72:	a039                	j	90002d80 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    90002d74:	05760613          	addi	a2,a2,87
    90002d78:	06c78fa3          	sb	a2,127(a5) # 1c007f <.Lline_table_start0+0x1a31d5>
    90002d7c:	15fd                	addi	a1,a1,-1
    90002d7e:	ce91                	beqz	a3,90002d9a <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x38>
    90002d80:	00b807b3          	add	a5,a6,a1
    90002d84:	00f6f613          	andi	a2,a3,15
    90002d88:	8291                	srli	a3,a3,0x4
    90002d8a:	fee675e3          	bgeu	a2,a4,90002d74 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x12>
    90002d8e:	03066613          	ori	a2,a2,48
    90002d92:	06c78fa3          	sb	a2,127(a5)
    90002d96:	15fd                	addi	a1,a1,-1
    90002d98:	f6e5                	bnez	a3,90002d80 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    90002d9a:	08058693          	addi	a3,a1,128 # e0080 <.Lline_table_start0+0xc31d6>
    90002d9e:	08100613          	li	a2,129
    90002da2:	02c6f463          	bgeu	a3,a2,90002dca <.LBB456_8>
    90002da6:	40b007b3          	neg	a5,a1
    90002daa:	95c2                	add	a1,a1,a6
    90002dac:	08058713          	addi	a4,a1,128

0000000090002db0 <.LBB456_7>:
    90002db0:	00006617          	auipc	a2,0x6
    90002db4:	be060613          	addi	a2,a2,-1056 # 90008990 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    90002db8:	4585                	li	a1,1
    90002dba:	4689                	li	a3,2
    90002dbc:	fffff097          	auipc	ra,0xfffff
    90002dc0:	dcc080e7          	jalr	-564(ra) # 90001b88 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90002dc4:	60aa                	ld	ra,136(sp)
    90002dc6:	6149                	addi	sp,sp,144
    90002dc8:	8082                	ret

0000000090002dca <.LBB456_8>:
    90002dca:	00006617          	auipc	a2,0x6
    90002dce:	bae60613          	addi	a2,a2,-1106 # 90008978 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    90002dd2:	08000593          	li	a1,128
    90002dd6:	8536                	mv	a0,a3
    90002dd8:	fffff097          	auipc	ra,0xfffff
    90002ddc:	6d2080e7          	jalr	1746(ra) # 900024aa <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

0000000090002de2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>:
    90002de2:	7175                	addi	sp,sp,-144
    90002de4:	e506                	sd	ra,136(sp)
    90002de6:	882e                	mv	a6,a1
    90002de8:	0305e583          	lwu	a1,48(a1)
    90002dec:	0105f613          	andi	a2,a1,16
    90002df0:	ea19                	bnez	a2,90002e06 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x24>
    90002df2:	0205f593          	andi	a1,a1,32
    90002df6:	e1a9                	bnez	a1,90002e38 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x56>
    90002df8:	85c2                	mv	a1,a6
    90002dfa:	60aa                	ld	ra,136(sp)
    90002dfc:	6149                	addi	sp,sp,144
    90002dfe:	00000317          	auipc	t1,0x0
    90002e02:	27030067          	jr	624(t1) # 9000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    90002e06:	6108                	ld	a0,0(a0)
    90002e08:	4581                	li	a1,0
    90002e0a:	0030                	addi	a2,sp,8
    90002e0c:	46a9                	li	a3,10
    90002e0e:	a039                	j	90002e1c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x3a>
    90002e10:	05778793          	addi	a5,a5,87
    90002e14:	06f70fa3          	sb	a5,127(a4)
    90002e18:	15fd                	addi	a1,a1,-1
    90002e1a:	c539                	beqz	a0,90002e68 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    90002e1c:	00b60733          	add	a4,a2,a1
    90002e20:	00f57793          	andi	a5,a0,15
    90002e24:	8111                	srli	a0,a0,0x4
    90002e26:	fed7f5e3          	bgeu	a5,a3,90002e10 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x2e>
    90002e2a:	0307e793          	ori	a5,a5,48
    90002e2e:	06f70fa3          	sb	a5,127(a4)
    90002e32:	15fd                	addi	a1,a1,-1
    90002e34:	f565                	bnez	a0,90002e1c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x3a>
    90002e36:	a80d                	j	90002e68 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    90002e38:	6108                	ld	a0,0(a0)
    90002e3a:	4581                	li	a1,0
    90002e3c:	0030                	addi	a2,sp,8
    90002e3e:	46a9                	li	a3,10
    90002e40:	a039                	j	90002e4e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x6c>
    90002e42:	03778793          	addi	a5,a5,55
    90002e46:	06f70fa3          	sb	a5,127(a4)
    90002e4a:	15fd                	addi	a1,a1,-1
    90002e4c:	cd11                	beqz	a0,90002e68 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    90002e4e:	00b60733          	add	a4,a2,a1
    90002e52:	00f57793          	andi	a5,a0,15
    90002e56:	8111                	srli	a0,a0,0x4
    90002e58:	fed7f5e3          	bgeu	a5,a3,90002e42 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x60>
    90002e5c:	0307e793          	ori	a5,a5,48
    90002e60:	06f70fa3          	sb	a5,127(a4)
    90002e64:	15fd                	addi	a1,a1,-1
    90002e66:	f565                	bnez	a0,90002e4e <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x6c>
    90002e68:	08058513          	addi	a0,a1,128
    90002e6c:	08100693          	li	a3,129
    90002e70:	02d57663          	bgeu	a0,a3,90002e9c <.LBB462_15>
    90002e74:	40b007b3          	neg	a5,a1
    90002e78:	00b60533          	add	a0,a2,a1
    90002e7c:	08050713          	addi	a4,a0,128

0000000090002e80 <.LBB462_14>:
    90002e80:	00006617          	auipc	a2,0x6
    90002e84:	b1060613          	addi	a2,a2,-1264 # 90008990 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    90002e88:	4585                	li	a1,1
    90002e8a:	4689                	li	a3,2
    90002e8c:	8542                	mv	a0,a6
    90002e8e:	fffff097          	auipc	ra,0xfffff
    90002e92:	cfa080e7          	jalr	-774(ra) # 90001b88 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90002e96:	60aa                	ld	ra,136(sp)
    90002e98:	6149                	addi	sp,sp,144
    90002e9a:	8082                	ret

0000000090002e9c <.LBB462_15>:
    90002e9c:	00006617          	auipc	a2,0x6
    90002ea0:	adc60613          	addi	a2,a2,-1316 # 90008978 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    90002ea4:	08000593          	li	a1,128
    90002ea8:	fffff097          	auipc	ra,0xfffff
    90002eac:	602080e7          	jalr	1538(ra) # 900024aa <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

0000000090002eb2 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>:
    90002eb2:	715d                	addi	sp,sp,-80
    90002eb4:	e486                	sd	ra,72(sp)
    90002eb6:	e0a2                	sd	s0,64(sp)
    90002eb8:	fc26                	sd	s1,56(sp)
    90002eba:	f84a                	sd	s2,48(sp)
    90002ebc:	00056903          	lwu	s2,0(a0)
    90002ec0:	852e                	mv	a0,a1
    90002ec2:	00495593          	srli	a1,s2,0x4
    90002ec6:	02700693          	li	a3,39
    90002eca:	27100713          	li	a4,625

0000000090002ece <.LBB468_10>:
    90002ece:	00006817          	auipc	a6,0x6
    90002ed2:	ac480813          	addi	a6,a6,-1340 # 90008992 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    90002ed6:	02e5f363          	bgeu	a1,a4,90002efc <.LBB468_10+0x2e>
    90002eda:	06300593          	li	a1,99
    90002ede:	0f25e063          	bltu	a1,s2,90002fbe <.LBB468_10+0xf0>
    90002ee2:	45a5                	li	a1,9
    90002ee4:	1325cd63          	blt	a1,s2,9000301e <.LBB468_10+0x150>
    90002ee8:	fff68593          	addi	a1,a3,-1 # aefff <.Lline_table_start0+0x92155>
    90002eec:	00910613          	addi	a2,sp,9
    90002ef0:	962e                	add	a2,a2,a1
    90002ef2:	03090693          	addi	a3,s2,48
    90002ef6:	00d60023          	sb	a3,0(a2)
    90002efa:	a291                	j	9000303e <.LBB468_10+0x170>
    90002efc:	4681                	li	a3,0
    90002efe:	001a35b7          	lui	a1,0x1a3
    90002f02:	6e35859b          	addiw	a1,a1,1763
    90002f06:	05ba                	slli	a1,a1,0xe
    90002f08:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    90002f0c:	05ba                	slli	a1,a1,0xe
    90002f0e:	43358593          	addi	a1,a1,1075
    90002f12:	05b6                	slli	a1,a1,0xd
    90002f14:	94b58893          	addi	a7,a1,-1717
    90002f18:	6589                	lui	a1,0x2
    90002f1a:	7105831b          	addiw	t1,a1,1808
    90002f1e:	65c1                	lui	a1,0x10
    90002f20:	ffc58e1b          	addiw	t3,a1,-4
    90002f24:	0051f737          	lui	a4,0x51f
    90002f28:	b857071b          	addiw	a4,a4,-1147
    90002f2c:	0736                	slli	a4,a4,0xd
    90002f2e:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90002f32:	073a                	slli	a4,a4,0xe
    90002f34:	28f70713          	addi	a4,a4,655
    90002f38:	0732                	slli	a4,a4,0xc
    90002f3a:	5c370e93          	addi	t4,a4,1475
    90002f3e:	06400293          	li	t0,100
    90002f42:	ffe58f1b          	addiw	t5,a1,-2
    90002f46:	00910393          	addi	t2,sp,9
    90002f4a:	05f5e5b7          	lui	a1,0x5f5e
    90002f4e:	0ff58f9b          	addiw	t6,a1,255
    90002f52:	864a                	mv	a2,s2
    90002f54:	031937b3          	mulhu	a5,s2,a7
    90002f58:	00b7d913          	srli	s2,a5,0xb
    90002f5c:	02690733          	mul	a4,s2,t1
    90002f60:	40e60733          	sub	a4,a2,a4
    90002f64:	01c775b3          	and	a1,a4,t3
    90002f68:	8189                	srli	a1,a1,0x2
    90002f6a:	03d5b5b3          	mulhu	a1,a1,t4
    90002f6e:	8189                	srli	a1,a1,0x2
    90002f70:	00159413          	slli	s0,a1,0x1
    90002f74:	025585b3          	mul	a1,a1,t0
    90002f78:	40b705b3          	sub	a1,a4,a1
    90002f7c:	0586                	slli	a1,a1,0x1
    90002f7e:	01e5f5b3          	and	a1,a1,t5
    90002f82:	01040733          	add	a4,s0,a6
    90002f86:	00d38433          	add	s0,t2,a3
    90002f8a:	00074483          	lbu	s1,0(a4)
    90002f8e:	00170703          	lb	a4,1(a4)
    90002f92:	95c2                	add	a1,a1,a6
    90002f94:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f41157>
    90002f98:	0005c583          	lbu	a1,0(a1)
    90002f9c:	02e40223          	sb	a4,36(s0)
    90002fa0:	029401a3          	sb	s1,35(s0)
    90002fa4:	02f40323          	sb	a5,38(s0)
    90002fa8:	02b402a3          	sb	a1,37(s0)
    90002fac:	16f1                	addi	a3,a3,-4
    90002fae:	facfe2e3          	bltu	t6,a2,90002f52 <.LBB468_10+0x84>
    90002fb2:	02768693          	addi	a3,a3,39
    90002fb6:	06300593          	li	a1,99
    90002fba:	f325f4e3          	bgeu	a1,s2,90002ee2 <.LBB468_10+0x14>
    90002fbe:	65c1                	lui	a1,0x10
    90002fc0:	ffc5861b          	addiw	a2,a1,-4
    90002fc4:	00c97633          	and	a2,s2,a2
    90002fc8:	8209                	srli	a2,a2,0x2
    90002fca:	0051f737          	lui	a4,0x51f
    90002fce:	b857071b          	addiw	a4,a4,-1147
    90002fd2:	0736                	slli	a4,a4,0xd
    90002fd4:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90002fd8:	073a                	slli	a4,a4,0xe
    90002fda:	28f70713          	addi	a4,a4,655
    90002fde:	0732                	slli	a4,a4,0xc
    90002fe0:	5c370713          	addi	a4,a4,1475
    90002fe4:	02e63633          	mulhu	a2,a2,a4
    90002fe8:	8209                	srli	a2,a2,0x2
    90002fea:	06400713          	li	a4,100
    90002fee:	02e60733          	mul	a4,a2,a4
    90002ff2:	40e90733          	sub	a4,s2,a4
    90002ff6:	0706                	slli	a4,a4,0x1
    90002ff8:	35f9                	addiw	a1,a1,-2
    90002ffa:	8df9                	and	a1,a1,a4
    90002ffc:	16f9                	addi	a3,a3,-2
    90002ffe:	95c2                	add	a1,a1,a6
    90003000:	00158703          	lb	a4,1(a1) # 10001 <n+0xffe1>
    90003004:	0005c583          	lbu	a1,0(a1)
    90003008:	00910793          	addi	a5,sp,9
    9000300c:	97b6                	add	a5,a5,a3
    9000300e:	00e780a3          	sb	a4,1(a5)
    90003012:	00b78023          	sb	a1,0(a5)
    90003016:	8932                	mv	s2,a2
    90003018:	45a5                	li	a1,9
    9000301a:	ed25d7e3          	bge	a1,s2,90002ee8 <.LBB468_10+0x1a>
    9000301e:	00191613          	slli	a2,s2,0x1
    90003022:	ffe68593          	addi	a1,a3,-2
    90003026:	9642                	add	a2,a2,a6
    90003028:	00160683          	lb	a3,1(a2)
    9000302c:	00064603          	lbu	a2,0(a2)
    90003030:	00910713          	addi	a4,sp,9
    90003034:	972e                	add	a4,a4,a1
    90003036:	00d700a3          	sb	a3,1(a4)
    9000303a:	00c70023          	sb	a2,0(a4)
    9000303e:	00910613          	addi	a2,sp,9
    90003042:	00b60733          	add	a4,a2,a1
    90003046:	02700613          	li	a2,39
    9000304a:	40b607b3          	sub	a5,a2,a1

000000009000304e <.LBB468_11>:
    9000304e:	00005617          	auipc	a2,0x5
    90003052:	72a60613          	addi	a2,a2,1834 # 90008778 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90003056:	4585                	li	a1,1
    90003058:	4681                	li	a3,0
    9000305a:	fffff097          	auipc	ra,0xfffff
    9000305e:	b2e080e7          	jalr	-1234(ra) # 90001b88 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90003062:	7942                	ld	s2,48(sp)
    90003064:	74e2                	ld	s1,56(sp)
    90003066:	6406                	ld	s0,64(sp)
    90003068:	60a6                	ld	ra,72(sp)
    9000306a:	6161                	addi	sp,sp,80
    9000306c:	8082                	ret

000000009000306e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>:
    9000306e:	715d                	addi	sp,sp,-80
    90003070:	e486                	sd	ra,72(sp)
    90003072:	e0a2                	sd	s0,64(sp)
    90003074:	fc26                	sd	s1,56(sp)
    90003076:	f84a                	sd	s2,48(sp)
    90003078:	00053903          	ld	s2,0(a0)
    9000307c:	852e                	mv	a0,a1
    9000307e:	00495593          	srli	a1,s2,0x4
    90003082:	02700693          	li	a3,39
    90003086:	27100713          	li	a4,625

000000009000308a <.LBB470_10>:
    9000308a:	00006817          	auipc	a6,0x6
    9000308e:	90880813          	addi	a6,a6,-1784 # 90008992 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    90003092:	02e5f363          	bgeu	a1,a4,900030b8 <.LBB470_10+0x2e>
    90003096:	06300593          	li	a1,99
    9000309a:	0f25c063          	blt	a1,s2,9000317a <.LBB470_10+0xf0>
    9000309e:	45a5                	li	a1,9
    900030a0:	1325cd63          	blt	a1,s2,900031da <.LBB470_10+0x150>
    900030a4:	fff68593          	addi	a1,a3,-1
    900030a8:	00910613          	addi	a2,sp,9
    900030ac:	962e                	add	a2,a2,a1
    900030ae:	03090693          	addi	a3,s2,48
    900030b2:	00d60023          	sb	a3,0(a2)
    900030b6:	a291                	j	900031fa <.LBB470_10+0x170>
    900030b8:	4681                	li	a3,0
    900030ba:	001a35b7          	lui	a1,0x1a3
    900030be:	6e35859b          	addiw	a1,a1,1763
    900030c2:	05ba                	slli	a1,a1,0xe
    900030c4:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x185c1d>
    900030c8:	05ba                	slli	a1,a1,0xe
    900030ca:	43358593          	addi	a1,a1,1075
    900030ce:	05b6                	slli	a1,a1,0xd
    900030d0:	94b58893          	addi	a7,a1,-1717
    900030d4:	6589                	lui	a1,0x2
    900030d6:	7105831b          	addiw	t1,a1,1808
    900030da:	65c1                	lui	a1,0x10
    900030dc:	ffc58e1b          	addiw	t3,a1,-4
    900030e0:	0051f737          	lui	a4,0x51f
    900030e4:	b857071b          	addiw	a4,a4,-1147
    900030e8:	0736                	slli	a4,a4,0xd
    900030ea:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    900030ee:	073a                	slli	a4,a4,0xe
    900030f0:	28f70713          	addi	a4,a4,655
    900030f4:	0732                	slli	a4,a4,0xc
    900030f6:	5c370e93          	addi	t4,a4,1475
    900030fa:	06400293          	li	t0,100
    900030fe:	ffe58f1b          	addiw	t5,a1,-2
    90003102:	00910393          	addi	t2,sp,9
    90003106:	05f5e5b7          	lui	a1,0x5f5e
    9000310a:	0ff58f9b          	addiw	t6,a1,255
    9000310e:	864a                	mv	a2,s2
    90003110:	031937b3          	mulhu	a5,s2,a7
    90003114:	00b7d913          	srli	s2,a5,0xb
    90003118:	02690733          	mul	a4,s2,t1
    9000311c:	40e60733          	sub	a4,a2,a4
    90003120:	01c775b3          	and	a1,a4,t3
    90003124:	8189                	srli	a1,a1,0x2
    90003126:	03d5b5b3          	mulhu	a1,a1,t4
    9000312a:	8189                	srli	a1,a1,0x2
    9000312c:	00159413          	slli	s0,a1,0x1
    90003130:	025585b3          	mul	a1,a1,t0
    90003134:	40b705b3          	sub	a1,a4,a1
    90003138:	0586                	slli	a1,a1,0x1
    9000313a:	01e5f5b3          	and	a1,a1,t5
    9000313e:	01040733          	add	a4,s0,a6
    90003142:	00d38433          	add	s0,t2,a3
    90003146:	00074483          	lbu	s1,0(a4)
    9000314a:	00170703          	lb	a4,1(a4)
    9000314e:	95c2                	add	a1,a1,a6
    90003150:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f41157>
    90003154:	0005c583          	lbu	a1,0(a1)
    90003158:	02e40223          	sb	a4,36(s0)
    9000315c:	029401a3          	sb	s1,35(s0)
    90003160:	02f40323          	sb	a5,38(s0)
    90003164:	02b402a3          	sb	a1,37(s0)
    90003168:	16f1                	addi	a3,a3,-4
    9000316a:	facfe2e3          	bltu	t6,a2,9000310e <.LBB470_10+0x84>
    9000316e:	02768693          	addi	a3,a3,39
    90003172:	06300593          	li	a1,99
    90003176:	f325d4e3          	bge	a1,s2,9000309e <.LBB470_10+0x14>
    9000317a:	65c1                	lui	a1,0x10
    9000317c:	ffc5861b          	addiw	a2,a1,-4
    90003180:	00c97633          	and	a2,s2,a2
    90003184:	8209                	srli	a2,a2,0x2
    90003186:	0051f737          	lui	a4,0x51f
    9000318a:	b857071b          	addiw	a4,a4,-1147
    9000318e:	0736                	slli	a4,a4,0xd
    90003190:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    90003194:	073a                	slli	a4,a4,0xe
    90003196:	28f70713          	addi	a4,a4,655
    9000319a:	0732                	slli	a4,a4,0xc
    9000319c:	5c370713          	addi	a4,a4,1475
    900031a0:	02e63633          	mulhu	a2,a2,a4
    900031a4:	8209                	srli	a2,a2,0x2
    900031a6:	06400713          	li	a4,100
    900031aa:	02e60733          	mul	a4,a2,a4
    900031ae:	40e90733          	sub	a4,s2,a4
    900031b2:	0706                	slli	a4,a4,0x1
    900031b4:	35f9                	addiw	a1,a1,-2
    900031b6:	8df9                	and	a1,a1,a4
    900031b8:	16f9                	addi	a3,a3,-2
    900031ba:	95c2                	add	a1,a1,a6
    900031bc:	00158703          	lb	a4,1(a1) # 10001 <n+0xffe1>
    900031c0:	0005c583          	lbu	a1,0(a1)
    900031c4:	00910793          	addi	a5,sp,9
    900031c8:	97b6                	add	a5,a5,a3
    900031ca:	00e780a3          	sb	a4,1(a5)
    900031ce:	00b78023          	sb	a1,0(a5)
    900031d2:	8932                	mv	s2,a2
    900031d4:	45a5                	li	a1,9
    900031d6:	ed25d7e3          	bge	a1,s2,900030a4 <.LBB470_10+0x1a>
    900031da:	00191613          	slli	a2,s2,0x1
    900031de:	ffe68593          	addi	a1,a3,-2
    900031e2:	9642                	add	a2,a2,a6
    900031e4:	00160683          	lb	a3,1(a2)
    900031e8:	00064603          	lbu	a2,0(a2)
    900031ec:	00910713          	addi	a4,sp,9
    900031f0:	972e                	add	a4,a4,a1
    900031f2:	00d700a3          	sb	a3,1(a4)
    900031f6:	00c70023          	sb	a2,0(a4)
    900031fa:	00910613          	addi	a2,sp,9
    900031fe:	00b60733          	add	a4,a2,a1
    90003202:	02700613          	li	a2,39
    90003206:	40b607b3          	sub	a5,a2,a1

000000009000320a <.LBB470_11>:
    9000320a:	00005617          	auipc	a2,0x5
    9000320e:	56e60613          	addi	a2,a2,1390 # 90008778 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    90003212:	4585                	li	a1,1
    90003214:	4681                	li	a3,0
    90003216:	fffff097          	auipc	ra,0xfffff
    9000321a:	972080e7          	jalr	-1678(ra) # 90001b88 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    9000321e:	7942                	ld	s2,48(sp)
    90003220:	74e2                	ld	s1,56(sp)
    90003222:	6406                	ld	s0,64(sp)
    90003224:	60a6                	ld	ra,72(sp)
    90003226:	6161                	addi	sp,sp,80
    90003228:	8082                	ret

000000009000322a <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9b30d63a2778a2bdE>:
    9000322a:	7590                	ld	a2,40(a1)
    9000322c:	7188                	ld	a0,32(a1)
    9000322e:	6e1c                	ld	a5,24(a2)

0000000090003230 <.LBB494_1>:
    90003230:	00006597          	auipc	a1,0x6
    90003234:	1c058593          	addi	a1,a1,448 # 900093f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.541>
    90003238:	4615                	li	a2,5
    9000323a:	8782                	jr	a5

000000009000323c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h583af7b57dae1f0cE>:
    9000323c:	6108                	ld	a0,0(a0)
    9000323e:	00000317          	auipc	t1,0x0
    90003242:	ba430067          	jr	-1116(t1) # 90002de2 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>

0000000090003246 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60a88569702d73e5E>:
    90003246:	7175                	addi	sp,sp,-144
    90003248:	e506                	sd	ra,136(sp)
    9000324a:	882e                	mv	a6,a1
    9000324c:	0305e583          	lwu	a1,48(a1)
    90003250:	6108                	ld	a0,0(a0)
    90003252:	0105f613          	andi	a2,a1,16
    90003256:	e625                	bnez	a2,900032be <.LBB526_19+0x22>
    90003258:	00054503          	lbu	a0,0(a0)
    9000325c:	0205f593          	andi	a1,a1,32
    90003260:	e9d1                	bnez	a1,900032f4 <.LBB526_19+0x58>
    90003262:	06400593          	li	a1,100
    90003266:	0eb56963          	bltu	a0,a1,90003358 <.LBB526_20+0x1c>
    9000326a:	0fc57613          	andi	a2,a0,252
    9000326e:	8209                	srli	a2,a2,0x2
    90003270:	0051f6b7          	lui	a3,0x51f
    90003274:	b856869b          	addiw	a3,a3,-1147
    90003278:	06b6                	slli	a3,a3,0xd
    9000327a:	3d768693          	addi	a3,a3,983 # 51f3d7 <.Lline_table_start0+0x50252d>
    9000327e:	06ba                	slli	a3,a3,0xe
    90003280:	28f68693          	addi	a3,a3,655
    90003284:	06b2                	slli	a3,a3,0xc
    90003286:	5c368693          	addi	a3,a3,1475
    9000328a:	02d63633          	mulhu	a2,a2,a3
    9000328e:	8209                	srli	a2,a2,0x2
    90003290:	02b605b3          	mul	a1,a2,a1
    90003294:	8d0d                	sub	a0,a0,a1
    90003296:	0506                	slli	a0,a0,0x1
    90003298:	0fe57513          	andi	a0,a0,254

000000009000329c <.LBB526_19>:
    9000329c:	00005597          	auipc	a1,0x5
    900032a0:	6f658593          	addi	a1,a1,1782 # 90008992 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    900032a4:	952e                	add	a0,a0,a1
    900032a6:	00150583          	lb	a1,1(a0)
    900032aa:	00054503          	lbu	a0,0(a0)
    900032ae:	02b10723          	sb	a1,46(sp)
    900032b2:	02a106a3          	sb	a0,45(sp)
    900032b6:	02400593          	li	a1,36
    900032ba:	8532                	mv	a0,a2
    900032bc:	a05d                	j	90003362 <.LBB526_20+0x26>
    900032be:	00054503          	lbu	a0,0(a0)
    900032c2:	4581                	li	a1,0
    900032c4:	0030                	addi	a2,sp,8
    900032c6:	46a9                	li	a3,10
    900032c8:	a039                	j	900032d6 <.LBB526_19+0x3a>
    900032ca:	05778793          	addi	a5,a5,87
    900032ce:	06f70fa3          	sb	a5,127(a4)
    900032d2:	15fd                	addi	a1,a1,-1
    900032d4:	c921                	beqz	a0,90003324 <.LBB526_19+0x88>
    900032d6:	00b60733          	add	a4,a2,a1
    900032da:	00f57793          	andi	a5,a0,15
    900032de:	8111                	srli	a0,a0,0x4
    900032e0:	893d                	andi	a0,a0,15
    900032e2:	fed7f4e3          	bgeu	a5,a3,900032ca <.LBB526_19+0x2e>
    900032e6:	0307e793          	ori	a5,a5,48
    900032ea:	06f70fa3          	sb	a5,127(a4)
    900032ee:	15fd                	addi	a1,a1,-1
    900032f0:	f17d                	bnez	a0,900032d6 <.LBB526_19+0x3a>
    900032f2:	a80d                	j	90003324 <.LBB526_19+0x88>
    900032f4:	4581                	li	a1,0
    900032f6:	0030                	addi	a2,sp,8
    900032f8:	46a9                	li	a3,10
    900032fa:	a039                	j	90003308 <.LBB526_19+0x6c>
    900032fc:	03778793          	addi	a5,a5,55
    90003300:	06f70fa3          	sb	a5,127(a4)
    90003304:	15fd                	addi	a1,a1,-1
    90003306:	cd19                	beqz	a0,90003324 <.LBB526_19+0x88>
    90003308:	00b60733          	add	a4,a2,a1
    9000330c:	00f57793          	andi	a5,a0,15
    90003310:	8111                	srli	a0,a0,0x4
    90003312:	893d                	andi	a0,a0,15
    90003314:	fed7f4e3          	bgeu	a5,a3,900032fc <.LBB526_19+0x60>
    90003318:	0307e793          	ori	a5,a5,48
    9000331c:	06f70fa3          	sb	a5,127(a4)
    90003320:	15fd                	addi	a1,a1,-1
    90003322:	f17d                	bnez	a0,90003308 <.LBB526_19+0x6c>
    90003324:	08058513          	addi	a0,a1,128
    90003328:	08100693          	li	a3,129
    9000332c:	08d57763          	bgeu	a0,a3,900033ba <.LBB526_23>
    90003330:	40b007b3          	neg	a5,a1
    90003334:	00b60533          	add	a0,a2,a1
    90003338:	08050713          	addi	a4,a0,128

000000009000333c <.LBB526_20>:
    9000333c:	00005617          	auipc	a2,0x5
    90003340:	65460613          	addi	a2,a2,1620 # 90008990 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    90003344:	4585                	li	a1,1
    90003346:	4689                	li	a3,2
    90003348:	8542                	mv	a0,a6
    9000334a:	fffff097          	auipc	ra,0xfffff
    9000334e:	83e080e7          	jalr	-1986(ra) # 90001b88 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    90003352:	60aa                	ld	ra,136(sp)
    90003354:	6149                	addi	sp,sp,144
    90003356:	8082                	ret
    90003358:	4625                	li	a2,9
    9000335a:	02600593          	li	a1,38
    9000335e:	00a66963          	bltu	a2,a0,90003370 <.LBB526_20+0x34>
    90003362:	0030                	addi	a2,sp,8
    90003364:	962e                	add	a2,a2,a1
    90003366:	03050513          	addi	a0,a0,48
    9000336a:	00a60023          	sb	a0,0(a2)
    9000336e:	a00d                	j	90003390 <.LBB526_21+0x1e>
    90003370:	0506                	slli	a0,a0,0x1

0000000090003372 <.LBB526_21>:
    90003372:	00005597          	auipc	a1,0x5
    90003376:	62058593          	addi	a1,a1,1568 # 90008992 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    9000337a:	952e                	add	a0,a0,a1
    9000337c:	00150583          	lb	a1,1(a0)
    90003380:	00054503          	lbu	a0,0(a0)
    90003384:	02b10723          	sb	a1,46(sp)
    90003388:	02a106a3          	sb	a0,45(sp)
    9000338c:	02500593          	li	a1,37
    90003390:	0028                	addi	a0,sp,8
    90003392:	00b50733          	add	a4,a0,a1
    90003396:	02700513          	li	a0,39
    9000339a:	40b507b3          	sub	a5,a0,a1

000000009000339e <.LBB526_22>:
    9000339e:	00005617          	auipc	a2,0x5
    900033a2:	3da60613          	addi	a2,a2,986 # 90008778 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    900033a6:	4585                	li	a1,1
    900033a8:	8542                	mv	a0,a6
    900033aa:	4681                	li	a3,0
    900033ac:	ffffe097          	auipc	ra,0xffffe
    900033b0:	7dc080e7          	jalr	2012(ra) # 90001b88 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    900033b4:	60aa                	ld	ra,136(sp)
    900033b6:	6149                	addi	sp,sp,144
    900033b8:	8082                	ret

00000000900033ba <.LBB526_23>:
    900033ba:	00005617          	auipc	a2,0x5
    900033be:	5be60613          	addi	a2,a2,1470 # 90008978 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    900033c2:	08000593          	li	a1,128
    900033c6:	fffff097          	auipc	ra,0xfffff
    900033ca:	0e4080e7          	jalr	228(ra) # 900024aa <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

00000000900033d0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2d2d27b812270d6E>:
    900033d0:	7139                	addi	sp,sp,-64
    900033d2:	fc06                	sd	ra,56(sp)
    900033d4:	f822                	sd	s0,48(sp)
    900033d6:	f426                	sd	s1,40(sp)
    900033d8:	6110                	ld	a2,0(a0)
    900033da:	00064503          	lbu	a0,0(a2)
    900033de:	4685                	li	a3,1
    900033e0:	842e                	mv	s0,a1
    900033e2:	0ad51263          	bne	a0,a3,90003486 <.LBB548_13+0x22>
    900033e6:	740c                	ld	a1,40(s0)
    900033e8:	7008                	ld	a0,32(s0)
    900033ea:	6d94                	ld	a3,24(a1)
    900033ec:	00160493          	addi	s1,a2,1

00000000900033f0 <.LBB548_10>:
    900033f0:	00005597          	auipc	a1,0x5
    900033f4:	3bd58593          	addi	a1,a1,957 # 900087ad <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0x12>
    900033f8:	4611                	li	a2,4
    900033fa:	9682                	jalr	a3
    900033fc:	e422                	sd	s0,8(sp)
    900033fe:	00a10c23          	sb	a0,24(sp)
    90003402:	e802                	sd	zero,16(sp)
    90003404:	00010ca3          	sb	zero,25(sp)
    90003408:	f026                	sd	s1,32(sp)

000000009000340a <.LBB548_11>:
    9000340a:	00005617          	auipc	a2,0x5
    9000340e:	52e60613          	addi	a2,a2,1326 # 90008938 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.210>
    90003412:	0028                	addi	a0,sp,8
    90003414:	100c                	addi	a1,sp,32
    90003416:	ffffe097          	auipc	ra,0xffffe
    9000341a:	200080e7          	jalr	512(ra) # 90001616 <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>
    9000341e:	6542                	ld	a0,16(sp)
    90003420:	01814583          	lbu	a1,24(sp)
    90003424:	c931                	beqz	a0,90003478 <.LBB548_13+0x14>
    90003426:	4405                	li	s0,1
    90003428:	e5a9                	bnez	a1,90003472 <.LBB548_13+0xe>
    9000342a:	01914583          	lbu	a1,25(sp)
    9000342e:	157d                	addi	a0,a0,-1
    90003430:	00a03533          	snez	a0,a0
    90003434:	0015b593          	seqz	a1,a1
    90003438:	8d4d                	or	a0,a0,a1
    9000343a:	e10d                	bnez	a0,9000345c <.LBB548_12+0x10>
    9000343c:	6522                	ld	a0,8(sp)
    9000343e:	03054583          	lbu	a1,48(a0)
    90003442:	8991                	andi	a1,a1,4
    90003444:	ed81                	bnez	a1,9000345c <.LBB548_12+0x10>
    90003446:	750c                	ld	a1,40(a0)
    90003448:	7108                	ld	a0,32(a0)
    9000344a:	6d94                	ld	a3,24(a1)

000000009000344c <.LBB548_12>:
    9000344c:	00005597          	auipc	a1,0x5
    90003450:	4e458593          	addi	a1,a1,1252 # 90008930 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.205>
    90003454:	4605                	li	a2,1
    90003456:	4405                	li	s0,1
    90003458:	9682                	jalr	a3
    9000345a:	ed01                	bnez	a0,90003472 <.LBB548_13+0xe>
    9000345c:	6522                	ld	a0,8(sp)
    9000345e:	750c                	ld	a1,40(a0)
    90003460:	7108                	ld	a0,32(a0)
    90003462:	6d94                	ld	a3,24(a1)

0000000090003464 <.LBB548_13>:
    90003464:	00005597          	auipc	a1,0x5
    90003468:	4cd58593          	addi	a1,a1,1229 # 90008931 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.206>
    9000346c:	4605                	li	a2,1
    9000346e:	9682                	jalr	a3
    90003470:	842a                	mv	s0,a0
    90003472:	00810c23          	sb	s0,24(sp)
    90003476:	85a2                	mv	a1,s0
    90003478:	00b03533          	snez	a0,a1
    9000347c:	74a2                	ld	s1,40(sp)
    9000347e:	7442                	ld	s0,48(sp)
    90003480:	70e2                	ld	ra,56(sp)
    90003482:	6121                	addi	sp,sp,64
    90003484:	8082                	ret
    90003486:	740c                	ld	a1,40(s0)
    90003488:	7008                	ld	a0,32(s0)
    9000348a:	6d9c                	ld	a5,24(a1)

000000009000348c <.LBB548_14>:
    9000348c:	00005597          	auipc	a1,0x5
    90003490:	32958593          	addi	a1,a1,809 # 900087b5 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.150+0x1a>
    90003494:	4611                	li	a2,4
    90003496:	74a2                	ld	s1,40(sp)
    90003498:	7442                	ld	s0,48(sp)
    9000349a:	70e2                	ld	ra,56(sp)
    9000349c:	6121                	addi	sp,sp,64
    9000349e:	8782                	jr	a5

00000000900034a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>:
    900034a0:	6510                	ld	a2,8(a0)
    900034a2:	6108                	ld	a0,0(a0)
    900034a4:	6e1c                	ld	a5,24(a2)
    900034a6:	8782                	jr	a5

00000000900034a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>:
    900034a8:	6114                	ld	a3,0(a0)
    900034aa:	6510                	ld	a2,8(a0)
    900034ac:	852e                	mv	a0,a1
    900034ae:	85b6                	mv	a1,a3
    900034b0:	fffff317          	auipc	t1,0xfffff
    900034b4:	96830067          	jr	-1688(t1) # 90001e18 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

00000000900034b8 <_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3ebd7e5e05aa8206E>:
    900034b8:	7139                	addi	sp,sp,-64
    900034ba:	fc06                	sd	ra,56(sp)
    900034bc:	f822                	sd	s0,48(sp)
    900034be:	f426                	sd	s1,40(sp)
    900034c0:	f04a                	sd	s2,32(sp)
    900034c2:	842e                	mv	s0,a1
    900034c4:	758c                	ld	a1,40(a1)
    900034c6:	7014                	ld	a3,32(s0)
    900034c8:	6d98                	ld	a4,24(a1)
    900034ca:	84aa                	mv	s1,a0
    900034cc:	00850913          	addi	s2,a0,8

00000000900034d0 <.LBB586_8>:
    900034d0:	00006597          	auipc	a1,0x6
    900034d4:	f2558593          	addi	a1,a1,-219 # 900093f5 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.565>
    900034d8:	4625                	li	a2,9
    900034da:	8536                	mv	a0,a3
    900034dc:	9702                	jalr	a4
    900034de:	e42a                	sd	a0,8(sp)
    900034e0:	e022                	sd	s0,0(sp)
    900034e2:	ec26                	sd	s1,24(sp)

00000000900034e4 <.LBB586_9>:
    900034e4:	00006597          	auipc	a1,0x6
    900034e8:	f1a58593          	addi	a1,a1,-230 # 900093fe <.Lanon.9d4bfc86079e95d674f3cded52b1db19.566>

00000000900034ec <.LBB586_10>:
    900034ec:	00006717          	auipc	a4,0x6
    900034f0:	ee470713          	addi	a4,a4,-284 # 900093d0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.418>
    900034f4:	840a                	mv	s0,sp
    900034f6:	0834                	addi	a3,sp,24
    900034f8:	462d                	li	a2,11
    900034fa:	8522                	mv	a0,s0
    900034fc:	ffffe097          	auipc	ra,0xffffe
    90003500:	fbe080e7          	jalr	-66(ra) # 900014ba <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    90003504:	ec4a                	sd	s2,24(sp)

0000000090003506 <.LBB586_11>:
    90003506:	00006597          	auipc	a1,0x6
    9000350a:	f0358593          	addi	a1,a1,-253 # 90009409 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.567>

000000009000350e <.LBB586_12>:
    9000350e:	00006717          	auipc	a4,0x6
    90003512:	f0a70713          	addi	a4,a4,-246 # 90009418 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.568>
    90003516:	0834                	addi	a3,sp,24
    90003518:	4625                	li	a2,9
    9000351a:	8522                	mv	a0,s0
    9000351c:	ffffe097          	auipc	ra,0xffffe
    90003520:	f9e080e7          	jalr	-98(ra) # 900014ba <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    90003524:	00914503          	lbu	a0,9(sp)
    90003528:	00814583          	lbu	a1,8(sp)
    9000352c:	c91d                	beqz	a0,90003562 <.LBB586_14+0x12>
    9000352e:	4505                	li	a0,1
    90003530:	e595                	bnez	a1,9000355c <.LBB586_14+0xc>
    90003532:	6502                	ld	a0,0(sp)
    90003534:	750c                	ld	a1,40(a0)
    90003536:	03054603          	lbu	a2,48(a0)
    9000353a:	7108                	ld	a0,32(a0)
    9000353c:	6d94                	ld	a3,24(a1)
    9000353e:	00467593          	andi	a1,a2,4
    90003542:	e599                	bnez	a1,90003550 <.LBB586_14>

0000000090003544 <.LBB586_13>:
    90003544:	00005597          	auipc	a1,0x5
    90003548:	3e758593          	addi	a1,a1,999 # 9000892b <.Lanon.9d4bfc86079e95d674f3cded52b1db19.202>
    9000354c:	4609                	li	a2,2
    9000354e:	a031                	j	9000355a <.LBB586_14+0xa>

0000000090003550 <.LBB586_14>:
    90003550:	00005597          	auipc	a1,0x5
    90003554:	3da58593          	addi	a1,a1,986 # 9000892a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.201>
    90003558:	4605                	li	a2,1
    9000355a:	9682                	jalr	a3
    9000355c:	00a10423          	sb	a0,8(sp)
    90003560:	85aa                	mv	a1,a0
    90003562:	00b03533          	snez	a0,a1
    90003566:	7902                	ld	s2,32(sp)
    90003568:	74a2                	ld	s1,40(sp)
    9000356a:	7442                	ld	s0,48(sp)
    9000356c:	70e2                	ld	ra,56(sp)
    9000356e:	6121                	addi	sp,sp,64
    90003570:	8082                	ret

0000000090003572 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>:
    90003572:	1141                	addi	sp,sp,-16
    90003574:	e406                	sd	ra,8(sp)
    90003576:	4681                	li	a3,0
    90003578:	0005059b          	sext.w	a1,a0
    9000357c:	6645                	lui	a2,0x11
    9000357e:	d246071b          	addiw	a4,a2,-732
    90003582:	00b5161b          	slliw	a2,a0,0xb
    90003586:	00e5e363          	bltu	a1,a4,9000358c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E+0x1a>
    9000358a:	46bd                	li	a3,15
    9000358c:	00868713          	addi	a4,a3,8
    90003590:	00271793          	slli	a5,a4,0x2

0000000090003594 <.LBB614_29>:
    90003594:	00006597          	auipc	a1,0x6
    90003598:	ea458593          	addi	a1,a1,-348 # 90009438 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hfd93ef645f5e63d2E>
    9000359c:	97ae                	add	a5,a5,a1
    9000359e:	439c                	lw	a5,0(a5)
    900035a0:	00b7979b          	slliw	a5,a5,0xb
    900035a4:	00f66363          	bltu	a2,a5,900035aa <.LBB614_29+0x16>
    900035a8:	86ba                	mv	a3,a4
    900035aa:	00468713          	addi	a4,a3,4
    900035ae:	00271793          	slli	a5,a4,0x2
    900035b2:	97ae                	add	a5,a5,a1
    900035b4:	439c                	lw	a5,0(a5)
    900035b6:	00b7979b          	slliw	a5,a5,0xb
    900035ba:	00f66363          	bltu	a2,a5,900035c0 <.LBB614_29+0x2c>
    900035be:	86ba                	mv	a3,a4
    900035c0:	00268713          	addi	a4,a3,2
    900035c4:	00271793          	slli	a5,a4,0x2
    900035c8:	97ae                	add	a5,a5,a1
    900035ca:	439c                	lw	a5,0(a5)
    900035cc:	00b7979b          	slliw	a5,a5,0xb
    900035d0:	00f66363          	bltu	a2,a5,900035d6 <.LBB614_29+0x42>
    900035d4:	86ba                	mv	a3,a4
    900035d6:	00168713          	addi	a4,a3,1
    900035da:	00271793          	slli	a5,a4,0x2
    900035de:	97ae                	add	a5,a5,a1
    900035e0:	439c                	lw	a5,0(a5)
    900035e2:	00b7979b          	slliw	a5,a5,0xb
    900035e6:	00f66363          	bltu	a2,a5,900035ec <.LBB614_29+0x58>
    900035ea:	86ba                	mv	a3,a4
    900035ec:	00269713          	slli	a4,a3,0x2
    900035f0:	972e                	add	a4,a4,a1
    900035f2:	4318                	lw	a4,0(a4)
    900035f4:	00b7171b          	slliw	a4,a4,0xb
    900035f8:	00c737b3          	sltu	a5,a4,a2
    900035fc:	8e39                	xor	a2,a2,a4
    900035fe:	00163613          	seqz	a2,a2
    90003602:	963e                	add	a2,a2,a5
    90003604:	00d60733          	add	a4,a2,a3
    90003608:	46f9                	li	a3,30
    9000360a:	0ae6e463          	bltu	a3,a4,900036b2 <.LBB614_32>
    9000360e:	00271793          	slli	a5,a4,0x2
    90003612:	2b100613          	li	a2,689
    90003616:	00d70763          	beq	a4,a3,90003624 <.LBB614_29+0x90>
    9000361a:	00f58633          	add	a2,a1,a5
    9000361e:	00466603          	lwu	a2,4(a2) # 11004 <n+0x10fe4>
    90003622:	8255                	srli	a2,a2,0x15
    90003624:	fff70693          	addi	a3,a4,-1
    90003628:	00d77463          	bgeu	a4,a3,90003630 <.LBB614_29+0x9c>
    9000362c:	4701                	li	a4,0
    9000362e:	a821                	j	90003646 <.LBB614_29+0xb2>
    90003630:	477d                	li	a4,31
    90003632:	08e6fb63          	bgeu	a3,a4,900036c8 <.LBB614_33>
    90003636:	068a                	slli	a3,a3,0x2
    90003638:	96ae                	add	a3,a3,a1
    9000363a:	0006e683          	lwu	a3,0(a3)
    9000363e:	00200737          	lui	a4,0x200
    90003642:	377d                	addiw	a4,a4,-1
    90003644:	8f75                	and	a4,a4,a3
    90003646:	95be                	add	a1,a1,a5
    90003648:	0005e583          	lwu	a1,0(a1)
    9000364c:	81d5                	srli	a1,a1,0x15
    9000364e:	00158693          	addi	a3,a1,1
    90003652:	02d60f63          	beq	a2,a3,90003690 <.LBB614_30+0x22>
    90003656:	2b100793          	li	a5,689
    9000365a:	882e                	mv	a6,a1
    9000365c:	00b7e463          	bltu	a5,a1,90003664 <.LBB614_29+0xd0>
    90003660:	2b100813          	li	a6,689
    90003664:	4781                	li	a5,0
    90003666:	40e5073b          	subw	a4,a0,a4
    9000366a:	fff60513          	addi	a0,a2,-1

000000009000366e <.LBB614_30>:
    9000366e:	00006617          	auipc	a2,0x6
    90003672:	e4660613          	addi	a2,a2,-442 # 900094b4 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h95afd816ac45989cE>
    90003676:	02b80263          	beq	a6,a1,9000369a <.LBB614_31>
    9000367a:	00c586b3          	add	a3,a1,a2
    9000367e:	0006c683          	lbu	a3,0(a3)
    90003682:	9fb5                	addw	a5,a5,a3
    90003684:	00f76663          	bltu	a4,a5,90003690 <.LBB614_30+0x22>
    90003688:	0585                	addi	a1,a1,1
    9000368a:	feb516e3          	bne	a0,a1,90003676 <.LBB614_30+0x8>
    9000368e:	85aa                	mv	a1,a0
    90003690:	0015f513          	andi	a0,a1,1
    90003694:	60a2                	ld	ra,8(sp)
    90003696:	0141                	addi	sp,sp,16
    90003698:	8082                	ret

000000009000369a <.LBB614_31>:
    9000369a:	00006617          	auipc	a2,0x6
    9000369e:	d0660613          	addi	a2,a2,-762 # 900093a0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.355>
    900036a2:	2b100593          	li	a1,689
    900036a6:	8542                	mv	a0,a6
    900036a8:	ffffe097          	auipc	ra,0xffffe
    900036ac:	c66080e7          	jalr	-922(ra) # 9000130e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

00000000900036b2 <.LBB614_32>:
    900036b2:	00006617          	auipc	a2,0x6
    900036b6:	cd660613          	addi	a2,a2,-810 # 90009388 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.354>
    900036ba:	45fd                	li	a1,31
    900036bc:	853a                	mv	a0,a4
    900036be:	ffffe097          	auipc	ra,0xffffe
    900036c2:	c50080e7          	jalr	-944(ra) # 9000130e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

00000000900036c8 <.LBB614_33>:
    900036c8:	00006617          	auipc	a2,0x6
    900036cc:	cf060613          	addi	a2,a2,-784 # 900093b8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.356>
    900036d0:	45fd                	li	a1,31
    900036d2:	8536                	mv	a0,a3
    900036d4:	ffffe097          	auipc	ra,0xffffe
    900036d8:	c3a080e7          	jalr	-966(ra) # 9000130e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

00000000900036de <memcpy>:
    900036de:	ca11                	beqz	a2,900036f2 <memcpy+0x14>
    900036e0:	86aa                	mv	a3,a0
    900036e2:	00058703          	lb	a4,0(a1)
    900036e6:	00e68023          	sb	a4,0(a3)
    900036ea:	167d                	addi	a2,a2,-1
    900036ec:	0685                	addi	a3,a3,1
    900036ee:	0585                	addi	a1,a1,1
    900036f0:	fa6d                	bnez	a2,900036e2 <memcpy+0x4>
    900036f2:	8082                	ret

00000000900036f4 <memset>:
    900036f4:	c619                	beqz	a2,90003702 <memset+0xe>
    900036f6:	86aa                	mv	a3,a0
    900036f8:	00b68023          	sb	a1,0(a3)
    900036fc:	167d                	addi	a2,a2,-1
    900036fe:	0685                	addi	a3,a3,1
    90003700:	fe65                	bnez	a2,900036f8 <memset+0x4>
    90003702:	8082                	ret
