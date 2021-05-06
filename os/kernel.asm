Platform: qemu

target/riscv64gc-unknown-none-elf/release/os:     file format elf64-littleriscv


Disassembly of section .text:

0000000080200000 <_start>:
    80200000:	00023117          	auipc	sp,0x23
    80200004:	00010113          	mv	sp,sp
    80200008:	00005097          	auipc	ra,0x5
    8020000c:	ef6080e7          	jalr	-266(ra) # 80204efe <rust_main>
	...

0000000080201000 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE>:
    80201000:	7145                	addi	sp,sp,-464
    80201002:	e786                	sd	ra,456(sp)
    80201004:	e3a2                	sd	s0,448(sp)
    80201006:	ff26                	sd	s1,440(sp)
    80201008:	fb4a                	sd	s2,432(sp)
    8020100a:	f74e                	sd	s3,424(sp)
    8020100c:	f352                	sd	s4,416(sp)
    8020100e:	ef56                	sd	s5,408(sp)
    80201010:	eb5a                	sd	s6,400(sp)
    80201012:	e75e                	sd	s7,392(sp)
    80201014:	e362                	sd	s8,384(sp)
    80201016:	fee6                	sd	s9,376(sp)
    80201018:	faea                	sd	s10,368(sp)
    8020101a:	f6ee                	sd	s11,360(sp)
    8020101c:	0b80                	addi	s0,sp,464
    8020101e:	0085b903          	ld	s2,8(a1)
    80201022:	0005bc83          	ld	s9,0(a1)
    80201026:	0ba95703          	lhu	a4,186(s2)
    8020102a:	6984                	ld	s1,16(a1)
    8020102c:	45a9                	li	a1,10
    8020102e:	89b6                	mv	s3,a3
    80201030:	8bb2                	mv	s7,a2
    80201032:	e2a43c23          	sd	a0,-456(s0)
    80201036:	00e5ef63          	bltu	a1,a4,80201054 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x54>
    8020103a:	00170a13          	addi	s4,a4,1
    8020103e:	00890b13          	addi	s6,s2,8
    80201042:	00148513          	addi	a0,s1,1
    80201046:	00349c13          	slli	s8,s1,0x3
    8020104a:	0ea77e63          	bgeu	a4,a0,80201146 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x146>
    8020104e:	06090d13          	addi	s10,s2,96
    80201052:	a22d                	j	8020117c <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x17c>
    80201054:	e7743023          	sd	s7,-416(s0)
    80201058:	e8040513          	addi	a0,s0,-384
    8020105c:	85a6                	mv	a1,s1
    8020105e:	00008097          	auipc	ra,0x8
    80201062:	41e080e7          	jalr	1054(ra) # 8020947c <_ZN5alloc11collections5btree4node10splitpoint17h698ccb298c98f398E>
    80201066:	e8043483          	ld	s1,-384(s0)
    8020106a:	e8843b83          	ld	s7,-376(s0)
    8020106e:	e9043d03          	ld	s10,-368(s0)
    80201072:	0c000513          	li	a0,192
    80201076:	45a1                	li	a1,8
    80201078:	00004097          	auipc	ra,0x4
    8020107c:	072080e7          	jalr	114(ra) # 802050ea <__rust_alloc>
    80201080:	56050a63          	beqz	a0,802015f4 <.LBB14_56+0x14>
    80201084:	8a2a                	mv	s4,a0
    80201086:	00053023          	sd	zero,0(a0)
    8020108a:	00850a93          	addi	s5,a0,8
    8020108e:	e8040593          	addi	a1,s0,-384
    80201092:	0b200613          	li	a2,178
    80201096:	8556                	mv	a0,s5
    80201098:	0000b097          	auipc	ra,0xb
    8020109c:	560080e7          	jalr	1376(ra) # 8020c5f8 <memcpy>
    802010a0:	0a0a1d23          	sh	zero,186(s4)
    802010a4:	0ba95603          	lhu	a2,186(s2)
    802010a8:	fff4c513          	not	a0,s1
    802010ac:	9532                	add	a0,a0,a2
    802010ae:	45b1                	li	a1,12
    802010b0:	0aaa1d23          	sh	a0,186(s4)
    802010b4:	4eb57563          	bgeu	a0,a1,8020159e <.LBB14_53>
    802010b8:	e7343423          	sd	s3,-408(s0)
    802010bc:	00148593          	addi	a1,s1,1
    802010c0:	8e0d                	sub	a2,a2,a1
    802010c2:	4aa61f63          	bne	a2,a0,80201580 <.LBB14_51>
    802010c6:	00890613          	addi	a2,s2,8
    802010ca:	00349693          	slli	a3,s1,0x3
    802010ce:	00d60733          	add	a4,a2,a3
    802010d2:	6318                	ld	a4,0(a4)
    802010d4:	e6e43c23          	sd	a4,-392(s0)
    802010d8:	06090c13          	addi	s8,s2,96
    802010dc:	96e2                	add	a3,a3,s8
    802010de:	6294                	ld	a3,0(a3)
    802010e0:	e6d43823          	sd	a3,-400(s0)
    802010e4:	4685                	li	a3,1
    802010e6:	03d69d93          	slli	s11,a3,0x3d
    802010ea:	00359993          	slli	s3,a1,0x3
    802010ee:	013605b3          	add	a1,a2,s3
    802010f2:	00351b13          	slli	s6,a0,0x3
    802010f6:	8556                	mv	a0,s5
    802010f8:	865a                	mv	a2,s6
    802010fa:	0000b097          	auipc	ra,0xb
    802010fe:	4fe080e7          	jalr	1278(ra) # 8020c5f8 <memcpy>
    80201102:	060a0513          	addi	a0,s4,96
    80201106:	013c05b3          	add	a1,s8,s3
    8020110a:	865a                	mv	a2,s6
    8020110c:	0000b097          	auipc	ra,0xb
    80201110:	4ec080e7          	jalr	1260(ra) # 8020c5f8 <memcpy>
    80201114:	0a991d23          	sh	s1,186(s2)
    80201118:	84d2                	mv	s1,s4
    8020111a:	000b9363          	bnez	s7,80201120 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x120>
    8020111e:	84ca                	mv	s1,s2
    80201120:	0ba4d583          	lhu	a1,186(s1)
    80201124:	fffd8613          	addi	a2,s11,-1
    80201128:	00158b13          	addi	s6,a1,1
    8020112c:	00848c13          	addi	s8,s1,8
    80201130:	001d0513          	addi	a0,s10,1
    80201134:	003d1d93          	slli	s11,s10,0x3
    80201138:	e4c43423          	sd	a2,-440(s0)
    8020113c:	06a5f463          	bgeu	a1,a0,802011a4 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x1a4>
    80201140:	06048d13          	addi	s10,s1,96
    80201144:	a859                	j	802011da <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x1da>
    80201146:	018b05b3          	add	a1,s6,s8
    8020114a:	00351d93          	slli	s11,a0,0x3
    8020114e:	01bb0533          	add	a0,s6,s11
    80201152:	fff4c613          	not	a2,s1
    80201156:	9652                	add	a2,a2,s4
    80201158:	00361a93          	slli	s5,a2,0x3
    8020115c:	8656                	mv	a2,s5
    8020115e:	0000b097          	auipc	ra,0xb
    80201162:	4b0080e7          	jalr	1200(ra) # 8020c60e <memmove>
    80201166:	06090d13          	addi	s10,s2,96
    8020116a:	018d05b3          	add	a1,s10,s8
    8020116e:	01bd0533          	add	a0,s10,s11
    80201172:	8656                	mv	a2,s5
    80201174:	0000b097          	auipc	ra,0xb
    80201178:	49a080e7          	jalr	1178(ra) # 8020c60e <memmove>
    8020117c:	e3843583          	ld	a1,-456(s0)
    80201180:	018b0533          	add	a0,s6,s8
    80201184:	01753023          	sd	s7,0(a0)
    80201188:	018d0533          	add	a0,s10,s8
    8020118c:	01353023          	sd	s3,0(a0)
    80201190:	0b491d23          	sh	s4,186(s2)
    80201194:	0005b023          	sd	zero,0(a1)
    80201198:	0195b423          	sd	s9,8(a1)
    8020119c:	0125b823          	sd	s2,16(a1)
    802011a0:	ed84                	sd	s1,24(a1)
    802011a2:	ae7d                	j	80201560 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x560>
    802011a4:	01bc05b3          	add	a1,s8,s11
    802011a8:	00351993          	slli	s3,a0,0x3
    802011ac:	013c0533          	add	a0,s8,s3
    802011b0:	00cd4633          	xor	a2,s10,a2
    802011b4:	965a                	add	a2,a2,s6
    802011b6:	00361a93          	slli	s5,a2,0x3
    802011ba:	8656                	mv	a2,s5
    802011bc:	0000b097          	auipc	ra,0xb
    802011c0:	452080e7          	jalr	1106(ra) # 8020c60e <memmove>
    802011c4:	06048d13          	addi	s10,s1,96
    802011c8:	01bd05b3          	add	a1,s10,s11
    802011cc:	013d0533          	add	a0,s10,s3
    802011d0:	8656                	mv	a2,s5
    802011d2:	0000b097          	auipc	ra,0xb
    802011d6:	43c080e7          	jalr	1084(ra) # 8020c60e <memmove>
    802011da:	e6843583          	ld	a1,-408(s0)
    802011de:	e6043603          	ld	a2,-416(s0)
    802011e2:	01bc0533          	add	a0,s8,s11
    802011e6:	e110                	sd	a2,0(a0)
    802011e8:	01bd0533          	add	a0,s10,s11
    802011ec:	e2a43823          	sd	a0,-464(s0)
    802011f0:	e10c                	sd	a1,0(a0)
    802011f2:	0b649d23          	sh	s6,186(s1)
    802011f6:	00093c03          	ld	s8,0(s2)
    802011fa:	240c0363          	beqz	s8,80201440 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x440>
    802011fe:	4601                	li	a2,0
    80201200:	8b52                	mv	s6,s4
    80201202:	e7043803          	ld	a6,-400(s0)
    80201206:	e7843683          	ld	a3,-392(s0)
    8020120a:	a839                	j	80201228 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x228>
    8020120c:	8962                	mv	s2,s8
    8020120e:	000c3c03          	ld	s8,0(s8)
    80201212:	8532                	mv	a0,a2
    80201214:	8b52                	mv	s6,s4
    80201216:	e7043783          	ld	a5,-400(s0)
    8020121a:	883e                	mv	a6,a5
    8020121c:	e7843703          	ld	a4,-392(s0)
    80201220:	86ba                	mv	a3,a4
    80201222:	8cb2                	mv	s9,a2
    80201224:	220c0463          	beqz	s8,8020144c <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x44c>
    80201228:	38cc9563          	bne	s9,a2,802015b2 <.LBB14_54>
    8020122c:	0bac5483          	lhu	s1,186(s8)
    80201230:	0b895b83          	lhu	s7,184(s2)
    80201234:	001c8d93          	addi	s11,s9,1
    80201238:	452d                	li	a0,11
    8020123a:	e7643423          	sd	s6,-408(s0)
    8020123e:	e7043023          	sd	a6,-416(s0)
    80201242:	e4d43c23          	sd	a3,-424(s0)
    80201246:	22a4e163          	bltu	s1,a0,80201468 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x468>
    8020124a:	e8040493          	addi	s1,s0,-384
    8020124e:	8526                	mv	a0,s1
    80201250:	85de                	mv	a1,s7
    80201252:	00008097          	auipc	ra,0x8
    80201256:	22a080e7          	jalr	554(ra) # 8020947c <_ZN5alloc11collections5btree4node10splitpoint17h698ccb298c98f398E>
    8020125a:	e8043c83          	ld	s9,-384(s0)
    8020125e:	e8843903          	ld	s2,-376(s0)
    80201262:	e9043983          	ld	s3,-368(s0)
    80201266:	0bac5d03          	lhu	s10,186(s8)
    8020126a:	12000513          	li	a0,288
    8020126e:	45a1                	li	a1,8
    80201270:	00004097          	auipc	ra,0x4
    80201274:	e7a080e7          	jalr	-390(ra) # 802050ea <__rust_alloc>
    80201278:	34050c63          	beqz	a0,802015d0 <.LBB14_55+0x16>
    8020127c:	8a2a                	mv	s4,a0
    8020127e:	00053023          	sd	zero,0(a0)
    80201282:	00850a93          	addi	s5,a0,8
    80201286:	0b200613          	li	a2,178
    8020128a:	8556                	mv	a0,s5
    8020128c:	85a6                	mv	a1,s1
    8020128e:	0000b097          	auipc	ra,0xb
    80201292:	36a080e7          	jalr	874(ra) # 8020c5f8 <memcpy>
    80201296:	0a0a1d23          	sh	zero,186(s4)
    8020129a:	0bca0513          	addi	a0,s4,188
    8020129e:	06400613          	li	a2,100
    802012a2:	f3440593          	addi	a1,s0,-204
    802012a6:	0000b097          	auipc	ra,0xb
    802012aa:	352080e7          	jalr	850(ra) # 8020c5f8 <memcpy>
    802012ae:	0bac5603          	lhu	a2,186(s8)
    802012b2:	fffcc513          	not	a0,s9
    802012b6:	9532                	add	a0,a0,a2
    802012b8:	0aaa1d23          	sh	a0,186(s4)
    802012bc:	45b1                	li	a1,12
    802012be:	2eb57063          	bgeu	a0,a1,8020159e <.LBB14_53>
    802012c2:	001c8593          	addi	a1,s9,1
    802012c6:	8e0d                	sub	a2,a2,a1
    802012c8:	2aa61c63          	bne	a2,a0,80201580 <.LBB14_51>
    802012cc:	008c0613          	addi	a2,s8,8
    802012d0:	003c9693          	slli	a3,s9,0x3
    802012d4:	00d60733          	add	a4,a2,a3
    802012d8:	6318                	ld	a4,0(a4)
    802012da:	e6e43c23          	sd	a4,-392(s0)
    802012de:	060c0493          	addi	s1,s8,96
    802012e2:	96a6                	add	a3,a3,s1
    802012e4:	6294                	ld	a3,0(a3)
    802012e6:	e6d43823          	sd	a3,-400(s0)
    802012ea:	00359b93          	slli	s7,a1,0x3
    802012ee:	017605b3          	add	a1,a2,s7
    802012f2:	00351b13          	slli	s6,a0,0x3
    802012f6:	8556                	mv	a0,s5
    802012f8:	865a                	mv	a2,s6
    802012fa:	0000b097          	auipc	ra,0xb
    802012fe:	2fe080e7          	jalr	766(ra) # 8020c5f8 <memcpy>
    80201302:	060a0513          	addi	a0,s4,96
    80201306:	017485b3          	add	a1,s1,s7
    8020130a:	865a                	mv	a2,s6
    8020130c:	0000b097          	auipc	ra,0xb
    80201310:	2ec080e7          	jalr	748(ra) # 8020c5f8 <memcpy>
    80201314:	0b9c1d23          	sh	s9,186(s8)
    80201318:	0baa5483          	lhu	s1,186(s4)
    8020131c:	00148513          	addi	a0,s1,1
    80201320:	45b1                	li	a1,12
    80201322:	2ab4ff63          	bgeu	s1,a1,802015e0 <.LBB14_56>
    80201326:	419d0633          	sub	a2,s10,s9
    8020132a:	24a61b63          	bne	a2,a0,80201580 <.LBB14_51>
    8020132e:	017c0533          	add	a0,s8,s7
    80201332:	0c050593          	addi	a1,a0,192
    80201336:	0c0a0513          	addi	a0,s4,192
    8020133a:	060e                	slli	a2,a2,0x3
    8020133c:	0000b097          	auipc	ra,0xb
    80201340:	2bc080e7          	jalr	700(ra) # 8020c5f8 <memcpy>
    80201344:	4501                	li	a0,0
    80201346:	00351593          	slli	a1,a0,0x3
    8020134a:	95d2                	add	a1,a1,s4
    8020134c:	61ec                	ld	a1,192(a1)
    8020134e:	00953633          	sltu	a2,a0,s1
    80201352:	0aa59c23          	sh	a0,184(a1)
    80201356:	9532                	add	a0,a0,a2
    80201358:	00a4b6b3          	sltu	a3,s1,a0
    8020135c:	0016c693          	xori	a3,a3,1
    80201360:	8e75                	and	a2,a2,a3
    80201362:	0145b023          	sd	s4,0(a1)
    80201366:	f265                	bnez	a2,80201346 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x346>
    80201368:	e5b43823          	sd	s11,-432(s0)
    8020136c:	8b52                	mv	s6,s4
    8020136e:	00091363          	bnez	s2,80201374 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x374>
    80201372:	8b62                	mv	s6,s8
    80201374:	0bab5d83          	lhu	s11,186(s6)
    80201378:	001d8913          	addi	s2,s11,1
    8020137c:	008b0493          	addi	s1,s6,8
    80201380:	00198d13          	addi	s10,s3,1
    80201384:	00399c93          	slli	s9,s3,0x3
    80201388:	003d1b93          	slli	s7,s10,0x3
    8020138c:	e4843603          	ld	a2,-440(s0)
    80201390:	01adf563          	bgeu	s11,s10,8020139a <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x39a>
    80201394:	060b0a93          	addi	s5,s6,96
    80201398:	a81d                	j	802013ce <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x3ce>
    8020139a:	019485b3          	add	a1,s1,s9
    8020139e:	01748533          	add	a0,s1,s7
    802013a2:	00c9c633          	xor	a2,s3,a2
    802013a6:	964a                	add	a2,a2,s2
    802013a8:	060e                	slli	a2,a2,0x3
    802013aa:	e4c43023          	sd	a2,-448(s0)
    802013ae:	0000b097          	auipc	ra,0xb
    802013b2:	260080e7          	jalr	608(ra) # 8020c60e <memmove>
    802013b6:	060b0a93          	addi	s5,s6,96
    802013ba:	019a85b3          	add	a1,s5,s9
    802013be:	017a8533          	add	a0,s5,s7
    802013c2:	e4043603          	ld	a2,-448(s0)
    802013c6:	0000b097          	auipc	ra,0xb
    802013ca:	248080e7          	jalr	584(ra) # 8020c60e <memmove>
    802013ce:	e6043583          	ld	a1,-416(s0)
    802013d2:	e5843603          	ld	a2,-424(s0)
    802013d6:	01948533          	add	a0,s1,s9
    802013da:	e110                	sd	a2,0(a0)
    802013dc:	019a8533          	add	a0,s5,s9
    802013e0:	e10c                	sd	a1,0(a0)
    802013e2:	002d8493          	addi	s1,s11,2
    802013e6:	00298513          	addi	a0,s3,2
    802013ea:	0c0b0a93          	addi	s5,s6,192
    802013ee:	02957063          	bgeu	a0,s1,8020140e <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x40e>
    802013f2:	017a85b3          	add	a1,s5,s7
    802013f6:	050e                	slli	a0,a0,0x3
    802013f8:	9556                	add	a0,a0,s5
    802013fa:	e4843603          	ld	a2,-440(s0)
    802013fe:	00cd4633          	xor	a2,s10,a2
    80201402:	9626                	add	a2,a2,s1
    80201404:	060e                	slli	a2,a2,0x3
    80201406:	0000b097          	auipc	ra,0xb
    8020140a:	208080e7          	jalr	520(ra) # 8020c60e <memmove>
    8020140e:	017a8533          	add	a0,s5,s7
    80201412:	e6843583          	ld	a1,-408(s0)
    80201416:	e10c                	sd	a1,0(a0)
    80201418:	0b2b1d23          	sh	s2,186(s6)
    8020141c:	e5043603          	ld	a2,-432(s0)
    80201420:	de9d76e3          	bgeu	s10,s1,8020120c <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x20c>
    80201424:	019b0533          	add	a0,s6,s9
    80201428:	0c850513          	addi	a0,a0,200
    8020142c:	610c                	ld	a1,0(a0)
    8020142e:	0985                	addi	s3,s3,1
    80201430:	0165b023          	sd	s6,0(a1)
    80201434:	0b359c23          	sh	s3,184(a1)
    80201438:	0521                	addi	a0,a0,8
    8020143a:	ff3919e3          	bne	s2,s3,8020142c <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x42c>
    8020143e:	b3f9                	j	8020120c <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x20c>
    80201440:	4501                	li	a0,0
    80201442:	8666                	mv	a2,s9
    80201444:	e7843703          	ld	a4,-392(s0)
    80201448:	e7043783          	ld	a5,-400(s0)
    8020144c:	4585                	li	a1,1
    8020144e:	e3843683          	ld	a3,-456(s0)
    80201452:	e28c                	sd	a1,0(a3)
    80201454:	85b6                	mv	a1,a3
    80201456:	e690                	sd	a2,8(a3)
    80201458:	0126b823          	sd	s2,16(a3)
    8020145c:	ee98                	sd	a4,24(a3)
    8020145e:	f29c                	sd	a5,32(a3)
    80201460:	f688                	sd	a0,40(a3)
    80201462:	0346b823          	sd	s4,48(a3)
    80201466:	a8dd                	j	8020155c <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x55c>
    80201468:	00148613          	addi	a2,s1,1
    8020146c:	008c0513          	addi	a0,s8,8
    80201470:	001b8a13          	addi	s4,s7,1
    80201474:	003b9c93          	slli	s9,s7,0x3
    80201478:	003a1d13          	slli	s10,s4,0x3
    8020147c:	089bf563          	bgeu	s7,s1,80201506 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x506>
    80201480:	01950933          	add	s2,a0,s9
    80201484:	956a                	add	a0,a0,s10
    80201486:	e4843983          	ld	s3,-440(s0)
    8020148a:	013bc5b3          	xor	a1,s7,s3
    8020148e:	95b2                	add	a1,a1,a2
    80201490:	00359b13          	slli	s6,a1,0x3
    80201494:	85ca                	mv	a1,s2
    80201496:	e6c43c23          	sd	a2,-392(s0)
    8020149a:	865a                	mv	a2,s6
    8020149c:	0000b097          	auipc	ra,0xb
    802014a0:	172080e7          	jalr	370(ra) # 8020c60e <memmove>
    802014a4:	060c0513          	addi	a0,s8,96
    802014a8:	01950ab3          	add	s5,a0,s9
    802014ac:	956a                	add	a0,a0,s10
    802014ae:	85d6                	mv	a1,s5
    802014b0:	865a                	mv	a2,s6
    802014b2:	e6843b03          	ld	s6,-408(s0)
    802014b6:	0000b097          	auipc	ra,0xb
    802014ba:	158080e7          	jalr	344(ra) # 8020c60e <memmove>
    802014be:	e5843503          	ld	a0,-424(s0)
    802014c2:	00a93023          	sd	a0,0(s2)
    802014c6:	e6043503          	ld	a0,-416(s0)
    802014ca:	00aab023          	sd	a0,0(s5)
    802014ce:	00248913          	addi	s2,s1,2
    802014d2:	0c0c0493          	addi	s1,s8,192
    802014d6:	01a485b3          	add	a1,s1,s10
    802014da:	009c8533          	add	a0,s9,s1
    802014de:	0541                	addi	a0,a0,16
    802014e0:	013a4633          	xor	a2,s4,s3
    802014e4:	964a                	add	a2,a2,s2
    802014e6:	060e                	slli	a2,a2,0x3
    802014e8:	0000b097          	auipc	ra,0xb
    802014ec:	126080e7          	jalr	294(ra) # 8020c60e <memmove>
    802014f0:	e7843603          	ld	a2,-392(s0)
    802014f4:	01a48533          	add	a0,s1,s10
    802014f8:	01653023          	sd	s6,0(a0)
    802014fc:	0acc1d23          	sh	a2,186(s8)
    80201500:	032a6563          	bltu	s4,s2,8020152a <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x52a>
    80201504:	a091                	j	80201548 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x548>
    80201506:	019c05b3          	add	a1,s8,s9
    8020150a:	9566                	add	a0,a0,s9
    8020150c:	e114                	sd	a3,0(a0)
    8020150e:	0705b023          	sd	a6,96(a1)
    80201512:	00248913          	addi	s2,s1,2
    80201516:	0c0c0493          	addi	s1,s8,192
    8020151a:	01a48533          	add	a0,s1,s10
    8020151e:	01653023          	sd	s6,0(a0)
    80201522:	0acc1d23          	sh	a2,186(s8)
    80201526:	032a7163          	bgeu	s4,s2,80201548 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x548>
    8020152a:	019c0533          	add	a0,s8,s9
    8020152e:	0c850513          	addi	a0,a0,200
    80201532:	610c                	ld	a1,0(a0)
    80201534:	001a0613          	addi	a2,s4,1
    80201538:	0185b023          	sd	s8,0(a1)
    8020153c:	0b459c23          	sh	s4,184(a1)
    80201540:	0521                	addi	a0,a0,8
    80201542:	8a32                	mv	s4,a2
    80201544:	fec917e3          	bne	s2,a2,80201532 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE+0x532>
    80201548:	e3843583          	ld	a1,-456(s0)
    8020154c:	0005b023          	sd	zero,0(a1)
    80201550:	01b5b423          	sd	s11,8(a1)
    80201554:	0185b823          	sd	s8,16(a1)
    80201558:	0175bc23          	sd	s7,24(a1)
    8020155c:	e3043503          	ld	a0,-464(s0)
    80201560:	fd88                	sd	a0,56(a1)
    80201562:	7db6                	ld	s11,360(sp)
    80201564:	7d56                	ld	s10,368(sp)
    80201566:	7cf6                	ld	s9,376(sp)
    80201568:	6c1a                	ld	s8,384(sp)
    8020156a:	6bba                	ld	s7,392(sp)
    8020156c:	6b5a                	ld	s6,400(sp)
    8020156e:	6afa                	ld	s5,408(sp)
    80201570:	7a1a                	ld	s4,416(sp)
    80201572:	79ba                	ld	s3,424(sp)
    80201574:	795a                	ld	s2,432(sp)
    80201576:	74fa                	ld	s1,440(sp)
    80201578:	641e                	ld	s0,448(sp)
    8020157a:	60be                	ld	ra,456(sp)
    8020157c:	6179                	addi	sp,sp,464
    8020157e:	8082                	ret

0000000080201580 <.LBB14_51>:
    80201580:	0000c517          	auipc	a0,0xc
    80201584:	c7050513          	addi	a0,a0,-912 # 8020d1f0 <.Lanon.e40d34b2198299e64180d29ee7524e0e.12>

0000000080201588 <.LBB14_52>:
    80201588:	0000c617          	auipc	a2,0xc
    8020158c:	c9060613          	addi	a2,a2,-880 # 8020d218 <.Lanon.e40d34b2198299e64180d29ee7524e0e.13>
    80201590:	02800593          	li	a1,40
    80201594:	00008097          	auipc	ra,0x8
    80201598:	26e080e7          	jalr	622(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000008020159e <.LBB14_53>:
    8020159e:	0000c617          	auipc	a2,0xc
    802015a2:	c9260613          	addi	a2,a2,-878 # 8020d230 <.Lanon.e40d34b2198299e64180d29ee7524e0e.14>
    802015a6:	45ad                	li	a1,11
    802015a8:	0000a097          	auipc	ra,0xa
    802015ac:	d8a080e7          	jalr	-630(ra) # 8020b332 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
	...

00000000802015b2 <.LBB14_54>:
    802015b2:	0000c517          	auipc	a0,0xc
    802015b6:	cae50513          	addi	a0,a0,-850 # 8020d260 <.Lanon.e40d34b2198299e64180d29ee7524e0e.16>

00000000802015ba <.LBB14_55>:
    802015ba:	0000c617          	auipc	a2,0xc
    802015be:	cde60613          	addi	a2,a2,-802 # 8020d298 <.Lanon.e40d34b2198299e64180d29ee7524e0e.17>
    802015c2:	03500593          	li	a1,53
    802015c6:	00008097          	auipc	ra,0x8
    802015ca:	23c080e7          	jalr	572(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    802015ce:	0000                	unimp
    802015d0:	12000513          	li	a0,288
    802015d4:	45a1                	li	a1,8
    802015d6:	00008097          	auipc	ra,0x8
    802015da:	e8a080e7          	jalr	-374(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

00000000802015e0 <.LBB14_56>:
    802015e0:	0000c617          	auipc	a2,0xc
    802015e4:	c6860613          	addi	a2,a2,-920 # 8020d248 <.Lanon.e40d34b2198299e64180d29ee7524e0e.15>
    802015e8:	45b1                	li	a1,12
    802015ea:	0000a097          	auipc	ra,0xa
    802015ee:	d48080e7          	jalr	-696(ra) # 8020b332 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
    802015f2:	0000                	unimp
    802015f4:	0c000513          	li	a0,192
    802015f8:	45a1                	li	a1,8
    802015fa:	00008097          	auipc	ra,0x8
    802015fe:	e66080e7          	jalr	-410(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

0000000080201604 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5a497c2b145766f1E>:
    80201604:	715d                	addi	sp,sp,-80
    80201606:	e486                	sd	ra,72(sp)
    80201608:	e0a2                	sd	s0,64(sp)
    8020160a:	fc26                	sd	s1,56(sp)
    8020160c:	f84a                	sd	s2,48(sp)
    8020160e:	f44e                	sd	s3,40(sp)
    80201610:	f052                	sd	s4,32(sp)
    80201612:	0880                	addi	s0,sp,80
    80201614:	6104                	ld	s1,0(a0)
    80201616:	852e                	mv	a0,a1
    80201618:	01048913          	addi	s2,s1,16
    8020161c:	02848993          	addi	s3,s1,40
    80201620:	02948a13          	addi	s4,s1,41

0000000080201624 <.LBB0_1>:
    80201624:	0000c597          	auipc	a1,0xc
    80201628:	0ac58593          	addi	a1,a1,172 # 8020d6d0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.71>
    8020162c:	461d                	li	a2,7
    8020162e:	00009097          	auipc	ra,0x9
    80201632:	3fa080e7          	jalr	1018(ra) # 8020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>
    80201636:	fab43c23          	sd	a1,-72(s0)
    8020163a:	faa43823          	sd	a0,-80(s0)
    8020163e:	fc943423          	sd	s1,-56(s0)

0000000080201642 <.LBB0_2>:
    80201642:	0000c597          	auipc	a1,0xc
    80201646:	09558593          	addi	a1,a1,149 # 8020d6d7 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.72>

000000008020164a <.LBB0_3>:
    8020164a:	0000c717          	auipc	a4,0xc
    8020164e:	09670713          	addi	a4,a4,150 # 8020d6e0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.73>
    80201652:	fb040493          	addi	s1,s0,-80
    80201656:	fc840693          	addi	a3,s0,-56
    8020165a:	4625                	li	a2,9
    8020165c:	8526                	mv	a0,s1
    8020165e:	00008097          	auipc	ra,0x8
    80201662:	37c080e7          	jalr	892(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80201666:	fd243423          	sd	s2,-56(s0)

000000008020166a <.LBB0_4>:
    8020166a:	0000c597          	auipc	a1,0xc
    8020166e:	09658593          	addi	a1,a1,150 # 8020d700 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.74>

0000000080201672 <.LBB0_5>:
    80201672:	0000c717          	auipc	a4,0xc
    80201676:	09e70713          	addi	a4,a4,158 # 8020d710 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.75>
    8020167a:	fc840693          	addi	a3,s0,-56
    8020167e:	462d                	li	a2,11
    80201680:	8526                	mv	a0,s1
    80201682:	00008097          	auipc	ra,0x8
    80201686:	358080e7          	jalr	856(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020168a:	fd343423          	sd	s3,-56(s0)

000000008020168e <.LBB0_6>:
    8020168e:	0000c597          	auipc	a1,0xc
    80201692:	0ca58593          	addi	a1,a1,202 # 8020d758 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.75+0x48>

0000000080201696 <.LBB0_7>:
    80201696:	0000c717          	auipc	a4,0xc
    8020169a:	0f270713          	addi	a4,a4,242 # 8020d788 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.77>
    8020169e:	fc840693          	addi	a3,s0,-56
    802016a2:	4621                	li	a2,8
    802016a4:	8526                	mv	a0,s1
    802016a6:	00008097          	auipc	ra,0x8
    802016aa:	334080e7          	jalr	820(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802016ae:	fd443423          	sd	s4,-56(s0)

00000000802016b2 <.LBB0_8>:
    802016b2:	0000c597          	auipc	a1,0xc
    802016b6:	0ce58593          	addi	a1,a1,206 # 8020d780 <anon.93f8f94179db6f373a864e59d65dab14.17.llvm.9790629543225328465+0x10>

00000000802016ba <.LBB0_9>:
    802016ba:	0000c717          	auipc	a4,0xc
    802016be:	0ee70713          	addi	a4,a4,238 # 8020d7a8 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.79>
    802016c2:	fc840693          	addi	a3,s0,-56
    802016c6:	4621                	li	a2,8
    802016c8:	8526                	mv	a0,s1
    802016ca:	00008097          	auipc	ra,0x8
    802016ce:	310080e7          	jalr	784(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802016d2:	8526                	mv	a0,s1
    802016d4:	00008097          	auipc	ra,0x8
    802016d8:	462080e7          	jalr	1122(ra) # 80209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>
    802016dc:	7a02                	ld	s4,32(sp)
    802016de:	79a2                	ld	s3,40(sp)
    802016e0:	7942                	ld	s2,48(sp)
    802016e2:	74e2                	ld	s1,56(sp)
    802016e4:	6406                	ld	s0,64(sp)
    802016e6:	60a6                	ld	ra,72(sp)
    802016e8:	6161                	addi	sp,sp,80
    802016ea:	8082                	ret

00000000802016ec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6becf7a6f5f977d6E>:
    802016ec:	7179                	addi	sp,sp,-48
    802016ee:	f406                	sd	ra,40(sp)
    802016f0:	f022                	sd	s0,32(sp)
    802016f2:	ec26                	sd	s1,24(sp)
    802016f4:	e84a                	sd	s2,16(sp)
    802016f6:	e44e                	sd	s3,8(sp)
    802016f8:	1800                	addi	s0,sp,48
    802016fa:	6108                	ld	a0,0(a0)
    802016fc:	00054983          	lbu	s3,0(a0)
    80201700:	0029f513          	andi	a0,s3,2
    80201704:	892e                	mv	s2,a1
    80201706:	ed05                	bnez	a0,8020173e <.LBB1_24>
    80201708:	0049f513          	andi	a0,s3,4
    8020170c:	e13d                	bnez	a0,80201772 <.LBB1_26>
    8020170e:	0089f513          	andi	a0,s3,8
    80201712:	e959                	bnez	a0,802017a8 <.LBB1_28>
    80201714:	0109f513          	andi	a0,s3,16
    80201718:	e179                	bnez	a0,802017de <.LBB1_30>
    8020171a:	0e19f513          	andi	a0,s3,225
    8020171e:	fca40ba3          	sb	a0,-41(s0)
    80201722:	e975                	bnez	a0,80201816 <.LBB1_32>

0000000080201724 <.LBB1_23>:
    80201724:	0000c597          	auipc	a1,0xc
    80201728:	0bc58593          	addi	a1,a1,188 # 8020d7e0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.88>
    8020172c:	461d                	li	a2,7
    8020172e:	854a                	mv	a0,s2
    80201730:	00009097          	auipc	ra,0x9
    80201734:	2a6080e7          	jalr	678(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    80201738:	10051263          	bnez	a0,8020183c <.LBB1_32+0x26>
    8020173c:	a211                	j	80201840 <.LBB1_32+0x2a>

000000008020173e <.LBB1_24>:
    8020173e:	0000c597          	auipc	a1,0xc
    80201742:	09c58593          	addi	a1,a1,156 # 8020d7da <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.83>
    80201746:	4605                	li	a2,1
    80201748:	4485                	li	s1,1
    8020174a:	854a                	mv	a0,s2
    8020174c:	00009097          	auipc	ra,0x9
    80201750:	28a080e7          	jalr	650(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    80201754:	e57d                	bnez	a0,80201842 <.LBB1_32+0x2c>
    80201756:	0049f513          	andi	a0,s3,4
    8020175a:	c905                	beqz	a0,8020178a <.LBB1_26+0x18>

000000008020175c <.LBB1_25>:
    8020175c:	0000c597          	auipc	a1,0xc
    80201760:	07b58593          	addi	a1,a1,123 # 8020d7d7 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.82>
    80201764:	460d                	li	a2,3
    80201766:	854a                	mv	a0,s2
    80201768:	00009097          	auipc	ra,0x9
    8020176c:	26e080e7          	jalr	622(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    80201770:	e969                	bnez	a0,80201842 <.LBB1_32+0x2c>

0000000080201772 <.LBB1_26>:
    80201772:	0000c597          	auipc	a1,0xc
    80201776:	06958593          	addi	a1,a1,105 # 8020d7db <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.84>
    8020177a:	4605                	li	a2,1
    8020177c:	4485                	li	s1,1
    8020177e:	854a                	mv	a0,s2
    80201780:	00009097          	auipc	ra,0x9
    80201784:	256080e7          	jalr	598(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    80201788:	ed4d                	bnez	a0,80201842 <.LBB1_32+0x2c>
    8020178a:	0089f513          	andi	a0,s3,8
    8020178e:	c90d                	beqz	a0,802017c0 <.LBB1_28+0x18>

0000000080201790 <.LBB1_27>:
    80201790:	0000c597          	auipc	a1,0xc
    80201794:	04758593          	addi	a1,a1,71 # 8020d7d7 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.82>
    80201798:	460d                	li	a2,3
    8020179a:	854a                	mv	a0,s2
    8020179c:	00009097          	auipc	ra,0x9
    802017a0:	23a080e7          	jalr	570(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    802017a4:	4485                	li	s1,1
    802017a6:	ed51                	bnez	a0,80201842 <.LBB1_32+0x2c>

00000000802017a8 <.LBB1_28>:
    802017a8:	0000c597          	auipc	a1,0xc
    802017ac:	03458593          	addi	a1,a1,52 # 8020d7dc <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.85>
    802017b0:	4605                	li	a2,1
    802017b2:	4485                	li	s1,1
    802017b4:	854a                	mv	a0,s2
    802017b6:	00009097          	auipc	ra,0x9
    802017ba:	220080e7          	jalr	544(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    802017be:	e151                	bnez	a0,80201842 <.LBB1_32+0x2c>
    802017c0:	0109f513          	andi	a0,s3,16
    802017c4:	c90d                	beqz	a0,802017f6 <.LBB1_30+0x18>

00000000802017c6 <.LBB1_29>:
    802017c6:	0000c597          	auipc	a1,0xc
    802017ca:	01158593          	addi	a1,a1,17 # 8020d7d7 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.82>
    802017ce:	460d                	li	a2,3
    802017d0:	854a                	mv	a0,s2
    802017d2:	00009097          	auipc	ra,0x9
    802017d6:	204080e7          	jalr	516(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    802017da:	4485                	li	s1,1
    802017dc:	e13d                	bnez	a0,80201842 <.LBB1_32+0x2c>

00000000802017de <.LBB1_30>:
    802017de:	0000c597          	auipc	a1,0xc
    802017e2:	fff58593          	addi	a1,a1,-1 # 8020d7dd <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.86>
    802017e6:	4605                	li	a2,1
    802017e8:	4485                	li	s1,1
    802017ea:	854a                	mv	a0,s2
    802017ec:	00009097          	auipc	ra,0x9
    802017f0:	1ea080e7          	jalr	490(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    802017f4:	e539                	bnez	a0,80201842 <.LBB1_32+0x2c>
    802017f6:	0e19f513          	andi	a0,s3,225
    802017fa:	fca40ba3          	sb	a0,-41(s0)
    802017fe:	c129                	beqz	a0,80201840 <.LBB1_32+0x2a>

0000000080201800 <.LBB1_31>:
    80201800:	0000c597          	auipc	a1,0xc
    80201804:	fd758593          	addi	a1,a1,-41 # 8020d7d7 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.82>
    80201808:	460d                	li	a2,3
    8020180a:	854a                	mv	a0,s2
    8020180c:	00009097          	auipc	ra,0x9
    80201810:	1ca080e7          	jalr	458(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    80201814:	e505                	bnez	a0,8020183c <.LBB1_32+0x26>

0000000080201816 <.LBB1_32>:
    80201816:	0000c597          	auipc	a1,0xc
    8020181a:	fc858593          	addi	a1,a1,-56 # 8020d7de <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.87>
    8020181e:	4609                	li	a2,2
    80201820:	854a                	mv	a0,s2
    80201822:	00009097          	auipc	ra,0x9
    80201826:	1b4080e7          	jalr	436(ra) # 8020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>
    8020182a:	e909                	bnez	a0,8020183c <.LBB1_32+0x26>
    8020182c:	fd740513          	addi	a0,s0,-41
    80201830:	85ca                	mv	a1,s2
    80201832:	0000a097          	auipc	ra,0xa
    80201836:	0ee080e7          	jalr	238(ra) # 8020b920 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h4bd6f5427c4ae7cfE>
    8020183a:	c119                	beqz	a0,80201840 <.LBB1_32+0x2a>
    8020183c:	4485                	li	s1,1
    8020183e:	a011                	j	80201842 <.LBB1_32+0x2c>
    80201840:	4481                	li	s1,0
    80201842:	8526                	mv	a0,s1
    80201844:	69a2                	ld	s3,8(sp)
    80201846:	6942                	ld	s2,16(sp)
    80201848:	64e2                	ld	s1,24(sp)
    8020184a:	7402                	ld	s0,32(sp)
    8020184c:	70a2                	ld	ra,40(sp)
    8020184e:	6145                	addi	sp,sp,48
    80201850:	8082                	ret

0000000080201852 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbda8d14dc65518ffE>:
    80201852:	7179                	addi	sp,sp,-48
    80201854:	f406                	sd	ra,40(sp)
    80201856:	f022                	sd	s0,32(sp)
    80201858:	ec26                	sd	s1,24(sp)
    8020185a:	1800                	addi	s0,sp,48
    8020185c:	6108                	ld	a0,0(a0)
    8020185e:	00054503          	lbu	a0,0(a0)
    80201862:	4605                	li	a2,1
    80201864:	00c51a63          	bne	a0,a2,80201878 <.LBB2_5>

0000000080201868 <.LBB2_4>:
    80201868:	0000c617          	auipc	a2,0xc
    8020186c:	f6060613          	addi	a2,a2,-160 # 8020d7c8 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.80>
    80201870:	fd040493          	addi	s1,s0,-48
    80201874:	4699                	li	a3,6
    80201876:	a801                	j	80201886 <.LBB2_5+0xe>

0000000080201878 <.LBB2_5>:
    80201878:	0000c617          	auipc	a2,0xc
    8020187c:	f5660613          	addi	a2,a2,-170 # 8020d7ce <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.81>
    80201880:	fd040493          	addi	s1,s0,-48
    80201884:	46a5                	li	a3,9
    80201886:	8526                	mv	a0,s1
    80201888:	00009097          	auipc	ra,0x9
    8020188c:	1bc080e7          	jalr	444(ra) # 8020aa44 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    80201890:	8526                	mv	a0,s1
    80201892:	00008097          	auipc	ra,0x8
    80201896:	3ea080e7          	jalr	1002(ra) # 80209c7c <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    8020189a:	64e2                	ld	s1,24(sp)
    8020189c:	7402                	ld	s0,32(sp)
    8020189e:	70a2                	ld	ra,40(sp)
    802018a0:	6145                	addi	sp,sp,48
    802018a2:	8082                	ret

00000000802018a4 <_ZN4core3ptr141drop_in_place$LT$$RF$alloc..collections..btree..map..BTreeMap$LT$os..mm..address..VirtPageNum$C$os..mm..frame_allocator..FrameTracker$GT$$GT$17h312b2d3530aac30eE>:
    802018a4:	1141                	addi	sp,sp,-16
    802018a6:	e406                	sd	ra,8(sp)
    802018a8:	e022                	sd	s0,0(sp)
    802018aa:	0800                	addi	s0,sp,16
    802018ac:	6402                	ld	s0,0(sp)
    802018ae:	60a2                	ld	ra,8(sp)
    802018b0:	0141                	addi	sp,sp,16
    802018b2:	8082                	ret

00000000802018b4 <_ZN2os2mm10memory_set9MemorySet10new_kernel17h346be50c08b3a770E>:
    802018b4:	716d                	addi	sp,sp,-272
    802018b6:	e606                	sd	ra,264(sp)
    802018b8:	e222                	sd	s0,256(sp)
    802018ba:	fda6                	sd	s1,248(sp)
    802018bc:	f9ca                	sd	s2,240(sp)
    802018be:	f5ce                	sd	s3,232(sp)
    802018c0:	f1d2                	sd	s4,224(sp)
    802018c2:	edd6                	sd	s5,216(sp)
    802018c4:	e9da                	sd	s6,208(sp)
    802018c6:	e5de                	sd	s7,200(sp)
    802018c8:	e1e2                	sd	s8,192(sp)
    802018ca:	fd66                	sd	s9,184(sp)
    802018cc:	f96a                	sd	s10,176(sp)
    802018ce:	f56e                	sd	s11,168(sp)
    802018d0:	0a00                	addi	s0,sp,272
    802018d2:	8aaa                	mv	s5,a0
    802018d4:	00002097          	auipc	ra,0x2
    802018d8:	690080e7          	jalr	1680(ra) # 80203f64 <_ZN2os2mm15frame_allocator11frame_alloc17ha7fa5a63181a930bE>
    802018dc:	38050fe3          	beqz	a0,8020247a <.LBB9_121>
    802018e0:	84ae                	mv	s1,a1
    802018e2:	4521                	li	a0,8
    802018e4:	45a1                	li	a1,8
    802018e6:	4921                	li	s2,8
    802018e8:	00004097          	auipc	ra,0x4
    802018ec:	802080e7          	jalr	-2046(ra) # 802050ea <__rust_alloc>
    802018f0:	3a0504e3          	beqz	a0,80202498 <.LBB9_122+0x16>
    802018f4:	e104                	sd	s1,0(a0)
    802018f6:	009ab023          	sd	s1,0(s5)
    802018fa:	00aab423          	sd	a0,8(s5)
    802018fe:	4505                	li	a0,1
    80201900:	00aab823          	sd	a0,16(s5)
    80201904:	00aabc23          	sd	a0,24(s5)
    80201908:	032ab023          	sd	s2,32(s5)
    8020190c:	020ab423          	sd	zero,40(s5)
    80201910:	020ab823          	sd	zero,48(s5)

0000000080201914 <.LBB9_78>:
    80201914:	fffff597          	auipc	a1,0xfffff
    80201918:	6ec58593          	addi	a1,a1,1772 # 80201000 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE>
    8020191c:	6605                	lui	a2,0x1
    8020191e:	367d                	addiw	a2,a2,-1
    80201920:	8e6d                	and	a2,a2,a1
    80201922:	f4c43823          	sd	a2,-176(s0)
    80201926:	380610e3          	bnez	a2,802024a6 <.LBB9_122+0x24>
    8020192a:	00c5d613          	srli	a2,a1,0xc
    8020192e:	1552                	slli	a0,a0,0x34
    80201930:	fff50593          	addi	a1,a0,-1
    80201934:	46a9                	li	a3,10
    80201936:	8556                	mv	a0,s5
    80201938:	00001097          	auipc	ra,0x1
    8020193c:	24a080e7          	jalr	586(ra) # 80202b82 <_ZN2os2mm10page_table9PageTable3map17h2562fa28cb2e5ceeE>

0000000080201940 <.LBB9_79>:
    80201940:	ffffeb17          	auipc	s6,0xffffe
    80201944:	6c0b0b13          	addi	s6,s6,1728 # 80200000 <_start>
    80201948:	f5643823          	sd	s6,-176(s0)

000000008020194c <.LBB9_80>:
    8020194c:	0000bd17          	auipc	s10,0xb
    80201950:	6b4d0d13          	addi	s10,s10,1716 # 8020d000 <etext>
    80201954:	f5a43c23          	sd	s10,-168(s0)
    80201958:	f5040a13          	addi	s4,s0,-176
    8020195c:	f3443023          	sd	s4,-224(s0)

0000000080201960 <.LBB9_81>:
    80201960:	0000a497          	auipc	s1,0xa
    80201964:	25048493          	addi	s1,s1,592 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80201968:	f2943423          	sd	s1,-216(s0)
    8020196c:	f5840c93          	addi	s9,s0,-168
    80201970:	f3943823          	sd	s9,-208(s0)
    80201974:	f2943c23          	sd	s1,-200(s0)
    80201978:	f6840513          	addi	a0,s0,-152
    8020197c:	f6a43023          	sd	a0,-160(s0)

0000000080201980 <.LBB9_82>:
    80201980:	0000c517          	auipc	a0,0xc
    80201984:	96850513          	addi	a0,a0,-1688 # 8020d2e8 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.6>
    80201988:	f6a43423          	sd	a0,-152(s0)
    8020198c:	498d                	li	s3,3
    8020198e:	f7343823          	sd	s3,-144(s0)

0000000080201992 <.LBB9_83>:
    80201992:	0000cc17          	auipc	s8,0xc
    80201996:	986c0c13          	addi	s8,s8,-1658 # 8020d318 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.7>
    8020199a:	f7843c23          	sd	s8,-136(s0)
    8020199e:	4b89                	li	s7,2
    802019a0:	f9743023          	sd	s7,-128(s0)
    802019a4:	f2040d93          	addi	s11,s0,-224
    802019a8:	f9b43423          	sd	s11,-120(s0)
    802019ac:	f9743823          	sd	s7,-112(s0)

00000000802019b0 <.LBB9_84>:
    802019b0:	0000c597          	auipc	a1,0xc
    802019b4:	28058593          	addi	a1,a1,640 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    802019b8:	f6040513          	addi	a0,s0,-160
    802019bc:	f6840913          	addi	s2,s0,-152
    802019c0:	864a                	mv	a2,s2
    802019c2:	00009097          	auipc	ra,0x9
    802019c6:	918080e7          	jalr	-1768(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    802019ca:	260514e3          	bnez	a0,80202432 <.LBB9_117>

00000000802019ce <.LBB9_85>:
    802019ce:	0000b517          	auipc	a0,0xb
    802019d2:	63250513          	addi	a0,a0,1586 # 8020d000 <etext>
    802019d6:	eea43823          	sd	a0,-272(s0)
    802019da:	f4a43823          	sd	a0,-176(s0)

00000000802019de <.LBB9_86>:
    802019de:	00010517          	auipc	a0,0x10
    802019e2:	62250513          	addi	a0,a0,1570 # 80212000 <erodata>
    802019e6:	eea43c23          	sd	a0,-264(s0)
    802019ea:	f4a43c23          	sd	a0,-168(s0)
    802019ee:	f3443023          	sd	s4,-224(s0)
    802019f2:	f2943423          	sd	s1,-216(s0)
    802019f6:	f3943823          	sd	s9,-208(s0)
    802019fa:	f2943c23          	sd	s1,-200(s0)
    802019fe:	f7243023          	sd	s2,-160(s0)

0000000080201a02 <.LBB9_87>:
    80201a02:	0000c517          	auipc	a0,0xc
    80201a06:	99650513          	addi	a0,a0,-1642 # 8020d398 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.9>
    80201a0a:	f6a43423          	sd	a0,-152(s0)
    80201a0e:	f7343823          	sd	s3,-144(s0)
    80201a12:	f7843c23          	sd	s8,-136(s0)
    80201a16:	f9743023          	sd	s7,-128(s0)
    80201a1a:	f9b43423          	sd	s11,-120(s0)
    80201a1e:	f9743823          	sd	s7,-112(s0)

0000000080201a22 <.LBB9_88>:
    80201a22:	0000c597          	auipc	a1,0xc
    80201a26:	20e58593          	addi	a1,a1,526 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80201a2a:	f6040513          	addi	a0,s0,-160
    80201a2e:	f6840913          	addi	s2,s0,-152
    80201a32:	864a                	mv	a2,s2
    80201a34:	00009097          	auipc	ra,0x9
    80201a38:	8a6080e7          	jalr	-1882(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80201a3c:	1e051be3          	bnez	a0,80202432 <.LBB9_117>

0000000080201a40 <.LBB9_89>:
    80201a40:	00010517          	auipc	a0,0x10
    80201a44:	5c050513          	addi	a0,a0,1472 # 80212000 <erodata>
    80201a48:	f0a43023          	sd	a0,-256(s0)
    80201a4c:	f4a43823          	sd	a0,-176(s0)

0000000080201a50 <.LBB9_90>:
    80201a50:	00011517          	auipc	a0,0x11
    80201a54:	5b050513          	addi	a0,a0,1456 # 80213000 <edata>
    80201a58:	f0a43423          	sd	a0,-248(s0)
    80201a5c:	f4a43c23          	sd	a0,-168(s0)
    80201a60:	f3443023          	sd	s4,-224(s0)
    80201a64:	f2943423          	sd	s1,-216(s0)
    80201a68:	f3943823          	sd	s9,-208(s0)
    80201a6c:	f2943c23          	sd	s1,-200(s0)
    80201a70:	f7243023          	sd	s2,-160(s0)

0000000080201a74 <.LBB9_91>:
    80201a74:	0000c517          	auipc	a0,0xc
    80201a78:	95c50513          	addi	a0,a0,-1700 # 8020d3d0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.11>
    80201a7c:	f6a43423          	sd	a0,-152(s0)
    80201a80:	498d                	li	s3,3
    80201a82:	f7343823          	sd	s3,-144(s0)
    80201a86:	f7843c23          	sd	s8,-136(s0)
    80201a8a:	4b89                	li	s7,2
    80201a8c:	f9743023          	sd	s7,-128(s0)
    80201a90:	f9b43423          	sd	s11,-120(s0)
    80201a94:	f9743823          	sd	s7,-112(s0)

0000000080201a98 <.LBB9_92>:
    80201a98:	0000c597          	auipc	a1,0xc
    80201a9c:	19858593          	addi	a1,a1,408 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80201aa0:	f6040513          	addi	a0,s0,-160
    80201aa4:	f6840913          	addi	s2,s0,-152
    80201aa8:	864a                	mv	a2,s2
    80201aaa:	00009097          	auipc	ra,0x9
    80201aae:	830080e7          	jalr	-2000(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80201ab2:	180510e3          	bnez	a0,80202432 <.LBB9_117>

0000000080201ab6 <.LBB9_93>:
    80201ab6:	00011517          	auipc	a0,0x11
    80201aba:	54a50513          	addi	a0,a0,1354 # 80213000 <edata>
    80201abe:	f0a43823          	sd	a0,-240(s0)
    80201ac2:	f4a43823          	sd	a0,-176(s0)

0000000080201ac6 <.LBB9_94>:
    80201ac6:	00222517          	auipc	a0,0x222
    80201aca:	53a50513          	addi	a0,a0,1338 # 80424000 <ebss>
    80201ace:	f0a43c23          	sd	a0,-232(s0)
    80201ad2:	f4a43c23          	sd	a0,-168(s0)
    80201ad6:	f3443023          	sd	s4,-224(s0)
    80201ada:	f2943423          	sd	s1,-216(s0)
    80201ade:	f3943823          	sd	s9,-208(s0)
    80201ae2:	f2943c23          	sd	s1,-200(s0)
    80201ae6:	f7243023          	sd	s2,-160(s0)

0000000080201aea <.LBB9_95>:
    80201aea:	0000c517          	auipc	a0,0xc
    80201aee:	91e50513          	addi	a0,a0,-1762 # 8020d408 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.13>
    80201af2:	f6a43423          	sd	a0,-152(s0)
    80201af6:	f7343823          	sd	s3,-144(s0)
    80201afa:	f7843c23          	sd	s8,-136(s0)
    80201afe:	f9743023          	sd	s7,-128(s0)
    80201b02:	f9b43423          	sd	s11,-120(s0)
    80201b06:	f9743823          	sd	s7,-112(s0)

0000000080201b0a <.LBB9_96>:
    80201b0a:	0000c597          	auipc	a1,0xc
    80201b0e:	12658593          	addi	a1,a1,294 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80201b12:	f6040993          	addi	s3,s0,-160
    80201b16:	f6840493          	addi	s1,s0,-152
    80201b1a:	854e                	mv	a0,s3
    80201b1c:	8626                	mv	a2,s1
    80201b1e:	00008097          	auipc	ra,0x8
    80201b22:	7bc080e7          	jalr	1980(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80201b26:	100516e3          	bnez	a0,80202432 <.LBB9_117>
    80201b2a:	f2943023          	sd	s1,-224(s0)

0000000080201b2e <.LBB9_97>:
    80201b2e:	0000c517          	auipc	a0,0xc
    80201b32:	92250513          	addi	a0,a0,-1758 # 8020d450 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.15>
    80201b36:	f6a43423          	sd	a0,-152(s0)
    80201b3a:	4505                	li	a0,1
    80201b3c:	f6a43823          	sd	a0,-144(s0)
    80201b40:	f6043c23          	sd	zero,-136(s0)

0000000080201b44 <.LBB9_98>:
    80201b44:	0000cc17          	auipc	s8,0xc
    80201b48:	b8cc0c13          	addi	s8,s8,-1140 # 8020d6d0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.71>
    80201b4c:	f9843423          	sd	s8,-120(s0)
    80201b50:	f8043823          	sd	zero,-112(s0)

0000000080201b54 <.LBB9_99>:
    80201b54:	0000c597          	auipc	a1,0xc
    80201b58:	0dc58593          	addi	a1,a1,220 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80201b5c:	f2040913          	addi	s2,s0,-224
    80201b60:	f6840a13          	addi	s4,s0,-152
    80201b64:	854a                	mv	a0,s2
    80201b66:	8652                	mv	a2,s4
    80201b68:	00008097          	auipc	ra,0x8
    80201b6c:	772080e7          	jalr	1906(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80201b70:	0c0511e3          	bnez	a0,80202432 <.LBB9_117>
    80201b74:	00cb5b13          	srli	s6,s6,0xc
    80201b78:	f5643c23          	sd	s6,-168(s0)
    80201b7c:	6505                	lui	a0,0x1
    80201b7e:	fff5059b          	addiw	a1,a0,-1
    80201b82:	95ea                	add	a1,a1,s10
    80201b84:	81b1                	srli	a1,a1,0xc
    80201b86:	f6b43023          	sd	a1,-160(s0)
    80201b8a:	1765efe3          	bltu	a1,s6,80202508 <.LBB9_126+0xa>
    80201b8e:	f3643023          	sd	s6,-224(s0)
    80201b92:	f6843603          	ld	a2,-152(s0)
    80201b96:	f2b43423          	sd	a1,-216(s0)
    80201b9a:	f2043c23          	sd	zero,-200(s0)
    80201b9e:	f4043023          	sd	zero,-192(s0)
    80201ba2:	f2c43823          	sd	a2,-208(s0)
    80201ba6:	a005051b          	addiw	a0,a0,-1536
    80201baa:	f4a41423          	sh	a0,-184(s0)
    80201bae:	64bb1863          	bne	s6,a1,802021fe <.LBB9_114+0x3a>
    80201bb2:	f4843503          	ld	a0,-184(s0)
    80201bb6:	f4043583          	ld	a1,-192(s0)
    80201bba:	f3843603          	ld	a2,-200(s0)
    80201bbe:	f3043683          	ld	a3,-208(s0)
    80201bc2:	f8a43823          	sd	a0,-112(s0)
    80201bc6:	f8b43423          	sd	a1,-120(s0)
    80201bca:	f8c43023          	sd	a2,-128(s0)
    80201bce:	f6d43c23          	sd	a3,-136(s0)
    80201bd2:	f2843503          	ld	a0,-216(s0)
    80201bd6:	f2043603          	ld	a2,-224(s0)
    80201bda:	030ab583          	ld	a1,48(s5)
    80201bde:	028ab683          	ld	a3,40(s5)
    80201be2:	f6a43823          	sd	a0,-144(s0)
    80201be6:	020a8913          	addi	s2,s5,32
    80201bea:	f6c43423          	sd	a2,-152(s0)
    80201bee:	030a8d13          	addi	s10,s5,48
    80201bf2:	00d59a63          	bne	a1,a3,80201c06 <.LBB9_99+0xb2>
    80201bf6:	4605                	li	a2,1
    80201bf8:	854a                	mv	a0,s2
    80201bfa:	00002097          	auipc	ra,0x2
    80201bfe:	042080e7          	jalr	66(ra) # 80203c3c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E>
    80201c02:	000d3583          	ld	a1,0(s10)
    80201c06:	00093503          	ld	a0,0(s2)
    80201c0a:	f9043603          	ld	a2,-112(s0)
    80201c0e:	03000693          	li	a3,48
    80201c12:	02d585b3          	mul	a1,a1,a3
    80201c16:	952e                	add	a0,a0,a1
    80201c18:	f510                	sd	a2,40(a0)
    80201c1a:	f8843583          	ld	a1,-120(s0)
    80201c1e:	f10c                	sd	a1,32(a0)
    80201c20:	f8043583          	ld	a1,-128(s0)
    80201c24:	ed0c                	sd	a1,24(a0)
    80201c26:	f7843583          	ld	a1,-136(s0)
    80201c2a:	e90c                	sd	a1,16(a0)
    80201c2c:	f7043583          	ld	a1,-144(s0)
    80201c30:	e50c                	sd	a1,8(a0)
    80201c32:	f6843583          	ld	a1,-152(s0)
    80201c36:	e10c                	sd	a1,0(a0)
    80201c38:	000d3503          	ld	a0,0(s10)
    80201c3c:	0505                	addi	a0,a0,1
    80201c3e:	00ad3023          	sd	a0,0(s10)
    80201c42:	f3443023          	sd	s4,-224(s0)

0000000080201c46 <.LBB9_100>:
    80201c46:	0000c517          	auipc	a0,0xc
    80201c4a:	83250513          	addi	a0,a0,-1998 # 8020d478 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.18>
    80201c4e:	f6a43423          	sd	a0,-152(s0)
    80201c52:	4505                	li	a0,1
    80201c54:	f6a43823          	sd	a0,-144(s0)
    80201c58:	f6043c23          	sd	zero,-136(s0)
    80201c5c:	f9843423          	sd	s8,-120(s0)
    80201c60:	f8043823          	sd	zero,-112(s0)

0000000080201c64 <.LBB9_101>:
    80201c64:	0000c597          	auipc	a1,0xc
    80201c68:	fcc58593          	addi	a1,a1,-52 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80201c6c:	f2040b13          	addi	s6,s0,-224
    80201c70:	f6840a13          	addi	s4,s0,-152
    80201c74:	855a                	mv	a0,s6
    80201c76:	8652                	mv	a2,s4
    80201c78:	00008097          	auipc	ra,0x8
    80201c7c:	662080e7          	jalr	1634(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80201c80:	7a051963          	bnez	a0,80202432 <.LBB9_117>
    80201c84:	ef043503          	ld	a0,-272(s0)
    80201c88:	00c55b93          	srli	s7,a0,0xc
    80201c8c:	f5743c23          	sd	s7,-168(s0)
    80201c90:	6505                	lui	a0,0x1
    80201c92:	357d                	addiw	a0,a0,-1
    80201c94:	ef843603          	ld	a2,-264(s0)
    80201c98:	9532                	add	a0,a0,a2
    80201c9a:	8131                	srli	a0,a0,0xc
    80201c9c:	f6a43023          	sd	a0,-160(s0)
    80201ca0:	0b7560e3          	bltu	a0,s7,80202540 <.LBB9_128+0x1c>
    80201ca4:	f3743023          	sd	s7,-224(s0)
    80201ca8:	f6843583          	ld	a1,-152(s0)
    80201cac:	f2a43423          	sd	a0,-216(s0)
    80201cb0:	f2043c23          	sd	zero,-200(s0)
    80201cb4:	f4043023          	sd	zero,-192(s0)
    80201cb8:	f2b43823          	sd	a1,-208(s0)
    80201cbc:	20000593          	li	a1,512
    80201cc0:	f4b41423          	sh	a1,-184(s0)
    80201cc4:	5aab9363          	bne	s7,a0,8020226a <.LBB9_114+0xa6>
    80201cc8:	f4843503          	ld	a0,-184(s0)
    80201ccc:	f4043583          	ld	a1,-192(s0)
    80201cd0:	028a8c93          	addi	s9,s5,40
    80201cd4:	f8a43823          	sd	a0,-112(s0)
    80201cd8:	f8b43423          	sd	a1,-120(s0)
    80201cdc:	f3843503          	ld	a0,-200(s0)
    80201ce0:	f3043603          	ld	a2,-208(s0)
    80201ce4:	f2843683          	ld	a3,-216(s0)
    80201ce8:	f2043703          	ld	a4,-224(s0)
    80201cec:	000d3583          	ld	a1,0(s10)
    80201cf0:	000cb783          	ld	a5,0(s9)
    80201cf4:	f8a43023          	sd	a0,-128(s0)
    80201cf8:	f6c43c23          	sd	a2,-136(s0)
    80201cfc:	f6d43823          	sd	a3,-144(s0)
    80201d00:	f6e43423          	sd	a4,-152(s0)
    80201d04:	00f59a63          	bne	a1,a5,80201d18 <.LBB9_101+0xb4>
    80201d08:	4605                	li	a2,1
    80201d0a:	854a                	mv	a0,s2
    80201d0c:	00002097          	auipc	ra,0x2
    80201d10:	f30080e7          	jalr	-208(ra) # 80203c3c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E>
    80201d14:	000d3583          	ld	a1,0(s10)
    80201d18:	00093503          	ld	a0,0(s2)
    80201d1c:	f9043603          	ld	a2,-112(s0)
    80201d20:	03000693          	li	a3,48
    80201d24:	02d585b3          	mul	a1,a1,a3
    80201d28:	952e                	add	a0,a0,a1
    80201d2a:	f510                	sd	a2,40(a0)
    80201d2c:	f8843583          	ld	a1,-120(s0)
    80201d30:	f10c                	sd	a1,32(a0)
    80201d32:	f8043583          	ld	a1,-128(s0)
    80201d36:	ed0c                	sd	a1,24(a0)
    80201d38:	f7843583          	ld	a1,-136(s0)
    80201d3c:	e90c                	sd	a1,16(a0)
    80201d3e:	f7043583          	ld	a1,-144(s0)
    80201d42:	e50c                	sd	a1,8(a0)
    80201d44:	f6843583          	ld	a1,-152(s0)
    80201d48:	e10c                	sd	a1,0(a0)
    80201d4a:	000d3503          	ld	a0,0(s10)
    80201d4e:	0505                	addi	a0,a0,1
    80201d50:	00ad3023          	sd	a0,0(s10)
    80201d54:	f3443023          	sd	s4,-224(s0)

0000000080201d58 <.LBB9_102>:
    80201d58:	0000b517          	auipc	a0,0xb
    80201d5c:	74850513          	addi	a0,a0,1864 # 8020d4a0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.20>
    80201d60:	f6a43423          	sd	a0,-152(s0)
    80201d64:	4505                	li	a0,1
    80201d66:	f6a43823          	sd	a0,-144(s0)
    80201d6a:	f6043c23          	sd	zero,-136(s0)
    80201d6e:	f9843423          	sd	s8,-120(s0)
    80201d72:	f8043823          	sd	zero,-112(s0)

0000000080201d76 <.LBB9_103>:
    80201d76:	0000c597          	auipc	a1,0xc
    80201d7a:	eba58593          	addi	a1,a1,-326 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80201d7e:	f2040b13          	addi	s6,s0,-224
    80201d82:	f6840a13          	addi	s4,s0,-152
    80201d86:	855a                	mv	a0,s6
    80201d88:	8652                	mv	a2,s4
    80201d8a:	00008097          	auipc	ra,0x8
    80201d8e:	550080e7          	jalr	1360(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80201d92:	6a051063          	bnez	a0,80202432 <.LBB9_117>
    80201d96:	f0043503          	ld	a0,-256(s0)
    80201d9a:	00c55b93          	srli	s7,a0,0xc
    80201d9e:	f5743c23          	sd	s7,-168(s0)
    80201da2:	6505                	lui	a0,0x1
    80201da4:	357d                	addiw	a0,a0,-1
    80201da6:	f0843603          	ld	a2,-248(s0)
    80201daa:	9532                	add	a0,a0,a2
    80201dac:	8131                	srli	a0,a0,0xc
    80201dae:	f6a43023          	sd	a0,-160(s0)
    80201db2:	6b756563          	bltu	a0,s7,8020245c <.LBB9_119+0x1a>
    80201db6:	f3743023          	sd	s7,-224(s0)
    80201dba:	f6843583          	ld	a1,-152(s0)
    80201dbe:	f2a43423          	sd	a0,-216(s0)
    80201dc2:	f2043c23          	sd	zero,-200(s0)
    80201dc6:	f4043023          	sd	zero,-192(s0)
    80201dca:	f2b43823          	sd	a1,-208(s0)
    80201dce:	60000593          	li	a1,1536
    80201dd2:	f4b41423          	sh	a1,-184(s0)
    80201dd6:	50ab9063          	bne	s7,a0,802022d6 <.LBB9_114+0x112>
    80201dda:	f4843503          	ld	a0,-184(s0)
    80201dde:	f4043583          	ld	a1,-192(s0)
    80201de2:	f8a43823          	sd	a0,-112(s0)
    80201de6:	f8b43423          	sd	a1,-120(s0)
    80201dea:	f3843503          	ld	a0,-200(s0)
    80201dee:	f3043603          	ld	a2,-208(s0)
    80201df2:	f2843683          	ld	a3,-216(s0)
    80201df6:	f2043703          	ld	a4,-224(s0)
    80201dfa:	000d3583          	ld	a1,0(s10)
    80201dfe:	000cb783          	ld	a5,0(s9)
    80201e02:	f8a43023          	sd	a0,-128(s0)
    80201e06:	f6c43c23          	sd	a2,-136(s0)
    80201e0a:	f6d43823          	sd	a3,-144(s0)
    80201e0e:	f6e43423          	sd	a4,-152(s0)
    80201e12:	00f59a63          	bne	a1,a5,80201e26 <.LBB9_103+0xb0>
    80201e16:	4605                	li	a2,1
    80201e18:	854a                	mv	a0,s2
    80201e1a:	00002097          	auipc	ra,0x2
    80201e1e:	e22080e7          	jalr	-478(ra) # 80203c3c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E>
    80201e22:	000d3583          	ld	a1,0(s10)
    80201e26:	00093503          	ld	a0,0(s2)
    80201e2a:	f9043603          	ld	a2,-112(s0)
    80201e2e:	03000693          	li	a3,48
    80201e32:	02d585b3          	mul	a1,a1,a3
    80201e36:	952e                	add	a0,a0,a1
    80201e38:	f510                	sd	a2,40(a0)
    80201e3a:	f8843583          	ld	a1,-120(s0)
    80201e3e:	f10c                	sd	a1,32(a0)
    80201e40:	f8043583          	ld	a1,-128(s0)
    80201e44:	ed0c                	sd	a1,24(a0)
    80201e46:	f7843583          	ld	a1,-136(s0)
    80201e4a:	e90c                	sd	a1,16(a0)
    80201e4c:	f7043583          	ld	a1,-144(s0)
    80201e50:	e50c                	sd	a1,8(a0)
    80201e52:	f6843583          	ld	a1,-152(s0)
    80201e56:	e10c                	sd	a1,0(a0)
    80201e58:	000d3503          	ld	a0,0(s10)
    80201e5c:	0505                	addi	a0,a0,1
    80201e5e:	00ad3023          	sd	a0,0(s10)
    80201e62:	f3443023          	sd	s4,-224(s0)

0000000080201e66 <.LBB9_104>:
    80201e66:	0000b517          	auipc	a0,0xb
    80201e6a:	66250513          	addi	a0,a0,1634 # 8020d4c8 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.22>
    80201e6e:	f6a43423          	sd	a0,-152(s0)
    80201e72:	4505                	li	a0,1
    80201e74:	f6a43823          	sd	a0,-144(s0)
    80201e78:	f6043c23          	sd	zero,-136(s0)
    80201e7c:	f9843423          	sd	s8,-120(s0)
    80201e80:	f8043823          	sd	zero,-112(s0)

0000000080201e84 <.LBB9_105>:
    80201e84:	0000c597          	auipc	a1,0xc
    80201e88:	dac58593          	addi	a1,a1,-596 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80201e8c:	f2040b13          	addi	s6,s0,-224
    80201e90:	f6840a13          	addi	s4,s0,-152
    80201e94:	855a                	mv	a0,s6
    80201e96:	8652                	mv	a2,s4
    80201e98:	00008097          	auipc	ra,0x8
    80201e9c:	442080e7          	jalr	1090(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80201ea0:	58051963          	bnez	a0,80202432 <.LBB9_117>
    80201ea4:	f1043503          	ld	a0,-240(s0)
    80201ea8:	00c55b93          	srli	s7,a0,0xc
    80201eac:	f5743c23          	sd	s7,-168(s0)
    80201eb0:	6505                	lui	a0,0x1
    80201eb2:	357d                	addiw	a0,a0,-1
    80201eb4:	f1843603          	ld	a2,-232(s0)
    80201eb8:	9532                	add	a0,a0,a2
    80201eba:	8131                	srli	a0,a0,0xc
    80201ebc:	f6a43023          	sd	a0,-160(s0)
    80201ec0:	59756e63          	bltu	a0,s7,8020245c <.LBB9_119+0x1a>
    80201ec4:	f3743023          	sd	s7,-224(s0)
    80201ec8:	f6843583          	ld	a1,-152(s0)
    80201ecc:	f2a43423          	sd	a0,-216(s0)
    80201ed0:	f2043c23          	sd	zero,-200(s0)
    80201ed4:	f4043023          	sd	zero,-192(s0)
    80201ed8:	f2b43823          	sd	a1,-208(s0)
    80201edc:	60000593          	li	a1,1536
    80201ee0:	f4b41423          	sh	a1,-184(s0)
    80201ee4:	44ab9f63          	bne	s7,a0,80202342 <.LBB9_114+0x17e>
    80201ee8:	f4843503          	ld	a0,-184(s0)
    80201eec:	f4043583          	ld	a1,-192(s0)
    80201ef0:	f8a43823          	sd	a0,-112(s0)
    80201ef4:	f8b43423          	sd	a1,-120(s0)
    80201ef8:	f3843503          	ld	a0,-200(s0)
    80201efc:	f3043603          	ld	a2,-208(s0)
    80201f00:	f2843683          	ld	a3,-216(s0)
    80201f04:	f2043703          	ld	a4,-224(s0)
    80201f08:	000d3583          	ld	a1,0(s10)
    80201f0c:	000cb783          	ld	a5,0(s9)
    80201f10:	f8a43023          	sd	a0,-128(s0)
    80201f14:	f6c43c23          	sd	a2,-136(s0)
    80201f18:	f6d43823          	sd	a3,-144(s0)
    80201f1c:	f6e43423          	sd	a4,-152(s0)
    80201f20:	00f59a63          	bne	a1,a5,80201f34 <.LBB9_105+0xb0>
    80201f24:	4605                	li	a2,1
    80201f26:	854a                	mv	a0,s2
    80201f28:	00002097          	auipc	ra,0x2
    80201f2c:	d14080e7          	jalr	-748(ra) # 80203c3c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E>
    80201f30:	000d3583          	ld	a1,0(s10)
    80201f34:	00093503          	ld	a0,0(s2)
    80201f38:	f9043603          	ld	a2,-112(s0)
    80201f3c:	03000693          	li	a3,48
    80201f40:	02d585b3          	mul	a1,a1,a3
    80201f44:	952e                	add	a0,a0,a1
    80201f46:	f510                	sd	a2,40(a0)
    80201f48:	f8843583          	ld	a1,-120(s0)
    80201f4c:	f10c                	sd	a1,32(a0)
    80201f4e:	f8043583          	ld	a1,-128(s0)
    80201f52:	ed0c                	sd	a1,24(a0)
    80201f54:	f7843583          	ld	a1,-136(s0)
    80201f58:	e90c                	sd	a1,16(a0)
    80201f5a:	f7043583          	ld	a1,-144(s0)
    80201f5e:	e50c                	sd	a1,8(a0)
    80201f60:	f6843583          	ld	a1,-152(s0)
    80201f64:	e10c                	sd	a1,0(a0)
    80201f66:	000d3503          	ld	a0,0(s10)
    80201f6a:	0505                	addi	a0,a0,1
    80201f6c:	00ad3023          	sd	a0,0(s10)
    80201f70:	f3443023          	sd	s4,-224(s0)

0000000080201f74 <.LBB9_106>:
    80201f74:	0000b517          	auipc	a0,0xb
    80201f78:	57c50513          	addi	a0,a0,1404 # 8020d4f0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.24>
    80201f7c:	f6a43423          	sd	a0,-152(s0)
    80201f80:	4505                	li	a0,1
    80201f82:	f6a43823          	sd	a0,-144(s0)
    80201f86:	f6043c23          	sd	zero,-136(s0)
    80201f8a:	f9843423          	sd	s8,-120(s0)
    80201f8e:	f8043823          	sd	zero,-112(s0)

0000000080201f92 <.LBB9_107>:
    80201f92:	0000c597          	auipc	a1,0xc
    80201f96:	c9e58593          	addi	a1,a1,-866 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80201f9a:	f2040b13          	addi	s6,s0,-224
    80201f9e:	f6840a13          	addi	s4,s0,-152
    80201fa2:	855a                	mv	a0,s6
    80201fa4:	8652                	mv	a2,s4
    80201fa6:	00008097          	auipc	ra,0x8
    80201faa:	334080e7          	jalr	820(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80201fae:	48051263          	bnez	a0,80202432 <.LBB9_117>

0000000080201fb2 <.LBB9_108>:
    80201fb2:	00222517          	auipc	a0,0x222
    80201fb6:	04e50513          	addi	a0,a0,78 # 80424000 <ebss>
    80201fba:	00c55b93          	srli	s7,a0,0xc
    80201fbe:	f5743c23          	sd	s7,-168(s0)
    80201fc2:	000995b7          	lui	a1,0x99
    80201fc6:	8005851b          	addiw	a0,a1,-2048
    80201fca:	8015859b          	addiw	a1,a1,-2047
    80201fce:	f6a43023          	sd	a0,-160(s0)
    80201fd2:	48bbf563          	bgeu	s7,a1,8020245c <.LBB9_119+0x1a>
    80201fd6:	f2a43423          	sd	a0,-216(s0)
    80201fda:	f6843583          	ld	a1,-152(s0)
    80201fde:	f3743023          	sd	s7,-224(s0)
    80201fe2:	f2043c23          	sd	zero,-200(s0)
    80201fe6:	f4043023          	sd	zero,-192(s0)
    80201fea:	f2b43823          	sd	a1,-208(s0)
    80201fee:	60000593          	li	a1,1536
    80201ff2:	f4b41423          	sh	a1,-184(s0)
    80201ff6:	3aab9b63          	bne	s7,a0,802023ac <.LBB9_114+0x1e8>
    80201ffa:	f4843503          	ld	a0,-184(s0)
    80201ffe:	f4043583          	ld	a1,-192(s0)
    80202002:	f8a43823          	sd	a0,-112(s0)
    80202006:	f8b43423          	sd	a1,-120(s0)
    8020200a:	f3843503          	ld	a0,-200(s0)
    8020200e:	f3043603          	ld	a2,-208(s0)
    80202012:	f2843683          	ld	a3,-216(s0)
    80202016:	f2043703          	ld	a4,-224(s0)
    8020201a:	000d3583          	ld	a1,0(s10)
    8020201e:	000cb783          	ld	a5,0(s9)
    80202022:	f8a43023          	sd	a0,-128(s0)
    80202026:	f6c43c23          	sd	a2,-136(s0)
    8020202a:	f6d43823          	sd	a3,-144(s0)
    8020202e:	f6e43423          	sd	a4,-152(s0)
    80202032:	00f59a63          	bne	a1,a5,80202046 <.LBB9_108+0x94>
    80202036:	4605                	li	a2,1
    80202038:	854a                	mv	a0,s2
    8020203a:	00002097          	auipc	ra,0x2
    8020203e:	c02080e7          	jalr	-1022(ra) # 80203c3c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E>
    80202042:	000d3583          	ld	a1,0(s10)
    80202046:	00093503          	ld	a0,0(s2)
    8020204a:	f9043603          	ld	a2,-112(s0)
    8020204e:	03000693          	li	a3,48
    80202052:	02d585b3          	mul	a1,a1,a3
    80202056:	952e                	add	a0,a0,a1
    80202058:	f510                	sd	a2,40(a0)
    8020205a:	f8843583          	ld	a1,-120(s0)
    8020205e:	f10c                	sd	a1,32(a0)
    80202060:	f8043583          	ld	a1,-128(s0)
    80202064:	ed0c                	sd	a1,24(a0)
    80202066:	f7843583          	ld	a1,-136(s0)
    8020206a:	e90c                	sd	a1,16(a0)
    8020206c:	f7043583          	ld	a1,-144(s0)
    80202070:	e50c                	sd	a1,8(a0)
    80202072:	f6843583          	ld	a1,-152(s0)
    80202076:	e10c                	sd	a1,0(a0)
    80202078:	000d3503          	ld	a0,0(s10)
    8020207c:	0505                	addi	a0,a0,1
    8020207e:	00ad3023          	sd	a0,0(s10)
    80202082:	f3443023          	sd	s4,-224(s0)

0000000080202086 <.LBB9_109>:
    80202086:	0000b517          	auipc	a0,0xb
    8020208a:	47a50513          	addi	a0,a0,1146 # 8020d500 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.26>
    8020208e:	f6a43423          	sd	a0,-152(s0)
    80202092:	4505                	li	a0,1
    80202094:	f6a43823          	sd	a0,-144(s0)
    80202098:	f6043c23          	sd	zero,-136(s0)
    8020209c:	f9843423          	sd	s8,-120(s0)
    802020a0:	f8043823          	sd	zero,-112(s0)

00000000802020a4 <.LBB9_110>:
    802020a4:	0000c597          	auipc	a1,0xc
    802020a8:	b8c58593          	addi	a1,a1,-1140 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    802020ac:	f2040993          	addi	s3,s0,-224
    802020b0:	f6840493          	addi	s1,s0,-152
    802020b4:	854e                	mv	a0,s3
    802020b6:	8626                	mv	a2,s1
    802020b8:	00008097          	auipc	ra,0x8
    802020bc:	222080e7          	jalr	546(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    802020c0:	36051963          	bnez	a0,80202432 <.LBB9_117>
    802020c4:	6541                	lui	a0,0x10
    802020c6:	0025059b          	addiw	a1,a0,2
    802020ca:	f2b43423          	sd	a1,-216(s0)
    802020ce:	0015059b          	addiw	a1,a0,1
    802020d2:	f6843503          	ld	a0,-152(s0)
    802020d6:	f2b43023          	sd	a1,-224(s0)
    802020da:	f2043c23          	sd	zero,-200(s0)
    802020de:	f4043023          	sd	zero,-192(s0)
    802020e2:	f2a43823          	sd	a0,-208(s0)
    802020e6:	60000513          	li	a0,1536
    802020ea:	f4a41423          	sh	a0,-184(s0)
    802020ee:	4699                	li	a3,6
    802020f0:	8556                	mv	a0,s5
    802020f2:	862e                	mv	a2,a1
    802020f4:	00001097          	auipc	ra,0x1
    802020f8:	a8e080e7          	jalr	-1394(ra) # 80202b82 <_ZN2os2mm10page_table9PageTable3map17h2562fa28cb2e5ceeE>
    802020fc:	f4843503          	ld	a0,-184(s0)
    80202100:	f4043583          	ld	a1,-192(s0)
    80202104:	f8a43823          	sd	a0,-112(s0)
    80202108:	f8b43423          	sd	a1,-120(s0)
    8020210c:	f3843503          	ld	a0,-200(s0)
    80202110:	f3043603          	ld	a2,-208(s0)
    80202114:	f2843683          	ld	a3,-216(s0)
    80202118:	f2043703          	ld	a4,-224(s0)
    8020211c:	030ab583          	ld	a1,48(s5)
    80202120:	028ab783          	ld	a5,40(s5)
    80202124:	f8a43023          	sd	a0,-128(s0)
    80202128:	f6c43c23          	sd	a2,-136(s0)
    8020212c:	f6d43823          	sd	a3,-144(s0)
    80202130:	f6e43423          	sd	a4,-152(s0)
    80202134:	00f59a63          	bne	a1,a5,80202148 <.LBB9_110+0xa4>
    80202138:	4605                	li	a2,1
    8020213a:	854a                	mv	a0,s2
    8020213c:	00002097          	auipc	ra,0x2
    80202140:	b00080e7          	jalr	-1280(ra) # 80203c3c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E>
    80202144:	000d3583          	ld	a1,0(s10)
    80202148:	00093503          	ld	a0,0(s2)
    8020214c:	f9043603          	ld	a2,-112(s0)
    80202150:	03000693          	li	a3,48
    80202154:	02d585b3          	mul	a1,a1,a3
    80202158:	952e                	add	a0,a0,a1
    8020215a:	f510                	sd	a2,40(a0)
    8020215c:	f8843583          	ld	a1,-120(s0)
    80202160:	f10c                	sd	a1,32(a0)
    80202162:	f8043583          	ld	a1,-128(s0)
    80202166:	ed0c                	sd	a1,24(a0)
    80202168:	f7843583          	ld	a1,-136(s0)
    8020216c:	e90c                	sd	a1,16(a0)
    8020216e:	f7043583          	ld	a1,-144(s0)
    80202172:	e50c                	sd	a1,8(a0)
    80202174:	f6843583          	ld	a1,-152(s0)
    80202178:	e10c                	sd	a1,0(a0)
    8020217a:	000d3503          	ld	a0,0(s10)
    8020217e:	0505                	addi	a0,a0,1
    80202180:	00ad3023          	sd	a0,0(s10)
    80202184:	f3243023          	sd	s2,-224(s0)

0000000080202188 <.LBB9_111>:
    80202188:	00003517          	auipc	a0,0x3
    8020218c:	cf250513          	addi	a0,a0,-782 # 80204e7a <_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d5e78f9cbc17ce0E>
    80202190:	f2a43423          	sd	a0,-216(s0)
    80202194:	f6943023          	sd	s1,-160(s0)

0000000080202198 <.LBB9_112>:
    80202198:	0000b517          	auipc	a0,0xb
    8020219c:	38850513          	addi	a0,a0,904 # 8020d520 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.30>
    802021a0:	f6a43423          	sd	a0,-152(s0)
    802021a4:	4509                	li	a0,2
    802021a6:	f6a43823          	sd	a0,-144(s0)

00000000802021aa <.LBB9_113>:
    802021aa:	0000b517          	auipc	a0,0xb
    802021ae:	39650513          	addi	a0,a0,918 # 8020d540 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.31>
    802021b2:	f6a43c23          	sd	a0,-136(s0)
    802021b6:	4505                	li	a0,1
    802021b8:	f8a43023          	sd	a0,-128(s0)
    802021bc:	f9343423          	sd	s3,-120(s0)
    802021c0:	f8a43823          	sd	a0,-112(s0)

00000000802021c4 <.LBB9_114>:
    802021c4:	0000c597          	auipc	a1,0xc
    802021c8:	a6c58593          	addi	a1,a1,-1428 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    802021cc:	f6040513          	addi	a0,s0,-160
    802021d0:	f6840613          	addi	a2,s0,-152
    802021d4:	00008097          	auipc	ra,0x8
    802021d8:	106080e7          	jalr	262(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    802021dc:	24051b63          	bnez	a0,80202432 <.LBB9_117>
    802021e0:	7daa                	ld	s11,168(sp)
    802021e2:	7d4a                	ld	s10,176(sp)
    802021e4:	7cea                	ld	s9,184(sp)
    802021e6:	6c0e                	ld	s8,192(sp)
    802021e8:	6bae                	ld	s7,200(sp)
    802021ea:	6b4e                	ld	s6,208(sp)
    802021ec:	6aee                	ld	s5,216(sp)
    802021ee:	7a0e                	ld	s4,224(sp)
    802021f0:	79ae                	ld	s3,232(sp)
    802021f2:	794e                	ld	s2,240(sp)
    802021f4:	74ee                	ld	s1,248(sp)
    802021f6:	6412                	ld	s0,256(sp)
    802021f8:	60b2                	ld	ra,264(sp)
    802021fa:	6151                	addi	sp,sp,272
    802021fc:	8082                	ret
    802021fe:	4501                	li	a0,0
    80202200:	0941                	addi	s2,s2,16
    80202202:	6585                	lui	a1,0x1
    80202204:	35fd                	addiw	a1,a1,-1
    80202206:	95ea                	add	a1,a1,s10
    80202208:	4d05                	li	s10,1
    8020220a:	81b1                	srli	a1,a1,0xc
    8020220c:	fff58d93          	addi	s11,a1,-1 # fff <n+0xfdf>
    80202210:	0ff57513          	andi	a0,a0,255
    80202214:	84da                	mv	s1,s6
    80202216:	03a51663          	bne	a0,s10,80202242 <.LBB9_114+0x7e>
    8020221a:	00002097          	auipc	ra,0x2
    8020221e:	d4a080e7          	jalr	-694(ra) # 80203f64 <_ZN2os2mm15frame_allocator11frame_alloc17ha7fa5a63181a930bE>
    80202222:	1e050963          	beqz	a0,80202414 <.LBB9_115>
    80202226:	84ae                	mv	s1,a1
    80202228:	854a                	mv	a0,s2
    8020222a:	85da                	mv	a1,s6
    8020222c:	8626                	mv	a2,s1
    8020222e:	00001097          	auipc	ra,0x1
    80202232:	5f4080e7          	jalr	1524(ra) # 80203822 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E>
    80202236:	c511                	beqz	a0,80202242 <.LBB9_114+0x7e>
    80202238:	852e                	mv	a0,a1
    8020223a:	00002097          	auipc	ra,0x2
    8020223e:	e86080e7          	jalr	-378(ra) # 802040c0 <_ZN2os2mm15frame_allocator13frame_dealloc17h4828e963a0fceefbE>
    80202242:	f4940683          	lb	a3,-183(s0)
    80202246:	8556                	mv	a0,s5
    80202248:	85da                	mv	a1,s6
    8020224a:	8626                	mv	a2,s1
    8020224c:	00001097          	auipc	ra,0x1
    80202250:	936080e7          	jalr	-1738(ra) # 80202b82 <_ZN2os2mm10page_table9PageTable3map17h2562fa28cb2e5ceeE>
    80202254:	956d8fe3          	beq	s11,s6,80201bb2 <.LBB9_99+0x5e>
    80202258:	f4844503          	lbu	a0,-184(s0)
    8020225c:	0b05                	addi	s6,s6,1
    8020225e:	0ff57513          	andi	a0,a0,255
    80202262:	84da                	mv	s1,s6
    80202264:	fba50be3          	beq	a0,s10,8020221a <.LBB9_114+0x56>
    80202268:	bfe9                	j	80202242 <.LBB9_114+0x7e>
    8020226a:	4501                	li	a0,0
    8020226c:	0b41                	addi	s6,s6,16
    8020226e:	6585                	lui	a1,0x1
    80202270:	35fd                	addiw	a1,a1,-1
    80202272:	95b2                	add	a1,a1,a2
    80202274:	4c85                	li	s9,1
    80202276:	81b1                	srli	a1,a1,0xc
    80202278:	fff58d93          	addi	s11,a1,-1 # fff <n+0xfdf>
    8020227c:	0ff57513          	andi	a0,a0,255
    80202280:	84de                	mv	s1,s7
    80202282:	03951663          	bne	a0,s9,802022ae <.LBB9_114+0xea>
    80202286:	00002097          	auipc	ra,0x2
    8020228a:	cde080e7          	jalr	-802(ra) # 80203f64 <_ZN2os2mm15frame_allocator11frame_alloc17ha7fa5a63181a930bE>
    8020228e:	18050363          	beqz	a0,80202414 <.LBB9_115>
    80202292:	84ae                	mv	s1,a1
    80202294:	855a                	mv	a0,s6
    80202296:	85de                	mv	a1,s7
    80202298:	8626                	mv	a2,s1
    8020229a:	00001097          	auipc	ra,0x1
    8020229e:	588080e7          	jalr	1416(ra) # 80203822 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E>
    802022a2:	c511                	beqz	a0,802022ae <.LBB9_114+0xea>
    802022a4:	852e                	mv	a0,a1
    802022a6:	00002097          	auipc	ra,0x2
    802022aa:	e1a080e7          	jalr	-486(ra) # 802040c0 <_ZN2os2mm15frame_allocator13frame_dealloc17h4828e963a0fceefbE>
    802022ae:	f4940683          	lb	a3,-183(s0)
    802022b2:	8556                	mv	a0,s5
    802022b4:	85de                	mv	a1,s7
    802022b6:	8626                	mv	a2,s1
    802022b8:	00001097          	auipc	ra,0x1
    802022bc:	8ca080e7          	jalr	-1846(ra) # 80202b82 <_ZN2os2mm10page_table9PageTable3map17h2562fa28cb2e5ceeE>
    802022c0:	a17d84e3          	beq	s11,s7,80201cc8 <.LBB9_101+0x64>
    802022c4:	f4844503          	lbu	a0,-184(s0)
    802022c8:	0b85                	addi	s7,s7,1
    802022ca:	0ff57513          	andi	a0,a0,255
    802022ce:	84de                	mv	s1,s7
    802022d0:	fb950be3          	beq	a0,s9,80202286 <.LBB9_114+0xc2>
    802022d4:	bfe9                	j	802022ae <.LBB9_114+0xea>
    802022d6:	4501                	li	a0,0
    802022d8:	0b41                	addi	s6,s6,16
    802022da:	6585                	lui	a1,0x1
    802022dc:	35fd                	addiw	a1,a1,-1
    802022de:	95b2                	add	a1,a1,a2
    802022e0:	4985                	li	s3,1
    802022e2:	81b1                	srli	a1,a1,0xc
    802022e4:	fff58d93          	addi	s11,a1,-1 # fff <n+0xfdf>
    802022e8:	0ff57513          	andi	a0,a0,255
    802022ec:	84de                	mv	s1,s7
    802022ee:	03351663          	bne	a0,s3,8020231a <.LBB9_114+0x156>
    802022f2:	00002097          	auipc	ra,0x2
    802022f6:	c72080e7          	jalr	-910(ra) # 80203f64 <_ZN2os2mm15frame_allocator11frame_alloc17ha7fa5a63181a930bE>
    802022fa:	10050d63          	beqz	a0,80202414 <.LBB9_115>
    802022fe:	84ae                	mv	s1,a1
    80202300:	855a                	mv	a0,s6
    80202302:	85de                	mv	a1,s7
    80202304:	8626                	mv	a2,s1
    80202306:	00001097          	auipc	ra,0x1
    8020230a:	51c080e7          	jalr	1308(ra) # 80203822 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E>
    8020230e:	c511                	beqz	a0,8020231a <.LBB9_114+0x156>
    80202310:	852e                	mv	a0,a1
    80202312:	00002097          	auipc	ra,0x2
    80202316:	dae080e7          	jalr	-594(ra) # 802040c0 <_ZN2os2mm15frame_allocator13frame_dealloc17h4828e963a0fceefbE>
    8020231a:	f4940683          	lb	a3,-183(s0)
    8020231e:	8556                	mv	a0,s5
    80202320:	85de                	mv	a1,s7
    80202322:	8626                	mv	a2,s1
    80202324:	00001097          	auipc	ra,0x1
    80202328:	85e080e7          	jalr	-1954(ra) # 80202b82 <_ZN2os2mm10page_table9PageTable3map17h2562fa28cb2e5ceeE>
    8020232c:	ab7d87e3          	beq	s11,s7,80201dda <.LBB9_103+0x64>
    80202330:	f4844503          	lbu	a0,-184(s0)
    80202334:	0b85                	addi	s7,s7,1
    80202336:	0ff57513          	andi	a0,a0,255
    8020233a:	84de                	mv	s1,s7
    8020233c:	fb350be3          	beq	a0,s3,802022f2 <.LBB9_114+0x12e>
    80202340:	bfe9                	j	8020231a <.LBB9_114+0x156>
    80202342:	4501                	li	a0,0
    80202344:	0b41                	addi	s6,s6,16
    80202346:	6585                	lui	a1,0x1
    80202348:	35fd                	addiw	a1,a1,-1
    8020234a:	95b2                	add	a1,a1,a2
    8020234c:	4985                	li	s3,1
    8020234e:	81b1                	srli	a1,a1,0xc
    80202350:	fff58d93          	addi	s11,a1,-1 # fff <n+0xfdf>
    80202354:	0ff57513          	andi	a0,a0,255
    80202358:	84de                	mv	s1,s7
    8020235a:	03351563          	bne	a0,s3,80202384 <.LBB9_114+0x1c0>
    8020235e:	00002097          	auipc	ra,0x2
    80202362:	c06080e7          	jalr	-1018(ra) # 80203f64 <_ZN2os2mm15frame_allocator11frame_alloc17ha7fa5a63181a930bE>
    80202366:	c55d                	beqz	a0,80202414 <.LBB9_115>
    80202368:	84ae                	mv	s1,a1
    8020236a:	855a                	mv	a0,s6
    8020236c:	85de                	mv	a1,s7
    8020236e:	8626                	mv	a2,s1
    80202370:	00001097          	auipc	ra,0x1
    80202374:	4b2080e7          	jalr	1202(ra) # 80203822 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E>
    80202378:	c511                	beqz	a0,80202384 <.LBB9_114+0x1c0>
    8020237a:	852e                	mv	a0,a1
    8020237c:	00002097          	auipc	ra,0x2
    80202380:	d44080e7          	jalr	-700(ra) # 802040c0 <_ZN2os2mm15frame_allocator13frame_dealloc17h4828e963a0fceefbE>
    80202384:	f4940683          	lb	a3,-183(s0)
    80202388:	8556                	mv	a0,s5
    8020238a:	85de                	mv	a1,s7
    8020238c:	8626                	mv	a2,s1
    8020238e:	00000097          	auipc	ra,0x0
    80202392:	7f4080e7          	jalr	2036(ra) # 80202b82 <_ZN2os2mm10page_table9PageTable3map17h2562fa28cb2e5ceeE>
    80202396:	b57d89e3          	beq	s11,s7,80201ee8 <.LBB9_105+0x64>
    8020239a:	f4844503          	lbu	a0,-184(s0)
    8020239e:	0b85                	addi	s7,s7,1
    802023a0:	0ff57513          	andi	a0,a0,255
    802023a4:	84de                	mv	s1,s7
    802023a6:	fb350ce3          	beq	a0,s3,8020235e <.LBB9_114+0x19a>
    802023aa:	bfe9                	j	80202384 <.LBB9_114+0x1c0>
    802023ac:	4501                	li	a0,0
    802023ae:	010b0993          	addi	s3,s6,16
    802023b2:	4b05                	li	s6,1
    802023b4:	000985b7          	lui	a1,0x98
    802023b8:	7ff58d9b          	addiw	s11,a1,2047
    802023bc:	0ff57513          	andi	a0,a0,255
    802023c0:	84de                	mv	s1,s7
    802023c2:	03651563          	bne	a0,s6,802023ec <.LBB9_114+0x228>
    802023c6:	00002097          	auipc	ra,0x2
    802023ca:	b9e080e7          	jalr	-1122(ra) # 80203f64 <_ZN2os2mm15frame_allocator11frame_alloc17ha7fa5a63181a930bE>
    802023ce:	c139                	beqz	a0,80202414 <.LBB9_115>
    802023d0:	84ae                	mv	s1,a1
    802023d2:	854e                	mv	a0,s3
    802023d4:	85de                	mv	a1,s7
    802023d6:	8626                	mv	a2,s1
    802023d8:	00001097          	auipc	ra,0x1
    802023dc:	44a080e7          	jalr	1098(ra) # 80203822 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E>
    802023e0:	c511                	beqz	a0,802023ec <.LBB9_114+0x228>
    802023e2:	852e                	mv	a0,a1
    802023e4:	00002097          	auipc	ra,0x2
    802023e8:	cdc080e7          	jalr	-804(ra) # 802040c0 <_ZN2os2mm15frame_allocator13frame_dealloc17h4828e963a0fceefbE>
    802023ec:	f4940683          	lb	a3,-183(s0)
    802023f0:	8556                	mv	a0,s5
    802023f2:	85de                	mv	a1,s7
    802023f4:	8626                	mv	a2,s1
    802023f6:	00000097          	auipc	ra,0x0
    802023fa:	78c080e7          	jalr	1932(ra) # 80202b82 <_ZN2os2mm10page_table9PageTable3map17h2562fa28cb2e5ceeE>
    802023fe:	bfbb8ee3          	beq	s7,s11,80201ffa <.LBB9_108+0x48>
    80202402:	f4844503          	lbu	a0,-184(s0)
    80202406:	0b85                	addi	s7,s7,1
    80202408:	0ff57513          	andi	a0,a0,255
    8020240c:	84de                	mv	s1,s7
    8020240e:	fb650ce3          	beq	a0,s6,802023c6 <.LBB9_114+0x202>
    80202412:	bfe9                	j	802023ec <.LBB9_114+0x228>

0000000080202414 <.LBB9_115>:
    80202414:	0000b517          	auipc	a0,0xb
    80202418:	e9c50513          	addi	a0,a0,-356 # 8020d2b0 <anon.cb68d3a9003f2ce0aa95ebc54f168231.0.llvm.7843020515658130474>

000000008020241c <.LBB9_116>:
    8020241c:	0000b617          	auipc	a2,0xb
    80202420:	1dc60613          	addi	a2,a2,476 # 8020d5f8 <anon.cb68d3a9003f2ce0aa95ebc54f168231.50.llvm.7843020515658130474>
    80202424:	02b00593          	li	a1,43
    80202428:	00007097          	auipc	ra,0x7
    8020242c:	3da080e7          	jalr	986(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000080202432 <.LBB9_117>:
    80202432:	0000c517          	auipc	a0,0xc
    80202436:	82e50513          	addi	a0,a0,-2002 # 8020dc60 <anon.32e88238351ec6f13c95b6c2887136c4.2.llvm.7602298555204137961>

000000008020243a <.LBB9_118>:
    8020243a:	0000c697          	auipc	a3,0xc
    8020243e:	85668693          	addi	a3,a3,-1962 # 8020dc90 <anon.32e88238351ec6f13c95b6c2887136c4.3.llvm.7602298555204137961>

0000000080202442 <.LBB9_119>:
    80202442:	0000c717          	auipc	a4,0xc
    80202446:	9b670713          	addi	a4,a4,-1610 # 8020ddf8 <anon.32e88238351ec6f13c95b6c2887136c4.12.llvm.7602298555204137961>
    8020244a:	f6840613          	addi	a2,s0,-152
    8020244e:	02b00593          	li	a1,43
    80202452:	00007097          	auipc	ra,0x7
    80202456:	350080e7          	jalr	848(ra) # 802097a2 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
    8020245a:	0000                	unimp
    8020245c:	f5840513          	addi	a0,s0,-168
    80202460:	f2a43023          	sd	a0,-224(s0)

0000000080202464 <.LBB9_120>:
    80202464:	00001517          	auipc	a0,0x1
    80202468:	03650513          	addi	a0,a0,54 # 8020349a <_ZN65_$LT$os..mm..address..VirtPageNum$u20$as$u20$core..fmt..Debug$GT$3fmt17haac55a57cbe0682cE>
    8020246c:	f2a43423          	sd	a0,-216(s0)
    80202470:	f6040593          	addi	a1,s0,-160
    80202474:	f2b43823          	sd	a1,-208(s0)
    80202478:	a0c5                	j	80202558 <.LBB9_129+0x10>

000000008020247a <.LBB9_121>:
    8020247a:	0000b517          	auipc	a0,0xb
    8020247e:	36d50513          	addi	a0,a0,877 # 8020d7e7 <anon.f2b1b5a509bdedcdd67207527f4f0965.0.llvm.1283535708719223612>

0000000080202482 <.LBB9_122>:
    80202482:	0000b617          	auipc	a2,0xb
    80202486:	3a660613          	addi	a2,a2,934 # 8020d828 <anon.f2b1b5a509bdedcdd67207527f4f0965.2.llvm.1283535708719223612>
    8020248a:	02b00593          	li	a1,43
    8020248e:	00007097          	auipc	ra,0x7
    80202492:	374080e7          	jalr	884(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    80202496:	0000                	unimp
    80202498:	4521                	li	a0,8
    8020249a:	45a1                	li	a1,8
    8020249c:	00007097          	auipc	ra,0x7
    802024a0:	fc4080e7          	jalr	-60(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
    802024a4:	0000                	unimp
    802024a6:	f5040513          	addi	a0,s0,-176
    802024aa:	f4a43c23          	sd	a0,-168(s0)

00000000802024ae <.LBB9_123>:
    802024ae:	0000b517          	auipc	a0,0xb
    802024b2:	2c250513          	addi	a0,a0,706 # 8020d770 <anon.93f8f94179db6f373a864e59d65dab14.17.llvm.9790629543225328465>
    802024b6:	f6a43023          	sd	a0,-160(s0)
    802024ba:	f5840513          	addi	a0,s0,-168
    802024be:	f2a43023          	sd	a0,-224(s0)

00000000802024c2 <.LBB9_124>:
    802024c2:	00001517          	auipc	a0,0x1
    802024c6:	5a450513          	addi	a0,a0,1444 # 80203a66 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2738cfdee3e896f9E>
    802024ca:	f2a43423          	sd	a0,-216(s0)
    802024ce:	f6040593          	addi	a1,s0,-160
    802024d2:	f2b43823          	sd	a1,-208(s0)
    802024d6:	f2a43c23          	sd	a0,-200(s0)

00000000802024da <.LBB9_125>:
    802024da:	0000c517          	auipc	a0,0xc
    802024de:	bbe50513          	addi	a0,a0,-1090 # 8020e098 <anon.93f8f94179db6f373a864e59d65dab14.21.llvm.9790629543225328465>
    802024e2:	f6a43423          	sd	a0,-152(s0)
    802024e6:	450d                	li	a0,3
    802024e8:	f6a43823          	sd	a0,-144(s0)
    802024ec:	f6043c23          	sd	zero,-136(s0)
    802024f0:	f2040513          	addi	a0,s0,-224
    802024f4:	f8a43423          	sd	a0,-120(s0)
    802024f8:	4509                	li	a0,2
    802024fa:	f8a43823          	sd	a0,-112(s0)

00000000802024fe <.LBB9_126>:
    802024fe:	0000c597          	auipc	a1,0xc
    80202502:	be258593          	addi	a1,a1,-1054 # 8020e0e0 <anon.93f8f94179db6f373a864e59d65dab14.24.llvm.9790629543225328465>
    80202506:	a8bd                	j	80202584 <.LBB9_131+0x8>
    80202508:	f5840513          	addi	a0,s0,-168
    8020250c:	f2a43023          	sd	a0,-224(s0)

0000000080202510 <.LBB9_127>:
    80202510:	00001517          	auipc	a0,0x1
    80202514:	f8a50513          	addi	a0,a0,-118 # 8020349a <_ZN65_$LT$os..mm..address..VirtPageNum$u20$as$u20$core..fmt..Debug$GT$3fmt17haac55a57cbe0682cE>
    80202518:	f2a43423          	sd	a0,-216(s0)
    8020251c:	f3343823          	sd	s3,-208(s0)
    80202520:	f2a43c23          	sd	a0,-200(s0)

0000000080202524 <.LBB9_128>:
    80202524:	0000c517          	auipc	a0,0xc
    80202528:	be450513          	addi	a0,a0,-1052 # 8020e108 <anon.93f8f94179db6f373a864e59d65dab14.31.llvm.9790629543225328465>
    8020252c:	f6a43423          	sd	a0,-152(s0)
    80202530:	450d                	li	a0,3
    80202532:	f6a43823          	sd	a0,-144(s0)
    80202536:	f6043c23          	sd	zero,-136(s0)
    8020253a:	f9243423          	sd	s2,-120(s0)
    8020253e:	a825                	j	80202576 <.LBB9_130+0x1a>
    80202540:	f5840513          	addi	a0,s0,-168
    80202544:	f2a43023          	sd	a0,-224(s0)

0000000080202548 <.LBB9_129>:
    80202548:	00001517          	auipc	a0,0x1
    8020254c:	f5250513          	addi	a0,a0,-174 # 8020349a <_ZN65_$LT$os..mm..address..VirtPageNum$u20$as$u20$core..fmt..Debug$GT$3fmt17haac55a57cbe0682cE>
    80202550:	f2a43423          	sd	a0,-216(s0)
    80202554:	f3343823          	sd	s3,-208(s0)
    80202558:	f2a43c23          	sd	a0,-200(s0)

000000008020255c <.LBB9_130>:
    8020255c:	0000c517          	auipc	a0,0xc
    80202560:	bac50513          	addi	a0,a0,-1108 # 8020e108 <anon.93f8f94179db6f373a864e59d65dab14.31.llvm.9790629543225328465>
    80202564:	f6a43423          	sd	a0,-152(s0)
    80202568:	450d                	li	a0,3
    8020256a:	f6a43823          	sd	a0,-144(s0)
    8020256e:	f6043c23          	sd	zero,-136(s0)
    80202572:	f9643423          	sd	s6,-120(s0)
    80202576:	4509                	li	a0,2
    80202578:	f8a43823          	sd	a0,-112(s0)

000000008020257c <.LBB9_131>:
    8020257c:	0000c597          	auipc	a1,0xc
    80202580:	bbc58593          	addi	a1,a1,-1092 # 8020e138 <anon.93f8f94179db6f373a864e59d65dab14.32.llvm.9790629543225328465>
    80202584:	f6840513          	addi	a0,s0,-152
    80202588:	00007097          	auipc	ra,0x7
    8020258c:	2e6080e7          	jalr	742(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000080202592 <_ZN2os2mm10memory_set10remap_test17h8207b0ea6d972ca4E>:
    80202592:	7175                	addi	sp,sp,-144
    80202594:	e506                	sd	ra,136(sp)
    80202596:	e122                	sd	s0,128(sp)
    80202598:	fca6                	sd	s1,120(sp)
    8020259a:	f8ca                	sd	s2,112(sp)
    8020259c:	f4ce                	sd	s3,104(sp)
    8020259e:	0900                	addi	s0,sp,144

00000000802025a0 <.LBB20_32>:
    802025a0:	00021517          	auipc	a0,0x21
    802025a4:	a6050513          	addi	a0,a0,-1440 # 80223000 <boot_stack_top>
    802025a8:	00002097          	auipc	ra,0x2
    802025ac:	dce080e7          	jalr	-562(ra) # 80204376 <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE>
    802025b0:	00053983          	ld	s3,0(a0)
    802025b4:	01098513          	addi	a0,s3,16
    802025b8:	4585                	li	a1,1
    802025ba:	00b5392f          	amoadd.d	s2,a1,(a0)
    802025be:	0189b503          	ld	a0,24(s3)
    802025c2:	0230000f          	fence	r,rw
    802025c6:	ff251ce3          	bne	a0,s2,802025be <.LBB20_32+0x1e>
    802025ca:	4505                	li	a0,1
    802025cc:	1532                	slli	a0,a0,0x2c
    802025ce:	fff50293          	addi	t0,a0,-1
    802025d2:	0209b583          	ld	a1,32(s3)

00000000802025d6 <.LBB20_33>:
    802025d6:	0000b517          	auipc	a0,0xb
    802025da:	a2a50513          	addi	a0,a0,-1494 # 8020d000 <etext>

00000000802025de <.LBB20_34>:
    802025de:	ffffe617          	auipc	a2,0xffffe
    802025e2:	a2260613          	addi	a2,a2,-1502 # 80200000 <_start>
    802025e6:	9532                	add	a0,a0,a2
    802025e8:	00d55613          	srli	a2,a0,0xd
    802025ec:	1ff67613          	andi	a2,a2,511
    802025f0:	fac43c23          	sd	a2,-72(s0)
    802025f4:	01655613          	srli	a2,a0,0x16
    802025f8:	1ff67613          	andi	a2,a2,511
    802025fc:	fac43823          	sd	a2,-80(s0)
    80202600:	817d                	srli	a0,a0,0x1f
    80202602:	1ff57513          	andi	a0,a0,511
    80202606:	faa43423          	sd	a0,-88(s0)
    8020260a:	4621                	li	a2,8
    8020260c:	02000893          	li	a7,32
    80202610:	fa840813          	addi	a6,s0,-88
    80202614:	20000493          	li	s1,512
    80202618:	86ae                	mv	a3,a1
    8020261a:	06b2                	slli	a3,a3,0xc
    8020261c:	050e                	slli	a0,a0,0x3
    8020261e:	00860793          	addi	a5,a2,8
    80202622:	9536                	add	a0,a0,a3
    80202624:	03178263          	beq	a5,a7,80202648 <.LBB20_34+0x6a>
    80202628:	6114                	ld	a3,0(a0)
    8020262a:	0016f513          	andi	a0,a3,1
    8020262e:	18050e63          	beqz	a0,802027ca <.LBB20_43>
    80202632:	00c80533          	add	a0,a6,a2
    80202636:	6108                	ld	a0,0(a0)
    80202638:	00a6d613          	srli	a2,a3,0xa
    8020263c:	005676b3          	and	a3,a2,t0
    80202640:	863e                	mv	a2,a5
    80202642:	fc956ce3          	bltu	a0,s1,8020261a <.LBB20_34+0x3c>
    80202646:	a8f5                	j	80202742 <.LBB20_39>
    80202648:	18068163          	beqz	a3,802027ca <.LBB20_43>
    8020264c:	6108                	ld	a0,0(a0)
    8020264e:	8911                	andi	a0,a0,4
    80202650:	00255613          	srli	a2,a0,0x2
    80202654:	f6c40ba3          	sb	a2,-137(s0)
    80202658:	1a051a63          	bnez	a0,8020280c <.LBB20_48+0x16>

000000008020265c <.LBB20_35>:
    8020265c:	00010517          	auipc	a0,0x10
    80202660:	9a450513          	addi	a0,a0,-1628 # 80212000 <erodata>

0000000080202664 <.LBB20_36>:
    80202664:	0000b617          	auipc	a2,0xb
    80202668:	99c60613          	addi	a2,a2,-1636 # 8020d000 <etext>
    8020266c:	9532                	add	a0,a0,a2
    8020266e:	00d55613          	srli	a2,a0,0xd
    80202672:	1ff67613          	andi	a2,a2,511
    80202676:	fac43c23          	sd	a2,-72(s0)
    8020267a:	01655613          	srli	a2,a0,0x16
    8020267e:	1ff67613          	andi	a2,a2,511
    80202682:	fac43823          	sd	a2,-80(s0)
    80202686:	817d                	srli	a0,a0,0x1f
    80202688:	1ff57513          	andi	a0,a0,511
    8020268c:	faa43423          	sd	a0,-88(s0)
    80202690:	44a1                	li	s1,8
    80202692:	02000693          	li	a3,32
    80202696:	20000793          	li	a5,512
    8020269a:	872e                	mv	a4,a1
    8020269c:	0732                	slli	a4,a4,0xc
    8020269e:	050e                	slli	a0,a0,0x3
    802026a0:	00848613          	addi	a2,s1,8
    802026a4:	953a                	add	a0,a0,a4
    802026a6:	02d60163          	beq	a2,a3,802026c8 <.LBB20_36+0x64>
    802026aa:	6118                	ld	a4,0(a0)
    802026ac:	00177513          	andi	a0,a4,1
    802026b0:	12050663          	beqz	a0,802027dc <.LBB20_45>
    802026b4:	00980533          	add	a0,a6,s1
    802026b8:	6108                	ld	a0,0(a0)
    802026ba:	8329                	srli	a4,a4,0xa
    802026bc:	00577733          	and	a4,a4,t0
    802026c0:	84b2                	mv	s1,a2
    802026c2:	fcf56de3          	bltu	a0,a5,8020269c <.LBB20_36+0x38>
    802026c6:	a8b5                	j	80202742 <.LBB20_39>
    802026c8:	10070a63          	beqz	a4,802027dc <.LBB20_45>
    802026cc:	6108                	ld	a0,0(a0)
    802026ce:	8911                	andi	a0,a0,4
    802026d0:	00255613          	srli	a2,a0,0x2
    802026d4:	f6c40ba3          	sb	a2,-137(s0)
    802026d8:	18051b63          	bnez	a0,8020286e <.LBB20_52+0xa>

00000000802026dc <.LBB20_37>:
    802026dc:	00011517          	auipc	a0,0x11
    802026e0:	92450513          	addi	a0,a0,-1756 # 80213000 <edata>

00000000802026e4 <.LBB20_38>:
    802026e4:	00010617          	auipc	a2,0x10
    802026e8:	91c60613          	addi	a2,a2,-1764 # 80212000 <erodata>
    802026ec:	9532                	add	a0,a0,a2
    802026ee:	00d55613          	srli	a2,a0,0xd
    802026f2:	1ff67613          	andi	a2,a2,511
    802026f6:	fac43c23          	sd	a2,-72(s0)
    802026fa:	01655613          	srli	a2,a0,0x16
    802026fe:	1ff67613          	andi	a2,a2,511
    80202702:	fac43823          	sd	a2,-80(s0)
    80202706:	817d                	srli	a0,a0,0x1f
    80202708:	1ff57513          	andi	a0,a0,511
    8020270c:	faa43423          	sd	a0,-88(s0)
    80202710:	44a1                	li	s1,8
    80202712:	02000693          	li	a3,32
    80202716:	20000793          	li	a5,512
    8020271a:	05b2                	slli	a1,a1,0xc
    8020271c:	050e                	slli	a0,a0,0x3
    8020271e:	00848613          	addi	a2,s1,8
    80202722:	952e                	add	a0,a0,a1
    80202724:	02d60a63          	beq	a2,a3,80202758 <.LBB20_39+0x16>
    80202728:	610c                	ld	a1,0(a0)
    8020272a:	0015f513          	andi	a0,a1,1
    8020272e:	c161                	beqz	a0,802027ee <.LBB20_47>
    80202730:	00980533          	add	a0,a6,s1
    80202734:	6108                	ld	a0,0(a0)
    80202736:	81a9                	srli	a1,a1,0xa
    80202738:	0055f5b3          	and	a1,a1,t0
    8020273c:	84b2                	mv	s1,a2
    8020273e:	fcf56ee3          	bltu	a0,a5,8020271a <.LBB20_38+0x36>

0000000080202742 <.LBB20_39>:
    80202742:	0000b617          	auipc	a2,0xb
    80202746:	23e60613          	addi	a2,a2,574 # 8020d980 <anon.f2b1b5a509bdedcdd67207527f4f0965.13.llvm.1283535708719223612>
    8020274a:	20000593          	li	a1,512
    8020274e:	00007097          	auipc	ra,0x7
    80202752:	0e0080e7          	jalr	224(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
    80202756:	0000                	unimp
    80202758:	c9d9                	beqz	a1,802027ee <.LBB20_47>
    8020275a:	6108                	ld	a0,0(a0)
    8020275c:	8921                	andi	a0,a0,8
    8020275e:	00355593          	srli	a1,a0,0x3
    80202762:	f6b40ba3          	sb	a1,-137(s0)
    80202766:	16051563          	bnez	a0,802028d0 <.LBB20_56+0xa>
    8020276a:	f7043c23          	sd	a6,-136(s0)

000000008020276e <.LBB20_40>:
    8020276e:	0000b517          	auipc	a0,0xb
    80202772:	f5250513          	addi	a0,a0,-174 # 8020d6c0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.70>
    80202776:	faa43423          	sd	a0,-88(s0)
    8020277a:	4505                	li	a0,1
    8020277c:	faa43823          	sd	a0,-80(s0)
    80202780:	fa043c23          	sd	zero,-72(s0)

0000000080202784 <.LBB20_41>:
    80202784:	0000b517          	auipc	a0,0xb
    80202788:	f4c50513          	addi	a0,a0,-180 # 8020d6d0 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.71>
    8020278c:	fca43423          	sd	a0,-56(s0)
    80202790:	fc043823          	sd	zero,-48(s0)

0000000080202794 <.LBB20_42>:
    80202794:	0000b597          	auipc	a1,0xb
    80202798:	49c58593          	addi	a1,a1,1180 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    8020279c:	f7840513          	addi	a0,s0,-136
    802027a0:	fa840613          	addi	a2,s0,-88
    802027a4:	00008097          	auipc	ra,0x8
    802027a8:	b36080e7          	jalr	-1226(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    802027ac:	18051963          	bnez	a0,8020293e <.LBB20_61>
    802027b0:	00190513          	addi	a0,s2,1
    802027b4:	0310000f          	fence	rw,w
    802027b8:	00a9bc23          	sd	a0,24(s3)
    802027bc:	79a6                	ld	s3,104(sp)
    802027be:	7946                	ld	s2,112(sp)
    802027c0:	74e6                	ld	s1,120(sp)
    802027c2:	640a                	ld	s0,128(sp)
    802027c4:	60aa                	ld	ra,136(sp)
    802027c6:	6149                	addi	sp,sp,144
    802027c8:	8082                	ret

00000000802027ca <.LBB20_43>:
    802027ca:	0000b517          	auipc	a0,0xb
    802027ce:	ae650513          	addi	a0,a0,-1306 # 8020d2b0 <anon.cb68d3a9003f2ce0aa95ebc54f168231.0.llvm.7843020515658130474>

00000000802027d2 <.LBB20_44>:
    802027d2:	0000b617          	auipc	a2,0xb
    802027d6:	e3e60613          	addi	a2,a2,-450 # 8020d610 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.62>
    802027da:	a015                	j	802027fe <.LBB20_48+0x8>

00000000802027dc <.LBB20_45>:
    802027dc:	0000b517          	auipc	a0,0xb
    802027e0:	ad450513          	addi	a0,a0,-1324 # 8020d2b0 <anon.cb68d3a9003f2ce0aa95ebc54f168231.0.llvm.7843020515658130474>

00000000802027e4 <.LBB20_46>:
    802027e4:	0000b617          	auipc	a2,0xb
    802027e8:	e6460613          	addi	a2,a2,-412 # 8020d648 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.65>
    802027ec:	a809                	j	802027fe <.LBB20_48+0x8>

00000000802027ee <.LBB20_47>:
    802027ee:	0000b517          	auipc	a0,0xb
    802027f2:	ac250513          	addi	a0,a0,-1342 # 8020d2b0 <anon.cb68d3a9003f2ce0aa95ebc54f168231.0.llvm.7843020515658130474>

00000000802027f6 <.LBB20_48>:
    802027f6:	0000b617          	auipc	a2,0xb
    802027fa:	e8260613          	addi	a2,a2,-382 # 8020d678 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.67>
    802027fe:	02b00593          	li	a1,43
    80202802:	00007097          	auipc	ra,0x7
    80202806:	000080e7          	jalr	ra # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    8020280a:	0000                	unimp
    8020280c:	f7740513          	addi	a0,s0,-137
    80202810:	f8a43c23          	sd	a0,-104(s0)

0000000080202814 <.LBB20_49>:
    80202814:	0000b517          	auipc	a0,0xb
    80202818:	e1450513          	addi	a0,a0,-492 # 8020d628 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.63>
    8020281c:	faa43023          	sd	a0,-96(s0)
    80202820:	f9840513          	addi	a0,s0,-104
    80202824:	f6a43c23          	sd	a0,-136(s0)

0000000080202828 <.LBB20_50>:
    80202828:	00001517          	auipc	a0,0x1
    8020282c:	2aa50513          	addi	a0,a0,682 # 80203ad2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbeae5384057dd4eaE>
    80202830:	f8a43023          	sd	a0,-128(s0)
    80202834:	fa040593          	addi	a1,s0,-96
    80202838:	f8b43423          	sd	a1,-120(s0)
    8020283c:	f8a43823          	sd	a0,-112(s0)

0000000080202840 <.LBB20_51>:
    80202840:	0000b517          	auipc	a0,0xb
    80202844:	d8850513          	addi	a0,a0,-632 # 8020d5c8 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.48>
    80202848:	faa43423          	sd	a0,-88(s0)
    8020284c:	450d                	li	a0,3
    8020284e:	faa43823          	sd	a0,-80(s0)
    80202852:	fa043c23          	sd	zero,-72(s0)
    80202856:	f7840513          	addi	a0,s0,-136
    8020285a:	fca43423          	sd	a0,-56(s0)
    8020285e:	4509                	li	a0,2
    80202860:	fca43823          	sd	a0,-48(s0)

0000000080202864 <.LBB20_52>:
    80202864:	0000b597          	auipc	a1,0xb
    80202868:	dcc58593          	addi	a1,a1,-564 # 8020d630 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.64>
    8020286c:	a0d1                	j	80202930 <.LBB20_60+0x8>
    8020286e:	f7740513          	addi	a0,s0,-137
    80202872:	f8a43c23          	sd	a0,-104(s0)

0000000080202876 <.LBB20_53>:
    80202876:	0000b517          	auipc	a0,0xb
    8020287a:	db250513          	addi	a0,a0,-590 # 8020d628 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.63>
    8020287e:	faa43023          	sd	a0,-96(s0)
    80202882:	f9840513          	addi	a0,s0,-104
    80202886:	f6a43c23          	sd	a0,-136(s0)

000000008020288a <.LBB20_54>:
    8020288a:	00001517          	auipc	a0,0x1
    8020288e:	24850513          	addi	a0,a0,584 # 80203ad2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbeae5384057dd4eaE>
    80202892:	f8a43023          	sd	a0,-128(s0)
    80202896:	fa040593          	addi	a1,s0,-96
    8020289a:	f8b43423          	sd	a1,-120(s0)
    8020289e:	f8a43823          	sd	a0,-112(s0)

00000000802028a2 <.LBB20_55>:
    802028a2:	0000b517          	auipc	a0,0xb
    802028a6:	d2650513          	addi	a0,a0,-730 # 8020d5c8 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.48>
    802028aa:	faa43423          	sd	a0,-88(s0)
    802028ae:	450d                	li	a0,3
    802028b0:	faa43823          	sd	a0,-80(s0)
    802028b4:	fa043c23          	sd	zero,-72(s0)
    802028b8:	f7840513          	addi	a0,s0,-136
    802028bc:	fca43423          	sd	a0,-56(s0)
    802028c0:	4509                	li	a0,2
    802028c2:	fca43823          	sd	a0,-48(s0)

00000000802028c6 <.LBB20_56>:
    802028c6:	0000b597          	auipc	a1,0xb
    802028ca:	d9a58593          	addi	a1,a1,-614 # 8020d660 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.66>
    802028ce:	a08d                	j	80202930 <.LBB20_60+0x8>
    802028d0:	f7740513          	addi	a0,s0,-137
    802028d4:	f8a43c23          	sd	a0,-104(s0)

00000000802028d8 <.LBB20_57>:
    802028d8:	0000b517          	auipc	a0,0xb
    802028dc:	d5050513          	addi	a0,a0,-688 # 8020d628 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.63>
    802028e0:	faa43023          	sd	a0,-96(s0)
    802028e4:	f9840513          	addi	a0,s0,-104
    802028e8:	f6a43c23          	sd	a0,-136(s0)

00000000802028ec <.LBB20_58>:
    802028ec:	00001517          	auipc	a0,0x1
    802028f0:	1e650513          	addi	a0,a0,486 # 80203ad2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbeae5384057dd4eaE>
    802028f4:	f8a43023          	sd	a0,-128(s0)
    802028f8:	fa040593          	addi	a1,s0,-96
    802028fc:	f8b43423          	sd	a1,-120(s0)
    80202900:	f8a43823          	sd	a0,-112(s0)

0000000080202904 <.LBB20_59>:
    80202904:	0000b517          	auipc	a0,0xb
    80202908:	cc450513          	addi	a0,a0,-828 # 8020d5c8 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.48>
    8020290c:	faa43423          	sd	a0,-88(s0)
    80202910:	450d                	li	a0,3
    80202912:	faa43823          	sd	a0,-80(s0)
    80202916:	fa043c23          	sd	zero,-72(s0)
    8020291a:	f7840513          	addi	a0,s0,-136
    8020291e:	fca43423          	sd	a0,-56(s0)
    80202922:	4509                	li	a0,2
    80202924:	fca43823          	sd	a0,-48(s0)

0000000080202928 <.LBB20_60>:
    80202928:	0000b597          	auipc	a1,0xb
    8020292c:	d6858593          	addi	a1,a1,-664 # 8020d690 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.68>
    80202930:	fa840513          	addi	a0,s0,-88
    80202934:	00007097          	auipc	ra,0x7
    80202938:	f3a080e7          	jalr	-198(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000008020293e <.LBB20_61>:
    8020293e:	0000b517          	auipc	a0,0xb
    80202942:	32250513          	addi	a0,a0,802 # 8020dc60 <anon.32e88238351ec6f13c95b6c2887136c4.2.llvm.7602298555204137961>

0000000080202946 <.LBB20_62>:
    80202946:	0000b697          	auipc	a3,0xb
    8020294a:	34a68693          	addi	a3,a3,842 # 8020dc90 <anon.32e88238351ec6f13c95b6c2887136c4.3.llvm.7602298555204137961>

000000008020294e <.LBB20_63>:
    8020294e:	0000b717          	auipc	a4,0xb
    80202952:	4aa70713          	addi	a4,a4,1194 # 8020ddf8 <anon.32e88238351ec6f13c95b6c2887136c4.12.llvm.7602298555204137961>
    80202956:	fa840613          	addi	a2,s0,-88
    8020295a:	02b00593          	li	a1,43
    8020295e:	00007097          	auipc	ra,0x7
    80202962:	e44080e7          	jalr	-444(ra) # 802097a2 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000080202968 <_ZN2os2mm10page_table9PageTable15find_pte_create17h4ab841306376e39aE>:
    80202968:	7131                	addi	sp,sp,-192
    8020296a:	fd06                	sd	ra,184(sp)
    8020296c:	f922                	sd	s0,176(sp)
    8020296e:	f526                	sd	s1,168(sp)
    80202970:	f14a                	sd	s2,160(sp)
    80202972:	ed4e                	sd	s3,152(sp)
    80202974:	e952                	sd	s4,144(sp)
    80202976:	e556                	sd	s5,136(sp)
    80202978:	e15a                	sd	s6,128(sp)
    8020297a:	fcde                	sd	s7,120(sp)
    8020297c:	f8e2                	sd	s8,112(sp)
    8020297e:	f4e6                	sd	s9,104(sp)
    80202980:	f0ea                	sd	s10,96(sp)
    80202982:	0180                	addi	s0,sp,192

0000000080202984 <.LBB6_16>:
    80202984:	00221617          	auipc	a2,0x221
    80202988:	80460613          	addi	a2,a2,-2044 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    8020298c:	6214                	ld	a3,0(a2)
    8020298e:	4715                	li	a4,5
    80202990:	892e                	mv	s2,a1
    80202992:	89aa                	mv	s3,a0
    80202994:	0ee6e363          	bltu	a3,a4,80202a7a <.LBB6_23+0x16>
    80202998:	6208                	ld	a0,0(a2)
    8020299a:	4591                	li	a1,4

000000008020299c <.LBB6_17>:
    8020299c:	00009497          	auipc	s1,0x9
    802029a0:	21448493          	addi	s1,s1,532 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    802029a4:	06a5f363          	bgeu	a1,a0,80202a0a <.LBB6_20+0x18>
    802029a8:	0009b503          	ld	a0,0(s3)
    802029ac:	55fd                	li	a1,-1
    802029ae:	15fe                	slli	a1,a1,0x3f
    802029b0:	00b56a33          	or	s4,a0,a1
    802029b4:	f9443c23          	sd	s4,-104(s0)
    802029b8:	f9840513          	addi	a0,s0,-104
    802029bc:	f4a43023          	sd	a0,-192(s0)
    802029c0:	f4943423          	sd	s1,-184(s0)

00000000802029c4 <.LBB6_18>:
    802029c4:	0000b517          	auipc	a0,0xb
    802029c8:	1ec50513          	addi	a0,a0,492 # 8020dbb0 <anon.f2b1b5a509bdedcdd67207527f4f0965.33.llvm.1283535708719223612>
    802029cc:	f6a43423          	sd	a0,-152(s0)
    802029d0:	4505                	li	a0,1
    802029d2:	f6a43823          	sd	a0,-144(s0)

00000000802029d6 <.LBB6_19>:
    802029d6:	0000b597          	auipc	a1,0xb
    802029da:	1ea58593          	addi	a1,a1,490 # 8020dbc0 <anon.f2b1b5a509bdedcdd67207527f4f0965.34.llvm.1283535708719223612>
    802029de:	f6b43c23          	sd	a1,-136(s0)
    802029e2:	f8a43023          	sd	a0,-128(s0)
    802029e6:	f4040593          	addi	a1,s0,-192
    802029ea:	f8b43423          	sd	a1,-120(s0)
    802029ee:	f8a43823          	sd	a0,-112(s0)

00000000802029f2 <.LBB6_20>:
    802029f2:	0000b617          	auipc	a2,0xb
    802029f6:	20660613          	addi	a2,a2,518 # 8020dbf8 <anon.f2b1b5a509bdedcdd67207527f4f0965.35.llvm.1283535708719223612>
    802029fa:	f6840513          	addi	a0,s0,-152
    802029fe:	4595                	li	a1,5
    80202a00:	00007097          	auipc	ra,0x7
    80202a04:	ba4080e7          	jalr	-1116(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80202a08:	a039                	j	80202a16 <.LBB6_20+0x24>
    80202a0a:	0009b503          	ld	a0,0(s3)
    80202a0e:	55fd                	li	a1,-1
    80202a10:	15fe                	slli	a1,a1,0x3f
    80202a12:	00b56a33          	or	s4,a0,a1
    80202a16:	f7443023          	sd	s4,-160(s0)
    80202a1a:	f9243c23          	sd	s2,-104(s0)
    80202a1e:	f6040513          	addi	a0,s0,-160
    80202a22:	f4a43023          	sd	a0,-192(s0)
    80202a26:	f4943423          	sd	s1,-184(s0)
    80202a2a:	f9840513          	addi	a0,s0,-104
    80202a2e:	f4a43823          	sd	a0,-176(s0)
    80202a32:	f4943c23          	sd	s1,-168(s0)

0000000080202a36 <.LBB6_21>:
    80202a36:	0000b517          	auipc	a0,0xb
    80202a3a:	e3a50513          	addi	a0,a0,-454 # 8020d870 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.5>
    80202a3e:	f6a43423          	sd	a0,-152(s0)
    80202a42:	4509                	li	a0,2
    80202a44:	f6a43823          	sd	a0,-144(s0)

0000000080202a48 <.LBB6_22>:
    80202a48:	0000b597          	auipc	a1,0xb
    80202a4c:	e4858593          	addi	a1,a1,-440 # 8020d890 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.6>
    80202a50:	f6b43c23          	sd	a1,-136(s0)
    80202a54:	f8a43023          	sd	a0,-128(s0)
    80202a58:	f4040593          	addi	a1,s0,-192
    80202a5c:	f8b43423          	sd	a1,-120(s0)
    80202a60:	f8a43823          	sd	a0,-112(s0)

0000000080202a64 <.LBB6_23>:
    80202a64:	0000b617          	auipc	a2,0xb
    80202a68:	eb460613          	addi	a2,a2,-332 # 8020d918 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.8>
    80202a6c:	f6840513          	addi	a0,s0,-152
    80202a70:	4595                	li	a1,5
    80202a72:	00007097          	auipc	ra,0x7
    80202a76:	b32080e7          	jalr	-1230(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80202a7a:	1ff97513          	andi	a0,s2,511
    80202a7e:	f6a43c23          	sd	a0,-136(s0)
    80202a82:	00995513          	srli	a0,s2,0x9
    80202a86:	1ff57513          	andi	a0,a0,511
    80202a8a:	f6a43823          	sd	a0,-144(s0)
    80202a8e:	01295513          	srli	a0,s2,0x12
    80202a92:	1ff57513          	andi	a0,a0,511
    80202a96:	f6a43423          	sd	a0,-152(s0)
    80202a9a:	0009b583          	ld	a1,0(s3)
    80202a9e:	00898913          	addi	s2,s3,8
    80202aa2:	4b21                	li	s6,8
    80202aa4:	02000a93          	li	s5,32
    80202aa8:	4605                	li	a2,1
    80202aaa:	1632                	slli	a2,a2,0x2c
    80202aac:	fff60b93          	addi	s7,a2,-1
    80202ab0:	f6840c13          	addi	s8,s0,-152
    80202ab4:	20000c93          	li	s9,512
    80202ab8:	a035                	j	80202ae4 <.LBB6_23+0x80>
    80202aba:	0089b503          	ld	a0,8(s3)
    80202abe:	058e                	slli	a1,a1,0x3
    80202ac0:	952e                	add	a0,a0,a1
    80202ac2:	01453023          	sd	s4,0(a0)
    80202ac6:	0189b503          	ld	a0,24(s3)
    80202aca:	0505                	addi	a0,a0,1
    80202acc:	00a9bc23          	sd	a0,24(s3)
    80202ad0:	608c                	ld	a1,0(s1)
    80202ad2:	016c0533          	add	a0,s8,s6
    80202ad6:	6108                	ld	a0,0(a0)
    80202ad8:	81a9                	srli	a1,a1,0xa
    80202ada:	0175f5b3          	and	a1,a1,s7
    80202ade:	8b6a                	mv	s6,s10
    80202ae0:	07957763          	bgeu	a0,s9,80202b4e <.LBB6_24>
    80202ae4:	05b2                	slli	a1,a1,0xc
    80202ae6:	050e                	slli	a0,a0,0x3
    80202ae8:	008b0d13          	addi	s10,s6,8
    80202aec:	00a584b3          	add	s1,a1,a0
    80202af0:	055d0063          	beq	s10,s5,80202b30 <.LBB6_23+0xcc>
    80202af4:	608c                	ld	a1,0(s1)
    80202af6:	0015f513          	andi	a0,a1,1
    80202afa:	fd61                	bnez	a0,80202ad2 <.LBB6_23+0x6e>
    80202afc:	00001097          	auipc	ra,0x1
    80202b00:	468080e7          	jalr	1128(ra) # 80203f64 <_ZN2os2mm15frame_allocator11frame_alloc17ha7fa5a63181a930bE>
    80202b04:	c125                	beqz	a0,80202b64 <.LBB6_25>
    80202b06:	8a2e                	mv	s4,a1
    80202b08:	00a59513          	slli	a0,a1,0xa
    80202b0c:	00156513          	ori	a0,a0,1
    80202b10:	e088                	sd	a0,0(s1)
    80202b12:	0189b583          	ld	a1,24(s3)
    80202b16:	0109b503          	ld	a0,16(s3)
    80202b1a:	faa590e3          	bne	a1,a0,80202aba <.LBB6_23+0x56>
    80202b1e:	4605                	li	a2,1
    80202b20:	854a                	mv	a0,s2
    80202b22:	00001097          	auipc	ra,0x1
    80202b26:	072080e7          	jalr	114(ra) # 80203b94 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE>
    80202b2a:	0189b583          	ld	a1,24(s3)
    80202b2e:	b771                	j	80202aba <.LBB6_23+0x56>
    80202b30:	8526                	mv	a0,s1
    80202b32:	7d06                	ld	s10,96(sp)
    80202b34:	7ca6                	ld	s9,104(sp)
    80202b36:	7c46                	ld	s8,112(sp)
    80202b38:	7be6                	ld	s7,120(sp)
    80202b3a:	6b0a                	ld	s6,128(sp)
    80202b3c:	6aaa                	ld	s5,136(sp)
    80202b3e:	6a4a                	ld	s4,144(sp)
    80202b40:	69ea                	ld	s3,152(sp)
    80202b42:	790a                	ld	s2,160(sp)
    80202b44:	74aa                	ld	s1,168(sp)
    80202b46:	744a                	ld	s0,176(sp)
    80202b48:	70ea                	ld	ra,184(sp)
    80202b4a:	6129                	addi	sp,sp,192
    80202b4c:	8082                	ret

0000000080202b4e <.LBB6_24>:
    80202b4e:	0000b617          	auipc	a2,0xb
    80202b52:	e0260613          	addi	a2,a2,-510 # 8020d950 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.10>
    80202b56:	20000593          	li	a1,512
    80202b5a:	00007097          	auipc	ra,0x7
    80202b5e:	cd4080e7          	jalr	-812(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000080202b64 <.LBB6_25>:
    80202b64:	0000b517          	auipc	a0,0xb
    80202b68:	c8350513          	addi	a0,a0,-893 # 8020d7e7 <anon.f2b1b5a509bdedcdd67207527f4f0965.0.llvm.1283535708719223612>

0000000080202b6c <.LBB6_26>:
    80202b6c:	0000b617          	auipc	a2,0xb
    80202b70:	dfc60613          	addi	a2,a2,-516 # 8020d968 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.11>
    80202b74:	02b00593          	li	a1,43
    80202b78:	00007097          	auipc	ra,0x7
    80202b7c:	c8a080e7          	jalr	-886(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000080202b82 <_ZN2os2mm10page_table9PageTable3map17h2562fa28cb2e5ceeE>:
    80202b82:	7131                	addi	sp,sp,-192
    80202b84:	fd06                	sd	ra,184(sp)
    80202b86:	f922                	sd	s0,176(sp)
    80202b88:	f526                	sd	s1,168(sp)
    80202b8a:	f14a                	sd	s2,160(sp)
    80202b8c:	ed4e                	sd	s3,152(sp)
    80202b8e:	e952                	sd	s4,144(sp)
    80202b90:	e556                	sd	s5,136(sp)
    80202b92:	0180                	addi	s0,sp,192
    80202b94:	f4b43423          	sd	a1,-184(s0)

0000000080202b98 <.LBB8_10>:
    80202b98:	00220717          	auipc	a4,0x220
    80202b9c:	5f070713          	addi	a4,a4,1520 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    80202ba0:	631c                	ld	a5,0(a4)
    80202ba2:	4495                	li	s1,5
    80202ba4:	8936                	mv	s2,a3
    80202ba6:	89b2                	mv	s3,a2
    80202ba8:	8a2a                	mv	s4,a0
    80202baa:	0e97ed63          	bltu	a5,s1,80202ca4 <.LBB8_17+0x1a>
    80202bae:	6310                	ld	a2,0(a4)
    80202bb0:	557d                	li	a0,-1
    80202bb2:	157e                	slli	a0,a0,0x3f
    80202bb4:	4691                	li	a3,4

0000000080202bb6 <.LBB8_11>:
    80202bb6:	00009497          	auipc	s1,0x9
    80202bba:	ffa48493          	addi	s1,s1,-6 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80202bbe:	06c6f363          	bgeu	a3,a2,80202c24 <.LBB8_14+0x1c>
    80202bc2:	000a3583          	ld	a1,0(s4)
    80202bc6:	00a5eab3          	or	s5,a1,a0
    80202bca:	fd543023          	sd	s5,-64(s0)
    80202bce:	fc040513          	addi	a0,s0,-64
    80202bd2:	f4a43823          	sd	a0,-176(s0)
    80202bd6:	f4943c23          	sd	s1,-168(s0)

0000000080202bda <.LBB8_12>:
    80202bda:	0000b517          	auipc	a0,0xb
    80202bde:	fd650513          	addi	a0,a0,-42 # 8020dbb0 <anon.f2b1b5a509bdedcdd67207527f4f0965.33.llvm.1283535708719223612>
    80202be2:	f8a43823          	sd	a0,-112(s0)
    80202be6:	4505                	li	a0,1
    80202be8:	f8a43c23          	sd	a0,-104(s0)

0000000080202bec <.LBB8_13>:
    80202bec:	0000b597          	auipc	a1,0xb
    80202bf0:	fd458593          	addi	a1,a1,-44 # 8020dbc0 <anon.f2b1b5a509bdedcdd67207527f4f0965.34.llvm.1283535708719223612>
    80202bf4:	fab43023          	sd	a1,-96(s0)
    80202bf8:	faa43423          	sd	a0,-88(s0)
    80202bfc:	f5040593          	addi	a1,s0,-176
    80202c00:	fab43823          	sd	a1,-80(s0)
    80202c04:	faa43c23          	sd	a0,-72(s0)

0000000080202c08 <.LBB8_14>:
    80202c08:	0000b617          	auipc	a2,0xb
    80202c0c:	ff060613          	addi	a2,a2,-16 # 8020dbf8 <anon.f2b1b5a509bdedcdd67207527f4f0965.35.llvm.1283535708719223612>
    80202c10:	f9040513          	addi	a0,s0,-112
    80202c14:	4595                	li	a1,5
    80202c16:	00007097          	auipc	ra,0x7
    80202c1a:	98e080e7          	jalr	-1650(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80202c1e:	f4843583          	ld	a1,-184(s0)
    80202c22:	a029                	j	80202c2c <.LBB8_14+0x24>
    80202c24:	000a3603          	ld	a2,0(s4)
    80202c28:	00a66ab3          	or	s5,a2,a0
    80202c2c:	f9543023          	sd	s5,-128(s0)
    80202c30:	f8b43423          	sd	a1,-120(s0)
    80202c34:	fd343023          	sd	s3,-64(s0)
    80202c38:	f8040513          	addi	a0,s0,-128
    80202c3c:	f8a43823          	sd	a0,-112(s0)
    80202c40:	f8943c23          	sd	s1,-104(s0)
    80202c44:	f8840513          	addi	a0,s0,-120
    80202c48:	faa43023          	sd	a0,-96(s0)
    80202c4c:	fa943423          	sd	s1,-88(s0)
    80202c50:	fc040513          	addi	a0,s0,-64
    80202c54:	faa43823          	sd	a0,-80(s0)
    80202c58:	fa943c23          	sd	s1,-72(s0)

0000000080202c5c <.LBB8_15>:
    80202c5c:	0000b517          	auipc	a0,0xb
    80202c60:	d7450513          	addi	a0,a0,-652 # 8020d9d0 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.17>
    80202c64:	f4a43823          	sd	a0,-176(s0)
    80202c68:	450d                	li	a0,3
    80202c6a:	f4a43c23          	sd	a0,-168(s0)

0000000080202c6e <.LBB8_16>:
    80202c6e:	0000b597          	auipc	a1,0xb
    80202c72:	d9258593          	addi	a1,a1,-622 # 8020da00 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.18>
    80202c76:	f6b43023          	sd	a1,-160(s0)
    80202c7a:	f6a43423          	sd	a0,-152(s0)
    80202c7e:	f9040593          	addi	a1,s0,-112
    80202c82:	f6b43823          	sd	a1,-144(s0)
    80202c86:	f6a43c23          	sd	a0,-136(s0)

0000000080202c8a <.LBB8_17>:
    80202c8a:	0000b617          	auipc	a2,0xb
    80202c8e:	e1e60613          	addi	a2,a2,-482 # 8020daa8 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.19>
    80202c92:	f5040513          	addi	a0,s0,-176
    80202c96:	4595                	li	a1,5
    80202c98:	00007097          	auipc	ra,0x7
    80202c9c:	90c080e7          	jalr	-1780(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80202ca0:	f4843583          	ld	a1,-184(s0)
    80202ca4:	8552                	mv	a0,s4
    80202ca6:	00000097          	auipc	ra,0x0
    80202caa:	cc2080e7          	jalr	-830(ra) # 80202968 <_ZN2os2mm10page_table9PageTable15find_pte_create17h4ab841306376e39aE>
    80202cae:	c905                	beqz	a0,80202cde <.LBB8_18>
    80202cb0:	85aa                	mv	a1,a0
    80202cb2:	00054503          	lbu	a0,0(a0)
    80202cb6:	8905                	andi	a0,a0,1
    80202cb8:	e131                	bnez	a0,80202cfc <.LBB8_19+0x16>
    80202cba:	00196513          	ori	a0,s2,1
    80202cbe:	00a99613          	slli	a2,s3,0xa
    80202cc2:	0ff57513          	andi	a0,a0,255
    80202cc6:	8e49                	or	a2,a2,a0
    80202cc8:	4505                	li	a0,1
    80202cca:	e190                	sd	a2,0(a1)
    80202ccc:	6aaa                	ld	s5,136(sp)
    80202cce:	6a4a                	ld	s4,144(sp)
    80202cd0:	69ea                	ld	s3,152(sp)
    80202cd2:	790a                	ld	s2,160(sp)
    80202cd4:	74aa                	ld	s1,168(sp)
    80202cd6:	744a                	ld	s0,176(sp)
    80202cd8:	70ea                	ld	ra,184(sp)
    80202cda:	6129                	addi	sp,sp,192
    80202cdc:	8082                	ret

0000000080202cde <.LBB8_18>:
    80202cde:	0000b517          	auipc	a0,0xb
    80202ce2:	b0950513          	addi	a0,a0,-1271 # 8020d7e7 <anon.f2b1b5a509bdedcdd67207527f4f0965.0.llvm.1283535708719223612>

0000000080202ce6 <.LBB8_19>:
    80202ce6:	0000b617          	auipc	a2,0xb
    80202cea:	dfa60613          	addi	a2,a2,-518 # 8020dae0 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20>
    80202cee:	02b00593          	li	a1,43
    80202cf2:	00007097          	auipc	ra,0x7
    80202cf6:	b10080e7          	jalr	-1264(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    80202cfa:	0000                	unimp
    80202cfc:	f4840513          	addi	a0,s0,-184
    80202d00:	f4a43823          	sd	a0,-176(s0)

0000000080202d04 <.LBB8_20>:
    80202d04:	00000517          	auipc	a0,0x0
    80202d08:	79650513          	addi	a0,a0,1942 # 8020349a <_ZN65_$LT$os..mm..address..VirtPageNum$u20$as$u20$core..fmt..Debug$GT$3fmt17haac55a57cbe0682cE>
    80202d0c:	f4a43c23          	sd	a0,-168(s0)

0000000080202d10 <.LBB8_21>:
    80202d10:	0000b517          	auipc	a0,0xb
    80202d14:	e4850513          	addi	a0,a0,-440 # 8020db58 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.23>
    80202d18:	f8a43823          	sd	a0,-112(s0)
    80202d1c:	4509                	li	a0,2
    80202d1e:	f8a43c23          	sd	a0,-104(s0)
    80202d22:	fa043023          	sd	zero,-96(s0)
    80202d26:	f5040513          	addi	a0,s0,-176
    80202d2a:	faa43823          	sd	a0,-80(s0)
    80202d2e:	4505                	li	a0,1
    80202d30:	faa43c23          	sd	a0,-72(s0)

0000000080202d34 <.LBB8_22>:
    80202d34:	0000b597          	auipc	a1,0xb
    80202d38:	e4458593          	addi	a1,a1,-444 # 8020db78 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.24>
    80202d3c:	f9040513          	addi	a0,s0,-112
    80202d40:	00007097          	auipc	ra,0x7
    80202d44:	b2e080e7          	jalr	-1234(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000080202d4a <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h2d4edcacfac59e33E.llvm.7602298555204137961>:
    80202d4a:	1141                	addi	sp,sp,-16
    80202d4c:	e406                	sd	ra,8(sp)
    80202d4e:	e022                	sd	s0,0(sp)
    80202d50:	0800                	addi	s0,sp,16
    80202d52:	6402                	ld	s0,0(sp)
    80202d54:	60a2                	ld	ra,8(sp)
    80202d56:	0141                	addi	sp,sp,16
    80202d58:	8082                	ret

0000000080202d5a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd81dcdfa19ff1f24E.llvm.7602298555204137961>:
    80202d5a:	1101                	addi	sp,sp,-32
    80202d5c:	ec06                	sd	ra,24(sp)
    80202d5e:	e822                	sd	s0,16(sp)
    80202d60:	1000                	addi	s0,sp,32
    80202d62:	0005851b          	sext.w	a0,a1
    80202d66:	08000613          	li	a2,128
    80202d6a:	fe042623          	sw	zero,-20(s0)
    80202d6e:	00c57663          	bgeu	a0,a2,80202d7a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd81dcdfa19ff1f24E.llvm.7602298555204137961+0x20>
    80202d72:	feb40623          	sb	a1,-20(s0)
    80202d76:	4585                	li	a1,1
    80202d78:	a841                	j	80202e08 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd81dcdfa19ff1f24E.llvm.7602298555204137961+0xae>
    80202d7a:	00b5d51b          	srliw	a0,a1,0xb
    80202d7e:	ed19                	bnez	a0,80202d9c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd81dcdfa19ff1f24E.llvm.7602298555204137961+0x42>
    80202d80:	0065d513          	srli	a0,a1,0x6
    80202d84:	0c056513          	ori	a0,a0,192
    80202d88:	fea40623          	sb	a0,-20(s0)
    80202d8c:	03f5f513          	andi	a0,a1,63
    80202d90:	08056513          	ori	a0,a0,128
    80202d94:	fea406a3          	sb	a0,-19(s0)
    80202d98:	4589                	li	a1,2
    80202d9a:	a0bd                	j	80202e08 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd81dcdfa19ff1f24E.llvm.7602298555204137961+0xae>
    80202d9c:	0105d51b          	srliw	a0,a1,0x10
    80202da0:	e51d                	bnez	a0,80202dce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd81dcdfa19ff1f24E.llvm.7602298555204137961+0x74>
    80202da2:	00c5d51b          	srliw	a0,a1,0xc
    80202da6:	0e056513          	ori	a0,a0,224
    80202daa:	fea40623          	sb	a0,-20(s0)
    80202dae:	0065d51b          	srliw	a0,a1,0x6
    80202db2:	03f57513          	andi	a0,a0,63
    80202db6:	08056513          	ori	a0,a0,128
    80202dba:	fea406a3          	sb	a0,-19(s0)
    80202dbe:	03f5f513          	andi	a0,a1,63
    80202dc2:	08056513          	ori	a0,a0,128
    80202dc6:	fea40723          	sb	a0,-18(s0)
    80202dca:	458d                	li	a1,3
    80202dcc:	a835                	j	80202e08 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd81dcdfa19ff1f24E.llvm.7602298555204137961+0xae>
    80202dce:	0125d51b          	srliw	a0,a1,0x12
    80202dd2:	0f056513          	ori	a0,a0,240
    80202dd6:	fea40623          	sb	a0,-20(s0)
    80202dda:	00c5d51b          	srliw	a0,a1,0xc
    80202dde:	03f57513          	andi	a0,a0,63
    80202de2:	08056513          	ori	a0,a0,128
    80202de6:	fea406a3          	sb	a0,-19(s0)
    80202dea:	0065d51b          	srliw	a0,a1,0x6
    80202dee:	03f57513          	andi	a0,a0,63
    80202df2:	08056513          	ori	a0,a0,128
    80202df6:	fea40723          	sb	a0,-18(s0)
    80202dfa:	03f5f513          	andi	a0,a1,63
    80202dfe:	08056513          	ori	a0,a0,128
    80202e02:	fea407a3          	sb	a0,-17(s0)
    80202e06:	4591                	li	a1,4
    80202e08:	fec40513          	addi	a0,s0,-20
    80202e0c:	00000097          	auipc	ra,0x0
    80202e10:	1e0080e7          	jalr	480(ra) # 80202fec <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE>
    80202e14:	4501                	li	a0,0
    80202e16:	6442                	ld	s0,16(sp)
    80202e18:	60e2                	ld	ra,24(sp)
    80202e1a:	6105                	addi	sp,sp,32
    80202e1c:	8082                	ret

0000000080202e1e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h0dd407175765c4bcE.llvm.7602298555204137961>:
    80202e1e:	715d                	addi	sp,sp,-80
    80202e20:	e486                	sd	ra,72(sp)
    80202e22:	e0a2                	sd	s0,64(sp)
    80202e24:	0880                	addi	s0,sp,80
    80202e26:	6108                	ld	a0,0(a0)
    80202e28:	7590                	ld	a2,40(a1)
    80202e2a:	7194                	ld	a3,32(a1)
    80202e2c:	faa43c23          	sd	a0,-72(s0)
    80202e30:	fec43423          	sd	a2,-24(s0)
    80202e34:	fed43023          	sd	a3,-32(s0)
    80202e38:	6d88                	ld	a0,24(a1)
    80202e3a:	6990                	ld	a2,16(a1)
    80202e3c:	6594                	ld	a3,8(a1)
    80202e3e:	618c                	ld	a1,0(a1)
    80202e40:	fca43c23          	sd	a0,-40(s0)
    80202e44:	fcc43823          	sd	a2,-48(s0)
    80202e48:	fcd43423          	sd	a3,-56(s0)
    80202e4c:	fcb43023          	sd	a1,-64(s0)

0000000080202e50 <.LBB5_1>:
    80202e50:	0000b597          	auipc	a1,0xb
    80202e54:	de058593          	addi	a1,a1,-544 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80202e58:	fb840513          	addi	a0,s0,-72
    80202e5c:	fc040613          	addi	a2,s0,-64
    80202e60:	00007097          	auipc	ra,0x7
    80202e64:	47a080e7          	jalr	1146(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80202e68:	6406                	ld	s0,64(sp)
    80202e6a:	60a6                	ld	ra,72(sp)
    80202e6c:	6161                	addi	sp,sp,80
    80202e6e:	8082                	ret

0000000080202e70 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h41300a4199980630E.llvm.7602298555204137961>:
    80202e70:	1141                	addi	sp,sp,-16
    80202e72:	e406                	sd	ra,8(sp)
    80202e74:	e022                	sd	s0,0(sp)
    80202e76:	0800                	addi	s0,sp,16
    80202e78:	852e                	mv	a0,a1
    80202e7a:	85b2                	mv	a1,a2
    80202e7c:	00000097          	auipc	ra,0x0
    80202e80:	170080e7          	jalr	368(ra) # 80202fec <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE>
    80202e84:	4501                	li	a0,0
    80202e86:	6402                	ld	s0,0(sp)
    80202e88:	60a2                	ld	ra,8(sp)
    80202e8a:	0141                	addi	sp,sp,16
    80202e8c:	8082                	ret

0000000080202e8e <_ZN5alloc11collections5btree8navigate10full_range17h891e0af8a48242b7E>:
    80202e8e:	715d                	addi	sp,sp,-80
    80202e90:	e486                	sd	ra,72(sp)
    80202e92:	e0a2                	sd	s0,64(sp)
    80202e94:	0880                	addi	s0,sp,80
    80202e96:	0ba75883          	lhu	a7,186(a4)
    80202e9a:	0016b793          	seqz	a5,a3
    80202e9e:	c1a9                	beqz	a1,80202ee0 <_ZN5alloc11collections5btree8navigate10full_range17h891e0af8a48242b7E+0x52>
    80202ea0:	40b68833          	sub	a6,a3,a1
    80202ea4:	16fd                	addi	a3,a3,-1
    80202ea6:	8b85                	andi	a5,a5,1
    80202ea8:	ef95                	bnez	a5,80202ee4 <.LBB10_8>
    80202eaa:	00389793          	slli	a5,a7,0x3
    80202eae:	973e                	add	a4,a4,a5
    80202eb0:	6378                	ld	a4,192(a4)
    80202eb2:	6270                	ld	a2,192(a2)
    80202eb4:	0ba75883          	lhu	a7,186(a4)
    80202eb8:	15fd                	addi	a1,a1,-1
    80202eba:	0016b793          	seqz	a5,a3
    80202ebe:	16fd                	addi	a3,a3,-1
    80202ec0:	f1fd                	bnez	a1,80202ea6 <_ZN5alloc11collections5btree8navigate10full_range17h891e0af8a48242b7E+0x18>
    80202ec2:	c38d                	beqz	a5,80202ee4 <.LBB10_8>
    80202ec4:	00053023          	sd	zero,0(a0)
    80202ec8:	e510                	sd	a2,8(a0)
    80202eca:	00053823          	sd	zero,16(a0)
    80202ece:	01053c23          	sd	a6,24(a0)
    80202ed2:	f118                	sd	a4,32(a0)
    80202ed4:	03153423          	sd	a7,40(a0)
    80202ed8:	6406                	ld	s0,64(sp)
    80202eda:	60a6                	ld	ra,72(sp)
    80202edc:	6161                	addi	sp,sp,80
    80202ede:	8082                	ret
    80202ee0:	8836                	mv	a6,a3
    80202ee2:	f3ed                	bnez	a5,80202ec4 <_ZN5alloc11collections5btree8navigate10full_range17h891e0af8a48242b7E+0x36>

0000000080202ee4 <.LBB10_8>:
    80202ee4:	0000b517          	auipc	a0,0xb
    80202ee8:	e4c50513          	addi	a0,a0,-436 # 8020dd30 <.Lanon.32e88238351ec6f13c95b6c2887136c4.8>
    80202eec:	fea43023          	sd	a0,-32(s0)

0000000080202ef0 <.LBB10_9>:
    80202ef0:	00001517          	auipc	a0,0x1
    80202ef4:	c1250513          	addi	a0,a0,-1006 # 80203b02 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc8cc8fd690c16b4aE>
    80202ef8:	fea43423          	sd	a0,-24(s0)

0000000080202efc <.LBB10_10>:
    80202efc:	0000b517          	auipc	a0,0xb
    80202f00:	e0450513          	addi	a0,a0,-508 # 8020dd00 <.Lanon.32e88238351ec6f13c95b6c2887136c4.6>
    80202f04:	faa43823          	sd	a0,-80(s0)
    80202f08:	4505                	li	a0,1
    80202f0a:	faa43c23          	sd	a0,-72(s0)
    80202f0e:	fc043023          	sd	zero,-64(s0)
    80202f12:	fe040593          	addi	a1,s0,-32
    80202f16:	fcb43823          	sd	a1,-48(s0)
    80202f1a:	fca43c23          	sd	a0,-40(s0)

0000000080202f1e <.LBB10_11>:
    80202f1e:	0000b597          	auipc	a1,0xb
    80202f22:	eb258593          	addi	a1,a1,-334 # 8020ddd0 <.Lanon.32e88238351ec6f13c95b6c2887136c4.10>
    80202f26:	fb040513          	addi	a0,s0,-80
    80202f2a:	00007097          	auipc	ra,0x7
    80202f2e:	944080e7          	jalr	-1724(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000080202f34 <_ZN5alloc11collections5btree8navigate25next_kv_unchecked_dealloc17hb94dea03c824f2cbE>:
    80202f34:	7179                	addi	sp,sp,-48
    80202f36:	f406                	sd	ra,40(sp)
    80202f38:	f022                	sd	s0,32(sp)
    80202f3a:	ec26                	sd	s1,24(sp)
    80202f3c:	e84a                	sd	s2,16(sp)
    80202f3e:	e44e                	sd	s3,8(sp)
    80202f40:	e052                	sd	s4,0(sp)
    80202f42:	1800                	addi	s0,sp,48
    80202f44:	6594                	ld	a3,8(a1)
    80202f46:	0105b983          	ld	s3,16(a1)
    80202f4a:	0ba6d703          	lhu	a4,186(a3)
    80202f4e:	6190                	ld	a2,0(a1)
    80202f50:	892a                	mv	s2,a0
    80202f52:	02e9f263          	bgeu	s3,a4,80202f76 <_ZN5alloc11collections5btree8navigate25next_kv_unchecked_dealloc17hb94dea03c824f2cbE+0x42>
    80202f56:	84b6                	mv	s1,a3
    80202f58:	8a32                	mv	s4,a2
    80202f5a:	01493023          	sd	s4,0(s2)
    80202f5e:	00993423          	sd	s1,8(s2)
    80202f62:	01393823          	sd	s3,16(s2)
    80202f66:	6a02                	ld	s4,0(sp)
    80202f68:	69a2                	ld	s3,8(sp)
    80202f6a:	6942                	ld	s2,16(sp)
    80202f6c:	64e2                	ld	s1,24(sp)
    80202f6e:	7402                	ld	s0,32(sp)
    80202f70:	70a2                	ld	ra,40(sp)
    80202f72:	6145                	addi	sp,sp,48
    80202f74:	8082                	ret
    80202f76:	a829                	j	80202f90 <_ZN5alloc11collections5btree8navigate25next_kv_unchecked_dealloc17hb94dea03c824f2cbE+0x5c>
    80202f78:	4621                	li	a2,8
    80202f7a:	8536                	mv	a0,a3
    80202f7c:	00002097          	auipc	ra,0x2
    80202f80:	176080e7          	jalr	374(ra) # 802050f2 <__rust_dealloc>
    80202f84:	0ba4d503          	lhu	a0,186(s1)
    80202f88:	86a6                	mv	a3,s1
    80202f8a:	8652                	mv	a2,s4
    80202f8c:	fca9e7e3          	bltu	s3,a0,80202f5a <_ZN5alloc11collections5btree8navigate25next_kv_unchecked_dealloc17hb94dea03c824f2cbE+0x26>
    80202f90:	6284                	ld	s1,0(a3)
    80202f92:	c489                	beqz	s1,80202f9c <_ZN5alloc11collections5btree8navigate25next_kv_unchecked_dealloc17hb94dea03c824f2cbE+0x68>
    80202f94:	0b86d983          	lhu	s3,184(a3)
    80202f98:	00160a13          	addi	s4,a2,1
    80202f9c:	0c000593          	li	a1,192
    80202fa0:	de61                	beqz	a2,80202f78 <_ZN5alloc11collections5btree8navigate25next_kv_unchecked_dealloc17hb94dea03c824f2cbE+0x44>
    80202fa2:	12000593          	li	a1,288
    80202fa6:	bfc9                	j	80202f78 <_ZN5alloc11collections5btree8navigate25next_kv_unchecked_dealloc17hb94dea03c824f2cbE+0x44>

0000000080202fa8 <_ZN5riscv8register6scause6Scause5cause17hef8ad4cff6534967E>:
    80202fa8:	1101                	addi	sp,sp,-32
    80202faa:	ec06                	sd	ra,24(sp)
    80202fac:	e822                	sd	s0,16(sp)
    80202fae:	e426                	sd	s1,8(sp)
    80202fb0:	1000                	addi	s0,sp,32
    80202fb2:	6104                	ld	s1,0(a0)
    80202fb4:	00006097          	auipc	ra,0x6
    80202fb8:	154080e7          	jalr	340(ra) # 80209108 <_ZN5riscv8register6scause6Scause4code17h35ab447f086279feE>
    80202fbc:	55fd                	li	a1,-1
    80202fbe:	0095da63          	bge	a1,s1,80202fd2 <_ZN5riscv8register6scause6Scause5cause17hef8ad4cff6534967E+0x2a>
    80202fc2:	00006097          	auipc	ra,0x6
    80202fc6:	004080e7          	jalr	4(ra) # 80208fc6 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE>
    80202fca:	0ff57593          	andi	a1,a0,255
    80202fce:	4505                	li	a0,1
    80202fd0:	a809                	j	80202fe2 <_ZN5riscv8register6scause6Scause5cause17hef8ad4cff6534967E+0x3a>
    80202fd2:	00006097          	auipc	ra,0x6
    80202fd6:	f4a080e7          	jalr	-182(ra) # 80208f1c <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E>
    80202fda:	85aa                	mv	a1,a0
    80202fdc:	4501                	li	a0,0
    80202fde:	0ff5f593          	andi	a1,a1,255
    80202fe2:	64a2                	ld	s1,8(sp)
    80202fe4:	6442                	ld	s0,16(sp)
    80202fe6:	60e2                	ld	ra,24(sp)
    80202fe8:	6105                	addi	sp,sp,32
    80202fea:	8082                	ret

0000000080202fec <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE>:
    80202fec:	1101                	addi	sp,sp,-32
    80202fee:	ec06                	sd	ra,24(sp)
    80202ff0:	e822                	sd	s0,16(sp)
    80202ff2:	e426                	sd	s1,8(sp)
    80202ff4:	1000                	addi	s0,sp,32
    80202ff6:	fe042223          	sw	zero,-28(s0)
    80202ffa:	18058c63          	beqz	a1,80203192 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x1a6>
    80202ffe:	86aa                	mv	a3,a0
    80203000:	00b50733          	add	a4,a0,a1
    80203004:	fe440813          	addi	a6,s0,-28
    80203008:	00186f93          	ori	t6,a6,1
    8020300c:	52fd                	li	t0,-1
    8020300e:	0e000313          	li	t1,224
    80203012:	0f000393          	li	t2,240
    80203016:	001c0e37          	lui	t3,0x1c0
    8020301a:	00110eb7          	lui	t4,0x110
    8020301e:	08000f13          	li	t5,128
    80203022:	a019                	j	80203028 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x3c>
    80203024:	16e68763          	beq	a3,a4,80203192 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x1a6>
    80203028:	00068603          	lb	a2,0(a3)
    8020302c:	00168593          	addi	a1,a3,1
    80203030:	0ff67513          	andi	a0,a2,255
    80203034:	00c2d863          	bge	t0,a2,80203044 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x58>
    80203038:	86ae                	mv	a3,a1
    8020303a:	fea40223          	sb	a0,-28(s0)
    8020303e:	4785                	li	a5,1
    80203040:	e3d9                	bnez	a5,802030c6 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xda>
    80203042:	b7cd                	j	80203024 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x38>
    80203044:	02e58e63          	beq	a1,a4,80203080 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x94>
    80203048:	0016c583          	lbu	a1,1(a3)
    8020304c:	0689                	addi	a3,a3,2
    8020304e:	03f5f613          	andi	a2,a1,63
    80203052:	01f57593          	andi	a1,a0,31
    80203056:	02656b63          	bltu	a0,t1,8020308c <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xa0>
    8020305a:	02e68d63          	beq	a3,a4,80203094 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xa8>
    8020305e:	0006c783          	lbu	a5,0(a3)
    80203062:	0685                	addi	a3,a3,1
    80203064:	03f7f793          	andi	a5,a5,63
    80203068:	061a                	slli	a2,a2,0x6
    8020306a:	8e5d                	or	a2,a2,a5
    8020306c:	02756a63          	bltu	a0,t2,802030a0 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xb4>
    80203070:	02e68c63          	beq	a3,a4,802030a8 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xbc>
    80203074:	0006c503          	lbu	a0,0(a3)
    80203078:	0685                	addi	a3,a3,1
    8020307a:	03f57513          	andi	a0,a0,63
    8020307e:	a035                	j	802030aa <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xbe>
    80203080:	4601                	li	a2,0
    80203082:	86ba                	mv	a3,a4
    80203084:	01f57593          	andi	a1,a0,31
    80203088:	fc6579e3          	bgeu	a0,t1,8020305a <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x6e>
    8020308c:	00659513          	slli	a0,a1,0x6
    80203090:	8d51                	or	a0,a0,a2
    80203092:	a025                	j	802030ba <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xce>
    80203094:	4781                	li	a5,0
    80203096:	86ba                	mv	a3,a4
    80203098:	061a                	slli	a2,a2,0x6
    8020309a:	8e5d                	or	a2,a2,a5
    8020309c:	fc757ae3          	bgeu	a0,t2,80203070 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x84>
    802030a0:	00c59513          	slli	a0,a1,0xc
    802030a4:	8d51                	or	a0,a0,a2
    802030a6:	a811                	j	802030ba <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xce>
    802030a8:	4501                	li	a0,0
    802030aa:	05ca                	slli	a1,a1,0x12
    802030ac:	01c5f5b3          	and	a1,a1,t3
    802030b0:	061a                	slli	a2,a2,0x6
    802030b2:	8dd1                	or	a1,a1,a2
    802030b4:	8d4d                	or	a0,a0,a1
    802030b6:	0dd50e63          	beq	a0,t4,80203192 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x1a6>
    802030ba:	03e57e63          	bgeu	a0,t5,802030f6 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x10a>
    802030be:	fea40223          	sb	a0,-28(s0)
    802030c2:	4785                	li	a5,1
    802030c4:	d3a5                	beqz	a5,80203024 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x38>
    802030c6:	0ff57513          	andi	a0,a0,255
    802030ca:	4885                	li	a7,1
    802030cc:	4581                	li	a1,0
    802030ce:	4601                	li	a2,0
    802030d0:	00000073          	ecall
    802030d4:	00f80533          	add	a0,a6,a5
    802030d8:	f4af86e3          	beq	t6,a0,80203024 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x38>
    802030dc:	17fd                	addi	a5,a5,-1
    802030de:	84fe                	mv	s1,t6
    802030e0:	0004c503          	lbu	a0,0(s1)
    802030e4:	4885                	li	a7,1
    802030e6:	4581                	li	a1,0
    802030e8:	4601                	li	a2,0
    802030ea:	00000073          	ecall
    802030ee:	17fd                	addi	a5,a5,-1
    802030f0:	0485                	addi	s1,s1,1
    802030f2:	f7fd                	bnez	a5,802030e0 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xf4>
    802030f4:	bf05                	j	80203024 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x38>
    802030f6:	00b55593          	srli	a1,a0,0xb
    802030fa:	e18d                	bnez	a1,8020311c <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x130>
    802030fc:	00655593          	srli	a1,a0,0x6
    80203100:	03f57513          	andi	a0,a0,63
    80203104:	fc05e593          	ori	a1,a1,-64
    80203108:	feb40223          	sb	a1,-28(s0)
    8020310c:	08056513          	ori	a0,a0,128
    80203110:	fea402a3          	sb	a0,-27(s0)
    80203114:	4789                	li	a5,2
    80203116:	852e                	mv	a0,a1
    80203118:	f7dd                	bnez	a5,802030c6 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xda>
    8020311a:	b729                	j	80203024 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x38>
    8020311c:	01055593          	srli	a1,a0,0x10
    80203120:	e98d                	bnez	a1,80203152 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x166>
    80203122:	00c55593          	srli	a1,a0,0xc
    80203126:	00655613          	srli	a2,a0,0x6
    8020312a:	03f57513          	andi	a0,a0,63
    8020312e:	fe05e593          	ori	a1,a1,-32
    80203132:	feb40223          	sb	a1,-28(s0)
    80203136:	03f67613          	andi	a2,a2,63
    8020313a:	08066613          	ori	a2,a2,128
    8020313e:	fec402a3          	sb	a2,-27(s0)
    80203142:	08056513          	ori	a0,a0,128
    80203146:	fea40323          	sb	a0,-26(s0)
    8020314a:	478d                	li	a5,3
    8020314c:	852e                	mv	a0,a1
    8020314e:	ffa5                	bnez	a5,802030c6 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xda>
    80203150:	bdd1                	j	80203024 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x38>
    80203152:	01255593          	srli	a1,a0,0x12
    80203156:	00c55613          	srli	a2,a0,0xc
    8020315a:	00655793          	srli	a5,a0,0x6
    8020315e:	03f57513          	andi	a0,a0,63
    80203162:	ff05e593          	ori	a1,a1,-16
    80203166:	feb40223          	sb	a1,-28(s0)
    8020316a:	03f67613          	andi	a2,a2,63
    8020316e:	08066613          	ori	a2,a2,128
    80203172:	fec402a3          	sb	a2,-27(s0)
    80203176:	03f7f613          	andi	a2,a5,63
    8020317a:	08066613          	ori	a2,a2,128
    8020317e:	fec40323          	sb	a2,-26(s0)
    80203182:	08056513          	ori	a0,a0,128
    80203186:	fea403a3          	sb	a0,-25(s0)
    8020318a:	4791                	li	a5,4
    8020318c:	852e                	mv	a0,a1
    8020318e:	ff85                	bnez	a5,802030c6 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0xda>
    80203190:	bd51                	j	80203024 <_ZN56_$LT$os..logging..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h6ceff79f579daa9cE+0x38>
    80203192:	64a2                	ld	s1,8(sp)
    80203194:	6442                	ld	s0,16(sp)
    80203196:	60e2                	ld	ra,24(sp)
    80203198:	6105                	addi	sp,sp,32
    8020319a:	8082                	ret

000000008020319c <_ZN54_$LT$os..logging..SimpleLogger$u20$as$u20$log..Log$GT$7enabled17hf596e5e18fc7b451E.llvm.7602298555204137961>:
    8020319c:	1141                	addi	sp,sp,-16
    8020319e:	e406                	sd	ra,8(sp)
    802031a0:	e022                	sd	s0,0(sp)
    802031a2:	0800                	addi	s0,sp,16
    802031a4:	4505                	li	a0,1
    802031a6:	6402                	ld	s0,0(sp)
    802031a8:	60a2                	ld	ra,8(sp)
    802031aa:	0141                	addi	sp,sp,16
    802031ac:	8082                	ret

00000000802031ae <_ZN54_$LT$os..logging..SimpleLogger$u20$as$u20$log..Log$GT$3log17hcd40a9601e2e4df9E.llvm.7602298555204137961>:
    802031ae:	7155                	addi	sp,sp,-208
    802031b0:	e586                	sd	ra,200(sp)
    802031b2:	e1a2                	sd	s0,192(sp)
    802031b4:	0980                	addi	s0,sp,208
    802031b6:	6188                	ld	a0,0(a1)
    802031b8:	f8a43023          	sd	a0,-128(s0)
    802031bc:	05e1                	addi	a1,a1,24
    802031be:	f8b43423          	sd	a1,-120(s0)
    802031c2:	f8040593          	addi	a1,s0,-128
    802031c6:	f6b43023          	sd	a1,-160(s0)

00000000802031ca <.LBB34_3>:
    802031ca:	00006597          	auipc	a1,0x6
    802031ce:	32458593          	addi	a1,a1,804 # 802094ee <_ZN49_$LT$log..Level$u20$as$u20$core..fmt..Display$GT$3fmt17h386784179059ff14E>
    802031d2:	f6b43423          	sd	a1,-152(s0)
    802031d6:	f8840593          	addi	a1,s0,-120
    802031da:	f6b43823          	sd	a1,-144(s0)

00000000802031de <.LBB34_4>:
    802031de:	00001597          	auipc	a1,0x1
    802031e2:	90c58593          	addi	a1,a1,-1780 # 80203aea <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1f72ffb2f6d9e089E>
    802031e6:	f6b43c23          	sd	a1,-136(s0)

00000000802031ea <.LBB34_5>:
    802031ea:	0000b597          	auipc	a1,0xb
    802031ee:	cae58593          	addi	a1,a1,-850 # 8020de98 <.Lanon.32e88238351ec6f13c95b6c2887136c4.22>
    802031f2:	f2b43823          	sd	a1,-208(s0)
    802031f6:	458d                	li	a1,3
    802031f8:	f2b43c23          	sd	a1,-200(s0)

00000000802031fc <.LBB34_6>:
    802031fc:	0000b617          	auipc	a2,0xb
    80203200:	ccc60613          	addi	a2,a2,-820 # 8020dec8 <.Lanon.32e88238351ec6f13c95b6c2887136c4.23>
    80203204:	f4c43023          	sd	a2,-192(s0)
    80203208:	4609                	li	a2,2
    8020320a:	f4c43423          	sd	a2,-184(s0)
    8020320e:	f6040693          	addi	a3,s0,-160
    80203212:	f4d43823          	sd	a3,-176(s0)
    80203216:	f4c43c23          	sd	a2,-168(s0)
    8020321a:	050e                	slli	a0,a0,0x3
    8020321c:	1561                	addi	a0,a0,-8
    8020321e:	4685                	li	a3,1
    80203220:	16a2                	slli	a3,a3,0x28
    80203222:	16e1                	addi	a3,a3,-8
    80203224:	8d75                	and	a0,a0,a3
    80203226:	02d106b7          	lui	a3,0x2d10
    8020322a:	1136869b          	addiw	a3,a3,275
    8020322e:	06b6                	slli	a3,a3,0xd
    80203230:	d1f68693          	addi	a3,a3,-737 # 2d0fd1f <.Lline_table_start0+0x2cf0806>
    80203234:	00a6d533          	srl	a0,a3,a0
    80203238:	faa40ba3          	sb	a0,-73(s0)
    8020323c:	fb740513          	addi	a0,s0,-73
    80203240:	f8a43823          	sd	a0,-112(s0)

0000000080203244 <.LBB34_7>:
    80203244:	00009517          	auipc	a0,0x9
    80203248:	b3c50513          	addi	a0,a0,-1220 # 8020bd80 <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17ha48a39a8a097abc0E>
    8020324c:	f8a43c23          	sd	a0,-104(s0)
    80203250:	f3040513          	addi	a0,s0,-208
    80203254:	faa43023          	sd	a0,-96(s0)

0000000080203258 <.LBB34_8>:
    80203258:	00007517          	auipc	a0,0x7
    8020325c:	05050513          	addi	a0,a0,80 # 8020a2a8 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>
    80203260:	faa43423          	sd	a0,-88(s0)
    80203264:	fc040513          	addi	a0,s0,-64
    80203268:	faa43c23          	sd	a0,-72(s0)

000000008020326c <.LBB34_9>:
    8020326c:	0000b517          	auipc	a0,0xb
    80203270:	bf450513          	addi	a0,a0,-1036 # 8020de60 <.Lanon.32e88238351ec6f13c95b6c2887136c4.18>
    80203274:	fca43023          	sd	a0,-64(s0)
    80203278:	fcb43423          	sd	a1,-56(s0)
    8020327c:	fc043823          	sd	zero,-48(s0)
    80203280:	f9040513          	addi	a0,s0,-112
    80203284:	fea43023          	sd	a0,-32(s0)
    80203288:	fec43423          	sd	a2,-24(s0)

000000008020328c <.LBB34_10>:
    8020328c:	0000b597          	auipc	a1,0xb
    80203290:	9a458593          	addi	a1,a1,-1628 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80203294:	fb840513          	addi	a0,s0,-72
    80203298:	fc040613          	addi	a2,s0,-64
    8020329c:	00007097          	auipc	ra,0x7
    802032a0:	03e080e7          	jalr	62(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    802032a4:	e509                	bnez	a0,802032ae <.LBB34_11>
    802032a6:	640e                	ld	s0,192(sp)
    802032a8:	60ae                	ld	ra,200(sp)
    802032aa:	6169                	addi	sp,sp,208
    802032ac:	8082                	ret

00000000802032ae <.LBB34_11>:
    802032ae:	0000b517          	auipc	a0,0xb
    802032b2:	9b250513          	addi	a0,a0,-1614 # 8020dc60 <anon.32e88238351ec6f13c95b6c2887136c4.2.llvm.7602298555204137961>

00000000802032b6 <.LBB34_12>:
    802032b6:	0000b697          	auipc	a3,0xb
    802032ba:	9da68693          	addi	a3,a3,-1574 # 8020dc90 <anon.32e88238351ec6f13c95b6c2887136c4.3.llvm.7602298555204137961>

00000000802032be <.LBB34_13>:
    802032be:	0000b717          	auipc	a4,0xb
    802032c2:	b3a70713          	addi	a4,a4,-1222 # 8020ddf8 <anon.32e88238351ec6f13c95b6c2887136c4.12.llvm.7602298555204137961>
    802032c6:	fc040613          	addi	a2,s0,-64
    802032ca:	02b00593          	li	a1,43
    802032ce:	00006097          	auipc	ra,0x6
    802032d2:	4d4080e7          	jalr	1236(ra) # 802097a2 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000802032d8 <_ZN54_$LT$os..logging..SimpleLogger$u20$as$u20$log..Log$GT$5flush17h9a42e89d9cb967edE.llvm.7602298555204137961>:
    802032d8:	1141                	addi	sp,sp,-16
    802032da:	e406                	sd	ra,8(sp)
    802032dc:	e022                	sd	s0,0(sp)
    802032de:	0800                	addi	s0,sp,16
    802032e0:	6402                	ld	s0,0(sp)
    802032e2:	60a2                	ld	ra,8(sp)
    802032e4:	0141                	addi	sp,sp,16
    802032e6:	8082                	ret

00000000802032e8 <_ZN2os4trap4init17h7d466adadc835482E>:
    802032e8:	1141                	addi	sp,sp,-16
    802032ea:	e406                	sd	ra,8(sp)
    802032ec:	e022                	sd	s0,0(sp)
    802032ee:	0800                	addi	s0,sp,16

00000000802032f0 <.LBB37_1>:
    802032f0:	00000517          	auipc	a0,0x0
    802032f4:	01450513          	addi	a0,a0,20 # 80203304 <trap_from_kernel>
    802032f8:	10551073          	csrw	stvec,a0
    802032fc:	6402                	ld	s0,0(sp)
    802032fe:	60a2                	ld	ra,8(sp)
    80203300:	0141                	addi	sp,sp,16
    80203302:	8082                	ret

0000000080203304 <trap_from_kernel>:
    80203304:	7119                	addi	sp,sp,-128
    80203306:	fc86                	sd	ra,120(sp)
    80203308:	f8a2                	sd	s0,112(sp)
    8020330a:	0100                	addi	s0,sp,128
    8020330c:	14202573          	csrr	a0,scause
    80203310:	fea43023          	sd	a0,-32(s0)
    80203314:	fe040513          	addi	a0,s0,-32
    80203318:	00000097          	auipc	ra,0x0
    8020331c:	c90080e7          	jalr	-880(ra) # 80202fa8 <_ZN5riscv8register6scause6Scause5cause17hef8ad4cff6534967E>
    80203320:	fca40c23          	sb	a0,-40(s0)
    80203324:	fcb40ca3          	sb	a1,-39(s0)
    80203328:	14102573          	csrr	a0,sepc
    8020332c:	fea43423          	sd	a0,-24(s0)
    80203330:	fd840513          	addi	a0,s0,-40
    80203334:	faa43c23          	sd	a0,-72(s0)

0000000080203338 <.LBB40_1>:
    80203338:	00006517          	auipc	a0,0x6
    8020333c:	dea50513          	addi	a0,a0,-534 # 80209122 <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17h5debf91c28ede675E>
    80203340:	fca43023          	sd	a0,-64(s0)
    80203344:	fe840513          	addi	a0,s0,-24
    80203348:	fca43423          	sd	a0,-56(s0)

000000008020334c <.LBB40_2>:
    8020334c:	00009517          	auipc	a0,0x9
    80203350:	86450513          	addi	a0,a0,-1948 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80203354:	fca43823          	sd	a0,-48(s0)

0000000080203358 <.LBB40_3>:
    80203358:	0000b517          	auipc	a0,0xb
    8020335c:	c8050513          	addi	a0,a0,-896 # 8020dfd8 <.Lanon.32e88238351ec6f13c95b6c2887136c4.44>
    80203360:	f8a43423          	sd	a0,-120(s0)
    80203364:	4509                	li	a0,2
    80203366:	f8a43823          	sd	a0,-112(s0)

000000008020336a <.LBB40_4>:
    8020336a:	0000b597          	auipc	a1,0xb
    8020336e:	bce58593          	addi	a1,a1,-1074 # 8020df38 <.Lanon.32e88238351ec6f13c95b6c2887136c4.37>
    80203372:	f8b43c23          	sd	a1,-104(s0)
    80203376:	faa43023          	sd	a0,-96(s0)
    8020337a:	fb840593          	addi	a1,s0,-72
    8020337e:	fab43423          	sd	a1,-88(s0)
    80203382:	faa43823          	sd	a0,-80(s0)

0000000080203386 <.LBB40_5>:
    80203386:	0000b597          	auipc	a1,0xb
    8020338a:	c7258593          	addi	a1,a1,-910 # 8020dff8 <.Lanon.32e88238351ec6f13c95b6c2887136c4.45>
    8020338e:	f8840513          	addi	a0,s0,-120
    80203392:	00006097          	auipc	ra,0x6
    80203396:	4dc080e7          	jalr	1244(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000008020339c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2a5944b1709b6e2cE>:
    8020339c:	7139                	addi	sp,sp,-64
    8020339e:	fc06                	sd	ra,56(sp)
    802033a0:	f822                	sd	s0,48(sp)
    802033a2:	f426                	sd	s1,40(sp)
    802033a4:	f04a                	sd	s2,32(sp)
    802033a6:	ec4e                	sd	s3,24(sp)
    802033a8:	0080                	addi	s0,sp,64
    802033aa:	6104                	ld	s1,0(a0)
    802033ac:	852e                	mv	a0,a1
    802033ae:	00848993          	addi	s3,s1,8

00000000802033b2 <.LBB0_1>:
    802033b2:	0000b597          	auipc	a1,0xb
    802033b6:	d9e58593          	addi	a1,a1,-610 # 8020e150 <.Lanon.93f8f94179db6f373a864e59d65dab14.33>
    802033ba:	462d                	li	a2,11
    802033bc:	00007097          	auipc	ra,0x7
    802033c0:	66c080e7          	jalr	1644(ra) # 8020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>
    802033c4:	fcb43423          	sd	a1,-56(s0)
    802033c8:	fca43023          	sd	a0,-64(s0)
    802033cc:	fc943823          	sd	s1,-48(s0)

00000000802033d0 <.LBB0_2>:
    802033d0:	0000b597          	auipc	a1,0xb
    802033d4:	d8b58593          	addi	a1,a1,-629 # 8020e15b <.Lanon.93f8f94179db6f373a864e59d65dab14.34>

00000000802033d8 <.LBB0_3>:
    802033d8:	0000b497          	auipc	s1,0xb
    802033dc:	d8848493          	addi	s1,s1,-632 # 8020e160 <.Lanon.93f8f94179db6f373a864e59d65dab14.35>
    802033e0:	fc040913          	addi	s2,s0,-64
    802033e4:	fd040693          	addi	a3,s0,-48
    802033e8:	4605                	li	a2,1
    802033ea:	854a                	mv	a0,s2
    802033ec:	8726                	mv	a4,s1
    802033ee:	00006097          	auipc	ra,0x6
    802033f2:	5ec080e7          	jalr	1516(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802033f6:	fd343823          	sd	s3,-48(s0)

00000000802033fa <.LBB0_4>:
    802033fa:	0000b597          	auipc	a1,0xb
    802033fe:	d8658593          	addi	a1,a1,-634 # 8020e180 <.Lanon.93f8f94179db6f373a864e59d65dab14.36>
    80203402:	fd040693          	addi	a3,s0,-48
    80203406:	4605                	li	a2,1
    80203408:	854a                	mv	a0,s2
    8020340a:	8726                	mv	a4,s1
    8020340c:	00006097          	auipc	ra,0x6
    80203410:	5ce080e7          	jalr	1486(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80203414:	854a                	mv	a0,s2
    80203416:	00006097          	auipc	ra,0x6
    8020341a:	720080e7          	jalr	1824(ra) # 80209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>
    8020341e:	69e2                	ld	s3,24(sp)
    80203420:	7902                	ld	s2,32(sp)
    80203422:	74a2                	ld	s1,40(sp)
    80203424:	7442                	ld	s0,48(sp)
    80203426:	70e2                	ld	ra,56(sp)
    80203428:	6121                	addi	sp,sp,64
    8020342a:	8082                	ret

000000008020342c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85e0dd8ea6e411e3E>:
    8020342c:	715d                	addi	sp,sp,-80
    8020342e:	e486                	sd	ra,72(sp)
    80203430:	e0a2                	sd	s0,64(sp)
    80203432:	0880                	addi	s0,sp,80
    80203434:	6110                	ld	a2,0(a0)
    80203436:	852e                	mv	a0,a1
    80203438:	fec43023          	sd	a2,-32(s0)

000000008020343c <.LBB1_1>:
    8020343c:	00008597          	auipc	a1,0x8
    80203440:	77458593          	addi	a1,a1,1908 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80203444:	feb43423          	sd	a1,-24(s0)

0000000080203448 <.LBB1_2>:
    80203448:	0000b597          	auipc	a1,0xb
    8020344c:	bc858593          	addi	a1,a1,-1080 # 8020e010 <.Lanon.93f8f94179db6f373a864e59d65dab14.15>
    80203450:	fab43823          	sd	a1,-80(s0)
    80203454:	4585                	li	a1,1
    80203456:	fab43c23          	sd	a1,-72(s0)

000000008020345a <.LBB1_3>:
    8020345a:	0000b617          	auipc	a2,0xb
    8020345e:	bc660613          	addi	a2,a2,-1082 # 8020e020 <.Lanon.93f8f94179db6f373a864e59d65dab14.16>
    80203462:	fcc43023          	sd	a2,-64(s0)
    80203466:	fcb43423          	sd	a1,-56(s0)
    8020346a:	fe040613          	addi	a2,s0,-32
    8020346e:	fcc43823          	sd	a2,-48(s0)
    80203472:	fcb43c23          	sd	a1,-40(s0)
    80203476:	fb040593          	addi	a1,s0,-80
    8020347a:	00007097          	auipc	ra,0x7
    8020347e:	564080e7          	jalr	1380(ra) # 8020a9de <_ZN4core3fmt9Formatter9write_fmt17hda8a61c24e520600E>
    80203482:	6406                	ld	s0,64(sp)
    80203484:	60a6                	ld	ra,72(sp)
    80203486:	6161                	addi	sp,sp,80
    80203488:	8082                	ret

000000008020348a <_ZN4core3ptr53drop_in_place$LT$$RF$os..mm..address..VirtPageNum$GT$17hbe10473884f34c81E>:
    8020348a:	1141                	addi	sp,sp,-16
    8020348c:	e406                	sd	ra,8(sp)
    8020348e:	e022                	sd	s0,0(sp)
    80203490:	0800                	addi	s0,sp,16
    80203492:	6402                	ld	s0,0(sp)
    80203494:	60a2                	ld	ra,8(sp)
    80203496:	0141                	addi	sp,sp,16
    80203498:	8082                	ret

000000008020349a <_ZN65_$LT$os..mm..address..VirtPageNum$u20$as$u20$core..fmt..Debug$GT$3fmt17haac55a57cbe0682cE>:
    8020349a:	715d                	addi	sp,sp,-80
    8020349c:	e486                	sd	ra,72(sp)
    8020349e:	e0a2                	sd	s0,64(sp)
    802034a0:	0880                	addi	s0,sp,80
    802034a2:	862e                	mv	a2,a1
    802034a4:	fea43023          	sd	a0,-32(s0)

00000000802034a8 <.LBB12_1>:
    802034a8:	00008517          	auipc	a0,0x8
    802034ac:	70850513          	addi	a0,a0,1800 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    802034b0:	fea43423          	sd	a0,-24(s0)

00000000802034b4 <.LBB12_2>:
    802034b4:	0000b517          	auipc	a0,0xb
    802034b8:	b5c50513          	addi	a0,a0,-1188 # 8020e010 <.Lanon.93f8f94179db6f373a864e59d65dab14.15>
    802034bc:	faa43823          	sd	a0,-80(s0)
    802034c0:	4505                	li	a0,1
    802034c2:	faa43c23          	sd	a0,-72(s0)

00000000802034c6 <.LBB12_3>:
    802034c6:	0000b597          	auipc	a1,0xb
    802034ca:	b5a58593          	addi	a1,a1,-1190 # 8020e020 <.Lanon.93f8f94179db6f373a864e59d65dab14.16>
    802034ce:	fcb43023          	sd	a1,-64(s0)
    802034d2:	fca43423          	sd	a0,-56(s0)
    802034d6:	fe040593          	addi	a1,s0,-32
    802034da:	fcb43823          	sd	a1,-48(s0)
    802034de:	fca43c23          	sd	a0,-40(s0)
    802034e2:	fb040593          	addi	a1,s0,-80
    802034e6:	8532                	mv	a0,a2
    802034e8:	00007097          	auipc	ra,0x7
    802034ec:	4f6080e7          	jalr	1270(ra) # 8020a9de <_ZN4core3fmt9Formatter9write_fmt17hda8a61c24e520600E>
    802034f0:	6406                	ld	s0,64(sp)
    802034f2:	60a6                	ld	ra,72(sp)
    802034f4:	6161                	addi	sp,sp,80
    802034f6:	8082                	ret

00000000802034f8 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E>:
    802034f8:	7179                	addi	sp,sp,-48
    802034fa:	f406                	sd	ra,40(sp)
    802034fc:	f022                	sd	s0,32(sp)
    802034fe:	ec26                	sd	s1,24(sp)
    80203500:	e84a                	sd	s2,16(sp)
    80203502:	e44e                	sd	s3,8(sp)
    80203504:	e052                	sd	s4,0(sp)
    80203506:	1800                	addi	s0,sp,48
    80203508:	892a                	mv	s2,a0
    8020350a:	00053983          	ld	s3,0(a0)
    8020350e:	0389b503          	ld	a0,56(s3)
    80203512:	cd19                	beqz	a0,80203530 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0x38>
    80203514:	0289b583          	ld	a1,40(s3)
    80203518:	00351493          	slli	s1,a0,0x3
    8020351c:	6188                	ld	a0,0(a1)
    8020351e:	00858a13          	addi	s4,a1,8
    80203522:	00001097          	auipc	ra,0x1
    80203526:	b9e080e7          	jalr	-1122(ra) # 802040c0 <_ZN2os2mm15frame_allocator13frame_dealloc17h4828e963a0fceefbE>
    8020352a:	14e1                	addi	s1,s1,-8
    8020352c:	85d2                	mv	a1,s4
    8020352e:	f4fd                	bnez	s1,8020351c <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0x24>
    80203530:	0309b503          	ld	a0,48(s3)
    80203534:	c919                	beqz	a0,8020354a <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0x52>
    80203536:	00351593          	slli	a1,a0,0x3
    8020353a:	c981                	beqz	a1,8020354a <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0x52>
    8020353c:	0289b503          	ld	a0,40(s3)
    80203540:	4621                	li	a2,8
    80203542:	00002097          	auipc	ra,0x2
    80203546:	bb0080e7          	jalr	-1104(ra) # 802050f2 <__rust_dealloc>
    8020354a:	0509b503          	ld	a0,80(s3)
    8020354e:	c11d                	beqz	a0,80203574 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0x7c>
    80203550:	0409b583          	ld	a1,64(s3)
    80203554:	01058a13          	addi	s4,a1,16
    80203558:	03000593          	li	a1,48
    8020355c:	02b504b3          	mul	s1,a0,a1
    80203560:	8552                	mv	a0,s4
    80203562:	00000097          	auipc	ra,0x0
    80203566:	3ac080e7          	jalr	940(ra) # 8020390e <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E>
    8020356a:	fd048493          	addi	s1,s1,-48
    8020356e:	030a0a13          	addi	s4,s4,48
    80203572:	f4fd                	bnez	s1,80203560 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0x68>
    80203574:	0489b503          	ld	a0,72(s3)
    80203578:	cd09                	beqz	a0,80203592 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0x9a>
    8020357a:	03000593          	li	a1,48
    8020357e:	02b505b3          	mul	a1,a0,a1
    80203582:	c981                	beqz	a1,80203592 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0x9a>
    80203584:	0409b503          	ld	a0,64(s3)
    80203588:	4621                	li	a2,8
    8020358a:	00002097          	auipc	ra,0x2
    8020358e:	b68080e7          	jalr	-1176(ra) # 802050f2 <__rust_dealloc>
    80203592:	00093503          	ld	a0,0(s2)
    80203596:	55fd                	li	a1,-1
    80203598:	02b50b63          	beq	a0,a1,802035ce <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0xd6>
    8020359c:	00850593          	addi	a1,a0,8
    802035a0:	4605                	li	a2,1
    802035a2:	40c006b3          	neg	a3,a2
    802035a6:	02d5b5af          	amoadd.d.rl	a1,a3,(a1)
    802035aa:	02c59263          	bne	a1,a2,802035ce <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E+0xd6>
    802035ae:	05800593          	li	a1,88
    802035b2:	4621                	li	a2,8
    802035b4:	0230000f          	fence	r,rw
    802035b8:	6a02                	ld	s4,0(sp)
    802035ba:	69a2                	ld	s3,8(sp)
    802035bc:	6942                	ld	s2,16(sp)
    802035be:	64e2                	ld	s1,24(sp)
    802035c0:	7402                	ld	s0,32(sp)
    802035c2:	70a2                	ld	ra,40(sp)
    802035c4:	6145                	addi	sp,sp,48
    802035c6:	00002317          	auipc	t1,0x2
    802035ca:	b2c30067          	jr	-1236(t1) # 802050f2 <__rust_dealloc>
    802035ce:	6a02                	ld	s4,0(sp)
    802035d0:	69a2                	ld	s3,8(sp)
    802035d2:	6942                	ld	s2,16(sp)
    802035d4:	64e2                	ld	s1,24(sp)
    802035d6:	7402                	ld	s0,32(sp)
    802035d8:	70a2                	ld	ra,40(sp)
    802035da:	6145                	addi	sp,sp,48
    802035dc:	8082                	ret

00000000802035de <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8a611755a0ebc84eE>:
    802035de:	1141                	addi	sp,sp,-16
    802035e0:	e406                	sd	ra,8(sp)
    802035e2:	e022                	sd	s0,0(sp)
    802035e4:	0800                	addi	s0,sp,16
    802035e6:	6108                	ld	a0,0(a0)
    802035e8:	55fd                	li	a1,-1
    802035ea:	02b50663          	beq	a0,a1,80203616 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8a611755a0ebc84eE+0x38>
    802035ee:	00850593          	addi	a1,a0,8
    802035f2:	4605                	li	a2,1
    802035f4:	40c006b3          	neg	a3,a2
    802035f8:	02d5b5af          	amoadd.d.rl	a1,a3,(a1)
    802035fc:	00c59d63          	bne	a1,a2,80203616 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8a611755a0ebc84eE+0x38>
    80203600:	45c1                	li	a1,16
    80203602:	4621                	li	a2,8
    80203604:	0230000f          	fence	r,rw
    80203608:	6402                	ld	s0,0(sp)
    8020360a:	60a2                	ld	ra,8(sp)
    8020360c:	0141                	addi	sp,sp,16
    8020360e:	00002317          	auipc	t1,0x2
    80203612:	ae430067          	jr	-1308(t1) # 802050f2 <__rust_dealloc>
    80203616:	6402                	ld	s0,0(sp)
    80203618:	60a2                	ld	ra,8(sp)
    8020361a:	0141                	addi	sp,sp,16
    8020361c:	8082                	ret

000000008020361e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E>:
    8020361e:	7135                	addi	sp,sp,-160
    80203620:	ed06                	sd	ra,152(sp)
    80203622:	e922                	sd	s0,144(sp)
    80203624:	e526                	sd	s1,136(sp)
    80203626:	e14a                	sd	s2,128(sp)
    80203628:	fcce                	sd	s3,120(sp)
    8020362a:	f8d2                	sd	s4,112(sp)
    8020362c:	f4d6                	sd	s5,104(sp)
    8020362e:	f0da                	sd	s6,96(sp)
    80203630:	1100                	addi	s0,sp,160
    80203632:	6104                	ld	s1,0(a0)
    80203634:	852e                	mv	a0,a1
    80203636:	00007097          	auipc	ra,0x7
    8020363a:	470080e7          	jalr	1136(ra) # 8020aaa6 <_ZN4core3fmt9Formatter9debug_map17h0cfd7b986aa1471bE>
    8020363e:	f6b43423          	sd	a1,-152(s0)
    80203642:	f6a43023          	sd	a0,-160(s0)
    80203646:	6490                	ld	a2,8(s1)
    80203648:	ca05                	beqz	a2,80203678 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0x5a>
    8020364a:	608c                	ld	a1,0(s1)
    8020364c:	f7840513          	addi	a0,s0,-136
    80203650:	86ae                	mv	a3,a1
    80203652:	8732                	mv	a4,a2
    80203654:	00000097          	auipc	ra,0x0
    80203658:	83a080e7          	jalr	-1990(ra) # 80202e8e <_ZN5alloc11collections5btree8navigate10full_range17h891e0af8a48242b7E>
    8020365c:	f7843683          	ld	a3,-136(s0)
    80203660:	f8043583          	ld	a1,-128(s0)
    80203664:	f8843803          	ld	a6,-120(s0)
    80203668:	f9043703          	ld	a4,-112(s0)
    8020366c:	f9843503          	ld	a0,-104(s0)
    80203670:	fa043783          	ld	a5,-96(s0)
    80203674:	6890                	ld	a2,16(s1)
    80203676:	a021                	j	8020367e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0x60>
    80203678:	4501                	li	a0,0
    8020367a:	4581                	li	a1,0
    8020367c:	4601                	li	a2,0
    8020367e:	f6d43c23          	sd	a3,-136(s0)
    80203682:	f8b43023          	sd	a1,-128(s0)
    80203686:	f9043423          	sd	a6,-120(s0)
    8020368a:	f8e43823          	sd	a4,-112(s0)
    8020368e:	f8a43c23          	sd	a0,-104(s0)
    80203692:	faf43023          	sd	a5,-96(s0)
    80203696:	fac43423          	sd	a2,-88(s0)
    8020369a:	14060c63          	beqz	a2,802037f2 <.LBB0_35+0xa8>
    8020369e:	4501                	li	a0,0
    802036a0:	167d                	addi	a2,a2,-1
    802036a2:	fac43423          	sd	a2,-88(s0)
    802036a6:	c199                	beqz	a1,802036ac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0x8e>
    802036a8:	f7840513          	addi	a0,s0,-136
    802036ac:	6518                	ld	a4,8(a0)
    802036ae:	690c                	ld	a1,16(a0)
    802036b0:	0ba75603          	lhu	a2,186(a4)
    802036b4:	6114                	ld	a3,0(a0)
    802036b6:	00c5f763          	bgeu	a1,a2,802036c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xa6>
    802036ba:	863a                	mv	a2,a4
    802036bc:	00158793          	addi	a5,a1,1
    802036c0:	ee99                	bnez	a3,802036de <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xc0>
    802036c2:	a815                	j	802036f6 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xd8>
    802036c4:	6310                	ld	a2,0(a4)
    802036c6:	c605                	beqz	a2,802036ee <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xd0>
    802036c8:	0b875583          	lhu	a1,184(a4)
    802036cc:	0ba65783          	lhu	a5,186(a2)
    802036d0:	0685                	addi	a3,a3,1
    802036d2:	8732                	mv	a4,a2
    802036d4:	fef5f8e3          	bgeu	a1,a5,802036c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xa6>
    802036d8:	00158793          	addi	a5,a1,1
    802036dc:	ce89                	beqz	a3,802036f6 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xd8>
    802036de:	00379713          	slli	a4,a5,0x3
    802036e2:	9732                	add	a4,a4,a2
    802036e4:	6378                	ld	a4,192(a4)
    802036e6:	16fd                	addi	a3,a3,-1
    802036e8:	fef5                	bnez	a3,802036e4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xc6>
    802036ea:	4781                	li	a5,0
    802036ec:	a031                	j	802036f8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xda>
    802036ee:	4601                	li	a2,0
    802036f0:	00158793          	addi	a5,a1,1
    802036f4:	f6ed                	bnez	a3,802036de <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94256124c9fccf73E+0xc0>
    802036f6:	8732                	mv	a4,a2
    802036f8:	058e                	slli	a1,a1,0x3
    802036fa:	95b2                	add	a1,a1,a2
    802036fc:	00858613          	addi	a2,a1,8
    80203700:	06058593          	addi	a1,a1,96
    80203704:	00053023          	sd	zero,0(a0)
    80203708:	e518                	sd	a4,8(a0)
    8020370a:	e91c                	sd	a5,16(a0)
    8020370c:	fac43823          	sd	a2,-80(s0)
    80203710:	fab43c23          	sd	a1,-72(s0)

0000000080203714 <.LBB0_32>:
    80203714:	0000b617          	auipc	a2,0xb
    80203718:	b1460613          	addi	a2,a2,-1260 # 8020e228 <.Lanon.672c38a7988119262d91fd2bf01ce91d.2>

000000008020371c <.LBB0_33>:
    8020371c:	0000b717          	auipc	a4,0xb
    80203720:	b2c70713          	addi	a4,a4,-1236 # 8020e248 <.Lanon.672c38a7988119262d91fd2bf01ce91d.3>
    80203724:	f6040513          	addi	a0,s0,-160
    80203728:	fb040593          	addi	a1,s0,-80
    8020372c:	fb840693          	addi	a3,s0,-72
    80203730:	00006097          	auipc	ra,0x6
    80203734:	6de080e7          	jalr	1758(ra) # 80209e0e <_ZN4core3fmt8builders8DebugMap5entry17h3fc39347a213da78E>
    80203738:	fa843583          	ld	a1,-88(s0)
    8020373c:	c9dd                	beqz	a1,802037f2 <.LBB0_35+0xa8>
    8020373e:	f7840b13          	addi	s6,s0,-136

0000000080203742 <.LBB0_34>:
    80203742:	0000b917          	auipc	s2,0xb
    80203746:	ae690913          	addi	s2,s2,-1306 # 8020e228 <.Lanon.672c38a7988119262d91fd2bf01ce91d.2>

000000008020374a <.LBB0_35>:
    8020374a:	0000b497          	auipc	s1,0xb
    8020374e:	afe48493          	addi	s1,s1,-1282 # 8020e248 <.Lanon.672c38a7988119262d91fd2bf01ce91d.3>
    80203752:	f6040993          	addi	s3,s0,-160
    80203756:	fb040a13          	addi	s4,s0,-80
    8020375a:	fb840a93          	addi	s5,s0,-72
    8020375e:	a825                	j	80203796 <.LBB0_35+0x4c>
    80203760:	8732                	mv	a4,a2
    80203762:	058e                	slli	a1,a1,0x3
    80203764:	95b2                	add	a1,a1,a2
    80203766:	00858613          	addi	a2,a1,8
    8020376a:	06058593          	addi	a1,a1,96
    8020376e:	00053023          	sd	zero,0(a0)
    80203772:	e518                	sd	a4,8(a0)
    80203774:	e91c                	sd	a5,16(a0)
    80203776:	fac43823          	sd	a2,-80(s0)
    8020377a:	fab43c23          	sd	a1,-72(s0)
    8020377e:	854e                	mv	a0,s3
    80203780:	85d2                	mv	a1,s4
    80203782:	864a                	mv	a2,s2
    80203784:	86d6                	mv	a3,s5
    80203786:	8726                	mv	a4,s1
    80203788:	00006097          	auipc	ra,0x6
    8020378c:	686080e7          	jalr	1670(ra) # 80209e0e <_ZN4core3fmt8builders8DebugMap5entry17h3fc39347a213da78E>
    80203790:	fa843583          	ld	a1,-88(s0)
    80203794:	cdb9                	beqz	a1,802037f2 <.LBB0_35+0xa8>
    80203796:	f8043603          	ld	a2,-128(s0)
    8020379a:	4501                	li	a0,0
    8020379c:	15fd                	addi	a1,a1,-1
    8020379e:	fab43423          	sd	a1,-88(s0)
    802037a2:	c211                	beqz	a2,802037a6 <.LBB0_35+0x5c>
    802037a4:	855a                	mv	a0,s6
    802037a6:	6518                	ld	a4,8(a0)
    802037a8:	690c                	ld	a1,16(a0)
    802037aa:	0ba75603          	lhu	a2,186(a4)
    802037ae:	6114                	ld	a3,0(a0)
    802037b0:	00c5f763          	bgeu	a1,a2,802037be <.LBB0_35+0x74>
    802037b4:	863a                	mv	a2,a4
    802037b6:	00158793          	addi	a5,a1,1
    802037ba:	e685                	bnez	a3,802037e2 <.LBB0_35+0x98>
    802037bc:	b755                	j	80203760 <.LBB0_35+0x16>
    802037be:	6310                	ld	a2,0(a4)
    802037c0:	ce09                	beqz	a2,802037da <.LBB0_35+0x90>
    802037c2:	0b875583          	lhu	a1,184(a4)
    802037c6:	0ba65783          	lhu	a5,186(a2)
    802037ca:	0685                	addi	a3,a3,1
    802037cc:	8732                	mv	a4,a2
    802037ce:	fef5f8e3          	bgeu	a1,a5,802037be <.LBB0_35+0x74>
    802037d2:	00158793          	addi	a5,a1,1
    802037d6:	e691                	bnez	a3,802037e2 <.LBB0_35+0x98>
    802037d8:	b761                	j	80203760 <.LBB0_35+0x16>
    802037da:	4601                	li	a2,0
    802037dc:	00158793          	addi	a5,a1,1
    802037e0:	d2c1                	beqz	a3,80203760 <.LBB0_35+0x16>
    802037e2:	00379713          	slli	a4,a5,0x3
    802037e6:	9732                	add	a4,a4,a2
    802037e8:	6378                	ld	a4,192(a4)
    802037ea:	16fd                	addi	a3,a3,-1
    802037ec:	fef5                	bnez	a3,802037e8 <.LBB0_35+0x9e>
    802037ee:	4781                	li	a5,0
    802037f0:	bf8d                	j	80203762 <.LBB0_35+0x18>
    802037f2:	f6040513          	addi	a0,s0,-160
    802037f6:	00007097          	auipc	ra,0x7
    802037fa:	826080e7          	jalr	-2010(ra) # 8020a01c <_ZN4core3fmt8builders8DebugMap6finish17h8f4472cd6587cc49E>
    802037fe:	7b06                	ld	s6,96(sp)
    80203800:	7aa6                	ld	s5,104(sp)
    80203802:	7a46                	ld	s4,112(sp)
    80203804:	79e6                	ld	s3,120(sp)
    80203806:	690a                	ld	s2,128(sp)
    80203808:	64aa                	ld	s1,136(sp)
    8020380a:	644a                	ld	s0,144(sp)
    8020380c:	60ea                	ld	ra,152(sp)
    8020380e:	610d                	addi	sp,sp,160
    80203810:	8082                	ret

0000000080203812 <_ZN4core3ptr27drop_in_place$LT$$RF$u8$GT$17h55ee066ea338ed2cE.llvm.7909925865301374293>:
    80203812:	1141                	addi	sp,sp,-16
    80203814:	e406                	sd	ra,8(sp)
    80203816:	e022                	sd	s0,0(sp)
    80203818:	0800                	addi	s0,sp,16
    8020381a:	6402                	ld	s0,0(sp)
    8020381c:	60a2                	ld	ra,8(sp)
    8020381e:	0141                	addi	sp,sp,16
    80203820:	8082                	ret

0000000080203822 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E>:
    80203822:	7151                	addi	sp,sp,-240
    80203824:	f586                	sd	ra,232(sp)
    80203826:	f1a2                	sd	s0,224(sp)
    80203828:	eda6                	sd	s1,216(sp)
    8020382a:	e9ca                	sd	s2,208(sp)
    8020382c:	e5ce                	sd	s3,200(sp)
    8020382e:	e1d2                	sd	s4,192(sp)
    80203830:	1980                	addi	s0,sp,240
    80203832:	89aa                	mv	s3,a0
    80203834:	6504                	ld	s1,8(a0)
    80203836:	8932                	mv	s2,a2
    80203838:	8a2e                	mv	s4,a1
    8020383a:	c481                	beqz	s1,80203842 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0x20>
    8020383c:	0009b803          	ld	a6,0(s3)
    80203840:	a825                	j	80203878 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0x56>
    80203842:	0c000513          	li	a0,192
    80203846:	45a1                	li	a1,8
    80203848:	00002097          	auipc	ra,0x2
    8020384c:	8a2080e7          	jalr	-1886(ra) # 802050ea <__rust_alloc>
    80203850:	c55d                	beqz	a0,802038fe <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0xdc>
    80203852:	84aa                	mv	s1,a0
    80203854:	00053023          	sd	zero,0(a0)
    80203858:	0521                	addi	a0,a0,8
    8020385a:	f1840593          	addi	a1,s0,-232
    8020385e:	0b200613          	li	a2,178
    80203862:	00009097          	auipc	ra,0x9
    80203866:	d96080e7          	jalr	-618(ra) # 8020c5f8 <memcpy>
    8020386a:	4801                	li	a6,0
    8020386c:	0a049d23          	sh	zero,186(s1)
    80203870:	0009b023          	sd	zero,0(s3)
    80203874:	0099b423          	sd	s1,8(s3)
    80203878:	0ba4d883          	lhu	a7,186(s1)
    8020387c:	4681                	li	a3,0
    8020387e:	00389713          	slli	a4,a7,0x3
    80203882:	55fd                	li	a1,-1
    80203884:	02d70363          	beq	a4,a3,802038aa <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0x88>
    80203888:	00d48533          	add	a0,s1,a3
    8020388c:	6510                	ld	a2,8(a0)
    8020388e:	557d                	li	a0,-1
    80203890:	57fd                	li	a5,-1
    80203892:	00ca6663          	bltu	s4,a2,8020389e <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0x7c>
    80203896:	01464633          	xor	a2,a2,s4
    8020389a:	00c037b3          	snez	a5,a2
    8020389e:	0585                	addi	a1,a1,1
    802038a0:	00a78663          	beq	a5,a0,802038ac <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0x8a>
    802038a4:	06a1                	addi	a3,a3,8
    802038a6:	fff9                	bnez	a5,80203884 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0x62>
    802038a8:	a811                	j	802038bc <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0x9a>
    802038aa:	85c6                	mv	a1,a7
    802038ac:	02080663          	beqz	a6,802038d8 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0xb6>
    802038b0:	00359513          	slli	a0,a1,0x3
    802038b4:	9526                	add	a0,a0,s1
    802038b6:	6164                	ld	s1,192(a0)
    802038b8:	187d                	addi	a6,a6,-1
    802038ba:	bf7d                	j	80203878 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0x56>
    802038bc:	00d48533          	add	a0,s1,a3
    802038c0:	6d2c                	ld	a1,88(a0)
    802038c2:	05253c23          	sd	s2,88(a0)
    802038c6:	4505                	li	a0,1
    802038c8:	6a0e                	ld	s4,192(sp)
    802038ca:	69ae                	ld	s3,200(sp)
    802038cc:	694e                	ld	s2,208(sp)
    802038ce:	64ee                	ld	s1,216(sp)
    802038d0:	740e                	ld	s0,224(sp)
    802038d2:	70ae                	ld	ra,232(sp)
    802038d4:	616d                	addi	sp,sp,240
    802038d6:	8082                	ret
    802038d8:	f1443c23          	sd	s4,-232(s0)
    802038dc:	f2043023          	sd	zero,-224(s0)
    802038e0:	f2943423          	sd	s1,-216(s0)
    802038e4:	f2b43823          	sd	a1,-208(s0)
    802038e8:	f3343c23          	sd	s3,-200(s0)
    802038ec:	f1840513          	addi	a0,s0,-232
    802038f0:	85ca                	mv	a1,s2
    802038f2:	00001097          	auipc	ra,0x1
    802038f6:	c0c080e7          	jalr	-1012(ra) # 802044fe <_ZN5alloc11collections5btree3map5entry24VacantEntry$LT$K$C$V$GT$6insert17hd8d45f2021e03e40E>
    802038fa:	4501                	li	a0,0
    802038fc:	b7f1                	j	802038c8 <_ZN5alloc11collections5btree3map21BTreeMap$LT$K$C$V$GT$6insert17h7ffcb95ff960a3c5E+0xa6>
    802038fe:	0c000513          	li	a0,192
    80203902:	45a1                	li	a1,8
    80203904:	00006097          	auipc	ra,0x6
    80203908:	b5c080e7          	jalr	-1188(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

000000008020390e <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E>:
    8020390e:	7175                	addi	sp,sp,-144
    80203910:	e506                	sd	ra,136(sp)
    80203912:	e122                	sd	s0,128(sp)
    80203914:	fca6                	sd	s1,120(sp)
    80203916:	f8ca                	sd	s2,112(sp)
    80203918:	f4ce                	sd	s3,104(sp)
    8020391a:	f0d2                	sd	s4,96(sp)
    8020391c:	ecd6                	sd	s5,88(sp)
    8020391e:	e8da                	sd	s6,80(sp)
    80203920:	0900                	addi	s0,sp,144
    80203922:	6510                	ld	a2,8(a0)
    80203924:	c265                	beqz	a2,80203a04 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xf6>
    80203926:	01053a03          	ld	s4,16(a0)
    8020392a:	610c                	ld	a1,0(a0)
    8020392c:	f7840513          	addi	a0,s0,-136
    80203930:	86ae                	mv	a3,a1
    80203932:	8732                	mv	a4,a2
    80203934:	fffff097          	auipc	ra,0xfffff
    80203938:	55a080e7          	jalr	1370(ra) # 80202e8e <_ZN5alloc11collections5btree8navigate10full_range17h891e0af8a48242b7E>
    8020393c:	f7843503          	ld	a0,-136(s0)
    80203940:	f8043483          	ld	s1,-128(s0)
    80203944:	060a0763          	beqz	s4,802039b2 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xa4>
    80203948:	f8843a83          	ld	s5,-120(s0)
    8020394c:	fa840913          	addi	s2,s0,-88
    80203950:	f7840993          	addi	s3,s0,-136
    80203954:	a811                	j	80203968 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0x5a>
    80203956:	4a81                	li	s5,0
    80203958:	00000097          	auipc	ra,0x0
    8020395c:	768080e7          	jalr	1896(ra) # 802040c0 <_ZN2os2mm15frame_allocator13frame_dealloc17h4828e963a0fceefbE>
    80203960:	4501                	li	a0,0
    80203962:	4b01                	li	s6,0
    80203964:	040a0863          	beqz	s4,802039b4 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xa6>
    80203968:	c8c5                	beqz	s1,80203a18 <.LBB28_20>
    8020396a:	1a7d                	addi	s4,s4,-1
    8020396c:	f6a43c23          	sd	a0,-136(s0)
    80203970:	f8943023          	sd	s1,-128(s0)
    80203974:	f9543423          	sd	s5,-120(s0)
    80203978:	854a                	mv	a0,s2
    8020397a:	85ce                	mv	a1,s3
    8020397c:	fffff097          	auipc	ra,0xfffff
    80203980:	5b8080e7          	jalr	1464(ra) # 80202f34 <_ZN5alloc11collections5btree8navigate25next_kv_unchecked_dealloc17hb94dea03c824f2cbE>
    80203984:	fb843603          	ld	a2,-72(s0)
    80203988:	fb043483          	ld	s1,-80(s0)
    8020398c:	00361513          	slli	a0,a2,0x3
    80203990:	9526                	add	a0,a0,s1
    80203992:	fa843583          	ld	a1,-88(s0)
    80203996:	7128                	ld	a0,96(a0)
    80203998:	00160a93          	addi	s5,a2,1
    8020399c:	ddd5                	beqz	a1,80203958 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0x4a>
    8020399e:	003a9613          	slli	a2,s5,0x3
    802039a2:	9626                	add	a2,a2,s1
    802039a4:	6264                	ld	s1,192(a2)
    802039a6:	15fd                	addi	a1,a1,-1
    802039a8:	d5dd                	beqz	a1,80203956 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0x48>
    802039aa:	60e4                	ld	s1,192(s1)
    802039ac:	15fd                	addi	a1,a1,-1
    802039ae:	fdf5                	bnez	a1,802039aa <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0x9c>
    802039b0:	b75d                	j	80203956 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0x48>
    802039b2:	8b2a                	mv	s6,a0
    802039b4:	c8a1                	beqz	s1,80203a04 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xf6>
    802039b6:	0004b903          	ld	s2,0(s1)
    802039ba:	0c000593          	li	a1,192
    802039be:	000b0463          	beqz	s6,802039c6 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xb8>
    802039c2:	12000593          	li	a1,288
    802039c6:	4621                	li	a2,8
    802039c8:	8526                	mv	a0,s1
    802039ca:	00001097          	auipc	ra,0x1
    802039ce:	728080e7          	jalr	1832(ra) # 802050f2 <__rust_dealloc>
    802039d2:	02090963          	beqz	s2,80203a04 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xf6>
    802039d6:	001b0493          	addi	s1,s6,1
    802039da:	a819                	j	802039f0 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xe2>
    802039dc:	94aa                	add	s1,s1,a0
    802039de:	4621                	li	a2,8
    802039e0:	854a                	mv	a0,s2
    802039e2:	00001097          	auipc	ra,0x1
    802039e6:	710080e7          	jalr	1808(ra) # 802050f2 <__rust_dealloc>
    802039ea:	894e                	mv	s2,s3
    802039ec:	00098c63          	beqz	s3,80203a04 <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xf6>
    802039f0:	00093983          	ld	s3,0(s2)
    802039f4:	01303533          	snez	a0,s3
    802039f8:	0c000593          	li	a1,192
    802039fc:	d0e5                	beqz	s1,802039dc <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xce>
    802039fe:	12000593          	li	a1,288
    80203a02:	bfe9                	j	802039dc <_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc4487872ad95ec0E+0xce>
    80203a04:	6b46                	ld	s6,80(sp)
    80203a06:	6ae6                	ld	s5,88(sp)
    80203a08:	7a06                	ld	s4,96(sp)
    80203a0a:	79a6                	ld	s3,104(sp)
    80203a0c:	7946                	ld	s2,112(sp)
    80203a0e:	74e6                	ld	s1,120(sp)
    80203a10:	640a                	ld	s0,128(sp)
    80203a12:	60aa                	ld	ra,136(sp)
    80203a14:	6149                	addi	sp,sp,144
    80203a16:	8082                	ret

0000000080203a18 <.LBB28_20>:
    80203a18:	0000b517          	auipc	a0,0xb
    80203a1c:	87050513          	addi	a0,a0,-1936 # 8020e288 <.Lanon.672c38a7988119262d91fd2bf01ce91d.6>

0000000080203a20 <.LBB28_21>:
    80203a20:	0000a617          	auipc	a2,0xa
    80203a24:	7f060613          	addi	a2,a2,2032 # 8020e210 <.Lanon.672c38a7988119262d91fd2bf01ce91d.1>
    80203a28:	02b00593          	li	a1,43
    80203a2c:	00006097          	auipc	ra,0x6
    80203a30:	dd6080e7          	jalr	-554(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000080203a36 <_ZN2os3sbi8shutdown17haca3fa4052199a01E>:
    80203a36:	1141                	addi	sp,sp,-16
    80203a38:	e406                	sd	ra,8(sp)
    80203a3a:	e022                	sd	s0,0(sp)
    80203a3c:	0800                	addi	s0,sp,16
    80203a3e:	48a1                	li	a7,8
    80203a40:	4501                	li	a0,0
    80203a42:	4581                	li	a1,0
    80203a44:	4601                	li	a2,0
    80203a46:	00000073          	ecall

0000000080203a4a <.LBB32_1>:
    80203a4a:	0000b517          	auipc	a0,0xb
    80203a4e:	86950513          	addi	a0,a0,-1943 # 8020e2b3 <anon.672c38a7988119262d91fd2bf01ce91d.10.llvm.7909925865301374293>

0000000080203a52 <.LBB32_2>:
    80203a52:	0000b617          	auipc	a2,0xb
    80203a56:	87e60613          	addi	a2,a2,-1922 # 8020e2d0 <anon.672c38a7988119262d91fd2bf01ce91d.12.llvm.7909925865301374293>
    80203a5a:	45cd                	li	a1,19
    80203a5c:	00006097          	auipc	ra,0x6
    80203a60:	da6080e7          	jalr	-602(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000080203a66 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2738cfdee3e896f9E>:
    80203a66:	1101                	addi	sp,sp,-32
    80203a68:	ec06                	sd	ra,24(sp)
    80203a6a:	e822                	sd	s0,16(sp)
    80203a6c:	e426                	sd	s1,8(sp)
    80203a6e:	e04a                	sd	s2,0(sp)
    80203a70:	1000                	addi	s0,sp,32
    80203a72:	00053903          	ld	s2,0(a0)
    80203a76:	84ae                	mv	s1,a1
    80203a78:	852e                	mv	a0,a1
    80203a7a:	00007097          	auipc	ra,0x7
    80203a7e:	f98080e7          	jalr	-104(ra) # 8020aa12 <_ZN4core3fmt9Formatter15debug_lower_hex17hffada68515a2cdf7E>
    80203a82:	cd01                	beqz	a0,80203a9a <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2738cfdee3e896f9E+0x34>
    80203a84:	854a                	mv	a0,s2
    80203a86:	85a6                	mv	a1,s1
    80203a88:	6902                	ld	s2,0(sp)
    80203a8a:	64a2                	ld	s1,8(sp)
    80203a8c:	6442                	ld	s0,16(sp)
    80203a8e:	60e2                	ld	ra,24(sp)
    80203a90:	6105                	addi	sp,sp,32
    80203a92:	00008317          	auipc	t1,0x8
    80203a96:	11e30067          	jr	286(t1) # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80203a9a:	8526                	mv	a0,s1
    80203a9c:	00007097          	auipc	ra,0x7
    80203aa0:	f80080e7          	jalr	-128(ra) # 8020aa1c <_ZN4core3fmt9Formatter15debug_upper_hex17h3e8dade1475f5ac4E>
    80203aa4:	cd01                	beqz	a0,80203abc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2738cfdee3e896f9E+0x56>
    80203aa6:	854a                	mv	a0,s2
    80203aa8:	85a6                	mv	a1,s1
    80203aaa:	6902                	ld	s2,0(sp)
    80203aac:	64a2                	ld	s1,8(sp)
    80203aae:	6442                	ld	s0,16(sp)
    80203ab0:	60e2                	ld	ra,24(sp)
    80203ab2:	6105                	addi	sp,sp,32
    80203ab4:	00008317          	auipc	t1,0x8
    80203ab8:	17c30067          	jr	380(t1) # 8020bc30 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E>
    80203abc:	854a                	mv	a0,s2
    80203abe:	85a6                	mv	a1,s1
    80203ac0:	6902                	ld	s2,0(sp)
    80203ac2:	64a2                	ld	s1,8(sp)
    80203ac4:	6442                	ld	s0,16(sp)
    80203ac6:	60e2                	ld	ra,24(sp)
    80203ac8:	6105                	addi	sp,sp,32
    80203aca:	00008317          	auipc	t1,0x8
    80203ace:	6fe30067          	jr	1790(t1) # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>

0000000080203ad2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbeae5384057dd4eaE>:
    80203ad2:	1141                	addi	sp,sp,-16
    80203ad4:	e406                	sd	ra,8(sp)
    80203ad6:	e022                	sd	s0,0(sp)
    80203ad8:	0800                	addi	s0,sp,16
    80203ada:	6108                	ld	a0,0(a0)
    80203adc:	6402                	ld	s0,0(sp)
    80203ade:	60a2                	ld	ra,8(sp)
    80203ae0:	0141                	addi	sp,sp,16
    80203ae2:	00007317          	auipc	t1,0x7
    80203ae6:	ff030067          	jr	-16(t1) # 8020aad2 <_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h067fc15c1459c2deE>

0000000080203aea <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1f72ffb2f6d9e089E>:
    80203aea:	1141                	addi	sp,sp,-16
    80203aec:	e406                	sd	ra,8(sp)
    80203aee:	e022                	sd	s0,0(sp)
    80203af0:	0800                	addi	s0,sp,16
    80203af2:	6108                	ld	a0,0(a0)
    80203af4:	6402                	ld	s0,0(sp)
    80203af6:	60a2                	ld	ra,8(sp)
    80203af8:	0141                	addi	sp,sp,16
    80203afa:	00006317          	auipc	t1,0x6
    80203afe:	7ae30067          	jr	1966(t1) # 8020a2a8 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>

0000000080203b02 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc8cc8fd690c16b4aE>:
    80203b02:	1141                	addi	sp,sp,-16
    80203b04:	e406                	sd	ra,8(sp)
    80203b06:	e022                	sd	s0,0(sp)
    80203b08:	0800                	addi	s0,sp,16
    80203b0a:	6110                	ld	a2,0(a0)
    80203b0c:	6514                	ld	a3,8(a0)
    80203b0e:	872e                	mv	a4,a1
    80203b10:	8532                	mv	a0,a2
    80203b12:	85b6                	mv	a1,a3
    80203b14:	863a                	mv	a2,a4
    80203b16:	6402                	ld	s0,0(sp)
    80203b18:	60a2                	ld	ra,8(sp)
    80203b1a:	0141                	addi	sp,sp,16
    80203b1c:	00007317          	auipc	t1,0x7
    80203b20:	44a30067          	jr	1098(t1) # 8020af66 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>

0000000080203b24 <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970>:
    80203b24:	7179                	addi	sp,sp,-48
    80203b26:	f406                	sd	ra,40(sp)
    80203b28:	f022                	sd	s0,32(sp)
    80203b2a:	ec26                	sd	s1,24(sp)
    80203b2c:	e84a                	sd	s2,16(sp)
    80203b2e:	e44e                	sd	s3,8(sp)
    80203b30:	1800                	addi	s0,sp,48
    80203b32:	84ae                	mv	s1,a1
    80203b34:	892a                	mv	s2,a0
    80203b36:	ce11                	beqz	a2,80203b52 <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x2e>
    80203b38:	89b2                	mv	s3,a2
    80203b3a:	6288                	ld	a0,0(a3)
    80203b3c:	c105                	beqz	a0,80203b5c <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x38>
    80203b3e:	668c                	ld	a1,8(a3)
    80203b40:	cd91                	beqz	a1,80203b5c <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x38>
    80203b42:	864e                	mv	a2,s3
    80203b44:	86a6                	mv	a3,s1
    80203b46:	00001097          	auipc	ra,0x1
    80203b4a:	5b4080e7          	jalr	1460(ra) # 802050fa <__rust_realloc>
    80203b4e:	e50d                	bnez	a0,80203b78 <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x54>
    80203b50:	a831                	j	80203b6c <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x48>
    80203b52:	00993423          	sd	s1,8(s2)
    80203b56:	4585                	li	a1,1
    80203b58:	4481                	li	s1,0
    80203b5a:	a015                	j	80203b7e <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x5a>
    80203b5c:	cc89                	beqz	s1,80203b76 <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x52>
    80203b5e:	8526                	mv	a0,s1
    80203b60:	85ce                	mv	a1,s3
    80203b62:	00001097          	auipc	ra,0x1
    80203b66:	588080e7          	jalr	1416(ra) # 802050ea <__rust_alloc>
    80203b6a:	e519                	bnez	a0,80203b78 <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x54>
    80203b6c:	00993423          	sd	s1,8(s2)
    80203b70:	4585                	li	a1,1
    80203b72:	84ce                	mv	s1,s3
    80203b74:	a029                	j	80203b7e <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970+0x5a>
    80203b76:	854e                	mv	a0,s3
    80203b78:	4581                	li	a1,0
    80203b7a:	00a93423          	sd	a0,8(s2)
    80203b7e:	00993823          	sd	s1,16(s2)
    80203b82:	00b93023          	sd	a1,0(s2)
    80203b86:	69a2                	ld	s3,8(sp)
    80203b88:	6942                	ld	s2,16(sp)
    80203b8a:	64e2                	ld	s1,24(sp)
    80203b8c:	7402                	ld	s0,32(sp)
    80203b8e:	70a2                	ld	ra,40(sp)
    80203b90:	6145                	addi	sp,sp,48
    80203b92:	8082                	ret

0000000080203b94 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE>:
    80203b94:	715d                	addi	sp,sp,-80
    80203b96:	e486                	sd	ra,72(sp)
    80203b98:	e0a2                	sd	s0,64(sp)
    80203b9a:	fc26                	sd	s1,56(sp)
    80203b9c:	0880                	addi	s0,sp,80
    80203b9e:	84aa                	mv	s1,a0
    80203ba0:	6508                	ld	a0,8(a0)
    80203ba2:	40b506b3          	sub	a3,a0,a1
    80203ba6:	06c6fb63          	bgeu	a3,a2,80203c1c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x88>
    80203baa:	962e                	add	a2,a2,a1
    80203bac:	06b66e63          	bltu	a2,a1,80203c28 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x94>
    80203bb0:	00151593          	slli	a1,a0,0x1
    80203bb4:	00b66363          	bltu	a2,a1,80203bba <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x26>
    80203bb8:	85b2                	mv	a1,a2
    80203bba:	4611                	li	a2,4
    80203bbc:	00b66363          	bltu	a2,a1,80203bc2 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x2e>
    80203bc0:	4591                	li	a1,4
    80203bc2:	4605                	li	a2,1
    80203bc4:	1676                	slli	a2,a2,0x3d
    80203bc6:	167d                	addi	a2,a2,-1
    80203bc8:	8e6d                	and	a2,a2,a1
    80203bca:	8e2d                	xor	a2,a2,a1
    80203bcc:	00c036b3          	snez	a3,a2
    80203bd0:	4601                	li	a2,0
    80203bd2:	e291                	bnez	a3,80203bd6 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x42>
    80203bd4:	4621                	li	a2,8
    80203bd6:	058e                	slli	a1,a1,0x3
    80203bd8:	c919                	beqz	a0,80203bee <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x5a>
    80203bda:	6094                	ld	a3,0(s1)
    80203bdc:	050e                	slli	a0,a0,0x3
    80203bde:	fcd43823          	sd	a3,-48(s0)
    80203be2:	fca43c23          	sd	a0,-40(s0)
    80203be6:	4521                	li	a0,8
    80203be8:	fea43023          	sd	a0,-32(s0)
    80203bec:	a019                	j	80203bf2 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x5e>
    80203bee:	fc043823          	sd	zero,-48(s0)
    80203bf2:	fb840513          	addi	a0,s0,-72
    80203bf6:	fd040693          	addi	a3,s0,-48
    80203bfa:	00000097          	auipc	ra,0x0
    80203bfe:	f2a080e7          	jalr	-214(ra) # 80203b24 <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970>
    80203c02:	fb843603          	ld	a2,-72(s0)
    80203c06:	fc043503          	ld	a0,-64(s0)
    80203c0a:	fc843583          	ld	a1,-56(s0)
    80203c0e:	4685                	li	a3,1
    80203c10:	00d60b63          	beq	a2,a3,80203c26 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x92>
    80203c14:	e088                	sd	a0,0(s1)
    80203c16:	0035d513          	srli	a0,a1,0x3
    80203c1a:	e488                	sd	a0,8(s1)
    80203c1c:	74e2                	ld	s1,56(sp)
    80203c1e:	6406                	ld	s0,64(sp)
    80203c20:	60a6                	ld	ra,72(sp)
    80203c22:	6161                	addi	sp,sp,80
    80203c24:	8082                	ret
    80203c26:	e591                	bnez	a1,80203c32 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE+0x9e>
    80203c28:	00006097          	auipc	ra,0x6
    80203c2c:	896080e7          	jalr	-1898(ra) # 802094be <_ZN5alloc7raw_vec17capacity_overflow17h81167f6233698fbeE>
    80203c30:	0000                	unimp
    80203c32:	00006097          	auipc	ra,0x6
    80203c36:	82e080e7          	jalr	-2002(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

0000000080203c3c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E>:
    80203c3c:	715d                	addi	sp,sp,-80
    80203c3e:	e486                	sd	ra,72(sp)
    80203c40:	e0a2                	sd	s0,64(sp)
    80203c42:	fc26                	sd	s1,56(sp)
    80203c44:	0880                	addi	s0,sp,80
    80203c46:	84aa                	mv	s1,a0
    80203c48:	6508                	ld	a0,8(a0)
    80203c4a:	40b506b3          	sub	a3,a0,a1
    80203c4e:	08c6fc63          	bgeu	a3,a2,80203ce6 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0xaa>
    80203c52:	962e                	add	a2,a2,a1
    80203c54:	08b66f63          	bltu	a2,a1,80203cf2 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0xb6>
    80203c58:	00151593          	slli	a1,a0,0x1
    80203c5c:	00b66363          	bltu	a2,a1,80203c62 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0x26>
    80203c60:	85b2                	mv	a1,a2
    80203c62:	4611                	li	a2,4
    80203c64:	00b66363          	bltu	a2,a1,80203c6a <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0x2e>
    80203c68:	4591                	li	a1,4
    80203c6a:	03000693          	li	a3,48
    80203c6e:	02d5b633          	mulhu	a2,a1,a3
    80203c72:	00c03733          	snez	a4,a2
    80203c76:	4601                	li	a2,0
    80203c78:	e311                	bnez	a4,80203c7c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0x40>
    80203c7a:	4621                	li	a2,8
    80203c7c:	02d585b3          	mul	a1,a1,a3
    80203c80:	cd11                	beqz	a0,80203c9c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0x60>
    80203c82:	6094                	ld	a3,0(s1)
    80203c84:	03000713          	li	a4,48
    80203c88:	02e50533          	mul	a0,a0,a4
    80203c8c:	fcd43823          	sd	a3,-48(s0)
    80203c90:	fca43c23          	sd	a0,-40(s0)
    80203c94:	4521                	li	a0,8
    80203c96:	fea43023          	sd	a0,-32(s0)
    80203c9a:	a019                	j	80203ca0 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0x64>
    80203c9c:	fc043823          	sd	zero,-48(s0)
    80203ca0:	fb840513          	addi	a0,s0,-72
    80203ca4:	fd040693          	addi	a3,s0,-48
    80203ca8:	00000097          	auipc	ra,0x0
    80203cac:	e7c080e7          	jalr	-388(ra) # 80203b24 <_ZN5alloc7raw_vec11finish_grow17hd3746b4140f93e21E.llvm.14823960251013400970>
    80203cb0:	fb843603          	ld	a2,-72(s0)
    80203cb4:	fc043503          	ld	a0,-64(s0)
    80203cb8:	fc843583          	ld	a1,-56(s0)
    80203cbc:	4685                	li	a3,1
    80203cbe:	02d60963          	beq	a2,a3,80203cf0 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0xb4>
    80203cc2:	e088                	sd	a0,0(s1)
    80203cc4:	faaab537          	lui	a0,0xfaaab
    80203cc8:	aab5051b          	addiw	a0,a0,-1365
    80203ccc:	0532                	slli	a0,a0,0xc
    80203cce:	aab50513          	addi	a0,a0,-1365 # fffffffffaaaaaab <ebss+0xffffffff7a686aab>
    80203cd2:	0532                	slli	a0,a0,0xc
    80203cd4:	aab50513          	addi	a0,a0,-1365
    80203cd8:	0532                	slli	a0,a0,0xc
    80203cda:	aab50513          	addi	a0,a0,-1365
    80203cde:	02a5b533          	mulhu	a0,a1,a0
    80203ce2:	8115                	srli	a0,a0,0x5
    80203ce4:	e488                	sd	a0,8(s1)
    80203ce6:	74e2                	ld	s1,56(sp)
    80203ce8:	6406                	ld	s0,64(sp)
    80203cea:	60a6                	ld	ra,72(sp)
    80203cec:	6161                	addi	sp,sp,80
    80203cee:	8082                	ret
    80203cf0:	e591                	bnez	a1,80203cfc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hcef46bfd9e2455d8E+0xc0>
    80203cf2:	00005097          	auipc	ra,0x5
    80203cf6:	7cc080e7          	jalr	1996(ra) # 802094be <_ZN5alloc7raw_vec17capacity_overflow17h81167f6233698fbeE>
    80203cfa:	0000                	unimp
    80203cfc:	00005097          	auipc	ra,0x5
    80203d00:	764080e7          	jalr	1892(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

0000000080203d06 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbc84eaa9ce456b5bE>:
    80203d06:	715d                	addi	sp,sp,-80
    80203d08:	e486                	sd	ra,72(sp)
    80203d0a:	e0a2                	sd	s0,64(sp)
    80203d0c:	0880                	addi	s0,sp,80
    80203d0e:	6110                	ld	a2,0(a0)
    80203d10:	852e                	mv	a0,a1
    80203d12:	fec43023          	sd	a2,-32(s0)

0000000080203d16 <.LBB1_1>:
    80203d16:	00008597          	auipc	a1,0x8
    80203d1a:	e9a58593          	addi	a1,a1,-358 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80203d1e:	feb43423          	sd	a1,-24(s0)

0000000080203d22 <.LBB1_2>:
    80203d22:	0000a597          	auipc	a1,0xa
    80203d26:	75658593          	addi	a1,a1,1878 # 8020e478 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.60>
    80203d2a:	fab43823          	sd	a1,-80(s0)
    80203d2e:	4585                	li	a1,1
    80203d30:	fab43c23          	sd	a1,-72(s0)

0000000080203d34 <.LBB1_3>:
    80203d34:	0000a617          	auipc	a2,0xa
    80203d38:	6b460613          	addi	a2,a2,1716 # 8020e3e8 <anon.7250850224f0cd0be7dfa715dcebdfaa.21.llvm.3875387582294015177>
    80203d3c:	fcc43023          	sd	a2,-64(s0)
    80203d40:	fcb43423          	sd	a1,-56(s0)
    80203d44:	fe040613          	addi	a2,s0,-32
    80203d48:	fcc43823          	sd	a2,-48(s0)
    80203d4c:	fcb43c23          	sd	a1,-40(s0)
    80203d50:	fb040593          	addi	a1,s0,-80
    80203d54:	00007097          	auipc	ra,0x7
    80203d58:	c8a080e7          	jalr	-886(ra) # 8020a9de <_ZN4core3fmt9Formatter9write_fmt17hda8a61c24e520600E>
    80203d5c:	6406                	ld	s0,64(sp)
    80203d5e:	60a6                	ld	ra,72(sp)
    80203d60:	6161                	addi	sp,sp,80
    80203d62:	8082                	ret

0000000080203d64 <rust_begin_unwind>:
    80203d64:	7171                	addi	sp,sp,-176
    80203d66:	f506                	sd	ra,168(sp)
    80203d68:	f122                	sd	s0,160(sp)
    80203d6a:	ed26                	sd	s1,152(sp)
    80203d6c:	e94a                	sd	s2,144(sp)
    80203d6e:	1900                	addi	s0,sp,176
    80203d70:	892a                	mv	s2,a0
    80203d72:	00006097          	auipc	ra,0x6
    80203d76:	a80080e7          	jalr	-1408(ra) # 802097f2 <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>
    80203d7a:	e515                	bnez	a0,80203da6 <.LBB12_10+0x16>
    80203d7c:	854a                	mv	a0,s2
    80203d7e:	00006097          	auipc	ra,0x6
    80203d82:	a70080e7          	jalr	-1424(ra) # 802097ee <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    80203d86:	e52d                	bnez	a0,80203df0 <.LBB12_12+0x16>

0000000080203d88 <.LBB12_9>:
    80203d88:	0000a517          	auipc	a0,0xa
    80203d8c:	56050513          	addi	a0,a0,1376 # 8020e2e8 <anon.7250850224f0cd0be7dfa715dcebdfaa.2.llvm.3875387582294015177>

0000000080203d90 <.LBB12_10>:
    80203d90:	0000a617          	auipc	a2,0xa
    80203d94:	5d060613          	addi	a2,a2,1488 # 8020e360 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.7>
    80203d98:	02b00593          	li	a1,43
    80203d9c:	00006097          	auipc	ra,0x6
    80203da0:	a66080e7          	jalr	-1434(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    80203da4:	0000                	unimp
    80203da6:	84aa                	mv	s1,a0
    80203da8:	00006097          	auipc	ra,0x6
    80203dac:	a4e080e7          	jalr	-1458(ra) # 802097f6 <_ZN4core5panic8Location4file17h3a63c909928b6622E>
    80203db0:	f8a43423          	sd	a0,-120(s0)
    80203db4:	f8b43823          	sd	a1,-112(s0)
    80203db8:	8526                	mv	a0,s1
    80203dba:	00006097          	auipc	ra,0x6
    80203dbe:	a44080e7          	jalr	-1468(ra) # 802097fe <_ZN4core5panic8Location4line17h438064cf29667b6aE>
    80203dc2:	f8a42e23          	sw	a0,-100(s0)
    80203dc6:	854a                	mv	a0,s2
    80203dc8:	00006097          	auipc	ra,0x6
    80203dcc:	a26080e7          	jalr	-1498(ra) # 802097ee <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>
    80203dd0:	e541                	bnez	a0,80203e58 <.LBB12_15+0x24>

0000000080203dd2 <.LBB12_11>:
    80203dd2:	0000a517          	auipc	a0,0xa
    80203dd6:	51650513          	addi	a0,a0,1302 # 8020e2e8 <anon.7250850224f0cd0be7dfa715dcebdfaa.2.llvm.3875387582294015177>

0000000080203dda <.LBB12_12>:
    80203dda:	0000a617          	auipc	a2,0xa
    80203dde:	5f660613          	addi	a2,a2,1526 # 8020e3d0 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.12>
    80203de2:	02b00593          	li	a1,43
    80203de6:	00006097          	auipc	ra,0x6
    80203dea:	a1c080e7          	jalr	-1508(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    80203dee:	0000                	unimp
    80203df0:	faa43423          	sd	a0,-88(s0)
    80203df4:	fa840513          	addi	a0,s0,-88
    80203df8:	f4a43c23          	sd	a0,-168(s0)

0000000080203dfc <.LBB12_13>:
    80203dfc:	00000517          	auipc	a0,0x0
    80203e00:	cee50513          	addi	a0,a0,-786 # 80203aea <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1f72ffb2f6d9e089E>
    80203e04:	f6a43023          	sd	a0,-160(s0)
    80203e08:	fb040513          	addi	a0,s0,-80
    80203e0c:	f8a43423          	sd	a0,-120(s0)

0000000080203e10 <.LBB12_14>:
    80203e10:	0000a517          	auipc	a0,0xa
    80203e14:	51850513          	addi	a0,a0,1304 # 8020e328 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.5>
    80203e18:	faa43823          	sd	a0,-80(s0)
    80203e1c:	4509                	li	a0,2
    80203e1e:	faa43c23          	sd	a0,-72(s0)
    80203e22:	fc043023          	sd	zero,-64(s0)
    80203e26:	f5840513          	addi	a0,s0,-168
    80203e2a:	fca43823          	sd	a0,-48(s0)
    80203e2e:	4505                	li	a0,1
    80203e30:	fca43c23          	sd	a0,-40(s0)

0000000080203e34 <.LBB12_15>:
    80203e34:	0000a597          	auipc	a1,0xa
    80203e38:	dfc58593          	addi	a1,a1,-516 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80203e3c:	f8840513          	addi	a0,s0,-120
    80203e40:	fb040613          	addi	a2,s0,-80
    80203e44:	00006097          	auipc	ra,0x6
    80203e48:	496080e7          	jalr	1174(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80203e4c:	e949                	bnez	a0,80203ede <.LBB12_21>
    80203e4e:	00000097          	auipc	ra,0x0
    80203e52:	be8080e7          	jalr	-1048(ra) # 80203a36 <_ZN2os3sbi8shutdown17haca3fa4052199a01E>
    80203e56:	0000                	unimp
    80203e58:	faa43023          	sd	a0,-96(s0)
    80203e5c:	f8840513          	addi	a0,s0,-120
    80203e60:	f4a43c23          	sd	a0,-168(s0)

0000000080203e64 <.LBB12_16>:
    80203e64:	00000517          	auipc	a0,0x0
    80203e68:	c9e50513          	addi	a0,a0,-866 # 80203b02 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc8cc8fd690c16b4aE>
    80203e6c:	f6a43023          	sd	a0,-160(s0)
    80203e70:	f9c40513          	addi	a0,s0,-100
    80203e74:	f6a43423          	sd	a0,-152(s0)

0000000080203e78 <.LBB12_17>:
    80203e78:	00008517          	auipc	a0,0x8
    80203e7c:	19450513          	addi	a0,a0,404 # 8020c00c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>
    80203e80:	f6a43823          	sd	a0,-144(s0)
    80203e84:	fa040513          	addi	a0,s0,-96
    80203e88:	f6a43c23          	sd	a0,-136(s0)

0000000080203e8c <.LBB12_18>:
    80203e8c:	00000517          	auipc	a0,0x0
    80203e90:	c5e50513          	addi	a0,a0,-930 # 80203aea <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1f72ffb2f6d9e089E>
    80203e94:	f8a43023          	sd	a0,-128(s0)
    80203e98:	fb040513          	addi	a0,s0,-80
    80203e9c:	faa43423          	sd	a0,-88(s0)

0000000080203ea0 <.LBB12_19>:
    80203ea0:	0000a517          	auipc	a0,0xa
    80203ea4:	4f050513          	addi	a0,a0,1264 # 8020e390 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.11>
    80203ea8:	faa43823          	sd	a0,-80(s0)
    80203eac:	4511                	li	a0,4
    80203eae:	faa43c23          	sd	a0,-72(s0)
    80203eb2:	fc043023          	sd	zero,-64(s0)
    80203eb6:	f5840513          	addi	a0,s0,-168
    80203eba:	fca43823          	sd	a0,-48(s0)
    80203ebe:	450d                	li	a0,3
    80203ec0:	fca43c23          	sd	a0,-40(s0)

0000000080203ec4 <.LBB12_20>:
    80203ec4:	0000a597          	auipc	a1,0xa
    80203ec8:	d6c58593          	addi	a1,a1,-660 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80203ecc:	fa840513          	addi	a0,s0,-88
    80203ed0:	fb040613          	addi	a2,s0,-80
    80203ed4:	00006097          	auipc	ra,0x6
    80203ed8:	406080e7          	jalr	1030(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80203edc:	d92d                	beqz	a0,80203e4e <.LBB12_15+0x1a>

0000000080203ede <.LBB12_21>:
    80203ede:	0000a517          	auipc	a0,0xa
    80203ee2:	d8250513          	addi	a0,a0,-638 # 8020dc60 <anon.32e88238351ec6f13c95b6c2887136c4.2.llvm.7602298555204137961>

0000000080203ee6 <.LBB12_22>:
    80203ee6:	0000a697          	auipc	a3,0xa
    80203eea:	daa68693          	addi	a3,a3,-598 # 8020dc90 <anon.32e88238351ec6f13c95b6c2887136c4.3.llvm.7602298555204137961>

0000000080203eee <.LBB12_23>:
    80203eee:	0000a717          	auipc	a4,0xa
    80203ef2:	f0a70713          	addi	a4,a4,-246 # 8020ddf8 <anon.32e88238351ec6f13c95b6c2887136c4.12.llvm.7602298555204137961>
    80203ef6:	fb040613          	addi	a2,s0,-80
    80203efa:	02b00593          	li	a1,43
    80203efe:	00006097          	auipc	ra,0x6
    80203f02:	8a4080e7          	jalr	-1884(ra) # 802097a2 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

0000000080203f08 <rust_oom>:
    80203f08:	711d                	addi	sp,sp,-96
    80203f0a:	ec86                	sd	ra,88(sp)
    80203f0c:	e8a2                	sd	s0,80(sp)
    80203f0e:	1080                	addi	s0,sp,96
    80203f10:	faa43023          	sd	a0,-96(s0)
    80203f14:	fab43423          	sd	a1,-88(s0)
    80203f18:	fa040513          	addi	a0,s0,-96
    80203f1c:	fea43023          	sd	a0,-32(s0)

0000000080203f20 <.LBB21_1>:
    80203f20:	00008517          	auipc	a0,0x8
    80203f24:	61e50513          	addi	a0,a0,1566 # 8020c53e <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17h0283edf57016c8a1E>
    80203f28:	fea43423          	sd	a0,-24(s0)

0000000080203f2c <.LBB21_2>:
    80203f2c:	0000a517          	auipc	a0,0xa
    80203f30:	4f450513          	addi	a0,a0,1268 # 8020e420 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.56>
    80203f34:	faa43823          	sd	a0,-80(s0)
    80203f38:	4505                	li	a0,1
    80203f3a:	faa43c23          	sd	a0,-72(s0)
    80203f3e:	fc043023          	sd	zero,-64(s0)
    80203f42:	fe040593          	addi	a1,s0,-32
    80203f46:	fcb43823          	sd	a1,-48(s0)
    80203f4a:	fca43c23          	sd	a0,-40(s0)

0000000080203f4e <.LBB21_3>:
    80203f4e:	0000a597          	auipc	a1,0xa
    80203f52:	4fa58593          	addi	a1,a1,1274 # 8020e448 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.58>
    80203f56:	fb040513          	addi	a0,s0,-80
    80203f5a:	00006097          	auipc	ra,0x6
    80203f5e:	914080e7          	jalr	-1772(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

0000000080203f64 <_ZN2os2mm15frame_allocator11frame_alloc17ha7fa5a63181a930bE>:
    80203f64:	7159                	addi	sp,sp,-112
    80203f66:	f486                	sd	ra,104(sp)
    80203f68:	f0a2                	sd	s0,96(sp)
    80203f6a:	eca6                	sd	s1,88(sp)
    80203f6c:	e8ca                	sd	s2,80(sp)
    80203f6e:	e4ce                	sd	s3,72(sp)
    80203f70:	1880                	addi	s0,sp,112

0000000080203f72 <.LBB27_12>:
    80203f72:	0021f517          	auipc	a0,0x21f
    80203f76:	1c650513          	addi	a0,a0,454 # 80423138 <_ZN84_$LT$os..mm..frame_allocator..FRAME_ALLOCATOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h8cc8f37f93278c83E.llvm.3875387582294015177>
    80203f7a:	00000097          	auipc	ra,0x0
    80203f7e:	2ee080e7          	jalr	750(ra) # 80204268 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E>
    80203f82:	84aa                	mv	s1,a0
    80203f84:	4505                	li	a0,1
    80203f86:	00a4b9af          	amoadd.d	s3,a0,(s1)
    80203f8a:	6488                	ld	a0,8(s1)
    80203f8c:	0230000f          	fence	r,rw
    80203f90:	ff351de3          	bne	a0,s3,80203f8a <.LBB27_12+0x18>
    80203f94:	7888                	ld	a0,48(s1)
    80203f96:	cd3d                	beqz	a0,80204014 <.LBB27_16+0x18>
    80203f98:	708c                	ld	a1,32(s1)
    80203f9a:	157d                	addi	a0,a0,-1
    80203f9c:	f888                	sd	a0,48(s1)
    80203f9e:	00351613          	slli	a2,a0,0x3
    80203fa2:	95b2                	add	a1,a1,a2
    80203fa4:	0005b903          	ld	s2,0(a1)

0000000080203fa8 <.LBB27_13>:
    80203fa8:	0021f597          	auipc	a1,0x21f
    80203fac:	1e058593          	addi	a1,a1,480 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    80203fb0:	618c                	ld	a1,0(a1)
    80203fb2:	4615                	li	a2,5
    80203fb4:	0ec5e063          	bltu	a1,a2,80204094 <.LBB27_20+0x1c>
    80203fb8:	6c8c                	ld	a1,24(s1)
    80203fba:	6890                	ld	a2,16(s1)
    80203fbc:	952e                	add	a0,a0,a1
    80203fbe:	8d11                	sub	a0,a0,a2
    80203fc0:	fca43823          	sd	a0,-48(s0)
    80203fc4:	fd040513          	addi	a0,s0,-48
    80203fc8:	fca43023          	sd	a0,-64(s0)

0000000080203fcc <.LBB27_14>:
    80203fcc:	00008517          	auipc	a0,0x8
    80203fd0:	1fc50513          	addi	a0,a0,508 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    80203fd4:	fca43423          	sd	a0,-56(s0)

0000000080203fd8 <.LBB27_15>:
    80203fd8:	0000a517          	auipc	a0,0xa
    80203fdc:	4f850513          	addi	a0,a0,1272 # 8020e4d0 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.66>
    80203fe0:	f8a43823          	sd	a0,-112(s0)
    80203fe4:	4509                	li	a0,2
    80203fe6:	f8a43c23          	sd	a0,-104(s0)
    80203fea:	fa043023          	sd	zero,-96(s0)
    80203fee:	fc040513          	addi	a0,s0,-64
    80203ff2:	faa43823          	sd	a0,-80(s0)
    80203ff6:	4505                	li	a0,1
    80203ff8:	faa43c23          	sd	a0,-72(s0)

0000000080203ffc <.LBB27_16>:
    80203ffc:	0000a617          	auipc	a2,0xa
    80204000:	55c60613          	addi	a2,a2,1372 # 8020e558 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.70>
    80204004:	f9040513          	addi	a0,s0,-112
    80204008:	4595                	li	a1,5
    8020400a:	00005097          	auipc	ra,0x5
    8020400e:	59a080e7          	jalr	1434(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80204012:	a049                	j	80204094 <.LBB27_20+0x1c>
    80204014:	6888                	ld	a0,16(s1)
    80204016:	6c8c                	ld	a1,24(s1)
    80204018:	00b51463          	bne	a0,a1,80204020 <.LBB27_16+0x24>
    8020401c:	4501                	li	a0,0
    8020401e:	a061                	j	802040a6 <.LBB27_20+0x2e>
    80204020:	00150613          	addi	a2,a0,1
    80204024:	e890                	sd	a2,16(s1)

0000000080204026 <.LBB27_17>:
    80204026:	0021f697          	auipc	a3,0x21f
    8020402a:	16268693          	addi	a3,a3,354 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    8020402e:	6294                	ld	a3,0(a3)
    80204030:	4715                	li	a4,5
    80204032:	04e6ef63          	bltu	a3,a4,80204090 <.LBB27_20+0x18>
    80204036:	fff54513          	not	a0,a0
    8020403a:	952e                	add	a0,a0,a1
    8020403c:	fca43823          	sd	a0,-48(s0)
    80204040:	fd040513          	addi	a0,s0,-48
    80204044:	fca43023          	sd	a0,-64(s0)

0000000080204048 <.LBB27_18>:
    80204048:	00008517          	auipc	a0,0x8
    8020404c:	18050513          	addi	a0,a0,384 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    80204050:	fca43423          	sd	a0,-56(s0)

0000000080204054 <.LBB27_19>:
    80204054:	0000a517          	auipc	a0,0xa
    80204058:	47c50513          	addi	a0,a0,1148 # 8020e4d0 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.66>
    8020405c:	f8a43823          	sd	a0,-112(s0)
    80204060:	4509                	li	a0,2
    80204062:	f8a43c23          	sd	a0,-104(s0)
    80204066:	fa043023          	sd	zero,-96(s0)
    8020406a:	fc040513          	addi	a0,s0,-64
    8020406e:	faa43823          	sd	a0,-80(s0)
    80204072:	4505                	li	a0,1
    80204074:	faa43c23          	sd	a0,-72(s0)

0000000080204078 <.LBB27_20>:
    80204078:	0000a617          	auipc	a2,0xa
    8020407c:	4a860613          	addi	a2,a2,1192 # 8020e520 <.Lanon.7250850224f0cd0be7dfa715dcebdfaa.69>
    80204080:	f9040513          	addi	a0,s0,-112
    80204084:	4595                	li	a1,5
    80204086:	00005097          	auipc	ra,0x5
    8020408a:	51e080e7          	jalr	1310(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    8020408e:	6890                	ld	a2,16(s1)
    80204090:	fff60913          	addi	s2,a2,-1
    80204094:	00c91513          	slli	a0,s2,0xc
    80204098:	6605                	lui	a2,0x1
    8020409a:	4581                	li	a1,0
    8020409c:	00008097          	auipc	ra,0x8
    802040a0:	5ae080e7          	jalr	1454(ra) # 8020c64a <memset>
    802040a4:	4505                	li	a0,1
    802040a6:	00198593          	addi	a1,s3,1
    802040aa:	0310000f          	fence	rw,w
    802040ae:	e48c                	sd	a1,8(s1)
    802040b0:	85ca                	mv	a1,s2
    802040b2:	69a6                	ld	s3,72(sp)
    802040b4:	6946                	ld	s2,80(sp)
    802040b6:	64e6                	ld	s1,88(sp)
    802040b8:	7406                	ld	s0,96(sp)
    802040ba:	70a6                	ld	ra,104(sp)
    802040bc:	6165                	addi	sp,sp,112
    802040be:	8082                	ret

00000000802040c0 <_ZN2os2mm15frame_allocator13frame_dealloc17h4828e963a0fceefbE>:
    802040c0:	7159                	addi	sp,sp,-112
    802040c2:	f486                	sd	ra,104(sp)
    802040c4:	f0a2                	sd	s0,96(sp)
    802040c6:	eca6                	sd	s1,88(sp)
    802040c8:	e8ca                	sd	s2,80(sp)
    802040ca:	e4ce                	sd	s3,72(sp)
    802040cc:	1880                	addi	s0,sp,112
    802040ce:	892a                	mv	s2,a0

00000000802040d0 <.LBB29_10>:
    802040d0:	0021f517          	auipc	a0,0x21f
    802040d4:	06850513          	addi	a0,a0,104 # 80423138 <_ZN84_$LT$os..mm..frame_allocator..FRAME_ALLOCATOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h8cc8f37f93278c83E.llvm.3875387582294015177>
    802040d8:	00000097          	auipc	ra,0x0
    802040dc:	190080e7          	jalr	400(ra) # 80204268 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E>
    802040e0:	84aa                	mv	s1,a0
    802040e2:	4505                	li	a0,1
    802040e4:	00a4b9af          	amoadd.d	s3,a0,(s1)
    802040e8:	6488                	ld	a0,8(s1)
    802040ea:	0230000f          	fence	r,rw
    802040ee:	ff351de3          	bne	a0,s3,802040e8 <.LBB29_10+0x18>
    802040f2:	f9243823          	sd	s2,-112(s0)
    802040f6:	6888                	ld	a0,16(s1)
    802040f8:	00a97f63          	bgeu	s2,a0,80204116 <.LBB29_10+0x46>
    802040fc:	7090                	ld	a2,32(s1)
    802040fe:	788c                	ld	a1,48(s1)
    80204100:	02048513          	addi	a0,s1,32
    80204104:	00359693          	slli	a3,a1,0x3
    80204108:	8732                	mv	a4,a2
    8020410a:	c2bd                	beqz	a3,80204170 <.LBB29_14+0x16>
    8020410c:	631c                	ld	a5,0(a4)
    8020410e:	0721                	addi	a4,a4,8
    80204110:	16e1                	addi	a3,a3,-8
    80204112:	ff279ce3          	bne	a5,s2,8020410a <.LBB29_10+0x3a>
    80204116:	f9040513          	addi	a0,s0,-112
    8020411a:	fca43423          	sd	a0,-56(s0)

000000008020411e <.LBB29_11>:
    8020411e:	00008517          	auipc	a0,0x8
    80204122:	a9250513          	addi	a0,a0,-1390 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80204126:	fca43823          	sd	a0,-48(s0)

000000008020412a <.LBB29_12>:
    8020412a:	0000a517          	auipc	a0,0xa
    8020412e:	48e50513          	addi	a0,a0,1166 # 8020e5b8 <anon.7250850224f0cd0be7dfa715dcebdfaa.73.llvm.3875387582294015177>
    80204132:	f8a43c23          	sd	a0,-104(s0)
    80204136:	4509                	li	a0,2
    80204138:	faa43023          	sd	a0,-96(s0)

000000008020413c <.LBB29_13>:
    8020413c:	0000a517          	auipc	a0,0xa
    80204140:	2ac50513          	addi	a0,a0,684 # 8020e3e8 <anon.7250850224f0cd0be7dfa715dcebdfaa.21.llvm.3875387582294015177>
    80204144:	faa43423          	sd	a0,-88(s0)
    80204148:	4505                	li	a0,1
    8020414a:	faa43823          	sd	a0,-80(s0)
    8020414e:	fc840593          	addi	a1,s0,-56
    80204152:	fab43c23          	sd	a1,-72(s0)
    80204156:	fca43023          	sd	a0,-64(s0)

000000008020415a <.LBB29_14>:
    8020415a:	0000a597          	auipc	a1,0xa
    8020415e:	47e58593          	addi	a1,a1,1150 # 8020e5d8 <anon.7250850224f0cd0be7dfa715dcebdfaa.74.llvm.3875387582294015177>
    80204162:	f9840513          	addi	a0,s0,-104
    80204166:	00005097          	auipc	ra,0x5
    8020416a:	708080e7          	jalr	1800(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
    8020416e:	0000                	unimp
    80204170:	7494                	ld	a3,40(s1)
    80204172:	00d59963          	bne	a1,a3,80204184 <.LBB29_14+0x2a>
    80204176:	4605                	li	a2,1
    80204178:	00000097          	auipc	ra,0x0
    8020417c:	a1c080e7          	jalr	-1508(ra) # 80203b94 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h60f035b4ed2cf83dE>
    80204180:	788c                	ld	a1,48(s1)
    80204182:	7090                	ld	a2,32(s1)
    80204184:	00359513          	slli	a0,a1,0x3
    80204188:	9532                	add	a0,a0,a2
    8020418a:	01253023          	sd	s2,0(a0)
    8020418e:	7888                	ld	a0,48(s1)
    80204190:	0505                	addi	a0,a0,1
    80204192:	f888                	sd	a0,48(s1)
    80204194:	00198513          	addi	a0,s3,1
    80204198:	0310000f          	fence	rw,w
    8020419c:	e488                	sd	a0,8(s1)
    8020419e:	69a6                	ld	s3,72(sp)
    802041a0:	6946                	ld	s2,80(sp)
    802041a2:	64e6                	ld	s1,88(sp)
    802041a4:	7406                	ld	s0,96(sp)
    802041a6:	70a6                	ld	ra,104(sp)
    802041a8:	6165                	addi	sp,sp,112
    802041aa:	8082                	ret

00000000802041ac <__rg_alloc>:
    802041ac:	1141                	addi	sp,sp,-16
    802041ae:	e406                	sd	ra,8(sp)
    802041b0:	e022                	sd	s0,0(sp)
    802041b2:	0800                	addi	s0,sp,16

00000000802041b4 <.LBB30_1>:
    802041b4:	0021f617          	auipc	a2,0x21f
    802041b8:	e5c60613          	addi	a2,a2,-420 # 80423010 <_ZN2os2mm14heap_allocator14HEAP_ALLOCATOR17h1afcda432622910bE.llvm.3875387582294015177>
    802041bc:	86ae                	mv	a3,a1
    802041be:	85aa                	mv	a1,a0
    802041c0:	8532                	mv	a0,a2
    802041c2:	8636                	mv	a2,a3
    802041c4:	6402                	ld	s0,0(sp)
    802041c6:	60a2                	ld	ra,8(sp)
    802041c8:	0141                	addi	sp,sp,16
    802041ca:	00005317          	auipc	t1,0x5
    802041ce:	c8a30067          	jr	-886(t1) # 80208e54 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h0b502810223d0774E>

00000000802041d2 <__rg_dealloc>:
    802041d2:	1141                	addi	sp,sp,-16
    802041d4:	e406                	sd	ra,8(sp)
    802041d6:	e022                	sd	s0,0(sp)
    802041d8:	0800                	addi	s0,sp,16

00000000802041da <.LBB31_1>:
    802041da:	0021f697          	auipc	a3,0x21f
    802041de:	e3668693          	addi	a3,a3,-458 # 80423010 <_ZN2os2mm14heap_allocator14HEAP_ALLOCATOR17h1afcda432622910bE.llvm.3875387582294015177>
    802041e2:	8732                	mv	a4,a2
    802041e4:	862e                	mv	a2,a1
    802041e6:	85aa                	mv	a1,a0
    802041e8:	8536                	mv	a0,a3
    802041ea:	86ba                	mv	a3,a4
    802041ec:	6402                	ld	s0,0(sp)
    802041ee:	60a2                	ld	ra,8(sp)
    802041f0:	0141                	addi	sp,sp,16
    802041f2:	00005317          	auipc	t1,0x5
    802041f6:	ca630067          	jr	-858(t1) # 80208e98 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hbeaa7ce81ea34079E>

00000000802041fa <__rg_realloc>:
    802041fa:	7139                	addi	sp,sp,-64
    802041fc:	fc06                	sd	ra,56(sp)
    802041fe:	f822                	sd	s0,48(sp)
    80204200:	f426                	sd	s1,40(sp)
    80204202:	f04a                	sd	s2,32(sp)
    80204204:	ec4e                	sd	s3,24(sp)
    80204206:	e852                	sd	s4,16(sp)
    80204208:	e456                	sd	s5,8(sp)
    8020420a:	0080                	addi	s0,sp,64
    8020420c:	84b6                	mv	s1,a3
    8020420e:	8932                	mv	s2,a2
    80204210:	8a2e                	mv	s4,a1
    80204212:	89aa                	mv	s3,a0

0000000080204214 <.LBB32_5>:
    80204214:	0021f517          	auipc	a0,0x21f
    80204218:	dfc50513          	addi	a0,a0,-516 # 80423010 <_ZN2os2mm14heap_allocator14HEAP_ALLOCATOR17h1afcda432622910bE.llvm.3875387582294015177>
    8020421c:	85b6                	mv	a1,a3
    8020421e:	00005097          	auipc	ra,0x5
    80204222:	c36080e7          	jalr	-970(ra) # 80208e54 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h0b502810223d0774E>
    80204226:	8aaa                	mv	s5,a0
    80204228:	c515                	beqz	a0,80204254 <.LBB32_6+0x16>
    8020422a:	0144e363          	bltu	s1,s4,80204230 <.LBB32_5+0x1c>
    8020422e:	84d2                	mv	s1,s4
    80204230:	8556                	mv	a0,s5
    80204232:	85ce                	mv	a1,s3
    80204234:	8626                	mv	a2,s1
    80204236:	00008097          	auipc	ra,0x8
    8020423a:	3c2080e7          	jalr	962(ra) # 8020c5f8 <memcpy>

000000008020423e <.LBB32_6>:
    8020423e:	0021f517          	auipc	a0,0x21f
    80204242:	dd250513          	addi	a0,a0,-558 # 80423010 <_ZN2os2mm14heap_allocator14HEAP_ALLOCATOR17h1afcda432622910bE.llvm.3875387582294015177>
    80204246:	85ce                	mv	a1,s3
    80204248:	8652                	mv	a2,s4
    8020424a:	86ca                	mv	a3,s2
    8020424c:	00005097          	auipc	ra,0x5
    80204250:	c4c080e7          	jalr	-948(ra) # 80208e98 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hbeaa7ce81ea34079E>
    80204254:	8556                	mv	a0,s5
    80204256:	6aa2                	ld	s5,8(sp)
    80204258:	6a42                	ld	s4,16(sp)
    8020425a:	69e2                	ld	s3,24(sp)
    8020425c:	7902                	ld	s2,32(sp)
    8020425e:	74a2                	ld	s1,40(sp)
    80204260:	7442                	ld	s0,48(sp)
    80204262:	70e2                	ld	ra,56(sp)
    80204264:	6121                	addi	sp,sp,64
    80204266:	8082                	ret

0000000080204268 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E>:
    80204268:	711d                	addi	sp,sp,-96
    8020426a:	ec86                	sd	ra,88(sp)
    8020426c:	e8a2                	sd	s0,80(sp)
    8020426e:	e4a6                	sd	s1,72(sp)
    80204270:	1080                	addi	s0,sp,96
    80204272:	84aa                	mv	s1,a0
    80204274:	0330000f          	fence	rw,rw
    80204278:	6108                	ld	a0,0(a0)
    8020427a:	0230000f          	fence	r,rw
    8020427e:	e949                	bnez	a0,80204310 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0xa8>
    80204280:	4585                	li	a1,1
    80204282:	1604b52f          	lr.d.aqrl	a0,(s1)
    80204286:	e501                	bnez	a0,8020428e <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0x26>
    80204288:	1eb4b62f          	sc.d.aqrl	a2,a1,(s1)
    8020428c:	fa7d                	bnez	a2,80204282 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0x1a>
    8020428e:	e149                	bnez	a0,80204310 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0xa8>
    80204290:	fa943423          	sd	s1,-88(s0)
    80204294:	fab40823          	sb	a1,-80(s0)
    80204298:	fc043023          	sd	zero,-64(s0)
    8020429c:	fa043c23          	sd	zero,-72(s0)
    802042a0:	fc043423          	sd	zero,-56(s0)
    802042a4:	fc043823          	sd	zero,-48(s0)
    802042a8:	fc043c23          	sd	zero,-40(s0)
    802042ac:	fe043023          	sd	zero,-32(s0)
    802042b0:	6488                	ld	a0,8(s1)
    802042b2:	cd01                	beqz	a0,802042ca <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0x62>
    802042b4:	7c88                	ld	a0,56(s1)
    802042b6:	c911                	beqz	a0,802042ca <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0x62>
    802042b8:	00351593          	slli	a1,a0,0x3
    802042bc:	c599                	beqz	a1,802042ca <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0x62>
    802042be:	7888                	ld	a0,48(s1)
    802042c0:	4621                	li	a2,8
    802042c2:	00001097          	auipc	ra,0x1
    802042c6:	e30080e7          	jalr	-464(ra) # 802050f2 <__rust_dealloc>
    802042ca:	4505                	li	a0,1
    802042cc:	e488                	sd	a0,8(s1)
    802042ce:	fc843503          	ld	a0,-56(s0)
    802042d2:	e888                	sd	a0,16(s1)
    802042d4:	fd043503          	ld	a0,-48(s0)
    802042d8:	ec88                	sd	a0,24(s1)
    802042da:	fd843503          	ld	a0,-40(s0)
    802042de:	f088                	sd	a0,32(s1)
    802042e0:	fe043503          	ld	a0,-32(s0)
    802042e4:	f488                	sd	a0,40(s1)
    802042e6:	4521                	li	a0,8
    802042e8:	f888                	sd	a0,48(s1)
    802042ea:	fc043503          	ld	a0,-64(s0)
    802042ee:	e0a8                	sd	a0,64(s1)
    802042f0:	fb843503          	ld	a0,-72(s0)
    802042f4:	fc88                	sd	a0,56(s1)
    802042f6:	fa040823          	sb	zero,-80(s0)
    802042fa:	0310000f          	fence	rw,w
    802042fe:	4509                	li	a0,2
    80204300:	e088                	sd	a0,0(s1)
    80204302:	fa840513          	addi	a0,s0,-88
    80204306:	00005097          	auipc	ra,0x5
    8020430a:	13a080e7          	jalr	314(ra) # 80209440 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>
    8020430e:	a005                	j	8020432e <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0xc6>
    80204310:	4585                	li	a1,1
    80204312:	00a5cb63          	blt	a1,a0,80204328 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0xc0>
    80204316:	02b51363          	bne	a0,a1,8020433c <.LBB5_14>
    8020431a:	0330000f          	fence	rw,rw
    8020431e:	6088                	ld	a0,0(s1)
    80204320:	0230000f          	fence	r,rw
    80204324:	fea5d9e3          	bge	a1,a0,80204316 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E+0xae>
    80204328:	4589                	li	a1,2
    8020432a:	02b51863          	bne	a0,a1,8020435a <.LBB5_16>
    8020432e:	01048513          	addi	a0,s1,16
    80204332:	64a6                	ld	s1,72(sp)
    80204334:	6446                	ld	s0,80(sp)
    80204336:	60e6                	ld	ra,88(sp)
    80204338:	6125                	addi	sp,sp,96
    8020433a:	8082                	ret

000000008020433c <.LBB5_14>:
    8020433c:	0000a517          	auipc	a0,0xa
    80204340:	36c50513          	addi	a0,a0,876 # 8020e6a8 <anon.e23bd1af8f06b7c127eefd5ed446d80e.4.llvm.2911979462662558833>

0000000080204344 <.LBB5_15>:
    80204344:	0000a617          	auipc	a2,0xa
    80204348:	38c60613          	addi	a2,a2,908 # 8020e6d0 <anon.e23bd1af8f06b7c127eefd5ed446d80e.5.llvm.2911979462662558833>
    8020434c:	02800593          	li	a1,40
    80204350:	00005097          	auipc	ra,0x5
    80204354:	4b2080e7          	jalr	1202(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000008020435a <.LBB5_16>:
    8020435a:	0000a517          	auipc	a0,0xa
    8020435e:	2c150513          	addi	a0,a0,705 # 8020e61b <anon.e23bd1af8f06b7c127eefd5ed446d80e.1.llvm.2911979462662558833>

0000000080204362 <.LBB5_17>:
    80204362:	0000a617          	auipc	a2,0xa
    80204366:	32e60613          	addi	a2,a2,814 # 8020e690 <anon.e23bd1af8f06b7c127eefd5ed446d80e.3.llvm.2911979462662558833>
    8020436a:	45c5                	li	a1,17
    8020436c:	00005097          	auipc	ra,0x5
    80204370:	496080e7          	jalr	1174(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000080204376 <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE>:
    80204376:	716d                	addi	sp,sp,-272
    80204378:	e606                	sd	ra,264(sp)
    8020437a:	e222                	sd	s0,256(sp)
    8020437c:	fda6                	sd	s1,248(sp)
    8020437e:	f9ca                	sd	s2,240(sp)
    80204380:	f5ce                	sd	s3,232(sp)
    80204382:	f1d2                	sd	s4,224(sp)
    80204384:	0a00                	addi	s0,sp,272
    80204386:	89aa                	mv	s3,a0
    80204388:	0330000f          	fence	rw,rw
    8020438c:	6108                	ld	a0,0(a0)
    8020438e:	0230000f          	fence	r,rw
    80204392:	e575                	bnez	a0,8020447e <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0x108>
    80204394:	4585                	li	a1,1
    80204396:	1609b52f          	lr.d.aqrl	a0,(s3)
    8020439a:	e501                	bnez	a0,802043a2 <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0x2c>
    8020439c:	1eb9b62f          	sc.d.aqrl	a2,a1,(s3)
    802043a0:	fa7d                	bnez	a2,80204396 <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0x20>
    802043a2:	ed71                	bnez	a0,8020447e <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0x108>
    802043a4:	ef343c23          	sd	s3,-264(s0)
    802043a8:	f0b40023          	sb	a1,-256(s0)
    802043ac:	f5040513          	addi	a0,s0,-176
    802043b0:	ffffd097          	auipc	ra,0xffffd
    802043b4:	504080e7          	jalr	1284(ra) # 802018b4 <_ZN2os2mm10memory_set9MemorySet10new_kernel17h346be50c08b3a770E>
    802043b8:	f8043823          	sd	zero,-112(s0)
    802043bc:	f5043503          	ld	a0,-176(s0)
    802043c0:	f5843583          	ld	a1,-168(s0)
    802043c4:	f6043603          	ld	a2,-160(s0)
    802043c8:	f8043423          	sd	zero,-120(s0)
    802043cc:	f8a43c23          	sd	a0,-104(s0)
    802043d0:	fab43023          	sd	a1,-96(s0)
    802043d4:	fac43423          	sd	a2,-88(s0)
    802043d8:	f6843503          	ld	a0,-152(s0)
    802043dc:	f7043583          	ld	a1,-144(s0)
    802043e0:	f7843603          	ld	a2,-136(s0)
    802043e4:	f8043683          	ld	a3,-128(s0)
    802043e8:	faa43823          	sd	a0,-80(s0)
    802043ec:	fab43c23          	sd	a1,-72(s0)
    802043f0:	fcc43023          	sd	a2,-64(s0)
    802043f4:	fcd43423          	sd	a3,-56(s0)
    802043f8:	f0840513          	addi	a0,s0,-248
    802043fc:	f8840593          	addi	a1,s0,-120
    80204400:	04800613          	li	a2,72
    80204404:	00008097          	auipc	ra,0x8
    80204408:	1f4080e7          	jalr	500(ra) # 8020c5f8 <memcpy>
    8020440c:	05800513          	li	a0,88
    80204410:	45a1                	li	a1,8
    80204412:	00001097          	auipc	ra,0x1
    80204416:	cd8080e7          	jalr	-808(ra) # 802050ea <__rust_alloc>
    8020441a:	c971                	beqz	a0,802044ee <.LBB6_19+0x14>
    8020441c:	892a                	mv	s2,a0
    8020441e:	4a05                	li	s4,1
    80204420:	01453023          	sd	s4,0(a0)
    80204424:	01453423          	sd	s4,8(a0)
    80204428:	0541                	addi	a0,a0,16
    8020442a:	f0840593          	addi	a1,s0,-248
    8020442e:	04800613          	li	a2,72
    80204432:	00008097          	auipc	ra,0x8
    80204436:	1c6080e7          	jalr	454(ra) # 8020c5f8 <memcpy>
    8020443a:	0089b503          	ld	a0,8(s3)
    8020443e:	00898493          	addi	s1,s3,8
    80204442:	cd11                	beqz	a0,8020445e <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0xe8>
    80204444:	414005b3          	neg	a1,s4
    80204448:	02b5352f          	amoadd.d.rl	a0,a1,(a0)
    8020444c:	01451963          	bne	a0,s4,8020445e <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0xe8>
    80204450:	0230000f          	fence	r,rw
    80204454:	8526                	mv	a0,s1
    80204456:	fffff097          	auipc	ra,0xfffff
    8020445a:	0a2080e7          	jalr	162(ra) # 802034f8 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h27ee4cb9dd84a7a4E>
    8020445e:	0129b423          	sd	s2,8(s3)
    80204462:	f0040023          	sb	zero,-256(s0)
    80204466:	0310000f          	fence	rw,w
    8020446a:	4509                	li	a0,2
    8020446c:	00a9b023          	sd	a0,0(s3)
    80204470:	ef840513          	addi	a0,s0,-264
    80204474:	00005097          	auipc	ra,0x5
    80204478:	fcc080e7          	jalr	-52(ra) # 80209440 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>
    8020447c:	a01d                	j	802044a2 <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0x12c>
    8020447e:	4585                	li	a1,1
    80204480:	00a5cc63          	blt	a1,a0,80204498 <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0x122>
    80204484:	02b51863          	bne	a0,a1,802044b4 <.LBB6_16>
    80204488:	0330000f          	fence	rw,rw
    8020448c:	0009b503          	ld	a0,0(s3)
    80204490:	0230000f          	fence	r,rw
    80204494:	fea5d8e3          	bge	a1,a0,80204484 <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE+0x10e>
    80204498:	4589                	li	a1,2
    8020449a:	02b51c63          	bne	a0,a1,802044d2 <.LBB6_18>
    8020449e:	00898493          	addi	s1,s3,8
    802044a2:	8526                	mv	a0,s1
    802044a4:	7a0e                	ld	s4,224(sp)
    802044a6:	79ae                	ld	s3,232(sp)
    802044a8:	794e                	ld	s2,240(sp)
    802044aa:	74ee                	ld	s1,248(sp)
    802044ac:	6412                	ld	s0,256(sp)
    802044ae:	60b2                	ld	ra,264(sp)
    802044b0:	6151                	addi	sp,sp,272
    802044b2:	8082                	ret

00000000802044b4 <.LBB6_16>:
    802044b4:	0000a517          	auipc	a0,0xa
    802044b8:	1f450513          	addi	a0,a0,500 # 8020e6a8 <anon.e23bd1af8f06b7c127eefd5ed446d80e.4.llvm.2911979462662558833>

00000000802044bc <.LBB6_17>:
    802044bc:	0000a617          	auipc	a2,0xa
    802044c0:	21460613          	addi	a2,a2,532 # 8020e6d0 <anon.e23bd1af8f06b7c127eefd5ed446d80e.5.llvm.2911979462662558833>
    802044c4:	02800593          	li	a1,40
    802044c8:	00005097          	auipc	ra,0x5
    802044cc:	33a080e7          	jalr	826(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

00000000802044d2 <.LBB6_18>:
    802044d2:	0000a517          	auipc	a0,0xa
    802044d6:	14950513          	addi	a0,a0,329 # 8020e61b <anon.e23bd1af8f06b7c127eefd5ed446d80e.1.llvm.2911979462662558833>

00000000802044da <.LBB6_19>:
    802044da:	0000a617          	auipc	a2,0xa
    802044de:	1b660613          	addi	a2,a2,438 # 8020e690 <anon.e23bd1af8f06b7c127eefd5ed446d80e.3.llvm.2911979462662558833>
    802044e2:	45c5                	li	a1,17
    802044e4:	00005097          	auipc	ra,0x5
    802044e8:	31e080e7          	jalr	798(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    802044ec:	0000                	unimp
    802044ee:	05800513          	li	a0,88
    802044f2:	45a1                	li	a1,8
    802044f4:	00005097          	auipc	ra,0x5
    802044f8:	f6c080e7          	jalr	-148(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

00000000802044fe <_ZN5alloc11collections5btree3map5entry24VacantEntry$LT$K$C$V$GT$6insert17hd8d45f2021e03e40E>:
    802044fe:	7121                	addi	sp,sp,-448
    80204500:	ff06                	sd	ra,440(sp)
    80204502:	fb22                	sd	s0,432(sp)
    80204504:	f726                	sd	s1,424(sp)
    80204506:	f34a                	sd	s2,416(sp)
    80204508:	ef4e                	sd	s3,408(sp)
    8020450a:	eb52                	sd	s4,400(sp)
    8020450c:	e756                	sd	s5,392(sp)
    8020450e:	e35a                	sd	s6,384(sp)
    80204510:	fede                	sd	s7,376(sp)
    80204512:	fae2                	sd	s8,368(sp)
    80204514:	f6e6                	sd	s9,360(sp)
    80204516:	f2ea                	sd	s10,352(sp)
    80204518:	0380                	addi	s0,sp,448
    8020451a:	86ae                	mv	a3,a1
    8020451c:	84aa                	mv	s1,a0
    8020451e:	6d08                	ld	a0,24(a0)
    80204520:	688c                	ld	a1,16(s1)
    80204522:	6498                	ld	a4,8(s1)
    80204524:	6090                	ld	a2,0(s1)
    80204526:	eea43c23          	sd	a0,-264(s0)
    8020452a:	eeb43823          	sd	a1,-272(s0)
    8020452e:	eee43423          	sd	a4,-280(s0)
    80204532:	e4040513          	addi	a0,s0,-448
    80204536:	ee840593          	addi	a1,s0,-280
    8020453a:	ffffd097          	auipc	ra,0xffffd
    8020453e:	ac6080e7          	jalr	-1338(ra) # 80201000 <_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16insert_recursing17hed45043bfddf607fE>
    80204542:	e4043503          	ld	a0,-448(s0)
    80204546:	e7843903          	ld	s2,-392(s0)
    8020454a:	4585                	li	a1,1
    8020454c:	0ab51f63          	bne	a0,a1,8020460a <_ZN5alloc11collections5btree3map5entry24VacantEntry$LT$K$C$V$GT$6insert17hd8d45f2021e03e40E+0x10c>
    80204550:	0204ba03          	ld	s4,32(s1)
    80204554:	008a3c03          	ld	s8,8(s4)
    80204558:	0c0c0f63          	beqz	s8,80204636 <.LBB14_12>
    8020455c:	e5843b83          	ld	s7,-424(s0)
    80204560:	e6043b03          	ld	s6,-416(s0)
    80204564:	e6843c83          	ld	s9,-408(s0)
    80204568:	e7043a83          	ld	s5,-400(s0)
    8020456c:	000a3d03          	ld	s10,0(s4)
    80204570:	12000513          	li	a0,288
    80204574:	45a1                	li	a1,8
    80204576:	00001097          	auipc	ra,0x1
    8020457a:	b74080e7          	jalr	-1164(ra) # 802050ea <__rust_alloc>
    8020457e:	c979                	beqz	a0,80204654 <.LBB14_13+0x16>
    80204580:	84aa                	mv	s1,a0
    80204582:	00053023          	sd	zero,0(a0)
    80204586:	00850993          	addi	s3,a0,8
    8020458a:	ee840593          	addi	a1,s0,-280
    8020458e:	0b200613          	li	a2,178
    80204592:	854e                	mv	a0,s3
    80204594:	00008097          	auipc	ra,0x8
    80204598:	064080e7          	jalr	100(ra) # 8020c5f8 <memcpy>
    8020459c:	0a049d23          	sh	zero,186(s1)
    802045a0:	0bc48513          	addi	a0,s1,188
    802045a4:	e8440593          	addi	a1,s0,-380
    802045a8:	06400613          	li	a2,100
    802045ac:	00008097          	auipc	ra,0x8
    802045b0:	04c080e7          	jalr	76(ra) # 8020c5f8 <memcpy>
    802045b4:	0d84b023          	sd	s8,192(s1)
    802045b8:	009c3023          	sd	s1,0(s8)
    802045bc:	0a0c1c23          	sh	zero,184(s8)
    802045c0:	001d0513          	addi	a0,s10,1
    802045c4:	00aa3023          	sd	a0,0(s4)
    802045c8:	009a3423          	sd	s1,8(s4)
    802045cc:	099d1c63          	bne	s10,s9,80204664 <.LBB14_14>
    802045d0:	0ba4d503          	lhu	a0,186(s1)
    802045d4:	45ad                	li	a1,11
    802045d6:	0ab57663          	bgeu	a0,a1,80204682 <.LBB14_16>
    802045da:	0c048593          	addi	a1,s1,192
    802045de:	00150613          	addi	a2,a0,1
    802045e2:	0ac49d23          	sh	a2,186(s1)
    802045e6:	050e                	slli	a0,a0,0x3
    802045e8:	00a986b3          	add	a3,s3,a0
    802045ec:	0176b023          	sd	s7,0(a3)
    802045f0:	9526                	add	a0,a0,s1
    802045f2:	07653023          	sd	s6,96(a0)
    802045f6:	00361513          	slli	a0,a2,0x3
    802045fa:	952e                	add	a0,a0,a1
    802045fc:	01553023          	sd	s5,0(a0)
    80204600:	009ab023          	sd	s1,0(s5)
    80204604:	0aca9c23          	sh	a2,184(s5)
    80204608:	a019                	j	8020460e <_ZN5alloc11collections5btree3map5entry24VacantEntry$LT$K$C$V$GT$6insert17hd8d45f2021e03e40E+0x110>
    8020460a:	0204ba03          	ld	s4,32(s1)
    8020460e:	010a3503          	ld	a0,16(s4)
    80204612:	0505                	addi	a0,a0,1
    80204614:	00aa3823          	sd	a0,16(s4)
    80204618:	854a                	mv	a0,s2
    8020461a:	7d16                	ld	s10,352(sp)
    8020461c:	7cb6                	ld	s9,360(sp)
    8020461e:	7c56                	ld	s8,368(sp)
    80204620:	7bf6                	ld	s7,376(sp)
    80204622:	6b1a                	ld	s6,384(sp)
    80204624:	6aba                	ld	s5,392(sp)
    80204626:	6a5a                	ld	s4,400(sp)
    80204628:	69fa                	ld	s3,408(sp)
    8020462a:	791a                	ld	s2,416(sp)
    8020462c:	74ba                	ld	s1,424(sp)
    8020462e:	745a                	ld	s0,432(sp)
    80204630:	70fa                	ld	ra,440(sp)
    80204632:	6139                	addi	sp,sp,448
    80204634:	8082                	ret

0000000080204636 <.LBB14_12>:
    80204636:	0000a517          	auipc	a0,0xa
    8020463a:	fba50513          	addi	a0,a0,-70 # 8020e5f0 <anon.e23bd1af8f06b7c127eefd5ed446d80e.0.llvm.2911979462662558833>

000000008020463e <.LBB14_13>:
    8020463e:	0000a617          	auipc	a2,0xa
    80204642:	13a60613          	addi	a2,a2,314 # 8020e778 <anon.e23bd1af8f06b7c127eefd5ed446d80e.7.llvm.2911979462662558833>
    80204646:	02b00593          	li	a1,43
    8020464a:	00005097          	auipc	ra,0x5
    8020464e:	1b8080e7          	jalr	440(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    80204652:	0000                	unimp
    80204654:	12000513          	li	a0,288
    80204658:	45a1                	li	a1,8
    8020465a:	00005097          	auipc	ra,0x5
    8020465e:	e06080e7          	jalr	-506(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

0000000080204664 <.LBB14_14>:
    80204664:	00009517          	auipc	a0,0x9
    80204668:	99c50513          	addi	a0,a0,-1636 # 8020d000 <etext>

000000008020466c <.LBB14_15>:
    8020466c:	00009617          	auipc	a2,0x9
    80204670:	a5460613          	addi	a2,a2,-1452 # 8020d0c0 <anon.e40d34b2198299e64180d29ee7524e0e.2.llvm.16949081364390679315>
    80204674:	03000593          	li	a1,48
    80204678:	00005097          	auipc	ra,0x5
    8020467c:	18a080e7          	jalr	394(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000080204682 <.LBB14_16>:
    80204682:	00009517          	auipc	a0,0x9
    80204686:	a7650513          	addi	a0,a0,-1418 # 8020d0f8 <anon.e40d34b2198299e64180d29ee7524e0e.3.llvm.16949081364390679315>

000000008020468a <.LBB14_17>:
    8020468a:	00009617          	auipc	a2,0x9
    8020468e:	b4e60613          	addi	a2,a2,-1202 # 8020d1d8 <anon.e40d34b2198299e64180d29ee7524e0e.4.llvm.16949081364390679315>
    80204692:	02000593          	li	a1,32
    80204696:	00005097          	auipc	ra,0x5
    8020469a:	16c080e7          	jalr	364(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

00000000802046a0 <_ZN2os2mm4init17hae8c73cff4027d75E>:
    802046a0:	7175                	addi	sp,sp,-144
    802046a2:	e506                	sd	ra,136(sp)
    802046a4:	e122                	sd	s0,128(sp)
    802046a6:	fca6                	sd	s1,120(sp)
    802046a8:	f8ca                	sd	s2,112(sp)
    802046aa:	f4ce                	sd	s3,104(sp)
    802046ac:	f0d2                	sd	s4,96(sp)
    802046ae:	ecd6                	sd	s5,88(sp)
    802046b0:	0900                	addi	s0,sp,144

00000000802046b2 <.LBB22_12>:
    802046b2:	0021f517          	auipc	a0,0x21f
    802046b6:	95e50513          	addi	a0,a0,-1698 # 80423010 <_ZN2os2mm14heap_allocator14HEAP_ALLOCATOR17h1afcda432622910bE.llvm.3875387582294015177>
    802046ba:	00004097          	auipc	ra,0x4
    802046be:	78a080e7          	jalr	1930(ra) # 80208e44 <_ZN78_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..ops..deref..Deref$GT$5deref17he2d8c0fd128a6883E>
    802046c2:	892a                	mv	s2,a0
    802046c4:	4505                	li	a0,1
    802046c6:	00a934af          	amoadd.d	s1,a0,(s2)
    802046ca:	00893503          	ld	a0,8(s2)
    802046ce:	0230000f          	fence	r,rw
    802046d2:	fe951ce3          	bne	a0,s1,802046ca <.LBB22_12+0x18>
    802046d6:	01090513          	addi	a0,s2,16

00000000802046da <.LBB22_13>:
    802046da:	0001f597          	auipc	a1,0x1f
    802046de:	93658593          	addi	a1,a1,-1738 # 80223010 <_ZN2os2mm14heap_allocator10HEAP_SPACE17h940b42d74c24e4d0E.llvm.3875387582294015177>
    802046e2:	00200637          	lui	a2,0x200
    802046e6:	00004097          	auipc	ra,0x4
    802046ea:	0fe080e7          	jalr	254(ra) # 802087e4 <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E>
    802046ee:	00148513          	addi	a0,s1,1
    802046f2:	0310000f          	fence	rw,w
    802046f6:	00a93423          	sd	a0,8(s2)

00000000802046fa <.LBB22_14>:
    802046fa:	0021f517          	auipc	a0,0x21f
    802046fe:	a3e50513          	addi	a0,a0,-1474 # 80423138 <_ZN84_$LT$os..mm..frame_allocator..FRAME_ALLOCATOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h8cc8f37f93278c83E.llvm.3875387582294015177>
    80204702:	00000097          	auipc	ra,0x0
    80204706:	b66080e7          	jalr	-1178(ra) # 80204268 <_ZN4spin4once13Once$LT$T$GT$9call_once17h972849ad6be57f43E>
    8020470a:	84aa                	mv	s1,a0
    8020470c:	4505                	li	a0,1
    8020470e:	00a4ba2f          	amoadd.d	s4,a0,(s1)
    80204712:	6488                	ld	a0,8(s1)
    80204714:	0230000f          	fence	r,rw
    80204718:	ff451de3          	bne	a0,s4,80204712 <.LBB22_14+0x18>
    8020471c:	6505                	lui	a0,0x1
    8020471e:	357d                	addiw	a0,a0,-1

0000000080204720 <.LBB22_15>:
    80204720:	00220597          	auipc	a1,0x220
    80204724:	8e058593          	addi	a1,a1,-1824 # 80424000 <ebss>
    80204728:	952e                	add	a0,a0,a1
    8020472a:	8131                	srli	a0,a0,0xc
    8020472c:	e888                	sd	a0,16(s1)
    8020472e:	000995b7          	lui	a1,0x99
    80204732:	8005859b          	addiw	a1,a1,-2048
    80204736:	ec8c                	sd	a1,24(s1)
    80204738:	40a58533          	sub	a0,a1,a0
    8020473c:	f8a43423          	sd	a0,-120(s0)
    80204740:	f8840513          	addi	a0,s0,-120
    80204744:	f6a43c23          	sd	a0,-136(s0)

0000000080204748 <.LBB22_16>:
    80204748:	00008517          	auipc	a0,0x8
    8020474c:	a8050513          	addi	a0,a0,-1408 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    80204750:	f8a43023          	sd	a0,-128(s0)
    80204754:	f9040513          	addi	a0,s0,-112
    80204758:	fca43023          	sd	a0,-64(s0)

000000008020475c <.LBB22_17>:
    8020475c:	0000a517          	auipc	a0,0xa
    80204760:	d4450513          	addi	a0,a0,-700 # 8020e4a0 <anon.7250850224f0cd0be7dfa715dcebdfaa.63.llvm.3875387582294015177>
    80204764:	f8a43823          	sd	a0,-112(s0)
    80204768:	4509                	li	a0,2
    8020476a:	f8a43c23          	sd	a0,-104(s0)
    8020476e:	fa043023          	sd	zero,-96(s0)
    80204772:	f7840993          	addi	s3,s0,-136
    80204776:	fb343823          	sd	s3,-80(s0)
    8020477a:	4a85                	li	s5,1
    8020477c:	fb543c23          	sd	s5,-72(s0)

0000000080204780 <.LBB22_18>:
    80204780:	00009597          	auipc	a1,0x9
    80204784:	4b058593          	addi	a1,a1,1200 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80204788:	fc040913          	addi	s2,s0,-64
    8020478c:	f9040613          	addi	a2,s0,-112
    80204790:	854a                	mv	a0,s2
    80204792:	00006097          	auipc	ra,0x6
    80204796:	b48080e7          	jalr	-1208(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    8020479a:	e569                	bnez	a0,80204864 <.LBB22_25>
    8020479c:	001a0513          	addi	a0,s4,1
    802047a0:	0310000f          	fence	rw,w
    802047a4:	e488                	sd	a0,8(s1)

00000000802047a6 <.LBB22_19>:
    802047a6:	0001f517          	auipc	a0,0x1f
    802047aa:	85a50513          	addi	a0,a0,-1958 # 80223000 <boot_stack_top>
    802047ae:	00000097          	auipc	ra,0x0
    802047b2:	bc8080e7          	jalr	-1080(ra) # 80204376 <_ZN4spin4once13Once$LT$T$GT$9call_once17h98b26a3fa58e103eE>
    802047b6:	6104                	ld	s1,0(a0)
    802047b8:	01048513          	addi	a0,s1,16
    802047bc:	01553a2f          	amoadd.d	s4,s5,(a0)
    802047c0:	6c88                	ld	a0,24(s1)
    802047c2:	0230000f          	fence	r,rw
    802047c6:	ff451de3          	bne	a0,s4,802047c0 <.LBB22_19+0x1a>

00000000802047ca <.LBB22_20>:
    802047ca:	0021f517          	auipc	a0,0x21f
    802047ce:	9be50513          	addi	a0,a0,-1602 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    802047d2:	610c                	ld	a1,0(a0)
    802047d4:	557d                	li	a0,-1
    802047d6:	4611                	li	a2,4
    802047d8:	157e                	slli	a0,a0,0x3f
    802047da:	06b67063          	bgeu	a2,a1,8020483a <.LBB22_24+0x18>
    802047de:	708c                	ld	a1,32(s1)
    802047e0:	00a5eab3          	or	s5,a1,a0
    802047e4:	fd543023          	sd	s5,-64(s0)
    802047e8:	f7243c23          	sd	s2,-136(s0)

00000000802047ec <.LBB22_21>:
    802047ec:	00007517          	auipc	a0,0x7
    802047f0:	3c450513          	addi	a0,a0,964 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    802047f4:	f8a43023          	sd	a0,-128(s0)

00000000802047f8 <.LBB22_22>:
    802047f8:	00009517          	auipc	a0,0x9
    802047fc:	3b850513          	addi	a0,a0,952 # 8020dbb0 <anon.f2b1b5a509bdedcdd67207527f4f0965.33.llvm.1283535708719223612>
    80204800:	f8a43823          	sd	a0,-112(s0)
    80204804:	4505                	li	a0,1
    80204806:	f8a43c23          	sd	a0,-104(s0)

000000008020480a <.LBB22_23>:
    8020480a:	00009597          	auipc	a1,0x9
    8020480e:	3b658593          	addi	a1,a1,950 # 8020dbc0 <anon.f2b1b5a509bdedcdd67207527f4f0965.34.llvm.1283535708719223612>
    80204812:	fab43023          	sd	a1,-96(s0)
    80204816:	faa43423          	sd	a0,-88(s0)
    8020481a:	fb343823          	sd	s3,-80(s0)
    8020481e:	faa43c23          	sd	a0,-72(s0)

0000000080204822 <.LBB22_24>:
    80204822:	00009617          	auipc	a2,0x9
    80204826:	3d660613          	addi	a2,a2,982 # 8020dbf8 <anon.f2b1b5a509bdedcdd67207527f4f0965.35.llvm.1283535708719223612>
    8020482a:	f9040513          	addi	a0,s0,-112
    8020482e:	4595                	li	a1,5
    80204830:	00005097          	auipc	ra,0x5
    80204834:	d74080e7          	jalr	-652(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80204838:	a021                	j	80204840 <.LBB22_24+0x1e>
    8020483a:	708c                	ld	a1,32(s1)
    8020483c:	00a5eab3          	or	s5,a1,a0
    80204840:	180a9073          	csrw	satp,s5
    80204844:	12000073          	sfence.vma
    80204848:	001a0513          	addi	a0,s4,1
    8020484c:	0310000f          	fence	rw,w
    80204850:	ec88                	sd	a0,24(s1)
    80204852:	6ae6                	ld	s5,88(sp)
    80204854:	7a06                	ld	s4,96(sp)
    80204856:	79a6                	ld	s3,104(sp)
    80204858:	7946                	ld	s2,112(sp)
    8020485a:	74e6                	ld	s1,120(sp)
    8020485c:	640a                	ld	s0,128(sp)
    8020485e:	60aa                	ld	ra,136(sp)
    80204860:	6149                	addi	sp,sp,144
    80204862:	8082                	ret

0000000080204864 <.LBB22_25>:
    80204864:	00009517          	auipc	a0,0x9
    80204868:	3fc50513          	addi	a0,a0,1020 # 8020dc60 <anon.32e88238351ec6f13c95b6c2887136c4.2.llvm.7602298555204137961>

000000008020486c <.LBB22_26>:
    8020486c:	00009697          	auipc	a3,0x9
    80204870:	42468693          	addi	a3,a3,1060 # 8020dc90 <anon.32e88238351ec6f13c95b6c2887136c4.3.llvm.7602298555204137961>

0000000080204874 <.LBB22_27>:
    80204874:	00009717          	auipc	a4,0x9
    80204878:	58470713          	addi	a4,a4,1412 # 8020ddf8 <anon.32e88238351ec6f13c95b6c2887136c4.12.llvm.7602298555204137961>
    8020487c:	f9040613          	addi	a2,s0,-112
    80204880:	02b00593          	li	a1,43
    80204884:	00005097          	auipc	ra,0x5
    80204888:	f1e080e7          	jalr	-226(ra) # 802097a2 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

000000008020488e <_ZN2os10hypervisor9hypercall17hc33c4bef141caf5dE>:
    8020488e:	1141                	addi	sp,sp,-16
    80204890:	e406                	sd	ra,8(sp)
    80204892:	e022                	sd	s0,0(sp)
    80204894:	0800                	addi	s0,sp,16
    80204896:	a001                	j	80204896 <_ZN2os10hypervisor9hypercall17hc33c4bef141caf5dE+0x8>

0000000080204898 <_ZN2os10hypervisor14run_hypervisor17hcd2a29475573a063E>:
    80204898:	7155                	addi	sp,sp,-208
    8020489a:	e586                	sd	ra,200(sp)
    8020489c:	e1a2                	sd	s0,192(sp)
    8020489e:	fd26                	sd	s1,184(sp)
    802048a0:	f94a                	sd	s2,176(sp)
    802048a2:	f54e                	sd	s3,168(sp)
    802048a4:	0980                	addi	s0,sp,208

00000000802048a6 <.LBB24_31>:
    802048a6:	0021f917          	auipc	s2,0x21f
    802048aa:	8e290913          	addi	s2,s2,-1822 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    802048ae:	00093503          	ld	a0,0(s2)
    802048b2:	458d                	li	a1,3
    802048b4:	04b56063          	bltu	a0,a1,802048f4 <.LBB24_34+0x16>

00000000802048b8 <.LBB24_32>:
    802048b8:	0000a517          	auipc	a0,0xa
    802048bc:	00050513          	mv	a0,a0
    802048c0:	faa43423          	sd	a0,-88(s0)
    802048c4:	4505                	li	a0,1
    802048c6:	faa43823          	sd	a0,-80(s0)
    802048ca:	fa043c23          	sd	zero,-72(s0)

00000000802048ce <.LBB24_33>:
    802048ce:	0000a517          	auipc	a0,0xa
    802048d2:	ec250513          	addi	a0,a0,-318 # 8020e790 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.16>
    802048d6:	fca43423          	sd	a0,-56(s0)
    802048da:	fc043823          	sd	zero,-48(s0)

00000000802048de <.LBB24_34>:
    802048de:	0000a617          	auipc	a2,0xa
    802048e2:	fea60613          	addi	a2,a2,-22 # 8020e8c8 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.27>
    802048e6:	fa840513          	addi	a0,s0,-88
    802048ea:	458d                	li	a1,3
    802048ec:	00005097          	auipc	ra,0x5
    802048f0:	cb8080e7          	jalr	-840(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    802048f4:	4485                	li	s1,1
    802048f6:	00003097          	auipc	ra,0x3
    802048fa:	042080e7          	jalr	66(ra) # 80207938 <_ZN3rvm4arch24check_hypervisor_feature17h8f5c78f0490ea352E>
    802048fe:	1c050563          	beqz	a0,80204ac8 <.LBB24_43+0x32>
    80204902:	00093503          	ld	a0,0(s2)
    80204906:	448d                	li	s1,3
    80204908:	0e957e63          	bgeu	a0,s1,80204a04 <.LBB24_36>

000000008020490c <.LBB24_35>:
    8020490c:	00000517          	auipc	a0,0x0
    80204910:	f8250513          	addi	a0,a0,-126 # 8020488e <_ZN2os10hypervisor9hypercall17hc33c4bef141caf5dE>
    80204914:	faa43023          	sd	a0,-96(s0)
    80204918:	00093503          	ld	a0,0(s2)
    8020491c:	12957c63          	bgeu	a0,s1,80204a54 <.LBB24_39+0x14>
    80204920:	00003097          	auipc	ra,0x3
    80204924:	fe2080e7          	jalr	-30(ra) # 80207902 <_ZN3rvm4arch5guest5Guest3new17he42c0c66579e0941E>
    80204928:	00157693          	andi	a3,a0,1
    8020492c:	862e                	mv	a2,a1
    8020492e:	18069863          	bnez	a3,80204abe <.LBB24_43+0x28>
    80204932:	f2c43823          	sd	a2,-208(s0)
    80204936:	fa043583          	ld	a1,-96(s0)
    8020493a:	4985                	li	s3,1
    8020493c:	0136352f          	amoadd.d	a0,s3,(a2)
    80204940:	56fd                	li	a3,-1
    80204942:	52a6da63          	bge	a3,a0,80204e76 <.LBB24_53+0x6a>
    80204946:	fa840513          	addi	a0,s0,-88
    8020494a:	00001097          	auipc	ra,0x1
    8020494e:	a84080e7          	jalr	-1404(ra) # 802053ce <_ZN3rvm4arch4vcpu4Vcpu3new17haaa24ffb27d7e35bE>
    80204952:	fc641503          	lh	a0,-58(s0)
    80204956:	fc441583          	lh	a1,-60(s0)
    8020495a:	fc245603          	lhu	a2,-62(s0)
    8020495e:	fa844683          	lbu	a3,-88(s0)
    80204962:	f8a41623          	sh	a0,-116(s0)
    80204966:	01059513          	slli	a0,a1,0x10
    8020496a:	8d51                	or	a0,a0,a2
    8020496c:	f8a42423          	sw	a0,-120(s0)
    80204970:	fac45503          	lhu	a0,-84(s0)
    80204974:	faa45583          	lhu	a1,-86(s0)
    80204978:	fb045603          	lhu	a2,-80(s0)
    8020497c:	fae45703          	lhu	a4,-82(s0)
    80204980:	0542                	slli	a0,a0,0x10
    80204982:	8d4d                	or	a0,a0,a1
    80204984:	01061593          	slli	a1,a2,0x10
    80204988:	8dd9                	or	a1,a1,a4
    8020498a:	1582                	slli	a1,a1,0x20
    8020498c:	8d4d                	or	a0,a0,a1
    8020498e:	f6a43823          	sd	a0,-144(s0)
    80204992:	fb445503          	lhu	a0,-76(s0)
    80204996:	fb245583          	lhu	a1,-78(s0)
    8020499a:	fb845603          	lhu	a2,-72(s0)
    8020499e:	fb645703          	lhu	a4,-74(s0)
    802049a2:	0542                	slli	a0,a0,0x10
    802049a4:	8d4d                	or	a0,a0,a1
    802049a6:	01061593          	slli	a1,a2,0x10
    802049aa:	8dd9                	or	a1,a1,a4
    802049ac:	1582                	slli	a1,a1,0x20
    802049ae:	fbc45603          	lhu	a2,-68(s0)
    802049b2:	8d4d                	or	a0,a0,a1
    802049b4:	f6a43c23          	sd	a0,-136(s0)
    802049b8:	fba45503          	lhu	a0,-70(s0)
    802049bc:	01061593          	slli	a1,a2,0x10
    802049c0:	fc045603          	lhu	a2,-64(s0)
    802049c4:	fbe45703          	lhu	a4,-66(s0)
    802049c8:	8d4d                	or	a0,a0,a1
    802049ca:	fa944483          	lbu	s1,-87(s0)
    802049ce:	01061593          	slli	a1,a2,0x10
    802049d2:	8dd9                	or	a1,a1,a4
    802049d4:	1582                	slli	a1,a1,0x20
    802049d6:	8d4d                	or	a0,a0,a1
    802049d8:	f8a43023          	sd	a0,-128(s0)
    802049dc:	0f369e63          	bne	a3,s3,80204ad8 <.LBB24_43+0x42>
    802049e0:	f3043503          	ld	a0,-208(s0)
    802049e4:	4585                	li	a1,1
    802049e6:	40b00633          	neg	a2,a1
    802049ea:	02c5352f          	amoadd.d.rl	a0,a2,(a0)
    802049ee:	0cb51d63          	bne	a0,a1,80204ac8 <.LBB24_43+0x32>
    802049f2:	0230000f          	fence	r,rw
    802049f6:	f3040513          	addi	a0,s0,-208
    802049fa:	fffff097          	auipc	ra,0xfffff
    802049fe:	be4080e7          	jalr	-1052(ra) # 802035de <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8a611755a0ebc84eE>
    80204a02:	a0d9                	j	80204ac8 <.LBB24_43+0x32>

0000000080204a04 <.LBB24_36>:
    80204a04:	0000a517          	auipc	a0,0xa
    80204a08:	da450513          	addi	a0,a0,-604 # 8020e7a8 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.17>
    80204a0c:	faa43423          	sd	a0,-88(s0)
    80204a10:	4505                	li	a0,1
    80204a12:	faa43823          	sd	a0,-80(s0)
    80204a16:	fa043c23          	sd	zero,-72(s0)

0000000080204a1a <.LBB24_37>:
    80204a1a:	0000a517          	auipc	a0,0xa
    80204a1e:	d7650513          	addi	a0,a0,-650 # 8020e790 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.16>
    80204a22:	fca43423          	sd	a0,-56(s0)
    80204a26:	fc043823          	sd	zero,-48(s0)

0000000080204a2a <.LBB24_38>:
    80204a2a:	0000a617          	auipc	a2,0xa
    80204a2e:	dae60613          	addi	a2,a2,-594 # 8020e7d8 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.20>
    80204a32:	fa840513          	addi	a0,s0,-88
    80204a36:	458d                	li	a1,3
    80204a38:	00005097          	auipc	ra,0x5
    80204a3c:	b6c080e7          	jalr	-1172(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>

0000000080204a40 <.LBB24_39>:
    80204a40:	00000517          	auipc	a0,0x0
    80204a44:	e4e50513          	addi	a0,a0,-434 # 8020488e <_ZN2os10hypervisor9hypercall17hc33c4bef141caf5dE>
    80204a48:	faa43023          	sd	a0,-96(s0)
    80204a4c:	00093503          	ld	a0,0(s2)
    80204a50:	ec9568e3          	bltu	a0,s1,80204920 <.LBB24_35+0x14>
    80204a54:	fa040513          	addi	a0,s0,-96
    80204a58:	f6a43823          	sd	a0,-144(s0)

0000000080204a5c <.LBB24_40>:
    80204a5c:	00007517          	auipc	a0,0x7
    80204a60:	15450513          	addi	a0,a0,340 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80204a64:	f6a43c23          	sd	a0,-136(s0)

0000000080204a68 <.LBB24_41>:
    80204a68:	0000a517          	auipc	a0,0xa
    80204a6c:	dc050513          	addi	a0,a0,-576 # 8020e828 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.22>
    80204a70:	faa43423          	sd	a0,-88(s0)
    80204a74:	4505                	li	a0,1
    80204a76:	faa43823          	sd	a0,-80(s0)

0000000080204a7a <.LBB24_42>:
    80204a7a:	0000a597          	auipc	a1,0xa
    80204a7e:	dbe58593          	addi	a1,a1,-578 # 8020e838 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.23>
    80204a82:	fab43c23          	sd	a1,-72(s0)
    80204a86:	fca43023          	sd	a0,-64(s0)
    80204a8a:	f7040593          	addi	a1,s0,-144
    80204a8e:	fcb43423          	sd	a1,-56(s0)
    80204a92:	fca43823          	sd	a0,-48(s0)

0000000080204a96 <.LBB24_43>:
    80204a96:	0000a617          	auipc	a2,0xa
    80204a9a:	dda60613          	addi	a2,a2,-550 # 8020e870 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.24>
    80204a9e:	fa840513          	addi	a0,s0,-88
    80204aa2:	458d                	li	a1,3
    80204aa4:	00005097          	auipc	ra,0x5
    80204aa8:	b00080e7          	jalr	-1280(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80204aac:	00003097          	auipc	ra,0x3
    80204ab0:	e56080e7          	jalr	-426(ra) # 80207902 <_ZN3rvm4arch5guest5Guest3new17he42c0c66579e0941E>
    80204ab4:	00157693          	andi	a3,a0,1
    80204ab8:	862e                	mv	a2,a1
    80204aba:	e6068ce3          	beqz	a3,80204932 <.LBB24_35+0x26>
    80204abe:	8121                	srli	a0,a0,0x8
    80204ac0:	03861593          	slli	a1,a2,0x38
    80204ac4:	00b564b3          	or	s1,a0,a1
    80204ac8:	8526                	mv	a0,s1
    80204aca:	79aa                	ld	s3,168(sp)
    80204acc:	794a                	ld	s2,176(sp)
    80204ace:	74ea                	ld	s1,184(sp)
    80204ad0:	640e                	ld	s0,192(sp)
    80204ad2:	60ae                	ld	ra,200(sp)
    80204ad4:	6169                	addi	sp,sp,208
    80204ad6:	8082                	ret
    80204ad8:	f8845503          	lhu	a0,-120(s0)
    80204adc:	f8645583          	lhu	a1,-122(s0)
    80204ae0:	f8c45603          	lhu	a2,-116(s0)
    80204ae4:	f8a45683          	lhu	a3,-118(s0)
    80204ae8:	0542                	slli	a0,a0,0x10
    80204aea:	8d4d                	or	a0,a0,a1
    80204aec:	01061593          	slli	a1,a2,0x10
    80204af0:	8dd5                	or	a1,a1,a3
    80204af2:	1582                	slli	a1,a1,0x20
    80204af4:	8d4d                	or	a0,a0,a1
    80204af6:	f8045583          	lhu	a1,-128(s0)
    80204afa:	f7e45603          	lhu	a2,-130(s0)
    80204afe:	f8445683          	lhu	a3,-124(s0)
    80204b02:	f8245703          	lhu	a4,-126(s0)
    80204b06:	05c2                	slli	a1,a1,0x10
    80204b08:	8dd1                	or	a1,a1,a2
    80204b0a:	01069613          	slli	a2,a3,0x10
    80204b0e:	8e59                	or	a2,a2,a4
    80204b10:	f7845683          	lhu	a3,-136(s0)
    80204b14:	f7645703          	lhu	a4,-138(s0)
    80204b18:	1602                	slli	a2,a2,0x20
    80204b1a:	8dd1                	or	a1,a1,a2
    80204b1c:	01069613          	slli	a2,a3,0x10
    80204b20:	8e59                	or	a2,a2,a4
    80204b22:	f7c45683          	lhu	a3,-132(s0)
    80204b26:	f7a45703          	lhu	a4,-134(s0)
    80204b2a:	f4a43c23          	sd	a0,-168(s0)
    80204b2e:	f4b43823          	sd	a1,-176(s0)
    80204b32:	06c2                	slli	a3,a3,0x10
    80204b34:	8ed9                	or	a3,a3,a4
    80204b36:	f3043703          	ld	a4,-208(s0)
    80204b3a:	1682                	slli	a3,a3,0x20
    80204b3c:	8e55                	or	a2,a2,a3
    80204b3e:	f4c43423          	sd	a2,-184(s0)
    80204b42:	fae43023          	sd	a4,-96(s0)
    80204b46:	f4a43023          	sd	a0,-192(s0)
    80204b4a:	f2b43c23          	sd	a1,-200(s0)
    80204b4e:	f2c43823          	sd	a2,-208(s0)
    80204b52:	00093503          	ld	a0,0(s2)
    80204b56:	458d                	li	a1,3
    80204b58:	04b56063          	bltu	a0,a1,80204b98 <.LBB24_46+0x16>

0000000080204b5c <.LBB24_44>:
    80204b5c:	0000a517          	auipc	a0,0xa
    80204b60:	dbc50513          	addi	a0,a0,-580 # 8020e918 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.29>
    80204b64:	faa43423          	sd	a0,-88(s0)
    80204b68:	4505                	li	a0,1
    80204b6a:	faa43823          	sd	a0,-80(s0)
    80204b6e:	fa043c23          	sd	zero,-72(s0)

0000000080204b72 <.LBB24_45>:
    80204b72:	0000a517          	auipc	a0,0xa
    80204b76:	c1e50513          	addi	a0,a0,-994 # 8020e790 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.16>
    80204b7a:	fca43423          	sd	a0,-56(s0)
    80204b7e:	fc043823          	sd	zero,-48(s0)

0000000080204b82 <.LBB24_46>:
    80204b82:	0000a617          	auipc	a2,0xa
    80204b86:	da660613          	addi	a2,a2,-602 # 8020e928 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.30>
    80204b8a:	fa840513          	addi	a0,s0,-88
    80204b8e:	458d                	li	a1,3
    80204b90:	00005097          	auipc	ra,0x5
    80204b94:	a14080e7          	jalr	-1516(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80204b98:	fa840513          	addi	a0,s0,-88
    80204b9c:	f3040593          	addi	a1,s0,-208
    80204ba0:	00001097          	auipc	ra,0x1
    80204ba4:	a16080e7          	jalr	-1514(ra) # 802055b6 <_ZN3rvm4arch4vcpu4Vcpu6resume17h85ec843c6a7818b7E>
    80204ba8:	fd641503          	lh	a0,-42(s0)
    80204bac:	fd441583          	lh	a1,-44(s0)
    80204bb0:	fd245603          	lhu	a2,-46(s0)
    80204bb4:	fa844683          	lbu	a3,-88(s0)
    80204bb8:	f8a41e23          	sh	a0,-100(s0)
    80204bbc:	01059513          	slli	a0,a1,0x10
    80204bc0:	8d51                	or	a0,a0,a2
    80204bc2:	f8a42c23          	sw	a0,-104(s0)
    80204bc6:	fac45503          	lhu	a0,-84(s0)
    80204bca:	faa45583          	lhu	a1,-86(s0)
    80204bce:	fb045603          	lhu	a2,-80(s0)
    80204bd2:	fae45703          	lhu	a4,-82(s0)
    80204bd6:	0542                	slli	a0,a0,0x10
    80204bd8:	8d4d                	or	a0,a0,a1
    80204bda:	01061593          	slli	a1,a2,0x10
    80204bde:	8dd9                	or	a1,a1,a4
    80204be0:	1582                	slli	a1,a1,0x20
    80204be2:	8d4d                	or	a0,a0,a1
    80204be4:	f6a43823          	sd	a0,-144(s0)
    80204be8:	fb445503          	lhu	a0,-76(s0)
    80204bec:	fb245583          	lhu	a1,-78(s0)
    80204bf0:	fb845603          	lhu	a2,-72(s0)
    80204bf4:	fb645703          	lhu	a4,-74(s0)
    80204bf8:	0542                	slli	a0,a0,0x10
    80204bfa:	8d4d                	or	a0,a0,a1
    80204bfc:	01061593          	slli	a1,a2,0x10
    80204c00:	8dd9                	or	a1,a1,a4
    80204c02:	1582                	slli	a1,a1,0x20
    80204c04:	8d4d                	or	a0,a0,a1
    80204c06:	f6a43c23          	sd	a0,-136(s0)
    80204c0a:	fbc45503          	lhu	a0,-68(s0)
    80204c0e:	fba45583          	lhu	a1,-70(s0)
    80204c12:	fc045603          	lhu	a2,-64(s0)
    80204c16:	fbe45703          	lhu	a4,-66(s0)
    80204c1a:	0542                	slli	a0,a0,0x10
    80204c1c:	8d4d                	or	a0,a0,a1
    80204c1e:	01061593          	slli	a1,a2,0x10
    80204c22:	8dd9                	or	a1,a1,a4
    80204c24:	1582                	slli	a1,a1,0x20
    80204c26:	8d4d                	or	a0,a0,a1
    80204c28:	f8a43023          	sd	a0,-128(s0)
    80204c2c:	fc445503          	lhu	a0,-60(s0)
    80204c30:	fc245583          	lhu	a1,-62(s0)
    80204c34:	fc845603          	lhu	a2,-56(s0)
    80204c38:	fc645703          	lhu	a4,-58(s0)
    80204c3c:	0542                	slli	a0,a0,0x10
    80204c3e:	8d4d                	or	a0,a0,a1
    80204c40:	01061593          	slli	a1,a2,0x10
    80204c44:	8dd9                	or	a1,a1,a4
    80204c46:	1582                	slli	a1,a1,0x20
    80204c48:	fcc45603          	lhu	a2,-52(s0)
    80204c4c:	8d4d                	or	a0,a0,a1
    80204c4e:	f8a43423          	sd	a0,-120(s0)
    80204c52:	fca45503          	lhu	a0,-54(s0)
    80204c56:	01061593          	slli	a1,a2,0x10
    80204c5a:	fd045603          	lhu	a2,-48(s0)
    80204c5e:	fce45703          	lhu	a4,-50(s0)
    80204c62:	8d4d                	or	a0,a0,a1
    80204c64:	fa944483          	lbu	s1,-87(s0)
    80204c68:	01061593          	slli	a1,a2,0x10
    80204c6c:	8dd9                	or	a1,a1,a4
    80204c6e:	1582                	slli	a1,a1,0x20
    80204c70:	8dc9                	or	a1,a1,a0
    80204c72:	4505                	li	a0,1
    80204c74:	f8b43823          	sd	a1,-112(s0)
    80204c78:	04a69d63          	bne	a3,a0,80204cd2 <.LBB24_46+0x150>
    80204c7c:	f3043583          	ld	a1,-208(s0)
    80204c80:	40a00633          	neg	a2,a0
    80204c84:	02c5b5af          	amoadd.d.rl	a1,a2,(a1)
    80204c88:	00a59a63          	bne	a1,a0,80204c9c <.LBB24_46+0x11a>
    80204c8c:	0230000f          	fence	r,rw
    80204c90:	f3040513          	addi	a0,s0,-208
    80204c94:	fffff097          	auipc	ra,0xfffff
    80204c98:	94a080e7          	jalr	-1718(ra) # 802035de <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8a611755a0ebc84eE>
    80204c9c:	f3843503          	ld	a0,-200(s0)
    80204ca0:	21800593          	li	a1,536
    80204ca4:	4605                	li	a2,1
    80204ca6:	4905                	li	s2,1
    80204ca8:	00000097          	auipc	ra,0x0
    80204cac:	44a080e7          	jalr	1098(ra) # 802050f2 <__rust_dealloc>
    80204cb0:	fa043503          	ld	a0,-96(s0)
    80204cb4:	412005b3          	neg	a1,s2
    80204cb8:	02b5352f          	amoadd.d.rl	a0,a1,(a0)
    80204cbc:	e12516e3          	bne	a0,s2,80204ac8 <.LBB24_43+0x32>
    80204cc0:	0230000f          	fence	r,rw
    80204cc4:	fa040513          	addi	a0,s0,-96
    80204cc8:	fffff097          	auipc	ra,0xfffff
    80204ccc:	916080e7          	jalr	-1770(ra) # 802035de <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8a611755a0ebc84eE>
    80204cd0:	bbe5                	j	80204ac8 <.LBB24_43+0x32>
    80204cd2:	f9845503          	lhu	a0,-104(s0)
    80204cd6:	f9645583          	lhu	a1,-106(s0)
    80204cda:	f9c45603          	lhu	a2,-100(s0)
    80204cde:	f9a45683          	lhu	a3,-102(s0)
    80204ce2:	0542                	slli	a0,a0,0x10
    80204ce4:	8d4d                	or	a0,a0,a1
    80204ce6:	01061593          	slli	a1,a2,0x10
    80204cea:	8dd5                	or	a1,a1,a3
    80204cec:	1582                	slli	a1,a1,0x20
    80204cee:	8d4d                	or	a0,a0,a1
    80204cf0:	f6a43423          	sd	a0,-152(s0)
    80204cf4:	f9045503          	lhu	a0,-112(s0)
    80204cf8:	f8e45583          	lhu	a1,-114(s0)
    80204cfc:	f9445603          	lhu	a2,-108(s0)
    80204d00:	f9245683          	lhu	a3,-110(s0)
    80204d04:	0542                	slli	a0,a0,0x10
    80204d06:	8d4d                	or	a0,a0,a1
    80204d08:	01061593          	slli	a1,a2,0x10
    80204d0c:	8dd5                	or	a1,a1,a3
    80204d0e:	1582                	slli	a1,a1,0x20
    80204d10:	8d4d                	or	a0,a0,a1
    80204d12:	f6a43023          	sd	a0,-160(s0)
    80204d16:	f8845503          	lhu	a0,-120(s0)
    80204d1a:	f8645583          	lhu	a1,-122(s0)
    80204d1e:	f8c45603          	lhu	a2,-116(s0)
    80204d22:	f8a45683          	lhu	a3,-118(s0)
    80204d26:	0542                	slli	a0,a0,0x10
    80204d28:	8d4d                	or	a0,a0,a1
    80204d2a:	01061593          	slli	a1,a2,0x10
    80204d2e:	8dd5                	or	a1,a1,a3
    80204d30:	1582                	slli	a1,a1,0x20
    80204d32:	8d4d                	or	a0,a0,a1
    80204d34:	f4a43c23          	sd	a0,-168(s0)
    80204d38:	f8045503          	lhu	a0,-128(s0)
    80204d3c:	f7e45583          	lhu	a1,-130(s0)
    80204d40:	f8445603          	lhu	a2,-124(s0)
    80204d44:	f8245683          	lhu	a3,-126(s0)
    80204d48:	0542                	slli	a0,a0,0x10
    80204d4a:	8d4d                	or	a0,a0,a1
    80204d4c:	01061593          	slli	a1,a2,0x10
    80204d50:	8dd5                	or	a1,a1,a3
    80204d52:	1582                	slli	a1,a1,0x20
    80204d54:	8d4d                	or	a0,a0,a1
    80204d56:	f4a43823          	sd	a0,-176(s0)
    80204d5a:	f7845503          	lhu	a0,-136(s0)
    80204d5e:	f7645583          	lhu	a1,-138(s0)
    80204d62:	f7c45603          	lhu	a2,-132(s0)
    80204d66:	f7a45683          	lhu	a3,-134(s0)
    80204d6a:	0542                	slli	a0,a0,0x10
    80204d6c:	8d4d                	or	a0,a0,a1
    80204d6e:	01061593          	slli	a1,a2,0x10
    80204d72:	8dd5                	or	a1,a1,a3
    80204d74:	1582                	slli	a1,a1,0x20
    80204d76:	8d4d                	or	a0,a0,a1
    80204d78:	f4a43423          	sd	a0,-184(s0)
    80204d7c:	00093503          	ld	a0,0(s2)
    80204d80:	448d                	li	s1,3
    80204d82:	04956e63          	bltu	a0,s1,80204dde <.LBB24_50+0x16>
    80204d86:	f4840513          	addi	a0,s0,-184
    80204d8a:	f6a43823          	sd	a0,-144(s0)

0000000080204d8e <.LBB24_47>:
    80204d8e:	00003517          	auipc	a0,0x3
    80204d92:	5de50513          	addi	a0,a0,1502 # 8020836c <_ZN63_$LT$rvm..packet..RvmExitPacket$u20$as$u20$core..fmt..Debug$GT$3fmt17h06a492f9d7bdea74E>
    80204d96:	f6a43c23          	sd	a0,-136(s0)

0000000080204d9a <.LBB24_48>:
    80204d9a:	0000a517          	auipc	a0,0xa
    80204d9e:	bc650513          	addi	a0,a0,-1082 # 8020e960 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.31>
    80204da2:	faa43423          	sd	a0,-88(s0)
    80204da6:	4505                	li	a0,1
    80204da8:	faa43823          	sd	a0,-80(s0)

0000000080204dac <.LBB24_49>:
    80204dac:	0000a597          	auipc	a1,0xa
    80204db0:	bc458593          	addi	a1,a1,-1084 # 8020e970 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.32>
    80204db4:	fab43c23          	sd	a1,-72(s0)
    80204db8:	fca43023          	sd	a0,-64(s0)
    80204dbc:	f7040593          	addi	a1,s0,-144
    80204dc0:	fcb43423          	sd	a1,-56(s0)
    80204dc4:	fca43823          	sd	a0,-48(s0)

0000000080204dc8 <.LBB24_50>:
    80204dc8:	0000a617          	auipc	a2,0xa
    80204dcc:	be060613          	addi	a2,a2,-1056 # 8020e9a8 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.33>
    80204dd0:	fa840513          	addi	a0,s0,-88
    80204dd4:	458d                	li	a1,3
    80204dd6:	00004097          	auipc	ra,0x4
    80204dda:	7ce080e7          	jalr	1998(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80204dde:	00093503          	ld	a0,0(s2)
    80204de2:	04956063          	bltu	a0,s1,80204e22 <.LBB24_53+0x16>

0000000080204de6 <.LBB24_51>:
    80204de6:	0000a517          	auipc	a0,0xa
    80204dea:	c1a50513          	addi	a0,a0,-998 # 8020ea00 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.35>
    80204dee:	faa43423          	sd	a0,-88(s0)
    80204df2:	4505                	li	a0,1
    80204df4:	faa43823          	sd	a0,-80(s0)
    80204df8:	fa043c23          	sd	zero,-72(s0)

0000000080204dfc <.LBB24_52>:
    80204dfc:	0000a517          	auipc	a0,0xa
    80204e00:	99450513          	addi	a0,a0,-1644 # 8020e790 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.16>
    80204e04:	fca43423          	sd	a0,-56(s0)
    80204e08:	fc043823          	sd	zero,-48(s0)

0000000080204e0c <.LBB24_53>:
    80204e0c:	0000a617          	auipc	a2,0xa
    80204e10:	c0460613          	addi	a2,a2,-1020 # 8020ea10 <.Lanon.e23bd1af8f06b7c127eefd5ed446d80e.36>
    80204e14:	fa840513          	addi	a0,s0,-88
    80204e18:	458d                	li	a1,3
    80204e1a:	00004097          	auipc	ra,0x4
    80204e1e:	78a080e7          	jalr	1930(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80204e22:	f3043503          	ld	a0,-208(s0)
    80204e26:	4905                	li	s2,1
    80204e28:	412004b3          	neg	s1,s2
    80204e2c:	0295352f          	amoadd.d.rl	a0,s1,(a0)
    80204e30:	01251a63          	bne	a0,s2,80204e44 <.LBB24_53+0x38>
    80204e34:	0230000f          	fence	r,rw
    80204e38:	f3040513          	addi	a0,s0,-208
    80204e3c:	ffffe097          	auipc	ra,0xffffe
    80204e40:	7a2080e7          	jalr	1954(ra) # 802035de <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8a611755a0ebc84eE>
    80204e44:	f3843503          	ld	a0,-200(s0)
    80204e48:	21800593          	li	a1,536
    80204e4c:	4605                	li	a2,1
    80204e4e:	00000097          	auipc	ra,0x0
    80204e52:	2a4080e7          	jalr	676(ra) # 802050f2 <__rust_dealloc>
    80204e56:	fa043503          	ld	a0,-96(s0)
    80204e5a:	0295352f          	amoadd.d.rl	a0,s1,(a0)
    80204e5e:	01251a63          	bne	a0,s2,80204e72 <.LBB24_53+0x66>
    80204e62:	0230000f          	fence	r,rw
    80204e66:	fa040513          	addi	a0,s0,-96
    80204e6a:	ffffe097          	auipc	ra,0xffffe
    80204e6e:	774080e7          	jalr	1908(ra) # 802035de <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h8a611755a0ebc84eE>
    80204e72:	44a1                	li	s1,8
    80204e74:	b991                	j	80204ac8 <.LBB24_43+0x32>
    80204e76:	0000                	unimp
	...

0000000080204e7a <_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d5e78f9cbc17ce0E>:
    80204e7a:	711d                	addi	sp,sp,-96
    80204e7c:	ec86                	sd	ra,88(sp)
    80204e7e:	e8a2                	sd	s0,80(sp)
    80204e80:	e4a6                	sd	s1,72(sp)
    80204e82:	e0ca                	sd	s2,64(sp)
    80204e84:	fc4e                	sd	s3,56(sp)
    80204e86:	f852                	sd	s4,48(sp)
    80204e88:	f456                	sd	s5,40(sp)
    80204e8a:	f05a                	sd	s6,32(sp)
    80204e8c:	1080                	addi	s0,sp,96
    80204e8e:	00053a83          	ld	s5,0(a0)
    80204e92:	6904                	ld	s1,16(a0)
    80204e94:	852e                	mv	a0,a1
    80204e96:	00006097          	auipc	ra,0x6
    80204e9a:	bea080e7          	jalr	-1046(ra) # 8020aa80 <_ZN4core3fmt9Formatter10debug_list17hc79335143a2bab08E>
    80204e9e:	fab43423          	sd	a1,-88(s0)
    80204ea2:	faa43023          	sd	a0,-96(s0)
    80204ea6:	cc85                	beqz	s1,80204ede <.LBB14_4+0x2e>
    80204ea8:	03000513          	li	a0,48
    80204eac:	02a484b3          	mul	s1,s1,a0

0000000080204eb0 <.LBB14_4>:
    80204eb0:	00009a17          	auipc	s4,0x9
    80204eb4:	3b8a0a13          	addi	s4,s4,952 # 8020e268 <anon.672c38a7988119262d91fd2bf01ce91d.4.llvm.7909925865301374293>
    80204eb8:	fa040913          	addi	s2,s0,-96
    80204ebc:	fb840993          	addi	s3,s0,-72
    80204ec0:	030a8b13          	addi	s6,s5,48
    80204ec4:	fb543c23          	sd	s5,-72(s0)
    80204ec8:	854a                	mv	a0,s2
    80204eca:	85ce                	mv	a1,s3
    80204ecc:	8652                	mv	a2,s4
    80204ece:	00005097          	auipc	ra,0x5
    80204ed2:	f08080e7          	jalr	-248(ra) # 80209dd6 <_ZN4core3fmt8builders8DebugSet5entry17hbbfe70946be6c10eE>
    80204ed6:	fd048493          	addi	s1,s1,-48
    80204eda:	8ada                	mv	s5,s6
    80204edc:	f0f5                	bnez	s1,80204ec0 <.LBB14_4+0x10>
    80204ede:	fa040513          	addi	a0,s0,-96
    80204ee2:	00005097          	auipc	ra,0x5
    80204ee6:	f0e080e7          	jalr	-242(ra) # 80209df0 <_ZN4core3fmt8builders9DebugList6finish17he6bd1c52112a8038E>
    80204eea:	7b02                	ld	s6,32(sp)
    80204eec:	7aa2                	ld	s5,40(sp)
    80204eee:	7a42                	ld	s4,48(sp)
    80204ef0:	79e2                	ld	s3,56(sp)
    80204ef2:	6906                	ld	s2,64(sp)
    80204ef4:	64a6                	ld	s1,72(sp)
    80204ef6:	6446                	ld	s0,80(sp)
    80204ef8:	60e6                	ld	ra,88(sp)
    80204efa:	6125                	addi	sp,sp,96
    80204efc:	8082                	ret

0000000080204efe <rust_main>:
    80204efe:	7119                	addi	sp,sp,-128
    80204f00:	fc86                	sd	ra,120(sp)
    80204f02:	f8a2                	sd	s0,112(sp)
    80204f04:	f4a6                	sd	s1,104(sp)
    80204f06:	f0ca                	sd	s2,96(sp)
    80204f08:	ecce                	sd	s3,88(sp)
    80204f0a:	e8d2                	sd	s4,80(sp)
    80204f0c:	e4d6                	sd	s5,72(sp)
    80204f0e:	0100                	addi	s0,sp,128

0000000080204f10 <.LBB31_13>:
    80204f10:	0021f517          	auipc	a0,0x21f
    80204f14:	0f050513          	addi	a0,a0,240 # 80424000 <ebss>

0000000080204f18 <.LBB31_14>:
    80204f18:	0001e597          	auipc	a1,0x1e
    80204f1c:	0e858593          	addi	a1,a1,232 # 80223000 <boot_stack_top>
    80204f20:	00a5f963          	bgeu	a1,a0,80204f32 <.LBB31_15>
    80204f24:	00158613          	addi	a2,a1,1
    80204f28:	00058023          	sb	zero,0(a1)
    80204f2c:	85b2                	mv	a1,a2
    80204f2e:	fea66be3          	bltu	a2,a0,80204f24 <.LBB31_14+0xc>

0000000080204f32 <.LBB31_15>:
    80204f32:	00009517          	auipc	a0,0x9
    80204f36:	f2650513          	addi	a0,a0,-218 # 8020de58 <.Lanon.32e88238351ec6f13c95b6c2887136c4.15>

0000000080204f3a <.LBB31_16>:
    80204f3a:	00009597          	auipc	a1,0x9
    80204f3e:	ed658593          	addi	a1,a1,-298 # 8020de10 <anon.32e88238351ec6f13c95b6c2887136c4.13.llvm.7602298555204137961>
    80204f42:	00004097          	auipc	ra,0x4
    80204f46:	60a080e7          	jalr	1546(ra) # 8020954c <_ZN3log10set_logger17h845e942e3735d12aE>
    80204f4a:	16051b63          	bnez	a0,802050c0 <.LBB31_32>
    80204f4e:	0310000f          	fence	rw,w

0000000080204f52 <.LBB31_17>:
    80204f52:	0021e497          	auipc	s1,0x21e
    80204f56:	23648493          	addi	s1,s1,566 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    80204f5a:	0004b023          	sd	zero,0(s1)
    80204f5e:	f9840513          	addi	a0,s0,-104
    80204f62:	f8a43423          	sd	a0,-120(s0)

0000000080204f66 <.LBB31_18>:
    80204f66:	0000a517          	auipc	a0,0xa
    80204f6a:	b2a50513          	addi	a0,a0,-1238 # 8020ea90 <.Lanon.a913d6cbc142f26d34638a748f68ecf8.69>
    80204f6e:	f8a43c23          	sd	a0,-104(s0)
    80204f72:	4505                	li	a0,1
    80204f74:	faa43023          	sd	a0,-96(s0)
    80204f78:	fa043423          	sd	zero,-88(s0)

0000000080204f7c <.LBB31_19>:
    80204f7c:	0000aa17          	auipc	s4,0xa
    80204f80:	acca0a13          	addi	s4,s4,-1332 # 8020ea48 <.Lanon.a913d6cbc142f26d34638a748f68ecf8.38>
    80204f84:	fb443c23          	sd	s4,-72(s0)
    80204f88:	fc043023          	sd	zero,-64(s0)

0000000080204f8c <.LBB31_20>:
    80204f8c:	00009597          	auipc	a1,0x9
    80204f90:	ca458593          	addi	a1,a1,-860 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80204f94:	f8840993          	addi	s3,s0,-120
    80204f98:	f9840913          	addi	s2,s0,-104
    80204f9c:	854e                	mv	a0,s3
    80204f9e:	864a                	mv	a2,s2
    80204fa0:	00005097          	auipc	ra,0x5
    80204fa4:	33a080e7          	jalr	826(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80204fa8:	ed7d                	bnez	a0,802050a6 <.LBB31_29>
    80204faa:	fffff097          	auipc	ra,0xfffff
    80204fae:	6f6080e7          	jalr	1782(ra) # 802046a0 <_ZN2os2mm4init17hae8c73cff4027d75E>
    80204fb2:	ffffd097          	auipc	ra,0xffffd
    80204fb6:	5e0080e7          	jalr	1504(ra) # 80202592 <_ZN2os2mm10memory_set10remap_test17h8207b0ea6d972ca4E>
    80204fba:	ffffe097          	auipc	ra,0xffffe
    80204fbe:	32e080e7          	jalr	814(ra) # 802032e8 <_ZN2os4trap4init17h7d466adadc835482E>
    80204fc2:	6088                	ld	a0,0(s1)
    80204fc4:	4a8d                	li	s5,3
    80204fc6:	05556c63          	bltu	a0,s5,8020501e <.LBB31_24+0x16>
    80204fca:	4525                	li	a0,9
    80204fcc:	0572                	slli	a0,a0,0x1c
    80204fce:	f8a43423          	sd	a0,-120(s0)

0000000080204fd2 <.LBB31_21>:
    80204fd2:	00007517          	auipc	a0,0x7
    80204fd6:	bde50513          	addi	a0,a0,-1058 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80204fda:	f8a43823          	sd	a0,-112(s0)

0000000080204fde <.LBB31_22>:
    80204fde:	0000a517          	auipc	a0,0xa
    80204fe2:	ac250513          	addi	a0,a0,-1342 # 8020eaa0 <.Lanon.a913d6cbc142f26d34638a748f68ecf8.71>
    80204fe6:	f8a43c23          	sd	a0,-104(s0)
    80204fea:	4505                	li	a0,1
    80204fec:	faa43023          	sd	a0,-96(s0)

0000000080204ff0 <.LBB31_23>:
    80204ff0:	0000a597          	auipc	a1,0xa
    80204ff4:	a5858593          	addi	a1,a1,-1448 # 8020ea48 <.Lanon.a913d6cbc142f26d34638a748f68ecf8.38>
    80204ff8:	fab43423          	sd	a1,-88(s0)
    80204ffc:	faa43823          	sd	a0,-80(s0)
    80205000:	fb343c23          	sd	s3,-72(s0)
    80205004:	fca43023          	sd	a0,-64(s0)

0000000080205008 <.LBB31_24>:
    80205008:	0000a617          	auipc	a2,0xa
    8020500c:	ab860613          	addi	a2,a2,-1352 # 8020eac0 <.Lanon.a913d6cbc142f26d34638a748f68ecf8.74>
    80205010:	f9840513          	addi	a0,s0,-104
    80205014:	458d                	li	a1,3
    80205016:	00004097          	auipc	ra,0x4
    8020501a:	58e080e7          	jalr	1422(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    8020501e:	6088                	ld	a0,0(s1)
    80205020:	03556c63          	bltu	a0,s5,80205058 <.LBB31_26+0x16>

0000000080205024 <.LBB31_25>:
    80205024:	0000a517          	auipc	a0,0xa
    80205028:	ad450513          	addi	a0,a0,-1324 # 8020eaf8 <.Lanon.a913d6cbc142f26d34638a748f68ecf8.76>
    8020502c:	f8a43c23          	sd	a0,-104(s0)
    80205030:	4505                	li	a0,1
    80205032:	faa43023          	sd	a0,-96(s0)
    80205036:	fa043423          	sd	zero,-88(s0)
    8020503a:	fb443c23          	sd	s4,-72(s0)
    8020503e:	fc043023          	sd	zero,-64(s0)

0000000080205042 <.LBB31_26>:
    80205042:	0000a617          	auipc	a2,0xa
    80205046:	ac660613          	addi	a2,a2,-1338 # 8020eb08 <.Lanon.a913d6cbc142f26d34638a748f68ecf8.77>
    8020504a:	f9840513          	addi	a0,s0,-104
    8020504e:	458d                	li	a1,3
    80205050:	00004097          	auipc	ra,0x4
    80205054:	554080e7          	jalr	1364(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205058:	00003097          	auipc	ra,0x3
    8020505c:	8e0080e7          	jalr	-1824(ra) # 80207938 <_ZN3rvm4arch24check_hypervisor_feature17h8f5c78f0490ea352E>
    80205060:	00000097          	auipc	ra,0x0
    80205064:	838080e7          	jalr	-1992(ra) # 80204898 <_ZN2os10hypervisor14run_hypervisor17hcd2a29475573a063E>
    80205068:	f9243423          	sd	s2,-120(s0)

000000008020506c <.LBB31_27>:
    8020506c:	0000a517          	auipc	a0,0xa
    80205070:	aec50513          	addi	a0,a0,-1300 # 8020eb58 <.Lanon.a913d6cbc142f26d34638a748f68ecf8.79>
    80205074:	f8a43c23          	sd	a0,-104(s0)
    80205078:	4505                	li	a0,1
    8020507a:	faa43023          	sd	a0,-96(s0)
    8020507e:	fa043423          	sd	zero,-88(s0)
    80205082:	fb443c23          	sd	s4,-72(s0)
    80205086:	fc043023          	sd	zero,-64(s0)

000000008020508a <.LBB31_28>:
    8020508a:	00009597          	auipc	a1,0x9
    8020508e:	ba658593          	addi	a1,a1,-1114 # 8020dc30 <anon.32e88238351ec6f13c95b6c2887136c4.0.llvm.7602298555204137961>
    80205092:	f8840513          	addi	a0,s0,-120
    80205096:	f9840613          	addi	a2,s0,-104
    8020509a:	00005097          	auipc	ra,0x5
    8020509e:	240080e7          	jalr	576(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    802050a2:	e111                	bnez	a0,802050a6 <.LBB31_29>
    802050a4:	a001                	j	802050a4 <.LBB31_28+0x1a>

00000000802050a6 <.LBB31_29>:
    802050a6:	00009517          	auipc	a0,0x9
    802050aa:	bba50513          	addi	a0,a0,-1094 # 8020dc60 <anon.32e88238351ec6f13c95b6c2887136c4.2.llvm.7602298555204137961>

00000000802050ae <.LBB31_30>:
    802050ae:	00009697          	auipc	a3,0x9
    802050b2:	be268693          	addi	a3,a3,-1054 # 8020dc90 <anon.32e88238351ec6f13c95b6c2887136c4.3.llvm.7602298555204137961>

00000000802050b6 <.LBB31_31>:
    802050b6:	00009717          	auipc	a4,0x9
    802050ba:	d4270713          	addi	a4,a4,-702 # 8020ddf8 <anon.32e88238351ec6f13c95b6c2887136c4.12.llvm.7602298555204137961>
    802050be:	a829                	j	802050d8 <.LBB31_34+0x8>

00000000802050c0 <.LBB31_32>:
    802050c0:	00009517          	auipc	a0,0x9
    802050c4:	ba050513          	addi	a0,a0,-1120 # 8020dc60 <anon.32e88238351ec6f13c95b6c2887136c4.2.llvm.7602298555204137961>

00000000802050c8 <.LBB31_33>:
    802050c8:	00009697          	auipc	a3,0x9
    802050cc:	be868693          	addi	a3,a3,-1048 # 8020dcb0 <anon.32e88238351ec6f13c95b6c2887136c4.4.llvm.7602298555204137961>

00000000802050d0 <.LBB31_34>:
    802050d0:	00009717          	auipc	a4,0x9
    802050d4:	d7070713          	addi	a4,a4,-656 # 8020de40 <anon.32e88238351ec6f13c95b6c2887136c4.14.llvm.7602298555204137961>
    802050d8:	f9840613          	addi	a2,s0,-104
    802050dc:	02b00593          	li	a1,43
    802050e0:	00004097          	auipc	ra,0x4
    802050e4:	6c2080e7          	jalr	1730(ra) # 802097a2 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>
	...

00000000802050ea <__rust_alloc>:
    802050ea:	fffff317          	auipc	t1,0xfffff
    802050ee:	0c230067          	jr	194(t1) # 802041ac <__rg_alloc>

00000000802050f2 <__rust_dealloc>:
    802050f2:	fffff317          	auipc	t1,0xfffff
    802050f6:	0e030067          	jr	224(t1) # 802041d2 <__rg_dealloc>

00000000802050fa <__rust_realloc>:
    802050fa:	fffff317          	auipc	t1,0xfffff
    802050fe:	10030067          	jr	256(t1) # 802041fa <__rg_realloc>

0000000080205102 <__rust_alloc_error_handler>:
    80205102:	00004317          	auipc	t1,0x4
    80205106:	36c30067          	jr	876(t1) # 8020946e <__rg_oom>
    8020510a:	0000                	unimp
    8020510c:	0000                	unimp
	...

0000000080205110 <__riscv64_entry>:
    80205110:	00153423          	sd	ra,8(a0)
    80205114:	00253823          	sd	sp,16(a0)
    80205118:	00353c23          	sd	gp,24(a0)
    8020511c:	02453023          	sd	tp,32(a0)
    80205120:	f500                	sd	s0,40(a0)
    80205122:	f904                	sd	s1,48(a0)
    80205124:	e12c                	sd	a1,64(a0)
    80205126:	e530                	sd	a2,72(a0)
    80205128:	e934                	sd	a3,80(a0)
    8020512a:	ed38                	sd	a4,88(a0)
    8020512c:	f13c                	sd	a5,96(a0)
    8020512e:	07053423          	sd	a6,104(a0)
    80205132:	07153823          	sd	a7,112(a0)
    80205136:	07253c23          	sd	s2,120(a0)
    8020513a:	09353023          	sd	s3,128(a0)
    8020513e:	09453423          	sd	s4,136(a0)
    80205142:	09553823          	sd	s5,144(a0)
    80205146:	09653c23          	sd	s6,152(a0)
    8020514a:	0b753023          	sd	s7,160(a0)
    8020514e:	0b853423          	sd	s8,168(a0)
    80205152:	0b953823          	sd	s9,176(a0)
    80205156:	0ba53c23          	sd	s10,184(a0)
    8020515a:	0db53023          	sd	s11,192(a0)
    8020515e:	20053283          	ld	t0,512(a0)
    80205162:	100292f3          	csrrw	t0,sstatus,t0
    80205166:	0c553823          	sd	t0,208(a0)
    8020516a:	20853303          	ld	t1,520(a0)
    8020516e:	60031373          	csrrw	t1,0x600,t1
    80205172:	0c653c23          	sd	t1,216(a0)
    80205176:	21053383          	ld	t2,528(a0)
    8020517a:	106393f3          	csrrw	t2,scounteren,t2
    8020517e:	0e753823          	sd	t2,240(a0)
    80205182:	14051e73          	csrrw	t3,sscratch,a0
    80205186:	0fc53023          	sd	t3,224(a0)

000000008020518a <.Lpcrel_hi0>:
    8020518a:	00000f17          	auipc	t5,0x0
    8020518e:	0a6f0f13          	addi	t5,t5,166 # 80205230 <__riscv64_exit>
    80205192:	10502ef3          	csrr	t4,stvec
    80205196:	105f1073          	csrw	stvec,t5
    8020519a:	0fd53423          	sd	t4,232(a0)
    8020519e:	1f853283          	ld	t0,504(a0)
    802051a2:	14129073          	csrw	sepc,t0
    802051a6:	10053083          	ld	ra,256(a0)
    802051aa:	10853103          	ld	sp,264(a0)
    802051ae:	11053183          	ld	gp,272(a0)
    802051b2:	11853203          	ld	tp,280(a0)
    802051b6:	12053283          	ld	t0,288(a0)
    802051ba:	12853303          	ld	t1,296(a0)
    802051be:	13053383          	ld	t2,304(a0)
    802051c2:	13853403          	ld	s0,312(a0)
    802051c6:	14053483          	ld	s1,320(a0)
    802051ca:	15053583          	ld	a1,336(a0)
    802051ce:	15853603          	ld	a2,344(a0)
    802051d2:	16053683          	ld	a3,352(a0)
    802051d6:	16853703          	ld	a4,360(a0)
    802051da:	17053783          	ld	a5,368(a0)
    802051de:	17853803          	ld	a6,376(a0)
    802051e2:	18053883          	ld	a7,384(a0)
    802051e6:	18853903          	ld	s2,392(a0)
    802051ea:	19053983          	ld	s3,400(a0)
    802051ee:	19853a03          	ld	s4,408(a0)
    802051f2:	1a053a83          	ld	s5,416(a0)
    802051f6:	1a853b03          	ld	s6,424(a0)
    802051fa:	1b053b83          	ld	s7,432(a0)
    802051fe:	1b853c03          	ld	s8,440(a0)
    80205202:	1c053c83          	ld	s9,448(a0)
    80205206:	1c853d03          	ld	s10,456(a0)
    8020520a:	1d053d83          	ld	s11,464(a0)
    8020520e:	1d853e03          	ld	t3,472(a0)
    80205212:	1e053e83          	ld	t4,480(a0)
    80205216:	1e853f03          	ld	t5,488(a0)
    8020521a:	1f053f83          	ld	t6,496(a0)
    8020521e:	14853503          	ld	a0,328(a0)
    80205222:	10200073          	sret
    80205226:	00000013          	nop
    8020522a:	00000013          	nop
    8020522e:	0001                	nop

0000000080205230 <__riscv64_exit>:
    80205230:	14051573          	csrrw	a0,sscratch,a0
    80205234:	10153023          	sd	ra,256(a0)
    80205238:	10253423          	sd	sp,264(a0)
    8020523c:	10353823          	sd	gp,272(a0)
    80205240:	10453c23          	sd	tp,280(a0)
    80205244:	12553023          	sd	t0,288(a0)
    80205248:	12653423          	sd	t1,296(a0)
    8020524c:	12753823          	sd	t2,304(a0)
    80205250:	12853c23          	sd	s0,312(a0)
    80205254:	14953023          	sd	s1,320(a0)
    80205258:	14b53823          	sd	a1,336(a0)
    8020525c:	14c53c23          	sd	a2,344(a0)
    80205260:	16d53023          	sd	a3,352(a0)
    80205264:	16e53423          	sd	a4,360(a0)
    80205268:	16f53823          	sd	a5,368(a0)
    8020526c:	17053c23          	sd	a6,376(a0)
    80205270:	19153023          	sd	a7,384(a0)
    80205274:	19253423          	sd	s2,392(a0)
    80205278:	19353823          	sd	s3,400(a0)
    8020527c:	19453c23          	sd	s4,408(a0)
    80205280:	1b553023          	sd	s5,416(a0)
    80205284:	1b653423          	sd	s6,424(a0)
    80205288:	1b753823          	sd	s7,432(a0)
    8020528c:	1b853c23          	sd	s8,440(a0)
    80205290:	1d953023          	sd	s9,448(a0)
    80205294:	1da53423          	sd	s10,456(a0)
    80205298:	1db53823          	sd	s11,464(a0)
    8020529c:	1dc53c23          	sd	t3,472(a0)
    802052a0:	1fd53023          	sd	t4,480(a0)
    802052a4:	1fe53423          	sd	t5,488(a0)
    802052a8:	1ff53823          	sd	t6,496(a0)
    802052ac:	141022f3          	csrr	t0,sepc
    802052b0:	1e553c23          	sd	t0,504(a0)
    802052b4:	0e853303          	ld	t1,232(a0)
    802052b8:	10531073          	csrw	stvec,t1
    802052bc:	0e053383          	ld	t2,224(a0)
    802052c0:	140393f3          	csrrw	t2,sscratch,t2
    802052c4:	14753423          	sd	t2,328(a0)
    802052c8:	0f053e03          	ld	t3,240(a0)
    802052cc:	106e1e73          	csrrw	t3,scounteren,t3
    802052d0:	21c53823          	sd	t3,528(a0)
    802052d4:	0d853e83          	ld	t4,216(a0)
    802052d8:	600e9ef3          	csrrw	t4,0x600,t4
    802052dc:	21d53423          	sd	t4,520(a0)
    802052e0:	0d053f03          	ld	t5,208(a0)
    802052e4:	100f1f73          	csrrw	t5,sstatus,t5
    802052e8:	21e53023          	sd	t5,512(a0)
    802052ec:	00853083          	ld	ra,8(a0)
    802052f0:	01053103          	ld	sp,16(a0)
    802052f4:	01853183          	ld	gp,24(a0)
    802052f8:	02053203          	ld	tp,32(a0)
    802052fc:	7500                	ld	s0,40(a0)
    802052fe:	7904                	ld	s1,48(a0)
    80205300:	612c                	ld	a1,64(a0)
    80205302:	6530                	ld	a2,72(a0)
    80205304:	6934                	ld	a3,80(a0)
    80205306:	6d38                	ld	a4,88(a0)
    80205308:	713c                	ld	a5,96(a0)
    8020530a:	06853803          	ld	a6,104(a0)
    8020530e:	07053883          	ld	a7,112(a0)
    80205312:	07853903          	ld	s2,120(a0)
    80205316:	08053983          	ld	s3,128(a0)
    8020531a:	08853a03          	ld	s4,136(a0)
    8020531e:	09053a83          	ld	s5,144(a0)
    80205322:	09853b03          	ld	s6,152(a0)
    80205326:	0a053b83          	ld	s7,160(a0)
    8020532a:	0a853c03          	ld	s8,168(a0)
    8020532e:	0b053c83          	ld	s9,176(a0)
    80205332:	0b853d03          	ld	s10,184(a0)
    80205336:	0c053d83          	ld	s11,192(a0)
    8020533a:	8082                	ret
    8020533c:	00000013          	nop

0000000080205340 <__test>:
    80205340:	4f85                	li	t6,1
    80205342:	0ffe                	slli	t6,t6,0x1f
    80205344:	000fb003          	ld	zero,0(t6)
    80205348:	00000013          	nop
    8020534c:	00000013          	nop

0000000080205350 <__test_write_general_registers>:
    80205350:	02800413          	li	s0,40
    80205354:	03000493          	li	s1,48
    80205358:	04000593          	li	a1,64
    8020535c:	04800613          	li	a2,72
    80205360:	05000693          	li	a3,80
    80205364:	05800713          	li	a4,88
    80205368:	06000793          	li	a5,96
    8020536c:	06800813          	li	a6,104
    80205370:	07000893          	li	a7,112
    80205374:	07800913          	li	s2,120
    80205378:	08000993          	li	s3,128
    8020537c:	08800a13          	li	s4,136
    80205380:	09000a93          	li	s5,144
    80205384:	09800b13          	li	s6,152
    80205388:	0a000b93          	li	s7,160
    8020538c:	0a800c13          	li	s8,168
    80205390:	0b000c93          	li	s9,176
    80205394:	0b800d13          	li	s10,184
    80205398:	0c000d93          	li	s11,192
    8020539c:	00000013          	nop

00000000802053a0 <__show_hstatus>:
    802053a0:	60002ff3          	csrr	t6,0x600
    802053a4:	857e                	mv	a0,t6

00000000802053a6 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h672bf3d15558faf0E.llvm.955211479688712389>:
    802053a6:	1141                	addi	sp,sp,-16
    802053a8:	e406                	sd	ra,8(sp)
    802053aa:	e022                	sd	s0,0(sp)
    802053ac:	0800                	addi	s0,sp,16
    802053ae:	6108                	ld	a0,0(a0)
    802053b0:	6402                	ld	s0,0(sp)
    802053b2:	60a2                	ld	ra,8(sp)
    802053b4:	0141                	addi	sp,sp,16
    802053b6:	00001317          	auipc	t1,0x1
    802053ba:	6a830067          	jr	1704(t1) # 80206a5e <_ZN64_$LT$rvm..arch..vcpu..GuestState$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2fc5032258f8f16E>

00000000802053be <_ZN4core3ptr51drop_in_place$LT$$RF$rvm..arch..vcpu..HostState$GT$17h26b1c288cf1bafa0E.llvm.955211479688712389>:
    802053be:	1141                	addi	sp,sp,-16
    802053c0:	e406                	sd	ra,8(sp)
    802053c2:	e022                	sd	s0,0(sp)
    802053c4:	0800                	addi	s0,sp,16
    802053c6:	6402                	ld	s0,0(sp)
    802053c8:	60a2                	ld	ra,8(sp)
    802053ca:	0141                	addi	sp,sp,16
    802053cc:	8082                	ret

00000000802053ce <_ZN3rvm4arch4vcpu4Vcpu3new17haaa24ffb27d7e35bE>:
    802053ce:	da010113          	addi	sp,sp,-608 # 80222da0 <edata+0xfda0>
    802053d2:	24113c23          	sd	ra,600(sp)
    802053d6:	24813823          	sd	s0,592(sp)
    802053da:	24913423          	sd	s1,584(sp)
    802053de:	25213023          	sd	s2,576(sp)
    802053e2:	23313c23          	sd	s3,568(sp)
    802053e6:	1480                	addi	s0,sp,608
    802053e8:	8932                	mv	s2,a2
    802053ea:	dac43023          	sd	a2,-608(s0)
    802053ee:	4585                	li	a1,1
    802053f0:	00b635af          	amoadd.d	a1,a1,(a2)
    802053f4:	567d                	li	a2,-1
    802053f6:	1ab65663          	bge	a2,a1,802055a2 <.LBB7_13+0x112>
    802053fa:	89aa                	mv	s3,a0
    802053fc:	da840513          	addi	a0,s0,-600
    80205400:	21800613          	li	a2,536
    80205404:	4581                	li	a1,0
    80205406:	00007097          	auipc	ra,0x7
    8020540a:	244080e7          	jalr	580(ra) # 8020c64a <memset>
    8020540e:	21800513          	li	a0,536
    80205412:	4585                	li	a1,1
    80205414:	00000097          	auipc	ra,0x0
    80205418:	cd6080e7          	jalr	-810(ra) # 802050ea <__rust_alloc>
    8020541c:	18050563          	beqz	a0,802055a6 <.LBB7_13+0x116>
    80205420:	84aa                	mv	s1,a0
    80205422:	da840593          	addi	a1,s0,-600
    80205426:	21800613          	li	a2,536
    8020542a:	00007097          	auipc	ra,0x7
    8020542e:	1ce080e7          	jalr	462(ra) # 8020c5f8 <memcpy>
    80205432:	652d                	lui	a0,0xb
    80205434:	1ff5059b          	addiw	a1,a0,511
    80205438:	fcb43023          	sd	a1,-64(s0)

000000008020543c <.LBB7_9>:
    8020543c:	0021e517          	auipc	a0,0x21e
    80205440:	d4c50513          	addi	a0,a0,-692 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    80205444:	6110                	ld	a2,0(a0)
    80205446:	4691                	li	a3,4
    80205448:	854a                	mv	a0,s2
    8020544a:	06d66263          	bltu	a2,a3,802054ae <.LBB7_13+0x1e>
    8020544e:	fc040513          	addi	a0,s0,-64
    80205452:	fca43423          	sd	a0,-56(s0)

0000000080205456 <.LBB7_10>:
    80205456:	00006517          	auipc	a0,0x6
    8020545a:	75a50513          	addi	a0,a0,1882 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    8020545e:	fca43823          	sd	a0,-48(s0)

0000000080205462 <.LBB7_11>:
    80205462:	0000a517          	auipc	a0,0xa
    80205466:	c5e50513          	addi	a0,a0,-930 # 8020f0c0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.47>
    8020546a:	daa43423          	sd	a0,-600(s0)
    8020546e:	4505                	li	a0,1
    80205470:	daa43823          	sd	a0,-592(s0)

0000000080205474 <.LBB7_12>:
    80205474:	00009597          	auipc	a1,0x9
    80205478:	79c58593          	addi	a1,a1,1948 # 8020ec10 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.15>
    8020547c:	dab43c23          	sd	a1,-584(s0)
    80205480:	dca43023          	sd	a0,-576(s0)
    80205484:	fc840593          	addi	a1,s0,-56
    80205488:	dcb43423          	sd	a1,-568(s0)
    8020548c:	dca43823          	sd	a0,-560(s0)

0000000080205490 <.LBB7_13>:
    80205490:	0000a617          	auipc	a2,0xa
    80205494:	c4060613          	addi	a2,a2,-960 # 8020f0d0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.48>
    80205498:	da840513          	addi	a0,s0,-600
    8020549c:	4591                	li	a1,4
    8020549e:	00004097          	auipc	ra,0x4
    802054a2:	106080e7          	jalr	262(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    802054a6:	fc043583          	ld	a1,-64(s0)
    802054aa:	da043503          	ld	a0,-608(s0)
    802054ae:	60259073          	csrw	0x602,a1
    802054b2:	1e048fa3          	sb	zero,511(s1)
    802054b6:	1e048f23          	sb	zero,510(s1)
    802054ba:	1e048ea3          	sb	zero,509(s1)
    802054be:	1e048e23          	sb	zero,508(s1)
    802054c2:	09000593          	li	a1,144
    802054c6:	1eb48da3          	sb	a1,507(s1)
    802054ca:	1e048d23          	sb	zero,506(s1)
    802054ce:	1e048ca3          	sb	zero,505(s1)
    802054d2:	1e048c23          	sb	zero,504(s1)
    802054d6:	08000593          	li	a1,128
    802054da:	20b483a3          	sb	a1,519(s1)
    802054de:	20048323          	sb	zero,518(s1)
    802054e2:	200482a3          	sb	zero,517(s1)
    802054e6:	20048223          	sb	zero,516(s1)
    802054ea:	200481a3          	sb	zero,515(s1)
    802054ee:	20048123          	sb	zero,514(s1)
    802054f2:	06100613          	li	a2,97
    802054f6:	20c480a3          	sb	a2,513(s1)
    802054fa:	20048023          	sb	zero,512(s1)
    802054fe:	200487a3          	sb	zero,527(s1)
    80205502:	20048723          	sb	zero,526(s1)
    80205506:	200486a3          	sb	zero,525(s1)
    8020550a:	20048623          	sb	zero,524(s1)
    8020550e:	200485a3          	sb	zero,523(s1)
    80205512:	04000613          	li	a2,64
    80205516:	20c48523          	sb	a2,522(s1)
    8020551a:	4605                	li	a2,1
    8020551c:	20c484a3          	sb	a2,521(s1)
    80205520:	20b48423          	sb	a1,520(s1)
    80205524:	0129b423          	sd	s2,8(s3)
    80205528:	0099b823          	sd	s1,16(s3)
    8020552c:	da840583          	lb	a1,-600(s0)
    80205530:	da940683          	lb	a3,-599(s0)
    80205534:	daa40703          	lb	a4,-598(s0)
    80205538:	dab40783          	lb	a5,-597(s0)
    8020553c:	00b98ca3          	sb	a1,25(s3)
    80205540:	00d98d23          	sb	a3,26(s3)
    80205544:	00e98da3          	sb	a4,27(s3)
    80205548:	00f98e23          	sb	a5,28(s3)
    8020554c:	dac40583          	lb	a1,-596(s0)
    80205550:	dad40683          	lb	a3,-595(s0)
    80205554:	dae40703          	lb	a4,-594(s0)
    80205558:	00098c23          	sb	zero,24(s3)
    8020555c:	00b98ea3          	sb	a1,29(s3)
    80205560:	00d98f23          	sb	a3,30(s3)
    80205564:	00e98fa3          	sb	a4,31(s3)
    80205568:	00098023          	sb	zero,0(s3)
    8020556c:	40c005b3          	neg	a1,a2
    80205570:	02b5352f          	amoadd.d.rl	a0,a1,(a0)
    80205574:	00c51a63          	bne	a0,a2,80205588 <.LBB7_13+0xf8>
    80205578:	0230000f          	fence	r,rw
    8020557c:	da040513          	addi	a0,s0,-608
    80205580:	00003097          	auipc	ra,0x3
    80205584:	214080e7          	jalr	532(ra) # 80208794 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h459f88430f0c48f5E>
    80205588:	23813983          	ld	s3,568(sp)
    8020558c:	24013903          	ld	s2,576(sp)
    80205590:	24813483          	ld	s1,584(sp)
    80205594:	25013403          	ld	s0,592(sp)
    80205598:	25813083          	ld	ra,600(sp)
    8020559c:	26010113          	addi	sp,sp,608
    802055a0:	8082                	ret
    802055a2:	0000                	unimp
    802055a4:	0000                	unimp
    802055a6:	21800513          	li	a0,536
    802055aa:	4585                	li	a1,1
    802055ac:	00004097          	auipc	ra,0x4
    802055b0:	eb4080e7          	jalr	-332(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

00000000802055b6 <_ZN3rvm4arch4vcpu4Vcpu6resume17h85ec843c6a7818b7E>:
    802055b6:	7149                	addi	sp,sp,-368
    802055b8:	f686                	sd	ra,360(sp)
    802055ba:	f2a2                	sd	s0,352(sp)
    802055bc:	eea6                	sd	s1,344(sp)
    802055be:	eaca                	sd	s2,336(sp)
    802055c0:	e6ce                	sd	s3,328(sp)
    802055c2:	e2d2                	sd	s4,320(sp)
    802055c4:	fe56                	sd	s5,312(sp)
    802055c6:	fa5a                	sd	s6,304(sp)
    802055c8:	f65e                	sd	s7,296(sp)
    802055ca:	f262                	sd	s8,288(sp)
    802055cc:	ee66                	sd	s9,280(sp)
    802055ce:	ea6a                	sd	s10,272(sp)
    802055d0:	e66e                	sd	s11,264(sp)
    802055d2:	1a80                	addi	s0,sp,368
    802055d4:	8dae                	mv	s11,a1
    802055d6:	e8a43823          	sd	a0,-368(s0)

00000000802055da <.LBB8_41>:
    802055da:	0021e497          	auipc	s1,0x21e
    802055de:	bae48493          	addi	s1,s1,-1106 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    802055e2:	490d                	li	s2,3

00000000802055e4 <.LBB8_42>:
    802055e4:	0000a517          	auipc	a0,0xa
    802055e8:	b3450513          	addi	a0,a0,-1228 # 8020f118 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.50>
    802055ec:	f0a43023          	sd	a0,-256(s0)
    802055f0:	4985                	li	s3,1

00000000802055f2 <.LBB8_43>:
    802055f2:	00009517          	auipc	a0,0x9
    802055f6:	57650513          	addi	a0,a0,1398 # 8020eb68 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.0>
    802055fa:	f0a43c23          	sd	a0,-232(s0)

00000000802055fe <.LBB8_44>:
    802055fe:	0000a517          	auipc	a0,0xa
    80205602:	b2a50513          	addi	a0,a0,-1238 # 8020f128 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.51>
    80205606:	eea43c23          	sd	a0,-264(s0)
    8020560a:	f6840a13          	addi	s4,s0,-152
    8020560e:	4b15                	li	s6,5

0000000080205610 <.LBB8_45>:
    80205610:	00000517          	auipc	a0,0x0
    80205614:	7a850513          	addi	a0,a0,1960 # 80205db8 <_ZN63_$LT$rvm..arch..vcpu..HostState$u20$as$u20$core..fmt..Debug$GT$3fmt17h653ed4108e70459cE>
    80205618:	f0a43823          	sd	a0,-240(s0)

000000008020561c <.LBB8_46>:
    8020561c:	0000a517          	auipc	a0,0xa
    80205620:	b6c50513          	addi	a0,a0,-1172 # 8020f188 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.53>
    80205624:	eea43823          	sd	a0,-272(s0)

0000000080205628 <.LBB8_47>:
    80205628:	0000ac17          	auipc	s8,0xa
    8020562c:	b70c0c13          	addi	s8,s8,-1168 # 8020f198 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.54>
    80205630:	f3840c93          	addi	s9,s0,-200

0000000080205634 <.LBB8_48>:
    80205634:	0000a517          	auipc	a0,0xa
    80205638:	b9c50513          	addi	a0,a0,-1124 # 8020f1d0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.55>
    8020563c:	eea43423          	sd	a0,-280(s0)
    80205640:	4b91                	li	s7,4

0000000080205642 <.LBB8_49>:
    80205642:	00001517          	auipc	a0,0x1
    80205646:	41c50513          	addi	a0,a0,1052 # 80206a5e <_ZN64_$LT$rvm..arch..vcpu..GuestState$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2fc5032258f8f16E>
    8020564a:	f0a43423          	sd	a0,-248(s0)

000000008020564e <.LBB8_50>:
    8020564e:	0000a517          	auipc	a0,0xa
    80205652:	be250513          	addi	a0,a0,-1054 # 8020f230 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.57>
    80205656:	eea43023          	sd	a0,-288(s0)

000000008020565a <.LBB8_51>:
    8020565a:	0000a517          	auipc	a0,0xa
    8020565e:	be650513          	addi	a0,a0,-1050 # 8020f240 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.58>
    80205662:	eca43c23          	sd	a0,-296(s0)

0000000080205666 <.LBB8_52>:
    80205666:	0000a517          	auipc	a0,0xa
    8020566a:	c2a50513          	addi	a0,a0,-982 # 8020f290 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.60>
    8020566e:	eca43823          	sd	a0,-304(s0)

0000000080205672 <.LBB8_53>:
    80205672:	0000a517          	auipc	a0,0xa
    80205676:	c2e50513          	addi	a0,a0,-978 # 8020f2a0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.61>
    8020567a:	eca43423          	sd	a0,-312(s0)

000000008020567e <.LBB8_54>:
    8020567e:	00006d17          	auipc	s10,0x6
    80205682:	532d0d13          	addi	s10,s10,1330 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>

0000000080205686 <.LBB8_55>:
    80205686:	00009517          	auipc	a0,0x9
    8020568a:	57a50513          	addi	a0,a0,1402 # 8020ec00 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.14>
    8020568e:	eca43023          	sd	a0,-320(s0)

0000000080205692 <.LBB8_56>:
    80205692:	00009a97          	auipc	s5,0x9
    80205696:	57ea8a93          	addi	s5,s5,1406 # 8020ec10 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.15>

000000008020569a <.LBB8_57>:
    8020569a:	00009517          	auipc	a0,0x9
    8020569e:	5ae50513          	addi	a0,a0,1454 # 8020ec48 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.16>
    802056a2:	eaa43c23          	sd	a0,-328(s0)

00000000802056a6 <.LBB8_58>:
    802056a6:	00009517          	auipc	a0,0x9
    802056aa:	5fa50513          	addi	a0,a0,1530 # 8020eca0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.18>
    802056ae:	eaa43823          	sd	a0,-336(s0)

00000000802056b2 <.LBB8_59>:
    802056b2:	00009517          	auipc	a0,0x9
    802056b6:	5fe50513          	addi	a0,a0,1534 # 8020ecb0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.19>
    802056ba:	eaa43423          	sd	a0,-344(s0)

00000000802056be <.LBB8_60>:
    802056be:	00009517          	auipc	a0,0x9
    802056c2:	65250513          	addi	a0,a0,1618 # 8020ed10 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.21>
    802056c6:	eaa43023          	sd	a0,-352(s0)

00000000802056ca <.LBB8_61>:
    802056ca:	00009517          	auipc	a0,0x9
    802056ce:	65650513          	addi	a0,a0,1622 # 8020ed20 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.22>
    802056d2:	e8a43c23          	sd	a0,-360(s0)
    802056d6:	6088                	ld	a0,0(s1)
    802056d8:	21257f63          	bgeu	a0,s2,802058f6 <.LBB8_67+0x16>
    802056dc:	0310000f          	fence	rw,w
    802056e0:	013d8823          	sb	s3,16(s11)
    802056e4:	6088                	ld	a0,0(s1)
    802056e6:	25657563          	bgeu	a0,s6,80205930 <.LBB8_67+0x50>
    802056ea:	6088                	ld	a0,0(s1)
    802056ec:	29757363          	bgeu	a0,s7,80205972 <.LBB8_67+0x92>
    802056f0:	6088                	ld	a0,0(s1)
    802056f2:	2d257363          	bgeu	a0,s2,802059b8 <.LBB8_67+0xd8>
    802056f6:	008db503          	ld	a0,8(s11)
    802056fa:	f2a43023          	sd	a0,-224(s0)
    802056fe:	608c                	ld	a1,0(s1)
    80205700:	2f65f963          	bgeu	a1,s6,802059f2 <.LBB8_67+0x112>
    80205704:	8be2                	mv	s7,s8
    80205706:	6088                	ld	a0,0(s1)
    80205708:	05656463          	bltu	a0,s6,80205750 <.LBB8_61+0x86>
    8020570c:	008db503          	ld	a0,8(s11)
    80205710:	1f850513          	addi	a0,a0,504
    80205714:	f6a43023          	sd	a0,-160(s0)
    80205718:	f6040513          	addi	a0,s0,-160
    8020571c:	f2a43c23          	sd	a0,-200(s0)
    80205720:	f5a43023          	sd	s10,-192(s0)
    80205724:	eb043503          	ld	a0,-336(s0)
    80205728:	f6a43423          	sd	a0,-152(s0)
    8020572c:	f7343823          	sd	s3,-144(s0)
    80205730:	f7543c23          	sd	s5,-136(s0)
    80205734:	f9343023          	sd	s3,-128(s0)
    80205738:	f9943423          	sd	s9,-120(s0)
    8020573c:	f9343823          	sd	s3,-112(s0)
    80205740:	4595                	li	a1,5
    80205742:	8552                	mv	a0,s4
    80205744:	ea843603          	ld	a2,-344(s0)
    80205748:	00004097          	auipc	ra,0x4
    8020574c:	e5c080e7          	jalr	-420(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205750:	008dbc03          	ld	s8,8(s11)
    80205754:	200c0513          	addi	a0,s8,512
    80205758:	f2a43423          	sd	a0,-216(s0)
    8020575c:	0e8c0513          	addi	a0,s8,232
    80205760:	f2a43823          	sd	a0,-208(s0)
    80205764:	6088                	ld	a0,0(s1)
    80205766:	2d657b63          	bgeu	a0,s6,80205a3c <.LBB8_67+0x15c>
    8020576a:	6088                	ld	a0,0(s1)
    8020576c:	31657763          	bgeu	a0,s6,80205a7a <.LBB8_67+0x19a>
    80205770:	6088                	ld	a0,0(s1)
    80205772:	35657763          	bgeu	a0,s6,80205ac0 <.LBB8_69+0x1a>
    80205776:	6088                	ld	a0,0(s1)
    80205778:	39657763          	bgeu	a0,s6,80205b06 <.LBB8_71+0x1a>
    8020577c:	6088                	ld	a0,0(s1)
    8020577e:	3f657f63          	bgeu	a0,s6,80205b7c <.LBB8_75+0x1a>
    80205782:	6088                	ld	a0,0(s1)
    80205784:	47657863          	bgeu	a0,s6,80205bf4 <.LBB8_79+0x1a>
    80205788:	6088                	ld	a0,0(s1)
    8020578a:	4f657163          	bgeu	a0,s6,80205c6c <.LBB8_83+0x1a>
    8020578e:	6088                	ld	a0,0(s1)
    80205790:	8c5e                	mv	s8,s7
    80205792:	05656463          	bltu	a0,s6,802057da <.LBB8_63+0x14>
    80205796:	008db503          	ld	a0,8(s11)
    8020579a:	1f850513          	addi	a0,a0,504
    8020579e:	f2a43c23          	sd	a0,-200(s0)
    802057a2:	f5a43023          	sd	s10,-192(s0)

00000000802057a6 <.LBB8_62>:
    802057a6:	0000a517          	auipc	a0,0xa
    802057aa:	8ba50513          	addi	a0,a0,-1862 # 8020f060 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.44>
    802057ae:	f6a43423          	sd	a0,-152(s0)
    802057b2:	f7343823          	sd	s3,-144(s0)
    802057b6:	f7543c23          	sd	s5,-136(s0)
    802057ba:	f9343023          	sd	s3,-128(s0)
    802057be:	f9943423          	sd	s9,-120(s0)
    802057c2:	f9343823          	sd	s3,-112(s0)

00000000802057c6 <.LBB8_63>:
    802057c6:	0000a617          	auipc	a2,0xa
    802057ca:	8aa60613          	addi	a2,a2,-1878 # 8020f070 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.45>
    802057ce:	4595                	li	a1,5
    802057d0:	8552                	mv	a0,s4
    802057d2:	00004097          	auipc	ra,0x4
    802057d6:	dd2080e7          	jalr	-558(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    802057da:	008db503          	ld	a0,8(s11)
    802057de:	00000097          	auipc	ra,0x0
    802057e2:	932080e7          	jalr	-1742(ra) # 80205110 <__riscv64_entry>
    802057e6:	6088                	ld	a0,0(s1)
    802057e8:	4b91                	li	s7,4
    802057ea:	4d257863          	bgeu	a0,s2,80205cba <.LBB8_86>
    802057ee:	14202573          	csrr	a0,scause
    802057f2:	608c                	ld	a1,0(s1)
    802057f4:	5125f263          	bgeu	a1,s2,80205cf8 <.LBB8_87+0x1e>
    802057f8:	6088                	ld	a0,0(s1)
    802057fa:	55657463          	bgeu	a0,s6,80205d42 <.LBB8_89+0x1a>
    802057fe:	6088                	ld	a0,0(s1)
    80205800:	05756663          	bltu	a0,s7,8020584c <.LBB8_65+0x14>
    80205804:	008db503          	ld	a0,8(s11)
    80205808:	0f850513          	addi	a0,a0,248
    8020580c:	f2a43c23          	sd	a0,-200(s0)
    80205810:	f0843503          	ld	a0,-248(s0)
    80205814:	f4a43023          	sd	a0,-192(s0)

0000000080205818 <.LBB8_64>:
    80205818:	0000a517          	auipc	a0,0xa
    8020581c:	bd850513          	addi	a0,a0,-1064 # 8020f3f0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.72>
    80205820:	f6a43423          	sd	a0,-152(s0)
    80205824:	f7343823          	sd	s3,-144(s0)
    80205828:	f7843c23          	sd	s8,-136(s0)
    8020582c:	f9343023          	sd	s3,-128(s0)
    80205830:	f9943423          	sd	s9,-120(s0)
    80205834:	f9343823          	sd	s3,-112(s0)

0000000080205838 <.LBB8_65>:
    80205838:	0000a617          	auipc	a2,0xa
    8020583c:	bc860613          	addi	a2,a2,-1080 # 8020f400 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.73>
    80205840:	4591                	li	a1,4
    80205842:	8552                	mv	a0,s4
    80205844:	00004097          	auipc	ra,0x4
    80205848:	d60080e7          	jalr	-672(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    8020584c:	0310000f          	fence	rw,w
    80205850:	000d8823          	sb	zero,16(s11)
    80205854:	008db503          	ld	a0,8(s11)
    80205858:	18154583          	lbu	a1,385(a0)
    8020585c:	18054603          	lbu	a2,384(a0)
    80205860:	18354683          	lbu	a3,387(a0)
    80205864:	18254703          	lbu	a4,386(a0)
    80205868:	05a2                	slli	a1,a1,0x8
    8020586a:	8dd1                	or	a1,a1,a2
    8020586c:	00869613          	slli	a2,a3,0x8
    80205870:	8e59                	or	a2,a2,a4
    80205872:	0642                	slli	a2,a2,0x10
    80205874:	8dd1                	or	a1,a1,a2
    80205876:	18554603          	lbu	a2,389(a0)
    8020587a:	18454683          	lbu	a3,388(a0)
    8020587e:	18754703          	lbu	a4,391(a0)
    80205882:	18654783          	lbu	a5,390(a0)
    80205886:	0622                	slli	a2,a2,0x8
    80205888:	8e55                	or	a2,a2,a3
    8020588a:	00871693          	slli	a3,a4,0x8
    8020588e:	8edd                	or	a3,a3,a5
    80205890:	06c2                	slli	a3,a3,0x10
    80205892:	8e55                	or	a2,a2,a3
    80205894:	1602                	slli	a2,a2,0x20
    80205896:	8dd1                	or	a1,a1,a2
    80205898:	4621                	li	a2,8
    8020589a:	4ec58a63          	beq	a1,a2,80205d8e <.LBB8_91+0x1c>
    8020589e:	0f850513          	addi	a0,a0,248
    802058a2:	00002097          	auipc	ra,0x2
    802058a6:	3b0080e7          	jalr	944(ra) # 80207c52 <_ZN3rvm4arch4trap12trap_handler17h0bc1bcbfbaee8230E>
    802058aa:	6088                	ld	a0,0(s1)
    802058ac:	e32565e3          	bltu	a0,s2,802056d6 <.LBB8_61+0xc>
    802058b0:	008db503          	ld	a0,8(s11)
    802058b4:	1f850513          	addi	a0,a0,504
    802058b8:	f2a43c23          	sd	a0,-200(s0)
    802058bc:	f5a43023          	sd	s10,-192(s0)

00000000802058c0 <.LBB8_66>:
    802058c0:	0000a517          	auipc	a0,0xa
    802058c4:	ba850513          	addi	a0,a0,-1112 # 8020f468 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.75>
    802058c8:	f6a43423          	sd	a0,-152(s0)
    802058cc:	f7343823          	sd	s3,-144(s0)
    802058d0:	f7543c23          	sd	s5,-136(s0)
    802058d4:	f9343023          	sd	s3,-128(s0)
    802058d8:	f9943423          	sd	s9,-120(s0)
    802058dc:	f9343823          	sd	s3,-112(s0)

00000000802058e0 <.LBB8_67>:
    802058e0:	0000a617          	auipc	a2,0xa
    802058e4:	b9860613          	addi	a2,a2,-1128 # 8020f478 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.76>
    802058e8:	458d                	li	a1,3
    802058ea:	8552                	mv	a0,s4
    802058ec:	00004097          	auipc	ra,0x4
    802058f0:	cb8080e7          	jalr	-840(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    802058f4:	b3cd                	j	802056d6 <.LBB8_61+0xc>
    802058f6:	f0043503          	ld	a0,-256(s0)
    802058fa:	f6a43423          	sd	a0,-152(s0)
    802058fe:	f7343823          	sd	s3,-144(s0)
    80205902:	f6043c23          	sd	zero,-136(s0)
    80205906:	f1843503          	ld	a0,-232(s0)
    8020590a:	f8a43423          	sd	a0,-120(s0)
    8020590e:	f8043823          	sd	zero,-112(s0)
    80205912:	458d                	li	a1,3
    80205914:	8552                	mv	a0,s4
    80205916:	ef843603          	ld	a2,-264(s0)
    8020591a:	00004097          	auipc	ra,0x4
    8020591e:	c8a080e7          	jalr	-886(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205922:	0310000f          	fence	rw,w
    80205926:	013d8823          	sb	s3,16(s11)
    8020592a:	6088                	ld	a0,0(s1)
    8020592c:	db656fe3          	bltu	a0,s6,802056ea <.LBB8_61+0x20>
    80205930:	008db503          	ld	a0,8(s11)
    80205934:	f2a43c23          	sd	a0,-200(s0)
    80205938:	f1043503          	ld	a0,-240(s0)
    8020593c:	f4a43023          	sd	a0,-192(s0)
    80205940:	ef043503          	ld	a0,-272(s0)
    80205944:	f6a43423          	sd	a0,-152(s0)
    80205948:	f7343823          	sd	s3,-144(s0)
    8020594c:	f7843c23          	sd	s8,-136(s0)
    80205950:	f9343023          	sd	s3,-128(s0)
    80205954:	f9943423          	sd	s9,-120(s0)
    80205958:	f9343823          	sd	s3,-112(s0)
    8020595c:	4595                	li	a1,5
    8020595e:	8552                	mv	a0,s4
    80205960:	ee843603          	ld	a2,-280(s0)
    80205964:	00004097          	auipc	ra,0x4
    80205968:	c40080e7          	jalr	-960(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    8020596c:	6088                	ld	a0,0(s1)
    8020596e:	d97561e3          	bltu	a0,s7,802056f0 <.LBB8_61+0x26>
    80205972:	008db503          	ld	a0,8(s11)
    80205976:	0f850513          	addi	a0,a0,248
    8020597a:	f2a43c23          	sd	a0,-200(s0)
    8020597e:	f0843503          	ld	a0,-248(s0)
    80205982:	f4a43023          	sd	a0,-192(s0)
    80205986:	ee043503          	ld	a0,-288(s0)
    8020598a:	f6a43423          	sd	a0,-152(s0)
    8020598e:	f7343823          	sd	s3,-144(s0)
    80205992:	f7843c23          	sd	s8,-136(s0)
    80205996:	f9343023          	sd	s3,-128(s0)
    8020599a:	f9943423          	sd	s9,-120(s0)
    8020599e:	f9343823          	sd	s3,-112(s0)
    802059a2:	4591                	li	a1,4
    802059a4:	8552                	mv	a0,s4
    802059a6:	ed843603          	ld	a2,-296(s0)
    802059aa:	00004097          	auipc	ra,0x4
    802059ae:	bfa080e7          	jalr	-1030(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    802059b2:	6088                	ld	a0,0(s1)
    802059b4:	d52561e3          	bltu	a0,s2,802056f6 <.LBB8_61+0x2c>
    802059b8:	ed043503          	ld	a0,-304(s0)
    802059bc:	f6a43423          	sd	a0,-152(s0)
    802059c0:	f7343823          	sd	s3,-144(s0)
    802059c4:	f6043c23          	sd	zero,-136(s0)
    802059c8:	f1843503          	ld	a0,-232(s0)
    802059cc:	f8a43423          	sd	a0,-120(s0)
    802059d0:	f8043823          	sd	zero,-112(s0)
    802059d4:	458d                	li	a1,3
    802059d6:	8552                	mv	a0,s4
    802059d8:	ec843603          	ld	a2,-312(s0)
    802059dc:	00004097          	auipc	ra,0x4
    802059e0:	bc8080e7          	jalr	-1080(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    802059e4:	008db503          	ld	a0,8(s11)
    802059e8:	f2a43023          	sd	a0,-224(s0)
    802059ec:	608c                	ld	a1,0(s1)
    802059ee:	d165ebe3          	bltu	a1,s6,80205704 <.LBB8_61+0x3a>
    802059f2:	03850513          	addi	a0,a0,56
    802059f6:	f6a43023          	sd	a0,-160(s0)
    802059fa:	f6040513          	addi	a0,s0,-160
    802059fe:	f2a43c23          	sd	a0,-200(s0)
    80205a02:	f5a43023          	sd	s10,-192(s0)
    80205a06:	ec043503          	ld	a0,-320(s0)
    80205a0a:	f6a43423          	sd	a0,-152(s0)
    80205a0e:	f7343823          	sd	s3,-144(s0)
    80205a12:	f7543c23          	sd	s5,-136(s0)
    80205a16:	f9343023          	sd	s3,-128(s0)
    80205a1a:	f9943423          	sd	s9,-120(s0)
    80205a1e:	f9343823          	sd	s3,-112(s0)
    80205a22:	4595                	li	a1,5
    80205a24:	8552                	mv	a0,s4
    80205a26:	eb843603          	ld	a2,-328(s0)
    80205a2a:	00004097          	auipc	ra,0x4
    80205a2e:	b7a080e7          	jalr	-1158(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205a32:	8be2                	mv	s7,s8
    80205a34:	6088                	ld	a0,0(s1)
    80205a36:	cd657be3          	bgeu	a0,s6,8020570c <.LBB8_61+0x42>
    80205a3a:	bb19                	j	80205750 <.LBB8_61+0x86>
    80205a3c:	f2040513          	addi	a0,s0,-224
    80205a40:	f2a43c23          	sd	a0,-200(s0)
    80205a44:	f5a43023          	sd	s10,-192(s0)
    80205a48:	ea043503          	ld	a0,-352(s0)
    80205a4c:	f6a43423          	sd	a0,-152(s0)
    80205a50:	f7343823          	sd	s3,-144(s0)
    80205a54:	f7543c23          	sd	s5,-136(s0)
    80205a58:	f9343023          	sd	s3,-128(s0)
    80205a5c:	f9943423          	sd	s9,-120(s0)
    80205a60:	f9343823          	sd	s3,-112(s0)
    80205a64:	4595                	li	a1,5
    80205a66:	8552                	mv	a0,s4
    80205a68:	e9843603          	ld	a2,-360(s0)
    80205a6c:	00004097          	auipc	ra,0x4
    80205a70:	b38080e7          	jalr	-1224(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205a74:	6088                	ld	a0,0(s1)
    80205a76:	cf656de3          	bltu	a0,s6,80205770 <.LBB8_61+0xa6>
    80205a7a:	f3040513          	addi	a0,s0,-208
    80205a7e:	f2a43c23          	sd	a0,-200(s0)
    80205a82:	f5a43023          	sd	s10,-192(s0)

0000000080205a86 <.LBB8_68>:
    80205a86:	00009517          	auipc	a0,0x9
    80205a8a:	2f250513          	addi	a0,a0,754 # 8020ed78 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.24>
    80205a8e:	f6a43423          	sd	a0,-152(s0)
    80205a92:	f7343823          	sd	s3,-144(s0)
    80205a96:	f7543c23          	sd	s5,-136(s0)
    80205a9a:	f9343023          	sd	s3,-128(s0)
    80205a9e:	f9943423          	sd	s9,-120(s0)
    80205aa2:	f9343823          	sd	s3,-112(s0)

0000000080205aa6 <.LBB8_69>:
    80205aa6:	00009617          	auipc	a2,0x9
    80205aaa:	2e260613          	addi	a2,a2,738 # 8020ed88 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.25>
    80205aae:	4595                	li	a1,5
    80205ab0:	8552                	mv	a0,s4
    80205ab2:	00004097          	auipc	ra,0x4
    80205ab6:	af2080e7          	jalr	-1294(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205aba:	6088                	ld	a0,0(s1)
    80205abc:	cb656de3          	bltu	a0,s6,80205776 <.LBB8_61+0xac>
    80205ac0:	f2840513          	addi	a0,s0,-216
    80205ac4:	f2a43c23          	sd	a0,-200(s0)
    80205ac8:	f5a43023          	sd	s10,-192(s0)

0000000080205acc <.LBB8_70>:
    80205acc:	00009517          	auipc	a0,0x9
    80205ad0:	31450513          	addi	a0,a0,788 # 8020ede0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.27>
    80205ad4:	f6a43423          	sd	a0,-152(s0)
    80205ad8:	f7343823          	sd	s3,-144(s0)
    80205adc:	f7543c23          	sd	s5,-136(s0)
    80205ae0:	f9343023          	sd	s3,-128(s0)
    80205ae4:	f9943423          	sd	s9,-120(s0)
    80205ae8:	f9343823          	sd	s3,-112(s0)

0000000080205aec <.LBB8_71>:
    80205aec:	00009617          	auipc	a2,0x9
    80205af0:	30460613          	addi	a2,a2,772 # 8020edf0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.28>
    80205af4:	4595                	li	a1,5
    80205af6:	8552                	mv	a0,s4
    80205af8:	00004097          	auipc	ra,0x4
    80205afc:	aac080e7          	jalr	-1364(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205b00:	6088                	ld	a0,0(s1)
    80205b02:	c7656de3          	bltu	a0,s6,8020577c <.LBB8_61+0xb2>
    80205b06:	f3043503          	ld	a0,-208(s0)
    80205b0a:	f2043583          	ld	a1,-224(s0)
    80205b0e:	8d0d                	sub	a0,a0,a1
    80205b10:	f4a43c23          	sd	a0,-168(s0)
    80205b14:	f6a43023          	sd	a0,-160(s0)
    80205b18:	f5840513          	addi	a0,s0,-168
    80205b1c:	f2a43c23          	sd	a0,-200(s0)

0000000080205b20 <.LBB8_72>:
    80205b20:	00006517          	auipc	a0,0x6
    80205b24:	6a850513          	addi	a0,a0,1704 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    80205b28:	f4a43023          	sd	a0,-192(s0)
    80205b2c:	f6040513          	addi	a0,s0,-160
    80205b30:	f4a43423          	sd	a0,-184(s0)
    80205b34:	f5a43823          	sd	s10,-176(s0)

0000000080205b38 <.LBB8_73>:
    80205b38:	00009517          	auipc	a0,0x9
    80205b3c:	31050513          	addi	a0,a0,784 # 8020ee48 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.31>
    80205b40:	f6a43423          	sd	a0,-152(s0)
    80205b44:	4589                	li	a1,2
    80205b46:	f6b43823          	sd	a1,-144(s0)

0000000080205b4a <.LBB8_74>:
    80205b4a:	00009517          	auipc	a0,0x9
    80205b4e:	31e50513          	addi	a0,a0,798 # 8020ee68 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.32>
    80205b52:	f6a43c23          	sd	a0,-136(s0)
    80205b56:	f8b43023          	sd	a1,-128(s0)
    80205b5a:	f9943423          	sd	s9,-120(s0)
    80205b5e:	f8b43823          	sd	a1,-112(s0)

0000000080205b62 <.LBB8_75>:
    80205b62:	00009617          	auipc	a2,0x9
    80205b66:	37660613          	addi	a2,a2,886 # 8020eed8 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.33>
    80205b6a:	4595                	li	a1,5
    80205b6c:	8552                	mv	a0,s4
    80205b6e:	00004097          	auipc	ra,0x4
    80205b72:	a36080e7          	jalr	-1482(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205b76:	6088                	ld	a0,0(s1)
    80205b78:	c16565e3          	bltu	a0,s6,80205782 <.LBB8_61+0xb8>
    80205b7c:	f2043503          	ld	a0,-224(s0)
    80205b80:	0f0c0593          	addi	a1,s8,240
    80205b84:	40a58533          	sub	a0,a1,a0
    80205b88:	f4a43c23          	sd	a0,-168(s0)
    80205b8c:	f6a43023          	sd	a0,-160(s0)
    80205b90:	f5840513          	addi	a0,s0,-168
    80205b94:	f2a43c23          	sd	a0,-200(s0)

0000000080205b98 <.LBB8_76>:
    80205b98:	00006517          	auipc	a0,0x6
    80205b9c:	63050513          	addi	a0,a0,1584 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    80205ba0:	f4a43023          	sd	a0,-192(s0)
    80205ba4:	f6040513          	addi	a0,s0,-160
    80205ba8:	f4a43423          	sd	a0,-184(s0)
    80205bac:	f5a43823          	sd	s10,-176(s0)

0000000080205bb0 <.LBB8_77>:
    80205bb0:	00009517          	auipc	a0,0x9
    80205bb4:	36050513          	addi	a0,a0,864 # 8020ef10 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.35>
    80205bb8:	f6a43423          	sd	a0,-152(s0)
    80205bbc:	4589                	li	a1,2
    80205bbe:	f6b43823          	sd	a1,-144(s0)

0000000080205bc2 <.LBB8_78>:
    80205bc2:	00009517          	auipc	a0,0x9
    80205bc6:	2a650513          	addi	a0,a0,678 # 8020ee68 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.32>
    80205bca:	f6a43c23          	sd	a0,-136(s0)
    80205bce:	f8b43023          	sd	a1,-128(s0)
    80205bd2:	f9943423          	sd	s9,-120(s0)
    80205bd6:	f8b43823          	sd	a1,-112(s0)

0000000080205bda <.LBB8_79>:
    80205bda:	00009617          	auipc	a2,0x9
    80205bde:	35660613          	addi	a2,a2,854 # 8020ef30 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.36>
    80205be2:	4595                	li	a1,5
    80205be4:	8552                	mv	a0,s4
    80205be6:	00004097          	auipc	ra,0x4
    80205bea:	9be080e7          	jalr	-1602(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205bee:	6088                	ld	a0,0(s1)
    80205bf0:	b9656ce3          	bltu	a0,s6,80205788 <.LBB8_61+0xbe>
    80205bf4:	f2043503          	ld	a0,-224(s0)
    80205bf8:	210c0593          	addi	a1,s8,528
    80205bfc:	40a58533          	sub	a0,a1,a0
    80205c00:	f4a43c23          	sd	a0,-168(s0)
    80205c04:	f6a43023          	sd	a0,-160(s0)
    80205c08:	f5840513          	addi	a0,s0,-168
    80205c0c:	f2a43c23          	sd	a0,-200(s0)

0000000080205c10 <.LBB8_80>:
    80205c10:	00006517          	auipc	a0,0x6
    80205c14:	5b850513          	addi	a0,a0,1464 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    80205c18:	f4a43023          	sd	a0,-192(s0)
    80205c1c:	f6040513          	addi	a0,s0,-160
    80205c20:	f4a43423          	sd	a0,-184(s0)
    80205c24:	f5a43823          	sd	s10,-176(s0)

0000000080205c28 <.LBB8_81>:
    80205c28:	00009517          	auipc	a0,0x9
    80205c2c:	36850513          	addi	a0,a0,872 # 8020ef90 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.38>
    80205c30:	f6a43423          	sd	a0,-152(s0)
    80205c34:	4589                	li	a1,2
    80205c36:	f6b43823          	sd	a1,-144(s0)

0000000080205c3a <.LBB8_82>:
    80205c3a:	00009517          	auipc	a0,0x9
    80205c3e:	22e50513          	addi	a0,a0,558 # 8020ee68 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.32>
    80205c42:	f6a43c23          	sd	a0,-136(s0)
    80205c46:	f8b43023          	sd	a1,-128(s0)
    80205c4a:	f9943423          	sd	s9,-120(s0)
    80205c4e:	f8b43823          	sd	a1,-112(s0)

0000000080205c52 <.LBB8_83>:
    80205c52:	00009617          	auipc	a2,0x9
    80205c56:	35e60613          	addi	a2,a2,862 # 8020efb0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.39>
    80205c5a:	4595                	li	a1,5
    80205c5c:	8552                	mv	a0,s4
    80205c5e:	00004097          	auipc	ra,0x4
    80205c62:	946080e7          	jalr	-1722(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205c66:	6088                	ld	a0,0(s1)
    80205c68:	b36563e3          	bltu	a0,s6,8020578e <.LBB8_61+0xc4>
    80205c6c:	008db503          	ld	a0,8(s11)
    80205c70:	1f850513          	addi	a0,a0,504
    80205c74:	f2a43c23          	sd	a0,-200(s0)
    80205c78:	f5a43023          	sd	s10,-192(s0)

0000000080205c7c <.LBB8_84>:
    80205c7c:	00009517          	auipc	a0,0x9
    80205c80:	38450513          	addi	a0,a0,900 # 8020f000 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.41>
    80205c84:	f6a43423          	sd	a0,-152(s0)
    80205c88:	f7343823          	sd	s3,-144(s0)
    80205c8c:	f7543c23          	sd	s5,-136(s0)
    80205c90:	f9343023          	sd	s3,-128(s0)
    80205c94:	f9943423          	sd	s9,-120(s0)
    80205c98:	f9343823          	sd	s3,-112(s0)

0000000080205c9c <.LBB8_85>:
    80205c9c:	00009617          	auipc	a2,0x9
    80205ca0:	37460613          	addi	a2,a2,884 # 8020f010 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.42>
    80205ca4:	4595                	li	a1,5
    80205ca6:	8552                	mv	a0,s4
    80205ca8:	00004097          	auipc	ra,0x4
    80205cac:	8fc080e7          	jalr	-1796(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205cb0:	6088                	ld	a0,0(s1)
    80205cb2:	8c5e                	mv	s8,s7
    80205cb4:	af6571e3          	bgeu	a0,s6,80205796 <.LBB8_61+0xcc>
    80205cb8:	b60d                	j	802057da <.LBB8_63+0x14>

0000000080205cba <.LBB8_86>:
    80205cba:	00009517          	auipc	a0,0x9
    80205cbe:	63650513          	addi	a0,a0,1590 # 8020f2f0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.63>
    80205cc2:	f6a43423          	sd	a0,-152(s0)
    80205cc6:	f7343823          	sd	s3,-144(s0)
    80205cca:	f6043c23          	sd	zero,-136(s0)
    80205cce:	f1843503          	ld	a0,-232(s0)
    80205cd2:	f8a43423          	sd	a0,-120(s0)
    80205cd6:	f8043823          	sd	zero,-112(s0)

0000000080205cda <.LBB8_87>:
    80205cda:	00009617          	auipc	a2,0x9
    80205cde:	62660613          	addi	a2,a2,1574 # 8020f300 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.64>
    80205ce2:	458d                	li	a1,3
    80205ce4:	8552                	mv	a0,s4
    80205ce6:	00004097          	auipc	ra,0x4
    80205cea:	8be080e7          	jalr	-1858(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205cee:	14202573          	csrr	a0,scause
    80205cf2:	608c                	ld	a1,0(s1)
    80205cf4:	b125e2e3          	bltu	a1,s2,802057f8 <.LBB8_63+0x32>
    80205cf8:	f6a43023          	sd	a0,-160(s0)
    80205cfc:	f6040513          	addi	a0,s0,-160
    80205d00:	f2a43c23          	sd	a0,-200(s0)
    80205d04:	f5a43023          	sd	s10,-192(s0)

0000000080205d08 <.LBB8_88>:
    80205d08:	00009517          	auipc	a0,0x9
    80205d0c:	63050513          	addi	a0,a0,1584 # 8020f338 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.66>
    80205d10:	f6a43423          	sd	a0,-152(s0)
    80205d14:	f7343823          	sd	s3,-144(s0)
    80205d18:	f7543c23          	sd	s5,-136(s0)
    80205d1c:	f9343023          	sd	s3,-128(s0)
    80205d20:	f9943423          	sd	s9,-120(s0)
    80205d24:	f9343823          	sd	s3,-112(s0)

0000000080205d28 <.LBB8_89>:
    80205d28:	00009617          	auipc	a2,0x9
    80205d2c:	62060613          	addi	a2,a2,1568 # 8020f348 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.67>
    80205d30:	458d                	li	a1,3
    80205d32:	8552                	mv	a0,s4
    80205d34:	00004097          	auipc	ra,0x4
    80205d38:	870080e7          	jalr	-1936(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205d3c:	6088                	ld	a0,0(s1)
    80205d3e:	ad6560e3          	bltu	a0,s6,802057fe <.LBB8_63+0x38>
    80205d42:	008db503          	ld	a0,8(s11)
    80205d46:	f2a43c23          	sd	a0,-200(s0)
    80205d4a:	f1043503          	ld	a0,-240(s0)
    80205d4e:	f4a43023          	sd	a0,-192(s0)

0000000080205d52 <.LBB8_90>:
    80205d52:	00009517          	auipc	a0,0x9
    80205d56:	62e50513          	addi	a0,a0,1582 # 8020f380 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.69>
    80205d5a:	f6a43423          	sd	a0,-152(s0)
    80205d5e:	f7343823          	sd	s3,-144(s0)
    80205d62:	f7843c23          	sd	s8,-136(s0)
    80205d66:	f9343023          	sd	s3,-128(s0)
    80205d6a:	f9943423          	sd	s9,-120(s0)
    80205d6e:	f9343823          	sd	s3,-112(s0)

0000000080205d72 <.LBB8_91>:
    80205d72:	00009617          	auipc	a2,0x9
    80205d76:	61e60613          	addi	a2,a2,1566 # 8020f390 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.70>
    80205d7a:	4595                	li	a1,5
    80205d7c:	8552                	mv	a0,s4
    80205d7e:	00004097          	auipc	ra,0x4
    80205d82:	826080e7          	jalr	-2010(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80205d86:	6088                	ld	a0,0(s1)
    80205d88:	a7757ee3          	bgeu	a0,s7,80205804 <.LBB8_63+0x3e>
    80205d8c:	b4c1                	j	8020584c <.LBB8_65+0x14>
    80205d8e:	70100513          	li	a0,1793
    80205d92:	e9043583          	ld	a1,-368(s0)
    80205d96:	00a59023          	sh	a0,0(a1)
    80205d9a:	6db2                	ld	s11,264(sp)
    80205d9c:	6d52                	ld	s10,272(sp)
    80205d9e:	6cf2                	ld	s9,280(sp)
    80205da0:	7c12                	ld	s8,288(sp)
    80205da2:	7bb2                	ld	s7,296(sp)
    80205da4:	7b52                	ld	s6,304(sp)
    80205da6:	7af2                	ld	s5,312(sp)
    80205da8:	6a16                	ld	s4,320(sp)
    80205daa:	69b6                	ld	s3,328(sp)
    80205dac:	6956                	ld	s2,336(sp)
    80205dae:	64f6                	ld	s1,344(sp)
    80205db0:	7416                	ld	s0,352(sp)
    80205db2:	70b6                	ld	ra,360(sp)
    80205db4:	6175                	addi	sp,sp,368
    80205db6:	8082                	ret

0000000080205db8 <_ZN63_$LT$rvm..arch..vcpu..HostState$u20$as$u20$core..fmt..Debug$GT$3fmt17h653ed4108e70459cE>:
    80205db8:	7129                	addi	sp,sp,-320
    80205dba:	fe06                	sd	ra,312(sp)
    80205dbc:	fa22                	sd	s0,304(sp)
    80205dbe:	f626                	sd	s1,296(sp)
    80205dc0:	f24a                	sd	s2,288(sp)
    80205dc2:	0280                	addi	s0,sp,320
    80205dc4:	86ae                	mv	a3,a1
    80205dc6:	00154583          	lbu	a1,1(a0)
    80205dca:	00054603          	lbu	a2,0(a0)
    80205dce:	00354703          	lbu	a4,3(a0)
    80205dd2:	00254783          	lbu	a5,2(a0)
    80205dd6:	05a2                	slli	a1,a1,0x8
    80205dd8:	8dd1                	or	a1,a1,a2
    80205dda:	00871613          	slli	a2,a4,0x8
    80205dde:	8e5d                	or	a2,a2,a5
    80205de0:	0642                	slli	a2,a2,0x10
    80205de2:	8dd1                	or	a1,a1,a2
    80205de4:	00554603          	lbu	a2,5(a0)
    80205de8:	00454703          	lbu	a4,4(a0)
    80205dec:	00754783          	lbu	a5,7(a0)
    80205df0:	00654483          	lbu	s1,6(a0)
    80205df4:	0622                	slli	a2,a2,0x8
    80205df6:	8e59                	or	a2,a2,a4
    80205df8:	00879713          	slli	a4,a5,0x8
    80205dfc:	8f45                	or	a4,a4,s1
    80205dfe:	0742                	slli	a4,a4,0x10
    80205e00:	8e59                	or	a2,a2,a4
    80205e02:	1602                	slli	a2,a2,0x20
    80205e04:	8dd1                	or	a1,a1,a2
    80205e06:	ecb43423          	sd	a1,-312(s0)
    80205e0a:	00954583          	lbu	a1,9(a0)
    80205e0e:	00854603          	lbu	a2,8(a0)
    80205e12:	00b54703          	lbu	a4,11(a0)
    80205e16:	00a54783          	lbu	a5,10(a0)
    80205e1a:	05a2                	slli	a1,a1,0x8
    80205e1c:	8dd1                	or	a1,a1,a2
    80205e1e:	00871613          	slli	a2,a4,0x8
    80205e22:	8e5d                	or	a2,a2,a5
    80205e24:	0642                	slli	a2,a2,0x10
    80205e26:	8dd1                	or	a1,a1,a2
    80205e28:	00d54603          	lbu	a2,13(a0)
    80205e2c:	00c54703          	lbu	a4,12(a0)
    80205e30:	00f54783          	lbu	a5,15(a0)
    80205e34:	00e54483          	lbu	s1,14(a0)
    80205e38:	0622                	slli	a2,a2,0x8
    80205e3a:	8e59                	or	a2,a2,a4
    80205e3c:	00879713          	slli	a4,a5,0x8
    80205e40:	8f45                	or	a4,a4,s1
    80205e42:	0742                	slli	a4,a4,0x10
    80205e44:	8e59                	or	a2,a2,a4
    80205e46:	1602                	slli	a2,a2,0x20
    80205e48:	8dd1                	or	a1,a1,a2
    80205e4a:	ecb43823          	sd	a1,-304(s0)
    80205e4e:	01154583          	lbu	a1,17(a0)
    80205e52:	01054603          	lbu	a2,16(a0)
    80205e56:	01354703          	lbu	a4,19(a0)
    80205e5a:	01254783          	lbu	a5,18(a0)
    80205e5e:	05a2                	slli	a1,a1,0x8
    80205e60:	8dd1                	or	a1,a1,a2
    80205e62:	00871613          	slli	a2,a4,0x8
    80205e66:	8e5d                	or	a2,a2,a5
    80205e68:	0642                	slli	a2,a2,0x10
    80205e6a:	8dd1                	or	a1,a1,a2
    80205e6c:	01554603          	lbu	a2,21(a0)
    80205e70:	01454703          	lbu	a4,20(a0)
    80205e74:	01754783          	lbu	a5,23(a0)
    80205e78:	01654483          	lbu	s1,22(a0)
    80205e7c:	0622                	slli	a2,a2,0x8
    80205e7e:	8e59                	or	a2,a2,a4
    80205e80:	00879713          	slli	a4,a5,0x8
    80205e84:	8f45                	or	a4,a4,s1
    80205e86:	0742                	slli	a4,a4,0x10
    80205e88:	8e59                	or	a2,a2,a4
    80205e8a:	1602                	slli	a2,a2,0x20
    80205e8c:	8dd1                	or	a1,a1,a2
    80205e8e:	ecb43c23          	sd	a1,-296(s0)
    80205e92:	01954583          	lbu	a1,25(a0)
    80205e96:	01854603          	lbu	a2,24(a0)
    80205e9a:	01b54703          	lbu	a4,27(a0)
    80205e9e:	01a54783          	lbu	a5,26(a0)
    80205ea2:	05a2                	slli	a1,a1,0x8
    80205ea4:	8dd1                	or	a1,a1,a2
    80205ea6:	00871613          	slli	a2,a4,0x8
    80205eaa:	8e5d                	or	a2,a2,a5
    80205eac:	0642                	slli	a2,a2,0x10
    80205eae:	8dd1                	or	a1,a1,a2
    80205eb0:	01d54603          	lbu	a2,29(a0)
    80205eb4:	01c54703          	lbu	a4,28(a0)
    80205eb8:	01f54783          	lbu	a5,31(a0)
    80205ebc:	01e54483          	lbu	s1,30(a0)
    80205ec0:	0622                	slli	a2,a2,0x8
    80205ec2:	8e59                	or	a2,a2,a4
    80205ec4:	00879713          	slli	a4,a5,0x8
    80205ec8:	8f45                	or	a4,a4,s1
    80205eca:	0742                	slli	a4,a4,0x10
    80205ecc:	8e59                	or	a2,a2,a4
    80205ece:	1602                	slli	a2,a2,0x20
    80205ed0:	8dd1                	or	a1,a1,a2
    80205ed2:	eeb43023          	sd	a1,-288(s0)
    80205ed6:	02154583          	lbu	a1,33(a0)
    80205eda:	02054603          	lbu	a2,32(a0)
    80205ede:	02354703          	lbu	a4,35(a0)
    80205ee2:	02254783          	lbu	a5,34(a0)
    80205ee6:	05a2                	slli	a1,a1,0x8
    80205ee8:	8dd1                	or	a1,a1,a2
    80205eea:	00871613          	slli	a2,a4,0x8
    80205eee:	8e5d                	or	a2,a2,a5
    80205ef0:	0642                	slli	a2,a2,0x10
    80205ef2:	8dd1                	or	a1,a1,a2
    80205ef4:	02554603          	lbu	a2,37(a0)
    80205ef8:	02454703          	lbu	a4,36(a0)
    80205efc:	02754783          	lbu	a5,39(a0)
    80205f00:	02654483          	lbu	s1,38(a0)
    80205f04:	0622                	slli	a2,a2,0x8
    80205f06:	8e59                	or	a2,a2,a4
    80205f08:	00879713          	slli	a4,a5,0x8
    80205f0c:	8f45                	or	a4,a4,s1
    80205f0e:	0742                	slli	a4,a4,0x10
    80205f10:	8e59                	or	a2,a2,a4
    80205f12:	1602                	slli	a2,a2,0x20
    80205f14:	8dd1                	or	a1,a1,a2
    80205f16:	eeb43423          	sd	a1,-280(s0)
    80205f1a:	02954583          	lbu	a1,41(a0)
    80205f1e:	02854603          	lbu	a2,40(a0)
    80205f22:	02b54703          	lbu	a4,43(a0)
    80205f26:	02a54783          	lbu	a5,42(a0)
    80205f2a:	05a2                	slli	a1,a1,0x8
    80205f2c:	8dd1                	or	a1,a1,a2
    80205f2e:	00871613          	slli	a2,a4,0x8
    80205f32:	8e5d                	or	a2,a2,a5
    80205f34:	0642                	slli	a2,a2,0x10
    80205f36:	8dd1                	or	a1,a1,a2
    80205f38:	02d54603          	lbu	a2,45(a0)
    80205f3c:	02c54703          	lbu	a4,44(a0)
    80205f40:	02f54783          	lbu	a5,47(a0)
    80205f44:	02e54483          	lbu	s1,46(a0)
    80205f48:	0622                	slli	a2,a2,0x8
    80205f4a:	8e59                	or	a2,a2,a4
    80205f4c:	00879713          	slli	a4,a5,0x8
    80205f50:	8f45                	or	a4,a4,s1
    80205f52:	0742                	slli	a4,a4,0x10
    80205f54:	8e59                	or	a2,a2,a4
    80205f56:	1602                	slli	a2,a2,0x20
    80205f58:	8dd1                	or	a1,a1,a2
    80205f5a:	eeb43823          	sd	a1,-272(s0)
    80205f5e:	03154583          	lbu	a1,49(a0)
    80205f62:	03054603          	lbu	a2,48(a0)
    80205f66:	03354703          	lbu	a4,51(a0)
    80205f6a:	03254783          	lbu	a5,50(a0)
    80205f6e:	05a2                	slli	a1,a1,0x8
    80205f70:	8dd1                	or	a1,a1,a2
    80205f72:	00871613          	slli	a2,a4,0x8
    80205f76:	8e5d                	or	a2,a2,a5
    80205f78:	0642                	slli	a2,a2,0x10
    80205f7a:	8dd1                	or	a1,a1,a2
    80205f7c:	03554603          	lbu	a2,53(a0)
    80205f80:	03454703          	lbu	a4,52(a0)
    80205f84:	03754783          	lbu	a5,55(a0)
    80205f88:	03654483          	lbu	s1,54(a0)
    80205f8c:	0622                	slli	a2,a2,0x8
    80205f8e:	8e59                	or	a2,a2,a4
    80205f90:	00879713          	slli	a4,a5,0x8
    80205f94:	8f45                	or	a4,a4,s1
    80205f96:	0742                	slli	a4,a4,0x10
    80205f98:	8e59                	or	a2,a2,a4
    80205f9a:	1602                	slli	a2,a2,0x20
    80205f9c:	8dd1                	or	a1,a1,a2
    80205f9e:	eeb43c23          	sd	a1,-264(s0)
    80205fa2:	03954583          	lbu	a1,57(a0)
    80205fa6:	03854603          	lbu	a2,56(a0)
    80205faa:	03b54703          	lbu	a4,59(a0)
    80205fae:	03a54783          	lbu	a5,58(a0)
    80205fb2:	05a2                	slli	a1,a1,0x8
    80205fb4:	8dd1                	or	a1,a1,a2
    80205fb6:	00871613          	slli	a2,a4,0x8
    80205fba:	8e5d                	or	a2,a2,a5
    80205fbc:	0642                	slli	a2,a2,0x10
    80205fbe:	8dd1                	or	a1,a1,a2
    80205fc0:	03d54603          	lbu	a2,61(a0)
    80205fc4:	03c54703          	lbu	a4,60(a0)
    80205fc8:	03f54783          	lbu	a5,63(a0)
    80205fcc:	03e54483          	lbu	s1,62(a0)
    80205fd0:	0622                	slli	a2,a2,0x8
    80205fd2:	8e59                	or	a2,a2,a4
    80205fd4:	00879713          	slli	a4,a5,0x8
    80205fd8:	8f45                	or	a4,a4,s1
    80205fda:	0742                	slli	a4,a4,0x10
    80205fdc:	8e59                	or	a2,a2,a4
    80205fde:	1602                	slli	a2,a2,0x20
    80205fe0:	8dd1                	or	a1,a1,a2
    80205fe2:	f0b43023          	sd	a1,-256(s0)
    80205fe6:	04154583          	lbu	a1,65(a0)
    80205fea:	04054603          	lbu	a2,64(a0)
    80205fee:	04354703          	lbu	a4,67(a0)
    80205ff2:	04254783          	lbu	a5,66(a0)
    80205ff6:	05a2                	slli	a1,a1,0x8
    80205ff8:	8dd1                	or	a1,a1,a2
    80205ffa:	00871613          	slli	a2,a4,0x8
    80205ffe:	8e5d                	or	a2,a2,a5
    80206000:	0642                	slli	a2,a2,0x10
    80206002:	8dd1                	or	a1,a1,a2
    80206004:	04554603          	lbu	a2,69(a0)
    80206008:	04454703          	lbu	a4,68(a0)
    8020600c:	04754783          	lbu	a5,71(a0)
    80206010:	04654483          	lbu	s1,70(a0)
    80206014:	0622                	slli	a2,a2,0x8
    80206016:	8e59                	or	a2,a2,a4
    80206018:	00879713          	slli	a4,a5,0x8
    8020601c:	8f45                	or	a4,a4,s1
    8020601e:	0742                	slli	a4,a4,0x10
    80206020:	8e59                	or	a2,a2,a4
    80206022:	1602                	slli	a2,a2,0x20
    80206024:	8dd1                	or	a1,a1,a2
    80206026:	f0b43423          	sd	a1,-248(s0)
    8020602a:	04954583          	lbu	a1,73(a0)
    8020602e:	04854603          	lbu	a2,72(a0)
    80206032:	04b54703          	lbu	a4,75(a0)
    80206036:	04a54783          	lbu	a5,74(a0)
    8020603a:	05a2                	slli	a1,a1,0x8
    8020603c:	8dd1                	or	a1,a1,a2
    8020603e:	00871613          	slli	a2,a4,0x8
    80206042:	8e5d                	or	a2,a2,a5
    80206044:	0642                	slli	a2,a2,0x10
    80206046:	8dd1                	or	a1,a1,a2
    80206048:	04d54603          	lbu	a2,77(a0)
    8020604c:	04c54703          	lbu	a4,76(a0)
    80206050:	04f54783          	lbu	a5,79(a0)
    80206054:	04e54483          	lbu	s1,78(a0)
    80206058:	0622                	slli	a2,a2,0x8
    8020605a:	8e59                	or	a2,a2,a4
    8020605c:	00879713          	slli	a4,a5,0x8
    80206060:	8f45                	or	a4,a4,s1
    80206062:	0742                	slli	a4,a4,0x10
    80206064:	8e59                	or	a2,a2,a4
    80206066:	1602                	slli	a2,a2,0x20
    80206068:	8dd1                	or	a1,a1,a2
    8020606a:	f0b43823          	sd	a1,-240(s0)
    8020606e:	05154583          	lbu	a1,81(a0)
    80206072:	05054603          	lbu	a2,80(a0)
    80206076:	05354703          	lbu	a4,83(a0)
    8020607a:	05254783          	lbu	a5,82(a0)
    8020607e:	05a2                	slli	a1,a1,0x8
    80206080:	8dd1                	or	a1,a1,a2
    80206082:	00871613          	slli	a2,a4,0x8
    80206086:	8e5d                	or	a2,a2,a5
    80206088:	0642                	slli	a2,a2,0x10
    8020608a:	8dd1                	or	a1,a1,a2
    8020608c:	05554603          	lbu	a2,85(a0)
    80206090:	05454703          	lbu	a4,84(a0)
    80206094:	05754783          	lbu	a5,87(a0)
    80206098:	05654483          	lbu	s1,86(a0)
    8020609c:	0622                	slli	a2,a2,0x8
    8020609e:	8e59                	or	a2,a2,a4
    802060a0:	00879713          	slli	a4,a5,0x8
    802060a4:	8f45                	or	a4,a4,s1
    802060a6:	0742                	slli	a4,a4,0x10
    802060a8:	8e59                	or	a2,a2,a4
    802060aa:	1602                	slli	a2,a2,0x20
    802060ac:	8dd1                	or	a1,a1,a2
    802060ae:	f0b43c23          	sd	a1,-232(s0)
    802060b2:	05954583          	lbu	a1,89(a0)
    802060b6:	05854603          	lbu	a2,88(a0)
    802060ba:	05b54703          	lbu	a4,91(a0)
    802060be:	05a54783          	lbu	a5,90(a0)
    802060c2:	05a2                	slli	a1,a1,0x8
    802060c4:	8dd1                	or	a1,a1,a2
    802060c6:	00871613          	slli	a2,a4,0x8
    802060ca:	8e5d                	or	a2,a2,a5
    802060cc:	0642                	slli	a2,a2,0x10
    802060ce:	8dd1                	or	a1,a1,a2
    802060d0:	05d54603          	lbu	a2,93(a0)
    802060d4:	05c54703          	lbu	a4,92(a0)
    802060d8:	05f54783          	lbu	a5,95(a0)
    802060dc:	05e54483          	lbu	s1,94(a0)
    802060e0:	0622                	slli	a2,a2,0x8
    802060e2:	8e59                	or	a2,a2,a4
    802060e4:	00879713          	slli	a4,a5,0x8
    802060e8:	8f45                	or	a4,a4,s1
    802060ea:	0742                	slli	a4,a4,0x10
    802060ec:	8e59                	or	a2,a2,a4
    802060ee:	1602                	slli	a2,a2,0x20
    802060f0:	8dd1                	or	a1,a1,a2
    802060f2:	f2b43023          	sd	a1,-224(s0)
    802060f6:	06154583          	lbu	a1,97(a0)
    802060fa:	06054603          	lbu	a2,96(a0)
    802060fe:	06354703          	lbu	a4,99(a0)
    80206102:	06254783          	lbu	a5,98(a0)
    80206106:	05a2                	slli	a1,a1,0x8
    80206108:	8dd1                	or	a1,a1,a2
    8020610a:	00871613          	slli	a2,a4,0x8
    8020610e:	8e5d                	or	a2,a2,a5
    80206110:	0642                	slli	a2,a2,0x10
    80206112:	8dd1                	or	a1,a1,a2
    80206114:	06554603          	lbu	a2,101(a0)
    80206118:	06454703          	lbu	a4,100(a0)
    8020611c:	06754783          	lbu	a5,103(a0)
    80206120:	06654483          	lbu	s1,102(a0)
    80206124:	0622                	slli	a2,a2,0x8
    80206126:	8e59                	or	a2,a2,a4
    80206128:	00879713          	slli	a4,a5,0x8
    8020612c:	8f45                	or	a4,a4,s1
    8020612e:	0742                	slli	a4,a4,0x10
    80206130:	8e59                	or	a2,a2,a4
    80206132:	1602                	slli	a2,a2,0x20
    80206134:	8dd1                	or	a1,a1,a2
    80206136:	f2b43423          	sd	a1,-216(s0)
    8020613a:	06954583          	lbu	a1,105(a0)
    8020613e:	06854603          	lbu	a2,104(a0)
    80206142:	06b54703          	lbu	a4,107(a0)
    80206146:	06a54783          	lbu	a5,106(a0)
    8020614a:	05a2                	slli	a1,a1,0x8
    8020614c:	8dd1                	or	a1,a1,a2
    8020614e:	00871613          	slli	a2,a4,0x8
    80206152:	8e5d                	or	a2,a2,a5
    80206154:	0642                	slli	a2,a2,0x10
    80206156:	8dd1                	or	a1,a1,a2
    80206158:	06d54603          	lbu	a2,109(a0)
    8020615c:	06c54703          	lbu	a4,108(a0)
    80206160:	06f54783          	lbu	a5,111(a0)
    80206164:	06e54483          	lbu	s1,110(a0)
    80206168:	0622                	slli	a2,a2,0x8
    8020616a:	8e59                	or	a2,a2,a4
    8020616c:	00879713          	slli	a4,a5,0x8
    80206170:	8f45                	or	a4,a4,s1
    80206172:	0742                	slli	a4,a4,0x10
    80206174:	8e59                	or	a2,a2,a4
    80206176:	1602                	slli	a2,a2,0x20
    80206178:	8dd1                	or	a1,a1,a2
    8020617a:	f2b43823          	sd	a1,-208(s0)
    8020617e:	07154583          	lbu	a1,113(a0)
    80206182:	07054603          	lbu	a2,112(a0)
    80206186:	07354703          	lbu	a4,115(a0)
    8020618a:	07254783          	lbu	a5,114(a0)
    8020618e:	05a2                	slli	a1,a1,0x8
    80206190:	8dd1                	or	a1,a1,a2
    80206192:	00871613          	slli	a2,a4,0x8
    80206196:	8e5d                	or	a2,a2,a5
    80206198:	0642                	slli	a2,a2,0x10
    8020619a:	8dd1                	or	a1,a1,a2
    8020619c:	07554603          	lbu	a2,117(a0)
    802061a0:	07454703          	lbu	a4,116(a0)
    802061a4:	07754783          	lbu	a5,119(a0)
    802061a8:	07654483          	lbu	s1,118(a0)
    802061ac:	0622                	slli	a2,a2,0x8
    802061ae:	8e59                	or	a2,a2,a4
    802061b0:	00879713          	slli	a4,a5,0x8
    802061b4:	8f45                	or	a4,a4,s1
    802061b6:	0742                	slli	a4,a4,0x10
    802061b8:	8e59                	or	a2,a2,a4
    802061ba:	1602                	slli	a2,a2,0x20
    802061bc:	8dd1                	or	a1,a1,a2
    802061be:	f2b43c23          	sd	a1,-200(s0)
    802061c2:	07954583          	lbu	a1,121(a0)
    802061c6:	07854603          	lbu	a2,120(a0)
    802061ca:	07b54703          	lbu	a4,123(a0)
    802061ce:	07a54783          	lbu	a5,122(a0)
    802061d2:	05a2                	slli	a1,a1,0x8
    802061d4:	8dd1                	or	a1,a1,a2
    802061d6:	00871613          	slli	a2,a4,0x8
    802061da:	8e5d                	or	a2,a2,a5
    802061dc:	0642                	slli	a2,a2,0x10
    802061de:	8dd1                	or	a1,a1,a2
    802061e0:	07d54603          	lbu	a2,125(a0)
    802061e4:	07c54703          	lbu	a4,124(a0)
    802061e8:	07f54783          	lbu	a5,127(a0)
    802061ec:	07e54483          	lbu	s1,126(a0)
    802061f0:	0622                	slli	a2,a2,0x8
    802061f2:	8e59                	or	a2,a2,a4
    802061f4:	00879713          	slli	a4,a5,0x8
    802061f8:	8f45                	or	a4,a4,s1
    802061fa:	0742                	slli	a4,a4,0x10
    802061fc:	8e59                	or	a2,a2,a4
    802061fe:	1602                	slli	a2,a2,0x20
    80206200:	8dd1                	or	a1,a1,a2
    80206202:	f4b43023          	sd	a1,-192(s0)
    80206206:	08154583          	lbu	a1,129(a0)
    8020620a:	08054603          	lbu	a2,128(a0)
    8020620e:	08354703          	lbu	a4,131(a0)
    80206212:	08254783          	lbu	a5,130(a0)
    80206216:	05a2                	slli	a1,a1,0x8
    80206218:	8dd1                	or	a1,a1,a2
    8020621a:	00871613          	slli	a2,a4,0x8
    8020621e:	8e5d                	or	a2,a2,a5
    80206220:	0642                	slli	a2,a2,0x10
    80206222:	8dd1                	or	a1,a1,a2
    80206224:	08554603          	lbu	a2,133(a0)
    80206228:	08454703          	lbu	a4,132(a0)
    8020622c:	08754783          	lbu	a5,135(a0)
    80206230:	08654483          	lbu	s1,134(a0)
    80206234:	0622                	slli	a2,a2,0x8
    80206236:	8e59                	or	a2,a2,a4
    80206238:	00879713          	slli	a4,a5,0x8
    8020623c:	8f45                	or	a4,a4,s1
    8020623e:	0742                	slli	a4,a4,0x10
    80206240:	8e59                	or	a2,a2,a4
    80206242:	1602                	slli	a2,a2,0x20
    80206244:	8dd1                	or	a1,a1,a2
    80206246:	f4b43423          	sd	a1,-184(s0)
    8020624a:	08954583          	lbu	a1,137(a0)
    8020624e:	08854603          	lbu	a2,136(a0)
    80206252:	08b54703          	lbu	a4,139(a0)
    80206256:	08a54783          	lbu	a5,138(a0)
    8020625a:	05a2                	slli	a1,a1,0x8
    8020625c:	8dd1                	or	a1,a1,a2
    8020625e:	00871613          	slli	a2,a4,0x8
    80206262:	8e5d                	or	a2,a2,a5
    80206264:	0642                	slli	a2,a2,0x10
    80206266:	8dd1                	or	a1,a1,a2
    80206268:	08d54603          	lbu	a2,141(a0)
    8020626c:	08c54703          	lbu	a4,140(a0)
    80206270:	08f54783          	lbu	a5,143(a0)
    80206274:	08e54483          	lbu	s1,142(a0)
    80206278:	0622                	slli	a2,a2,0x8
    8020627a:	8e59                	or	a2,a2,a4
    8020627c:	00879713          	slli	a4,a5,0x8
    80206280:	8f45                	or	a4,a4,s1
    80206282:	0742                	slli	a4,a4,0x10
    80206284:	8e59                	or	a2,a2,a4
    80206286:	1602                	slli	a2,a2,0x20
    80206288:	8dd1                	or	a1,a1,a2
    8020628a:	f4b43823          	sd	a1,-176(s0)
    8020628e:	09154583          	lbu	a1,145(a0)
    80206292:	09054603          	lbu	a2,144(a0)
    80206296:	09354703          	lbu	a4,147(a0)
    8020629a:	09254783          	lbu	a5,146(a0)
    8020629e:	05a2                	slli	a1,a1,0x8
    802062a0:	8dd1                	or	a1,a1,a2
    802062a2:	00871613          	slli	a2,a4,0x8
    802062a6:	8e5d                	or	a2,a2,a5
    802062a8:	0642                	slli	a2,a2,0x10
    802062aa:	8dd1                	or	a1,a1,a2
    802062ac:	09554603          	lbu	a2,149(a0)
    802062b0:	09454703          	lbu	a4,148(a0)
    802062b4:	09754783          	lbu	a5,151(a0)
    802062b8:	09654483          	lbu	s1,150(a0)
    802062bc:	0622                	slli	a2,a2,0x8
    802062be:	8e59                	or	a2,a2,a4
    802062c0:	00879713          	slli	a4,a5,0x8
    802062c4:	8f45                	or	a4,a4,s1
    802062c6:	0742                	slli	a4,a4,0x10
    802062c8:	8e59                	or	a2,a2,a4
    802062ca:	1602                	slli	a2,a2,0x20
    802062cc:	8dd1                	or	a1,a1,a2
    802062ce:	f4b43c23          	sd	a1,-168(s0)
    802062d2:	09954583          	lbu	a1,153(a0)
    802062d6:	09854603          	lbu	a2,152(a0)
    802062da:	09b54703          	lbu	a4,155(a0)
    802062de:	09a54783          	lbu	a5,154(a0)
    802062e2:	05a2                	slli	a1,a1,0x8
    802062e4:	8dd1                	or	a1,a1,a2
    802062e6:	00871613          	slli	a2,a4,0x8
    802062ea:	8e5d                	or	a2,a2,a5
    802062ec:	0642                	slli	a2,a2,0x10
    802062ee:	8dd1                	or	a1,a1,a2
    802062f0:	09d54603          	lbu	a2,157(a0)
    802062f4:	09c54703          	lbu	a4,156(a0)
    802062f8:	09f54783          	lbu	a5,159(a0)
    802062fc:	09e54483          	lbu	s1,158(a0)
    80206300:	0622                	slli	a2,a2,0x8
    80206302:	8e59                	or	a2,a2,a4
    80206304:	00879713          	slli	a4,a5,0x8
    80206308:	8f45                	or	a4,a4,s1
    8020630a:	0742                	slli	a4,a4,0x10
    8020630c:	8e59                	or	a2,a2,a4
    8020630e:	1602                	slli	a2,a2,0x20
    80206310:	8dd1                	or	a1,a1,a2
    80206312:	f6b43023          	sd	a1,-160(s0)
    80206316:	0a154583          	lbu	a1,161(a0)
    8020631a:	0a054603          	lbu	a2,160(a0)
    8020631e:	0a354703          	lbu	a4,163(a0)
    80206322:	0a254783          	lbu	a5,162(a0)
    80206326:	05a2                	slli	a1,a1,0x8
    80206328:	8dd1                	or	a1,a1,a2
    8020632a:	00871613          	slli	a2,a4,0x8
    8020632e:	8e5d                	or	a2,a2,a5
    80206330:	0642                	slli	a2,a2,0x10
    80206332:	8dd1                	or	a1,a1,a2
    80206334:	0a554603          	lbu	a2,165(a0)
    80206338:	0a454703          	lbu	a4,164(a0)
    8020633c:	0a754783          	lbu	a5,167(a0)
    80206340:	0a654483          	lbu	s1,166(a0)
    80206344:	0622                	slli	a2,a2,0x8
    80206346:	8e59                	or	a2,a2,a4
    80206348:	00879713          	slli	a4,a5,0x8
    8020634c:	8f45                	or	a4,a4,s1
    8020634e:	0742                	slli	a4,a4,0x10
    80206350:	8e59                	or	a2,a2,a4
    80206352:	1602                	slli	a2,a2,0x20
    80206354:	8dd1                	or	a1,a1,a2
    80206356:	f6b43423          	sd	a1,-152(s0)
    8020635a:	0a954583          	lbu	a1,169(a0)
    8020635e:	0a854603          	lbu	a2,168(a0)
    80206362:	0ab54703          	lbu	a4,171(a0)
    80206366:	0aa54783          	lbu	a5,170(a0)
    8020636a:	05a2                	slli	a1,a1,0x8
    8020636c:	8dd1                	or	a1,a1,a2
    8020636e:	00871613          	slli	a2,a4,0x8
    80206372:	8e5d                	or	a2,a2,a5
    80206374:	0642                	slli	a2,a2,0x10
    80206376:	8dd1                	or	a1,a1,a2
    80206378:	0ad54603          	lbu	a2,173(a0)
    8020637c:	0ac54703          	lbu	a4,172(a0)
    80206380:	0af54783          	lbu	a5,175(a0)
    80206384:	0ae54483          	lbu	s1,174(a0)
    80206388:	0622                	slli	a2,a2,0x8
    8020638a:	8e59                	or	a2,a2,a4
    8020638c:	00879713          	slli	a4,a5,0x8
    80206390:	8f45                	or	a4,a4,s1
    80206392:	0742                	slli	a4,a4,0x10
    80206394:	8e59                	or	a2,a2,a4
    80206396:	1602                	slli	a2,a2,0x20
    80206398:	8dd1                	or	a1,a1,a2
    8020639a:	f6b43823          	sd	a1,-144(s0)
    8020639e:	0b154583          	lbu	a1,177(a0)
    802063a2:	0b054603          	lbu	a2,176(a0)
    802063a6:	0b354703          	lbu	a4,179(a0)
    802063aa:	0b254783          	lbu	a5,178(a0)
    802063ae:	05a2                	slli	a1,a1,0x8
    802063b0:	8dd1                	or	a1,a1,a2
    802063b2:	00871613          	slli	a2,a4,0x8
    802063b6:	8e5d                	or	a2,a2,a5
    802063b8:	0642                	slli	a2,a2,0x10
    802063ba:	8dd1                	or	a1,a1,a2
    802063bc:	0b554603          	lbu	a2,181(a0)
    802063c0:	0b454703          	lbu	a4,180(a0)
    802063c4:	0b754783          	lbu	a5,183(a0)
    802063c8:	0b654483          	lbu	s1,182(a0)
    802063cc:	0622                	slli	a2,a2,0x8
    802063ce:	8e59                	or	a2,a2,a4
    802063d0:	00879713          	slli	a4,a5,0x8
    802063d4:	8f45                	or	a4,a4,s1
    802063d6:	0742                	slli	a4,a4,0x10
    802063d8:	8e59                	or	a2,a2,a4
    802063da:	1602                	slli	a2,a2,0x20
    802063dc:	8dd1                	or	a1,a1,a2
    802063de:	f6b43c23          	sd	a1,-136(s0)
    802063e2:	0b954583          	lbu	a1,185(a0)
    802063e6:	0b854603          	lbu	a2,184(a0)
    802063ea:	0bb54703          	lbu	a4,187(a0)
    802063ee:	0ba54783          	lbu	a5,186(a0)
    802063f2:	05a2                	slli	a1,a1,0x8
    802063f4:	8dd1                	or	a1,a1,a2
    802063f6:	00871613          	slli	a2,a4,0x8
    802063fa:	8e5d                	or	a2,a2,a5
    802063fc:	0642                	slli	a2,a2,0x10
    802063fe:	8dd1                	or	a1,a1,a2
    80206400:	0bd54603          	lbu	a2,189(a0)
    80206404:	0bc54703          	lbu	a4,188(a0)
    80206408:	0bf54783          	lbu	a5,191(a0)
    8020640c:	0be54483          	lbu	s1,190(a0)
    80206410:	0622                	slli	a2,a2,0x8
    80206412:	8e59                	or	a2,a2,a4
    80206414:	00879713          	slli	a4,a5,0x8
    80206418:	8f45                	or	a4,a4,s1
    8020641a:	0742                	slli	a4,a4,0x10
    8020641c:	8e59                	or	a2,a2,a4
    8020641e:	1602                	slli	a2,a2,0x20
    80206420:	8dd1                	or	a1,a1,a2
    80206422:	f8b43023          	sd	a1,-128(s0)
    80206426:	0c154583          	lbu	a1,193(a0)
    8020642a:	0c054603          	lbu	a2,192(a0)
    8020642e:	0c354703          	lbu	a4,195(a0)
    80206432:	0c254783          	lbu	a5,194(a0)
    80206436:	05a2                	slli	a1,a1,0x8
    80206438:	8dd1                	or	a1,a1,a2
    8020643a:	00871613          	slli	a2,a4,0x8
    8020643e:	8e5d                	or	a2,a2,a5
    80206440:	0642                	slli	a2,a2,0x10
    80206442:	8dd1                	or	a1,a1,a2
    80206444:	0c554603          	lbu	a2,197(a0)
    80206448:	0c454703          	lbu	a4,196(a0)
    8020644c:	0c754783          	lbu	a5,199(a0)
    80206450:	0c654483          	lbu	s1,198(a0)
    80206454:	0622                	slli	a2,a2,0x8
    80206456:	8e59                	or	a2,a2,a4
    80206458:	00879713          	slli	a4,a5,0x8
    8020645c:	8f45                	or	a4,a4,s1
    8020645e:	0742                	slli	a4,a4,0x10
    80206460:	8e59                	or	a2,a2,a4
    80206462:	1602                	slli	a2,a2,0x20
    80206464:	8dd1                	or	a1,a1,a2
    80206466:	f8b43423          	sd	a1,-120(s0)
    8020646a:	0c954583          	lbu	a1,201(a0)
    8020646e:	0c854603          	lbu	a2,200(a0)
    80206472:	0cb54703          	lbu	a4,203(a0)
    80206476:	0ca54783          	lbu	a5,202(a0)
    8020647a:	05a2                	slli	a1,a1,0x8
    8020647c:	8dd1                	or	a1,a1,a2
    8020647e:	00871613          	slli	a2,a4,0x8
    80206482:	8e5d                	or	a2,a2,a5
    80206484:	0642                	slli	a2,a2,0x10
    80206486:	8dd1                	or	a1,a1,a2
    80206488:	0cd54603          	lbu	a2,205(a0)
    8020648c:	0cc54703          	lbu	a4,204(a0)
    80206490:	0cf54783          	lbu	a5,207(a0)
    80206494:	0ce54483          	lbu	s1,206(a0)
    80206498:	0622                	slli	a2,a2,0x8
    8020649a:	8e59                	or	a2,a2,a4
    8020649c:	00879713          	slli	a4,a5,0x8
    802064a0:	8f45                	or	a4,a4,s1
    802064a2:	0742                	slli	a4,a4,0x10
    802064a4:	8e59                	or	a2,a2,a4
    802064a6:	1602                	slli	a2,a2,0x20
    802064a8:	8dd1                	or	a1,a1,a2
    802064aa:	f8b43823          	sd	a1,-112(s0)
    802064ae:	0d154583          	lbu	a1,209(a0)
    802064b2:	0d054603          	lbu	a2,208(a0)
    802064b6:	0d354703          	lbu	a4,211(a0)
    802064ba:	0d254783          	lbu	a5,210(a0)
    802064be:	05a2                	slli	a1,a1,0x8
    802064c0:	8dd1                	or	a1,a1,a2
    802064c2:	00871613          	slli	a2,a4,0x8
    802064c6:	8e5d                	or	a2,a2,a5
    802064c8:	0642                	slli	a2,a2,0x10
    802064ca:	8dd1                	or	a1,a1,a2
    802064cc:	0d554603          	lbu	a2,213(a0)
    802064d0:	0d454703          	lbu	a4,212(a0)
    802064d4:	0d754783          	lbu	a5,215(a0)
    802064d8:	0d654483          	lbu	s1,214(a0)
    802064dc:	0622                	slli	a2,a2,0x8
    802064de:	8e59                	or	a2,a2,a4
    802064e0:	00879713          	slli	a4,a5,0x8
    802064e4:	8f45                	or	a4,a4,s1
    802064e6:	0742                	slli	a4,a4,0x10
    802064e8:	8e59                	or	a2,a2,a4
    802064ea:	1602                	slli	a2,a2,0x20
    802064ec:	8dd1                	or	a1,a1,a2
    802064ee:	f8b43c23          	sd	a1,-104(s0)
    802064f2:	0d954583          	lbu	a1,217(a0)
    802064f6:	0d854603          	lbu	a2,216(a0)
    802064fa:	0db54703          	lbu	a4,219(a0)
    802064fe:	0da54783          	lbu	a5,218(a0)
    80206502:	05a2                	slli	a1,a1,0x8
    80206504:	8dd1                	or	a1,a1,a2
    80206506:	00871613          	slli	a2,a4,0x8
    8020650a:	8e5d                	or	a2,a2,a5
    8020650c:	0642                	slli	a2,a2,0x10
    8020650e:	8dd1                	or	a1,a1,a2
    80206510:	0dd54603          	lbu	a2,221(a0)
    80206514:	0dc54703          	lbu	a4,220(a0)
    80206518:	0df54783          	lbu	a5,223(a0)
    8020651c:	0de54483          	lbu	s1,222(a0)
    80206520:	0622                	slli	a2,a2,0x8
    80206522:	8e59                	or	a2,a2,a4
    80206524:	00879713          	slli	a4,a5,0x8
    80206528:	8f45                	or	a4,a4,s1
    8020652a:	0742                	slli	a4,a4,0x10
    8020652c:	8e59                	or	a2,a2,a4
    8020652e:	1602                	slli	a2,a2,0x20
    80206530:	8dd1                	or	a1,a1,a2
    80206532:	fab43023          	sd	a1,-96(s0)
    80206536:	0e154583          	lbu	a1,225(a0)
    8020653a:	0e054603          	lbu	a2,224(a0)
    8020653e:	0e354703          	lbu	a4,227(a0)
    80206542:	0e254783          	lbu	a5,226(a0)
    80206546:	05a2                	slli	a1,a1,0x8
    80206548:	8dd1                	or	a1,a1,a2
    8020654a:	00871613          	slli	a2,a4,0x8
    8020654e:	8e5d                	or	a2,a2,a5
    80206550:	0642                	slli	a2,a2,0x10
    80206552:	8dd1                	or	a1,a1,a2
    80206554:	0e554603          	lbu	a2,229(a0)
    80206558:	0e454703          	lbu	a4,228(a0)
    8020655c:	0e754783          	lbu	a5,231(a0)
    80206560:	0e654483          	lbu	s1,230(a0)
    80206564:	0622                	slli	a2,a2,0x8
    80206566:	8e59                	or	a2,a2,a4
    80206568:	00879713          	slli	a4,a5,0x8
    8020656c:	8f45                	or	a4,a4,s1
    8020656e:	0742                	slli	a4,a4,0x10
    80206570:	8e59                	or	a2,a2,a4
    80206572:	1602                	slli	a2,a2,0x20
    80206574:	8dd1                	or	a1,a1,a2
    80206576:	fab43423          	sd	a1,-88(s0)
    8020657a:	0e954583          	lbu	a1,233(a0)
    8020657e:	0e854603          	lbu	a2,232(a0)
    80206582:	0eb54703          	lbu	a4,235(a0)
    80206586:	0ea54783          	lbu	a5,234(a0)
    8020658a:	05a2                	slli	a1,a1,0x8
    8020658c:	8dd1                	or	a1,a1,a2
    8020658e:	00871613          	slli	a2,a4,0x8
    80206592:	8e5d                	or	a2,a2,a5
    80206594:	0642                	slli	a2,a2,0x10
    80206596:	8dd1                	or	a1,a1,a2
    80206598:	0ed54603          	lbu	a2,237(a0)
    8020659c:	0ec54703          	lbu	a4,236(a0)
    802065a0:	0ef54783          	lbu	a5,239(a0)
    802065a4:	0ee54483          	lbu	s1,238(a0)
    802065a8:	0622                	slli	a2,a2,0x8
    802065aa:	8e59                	or	a2,a2,a4
    802065ac:	00879713          	slli	a4,a5,0x8
    802065b0:	8f45                	or	a4,a4,s1
    802065b2:	0742                	slli	a4,a4,0x10
    802065b4:	8e59                	or	a2,a2,a4
    802065b6:	1602                	slli	a2,a2,0x20
    802065b8:	8dd1                	or	a1,a1,a2
    802065ba:	fab43823          	sd	a1,-80(s0)
    802065be:	0f154583          	lbu	a1,241(a0)
    802065c2:	0f054603          	lbu	a2,240(a0)
    802065c6:	0f354703          	lbu	a4,243(a0)
    802065ca:	0f254783          	lbu	a5,242(a0)
    802065ce:	05a2                	slli	a1,a1,0x8
    802065d0:	8dd1                	or	a1,a1,a2
    802065d2:	00871613          	slli	a2,a4,0x8
    802065d6:	8e5d                	or	a2,a2,a5
    802065d8:	0642                	slli	a2,a2,0x10
    802065da:	8dd1                	or	a1,a1,a2
    802065dc:	0f554603          	lbu	a2,245(a0)
    802065e0:	0f454703          	lbu	a4,244(a0)
    802065e4:	0f754783          	lbu	a5,247(a0)
    802065e8:	0f654503          	lbu	a0,246(a0)
    802065ec:	0622                	slli	a2,a2,0x8
    802065ee:	8e59                	or	a2,a2,a4
    802065f0:	00879713          	slli	a4,a5,0x8
    802065f4:	8d59                	or	a0,a0,a4
    802065f6:	0542                	slli	a0,a0,0x10
    802065f8:	8d51                	or	a0,a0,a2
    802065fa:	1502                	slli	a0,a0,0x20
    802065fc:	8d4d                	or	a0,a0,a1
    802065fe:	faa43c23          	sd	a0,-72(s0)

0000000080206602 <.LBB9_1>:
    80206602:	00009597          	auipc	a1,0x9
    80206606:	eae58593          	addi	a1,a1,-338 # 8020f4b0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.77>
    8020660a:	4625                	li	a2,9
    8020660c:	8536                	mv	a0,a3
    8020660e:	00004097          	auipc	ra,0x4
    80206612:	41a080e7          	jalr	1050(ra) # 8020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>
    80206616:	fcb43423          	sd	a1,-56(s0)
    8020661a:	fca43023          	sd	a0,-64(s0)
    8020661e:	ec840513          	addi	a0,s0,-312
    80206622:	fca43c23          	sd	a0,-40(s0)

0000000080206626 <.LBB9_2>:
    80206626:	00007597          	auipc	a1,0x7
    8020662a:	4e658593          	addi	a1,a1,1254 # 8020db0c <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x2c>

000000008020662e <.LBB9_3>:
    8020662e:	00009497          	auipc	s1,0x9
    80206632:	e9248493          	addi	s1,s1,-366 # 8020f4c0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.79>
    80206636:	fc040913          	addi	s2,s0,-64
    8020663a:	fd840693          	addi	a3,s0,-40
    8020663e:	4611                	li	a2,4
    80206640:	854a                	mv	a0,s2
    80206642:	8726                	mv	a4,s1
    80206644:	00003097          	auipc	ra,0x3
    80206648:	396080e7          	jalr	918(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020664c:	ed040513          	addi	a0,s0,-304
    80206650:	fca43c23          	sd	a0,-40(s0)

0000000080206654 <.LBB9_4>:
    80206654:	00009597          	auipc	a1,0x9
    80206658:	e8c58593          	addi	a1,a1,-372 # 8020f4e0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.80>
    8020665c:	fd840693          	addi	a3,s0,-40
    80206660:	4609                	li	a2,2
    80206662:	854a                	mv	a0,s2
    80206664:	8726                	mv	a4,s1
    80206666:	00003097          	auipc	ra,0x3
    8020666a:	374080e7          	jalr	884(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020666e:	ed840513          	addi	a0,s0,-296
    80206672:	fca43c23          	sd	a0,-40(s0)

0000000080206676 <.LBB9_5>:
    80206676:	00009597          	auipc	a1,0x9
    8020667a:	e6c58593          	addi	a1,a1,-404 # 8020f4e2 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.81>
    8020667e:	fd840693          	addi	a3,s0,-40
    80206682:	4609                	li	a2,2
    80206684:	854a                	mv	a0,s2
    80206686:	8726                	mv	a4,s1
    80206688:	00003097          	auipc	ra,0x3
    8020668c:	352080e7          	jalr	850(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206690:	ee040513          	addi	a0,s0,-288
    80206694:	fca43c23          	sd	a0,-40(s0)

0000000080206698 <.LBB9_6>:
    80206698:	00009597          	auipc	a1,0x9
    8020669c:	e4c58593          	addi	a1,a1,-436 # 8020f4e4 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.82>
    802066a0:	fd840693          	addi	a3,s0,-40
    802066a4:	4609                	li	a2,2
    802066a6:	854a                	mv	a0,s2
    802066a8:	8726                	mv	a4,s1
    802066aa:	00003097          	auipc	ra,0x3
    802066ae:	330080e7          	jalr	816(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802066b2:	ee840513          	addi	a0,s0,-280
    802066b6:	fca43c23          	sd	a0,-40(s0)

00000000802066ba <.LBB9_7>:
    802066ba:	00009597          	auipc	a1,0x9
    802066be:	e2c58593          	addi	a1,a1,-468 # 8020f4e6 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.83>
    802066c2:	fd840693          	addi	a3,s0,-40
    802066c6:	4609                	li	a2,2
    802066c8:	854a                	mv	a0,s2
    802066ca:	8726                	mv	a4,s1
    802066cc:	00003097          	auipc	ra,0x3
    802066d0:	30e080e7          	jalr	782(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802066d4:	ef040513          	addi	a0,s0,-272
    802066d8:	fca43c23          	sd	a0,-40(s0)

00000000802066dc <.LBB9_8>:
    802066dc:	00009597          	auipc	a1,0x9
    802066e0:	e0c58593          	addi	a1,a1,-500 # 8020f4e8 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.84>
    802066e4:	fd840693          	addi	a3,s0,-40
    802066e8:	4609                	li	a2,2
    802066ea:	854a                	mv	a0,s2
    802066ec:	8726                	mv	a4,s1
    802066ee:	00003097          	auipc	ra,0x3
    802066f2:	2ec080e7          	jalr	748(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802066f6:	ef840513          	addi	a0,s0,-264
    802066fa:	fca43c23          	sd	a0,-40(s0)

00000000802066fe <.LBB9_9>:
    802066fe:	00009597          	auipc	a1,0x9
    80206702:	dec58593          	addi	a1,a1,-532 # 8020f4ea <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.85>
    80206706:	fd840693          	addi	a3,s0,-40
    8020670a:	4609                	li	a2,2
    8020670c:	854a                	mv	a0,s2
    8020670e:	8726                	mv	a4,s1
    80206710:	00003097          	auipc	ra,0x3
    80206714:	2ca080e7          	jalr	714(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206718:	f0040513          	addi	a0,s0,-256
    8020671c:	fca43c23          	sd	a0,-40(s0)

0000000080206720 <.LBB9_10>:
    80206720:	00009597          	auipc	a1,0x9
    80206724:	dcc58593          	addi	a1,a1,-564 # 8020f4ec <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.86>
    80206728:	fd840693          	addi	a3,s0,-40
    8020672c:	4609                	li	a2,2
    8020672e:	854a                	mv	a0,s2
    80206730:	8726                	mv	a4,s1
    80206732:	00003097          	auipc	ra,0x3
    80206736:	2a8080e7          	jalr	680(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020673a:	f0840513          	addi	a0,s0,-248
    8020673e:	fca43c23          	sd	a0,-40(s0)

0000000080206742 <.LBB9_11>:
    80206742:	00009597          	auipc	a1,0x9
    80206746:	dac58593          	addi	a1,a1,-596 # 8020f4ee <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.87>
    8020674a:	fd840693          	addi	a3,s0,-40
    8020674e:	4609                	li	a2,2
    80206750:	854a                	mv	a0,s2
    80206752:	8726                	mv	a4,s1
    80206754:	00003097          	auipc	ra,0x3
    80206758:	286080e7          	jalr	646(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020675c:	f1040513          	addi	a0,s0,-240
    80206760:	fca43c23          	sd	a0,-40(s0)

0000000080206764 <.LBB9_12>:
    80206764:	00009597          	auipc	a1,0x9
    80206768:	d8c58593          	addi	a1,a1,-628 # 8020f4f0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.88>
    8020676c:	fd840693          	addi	a3,s0,-40
    80206770:	4609                	li	a2,2
    80206772:	854a                	mv	a0,s2
    80206774:	8726                	mv	a4,s1
    80206776:	00003097          	auipc	ra,0x3
    8020677a:	264080e7          	jalr	612(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020677e:	f1840513          	addi	a0,s0,-232
    80206782:	fca43c23          	sd	a0,-40(s0)

0000000080206786 <.LBB9_13>:
    80206786:	00009597          	auipc	a1,0x9
    8020678a:	d6c58593          	addi	a1,a1,-660 # 8020f4f2 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.89>
    8020678e:	fd840693          	addi	a3,s0,-40
    80206792:	4609                	li	a2,2
    80206794:	854a                	mv	a0,s2
    80206796:	8726                	mv	a4,s1
    80206798:	00003097          	auipc	ra,0x3
    8020679c:	242080e7          	jalr	578(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802067a0:	f2040513          	addi	a0,s0,-224
    802067a4:	fca43c23          	sd	a0,-40(s0)

00000000802067a8 <.LBB9_14>:
    802067a8:	00009597          	auipc	a1,0x9
    802067ac:	d4c58593          	addi	a1,a1,-692 # 8020f4f4 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.90>
    802067b0:	fd840693          	addi	a3,s0,-40
    802067b4:	4609                	li	a2,2
    802067b6:	854a                	mv	a0,s2
    802067b8:	8726                	mv	a4,s1
    802067ba:	00003097          	auipc	ra,0x3
    802067be:	220080e7          	jalr	544(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802067c2:	f2840513          	addi	a0,s0,-216
    802067c6:	fca43c23          	sd	a0,-40(s0)

00000000802067ca <.LBB9_15>:
    802067ca:	00009597          	auipc	a1,0x9
    802067ce:	d2c58593          	addi	a1,a1,-724 # 8020f4f6 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.91>
    802067d2:	fd840693          	addi	a3,s0,-40
    802067d6:	4609                	li	a2,2
    802067d8:	854a                	mv	a0,s2
    802067da:	8726                	mv	a4,s1
    802067dc:	00003097          	auipc	ra,0x3
    802067e0:	1fe080e7          	jalr	510(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802067e4:	f3040513          	addi	a0,s0,-208
    802067e8:	fca43c23          	sd	a0,-40(s0)

00000000802067ec <.LBB9_16>:
    802067ec:	00009597          	auipc	a1,0x9
    802067f0:	d0c58593          	addi	a1,a1,-756 # 8020f4f8 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.92>
    802067f4:	fd840693          	addi	a3,s0,-40
    802067f8:	4609                	li	a2,2
    802067fa:	854a                	mv	a0,s2
    802067fc:	8726                	mv	a4,s1
    802067fe:	00003097          	auipc	ra,0x3
    80206802:	1dc080e7          	jalr	476(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206806:	f3840513          	addi	a0,s0,-200
    8020680a:	fca43c23          	sd	a0,-40(s0)

000000008020680e <.LBB9_17>:
    8020680e:	00009597          	auipc	a1,0x9
    80206812:	cec58593          	addi	a1,a1,-788 # 8020f4fa <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.93>
    80206816:	fd840693          	addi	a3,s0,-40
    8020681a:	4609                	li	a2,2
    8020681c:	854a                	mv	a0,s2
    8020681e:	8726                	mv	a4,s1
    80206820:	00003097          	auipc	ra,0x3
    80206824:	1ba080e7          	jalr	442(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206828:	f4040513          	addi	a0,s0,-192
    8020682c:	fca43c23          	sd	a0,-40(s0)

0000000080206830 <.LBB9_18>:
    80206830:	00009597          	auipc	a1,0x9
    80206834:	ccc58593          	addi	a1,a1,-820 # 8020f4fc <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.94>
    80206838:	fd840693          	addi	a3,s0,-40
    8020683c:	4609                	li	a2,2
    8020683e:	854a                	mv	a0,s2
    80206840:	8726                	mv	a4,s1
    80206842:	00003097          	auipc	ra,0x3
    80206846:	198080e7          	jalr	408(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020684a:	f4840513          	addi	a0,s0,-184
    8020684e:	fca43c23          	sd	a0,-40(s0)

0000000080206852 <.LBB9_19>:
    80206852:	00009597          	auipc	a1,0x9
    80206856:	cac58593          	addi	a1,a1,-852 # 8020f4fe <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.95>
    8020685a:	fd840693          	addi	a3,s0,-40
    8020685e:	4609                	li	a2,2
    80206860:	854a                	mv	a0,s2
    80206862:	8726                	mv	a4,s1
    80206864:	00003097          	auipc	ra,0x3
    80206868:	176080e7          	jalr	374(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020686c:	f5040513          	addi	a0,s0,-176
    80206870:	fca43c23          	sd	a0,-40(s0)

0000000080206874 <.LBB9_20>:
    80206874:	00009597          	auipc	a1,0x9
    80206878:	c8c58593          	addi	a1,a1,-884 # 8020f500 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.96>
    8020687c:	fd840693          	addi	a3,s0,-40
    80206880:	4609                	li	a2,2
    80206882:	854a                	mv	a0,s2
    80206884:	8726                	mv	a4,s1
    80206886:	00003097          	auipc	ra,0x3
    8020688a:	154080e7          	jalr	340(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020688e:	f5840513          	addi	a0,s0,-168
    80206892:	fca43c23          	sd	a0,-40(s0)

0000000080206896 <.LBB9_21>:
    80206896:	00009597          	auipc	a1,0x9
    8020689a:	c6c58593          	addi	a1,a1,-916 # 8020f502 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.97>
    8020689e:	fd840693          	addi	a3,s0,-40
    802068a2:	4609                	li	a2,2
    802068a4:	854a                	mv	a0,s2
    802068a6:	8726                	mv	a4,s1
    802068a8:	00003097          	auipc	ra,0x3
    802068ac:	132080e7          	jalr	306(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802068b0:	f6040513          	addi	a0,s0,-160
    802068b4:	fca43c23          	sd	a0,-40(s0)

00000000802068b8 <.LBB9_22>:
    802068b8:	00009597          	auipc	a1,0x9
    802068bc:	c4c58593          	addi	a1,a1,-948 # 8020f504 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.98>
    802068c0:	fd840693          	addi	a3,s0,-40
    802068c4:	4609                	li	a2,2
    802068c6:	854a                	mv	a0,s2
    802068c8:	8726                	mv	a4,s1
    802068ca:	00003097          	auipc	ra,0x3
    802068ce:	110080e7          	jalr	272(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802068d2:	f6840513          	addi	a0,s0,-152
    802068d6:	fca43c23          	sd	a0,-40(s0)

00000000802068da <.LBB9_23>:
    802068da:	00009597          	auipc	a1,0x9
    802068de:	c2c58593          	addi	a1,a1,-980 # 8020f506 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.99>
    802068e2:	fd840693          	addi	a3,s0,-40
    802068e6:	4609                	li	a2,2
    802068e8:	854a                	mv	a0,s2
    802068ea:	8726                	mv	a4,s1
    802068ec:	00003097          	auipc	ra,0x3
    802068f0:	0ee080e7          	jalr	238(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802068f4:	f7040513          	addi	a0,s0,-144
    802068f8:	fca43c23          	sd	a0,-40(s0)

00000000802068fc <.LBB9_24>:
    802068fc:	00009597          	auipc	a1,0x9
    80206900:	c0c58593          	addi	a1,a1,-1012 # 8020f508 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.100>
    80206904:	fd840693          	addi	a3,s0,-40
    80206908:	4609                	li	a2,2
    8020690a:	854a                	mv	a0,s2
    8020690c:	8726                	mv	a4,s1
    8020690e:	00003097          	auipc	ra,0x3
    80206912:	0cc080e7          	jalr	204(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206916:	f7840513          	addi	a0,s0,-136
    8020691a:	fca43c23          	sd	a0,-40(s0)

000000008020691e <.LBB9_25>:
    8020691e:	00009597          	auipc	a1,0x9
    80206922:	bec58593          	addi	a1,a1,-1044 # 8020f50a <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.101>
    80206926:	fd840693          	addi	a3,s0,-40
    8020692a:	4609                	li	a2,2
    8020692c:	854a                	mv	a0,s2
    8020692e:	8726                	mv	a4,s1
    80206930:	00003097          	auipc	ra,0x3
    80206934:	0aa080e7          	jalr	170(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206938:	f8040513          	addi	a0,s0,-128
    8020693c:	fca43c23          	sd	a0,-40(s0)

0000000080206940 <.LBB9_26>:
    80206940:	00009597          	auipc	a1,0x9
    80206944:	bcc58593          	addi	a1,a1,-1076 # 8020f50c <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.102>
    80206948:	fd840693          	addi	a3,s0,-40
    8020694c:	460d                	li	a2,3
    8020694e:	854a                	mv	a0,s2
    80206950:	8726                	mv	a4,s1
    80206952:	00003097          	auipc	ra,0x3
    80206956:	088080e7          	jalr	136(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020695a:	f8840513          	addi	a0,s0,-120
    8020695e:	fca43c23          	sd	a0,-40(s0)

0000000080206962 <.LBB9_27>:
    80206962:	00009597          	auipc	a1,0x9
    80206966:	bad58593          	addi	a1,a1,-1107 # 8020f50f <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.103>
    8020696a:	fd840693          	addi	a3,s0,-40
    8020696e:	460d                	li	a2,3
    80206970:	854a                	mv	a0,s2
    80206972:	8726                	mv	a4,s1
    80206974:	00003097          	auipc	ra,0x3
    80206978:	066080e7          	jalr	102(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020697c:	f9040513          	addi	a0,s0,-112
    80206980:	fca43c23          	sd	a0,-40(s0)

0000000080206984 <.LBB9_28>:
    80206984:	00007597          	auipc	a1,0x7
    80206988:	1a058593          	addi	a1,a1,416 # 8020db24 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x44>
    8020698c:	fd840693          	addi	a3,s0,-40
    80206990:	4611                	li	a2,4
    80206992:	854a                	mv	a0,s2
    80206994:	8726                	mv	a4,s1
    80206996:	00003097          	auipc	ra,0x3
    8020699a:	044080e7          	jalr	68(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020699e:	f9840513          	addi	a0,s0,-104
    802069a2:	fca43c23          	sd	a0,-40(s0)

00000000802069a6 <.LBB9_29>:
    802069a6:	00009597          	auipc	a1,0x9
    802069aa:	b6c58593          	addi	a1,a1,-1172 # 8020f512 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.105>
    802069ae:	fd840693          	addi	a3,s0,-40
    802069b2:	461d                	li	a2,7
    802069b4:	854a                	mv	a0,s2
    802069b6:	8726                	mv	a4,s1
    802069b8:	00003097          	auipc	ra,0x3
    802069bc:	022080e7          	jalr	34(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802069c0:	fa040513          	addi	a0,s0,-96
    802069c4:	fca43c23          	sd	a0,-40(s0)

00000000802069c8 <.LBB9_30>:
    802069c8:	00009597          	auipc	a1,0x9
    802069cc:	b5158593          	addi	a1,a1,-1199 # 8020f519 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.106>
    802069d0:	fd840693          	addi	a3,s0,-40
    802069d4:	461d                	li	a2,7
    802069d6:	854a                	mv	a0,s2
    802069d8:	8726                	mv	a4,s1
    802069da:	00003097          	auipc	ra,0x3
    802069de:	000080e7          	jalr	ra # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802069e2:	fa840513          	addi	a0,s0,-88
    802069e6:	fca43c23          	sd	a0,-40(s0)

00000000802069ea <.LBB9_31>:
    802069ea:	00007597          	auipc	a1,0x7
    802069ee:	d8e58593          	addi	a1,a1,-626 # 8020d778 <anon.93f8f94179db6f373a864e59d65dab14.17.llvm.9790629543225328465+0x8>
    802069f2:	fd840693          	addi	a3,s0,-40
    802069f6:	4621                	li	a2,8
    802069f8:	854a                	mv	a0,s2
    802069fa:	8726                	mv	a4,s1
    802069fc:	00003097          	auipc	ra,0x3
    80206a00:	fde080e7          	jalr	-34(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206a04:	fb040513          	addi	a0,s0,-80
    80206a08:	fca43c23          	sd	a0,-40(s0)

0000000080206a0c <.LBB9_32>:
    80206a0c:	00009597          	auipc	a1,0x9
    80206a10:	b1458593          	addi	a1,a1,-1260 # 8020f520 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.108>
    80206a14:	fd840693          	addi	a3,s0,-40
    80206a18:	4615                	li	a2,5
    80206a1a:	854a                	mv	a0,s2
    80206a1c:	8726                	mv	a4,s1
    80206a1e:	00003097          	auipc	ra,0x3
    80206a22:	fbc080e7          	jalr	-68(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206a26:	fb840513          	addi	a0,s0,-72
    80206a2a:	fca43c23          	sd	a0,-40(s0)

0000000080206a2e <.LBB9_33>:
    80206a2e:	00009597          	auipc	a1,0x9
    80206a32:	af758593          	addi	a1,a1,-1289 # 8020f525 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.109>
    80206a36:	fd840693          	addi	a3,s0,-40
    80206a3a:	4629                	li	a2,10
    80206a3c:	854a                	mv	a0,s2
    80206a3e:	8726                	mv	a4,s1
    80206a40:	00003097          	auipc	ra,0x3
    80206a44:	f9a080e7          	jalr	-102(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80206a48:	854a                	mv	a0,s2
    80206a4a:	00003097          	auipc	ra,0x3
    80206a4e:	0ec080e7          	jalr	236(ra) # 80209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>
    80206a52:	7912                	ld	s2,288(sp)
    80206a54:	74b2                	ld	s1,296(sp)
    80206a56:	7452                	ld	s0,304(sp)
    80206a58:	70f2                	ld	ra,312(sp)
    80206a5a:	6131                	addi	sp,sp,320
    80206a5c:	8082                	ret

0000000080206a5e <_ZN64_$LT$rvm..arch..vcpu..GuestState$u20$as$u20$core..fmt..Debug$GT$3fmt17hb2fc5032258f8f16E>:
    80206a5e:	710d                	addi	sp,sp,-352
    80206a60:	ee86                	sd	ra,344(sp)
    80206a62:	eaa2                	sd	s0,336(sp)
    80206a64:	e6a6                	sd	s1,328(sp)
    80206a66:	e2ca                	sd	s2,320(sp)
    80206a68:	1280                	addi	s0,sp,352
    80206a6a:	86ae                	mv	a3,a1
    80206a6c:	00154583          	lbu	a1,1(a0)
    80206a70:	00054603          	lbu	a2,0(a0)
    80206a74:	00354703          	lbu	a4,3(a0)
    80206a78:	00254783          	lbu	a5,2(a0)
    80206a7c:	05a2                	slli	a1,a1,0x8
    80206a7e:	8dd1                	or	a1,a1,a2
    80206a80:	00871613          	slli	a2,a4,0x8
    80206a84:	8e5d                	or	a2,a2,a5
    80206a86:	0642                	slli	a2,a2,0x10
    80206a88:	8dd1                	or	a1,a1,a2
    80206a8a:	00554603          	lbu	a2,5(a0)
    80206a8e:	00454703          	lbu	a4,4(a0)
    80206a92:	00754783          	lbu	a5,7(a0)
    80206a96:	00654483          	lbu	s1,6(a0)
    80206a9a:	0622                	slli	a2,a2,0x8
    80206a9c:	8e59                	or	a2,a2,a4
    80206a9e:	00879713          	slli	a4,a5,0x8
    80206aa2:	8f45                	or	a4,a4,s1
    80206aa4:	0742                	slli	a4,a4,0x10
    80206aa6:	8e59                	or	a2,a2,a4
    80206aa8:	1602                	slli	a2,a2,0x20
    80206aaa:	8dd1                	or	a1,a1,a2
    80206aac:	eab43023          	sd	a1,-352(s0)
    80206ab0:	00954583          	lbu	a1,9(a0)
    80206ab4:	00854603          	lbu	a2,8(a0)
    80206ab8:	00b54703          	lbu	a4,11(a0)
    80206abc:	00a54783          	lbu	a5,10(a0)
    80206ac0:	05a2                	slli	a1,a1,0x8
    80206ac2:	8dd1                	or	a1,a1,a2
    80206ac4:	00871613          	slli	a2,a4,0x8
    80206ac8:	8e5d                	or	a2,a2,a5
    80206aca:	0642                	slli	a2,a2,0x10
    80206acc:	8dd1                	or	a1,a1,a2
    80206ace:	00d54603          	lbu	a2,13(a0)
    80206ad2:	00c54703          	lbu	a4,12(a0)
    80206ad6:	00f54783          	lbu	a5,15(a0)
    80206ada:	00e54483          	lbu	s1,14(a0)
    80206ade:	0622                	slli	a2,a2,0x8
    80206ae0:	8e59                	or	a2,a2,a4
    80206ae2:	00879713          	slli	a4,a5,0x8
    80206ae6:	8f45                	or	a4,a4,s1
    80206ae8:	0742                	slli	a4,a4,0x10
    80206aea:	8e59                	or	a2,a2,a4
    80206aec:	1602                	slli	a2,a2,0x20
    80206aee:	8dd1                	or	a1,a1,a2
    80206af0:	eab43423          	sd	a1,-344(s0)
    80206af4:	01154583          	lbu	a1,17(a0)
    80206af8:	01054603          	lbu	a2,16(a0)
    80206afc:	01354703          	lbu	a4,19(a0)
    80206b00:	01254783          	lbu	a5,18(a0)
    80206b04:	05a2                	slli	a1,a1,0x8
    80206b06:	8dd1                	or	a1,a1,a2
    80206b08:	00871613          	slli	a2,a4,0x8
    80206b0c:	8e5d                	or	a2,a2,a5
    80206b0e:	0642                	slli	a2,a2,0x10
    80206b10:	8dd1                	or	a1,a1,a2
    80206b12:	01554603          	lbu	a2,21(a0)
    80206b16:	01454703          	lbu	a4,20(a0)
    80206b1a:	01754783          	lbu	a5,23(a0)
    80206b1e:	01654483          	lbu	s1,22(a0)
    80206b22:	0622                	slli	a2,a2,0x8
    80206b24:	8e59                	or	a2,a2,a4
    80206b26:	00879713          	slli	a4,a5,0x8
    80206b2a:	8f45                	or	a4,a4,s1
    80206b2c:	0742                	slli	a4,a4,0x10
    80206b2e:	8e59                	or	a2,a2,a4
    80206b30:	1602                	slli	a2,a2,0x20
    80206b32:	8dd1                	or	a1,a1,a2
    80206b34:	eab43823          	sd	a1,-336(s0)
    80206b38:	01954583          	lbu	a1,25(a0)
    80206b3c:	01854603          	lbu	a2,24(a0)
    80206b40:	01b54703          	lbu	a4,27(a0)
    80206b44:	01a54783          	lbu	a5,26(a0)
    80206b48:	05a2                	slli	a1,a1,0x8
    80206b4a:	8dd1                	or	a1,a1,a2
    80206b4c:	00871613          	slli	a2,a4,0x8
    80206b50:	8e5d                	or	a2,a2,a5
    80206b52:	0642                	slli	a2,a2,0x10
    80206b54:	8dd1                	or	a1,a1,a2
    80206b56:	01d54603          	lbu	a2,29(a0)
    80206b5a:	01c54703          	lbu	a4,28(a0)
    80206b5e:	01f54783          	lbu	a5,31(a0)
    80206b62:	01e54483          	lbu	s1,30(a0)
    80206b66:	0622                	slli	a2,a2,0x8
    80206b68:	8e59                	or	a2,a2,a4
    80206b6a:	00879713          	slli	a4,a5,0x8
    80206b6e:	8f45                	or	a4,a4,s1
    80206b70:	0742                	slli	a4,a4,0x10
    80206b72:	8e59                	or	a2,a2,a4
    80206b74:	1602                	slli	a2,a2,0x20
    80206b76:	8dd1                	or	a1,a1,a2
    80206b78:	eab43c23          	sd	a1,-328(s0)
    80206b7c:	02154583          	lbu	a1,33(a0)
    80206b80:	02054603          	lbu	a2,32(a0)
    80206b84:	02354703          	lbu	a4,35(a0)
    80206b88:	02254783          	lbu	a5,34(a0)
    80206b8c:	05a2                	slli	a1,a1,0x8
    80206b8e:	8dd1                	or	a1,a1,a2
    80206b90:	00871613          	slli	a2,a4,0x8
    80206b94:	8e5d                	or	a2,a2,a5
    80206b96:	0642                	slli	a2,a2,0x10
    80206b98:	8dd1                	or	a1,a1,a2
    80206b9a:	02554603          	lbu	a2,37(a0)
    80206b9e:	02454703          	lbu	a4,36(a0)
    80206ba2:	02754783          	lbu	a5,39(a0)
    80206ba6:	02654483          	lbu	s1,38(a0)
    80206baa:	0622                	slli	a2,a2,0x8
    80206bac:	8e59                	or	a2,a2,a4
    80206bae:	00879713          	slli	a4,a5,0x8
    80206bb2:	8f45                	or	a4,a4,s1
    80206bb4:	0742                	slli	a4,a4,0x10
    80206bb6:	8e59                	or	a2,a2,a4
    80206bb8:	1602                	slli	a2,a2,0x20
    80206bba:	8dd1                	or	a1,a1,a2
    80206bbc:	ecb43023          	sd	a1,-320(s0)
    80206bc0:	02954583          	lbu	a1,41(a0)
    80206bc4:	02854603          	lbu	a2,40(a0)
    80206bc8:	02b54703          	lbu	a4,43(a0)
    80206bcc:	02a54783          	lbu	a5,42(a0)
    80206bd0:	05a2                	slli	a1,a1,0x8
    80206bd2:	8dd1                	or	a1,a1,a2
    80206bd4:	00871613          	slli	a2,a4,0x8
    80206bd8:	8e5d                	or	a2,a2,a5
    80206bda:	0642                	slli	a2,a2,0x10
    80206bdc:	8dd1                	or	a1,a1,a2
    80206bde:	02d54603          	lbu	a2,45(a0)
    80206be2:	02c54703          	lbu	a4,44(a0)
    80206be6:	02f54783          	lbu	a5,47(a0)
    80206bea:	02e54483          	lbu	s1,46(a0)
    80206bee:	0622                	slli	a2,a2,0x8
    80206bf0:	8e59                	or	a2,a2,a4
    80206bf2:	00879713          	slli	a4,a5,0x8
    80206bf6:	8f45                	or	a4,a4,s1
    80206bf8:	0742                	slli	a4,a4,0x10
    80206bfa:	8e59                	or	a2,a2,a4
    80206bfc:	1602                	slli	a2,a2,0x20
    80206bfe:	8dd1                	or	a1,a1,a2
    80206c00:	ecb43423          	sd	a1,-312(s0)
    80206c04:	03154583          	lbu	a1,49(a0)
    80206c08:	03054603          	lbu	a2,48(a0)
    80206c0c:	03354703          	lbu	a4,51(a0)
    80206c10:	03254783          	lbu	a5,50(a0)
    80206c14:	05a2                	slli	a1,a1,0x8
    80206c16:	8dd1                	or	a1,a1,a2
    80206c18:	00871613          	slli	a2,a4,0x8
    80206c1c:	8e5d                	or	a2,a2,a5
    80206c1e:	0642                	slli	a2,a2,0x10
    80206c20:	8dd1                	or	a1,a1,a2
    80206c22:	03554603          	lbu	a2,53(a0)
    80206c26:	03454703          	lbu	a4,52(a0)
    80206c2a:	03754783          	lbu	a5,55(a0)
    80206c2e:	03654483          	lbu	s1,54(a0)
    80206c32:	0622                	slli	a2,a2,0x8
    80206c34:	8e59                	or	a2,a2,a4
    80206c36:	00879713          	slli	a4,a5,0x8
    80206c3a:	8f45                	or	a4,a4,s1
    80206c3c:	0742                	slli	a4,a4,0x10
    80206c3e:	8e59                	or	a2,a2,a4
    80206c40:	1602                	slli	a2,a2,0x20
    80206c42:	8dd1                	or	a1,a1,a2
    80206c44:	ecb43823          	sd	a1,-304(s0)
    80206c48:	03954583          	lbu	a1,57(a0)
    80206c4c:	03854603          	lbu	a2,56(a0)
    80206c50:	03b54703          	lbu	a4,59(a0)
    80206c54:	03a54783          	lbu	a5,58(a0)
    80206c58:	05a2                	slli	a1,a1,0x8
    80206c5a:	8dd1                	or	a1,a1,a2
    80206c5c:	00871613          	slli	a2,a4,0x8
    80206c60:	8e5d                	or	a2,a2,a5
    80206c62:	0642                	slli	a2,a2,0x10
    80206c64:	8dd1                	or	a1,a1,a2
    80206c66:	03d54603          	lbu	a2,61(a0)
    80206c6a:	03c54703          	lbu	a4,60(a0)
    80206c6e:	03f54783          	lbu	a5,63(a0)
    80206c72:	03e54483          	lbu	s1,62(a0)
    80206c76:	0622                	slli	a2,a2,0x8
    80206c78:	8e59                	or	a2,a2,a4
    80206c7a:	00879713          	slli	a4,a5,0x8
    80206c7e:	8f45                	or	a4,a4,s1
    80206c80:	0742                	slli	a4,a4,0x10
    80206c82:	8e59                	or	a2,a2,a4
    80206c84:	1602                	slli	a2,a2,0x20
    80206c86:	8dd1                	or	a1,a1,a2
    80206c88:	ecb43c23          	sd	a1,-296(s0)
    80206c8c:	04154583          	lbu	a1,65(a0)
    80206c90:	04054603          	lbu	a2,64(a0)
    80206c94:	04354703          	lbu	a4,67(a0)
    80206c98:	04254783          	lbu	a5,66(a0)
    80206c9c:	05a2                	slli	a1,a1,0x8
    80206c9e:	8dd1                	or	a1,a1,a2
    80206ca0:	00871613          	slli	a2,a4,0x8
    80206ca4:	8e5d                	or	a2,a2,a5
    80206ca6:	0642                	slli	a2,a2,0x10
    80206ca8:	8dd1                	or	a1,a1,a2
    80206caa:	04554603          	lbu	a2,69(a0)
    80206cae:	04454703          	lbu	a4,68(a0)
    80206cb2:	04754783          	lbu	a5,71(a0)
    80206cb6:	04654483          	lbu	s1,70(a0)
    80206cba:	0622                	slli	a2,a2,0x8
    80206cbc:	8e59                	or	a2,a2,a4
    80206cbe:	00879713          	slli	a4,a5,0x8
    80206cc2:	8f45                	or	a4,a4,s1
    80206cc4:	0742                	slli	a4,a4,0x10
    80206cc6:	8e59                	or	a2,a2,a4
    80206cc8:	1602                	slli	a2,a2,0x20
    80206cca:	8dd1                	or	a1,a1,a2
    80206ccc:	eeb43023          	sd	a1,-288(s0)
    80206cd0:	04954583          	lbu	a1,73(a0)
    80206cd4:	04854603          	lbu	a2,72(a0)
    80206cd8:	04b54703          	lbu	a4,75(a0)
    80206cdc:	04a54783          	lbu	a5,74(a0)
    80206ce0:	05a2                	slli	a1,a1,0x8
    80206ce2:	8dd1                	or	a1,a1,a2
    80206ce4:	00871613          	slli	a2,a4,0x8
    80206ce8:	8e5d                	or	a2,a2,a5
    80206cea:	0642                	slli	a2,a2,0x10
    80206cec:	8dd1                	or	a1,a1,a2
    80206cee:	04d54603          	lbu	a2,77(a0)
    80206cf2:	04c54703          	lbu	a4,76(a0)
    80206cf6:	04f54783          	lbu	a5,79(a0)
    80206cfa:	04e54483          	lbu	s1,78(a0)
    80206cfe:	0622                	slli	a2,a2,0x8
    80206d00:	8e59                	or	a2,a2,a4
    80206d02:	00879713          	slli	a4,a5,0x8
    80206d06:	8f45                	or	a4,a4,s1
    80206d08:	0742                	slli	a4,a4,0x10
    80206d0a:	8e59                	or	a2,a2,a4
    80206d0c:	1602                	slli	a2,a2,0x20
    80206d0e:	8dd1                	or	a1,a1,a2
    80206d10:	eeb43423          	sd	a1,-280(s0)
    80206d14:	05154583          	lbu	a1,81(a0)
    80206d18:	05054603          	lbu	a2,80(a0)
    80206d1c:	05354703          	lbu	a4,83(a0)
    80206d20:	05254783          	lbu	a5,82(a0)
    80206d24:	05a2                	slli	a1,a1,0x8
    80206d26:	8dd1                	or	a1,a1,a2
    80206d28:	00871613          	slli	a2,a4,0x8
    80206d2c:	8e5d                	or	a2,a2,a5
    80206d2e:	0642                	slli	a2,a2,0x10
    80206d30:	8dd1                	or	a1,a1,a2
    80206d32:	05554603          	lbu	a2,85(a0)
    80206d36:	05454703          	lbu	a4,84(a0)
    80206d3a:	05754783          	lbu	a5,87(a0)
    80206d3e:	05654483          	lbu	s1,86(a0)
    80206d42:	0622                	slli	a2,a2,0x8
    80206d44:	8e59                	or	a2,a2,a4
    80206d46:	00879713          	slli	a4,a5,0x8
    80206d4a:	8f45                	or	a4,a4,s1
    80206d4c:	0742                	slli	a4,a4,0x10
    80206d4e:	8e59                	or	a2,a2,a4
    80206d50:	1602                	slli	a2,a2,0x20
    80206d52:	8dd1                	or	a1,a1,a2
    80206d54:	eeb43823          	sd	a1,-272(s0)
    80206d58:	05954583          	lbu	a1,89(a0)
    80206d5c:	05854603          	lbu	a2,88(a0)
    80206d60:	05b54703          	lbu	a4,91(a0)
    80206d64:	05a54783          	lbu	a5,90(a0)
    80206d68:	05a2                	slli	a1,a1,0x8
    80206d6a:	8dd1                	or	a1,a1,a2
    80206d6c:	00871613          	slli	a2,a4,0x8
    80206d70:	8e5d                	or	a2,a2,a5
    80206d72:	0642                	slli	a2,a2,0x10
    80206d74:	8dd1                	or	a1,a1,a2
    80206d76:	05d54603          	lbu	a2,93(a0)
    80206d7a:	05c54703          	lbu	a4,92(a0)
    80206d7e:	05f54783          	lbu	a5,95(a0)
    80206d82:	05e54483          	lbu	s1,94(a0)
    80206d86:	0622                	slli	a2,a2,0x8
    80206d88:	8e59                	or	a2,a2,a4
    80206d8a:	00879713          	slli	a4,a5,0x8
    80206d8e:	8f45                	or	a4,a4,s1
    80206d90:	0742                	slli	a4,a4,0x10
    80206d92:	8e59                	or	a2,a2,a4
    80206d94:	1602                	slli	a2,a2,0x20
    80206d96:	8dd1                	or	a1,a1,a2
    80206d98:	eeb43c23          	sd	a1,-264(s0)
    80206d9c:	06154583          	lbu	a1,97(a0)
    80206da0:	06054603          	lbu	a2,96(a0)
    80206da4:	06354703          	lbu	a4,99(a0)
    80206da8:	06254783          	lbu	a5,98(a0)
    80206dac:	05a2                	slli	a1,a1,0x8
    80206dae:	8dd1                	or	a1,a1,a2
    80206db0:	00871613          	slli	a2,a4,0x8
    80206db4:	8e5d                	or	a2,a2,a5
    80206db6:	0642                	slli	a2,a2,0x10
    80206db8:	8dd1                	or	a1,a1,a2
    80206dba:	06554603          	lbu	a2,101(a0)
    80206dbe:	06454703          	lbu	a4,100(a0)
    80206dc2:	06754783          	lbu	a5,103(a0)
    80206dc6:	06654483          	lbu	s1,102(a0)
    80206dca:	0622                	slli	a2,a2,0x8
    80206dcc:	8e59                	or	a2,a2,a4
    80206dce:	00879713          	slli	a4,a5,0x8
    80206dd2:	8f45                	or	a4,a4,s1
    80206dd4:	0742                	slli	a4,a4,0x10
    80206dd6:	8e59                	or	a2,a2,a4
    80206dd8:	1602                	slli	a2,a2,0x20
    80206dda:	8dd1                	or	a1,a1,a2
    80206ddc:	f0b43023          	sd	a1,-256(s0)
    80206de0:	06954583          	lbu	a1,105(a0)
    80206de4:	06854603          	lbu	a2,104(a0)
    80206de8:	06b54703          	lbu	a4,107(a0)
    80206dec:	06a54783          	lbu	a5,106(a0)
    80206df0:	05a2                	slli	a1,a1,0x8
    80206df2:	8dd1                	or	a1,a1,a2
    80206df4:	00871613          	slli	a2,a4,0x8
    80206df8:	8e5d                	or	a2,a2,a5
    80206dfa:	0642                	slli	a2,a2,0x10
    80206dfc:	8dd1                	or	a1,a1,a2
    80206dfe:	06d54603          	lbu	a2,109(a0)
    80206e02:	06c54703          	lbu	a4,108(a0)
    80206e06:	06f54783          	lbu	a5,111(a0)
    80206e0a:	06e54483          	lbu	s1,110(a0)
    80206e0e:	0622                	slli	a2,a2,0x8
    80206e10:	8e59                	or	a2,a2,a4
    80206e12:	00879713          	slli	a4,a5,0x8
    80206e16:	8f45                	or	a4,a4,s1
    80206e18:	0742                	slli	a4,a4,0x10
    80206e1a:	8e59                	or	a2,a2,a4
    80206e1c:	1602                	slli	a2,a2,0x20
    80206e1e:	8dd1                	or	a1,a1,a2
    80206e20:	f0b43423          	sd	a1,-248(s0)
    80206e24:	07154583          	lbu	a1,113(a0)
    80206e28:	07054603          	lbu	a2,112(a0)
    80206e2c:	07354703          	lbu	a4,115(a0)
    80206e30:	07254783          	lbu	a5,114(a0)
    80206e34:	05a2                	slli	a1,a1,0x8
    80206e36:	8dd1                	or	a1,a1,a2
    80206e38:	00871613          	slli	a2,a4,0x8
    80206e3c:	8e5d                	or	a2,a2,a5
    80206e3e:	0642                	slli	a2,a2,0x10
    80206e40:	8dd1                	or	a1,a1,a2
    80206e42:	07554603          	lbu	a2,117(a0)
    80206e46:	07454703          	lbu	a4,116(a0)
    80206e4a:	07754783          	lbu	a5,119(a0)
    80206e4e:	07654483          	lbu	s1,118(a0)
    80206e52:	0622                	slli	a2,a2,0x8
    80206e54:	8e59                	or	a2,a2,a4
    80206e56:	00879713          	slli	a4,a5,0x8
    80206e5a:	8f45                	or	a4,a4,s1
    80206e5c:	0742                	slli	a4,a4,0x10
    80206e5e:	8e59                	or	a2,a2,a4
    80206e60:	1602                	slli	a2,a2,0x20
    80206e62:	8dd1                	or	a1,a1,a2
    80206e64:	f0b43823          	sd	a1,-240(s0)
    80206e68:	07954583          	lbu	a1,121(a0)
    80206e6c:	07854603          	lbu	a2,120(a0)
    80206e70:	07b54703          	lbu	a4,123(a0)
    80206e74:	07a54783          	lbu	a5,122(a0)
    80206e78:	05a2                	slli	a1,a1,0x8
    80206e7a:	8dd1                	or	a1,a1,a2
    80206e7c:	00871613          	slli	a2,a4,0x8
    80206e80:	8e5d                	or	a2,a2,a5
    80206e82:	0642                	slli	a2,a2,0x10
    80206e84:	8dd1                	or	a1,a1,a2
    80206e86:	07d54603          	lbu	a2,125(a0)
    80206e8a:	07c54703          	lbu	a4,124(a0)
    80206e8e:	07f54783          	lbu	a5,127(a0)
    80206e92:	07e54483          	lbu	s1,126(a0)
    80206e96:	0622                	slli	a2,a2,0x8
    80206e98:	8e59                	or	a2,a2,a4
    80206e9a:	00879713          	slli	a4,a5,0x8
    80206e9e:	8f45                	or	a4,a4,s1
    80206ea0:	0742                	slli	a4,a4,0x10
    80206ea2:	8e59                	or	a2,a2,a4
    80206ea4:	1602                	slli	a2,a2,0x20
    80206ea6:	8dd1                	or	a1,a1,a2
    80206ea8:	f0b43c23          	sd	a1,-232(s0)
    80206eac:	08154583          	lbu	a1,129(a0)
    80206eb0:	08054603          	lbu	a2,128(a0)
    80206eb4:	08354703          	lbu	a4,131(a0)
    80206eb8:	08254783          	lbu	a5,130(a0)
    80206ebc:	05a2                	slli	a1,a1,0x8
    80206ebe:	8dd1                	or	a1,a1,a2
    80206ec0:	00871613          	slli	a2,a4,0x8
    80206ec4:	8e5d                	or	a2,a2,a5
    80206ec6:	0642                	slli	a2,a2,0x10
    80206ec8:	8dd1                	or	a1,a1,a2
    80206eca:	08554603          	lbu	a2,133(a0)
    80206ece:	08454703          	lbu	a4,132(a0)
    80206ed2:	08754783          	lbu	a5,135(a0)
    80206ed6:	08654483          	lbu	s1,134(a0)
    80206eda:	0622                	slli	a2,a2,0x8
    80206edc:	8e59                	or	a2,a2,a4
    80206ede:	00879713          	slli	a4,a5,0x8
    80206ee2:	8f45                	or	a4,a4,s1
    80206ee4:	0742                	slli	a4,a4,0x10
    80206ee6:	8e59                	or	a2,a2,a4
    80206ee8:	1602                	slli	a2,a2,0x20
    80206eea:	8dd1                	or	a1,a1,a2
    80206eec:	f2b43023          	sd	a1,-224(s0)
    80206ef0:	08954583          	lbu	a1,137(a0)
    80206ef4:	08854603          	lbu	a2,136(a0)
    80206ef8:	08b54703          	lbu	a4,139(a0)
    80206efc:	08a54783          	lbu	a5,138(a0)
    80206f00:	05a2                	slli	a1,a1,0x8
    80206f02:	8dd1                	or	a1,a1,a2
    80206f04:	00871613          	slli	a2,a4,0x8
    80206f08:	8e5d                	or	a2,a2,a5
    80206f0a:	0642                	slli	a2,a2,0x10
    80206f0c:	8dd1                	or	a1,a1,a2
    80206f0e:	08d54603          	lbu	a2,141(a0)
    80206f12:	08c54703          	lbu	a4,140(a0)
    80206f16:	08f54783          	lbu	a5,143(a0)
    80206f1a:	08e54483          	lbu	s1,142(a0)
    80206f1e:	0622                	slli	a2,a2,0x8
    80206f20:	8e59                	or	a2,a2,a4
    80206f22:	00879713          	slli	a4,a5,0x8
    80206f26:	8f45                	or	a4,a4,s1
    80206f28:	0742                	slli	a4,a4,0x10
    80206f2a:	8e59                	or	a2,a2,a4
    80206f2c:	1602                	slli	a2,a2,0x20
    80206f2e:	8dd1                	or	a1,a1,a2
    80206f30:	f2b43423          	sd	a1,-216(s0)
    80206f34:	09154583          	lbu	a1,145(a0)
    80206f38:	09054603          	lbu	a2,144(a0)
    80206f3c:	09354703          	lbu	a4,147(a0)
    80206f40:	09254783          	lbu	a5,146(a0)
    80206f44:	05a2                	slli	a1,a1,0x8
    80206f46:	8dd1                	or	a1,a1,a2
    80206f48:	00871613          	slli	a2,a4,0x8
    80206f4c:	8e5d                	or	a2,a2,a5
    80206f4e:	0642                	slli	a2,a2,0x10
    80206f50:	8dd1                	or	a1,a1,a2
    80206f52:	09554603          	lbu	a2,149(a0)
    80206f56:	09454703          	lbu	a4,148(a0)
    80206f5a:	09754783          	lbu	a5,151(a0)
    80206f5e:	09654483          	lbu	s1,150(a0)
    80206f62:	0622                	slli	a2,a2,0x8
    80206f64:	8e59                	or	a2,a2,a4
    80206f66:	00879713          	slli	a4,a5,0x8
    80206f6a:	8f45                	or	a4,a4,s1
    80206f6c:	0742                	slli	a4,a4,0x10
    80206f6e:	8e59                	or	a2,a2,a4
    80206f70:	1602                	slli	a2,a2,0x20
    80206f72:	8dd1                	or	a1,a1,a2
    80206f74:	f2b43823          	sd	a1,-208(s0)
    80206f78:	09954583          	lbu	a1,153(a0)
    80206f7c:	09854603          	lbu	a2,152(a0)
    80206f80:	09b54703          	lbu	a4,155(a0)
    80206f84:	09a54783          	lbu	a5,154(a0)
    80206f88:	05a2                	slli	a1,a1,0x8
    80206f8a:	8dd1                	or	a1,a1,a2
    80206f8c:	00871613          	slli	a2,a4,0x8
    80206f90:	8e5d                	or	a2,a2,a5
    80206f92:	0642                	slli	a2,a2,0x10
    80206f94:	8dd1                	or	a1,a1,a2
    80206f96:	09d54603          	lbu	a2,157(a0)
    80206f9a:	09c54703          	lbu	a4,156(a0)
    80206f9e:	09f54783          	lbu	a5,159(a0)
    80206fa2:	09e54483          	lbu	s1,158(a0)
    80206fa6:	0622                	slli	a2,a2,0x8
    80206fa8:	8e59                	or	a2,a2,a4
    80206faa:	00879713          	slli	a4,a5,0x8
    80206fae:	8f45                	or	a4,a4,s1
    80206fb0:	0742                	slli	a4,a4,0x10
    80206fb2:	8e59                	or	a2,a2,a4
    80206fb4:	1602                	slli	a2,a2,0x20
    80206fb6:	8dd1                	or	a1,a1,a2
    80206fb8:	f2b43c23          	sd	a1,-200(s0)
    80206fbc:	0a154583          	lbu	a1,161(a0)
    80206fc0:	0a054603          	lbu	a2,160(a0)
    80206fc4:	0a354703          	lbu	a4,163(a0)
    80206fc8:	0a254783          	lbu	a5,162(a0)
    80206fcc:	05a2                	slli	a1,a1,0x8
    80206fce:	8dd1                	or	a1,a1,a2
    80206fd0:	00871613          	slli	a2,a4,0x8
    80206fd4:	8e5d                	or	a2,a2,a5
    80206fd6:	0642                	slli	a2,a2,0x10
    80206fd8:	8dd1                	or	a1,a1,a2
    80206fda:	0a554603          	lbu	a2,165(a0)
    80206fde:	0a454703          	lbu	a4,164(a0)
    80206fe2:	0a754783          	lbu	a5,167(a0)
    80206fe6:	0a654483          	lbu	s1,166(a0)
    80206fea:	0622                	slli	a2,a2,0x8
    80206fec:	8e59                	or	a2,a2,a4
    80206fee:	00879713          	slli	a4,a5,0x8
    80206ff2:	8f45                	or	a4,a4,s1
    80206ff4:	0742                	slli	a4,a4,0x10
    80206ff6:	8e59                	or	a2,a2,a4
    80206ff8:	1602                	slli	a2,a2,0x20
    80206ffa:	8dd1                	or	a1,a1,a2
    80206ffc:	f4b43023          	sd	a1,-192(s0)
    80207000:	0a954583          	lbu	a1,169(a0)
    80207004:	0a854603          	lbu	a2,168(a0)
    80207008:	0ab54703          	lbu	a4,171(a0)
    8020700c:	0aa54783          	lbu	a5,170(a0)
    80207010:	05a2                	slli	a1,a1,0x8
    80207012:	8dd1                	or	a1,a1,a2
    80207014:	00871613          	slli	a2,a4,0x8
    80207018:	8e5d                	or	a2,a2,a5
    8020701a:	0642                	slli	a2,a2,0x10
    8020701c:	8dd1                	or	a1,a1,a2
    8020701e:	0ad54603          	lbu	a2,173(a0)
    80207022:	0ac54703          	lbu	a4,172(a0)
    80207026:	0af54783          	lbu	a5,175(a0)
    8020702a:	0ae54483          	lbu	s1,174(a0)
    8020702e:	0622                	slli	a2,a2,0x8
    80207030:	8e59                	or	a2,a2,a4
    80207032:	00879713          	slli	a4,a5,0x8
    80207036:	8f45                	or	a4,a4,s1
    80207038:	0742                	slli	a4,a4,0x10
    8020703a:	8e59                	or	a2,a2,a4
    8020703c:	1602                	slli	a2,a2,0x20
    8020703e:	8dd1                	or	a1,a1,a2
    80207040:	f4b43423          	sd	a1,-184(s0)
    80207044:	0b154583          	lbu	a1,177(a0)
    80207048:	0b054603          	lbu	a2,176(a0)
    8020704c:	0b354703          	lbu	a4,179(a0)
    80207050:	0b254783          	lbu	a5,178(a0)
    80207054:	05a2                	slli	a1,a1,0x8
    80207056:	8dd1                	or	a1,a1,a2
    80207058:	00871613          	slli	a2,a4,0x8
    8020705c:	8e5d                	or	a2,a2,a5
    8020705e:	0642                	slli	a2,a2,0x10
    80207060:	8dd1                	or	a1,a1,a2
    80207062:	0b554603          	lbu	a2,181(a0)
    80207066:	0b454703          	lbu	a4,180(a0)
    8020706a:	0b754783          	lbu	a5,183(a0)
    8020706e:	0b654483          	lbu	s1,182(a0)
    80207072:	0622                	slli	a2,a2,0x8
    80207074:	8e59                	or	a2,a2,a4
    80207076:	00879713          	slli	a4,a5,0x8
    8020707a:	8f45                	or	a4,a4,s1
    8020707c:	0742                	slli	a4,a4,0x10
    8020707e:	8e59                	or	a2,a2,a4
    80207080:	1602                	slli	a2,a2,0x20
    80207082:	8dd1                	or	a1,a1,a2
    80207084:	f4b43823          	sd	a1,-176(s0)
    80207088:	0b954583          	lbu	a1,185(a0)
    8020708c:	0b854603          	lbu	a2,184(a0)
    80207090:	0bb54703          	lbu	a4,187(a0)
    80207094:	0ba54783          	lbu	a5,186(a0)
    80207098:	05a2                	slli	a1,a1,0x8
    8020709a:	8dd1                	or	a1,a1,a2
    8020709c:	00871613          	slli	a2,a4,0x8
    802070a0:	8e5d                	or	a2,a2,a5
    802070a2:	0642                	slli	a2,a2,0x10
    802070a4:	8dd1                	or	a1,a1,a2
    802070a6:	0bd54603          	lbu	a2,189(a0)
    802070aa:	0bc54703          	lbu	a4,188(a0)
    802070ae:	0bf54783          	lbu	a5,191(a0)
    802070b2:	0be54483          	lbu	s1,190(a0)
    802070b6:	0622                	slli	a2,a2,0x8
    802070b8:	8e59                	or	a2,a2,a4
    802070ba:	00879713          	slli	a4,a5,0x8
    802070be:	8f45                	or	a4,a4,s1
    802070c0:	0742                	slli	a4,a4,0x10
    802070c2:	8e59                	or	a2,a2,a4
    802070c4:	1602                	slli	a2,a2,0x20
    802070c6:	8dd1                	or	a1,a1,a2
    802070c8:	f4b43c23          	sd	a1,-168(s0)
    802070cc:	0c154583          	lbu	a1,193(a0)
    802070d0:	0c054603          	lbu	a2,192(a0)
    802070d4:	0c354703          	lbu	a4,195(a0)
    802070d8:	0c254783          	lbu	a5,194(a0)
    802070dc:	05a2                	slli	a1,a1,0x8
    802070de:	8dd1                	or	a1,a1,a2
    802070e0:	00871613          	slli	a2,a4,0x8
    802070e4:	8e5d                	or	a2,a2,a5
    802070e6:	0642                	slli	a2,a2,0x10
    802070e8:	8dd1                	or	a1,a1,a2
    802070ea:	0c554603          	lbu	a2,197(a0)
    802070ee:	0c454703          	lbu	a4,196(a0)
    802070f2:	0c754783          	lbu	a5,199(a0)
    802070f6:	0c654483          	lbu	s1,198(a0)
    802070fa:	0622                	slli	a2,a2,0x8
    802070fc:	8e59                	or	a2,a2,a4
    802070fe:	00879713          	slli	a4,a5,0x8
    80207102:	8f45                	or	a4,a4,s1
    80207104:	0742                	slli	a4,a4,0x10
    80207106:	8e59                	or	a2,a2,a4
    80207108:	1602                	slli	a2,a2,0x20
    8020710a:	8dd1                	or	a1,a1,a2
    8020710c:	f6b43023          	sd	a1,-160(s0)
    80207110:	0c954583          	lbu	a1,201(a0)
    80207114:	0c854603          	lbu	a2,200(a0)
    80207118:	0cb54703          	lbu	a4,203(a0)
    8020711c:	0ca54783          	lbu	a5,202(a0)
    80207120:	05a2                	slli	a1,a1,0x8
    80207122:	8dd1                	or	a1,a1,a2
    80207124:	00871613          	slli	a2,a4,0x8
    80207128:	8e5d                	or	a2,a2,a5
    8020712a:	0642                	slli	a2,a2,0x10
    8020712c:	8dd1                	or	a1,a1,a2
    8020712e:	0cd54603          	lbu	a2,205(a0)
    80207132:	0cc54703          	lbu	a4,204(a0)
    80207136:	0cf54783          	lbu	a5,207(a0)
    8020713a:	0ce54483          	lbu	s1,206(a0)
    8020713e:	0622                	slli	a2,a2,0x8
    80207140:	8e59                	or	a2,a2,a4
    80207142:	00879713          	slli	a4,a5,0x8
    80207146:	8f45                	or	a4,a4,s1
    80207148:	0742                	slli	a4,a4,0x10
    8020714a:	8e59                	or	a2,a2,a4
    8020714c:	1602                	slli	a2,a2,0x20
    8020714e:	8dd1                	or	a1,a1,a2
    80207150:	f6b43423          	sd	a1,-152(s0)
    80207154:	0d154583          	lbu	a1,209(a0)
    80207158:	0d054603          	lbu	a2,208(a0)
    8020715c:	0d354703          	lbu	a4,211(a0)
    80207160:	0d254783          	lbu	a5,210(a0)
    80207164:	05a2                	slli	a1,a1,0x8
    80207166:	8dd1                	or	a1,a1,a2
    80207168:	00871613          	slli	a2,a4,0x8
    8020716c:	8e5d                	or	a2,a2,a5
    8020716e:	0642                	slli	a2,a2,0x10
    80207170:	8dd1                	or	a1,a1,a2
    80207172:	0d554603          	lbu	a2,213(a0)
    80207176:	0d454703          	lbu	a4,212(a0)
    8020717a:	0d754783          	lbu	a5,215(a0)
    8020717e:	0d654483          	lbu	s1,214(a0)
    80207182:	0622                	slli	a2,a2,0x8
    80207184:	8e59                	or	a2,a2,a4
    80207186:	00879713          	slli	a4,a5,0x8
    8020718a:	8f45                	or	a4,a4,s1
    8020718c:	0742                	slli	a4,a4,0x10
    8020718e:	8e59                	or	a2,a2,a4
    80207190:	1602                	slli	a2,a2,0x20
    80207192:	8dd1                	or	a1,a1,a2
    80207194:	f6b43823          	sd	a1,-144(s0)
    80207198:	0d954583          	lbu	a1,217(a0)
    8020719c:	0d854603          	lbu	a2,216(a0)
    802071a0:	0db54703          	lbu	a4,219(a0)
    802071a4:	0da54783          	lbu	a5,218(a0)
    802071a8:	05a2                	slli	a1,a1,0x8
    802071aa:	8dd1                	or	a1,a1,a2
    802071ac:	00871613          	slli	a2,a4,0x8
    802071b0:	8e5d                	or	a2,a2,a5
    802071b2:	0642                	slli	a2,a2,0x10
    802071b4:	8dd1                	or	a1,a1,a2
    802071b6:	0dd54603          	lbu	a2,221(a0)
    802071ba:	0dc54703          	lbu	a4,220(a0)
    802071be:	0df54783          	lbu	a5,223(a0)
    802071c2:	0de54483          	lbu	s1,222(a0)
    802071c6:	0622                	slli	a2,a2,0x8
    802071c8:	8e59                	or	a2,a2,a4
    802071ca:	00879713          	slli	a4,a5,0x8
    802071ce:	8f45                	or	a4,a4,s1
    802071d0:	0742                	slli	a4,a4,0x10
    802071d2:	8e59                	or	a2,a2,a4
    802071d4:	1602                	slli	a2,a2,0x20
    802071d6:	8dd1                	or	a1,a1,a2
    802071d8:	f6b43c23          	sd	a1,-136(s0)
    802071dc:	0e154583          	lbu	a1,225(a0)
    802071e0:	0e054603          	lbu	a2,224(a0)
    802071e4:	0e354703          	lbu	a4,227(a0)
    802071e8:	0e254783          	lbu	a5,226(a0)
    802071ec:	05a2                	slli	a1,a1,0x8
    802071ee:	8dd1                	or	a1,a1,a2
    802071f0:	00871613          	slli	a2,a4,0x8
    802071f4:	8e5d                	or	a2,a2,a5
    802071f6:	0642                	slli	a2,a2,0x10
    802071f8:	8dd1                	or	a1,a1,a2
    802071fa:	0e554603          	lbu	a2,229(a0)
    802071fe:	0e454703          	lbu	a4,228(a0)
    80207202:	0e754783          	lbu	a5,231(a0)
    80207206:	0e654483          	lbu	s1,230(a0)
    8020720a:	0622                	slli	a2,a2,0x8
    8020720c:	8e59                	or	a2,a2,a4
    8020720e:	00879713          	slli	a4,a5,0x8
    80207212:	8f45                	or	a4,a4,s1
    80207214:	0742                	slli	a4,a4,0x10
    80207216:	8e59                	or	a2,a2,a4
    80207218:	1602                	slli	a2,a2,0x20
    8020721a:	8dd1                	or	a1,a1,a2
    8020721c:	f8b43023          	sd	a1,-128(s0)
    80207220:	0e954583          	lbu	a1,233(a0)
    80207224:	0e854603          	lbu	a2,232(a0)
    80207228:	0eb54703          	lbu	a4,235(a0)
    8020722c:	0ea54783          	lbu	a5,234(a0)
    80207230:	05a2                	slli	a1,a1,0x8
    80207232:	8dd1                	or	a1,a1,a2
    80207234:	00871613          	slli	a2,a4,0x8
    80207238:	8e5d                	or	a2,a2,a5
    8020723a:	0642                	slli	a2,a2,0x10
    8020723c:	8dd1                	or	a1,a1,a2
    8020723e:	0ed54603          	lbu	a2,237(a0)
    80207242:	0ec54703          	lbu	a4,236(a0)
    80207246:	0ef54783          	lbu	a5,239(a0)
    8020724a:	0ee54483          	lbu	s1,238(a0)
    8020724e:	0622                	slli	a2,a2,0x8
    80207250:	8e59                	or	a2,a2,a4
    80207252:	00879713          	slli	a4,a5,0x8
    80207256:	8f45                	or	a4,a4,s1
    80207258:	0742                	slli	a4,a4,0x10
    8020725a:	8e59                	or	a2,a2,a4
    8020725c:	1602                	slli	a2,a2,0x20
    8020725e:	8dd1                	or	a1,a1,a2
    80207260:	f8b43423          	sd	a1,-120(s0)
    80207264:	0f154583          	lbu	a1,241(a0)
    80207268:	0f054603          	lbu	a2,240(a0)
    8020726c:	0f354703          	lbu	a4,243(a0)
    80207270:	0f254783          	lbu	a5,242(a0)
    80207274:	05a2                	slli	a1,a1,0x8
    80207276:	8dd1                	or	a1,a1,a2
    80207278:	00871613          	slli	a2,a4,0x8
    8020727c:	8e5d                	or	a2,a2,a5
    8020727e:	0642                	slli	a2,a2,0x10
    80207280:	8dd1                	or	a1,a1,a2
    80207282:	0f554603          	lbu	a2,245(a0)
    80207286:	0f454703          	lbu	a4,244(a0)
    8020728a:	0f754783          	lbu	a5,247(a0)
    8020728e:	0f654483          	lbu	s1,246(a0)
    80207292:	0622                	slli	a2,a2,0x8
    80207294:	8e59                	or	a2,a2,a4
    80207296:	00879713          	slli	a4,a5,0x8
    8020729a:	8f45                	or	a4,a4,s1
    8020729c:	0742                	slli	a4,a4,0x10
    8020729e:	8e59                	or	a2,a2,a4
    802072a0:	1602                	slli	a2,a2,0x20
    802072a2:	8dd1                	or	a1,a1,a2
    802072a4:	f8b43823          	sd	a1,-112(s0)
    802072a8:	0f954583          	lbu	a1,249(a0)
    802072ac:	0f854603          	lbu	a2,248(a0)
    802072b0:	0fb54703          	lbu	a4,251(a0)
    802072b4:	0fa54783          	lbu	a5,250(a0)
    802072b8:	05a2                	slli	a1,a1,0x8
    802072ba:	8dd1                	or	a1,a1,a2
    802072bc:	00871613          	slli	a2,a4,0x8
    802072c0:	8e5d                	or	a2,a2,a5
    802072c2:	0642                	slli	a2,a2,0x10
    802072c4:	8dd1                	or	a1,a1,a2
    802072c6:	0fd54603          	lbu	a2,253(a0)
    802072ca:	0fc54703          	lbu	a4,252(a0)
    802072ce:	0ff54783          	lbu	a5,255(a0)
    802072d2:	0fe54483          	lbu	s1,254(a0)
    802072d6:	0622                	slli	a2,a2,0x8
    802072d8:	8e59                	or	a2,a2,a4
    802072da:	00879713          	slli	a4,a5,0x8
    802072de:	8f45                	or	a4,a4,s1
    802072e0:	0742                	slli	a4,a4,0x10
    802072e2:	8e59                	or	a2,a2,a4
    802072e4:	1602                	slli	a2,a2,0x20
    802072e6:	8dd1                	or	a1,a1,a2
    802072e8:	f8b43c23          	sd	a1,-104(s0)
    802072ec:	10154583          	lbu	a1,257(a0)
    802072f0:	10054603          	lbu	a2,256(a0)
    802072f4:	10354703          	lbu	a4,259(a0)
    802072f8:	10254783          	lbu	a5,258(a0)
    802072fc:	05a2                	slli	a1,a1,0x8
    802072fe:	8dd1                	or	a1,a1,a2
    80207300:	00871613          	slli	a2,a4,0x8
    80207304:	8e5d                	or	a2,a2,a5
    80207306:	0642                	slli	a2,a2,0x10
    80207308:	8dd1                	or	a1,a1,a2
    8020730a:	10554603          	lbu	a2,261(a0)
    8020730e:	10454703          	lbu	a4,260(a0)
    80207312:	10754783          	lbu	a5,263(a0)
    80207316:	10654483          	lbu	s1,262(a0)
    8020731a:	0622                	slli	a2,a2,0x8
    8020731c:	8e59                	or	a2,a2,a4
    8020731e:	00879713          	slli	a4,a5,0x8
    80207322:	8f45                	or	a4,a4,s1
    80207324:	0742                	slli	a4,a4,0x10
    80207326:	8e59                	or	a2,a2,a4
    80207328:	1602                	slli	a2,a2,0x20
    8020732a:	8dd1                	or	a1,a1,a2
    8020732c:	fab43023          	sd	a1,-96(s0)
    80207330:	10954583          	lbu	a1,265(a0)
    80207334:	10854603          	lbu	a2,264(a0)
    80207338:	10b54703          	lbu	a4,267(a0)
    8020733c:	10a54783          	lbu	a5,266(a0)
    80207340:	05a2                	slli	a1,a1,0x8
    80207342:	8dd1                	or	a1,a1,a2
    80207344:	00871613          	slli	a2,a4,0x8
    80207348:	8e5d                	or	a2,a2,a5
    8020734a:	0642                	slli	a2,a2,0x10
    8020734c:	8dd1                	or	a1,a1,a2
    8020734e:	10d54603          	lbu	a2,269(a0)
    80207352:	10c54703          	lbu	a4,268(a0)
    80207356:	10f54783          	lbu	a5,271(a0)
    8020735a:	10e54483          	lbu	s1,270(a0)
    8020735e:	0622                	slli	a2,a2,0x8
    80207360:	8e59                	or	a2,a2,a4
    80207362:	00879713          	slli	a4,a5,0x8
    80207366:	8f45                	or	a4,a4,s1
    80207368:	0742                	slli	a4,a4,0x10
    8020736a:	8e59                	or	a2,a2,a4
    8020736c:	1602                	slli	a2,a2,0x20
    8020736e:	8dd1                	or	a1,a1,a2
    80207370:	fab43423          	sd	a1,-88(s0)
    80207374:	11154583          	lbu	a1,273(a0)
    80207378:	11054603          	lbu	a2,272(a0)
    8020737c:	11354703          	lbu	a4,275(a0)
    80207380:	11254783          	lbu	a5,274(a0)
    80207384:	05a2                	slli	a1,a1,0x8
    80207386:	8dd1                	or	a1,a1,a2
    80207388:	00871613          	slli	a2,a4,0x8
    8020738c:	8e5d                	or	a2,a2,a5
    8020738e:	0642                	slli	a2,a2,0x10
    80207390:	8dd1                	or	a1,a1,a2
    80207392:	11554603          	lbu	a2,277(a0)
    80207396:	11454703          	lbu	a4,276(a0)
    8020739a:	11754783          	lbu	a5,279(a0)
    8020739e:	11654483          	lbu	s1,278(a0)
    802073a2:	0622                	slli	a2,a2,0x8
    802073a4:	8e59                	or	a2,a2,a4
    802073a6:	00879713          	slli	a4,a5,0x8
    802073aa:	8f45                	or	a4,a4,s1
    802073ac:	0742                	slli	a4,a4,0x10
    802073ae:	8e59                	or	a2,a2,a4
    802073b0:	1602                	slli	a2,a2,0x20
    802073b2:	8dd1                	or	a1,a1,a2
    802073b4:	fab43823          	sd	a1,-80(s0)
    802073b8:	11954583          	lbu	a1,281(a0)
    802073bc:	11854603          	lbu	a2,280(a0)
    802073c0:	11b54703          	lbu	a4,283(a0)
    802073c4:	11a54783          	lbu	a5,282(a0)
    802073c8:	05a2                	slli	a1,a1,0x8
    802073ca:	8dd1                	or	a1,a1,a2
    802073cc:	00871613          	slli	a2,a4,0x8
    802073d0:	8e5d                	or	a2,a2,a5
    802073d2:	0642                	slli	a2,a2,0x10
    802073d4:	8dd1                	or	a1,a1,a2
    802073d6:	11d54603          	lbu	a2,285(a0)
    802073da:	11c54703          	lbu	a4,284(a0)
    802073de:	11f54783          	lbu	a5,287(a0)
    802073e2:	11e54503          	lbu	a0,286(a0)
    802073e6:	0622                	slli	a2,a2,0x8
    802073e8:	8e59                	or	a2,a2,a4
    802073ea:	00879713          	slli	a4,a5,0x8
    802073ee:	8d59                	or	a0,a0,a4
    802073f0:	0542                	slli	a0,a0,0x10
    802073f2:	8d51                	or	a0,a0,a2
    802073f4:	1502                	slli	a0,a0,0x20
    802073f6:	8d4d                	or	a0,a0,a1
    802073f8:	faa43c23          	sd	a0,-72(s0)

00000000802073fc <.LBB10_1>:
    802073fc:	00008597          	auipc	a1,0x8
    80207400:	13358593          	addi	a1,a1,307 # 8020f52f <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.110>
    80207404:	4629                	li	a2,10
    80207406:	8536                	mv	a0,a3
    80207408:	00003097          	auipc	ra,0x3
    8020740c:	620080e7          	jalr	1568(ra) # 8020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>
    80207410:	fcb43423          	sd	a1,-56(s0)
    80207414:	fca43023          	sd	a0,-64(s0)
    80207418:	ea040513          	addi	a0,s0,-352
    8020741c:	fca43c23          	sd	a0,-40(s0)

0000000080207420 <.LBB10_2>:
    80207420:	00006597          	auipc	a1,0x6
    80207424:	6ec58593          	addi	a1,a1,1772 # 8020db0c <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x2c>

0000000080207428 <.LBB10_3>:
    80207428:	00008497          	auipc	s1,0x8
    8020742c:	09848493          	addi	s1,s1,152 # 8020f4c0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.79>
    80207430:	fc040913          	addi	s2,s0,-64
    80207434:	fd840693          	addi	a3,s0,-40
    80207438:	4611                	li	a2,4
    8020743a:	854a                	mv	a0,s2
    8020743c:	8726                	mv	a4,s1
    8020743e:	00002097          	auipc	ra,0x2
    80207442:	59c080e7          	jalr	1436(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207446:	ea840513          	addi	a0,s0,-344
    8020744a:	fca43c23          	sd	a0,-40(s0)

000000008020744e <.LBB10_4>:
    8020744e:	00008597          	auipc	a1,0x8
    80207452:	09258593          	addi	a1,a1,146 # 8020f4e0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.80>
    80207456:	fd840693          	addi	a3,s0,-40
    8020745a:	4609                	li	a2,2
    8020745c:	854a                	mv	a0,s2
    8020745e:	8726                	mv	a4,s1
    80207460:	00002097          	auipc	ra,0x2
    80207464:	57a080e7          	jalr	1402(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207468:	eb040513          	addi	a0,s0,-336
    8020746c:	fca43c23          	sd	a0,-40(s0)

0000000080207470 <.LBB10_5>:
    80207470:	00008597          	auipc	a1,0x8
    80207474:	07258593          	addi	a1,a1,114 # 8020f4e2 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.81>
    80207478:	fd840693          	addi	a3,s0,-40
    8020747c:	4609                	li	a2,2
    8020747e:	854a                	mv	a0,s2
    80207480:	8726                	mv	a4,s1
    80207482:	00002097          	auipc	ra,0x2
    80207486:	558080e7          	jalr	1368(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020748a:	eb840513          	addi	a0,s0,-328
    8020748e:	fca43c23          	sd	a0,-40(s0)

0000000080207492 <.LBB10_6>:
    80207492:	00008597          	auipc	a1,0x8
    80207496:	05258593          	addi	a1,a1,82 # 8020f4e4 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.82>
    8020749a:	fd840693          	addi	a3,s0,-40
    8020749e:	4609                	li	a2,2
    802074a0:	854a                	mv	a0,s2
    802074a2:	8726                	mv	a4,s1
    802074a4:	00002097          	auipc	ra,0x2
    802074a8:	536080e7          	jalr	1334(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802074ac:	ec040513          	addi	a0,s0,-320
    802074b0:	fca43c23          	sd	a0,-40(s0)

00000000802074b4 <.LBB10_7>:
    802074b4:	00008597          	auipc	a1,0x8
    802074b8:	03258593          	addi	a1,a1,50 # 8020f4e6 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.83>
    802074bc:	fd840693          	addi	a3,s0,-40
    802074c0:	4609                	li	a2,2
    802074c2:	854a                	mv	a0,s2
    802074c4:	8726                	mv	a4,s1
    802074c6:	00002097          	auipc	ra,0x2
    802074ca:	514080e7          	jalr	1300(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802074ce:	ec840513          	addi	a0,s0,-312
    802074d2:	fca43c23          	sd	a0,-40(s0)

00000000802074d6 <.LBB10_8>:
    802074d6:	00008597          	auipc	a1,0x8
    802074da:	06358593          	addi	a1,a1,99 # 8020f539 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.111>
    802074de:	fd840693          	addi	a3,s0,-40
    802074e2:	4609                	li	a2,2
    802074e4:	854a                	mv	a0,s2
    802074e6:	8726                	mv	a4,s1
    802074e8:	00002097          	auipc	ra,0x2
    802074ec:	4f2080e7          	jalr	1266(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802074f0:	ed040513          	addi	a0,s0,-304
    802074f4:	fca43c23          	sd	a0,-40(s0)

00000000802074f8 <.LBB10_9>:
    802074f8:	00008597          	auipc	a1,0x8
    802074fc:	04358593          	addi	a1,a1,67 # 8020f53b <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.112>
    80207500:	fd840693          	addi	a3,s0,-40
    80207504:	4609                	li	a2,2
    80207506:	854a                	mv	a0,s2
    80207508:	8726                	mv	a4,s1
    8020750a:	00002097          	auipc	ra,0x2
    8020750e:	4d0080e7          	jalr	1232(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207512:	ed840513          	addi	a0,s0,-296
    80207516:	fca43c23          	sd	a0,-40(s0)

000000008020751a <.LBB10_10>:
    8020751a:	00008597          	auipc	a1,0x8
    8020751e:	02358593          	addi	a1,a1,35 # 8020f53d <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.113>
    80207522:	fd840693          	addi	a3,s0,-40
    80207526:	4609                	li	a2,2
    80207528:	854a                	mv	a0,s2
    8020752a:	8726                	mv	a4,s1
    8020752c:	00002097          	auipc	ra,0x2
    80207530:	4ae080e7          	jalr	1198(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207534:	ee040513          	addi	a0,s0,-288
    80207538:	fca43c23          	sd	a0,-40(s0)

000000008020753c <.LBB10_11>:
    8020753c:	00008597          	auipc	a1,0x8
    80207540:	fac58593          	addi	a1,a1,-84 # 8020f4e8 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.84>
    80207544:	fd840693          	addi	a3,s0,-40
    80207548:	4609                	li	a2,2
    8020754a:	854a                	mv	a0,s2
    8020754c:	8726                	mv	a4,s1
    8020754e:	00002097          	auipc	ra,0x2
    80207552:	48c080e7          	jalr	1164(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207556:	ee840513          	addi	a0,s0,-280
    8020755a:	fca43c23          	sd	a0,-40(s0)

000000008020755e <.LBB10_12>:
    8020755e:	00008597          	auipc	a1,0x8
    80207562:	f8c58593          	addi	a1,a1,-116 # 8020f4ea <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.85>
    80207566:	fd840693          	addi	a3,s0,-40
    8020756a:	4609                	li	a2,2
    8020756c:	854a                	mv	a0,s2
    8020756e:	8726                	mv	a4,s1
    80207570:	00002097          	auipc	ra,0x2
    80207574:	46a080e7          	jalr	1130(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207578:	ef040513          	addi	a0,s0,-272
    8020757c:	fca43c23          	sd	a0,-40(s0)

0000000080207580 <.LBB10_13>:
    80207580:	00008597          	auipc	a1,0x8
    80207584:	f6c58593          	addi	a1,a1,-148 # 8020f4ec <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.86>
    80207588:	fd840693          	addi	a3,s0,-40
    8020758c:	4609                	li	a2,2
    8020758e:	854a                	mv	a0,s2
    80207590:	8726                	mv	a4,s1
    80207592:	00002097          	auipc	ra,0x2
    80207596:	448080e7          	jalr	1096(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020759a:	ef840513          	addi	a0,s0,-264
    8020759e:	fca43c23          	sd	a0,-40(s0)

00000000802075a2 <.LBB10_14>:
    802075a2:	00008597          	auipc	a1,0x8
    802075a6:	f4c58593          	addi	a1,a1,-180 # 8020f4ee <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.87>
    802075aa:	fd840693          	addi	a3,s0,-40
    802075ae:	4609                	li	a2,2
    802075b0:	854a                	mv	a0,s2
    802075b2:	8726                	mv	a4,s1
    802075b4:	00002097          	auipc	ra,0x2
    802075b8:	426080e7          	jalr	1062(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802075bc:	f0040513          	addi	a0,s0,-256
    802075c0:	fca43c23          	sd	a0,-40(s0)

00000000802075c4 <.LBB10_15>:
    802075c4:	00008597          	auipc	a1,0x8
    802075c8:	f2c58593          	addi	a1,a1,-212 # 8020f4f0 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.88>
    802075cc:	fd840693          	addi	a3,s0,-40
    802075d0:	4609                	li	a2,2
    802075d2:	854a                	mv	a0,s2
    802075d4:	8726                	mv	a4,s1
    802075d6:	00002097          	auipc	ra,0x2
    802075da:	404080e7          	jalr	1028(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802075de:	f0840513          	addi	a0,s0,-248
    802075e2:	fca43c23          	sd	a0,-40(s0)

00000000802075e6 <.LBB10_16>:
    802075e6:	00008597          	auipc	a1,0x8
    802075ea:	f0c58593          	addi	a1,a1,-244 # 8020f4f2 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.89>
    802075ee:	fd840693          	addi	a3,s0,-40
    802075f2:	4609                	li	a2,2
    802075f4:	854a                	mv	a0,s2
    802075f6:	8726                	mv	a4,s1
    802075f8:	00002097          	auipc	ra,0x2
    802075fc:	3e2080e7          	jalr	994(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207600:	f1040513          	addi	a0,s0,-240
    80207604:	fca43c23          	sd	a0,-40(s0)

0000000080207608 <.LBB10_17>:
    80207608:	00008597          	auipc	a1,0x8
    8020760c:	eec58593          	addi	a1,a1,-276 # 8020f4f4 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.90>
    80207610:	fd840693          	addi	a3,s0,-40
    80207614:	4609                	li	a2,2
    80207616:	854a                	mv	a0,s2
    80207618:	8726                	mv	a4,s1
    8020761a:	00002097          	auipc	ra,0x2
    8020761e:	3c0080e7          	jalr	960(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207622:	f1840513          	addi	a0,s0,-232
    80207626:	fca43c23          	sd	a0,-40(s0)

000000008020762a <.LBB10_18>:
    8020762a:	00008597          	auipc	a1,0x8
    8020762e:	ecc58593          	addi	a1,a1,-308 # 8020f4f6 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.91>
    80207632:	fd840693          	addi	a3,s0,-40
    80207636:	4609                	li	a2,2
    80207638:	854a                	mv	a0,s2
    8020763a:	8726                	mv	a4,s1
    8020763c:	00002097          	auipc	ra,0x2
    80207640:	39e080e7          	jalr	926(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207644:	f2040513          	addi	a0,s0,-224
    80207648:	fca43c23          	sd	a0,-40(s0)

000000008020764c <.LBB10_19>:
    8020764c:	00008597          	auipc	a1,0x8
    80207650:	eac58593          	addi	a1,a1,-340 # 8020f4f8 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.92>
    80207654:	fd840693          	addi	a3,s0,-40
    80207658:	4609                	li	a2,2
    8020765a:	854a                	mv	a0,s2
    8020765c:	8726                	mv	a4,s1
    8020765e:	00002097          	auipc	ra,0x2
    80207662:	37c080e7          	jalr	892(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207666:	f2840513          	addi	a0,s0,-216
    8020766a:	fca43c23          	sd	a0,-40(s0)

000000008020766e <.LBB10_20>:
    8020766e:	00008597          	auipc	a1,0x8
    80207672:	e8c58593          	addi	a1,a1,-372 # 8020f4fa <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.93>
    80207676:	fd840693          	addi	a3,s0,-40
    8020767a:	4609                	li	a2,2
    8020767c:	854a                	mv	a0,s2
    8020767e:	8726                	mv	a4,s1
    80207680:	00002097          	auipc	ra,0x2
    80207684:	35a080e7          	jalr	858(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207688:	f3040513          	addi	a0,s0,-208
    8020768c:	fca43c23          	sd	a0,-40(s0)

0000000080207690 <.LBB10_21>:
    80207690:	00008597          	auipc	a1,0x8
    80207694:	e6c58593          	addi	a1,a1,-404 # 8020f4fc <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.94>
    80207698:	fd840693          	addi	a3,s0,-40
    8020769c:	4609                	li	a2,2
    8020769e:	854a                	mv	a0,s2
    802076a0:	8726                	mv	a4,s1
    802076a2:	00002097          	auipc	ra,0x2
    802076a6:	338080e7          	jalr	824(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802076aa:	f3840513          	addi	a0,s0,-200
    802076ae:	fca43c23          	sd	a0,-40(s0)

00000000802076b2 <.LBB10_22>:
    802076b2:	00008597          	auipc	a1,0x8
    802076b6:	e4c58593          	addi	a1,a1,-436 # 8020f4fe <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.95>
    802076ba:	fd840693          	addi	a3,s0,-40
    802076be:	4609                	li	a2,2
    802076c0:	854a                	mv	a0,s2
    802076c2:	8726                	mv	a4,s1
    802076c4:	00002097          	auipc	ra,0x2
    802076c8:	316080e7          	jalr	790(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802076cc:	f4040513          	addi	a0,s0,-192
    802076d0:	fca43c23          	sd	a0,-40(s0)

00000000802076d4 <.LBB10_23>:
    802076d4:	00008597          	auipc	a1,0x8
    802076d8:	e2c58593          	addi	a1,a1,-468 # 8020f500 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.96>
    802076dc:	fd840693          	addi	a3,s0,-40
    802076e0:	4609                	li	a2,2
    802076e2:	854a                	mv	a0,s2
    802076e4:	8726                	mv	a4,s1
    802076e6:	00002097          	auipc	ra,0x2
    802076ea:	2f4080e7          	jalr	756(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802076ee:	f4840513          	addi	a0,s0,-184
    802076f2:	fca43c23          	sd	a0,-40(s0)

00000000802076f6 <.LBB10_24>:
    802076f6:	00008597          	auipc	a1,0x8
    802076fa:	e0c58593          	addi	a1,a1,-500 # 8020f502 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.97>
    802076fe:	fd840693          	addi	a3,s0,-40
    80207702:	4609                	li	a2,2
    80207704:	854a                	mv	a0,s2
    80207706:	8726                	mv	a4,s1
    80207708:	00002097          	auipc	ra,0x2
    8020770c:	2d2080e7          	jalr	722(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207710:	f5040513          	addi	a0,s0,-176
    80207714:	fca43c23          	sd	a0,-40(s0)

0000000080207718 <.LBB10_25>:
    80207718:	00008597          	auipc	a1,0x8
    8020771c:	dec58593          	addi	a1,a1,-532 # 8020f504 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.98>
    80207720:	fd840693          	addi	a3,s0,-40
    80207724:	4609                	li	a2,2
    80207726:	854a                	mv	a0,s2
    80207728:	8726                	mv	a4,s1
    8020772a:	00002097          	auipc	ra,0x2
    8020772e:	2b0080e7          	jalr	688(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207732:	f5840513          	addi	a0,s0,-168
    80207736:	fca43c23          	sd	a0,-40(s0)

000000008020773a <.LBB10_26>:
    8020773a:	00008597          	auipc	a1,0x8
    8020773e:	dcc58593          	addi	a1,a1,-564 # 8020f506 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.99>
    80207742:	fd840693          	addi	a3,s0,-40
    80207746:	4609                	li	a2,2
    80207748:	854a                	mv	a0,s2
    8020774a:	8726                	mv	a4,s1
    8020774c:	00002097          	auipc	ra,0x2
    80207750:	28e080e7          	jalr	654(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207754:	f6040513          	addi	a0,s0,-160
    80207758:	fca43c23          	sd	a0,-40(s0)

000000008020775c <.LBB10_27>:
    8020775c:	00008597          	auipc	a1,0x8
    80207760:	dac58593          	addi	a1,a1,-596 # 8020f508 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.100>
    80207764:	fd840693          	addi	a3,s0,-40
    80207768:	4609                	li	a2,2
    8020776a:	854a                	mv	a0,s2
    8020776c:	8726                	mv	a4,s1
    8020776e:	00002097          	auipc	ra,0x2
    80207772:	26c080e7          	jalr	620(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207776:	f6840513          	addi	a0,s0,-152
    8020777a:	fca43c23          	sd	a0,-40(s0)

000000008020777e <.LBB10_28>:
    8020777e:	00008597          	auipc	a1,0x8
    80207782:	d8c58593          	addi	a1,a1,-628 # 8020f50a <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.101>
    80207786:	fd840693          	addi	a3,s0,-40
    8020778a:	4609                	li	a2,2
    8020778c:	854a                	mv	a0,s2
    8020778e:	8726                	mv	a4,s1
    80207790:	00002097          	auipc	ra,0x2
    80207794:	24a080e7          	jalr	586(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207798:	f7040513          	addi	a0,s0,-144
    8020779c:	fca43c23          	sd	a0,-40(s0)

00000000802077a0 <.LBB10_29>:
    802077a0:	00008597          	auipc	a1,0x8
    802077a4:	d6c58593          	addi	a1,a1,-660 # 8020f50c <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.102>
    802077a8:	fd840693          	addi	a3,s0,-40
    802077ac:	460d                	li	a2,3
    802077ae:	854a                	mv	a0,s2
    802077b0:	8726                	mv	a4,s1
    802077b2:	00002097          	auipc	ra,0x2
    802077b6:	228080e7          	jalr	552(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802077ba:	f7840513          	addi	a0,s0,-136
    802077be:	fca43c23          	sd	a0,-40(s0)

00000000802077c2 <.LBB10_30>:
    802077c2:	00008597          	auipc	a1,0x8
    802077c6:	d4d58593          	addi	a1,a1,-691 # 8020f50f <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.103>
    802077ca:	fd840693          	addi	a3,s0,-40
    802077ce:	460d                	li	a2,3
    802077d0:	854a                	mv	a0,s2
    802077d2:	8726                	mv	a4,s1
    802077d4:	00002097          	auipc	ra,0x2
    802077d8:	206080e7          	jalr	518(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802077dc:	f8040513          	addi	a0,s0,-128
    802077e0:	fca43c23          	sd	a0,-40(s0)

00000000802077e4 <.LBB10_31>:
    802077e4:	00008597          	auipc	a1,0x8
    802077e8:	d5b58593          	addi	a1,a1,-677 # 8020f53f <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.114>
    802077ec:	fd840693          	addi	a3,s0,-40
    802077f0:	4609                	li	a2,2
    802077f2:	854a                	mv	a0,s2
    802077f4:	8726                	mv	a4,s1
    802077f6:	00002097          	auipc	ra,0x2
    802077fa:	1e4080e7          	jalr	484(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802077fe:	f8840513          	addi	a0,s0,-120
    80207802:	fca43c23          	sd	a0,-40(s0)

0000000080207806 <.LBB10_32>:
    80207806:	00008597          	auipc	a1,0x8
    8020780a:	d3b58593          	addi	a1,a1,-709 # 8020f541 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.115>
    8020780e:	fd840693          	addi	a3,s0,-40
    80207812:	4609                	li	a2,2
    80207814:	854a                	mv	a0,s2
    80207816:	8726                	mv	a4,s1
    80207818:	00002097          	auipc	ra,0x2
    8020781c:	1c2080e7          	jalr	450(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207820:	f9040513          	addi	a0,s0,-112
    80207824:	fca43c23          	sd	a0,-40(s0)

0000000080207828 <.LBB10_33>:
    80207828:	00008597          	auipc	a1,0x8
    8020782c:	d1b58593          	addi	a1,a1,-741 # 8020f543 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.116>
    80207830:	fd840693          	addi	a3,s0,-40
    80207834:	4609                	li	a2,2
    80207836:	854a                	mv	a0,s2
    80207838:	8726                	mv	a4,s1
    8020783a:	00002097          	auipc	ra,0x2
    8020783e:	1a0080e7          	jalr	416(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207842:	f9840513          	addi	a0,s0,-104
    80207846:	fca43c23          	sd	a0,-40(s0)

000000008020784a <.LBB10_34>:
    8020784a:	00008597          	auipc	a1,0x8
    8020784e:	cfb58593          	addi	a1,a1,-773 # 8020f545 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.117>
    80207852:	fd840693          	addi	a3,s0,-40
    80207856:	4609                	li	a2,2
    80207858:	854a                	mv	a0,s2
    8020785a:	8726                	mv	a4,s1
    8020785c:	00002097          	auipc	ra,0x2
    80207860:	17e080e7          	jalr	382(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207864:	fa040513          	addi	a0,s0,-96
    80207868:	fca43c23          	sd	a0,-40(s0)

000000008020786c <.LBB10_35>:
    8020786c:	00006597          	auipc	a1,0x6
    80207870:	2b858593          	addi	a1,a1,696 # 8020db24 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x44>
    80207874:	fd840693          	addi	a3,s0,-40
    80207878:	4611                	li	a2,4
    8020787a:	854a                	mv	a0,s2
    8020787c:	8726                	mv	a4,s1
    8020787e:	00002097          	auipc	ra,0x2
    80207882:	15c080e7          	jalr	348(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80207886:	fa840513          	addi	a0,s0,-88
    8020788a:	fca43c23          	sd	a0,-40(s0)

000000008020788e <.LBB10_36>:
    8020788e:	00008597          	auipc	a1,0x8
    80207892:	c8458593          	addi	a1,a1,-892 # 8020f512 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.105>
    80207896:	fd840693          	addi	a3,s0,-40
    8020789a:	461d                	li	a2,7
    8020789c:	854a                	mv	a0,s2
    8020789e:	8726                	mv	a4,s1
    802078a0:	00002097          	auipc	ra,0x2
    802078a4:	13a080e7          	jalr	314(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802078a8:	fb040513          	addi	a0,s0,-80
    802078ac:	fca43c23          	sd	a0,-40(s0)

00000000802078b0 <.LBB10_37>:
    802078b0:	00008597          	auipc	a1,0x8
    802078b4:	c6958593          	addi	a1,a1,-919 # 8020f519 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.106>
    802078b8:	fd840693          	addi	a3,s0,-40
    802078bc:	461d                	li	a2,7
    802078be:	854a                	mv	a0,s2
    802078c0:	8726                	mv	a4,s1
    802078c2:	00002097          	auipc	ra,0x2
    802078c6:	118080e7          	jalr	280(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802078ca:	fb840513          	addi	a0,s0,-72
    802078ce:	fca43c23          	sd	a0,-40(s0)

00000000802078d2 <.LBB10_38>:
    802078d2:	00008597          	auipc	a1,0x8
    802078d6:	c5358593          	addi	a1,a1,-941 # 8020f525 <.Lanon.90eaa336b1e2dfd06d315b54f1c53ef4.109>
    802078da:	fd840693          	addi	a3,s0,-40
    802078de:	4629                	li	a2,10
    802078e0:	854a                	mv	a0,s2
    802078e2:	8726                	mv	a4,s1
    802078e4:	00002097          	auipc	ra,0x2
    802078e8:	0f6080e7          	jalr	246(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802078ec:	854a                	mv	a0,s2
    802078ee:	00002097          	auipc	ra,0x2
    802078f2:	248080e7          	jalr	584(ra) # 80209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>
    802078f6:	6916                	ld	s2,320(sp)
    802078f8:	64b6                	ld	s1,328(sp)
    802078fa:	6456                	ld	s0,336(sp)
    802078fc:	60f6                	ld	ra,344(sp)
    802078fe:	6135                	addi	sp,sp,352
    80207900:	8082                	ret

0000000080207902 <_ZN3rvm4arch5guest5Guest3new17he42c0c66579e0941E>:
    80207902:	1141                	addi	sp,sp,-16
    80207904:	e406                	sd	ra,8(sp)
    80207906:	e022                	sd	s0,0(sp)
    80207908:	0800                	addi	s0,sp,16
    8020790a:	4541                	li	a0,16
    8020790c:	45a1                	li	a1,8
    8020790e:	ffffd097          	auipc	ra,0xffffd
    80207912:	7dc080e7          	jalr	2012(ra) # 802050ea <__rust_alloc>
    80207916:	c911                	beqz	a0,8020792a <_ZN3rvm4arch5guest5Guest3new17he42c0c66579e0941E+0x28>
    80207918:	85aa                	mv	a1,a0
    8020791a:	4505                	li	a0,1
    8020791c:	e188                	sd	a0,0(a1)
    8020791e:	e588                	sd	a0,8(a1)
    80207920:	4501                	li	a0,0
    80207922:	6402                	ld	s0,0(sp)
    80207924:	60a2                	ld	ra,8(sp)
    80207926:	0141                	addi	sp,sp,16
    80207928:	8082                	ret
    8020792a:	4541                	li	a0,16
    8020792c:	45a1                	li	a1,8
    8020792e:	00002097          	auipc	ra,0x2
    80207932:	b32080e7          	jalr	-1230(ra) # 80209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>
	...

0000000080207938 <_ZN3rvm4arch24check_hypervisor_feature17h8f5c78f0490ea352E>:
    80207938:	1141                	addi	sp,sp,-16
    8020793a:	e406                	sd	ra,8(sp)
    8020793c:	e022                	sd	s0,0(sp)
    8020793e:	0800                	addi	s0,sp,16
    80207940:	4505                	li	a0,1
    80207942:	6402                	ld	s0,0(sp)
    80207944:	60a2                	ld	ra,8(sp)
    80207946:	0141                	addi	sp,sp,16
    80207948:	8082                	ret

000000008020794a <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h05a1b9fbeafef2adE>:
    8020794a:	1141                	addi	sp,sp,-16
    8020794c:	e406                	sd	ra,8(sp)
    8020794e:	e022                	sd	s0,0(sp)
    80207950:	0800                	addi	s0,sp,16
    80207952:	6108                	ld	a0,0(a0)
    80207954:	6402                	ld	s0,0(sp)
    80207956:	60a2                	ld	ra,8(sp)
    80207958:	0141                	addi	sp,sp,16
    8020795a:	00003317          	auipc	t1,0x3
    8020795e:	17830067          	jr	376(t1) # 8020aad2 <_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h067fc15c1459c2deE>

0000000080207962 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4837a607d5940d2dE>:
    80207962:	1101                	addi	sp,sp,-32
    80207964:	ec06                	sd	ra,24(sp)
    80207966:	e822                	sd	s0,16(sp)
    80207968:	e426                	sd	s1,8(sp)
    8020796a:	e04a                	sd	s2,0(sp)
    8020796c:	1000                	addi	s0,sp,32
    8020796e:	00053903          	ld	s2,0(a0)
    80207972:	84ae                	mv	s1,a1
    80207974:	852e                	mv	a0,a1
    80207976:	00003097          	auipc	ra,0x3
    8020797a:	09c080e7          	jalr	156(ra) # 8020aa12 <_ZN4core3fmt9Formatter15debug_lower_hex17hffada68515a2cdf7E>
    8020797e:	cd01                	beqz	a0,80207996 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4837a607d5940d2dE+0x34>
    80207980:	854a                	mv	a0,s2
    80207982:	85a6                	mv	a1,s1
    80207984:	6902                	ld	s2,0(sp)
    80207986:	64a2                	ld	s1,8(sp)
    80207988:	6442                	ld	s0,16(sp)
    8020798a:	60e2                	ld	ra,24(sp)
    8020798c:	6105                	addi	sp,sp,32
    8020798e:	00004317          	auipc	t1,0x4
    80207992:	22230067          	jr	546(t1) # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80207996:	8526                	mv	a0,s1
    80207998:	00003097          	auipc	ra,0x3
    8020799c:	084080e7          	jalr	132(ra) # 8020aa1c <_ZN4core3fmt9Formatter15debug_upper_hex17h3e8dade1475f5ac4E>
    802079a0:	cd01                	beqz	a0,802079b8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4837a607d5940d2dE+0x56>
    802079a2:	854a                	mv	a0,s2
    802079a4:	85a6                	mv	a1,s1
    802079a6:	6902                	ld	s2,0(sp)
    802079a8:	64a2                	ld	s1,8(sp)
    802079aa:	6442                	ld	s0,16(sp)
    802079ac:	60e2                	ld	ra,24(sp)
    802079ae:	6105                	addi	sp,sp,32
    802079b0:	00004317          	auipc	t1,0x4
    802079b4:	28030067          	jr	640(t1) # 8020bc30 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E>
    802079b8:	854a                	mv	a0,s2
    802079ba:	85a6                	mv	a1,s1
    802079bc:	6902                	ld	s2,0(sp)
    802079be:	64a2                	ld	s1,8(sp)
    802079c0:	6442                	ld	s0,16(sp)
    802079c2:	60e2                	ld	ra,24(sp)
    802079c4:	6105                	addi	sp,sp,32
    802079c6:	00005317          	auipc	t1,0x5
    802079ca:	80230067          	jr	-2046(t1) # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>

00000000802079ce <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f47d044595ed3abE>:
    802079ce:	715d                	addi	sp,sp,-80
    802079d0:	e486                	sd	ra,72(sp)
    802079d2:	e0a2                	sd	s0,64(sp)
    802079d4:	fc26                	sd	s1,56(sp)
    802079d6:	f84a                	sd	s2,48(sp)
    802079d8:	f44e                	sd	s3,40(sp)
    802079da:	f052                	sd	s4,32(sp)
    802079dc:	0880                	addi	s0,sp,80
    802079de:	6104                	ld	s1,0(a0)
    802079e0:	852e                	mv	a0,a1
    802079e2:	00003097          	auipc	ra,0x3
    802079e6:	09e080e7          	jalr	158(ra) # 8020aa80 <_ZN4core3fmt9Formatter10debug_list17hc79335143a2bab08E>
    802079ea:	fab43c23          	sd	a1,-72(s0)
    802079ee:	faa43823          	sd	a0,-80(s0)
    802079f2:	00148a13          	addi	s4,s1,1
    802079f6:	fc943423          	sd	s1,-56(s0)

00000000802079fa <.LBB3_1>:
    802079fa:	00008497          	auipc	s1,0x8
    802079fe:	26e48493          	addi	s1,s1,622 # 8020fc68 <anon.bb0fdcfdfbb943db6b4744f30d662cc5.3.llvm.12230177447416708706>
    80207a02:	fb040913          	addi	s2,s0,-80
    80207a06:	fc840993          	addi	s3,s0,-56
    80207a0a:	854a                	mv	a0,s2
    80207a0c:	85ce                	mv	a1,s3
    80207a0e:	8626                	mv	a2,s1
    80207a10:	00002097          	auipc	ra,0x2
    80207a14:	3c6080e7          	jalr	966(ra) # 80209dd6 <_ZN4core3fmt8builders8DebugSet5entry17hbbfe70946be6c10eE>
    80207a18:	fd443423          	sd	s4,-56(s0)
    80207a1c:	854a                	mv	a0,s2
    80207a1e:	85ce                	mv	a1,s3
    80207a20:	8626                	mv	a2,s1
    80207a22:	00002097          	auipc	ra,0x2
    80207a26:	3b4080e7          	jalr	948(ra) # 80209dd6 <_ZN4core3fmt8builders8DebugSet5entry17hbbfe70946be6c10eE>
    80207a2a:	854a                	mv	a0,s2
    80207a2c:	00002097          	auipc	ra,0x2
    80207a30:	3c4080e7          	jalr	964(ra) # 80209df0 <_ZN4core3fmt8builders9DebugList6finish17he6bd1c52112a8038E>
    80207a34:	7a02                	ld	s4,32(sp)
    80207a36:	79a2                	ld	s3,40(sp)
    80207a38:	7942                	ld	s2,48(sp)
    80207a3a:	74e2                	ld	s1,56(sp)
    80207a3c:	6406                	ld	s0,64(sp)
    80207a3e:	60a6                	ld	ra,72(sp)
    80207a40:	6161                	addi	sp,sp,80
    80207a42:	8082                	ret

0000000080207a44 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d7fab38557da578E>:
    80207a44:	1101                	addi	sp,sp,-32
    80207a46:	ec06                	sd	ra,24(sp)
    80207a48:	e822                	sd	s0,16(sp)
    80207a4a:	e426                	sd	s1,8(sp)
    80207a4c:	e04a                	sd	s2,0(sp)
    80207a4e:	1000                	addi	s0,sp,32
    80207a50:	00053903          	ld	s2,0(a0)
    80207a54:	84ae                	mv	s1,a1
    80207a56:	852e                	mv	a0,a1
    80207a58:	00003097          	auipc	ra,0x3
    80207a5c:	fba080e7          	jalr	-70(ra) # 8020aa12 <_ZN4core3fmt9Formatter15debug_lower_hex17hffada68515a2cdf7E>
    80207a60:	cd01                	beqz	a0,80207a78 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d7fab38557da578E+0x34>
    80207a62:	854a                	mv	a0,s2
    80207a64:	85a6                	mv	a1,s1
    80207a66:	6902                	ld	s2,0(sp)
    80207a68:	64a2                	ld	s1,8(sp)
    80207a6a:	6442                	ld	s0,16(sp)
    80207a6c:	60e2                	ld	ra,24(sp)
    80207a6e:	6105                	addi	sp,sp,32
    80207a70:	00004317          	auipc	t1,0x4
    80207a74:	fb830067          	jr	-72(t1) # 8020ba28 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h4058e459711b3a3cE>
    80207a78:	8526                	mv	a0,s1
    80207a7a:	00003097          	auipc	ra,0x3
    80207a7e:	fa2080e7          	jalr	-94(ra) # 8020aa1c <_ZN4core3fmt9Formatter15debug_upper_hex17h3e8dade1475f5ac4E>
    80207a82:	cd01                	beqz	a0,80207a9a <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d7fab38557da578E+0x56>
    80207a84:	854a                	mv	a0,s2
    80207a86:	85a6                	mv	a1,s1
    80207a88:	6902                	ld	s2,0(sp)
    80207a8a:	64a2                	ld	s1,8(sp)
    80207a8c:	6442                	ld	s0,16(sp)
    80207a8e:	60e2                	ld	ra,24(sp)
    80207a90:	6105                	addi	sp,sp,32
    80207a92:	00004317          	auipc	t1,0x4
    80207a96:	02430067          	jr	36(t1) # 8020bab6 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17ha3e3944a3800e444E>
    80207a9a:	854a                	mv	a0,s2
    80207a9c:	85a6                	mv	a1,s1
    80207a9e:	6902                	ld	s2,0(sp)
    80207aa0:	64a2                	ld	s1,8(sp)
    80207aa2:	6442                	ld	s0,16(sp)
    80207aa4:	60e2                	ld	ra,24(sp)
    80207aa6:	6105                	addi	sp,sp,32
    80207aa8:	00004317          	auipc	t1,0x4
    80207aac:	3a830067          	jr	936(t1) # 8020be50 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hb3d3df1644561841E>

0000000080207ab0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94273f55f1ed976eE>:
    80207ab0:	1101                	addi	sp,sp,-32
    80207ab2:	ec06                	sd	ra,24(sp)
    80207ab4:	e822                	sd	s0,16(sp)
    80207ab6:	e426                	sd	s1,8(sp)
    80207ab8:	e04a                	sd	s2,0(sp)
    80207aba:	1000                	addi	s0,sp,32
    80207abc:	00053903          	ld	s2,0(a0)
    80207ac0:	84ae                	mv	s1,a1
    80207ac2:	852e                	mv	a0,a1
    80207ac4:	00003097          	auipc	ra,0x3
    80207ac8:	f4e080e7          	jalr	-178(ra) # 8020aa12 <_ZN4core3fmt9Formatter15debug_lower_hex17hffada68515a2cdf7E>
    80207acc:	cd01                	beqz	a0,80207ae4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94273f55f1ed976eE+0x34>
    80207ace:	854a                	mv	a0,s2
    80207ad0:	85a6                	mv	a1,s1
    80207ad2:	6902                	ld	s2,0(sp)
    80207ad4:	64a2                	ld	s1,8(sp)
    80207ad6:	6442                	ld	s0,16(sp)
    80207ad8:	60e2                	ld	ra,24(sp)
    80207ada:	6105                	addi	sp,sp,32
    80207adc:	00004317          	auipc	t1,0x4
    80207ae0:	e4430067          	jr	-444(t1) # 8020b920 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h4bd6f5427c4ae7cfE>
    80207ae4:	8526                	mv	a0,s1
    80207ae6:	00003097          	auipc	ra,0x3
    80207aea:	f36080e7          	jalr	-202(ra) # 8020aa1c <_ZN4core3fmt9Formatter15debug_upper_hex17h3e8dade1475f5ac4E>
    80207aee:	cd01                	beqz	a0,80207b06 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h94273f55f1ed976eE+0x56>
    80207af0:	854a                	mv	a0,s2
    80207af2:	85a6                	mv	a1,s1
    80207af4:	6902                	ld	s2,0(sp)
    80207af6:	64a2                	ld	s1,8(sp)
    80207af8:	6442                	ld	s0,16(sp)
    80207afa:	60e2                	ld	ra,24(sp)
    80207afc:	6105                	addi	sp,sp,32
    80207afe:	00004317          	auipc	t1,0x4
    80207b02:	ea630067          	jr	-346(t1) # 8020b9a4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h83bb5ea9d368b4beE>
    80207b06:	854a                	mv	a0,s2
    80207b08:	85a6                	mv	a1,s1
    80207b0a:	6902                	ld	s2,0(sp)
    80207b0c:	64a2                	ld	s1,8(sp)
    80207b0e:	6442                	ld	s0,16(sp)
    80207b10:	60e2                	ld	ra,24(sp)
    80207b12:	6105                	addi	sp,sp,32
    80207b14:	00004317          	auipc	t1,0x4
    80207b18:	26c30067          	jr	620(t1) # 8020bd80 <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17ha48a39a8a097abc0E>

0000000080207b1c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha332d74eef9de67cE>:
    80207b1c:	1141                	addi	sp,sp,-16
    80207b1e:	e406                	sd	ra,8(sp)
    80207b20:	e022                	sd	s0,0(sp)
    80207b22:	0800                	addi	s0,sp,16
    80207b24:	6110                	ld	a2,0(a0)
    80207b26:	6514                	ld	a3,8(a0)
    80207b28:	872e                	mv	a4,a1
    80207b2a:	8532                	mv	a0,a2
    80207b2c:	85b6                	mv	a1,a3
    80207b2e:	863a                	mv	a2,a4
    80207b30:	6402                	ld	s0,0(sp)
    80207b32:	60a2                	ld	ra,8(sp)
    80207b34:	0141                	addi	sp,sp,16
    80207b36:	00003317          	auipc	t1,0x3
    80207b3a:	fc830067          	jr	-56(t1) # 8020aafe <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE>

0000000080207b3e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haf678ba88b1cd76aE>:
    80207b3e:	711d                	addi	sp,sp,-96
    80207b40:	ec86                	sd	ra,88(sp)
    80207b42:	e8a2                	sd	s0,80(sp)
    80207b44:	e4a6                	sd	s1,72(sp)
    80207b46:	e0ca                	sd	s2,64(sp)
    80207b48:	fc4e                	sd	s3,56(sp)
    80207b4a:	f852                	sd	s4,48(sp)
    80207b4c:	f456                	sd	s5,40(sp)
    80207b4e:	f05a                	sd	s6,32(sp)
    80207b50:	1080                	addi	s0,sp,96
    80207b52:	00053a03          	ld	s4,0(a0)
    80207b56:	852e                	mv	a0,a1
    80207b58:	00003097          	auipc	ra,0x3
    80207b5c:	f28080e7          	jalr	-216(ra) # 8020aa80 <_ZN4core3fmt9Formatter10debug_list17hc79335143a2bab08E>
    80207b60:	fab43423          	sd	a1,-88(s0)
    80207b64:	faa43023          	sd	a0,-96(s0)
    80207b68:	001a0a93          	addi	s5,s4,1
    80207b6c:	fb443c23          	sd	s4,-72(s0)

0000000080207b70 <.LBB9_1>:
    80207b70:	00008497          	auipc	s1,0x8
    80207b74:	0f848493          	addi	s1,s1,248 # 8020fc68 <anon.bb0fdcfdfbb943db6b4744f30d662cc5.3.llvm.12230177447416708706>
    80207b78:	fa040913          	addi	s2,s0,-96
    80207b7c:	fb840993          	addi	s3,s0,-72
    80207b80:	854a                	mv	a0,s2
    80207b82:	85ce                	mv	a1,s3
    80207b84:	8626                	mv	a2,s1
    80207b86:	00002097          	auipc	ra,0x2
    80207b8a:	250080e7          	jalr	592(ra) # 80209dd6 <_ZN4core3fmt8builders8DebugSet5entry17hbbfe70946be6c10eE>
    80207b8e:	002a0b13          	addi	s6,s4,2
    80207b92:	fb543c23          	sd	s5,-72(s0)
    80207b96:	854a                	mv	a0,s2
    80207b98:	85ce                	mv	a1,s3
    80207b9a:	8626                	mv	a2,s1
    80207b9c:	00002097          	auipc	ra,0x2
    80207ba0:	23a080e7          	jalr	570(ra) # 80209dd6 <_ZN4core3fmt8builders8DebugSet5entry17hbbfe70946be6c10eE>
    80207ba4:	0a0d                	addi	s4,s4,3
    80207ba6:	fb643c23          	sd	s6,-72(s0)
    80207baa:	854a                	mv	a0,s2
    80207bac:	85ce                	mv	a1,s3
    80207bae:	8626                	mv	a2,s1
    80207bb0:	00002097          	auipc	ra,0x2
    80207bb4:	226080e7          	jalr	550(ra) # 80209dd6 <_ZN4core3fmt8builders8DebugSet5entry17hbbfe70946be6c10eE>
    80207bb8:	fb443c23          	sd	s4,-72(s0)
    80207bbc:	854a                	mv	a0,s2
    80207bbe:	85ce                	mv	a1,s3
    80207bc0:	8626                	mv	a2,s1
    80207bc2:	00002097          	auipc	ra,0x2
    80207bc6:	214080e7          	jalr	532(ra) # 80209dd6 <_ZN4core3fmt8builders8DebugSet5entry17hbbfe70946be6c10eE>
    80207bca:	854a                	mv	a0,s2
    80207bcc:	00002097          	auipc	ra,0x2
    80207bd0:	224080e7          	jalr	548(ra) # 80209df0 <_ZN4core3fmt8builders9DebugList6finish17he6bd1c52112a8038E>
    80207bd4:	7b02                	ld	s6,32(sp)
    80207bd6:	7aa2                	ld	s5,40(sp)
    80207bd8:	7a42                	ld	s4,48(sp)
    80207bda:	79e2                	ld	s3,56(sp)
    80207bdc:	6906                	ld	s2,64(sp)
    80207bde:	64a6                	ld	s1,72(sp)
    80207be0:	6446                	ld	s0,80(sp)
    80207be2:	60e6                	ld	ra,88(sp)
    80207be4:	6125                	addi	sp,sp,96
    80207be6:	8082                	ret

0000000080207be8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>:
    80207be8:	1101                	addi	sp,sp,-32
    80207bea:	ec06                	sd	ra,24(sp)
    80207bec:	e822                	sd	s0,16(sp)
    80207bee:	e426                	sd	s1,8(sp)
    80207bf0:	e04a                	sd	s2,0(sp)
    80207bf2:	1000                	addi	s0,sp,32
    80207bf4:	84ae                	mv	s1,a1
    80207bf6:	892a                	mv	s2,a0
    80207bf8:	852e                	mv	a0,a1
    80207bfa:	00003097          	auipc	ra,0x3
    80207bfe:	e18080e7          	jalr	-488(ra) # 8020aa12 <_ZN4core3fmt9Formatter15debug_lower_hex17hffada68515a2cdf7E>
    80207c02:	cd01                	beqz	a0,80207c1a <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x32>
    80207c04:	854a                	mv	a0,s2
    80207c06:	85a6                	mv	a1,s1
    80207c08:	6902                	ld	s2,0(sp)
    80207c0a:	64a2                	ld	s1,8(sp)
    80207c0c:	6442                	ld	s0,16(sp)
    80207c0e:	60e2                	ld	ra,24(sp)
    80207c10:	6105                	addi	sp,sp,32
    80207c12:	00004317          	auipc	t1,0x4
    80207c16:	f9e30067          	jr	-98(t1) # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80207c1a:	8526                	mv	a0,s1
    80207c1c:	00003097          	auipc	ra,0x3
    80207c20:	e00080e7          	jalr	-512(ra) # 8020aa1c <_ZN4core3fmt9Formatter15debug_upper_hex17h3e8dade1475f5ac4E>
    80207c24:	cd01                	beqz	a0,80207c3c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x54>
    80207c26:	854a                	mv	a0,s2
    80207c28:	85a6                	mv	a1,s1
    80207c2a:	6902                	ld	s2,0(sp)
    80207c2c:	64a2                	ld	s1,8(sp)
    80207c2e:	6442                	ld	s0,16(sp)
    80207c30:	60e2                	ld	ra,24(sp)
    80207c32:	6105                	addi	sp,sp,32
    80207c34:	00004317          	auipc	t1,0x4
    80207c38:	ffc30067          	jr	-4(t1) # 8020bc30 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E>
    80207c3c:	854a                	mv	a0,s2
    80207c3e:	85a6                	mv	a1,s1
    80207c40:	6902                	ld	s2,0(sp)
    80207c42:	64a2                	ld	s1,8(sp)
    80207c44:	6442                	ld	s0,16(sp)
    80207c46:	60e2                	ld	ra,24(sp)
    80207c48:	6105                	addi	sp,sp,32
    80207c4a:	00004317          	auipc	t1,0x4
    80207c4e:	57e30067          	jr	1406(t1) # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>

0000000080207c52 <_ZN3rvm4arch4trap12trap_handler17h0bc1bcbfbaee8230E>:
    80207c52:	7155                	addi	sp,sp,-208
    80207c54:	e586                	sd	ra,200(sp)
    80207c56:	e1a2                	sd	s0,192(sp)
    80207c58:	fd26                	sd	s1,184(sp)
    80207c5a:	f94a                	sd	s2,176(sp)
    80207c5c:	0980                	addi	s0,sp,208
    80207c5e:	f2a43c23          	sd	a0,-200(s0)
    80207c62:	142024f3          	csrr	s1,scause
    80207c66:	f4943023          	sd	s1,-192(s0)
    80207c6a:	14302573          	csrr	a0,stval
    80207c6e:	f4a43423          	sd	a0,-184(s0)
    80207c72:	f4040513          	addi	a0,s0,-192
    80207c76:	00001097          	auipc	ra,0x1
    80207c7a:	492080e7          	jalr	1170(ra) # 80209108 <_ZN5riscv8register6scause6Scause4code17h35ab447f086279feE>
    80207c7e:	55fd                	li	a1,-1
    80207c80:	5695db63          	bge	a1,s1,802081f6 <.LBB1_53+0x1e>
    80207c84:	00001097          	auipc	ra,0x1
    80207c88:	342080e7          	jalr	834(ra) # 80208fc6 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE>
    80207c8c:	0ff57513          	andi	a0,a0,255
    80207c90:	4589                	li	a1,2
    80207c92:	16b50063          	beq	a0,a1,80207df2 <.LBB1_31>
    80207c96:	45a5                	li	a1,9
    80207c98:	56b51363          	bne	a0,a1,802081fe <.LBB1_54>
    80207c9c:	f3843603          	ld	a2,-200(s0)
    80207ca0:	10164503          	lbu	a0,257(a2)
    80207ca4:	10064583          	lbu	a1,256(a2)
    80207ca8:	10364683          	lbu	a3,259(a2)
    80207cac:	10264703          	lbu	a4,258(a2)
    80207cb0:	0522                	slli	a0,a0,0x8
    80207cb2:	8d4d                	or	a0,a0,a1
    80207cb4:	00869593          	slli	a1,a3,0x8
    80207cb8:	8dd9                	or	a1,a1,a4
    80207cba:	05c2                	slli	a1,a1,0x10
    80207cbc:	8d4d                	or	a0,a0,a1
    80207cbe:	10564583          	lbu	a1,261(a2)
    80207cc2:	10464683          	lbu	a3,260(a2)
    80207cc6:	10764703          	lbu	a4,263(a2)
    80207cca:	10664783          	lbu	a5,262(a2)
    80207cce:	05a2                	slli	a1,a1,0x8
    80207cd0:	8dd5                	or	a1,a1,a3
    80207cd2:	00871693          	slli	a3,a4,0x8
    80207cd6:	8edd                	or	a3,a3,a5
    80207cd8:	06c2                	slli	a3,a3,0x10
    80207cda:	8dd5                	or	a1,a1,a3
    80207cdc:	1582                	slli	a1,a1,0x20
    80207cde:	8d4d                	or	a0,a0,a1
    80207ce0:	0511                	addi	a0,a0,4
    80207ce2:	10a60023          	sb	a0,256(a2)
    80207ce6:	03055593          	srli	a1,a0,0x30
    80207cea:	10b60323          	sb	a1,262(a2)
    80207cee:	03855593          	srli	a1,a0,0x38
    80207cf2:	10b603a3          	sb	a1,263(a2)
    80207cf6:	02055593          	srli	a1,a0,0x20
    80207cfa:	10b60223          	sb	a1,260(a2)
    80207cfe:	02855593          	srli	a1,a0,0x28
    80207d02:	10b602a3          	sb	a1,261(a2)
    80207d06:	01055593          	srli	a1,a0,0x10
    80207d0a:	10b60123          	sb	a1,258(a2)
    80207d0e:	01855593          	srli	a1,a0,0x18
    80207d12:	10b601a3          	sb	a1,259(a2)
    80207d16:	8121                	srli	a0,a0,0x8
    80207d18:	10a600a3          	sb	a0,257(a2)

0000000080207d1c <.LBB1_25>:
    80207d1c:	0021b917          	auipc	s2,0x21b
    80207d20:	46c90913          	addi	s2,s2,1132 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    80207d24:	00093503          	ld	a0,0(s2)
    80207d28:	4591                	li	a1,4
    80207d2a:	06b56e63          	bltu	a0,a1,80207da6 <.LBB1_30+0x1a>
    80207d2e:	f4043503          	ld	a0,-192(s0)
    80207d32:	10060593          	addi	a1,a2,256
    80207d36:	f6a43423          	sd	a0,-152(s0)
    80207d3a:	f6840513          	addi	a0,s0,-152
    80207d3e:	f6a43823          	sd	a0,-144(s0)

0000000080207d42 <.LBB1_26>:
    80207d42:	00000517          	auipc	a0,0x0
    80207d46:	ea650513          	addi	a0,a0,-346 # 80207be8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>
    80207d4a:	f6a43c23          	sd	a0,-136(s0)
    80207d4e:	f8b43023          	sd	a1,-128(s0)

0000000080207d52 <.LBB1_27>:
    80207d52:	00004517          	auipc	a0,0x4
    80207d56:	e5e50513          	addi	a0,a0,-418 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80207d5a:	f8a43423          	sd	a0,-120(s0)

0000000080207d5e <.LBB1_28>:
    80207d5e:	00008517          	auipc	a0,0x8
    80207d62:	a2250513          	addi	a0,a0,-1502 # 8020f780 <.Lanon.25533a3652f78571ae0c38287448f246.15>
    80207d66:	faa43023          	sd	a0,-96(s0)
    80207d6a:	4509                	li	a0,2
    80207d6c:	faa43423          	sd	a0,-88(s0)

0000000080207d70 <.LBB1_29>:
    80207d70:	00008597          	auipc	a1,0x8
    80207d74:	a3058593          	addi	a1,a1,-1488 # 8020f7a0 <.Lanon.25533a3652f78571ae0c38287448f246.16>
    80207d78:	fab43823          	sd	a1,-80(s0)
    80207d7c:	faa43c23          	sd	a0,-72(s0)
    80207d80:	f7040593          	addi	a1,s0,-144
    80207d84:	fcb43023          	sd	a1,-64(s0)
    80207d88:	fca43423          	sd	a0,-56(s0)

0000000080207d8c <.LBB1_30>:
    80207d8c:	00008617          	auipc	a2,0x8
    80207d90:	a8460613          	addi	a2,a2,-1404 # 8020f810 <.Lanon.25533a3652f78571ae0c38287448f246.17>
    80207d94:	fa040513          	addi	a0,s0,-96
    80207d98:	4591                	li	a1,4
    80207d9a:	00002097          	auipc	ra,0x2
    80207d9e:	80a080e7          	jalr	-2038(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80207da2:	f3843603          	ld	a2,-200(s0)
    80207da6:	08964503          	lbu	a0,137(a2)
    80207daa:	08864583          	lbu	a1,136(a2)
    80207dae:	08b64683          	lbu	a3,139(a2)
    80207db2:	08a64703          	lbu	a4,138(a2)
    80207db6:	0522                	slli	a0,a0,0x8
    80207db8:	8d4d                	or	a0,a0,a1
    80207dba:	00869593          	slli	a1,a3,0x8
    80207dbe:	8dd9                	or	a1,a1,a4
    80207dc0:	05c2                	slli	a1,a1,0x10
    80207dc2:	8d4d                	or	a0,a0,a1
    80207dc4:	08d64583          	lbu	a1,141(a2)
    80207dc8:	08c64683          	lbu	a3,140(a2)
    80207dcc:	08f64703          	lbu	a4,143(a2)
    80207dd0:	08e64783          	lbu	a5,142(a2)
    80207dd4:	05a2                	slli	a1,a1,0x8
    80207dd6:	8dd5                	or	a1,a1,a3
    80207dd8:	00871693          	slli	a3,a4,0x8
    80207ddc:	8edd                	or	a3,a3,a5
    80207dde:	06c2                	slli	a3,a3,0x10
    80207de0:	8dd5                	or	a1,a1,a3
    80207de2:	1582                	slli	a1,a1,0x20
    80207de4:	00a5e8b3          	or	a7,a1,a0
    80207de8:	4521                	li	a0,8
    80207dea:	16a89c63          	bne	a7,a0,80207f62 <.LBB1_40+0x5a>
    80207dee:	4501                	li	a0,0
    80207df0:	a4c5                	j	802080d0 <.LBB1_44+0x2e>

0000000080207df2 <.LBB1_31>:
    80207df2:	0021b497          	auipc	s1,0x21b
    80207df6:	39648493          	addi	s1,s1,918 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    80207dfa:	6088                	ld	a0,0(s1)
    80207dfc:	490d                	li	s2,3
    80207dfe:	07256e63          	bltu	a0,s2,80207e7a <.LBB1_36+0x16>
    80207e02:	f4043503          	ld	a0,-192(s0)
    80207e06:	f3843583          	ld	a1,-200(s0)
    80207e0a:	f6a43423          	sd	a0,-152(s0)
    80207e0e:	10058513          	addi	a0,a1,256
    80207e12:	f6840593          	addi	a1,s0,-152
    80207e16:	f6b43823          	sd	a1,-144(s0)

0000000080207e1a <.LBB1_32>:
    80207e1a:	00000597          	auipc	a1,0x0
    80207e1e:	dce58593          	addi	a1,a1,-562 # 80207be8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>
    80207e22:	f6b43c23          	sd	a1,-136(s0)
    80207e26:	f8a43023          	sd	a0,-128(s0)

0000000080207e2a <.LBB1_33>:
    80207e2a:	00004517          	auipc	a0,0x4
    80207e2e:	d8650513          	addi	a0,a0,-634 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80207e32:	f8a43423          	sd	a0,-120(s0)

0000000080207e36 <.LBB1_34>:
    80207e36:	00008517          	auipc	a0,0x8
    80207e3a:	94a50513          	addi	a0,a0,-1718 # 8020f780 <.Lanon.25533a3652f78571ae0c38287448f246.15>
    80207e3e:	faa43023          	sd	a0,-96(s0)
    80207e42:	4509                	li	a0,2
    80207e44:	faa43423          	sd	a0,-88(s0)

0000000080207e48 <.LBB1_35>:
    80207e48:	00008597          	auipc	a1,0x8
    80207e4c:	95858593          	addi	a1,a1,-1704 # 8020f7a0 <.Lanon.25533a3652f78571ae0c38287448f246.16>
    80207e50:	fab43823          	sd	a1,-80(s0)
    80207e54:	faa43c23          	sd	a0,-72(s0)
    80207e58:	f7040593          	addi	a1,s0,-144
    80207e5c:	fcb43023          	sd	a1,-64(s0)
    80207e60:	fca43423          	sd	a0,-56(s0)

0000000080207e64 <.LBB1_36>:
    80207e64:	00008617          	auipc	a2,0x8
    80207e68:	9e460613          	addi	a2,a2,-1564 # 8020f848 <.Lanon.25533a3652f78571ae0c38287448f246.18>
    80207e6c:	fa040513          	addi	a0,s0,-96
    80207e70:	458d                	li	a1,3
    80207e72:	00001097          	auipc	ra,0x1
    80207e76:	732080e7          	jalr	1842(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80207e7a:	20502573          	csrr	a0,htvec
    80207e7e:	f4a43823          	sd	a0,-176(s0)
    80207e82:	20002573          	csrr	a0,hstatus
    80207e86:	f4a43c23          	sd	a0,-168(s0)
    80207e8a:	10056513          	ori	a0,a0,256
    80207e8e:	20051073          	csrw	hstatus,a0
    80207e92:	60002573          	csrr	a0,0x600
    80207e96:	f6a43023          	sd	a0,-160(s0)
    80207e9a:	10002573          	csrr	a0,sstatus
    80207e9e:	f6a43423          	sd	a0,-152(s0)
    80207ea2:	6088                	ld	a0,0(s1)
    80207ea4:	27257963          	bgeu	a0,s2,80208116 <.LBB1_44+0x74>
    80207ea8:	6088                	ld	a0,0(s1)
    80207eaa:	490d                	li	s2,3
    80207eac:	2d257f63          	bgeu	a0,s2,8020818a <.LBB1_49+0x1e>
    80207eb0:	6088                	ld	a0,0(s1)
    80207eb2:	07256663          	bltu	a0,s2,80207f1e <.LBB1_40+0x16>
    80207eb6:	f3843503          	ld	a0,-200(s0)
    80207eba:	11050593          	addi	a1,a0,272
    80207ebe:	10850513          	addi	a0,a0,264
    80207ec2:	f6b43823          	sd	a1,-144(s0)

0000000080207ec6 <.LBB1_37>:
    80207ec6:	00004597          	auipc	a1,0x4
    80207eca:	c7e58593          	addi	a1,a1,-898 # 8020bb44 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17hbb0b765cca604131E>
    80207ece:	f6b43c23          	sd	a1,-136(s0)
    80207ed2:	f8a43023          	sd	a0,-128(s0)
    80207ed6:	f8b43423          	sd	a1,-120(s0)

0000000080207eda <.LBB1_38>:
    80207eda:	00008517          	auipc	a0,0x8
    80207ede:	b0e50513          	addi	a0,a0,-1266 # 8020f9e8 <.Lanon.25533a3652f78571ae0c38287448f246.30>
    80207ee2:	faa43023          	sd	a0,-96(s0)
    80207ee6:	4509                	li	a0,2
    80207ee8:	faa43423          	sd	a0,-88(s0)

0000000080207eec <.LBB1_39>:
    80207eec:	00008597          	auipc	a1,0x8
    80207ef0:	9c458593          	addi	a1,a1,-1596 # 8020f8b0 <.Lanon.25533a3652f78571ae0c38287448f246.22>
    80207ef4:	fab43823          	sd	a1,-80(s0)
    80207ef8:	faa43c23          	sd	a0,-72(s0)
    80207efc:	f7040593          	addi	a1,s0,-144
    80207f00:	fcb43023          	sd	a1,-64(s0)
    80207f04:	fca43423          	sd	a0,-56(s0)

0000000080207f08 <.LBB1_40>:
    80207f08:	00008617          	auipc	a2,0x8
    80207f0c:	b0060613          	addi	a2,a2,-1280 # 8020fa08 <.Lanon.25533a3652f78571ae0c38287448f246.31>
    80207f10:	fa040513          	addi	a0,s0,-96
    80207f14:	458d                	li	a1,3
    80207f16:	00001097          	auipc	ra,0x1
    80207f1a:	68e080e7          	jalr	1678(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80207f1e:	f5043503          	ld	a0,-176(s0)
    80207f22:	f3843583          	ld	a1,-200(s0)
    80207f26:	10a58023          	sb	a0,256(a1)
    80207f2a:	03855613          	srli	a2,a0,0x38
    80207f2e:	10c583a3          	sb	a2,263(a1)
    80207f32:	03055613          	srli	a2,a0,0x30
    80207f36:	10c58323          	sb	a2,262(a1)
    80207f3a:	02855613          	srli	a2,a0,0x28
    80207f3e:	10c582a3          	sb	a2,261(a1)
    80207f42:	02055613          	srli	a2,a0,0x20
    80207f46:	10c58223          	sb	a2,260(a1)
    80207f4a:	01855613          	srli	a2,a0,0x18
    80207f4e:	10c581a3          	sb	a2,259(a1)
    80207f52:	01055613          	srli	a2,a0,0x10
    80207f56:	10c58123          	sb	a2,258(a1)
    80207f5a:	8121                	srli	a0,a0,0x8
    80207f5c:	10a580a3          	sb	a0,257(a1)
    80207f60:	a26d                	j	8020810a <.LBB1_44+0x68>
    80207f62:	05164503          	lbu	a0,81(a2)
    80207f66:	05064583          	lbu	a1,80(a2)
    80207f6a:	05364683          	lbu	a3,83(a2)
    80207f6e:	05264703          	lbu	a4,82(a2)
    80207f72:	0522                	slli	a0,a0,0x8
    80207f74:	8d4d                	or	a0,a0,a1
    80207f76:	00869593          	slli	a1,a3,0x8
    80207f7a:	8dd9                	or	a1,a1,a4
    80207f7c:	05c2                	slli	a1,a1,0x10
    80207f7e:	8d4d                	or	a0,a0,a1
    80207f80:	05564583          	lbu	a1,85(a2)
    80207f84:	05464683          	lbu	a3,84(a2)
    80207f88:	05764703          	lbu	a4,87(a2)
    80207f8c:	05664783          	lbu	a5,86(a2)
    80207f90:	05a2                	slli	a1,a1,0x8
    80207f92:	8dd5                	or	a1,a1,a3
    80207f94:	00871693          	slli	a3,a4,0x8
    80207f98:	8edd                	or	a3,a3,a5
    80207f9a:	06c2                	slli	a3,a3,0x10
    80207f9c:	8dd5                	or	a1,a1,a3
    80207f9e:	1582                	slli	a1,a1,0x20
    80207fa0:	8d4d                	or	a0,a0,a1
    80207fa2:	05964583          	lbu	a1,89(a2)
    80207fa6:	05864683          	lbu	a3,88(a2)
    80207faa:	05b64703          	lbu	a4,91(a2)
    80207fae:	05a64783          	lbu	a5,90(a2)
    80207fb2:	05a2                	slli	a1,a1,0x8
    80207fb4:	8dd5                	or	a1,a1,a3
    80207fb6:	00871693          	slli	a3,a4,0x8
    80207fba:	8edd                	or	a3,a3,a5
    80207fbc:	06c2                	slli	a3,a3,0x10
    80207fbe:	8dd5                	or	a1,a1,a3
    80207fc0:	05d64683          	lbu	a3,93(a2)
    80207fc4:	05c64703          	lbu	a4,92(a2)
    80207fc8:	05f64783          	lbu	a5,95(a2)
    80207fcc:	05e64483          	lbu	s1,94(a2)
    80207fd0:	06a2                	slli	a3,a3,0x8
    80207fd2:	8ed9                	or	a3,a3,a4
    80207fd4:	00879713          	slli	a4,a5,0x8
    80207fd8:	8f45                	or	a4,a4,s1
    80207fda:	0742                	slli	a4,a4,0x10
    80207fdc:	8ed9                	or	a3,a3,a4
    80207fde:	1682                	slli	a3,a3,0x20
    80207fe0:	8dd5                	or	a1,a1,a3
    80207fe2:	06164683          	lbu	a3,97(a2)
    80207fe6:	06064703          	lbu	a4,96(a2)
    80207fea:	06364783          	lbu	a5,99(a2)
    80207fee:	06264483          	lbu	s1,98(a2)
    80207ff2:	06a2                	slli	a3,a3,0x8
    80207ff4:	8ed9                	or	a3,a3,a4
    80207ff6:	00879713          	slli	a4,a5,0x8
    80207ffa:	8f45                	or	a4,a4,s1
    80207ffc:	0742                	slli	a4,a4,0x10
    80207ffe:	8ed9                	or	a3,a3,a4
    80208000:	06564703          	lbu	a4,101(a2)
    80208004:	06464783          	lbu	a5,100(a2)
    80208008:	06764483          	lbu	s1,103(a2)
    8020800c:	06664603          	lbu	a2,102(a2)
    80208010:	0722                	slli	a4,a4,0x8
    80208012:	8f5d                	or	a4,a4,a5
    80208014:	00849793          	slli	a5,s1,0x8
    80208018:	8e5d                	or	a2,a2,a5
    8020801a:	0642                	slli	a2,a2,0x10
    8020801c:	8e59                	or	a2,a2,a4
    8020801e:	1602                	slli	a2,a2,0x20
    80208020:	8e55                	or	a2,a2,a3
    80208022:	f5143823          	sd	a7,-176(s0)
    80208026:	f4a43c23          	sd	a0,-168(s0)
    8020802a:	f6b43023          	sd	a1,-160(s0)
    8020802e:	f6c43423          	sd	a2,-152(s0)
    80208032:	00093683          	ld	a3,0(s2)
    80208036:	4709                	li	a4,2
    80208038:	08e6e863          	bltu	a3,a4,802080c8 <.LBB1_44+0x26>
    8020803c:	f5040513          	addi	a0,s0,-176
    80208040:	faa43023          	sd	a0,-96(s0)

0000000080208044 <.LBB1_41>:
    80208044:	00004517          	auipc	a0,0x4
    80208048:	b6c50513          	addi	a0,a0,-1172 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    8020804c:	faa43423          	sd	a0,-88(s0)
    80208050:	f5840593          	addi	a1,s0,-168
    80208054:	fab43823          	sd	a1,-80(s0)
    80208058:	faa43c23          	sd	a0,-72(s0)
    8020805c:	f6040593          	addi	a1,s0,-160
    80208060:	fcb43023          	sd	a1,-64(s0)
    80208064:	fca43423          	sd	a0,-56(s0)
    80208068:	f6840593          	addi	a1,s0,-152
    8020806c:	fcb43823          	sd	a1,-48(s0)
    80208070:	fca43c23          	sd	a0,-40(s0)

0000000080208074 <.LBB1_42>:
    80208074:	00008517          	auipc	a0,0x8
    80208078:	c1c50513          	addi	a0,a0,-996 # 8020fc90 <anon.bb0fdcfdfbb943db6b4744f30d662cc5.7.llvm.12230177447416708706>
    8020807c:	f6a43823          	sd	a0,-144(s0)
    80208080:	4511                	li	a0,4
    80208082:	f6a43c23          	sd	a0,-136(s0)

0000000080208086 <.LBB1_43>:
    80208086:	00008597          	auipc	a1,0x8
    8020808a:	c4a58593          	addi	a1,a1,-950 # 8020fcd0 <anon.bb0fdcfdfbb943db6b4744f30d662cc5.8.llvm.12230177447416708706>
    8020808e:	f8b43023          	sd	a1,-128(s0)
    80208092:	f8a43423          	sd	a0,-120(s0)
    80208096:	fa040593          	addi	a1,s0,-96
    8020809a:	f8b43823          	sd	a1,-112(s0)
    8020809e:	f8a43c23          	sd	a0,-104(s0)

00000000802080a2 <.LBB1_44>:
    802080a2:	00008617          	auipc	a2,0x8
    802080a6:	d4660613          	addi	a2,a2,-698 # 8020fde8 <anon.bb0fdcfdfbb943db6b4744f30d662cc5.11.llvm.12230177447416708706>
    802080aa:	f7040513          	addi	a0,s0,-144
    802080ae:	4589                	li	a1,2
    802080b0:	00001097          	auipc	ra,0x1
    802080b4:	4f4080e7          	jalr	1268(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    802080b8:	f5843503          	ld	a0,-168(s0)
    802080bc:	f6043583          	ld	a1,-160(s0)
    802080c0:	f6843603          	ld	a2,-152(s0)
    802080c4:	f5043883          	ld	a7,-176(s0)
    802080c8:	00000073          	ecall
    802080cc:	f3843603          	ld	a2,-200(s0)
    802080d0:	04a60823          	sb	a0,80(a2)
    802080d4:	03855593          	srli	a1,a0,0x38
    802080d8:	04b60ba3          	sb	a1,87(a2)
    802080dc:	03055593          	srli	a1,a0,0x30
    802080e0:	04b60b23          	sb	a1,86(a2)
    802080e4:	02855593          	srli	a1,a0,0x28
    802080e8:	04b60aa3          	sb	a1,85(a2)
    802080ec:	02055593          	srli	a1,a0,0x20
    802080f0:	04b60a23          	sb	a1,84(a2)
    802080f4:	01855593          	srli	a1,a0,0x18
    802080f8:	04b609a3          	sb	a1,83(a2)
    802080fc:	01055593          	srli	a1,a0,0x10
    80208100:	04b60923          	sb	a1,82(a2)
    80208104:	8121                	srli	a0,a0,0x8
    80208106:	04a608a3          	sb	a0,81(a2)
    8020810a:	794a                	ld	s2,176(sp)
    8020810c:	74ea                	ld	s1,184(sp)
    8020810e:	640e                	ld	s0,192(sp)
    80208110:	60ae                	ld	ra,200(sp)
    80208112:	6169                	addi	sp,sp,208
    80208114:	8082                	ret
    80208116:	f5040513          	addi	a0,s0,-176
    8020811a:	f6a43823          	sd	a0,-144(s0)

000000008020811e <.LBB1_45>:
    8020811e:	00004517          	auipc	a0,0x4
    80208122:	a9250513          	addi	a0,a0,-1390 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80208126:	f6a43c23          	sd	a0,-136(s0)
    8020812a:	f5840513          	addi	a0,s0,-168
    8020812e:	f8a43023          	sd	a0,-128(s0)

0000000080208132 <.LBB1_46>:
    80208132:	00004517          	auipc	a0,0x4
    80208136:	a1250513          	addi	a0,a0,-1518 # 8020bb44 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17hbb0b765cca604131E>
    8020813a:	f8a43423          	sd	a0,-120(s0)

000000008020813e <.LBB1_47>:
    8020813e:	00007517          	auipc	a0,0x7
    80208142:	75250513          	addi	a0,a0,1874 # 8020f890 <.Lanon.25533a3652f78571ae0c38287448f246.21>
    80208146:	faa43023          	sd	a0,-96(s0)
    8020814a:	4509                	li	a0,2
    8020814c:	faa43423          	sd	a0,-88(s0)

0000000080208150 <.LBB1_48>:
    80208150:	00007597          	auipc	a1,0x7
    80208154:	76058593          	addi	a1,a1,1888 # 8020f8b0 <.Lanon.25533a3652f78571ae0c38287448f246.22>
    80208158:	fab43823          	sd	a1,-80(s0)
    8020815c:	faa43c23          	sd	a0,-72(s0)
    80208160:	f7040593          	addi	a1,s0,-144
    80208164:	fcb43023          	sd	a1,-64(s0)
    80208168:	fca43423          	sd	a0,-56(s0)

000000008020816c <.LBB1_49>:
    8020816c:	00007617          	auipc	a2,0x7
    80208170:	7b460613          	addi	a2,a2,1972 # 8020f920 <.Lanon.25533a3652f78571ae0c38287448f246.23>
    80208174:	fa040513          	addi	a0,s0,-96
    80208178:	458d                	li	a1,3
    8020817a:	00001097          	auipc	ra,0x1
    8020817e:	42a080e7          	jalr	1066(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80208182:	6088                	ld	a0,0(s1)
    80208184:	490d                	li	s2,3
    80208186:	d32565e3          	bltu	a0,s2,80207eb0 <.LBB1_36+0x4c>
    8020818a:	f6040513          	addi	a0,s0,-160
    8020818e:	f6a43823          	sd	a0,-144(s0)

0000000080208192 <.LBB1_50>:
    80208192:	00004517          	auipc	a0,0x4
    80208196:	a1e50513          	addi	a0,a0,-1506 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    8020819a:	f6a43c23          	sd	a0,-136(s0)
    8020819e:	f6840593          	addi	a1,s0,-152
    802081a2:	f8b43023          	sd	a1,-128(s0)
    802081a6:	f8a43423          	sd	a0,-120(s0)

00000000802081aa <.LBB1_51>:
    802081aa:	00007517          	auipc	a0,0x7
    802081ae:	7be50513          	addi	a0,a0,1982 # 8020f968 <.Lanon.25533a3652f78571ae0c38287448f246.26>
    802081b2:	faa43023          	sd	a0,-96(s0)
    802081b6:	4509                	li	a0,2
    802081b8:	faa43423          	sd	a0,-88(s0)

00000000802081bc <.LBB1_52>:
    802081bc:	00007597          	auipc	a1,0x7
    802081c0:	6f458593          	addi	a1,a1,1780 # 8020f8b0 <.Lanon.25533a3652f78571ae0c38287448f246.22>
    802081c4:	fab43823          	sd	a1,-80(s0)
    802081c8:	faa43c23          	sd	a0,-72(s0)
    802081cc:	f7040593          	addi	a1,s0,-144
    802081d0:	fcb43023          	sd	a1,-64(s0)
    802081d4:	fca43423          	sd	a0,-56(s0)

00000000802081d8 <.LBB1_53>:
    802081d8:	00007617          	auipc	a2,0x7
    802081dc:	7b060613          	addi	a2,a2,1968 # 8020f988 <.Lanon.25533a3652f78571ae0c38287448f246.27>
    802081e0:	fa040513          	addi	a0,s0,-96
    802081e4:	458d                	li	a1,3
    802081e6:	00001097          	auipc	ra,0x1
    802081ea:	3be080e7          	jalr	958(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    802081ee:	6088                	ld	a0,0(s1)
    802081f0:	cd2573e3          	bgeu	a0,s2,80207eb6 <.LBB1_36+0x52>
    802081f4:	b32d                	j	80207f1e <.LBB1_40+0x16>
    802081f6:	00001097          	auipc	ra,0x1
    802081fa:	d26080e7          	jalr	-730(ra) # 80208f1c <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E>

00000000802081fe <.LBB1_54>:
    802081fe:	0021b517          	auipc	a0,0x21b
    80208202:	f8a50513          	addi	a0,a0,-118 # 80423188 <_ZN3log20MAX_LOG_LEVEL_FILTER17h509cbb1a0757769dE>
    80208206:	6108                	ld	a0,0(a0)
    80208208:	4491                	li	s1,4
    8020820a:	04956e63          	bltu	a0,s1,80208266 <.LBB1_58+0x16>
    8020820e:	f3840513          	addi	a0,s0,-200
    80208212:	f6a43823          	sd	a0,-144(s0)

0000000080208216 <.LBB1_55>:
    80208216:	ffffd517          	auipc	a0,0xffffd
    8020821a:	19050513          	addi	a0,a0,400 # 802053a6 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h672bf3d15558faf0E.llvm.955211479688712389>
    8020821e:	f6a43c23          	sd	a0,-136(s0)

0000000080208222 <.LBB1_56>:
    80208222:	00007517          	auipc	a0,0x7
    80208226:	34650513          	addi	a0,a0,838 # 8020f568 <.Lanon.25533a3652f78571ae0c38287448f246.1>
    8020822a:	faa43023          	sd	a0,-96(s0)
    8020822e:	4505                	li	a0,1
    80208230:	faa43423          	sd	a0,-88(s0)

0000000080208234 <.LBB1_57>:
    80208234:	00007597          	auipc	a1,0x7
    80208238:	34458593          	addi	a1,a1,836 # 8020f578 <.Lanon.25533a3652f78571ae0c38287448f246.2>
    8020823c:	fab43823          	sd	a1,-80(s0)
    80208240:	faa43c23          	sd	a0,-72(s0)
    80208244:	f7040593          	addi	a1,s0,-144
    80208248:	fcb43023          	sd	a1,-64(s0)
    8020824c:	fca43423          	sd	a0,-56(s0)

0000000080208250 <.LBB1_58>:
    80208250:	00007617          	auipc	a2,0x7
    80208254:	3a060613          	addi	a2,a2,928 # 8020f5f0 <.Lanon.25533a3652f78571ae0c38287448f246.5>
    80208258:	fa040513          	addi	a0,s0,-96
    8020825c:	4591                	li	a1,4
    8020825e:	00001097          	auipc	ra,0x1
    80208262:	346080e7          	jalr	838(ra) # 802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>
    80208266:	f4043503          	ld	a0,-192(s0)
    8020826a:	f3843583          	ld	a1,-200(s0)
    8020826e:	f6a43423          	sd	a0,-152(s0)
    80208272:	10058513          	addi	a0,a1,256
    80208276:	f6840593          	addi	a1,s0,-152
    8020827a:	fab43023          	sd	a1,-96(s0)

000000008020827e <.LBB1_59>:
    8020827e:	00000597          	auipc	a1,0x0
    80208282:	96a58593          	addi	a1,a1,-1686 # 80207be8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>
    80208286:	fab43423          	sd	a1,-88(s0)
    8020828a:	f4840593          	addi	a1,s0,-184
    8020828e:	fab43823          	sd	a1,-80(s0)

0000000080208292 <.LBB1_60>:
    80208292:	00004597          	auipc	a1,0x4
    80208296:	91e58593          	addi	a1,a1,-1762 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    8020829a:	fab43c23          	sd	a1,-72(s0)
    8020829e:	fca43023          	sd	a0,-64(s0)

00000000802082a2 <.LBB1_61>:
    802082a2:	00004517          	auipc	a0,0x4
    802082a6:	90e50513          	addi	a0,a0,-1778 # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    802082aa:	fca43423          	sd	a0,-56(s0)

00000000802082ae <.LBB1_62>:
    802082ae:	00007517          	auipc	a0,0x7
    802082b2:	3b250513          	addi	a0,a0,946 # 8020f660 <.Lanon.25533a3652f78571ae0c38287448f246.10>
    802082b6:	f6a43823          	sd	a0,-144(s0)
    802082ba:	f6943c23          	sd	s1,-136(s0)

00000000802082be <.LBB1_63>:
    802082be:	00007517          	auipc	a0,0x7
    802082c2:	3e250513          	addi	a0,a0,994 # 8020f6a0 <.Lanon.25533a3652f78571ae0c38287448f246.11>
    802082c6:	f8a43023          	sd	a0,-128(s0)
    802082ca:	450d                	li	a0,3
    802082cc:	f8a43423          	sd	a0,-120(s0)
    802082d0:	fa040593          	addi	a1,s0,-96
    802082d4:	f8b43823          	sd	a1,-112(s0)
    802082d8:	f8a43c23          	sd	a0,-104(s0)

00000000802082dc <.LBB1_64>:
    802082dc:	00007597          	auipc	a1,0x7
    802082e0:	46c58593          	addi	a1,a1,1132 # 8020f748 <.Lanon.25533a3652f78571ae0c38287448f246.12>
    802082e4:	f7040513          	addi	a0,s0,-144
    802082e8:	00001097          	auipc	ra,0x1
    802082ec:	586080e7          	jalr	1414(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000802082f2 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h34499e83528982f3E>:
    802082f2:	1101                	addi	sp,sp,-32
    802082f4:	ec06                	sd	ra,24(sp)
    802082f6:	e822                	sd	s0,16(sp)
    802082f8:	e426                	sd	s1,8(sp)
    802082fa:	e04a                	sd	s2,0(sp)
    802082fc:	1000                	addi	s0,sp,32
    802082fe:	84ae                	mv	s1,a1
    80208300:	892a                	mv	s2,a0
    80208302:	852e                	mv	a0,a1
    80208304:	00002097          	auipc	ra,0x2
    80208308:	70e080e7          	jalr	1806(ra) # 8020aa12 <_ZN4core3fmt9Formatter15debug_lower_hex17hffada68515a2cdf7E>
    8020830c:	cd01                	beqz	a0,80208324 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h34499e83528982f3E+0x32>
    8020830e:	854a                	mv	a0,s2
    80208310:	85a6                	mv	a1,s1
    80208312:	6902                	ld	s2,0(sp)
    80208314:	64a2                	ld	s1,8(sp)
    80208316:	6442                	ld	s0,16(sp)
    80208318:	60e2                	ld	ra,24(sp)
    8020831a:	6105                	addi	sp,sp,32
    8020831c:	00004317          	auipc	t1,0x4
    80208320:	89430067          	jr	-1900(t1) # 8020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>
    80208324:	8526                	mv	a0,s1
    80208326:	00002097          	auipc	ra,0x2
    8020832a:	6f6080e7          	jalr	1782(ra) # 8020aa1c <_ZN4core3fmt9Formatter15debug_upper_hex17h3e8dade1475f5ac4E>
    8020832e:	cd01                	beqz	a0,80208346 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h34499e83528982f3E+0x54>
    80208330:	854a                	mv	a0,s2
    80208332:	85a6                	mv	a1,s1
    80208334:	6902                	ld	s2,0(sp)
    80208336:	64a2                	ld	s1,8(sp)
    80208338:	6442                	ld	s0,16(sp)
    8020833a:	60e2                	ld	ra,24(sp)
    8020833c:	6105                	addi	sp,sp,32
    8020833e:	00004317          	auipc	t1,0x4
    80208342:	8f230067          	jr	-1806(t1) # 8020bc30 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E>
    80208346:	854a                	mv	a0,s2
    80208348:	85a6                	mv	a1,s1
    8020834a:	6902                	ld	s2,0(sp)
    8020834c:	64a2                	ld	s1,8(sp)
    8020834e:	6442                	ld	s0,16(sp)
    80208350:	60e2                	ld	ra,24(sp)
    80208352:	6105                	addi	sp,sp,32
    80208354:	00004317          	auipc	t1,0x4
    80208358:	e7430067          	jr	-396(t1) # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>

000000008020835c <_ZN4core3ptr24drop_in_place$LT$u64$GT$17h4fd17515929997b8E>:
    8020835c:	1141                	addi	sp,sp,-16
    8020835e:	e406                	sd	ra,8(sp)
    80208360:	e022                	sd	s0,0(sp)
    80208362:	0800                	addi	s0,sp,16
    80208364:	6402                	ld	s0,0(sp)
    80208366:	60a2                	ld	ra,8(sp)
    80208368:	0141                	addi	sp,sp,16
    8020836a:	8082                	ret

000000008020836c <_ZN63_$LT$rvm..packet..RvmExitPacket$u20$as$u20$core..fmt..Debug$GT$3fmt17h06a492f9d7bdea74E>:
    8020836c:	7179                	addi	sp,sp,-48
    8020836e:	f406                	sd	ra,40(sp)
    80208370:	f022                	sd	s0,32(sp)
    80208372:	ec26                	sd	s1,24(sp)
    80208374:	1800                	addi	s0,sp,48
    80208376:	86ae                	mv	a3,a1
    80208378:	84aa                	mv	s1,a0

000000008020837a <.LBB5_8>:
    8020837a:	00007597          	auipc	a1,0x7
    8020837e:	6c658593          	addi	a1,a1,1734 # 8020fa40 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.0>
    80208382:	4635                	li	a2,13
    80208384:	8536                	mv	a0,a3
    80208386:	00002097          	auipc	ra,0x2
    8020838a:	6a2080e7          	jalr	1698(ra) # 8020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>
    8020838e:	fcb43c23          	sd	a1,-40(s0)
    80208392:	fca43823          	sd	a0,-48(s0)

0000000080208396 <.LBB5_9>:
    80208396:	00005597          	auipc	a1,0x5
    8020839a:	78658593          	addi	a1,a1,1926 # 8020db1c <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x3c>

000000008020839e <.LBB5_10>:
    8020839e:	00007717          	auipc	a4,0x7
    802083a2:	6b270713          	addi	a4,a4,1714 # 8020fa50 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.2>
    802083a6:	fd040513          	addi	a0,s0,-48
    802083aa:	4611                	li	a2,4
    802083ac:	86a6                	mv	a3,s1
    802083ae:	00001097          	auipc	ra,0x1
    802083b2:	62c080e7          	jalr	1580(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802083b6:	00848693          	addi	a3,s1,8

00000000802083ba <.LBB5_11>:
    802083ba:	00007597          	auipc	a1,0x7
    802083be:	6b658593          	addi	a1,a1,1718 # 8020fa70 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.3>

00000000802083c2 <.LBB5_12>:
    802083c2:	00007717          	auipc	a4,0x7
    802083c6:	6b670713          	addi	a4,a4,1718 # 8020fa78 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.4>
    802083ca:	460d                	li	a2,3
    802083cc:	00001097          	auipc	ra,0x1
    802083d0:	60e080e7          	jalr	1550(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802083d4:	0004e503          	lwu	a0,0(s1)
    802083d8:	00757593          	andi	a1,a0,7
    802083dc:	4605                	li	a2,1
    802083de:	02c58363          	beq	a1,a2,80208404 <.LBB5_14+0xa>
    802083e2:	4589                	li	a1,2
    802083e4:	02b50b63          	beq	a0,a1,8020841a <.LBB5_16+0xa>
    802083e8:	458d                	li	a1,3
    802083ea:	04b51363          	bne	a0,a1,80208430 <.LBB5_19>
    802083ee:	01048693          	addi	a3,s1,16

00000000802083f2 <.LBB5_13>:
    802083f2:	00007597          	auipc	a1,0x7
    802083f6:	6a658593          	addi	a1,a1,1702 # 8020fa98 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.5>

00000000802083fa <.LBB5_14>:
    802083fa:	00007717          	auipc	a4,0x7
    802083fe:	6de70713          	addi	a4,a4,1758 # 8020fad8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.9>
    80208402:	a099                	j	80208448 <.LBB5_21+0x8>
    80208404:	01048693          	addi	a3,s1,16

0000000080208408 <.LBB5_15>:
    80208408:	00007597          	auipc	a1,0x7
    8020840c:	69058593          	addi	a1,a1,1680 # 8020fa98 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.5>

0000000080208410 <.LBB5_16>:
    80208410:	00007717          	auipc	a4,0x7
    80208414:	70870713          	addi	a4,a4,1800 # 8020fb18 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.11>
    80208418:	a805                	j	80208448 <.LBB5_21+0x8>
    8020841a:	01048693          	addi	a3,s1,16

000000008020841e <.LBB5_17>:
    8020841e:	00007597          	auipc	a1,0x7
    80208422:	67a58593          	addi	a1,a1,1658 # 8020fa98 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.5>

0000000080208426 <.LBB5_18>:
    80208426:	00007717          	auipc	a4,0x7
    8020842a:	6d270713          	addi	a4,a4,1746 # 8020faf8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.10>
    8020842e:	a829                	j	80208448 <.LBB5_21+0x8>

0000000080208430 <.LBB5_19>:
    80208430:	00007597          	auipc	a1,0x7
    80208434:	66858593          	addi	a1,a1,1640 # 8020fa98 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.5>

0000000080208438 <.LBB5_20>:
    80208438:	00007697          	auipc	a3,0x7
    8020843c:	67068693          	addi	a3,a3,1648 # 8020faa8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.7>

0000000080208440 <.LBB5_21>:
    80208440:	00007717          	auipc	a4,0x7
    80208444:	67870713          	addi	a4,a4,1656 # 8020fab8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.8>
    80208448:	fd040513          	addi	a0,s0,-48
    8020844c:	4615                	li	a2,5
    8020844e:	00001097          	auipc	ra,0x1
    80208452:	58c080e7          	jalr	1420(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208456:	fd040513          	addi	a0,s0,-48
    8020845a:	00001097          	auipc	ra,0x1
    8020845e:	6dc080e7          	jalr	1756(ra) # 80209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>
    80208462:	64e2                	ld	s1,24(sp)
    80208464:	7402                	ld	s0,32(sp)
    80208466:	70a2                	ld	ra,40(sp)
    80208468:	6145                	addi	sp,sp,48
    8020846a:	8082                	ret

000000008020846c <_ZN67_$LT$rvm..packet..RvmExitPacketKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hc438c667242aebc9E>:
    8020846c:	7179                	addi	sp,sp,-48
    8020846e:	f406                	sd	ra,40(sp)
    80208470:	f022                	sd	s0,32(sp)
    80208472:	ec26                	sd	s1,24(sp)
    80208474:	1800                	addi	s0,sp,48
    80208476:	00056503          	lwu	a0,0(a0)
    8020847a:	4609                	li	a2,2
    8020847c:	00a64a63          	blt	a2,a0,80208490 <.LBB6_9+0xa>
    80208480:	4605                	li	a2,1
    80208482:	00c51f63          	bne	a0,a2,802084a0 <.LBB6_11>

0000000080208486 <.LBB6_9>:
    80208486:	00007617          	auipc	a2,0x7
    8020848a:	6cb60613          	addi	a2,a2,1739 # 8020fb51 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.15>
    8020848e:	a02d                	j	802084b8 <.LBB6_12+0x8>
    80208490:	460d                	li	a2,3
    80208492:	00c51f63          	bne	a0,a2,802084b0 <.LBB6_12>

0000000080208496 <.LBB6_10>:
    80208496:	00007617          	auipc	a2,0x7
    8020849a:	6ab60613          	addi	a2,a2,1707 # 8020fb41 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.13>
    8020849e:	a829                	j	802084b8 <.LBB6_12+0x8>

00000000802084a0 <.LBB6_11>:
    802084a0:	00007617          	auipc	a2,0x7
    802084a4:	6aa60613          	addi	a2,a2,1706 # 8020fb4a <.Lanon.8fb1012fef4029a89eeacf50ee59062d.14>
    802084a8:	fd040493          	addi	s1,s0,-48
    802084ac:	469d                	li	a3,7
    802084ae:	a801                	j	802084be <.LBB6_12+0xe>

00000000802084b0 <.LBB6_12>:
    802084b0:	00007617          	auipc	a2,0x7
    802084b4:	68860613          	addi	a2,a2,1672 # 8020fb38 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.12>
    802084b8:	fd040493          	addi	s1,s0,-48
    802084bc:	46a5                	li	a3,9
    802084be:	8526                	mv	a0,s1
    802084c0:	00002097          	auipc	ra,0x2
    802084c4:	584080e7          	jalr	1412(ra) # 8020aa44 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    802084c8:	8526                	mv	a0,s1
    802084ca:	00001097          	auipc	ra,0x1
    802084ce:	7b2080e7          	jalr	1970(ra) # 80209c7c <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    802084d2:	64e2                	ld	s1,24(sp)
    802084d4:	7402                	ld	s0,32(sp)
    802084d6:	70a2                	ld	ra,40(sp)
    802084d8:	6145                	addi	sp,sp,48
    802084da:	8082                	ret

00000000802084dc <_ZN60_$LT$rvm..packet..BellPacket$u20$as$u20$core..fmt..Debug$GT$3fmt17hce68b1e86cfda8f5E>:
    802084dc:	7179                	addi	sp,sp,-48
    802084de:	f406                	sd	ra,40(sp)
    802084e0:	f022                	sd	s0,32(sp)
    802084e2:	ec26                	sd	s1,24(sp)
    802084e4:	1800                	addi	s0,sp,48
    802084e6:	86ae                	mv	a3,a1
    802084e8:	84aa                	mv	s1,a0

00000000802084ea <.LBB7_1>:
    802084ea:	00007597          	auipc	a1,0x7
    802084ee:	67058593          	addi	a1,a1,1648 # 8020fb5a <.Lanon.8fb1012fef4029a89eeacf50ee59062d.16>
    802084f2:	4629                	li	a2,10
    802084f4:	8536                	mv	a0,a3
    802084f6:	00002097          	auipc	ra,0x2
    802084fa:	532080e7          	jalr	1330(ra) # 8020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>
    802084fe:	fcb43c23          	sd	a1,-40(s0)
    80208502:	fca43823          	sd	a0,-48(s0)
    80208506:	fe943023          	sd	s1,-32(s0)

000000008020850a <.LBB7_2>:
    8020850a:	00005597          	auipc	a1,0x5
    8020850e:	62a58593          	addi	a1,a1,1578 # 8020db34 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x54>

0000000080208512 <.LBB7_3>:
    80208512:	00007717          	auipc	a4,0x7
    80208516:	65670713          	addi	a4,a4,1622 # 8020fb68 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.18>
    8020851a:	fd040493          	addi	s1,s0,-48
    8020851e:	fe040693          	addi	a3,s0,-32
    80208522:	4611                	li	a2,4
    80208524:	8526                	mv	a0,s1
    80208526:	00001097          	auipc	ra,0x1
    8020852a:	4b4080e7          	jalr	1204(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020852e:	8526                	mv	a0,s1
    80208530:	00001097          	auipc	ra,0x1
    80208534:	606080e7          	jalr	1542(ra) # 80209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>
    80208538:	64e2                	ld	s1,24(sp)
    8020853a:	7402                	ld	s0,32(sp)
    8020853c:	70a2                	ld	ra,40(sp)
    8020853e:	6145                	addi	sp,sp,48
    80208540:	8082                	ret

0000000080208542 <_ZN58_$LT$rvm..packet..IoPacket$u20$as$u20$core..fmt..Debug$GT$3fmt17h6f91852926e6894fE>:
    80208542:	7159                	addi	sp,sp,-112
    80208544:	f486                	sd	ra,104(sp)
    80208546:	f0a2                	sd	s0,96(sp)
    80208548:	eca6                	sd	s1,88(sp)
    8020854a:	e8ca                	sd	s2,80(sp)
    8020854c:	e4ce                	sd	s3,72(sp)
    8020854e:	e0d2                	sd	s4,64(sp)
    80208550:	fc56                	sd	s5,56(sp)
    80208552:	f85a                	sd	s6,48(sp)
    80208554:	f45e                	sd	s7,40(sp)
    80208556:	f062                	sd	s8,32(sp)
    80208558:	1880                	addi	s0,sp,112
    8020855a:	86ae                	mv	a3,a1
    8020855c:	84aa                	mv	s1,a0
    8020855e:	00250b13          	addi	s6,a0,2
    80208562:	00350b93          	addi	s7,a0,3
    80208566:	00450c13          	addi	s8,a0,4
    8020856a:	00550a93          	addi	s5,a0,5
    8020856e:	00650a13          	addi	s4,a0,6
    80208572:	00850993          	addi	s3,a0,8

0000000080208576 <.LBB8_1>:
    80208576:	00005597          	auipc	a1,0x5
    8020857a:	1ea58593          	addi	a1,a1,490 # 8020d760 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.75+0x50>
    8020857e:	4621                	li	a2,8
    80208580:	8536                	mv	a0,a3
    80208582:	00002097          	auipc	ra,0x2
    80208586:	4a6080e7          	jalr	1190(ra) # 8020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>
    8020858a:	f8b43c23          	sd	a1,-104(s0)
    8020858e:	f8a43823          	sd	a0,-112(s0)
    80208592:	fa943423          	sd	s1,-88(s0)

0000000080208596 <.LBB8_2>:
    80208596:	00005597          	auipc	a1,0x5
    8020859a:	58a58593          	addi	a1,a1,1418 # 8020db20 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x40>

000000008020859e <.LBB8_3>:
    8020859e:	00007717          	auipc	a4,0x7
    802085a2:	5ea70713          	addi	a4,a4,1514 # 8020fb88 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.21>
    802085a6:	f9040913          	addi	s2,s0,-112
    802085aa:	fa840693          	addi	a3,s0,-88
    802085ae:	4611                	li	a2,4
    802085b0:	854a                	mv	a0,s2
    802085b2:	00001097          	auipc	ra,0x1
    802085b6:	428080e7          	jalr	1064(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802085ba:	fb643423          	sd	s6,-88(s0)

00000000802085be <.LBB8_4>:
    802085be:	00007597          	auipc	a1,0x7
    802085c2:	5ea58593          	addi	a1,a1,1514 # 8020fba8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.22>

00000000802085c6 <.LBB8_5>:
    802085c6:	00007717          	auipc	a4,0x7
    802085ca:	5f270713          	addi	a4,a4,1522 # 8020fbb8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.23>
    802085ce:	fa840693          	addi	a3,s0,-88
    802085d2:	462d                	li	a2,11
    802085d4:	854a                	mv	a0,s2
    802085d6:	00001097          	auipc	ra,0x1
    802085da:	404080e7          	jalr	1028(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    802085de:	fb743423          	sd	s7,-88(s0)

00000000802085e2 <.LBB8_6>:
    802085e2:	00007597          	auipc	a1,0x7
    802085e6:	5f658593          	addi	a1,a1,1526 # 8020fbd8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.24>

00000000802085ea <.LBB8_7>:
    802085ea:	00007497          	auipc	s1,0x7
    802085ee:	5f648493          	addi	s1,s1,1526 # 8020fbe0 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.25>
    802085f2:	fa840693          	addi	a3,s0,-88
    802085f6:	4615                	li	a2,5
    802085f8:	854a                	mv	a0,s2
    802085fa:	8726                	mv	a4,s1
    802085fc:	00001097          	auipc	ra,0x1
    80208600:	3de080e7          	jalr	990(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208604:	fb843423          	sd	s8,-88(s0)

0000000080208608 <.LBB8_8>:
    80208608:	00007597          	auipc	a1,0x7
    8020860c:	5f858593          	addi	a1,a1,1528 # 8020fc00 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.26>
    80208610:	fa840693          	addi	a3,s0,-88
    80208614:	4619                	li	a2,6
    80208616:	854a                	mv	a0,s2
    80208618:	8726                	mv	a4,s1
    8020861a:	00001097          	auipc	ra,0x1
    8020861e:	3c0080e7          	jalr	960(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208622:	fb543423          	sd	s5,-88(s0)

0000000080208626 <.LBB8_9>:
    80208626:	00007597          	auipc	a1,0x7
    8020862a:	5e058593          	addi	a1,a1,1504 # 8020fc06 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.27>
    8020862e:	fa840693          	addi	a3,s0,-88
    80208632:	4619                	li	a2,6
    80208634:	854a                	mv	a0,s2
    80208636:	8726                	mv	a4,s1
    80208638:	00001097          	auipc	ra,0x1
    8020863c:	3a2080e7          	jalr	930(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208640:	fb443423          	sd	s4,-88(s0)

0000000080208644 <.LBB8_10>:
    80208644:	00007597          	auipc	a1,0x7
    80208648:	5c858593          	addi	a1,a1,1480 # 8020fc0c <.Lanon.8fb1012fef4029a89eeacf50ee59062d.28>

000000008020864c <.LBB8_11>:
    8020864c:	00007717          	auipc	a4,0x7
    80208650:	5cc70713          	addi	a4,a4,1484 # 8020fc18 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.29>
    80208654:	fa840693          	addi	a3,s0,-88
    80208658:	4625                	li	a2,9
    8020865a:	854a                	mv	a0,s2
    8020865c:	00001097          	auipc	ra,0x1
    80208660:	37e080e7          	jalr	894(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208664:	fb343423          	sd	s3,-88(s0)

0000000080208668 <.LBB8_12>:
    80208668:	00005597          	auipc	a1,0x5
    8020866c:	4ac58593          	addi	a1,a1,1196 # 8020db14 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x34>

0000000080208670 <.LBB8_13>:
    80208670:	00007717          	auipc	a4,0x7
    80208674:	5c870713          	addi	a4,a4,1480 # 8020fc38 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.31>
    80208678:	fa840693          	addi	a3,s0,-88
    8020867c:	4611                	li	a2,4
    8020867e:	854a                	mv	a0,s2
    80208680:	00001097          	auipc	ra,0x1
    80208684:	35a080e7          	jalr	858(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208688:	854a                	mv	a0,s2
    8020868a:	00001097          	auipc	ra,0x1
    8020868e:	4ac080e7          	jalr	1196(ra) # 80209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>
    80208692:	7c02                	ld	s8,32(sp)
    80208694:	7ba2                	ld	s7,40(sp)
    80208696:	7b42                	ld	s6,48(sp)
    80208698:	7ae2                	ld	s5,56(sp)
    8020869a:	6a06                	ld	s4,64(sp)
    8020869c:	69a6                	ld	s3,72(sp)
    8020869e:	6946                	ld	s2,80(sp)
    802086a0:	64e6                	ld	s1,88(sp)
    802086a2:	7406                	ld	s0,96(sp)
    802086a4:	70a6                	ld	ra,104(sp)
    802086a6:	6165                	addi	sp,sp,112
    802086a8:	8082                	ret

00000000802086aa <_ZN60_$LT$rvm..packet..MmioPacket$u20$as$u20$core..fmt..Debug$GT$3fmt17hb4ec7dcc14aaaa9fE>:
    802086aa:	715d                	addi	sp,sp,-80
    802086ac:	e486                	sd	ra,72(sp)
    802086ae:	e0a2                	sd	s0,64(sp)
    802086b0:	fc26                	sd	s1,56(sp)
    802086b2:	f84a                	sd	s2,48(sp)
    802086b4:	f44e                	sd	s3,40(sp)
    802086b6:	f052                	sd	s4,32(sp)
    802086b8:	ec56                	sd	s5,24(sp)
    802086ba:	0880                	addi	s0,sp,80
    802086bc:	86ae                	mv	a3,a1
    802086be:	84aa                	mv	s1,a0
    802086c0:	00850993          	addi	s3,a0,8
    802086c4:	00950a13          	addi	s4,a0,9
    802086c8:	01050a93          	addi	s5,a0,16

00000000802086cc <.LBB9_1>:
    802086cc:	00007597          	auipc	a1,0x7
    802086d0:	58c58593          	addi	a1,a1,1420 # 8020fc58 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.32>
    802086d4:	4629                	li	a2,10
    802086d6:	8536                	mv	a0,a3
    802086d8:	00002097          	auipc	ra,0x2
    802086dc:	350080e7          	jalr	848(ra) # 8020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>
    802086e0:	fab43c23          	sd	a1,-72(s0)
    802086e4:	faa43823          	sd	a0,-80(s0)
    802086e8:	fc943023          	sd	s1,-64(s0)

00000000802086ec <.LBB9_2>:
    802086ec:	00005597          	auipc	a1,0x5
    802086f0:	44858593          	addi	a1,a1,1096 # 8020db34 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x54>

00000000802086f4 <.LBB9_3>:
    802086f4:	00007497          	auipc	s1,0x7
    802086f8:	47448493          	addi	s1,s1,1140 # 8020fb68 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.18>
    802086fc:	fb040913          	addi	s2,s0,-80
    80208700:	fc040693          	addi	a3,s0,-64
    80208704:	4611                	li	a2,4
    80208706:	854a                	mv	a0,s2
    80208708:	8726                	mv	a4,s1
    8020870a:	00001097          	auipc	ra,0x1
    8020870e:	2d0080e7          	jalr	720(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208712:	fd343023          	sd	s3,-64(s0)

0000000080208716 <.LBB9_4>:
    80208716:	00007597          	auipc	a1,0x7
    8020871a:	49258593          	addi	a1,a1,1170 # 8020fba8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.22>

000000008020871e <.LBB9_5>:
    8020871e:	00007717          	auipc	a4,0x7
    80208722:	49a70713          	addi	a4,a4,1178 # 8020fbb8 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.23>
    80208726:	fc040693          	addi	a3,s0,-64
    8020872a:	462d                	li	a2,11
    8020872c:	854a                	mv	a0,s2
    8020872e:	00001097          	auipc	ra,0x1
    80208732:	2ac080e7          	jalr	684(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208736:	fd443023          	sd	s4,-64(s0)

000000008020873a <.LBB9_6>:
    8020873a:	00005597          	auipc	a1,0x5
    8020873e:	3ca58593          	addi	a1,a1,970 # 8020db04 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x24>

0000000080208742 <.LBB9_7>:
    80208742:	00007717          	auipc	a4,0x7
    80208746:	49e70713          	addi	a4,a4,1182 # 8020fbe0 <.Lanon.8fb1012fef4029a89eeacf50ee59062d.25>
    8020874a:	fc040693          	addi	a3,s0,-64
    8020874e:	4611                	li	a2,4
    80208750:	854a                	mv	a0,s2
    80208752:	00001097          	auipc	ra,0x1
    80208756:	288080e7          	jalr	648(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020875a:	fd543023          	sd	s5,-64(s0)

000000008020875e <.LBB9_8>:
    8020875e:	00005597          	auipc	a1,0x5
    80208762:	3b658593          	addi	a1,a1,950 # 8020db14 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x34>
    80208766:	fc040693          	addi	a3,s0,-64
    8020876a:	4611                	li	a2,4
    8020876c:	854a                	mv	a0,s2
    8020876e:	8726                	mv	a4,s1
    80208770:	00001097          	auipc	ra,0x1
    80208774:	26a080e7          	jalr	618(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    80208778:	854a                	mv	a0,s2
    8020877a:	00001097          	auipc	ra,0x1
    8020877e:	3bc080e7          	jalr	956(ra) # 80209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>
    80208782:	6ae2                	ld	s5,24(sp)
    80208784:	7a02                	ld	s4,32(sp)
    80208786:	79a2                	ld	s3,40(sp)
    80208788:	7942                	ld	s2,48(sp)
    8020878a:	74e2                	ld	s1,56(sp)
    8020878c:	6406                	ld	s0,64(sp)
    8020878e:	60a6                	ld	ra,72(sp)
    80208790:	6161                	addi	sp,sp,80
    80208792:	8082                	ret

0000000080208794 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h459f88430f0c48f5E>:
    80208794:	1141                	addi	sp,sp,-16
    80208796:	e406                	sd	ra,8(sp)
    80208798:	e022                	sd	s0,0(sp)
    8020879a:	0800                	addi	s0,sp,16
    8020879c:	6108                	ld	a0,0(a0)
    8020879e:	55fd                	li	a1,-1
    802087a0:	02b50663          	beq	a0,a1,802087cc <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h459f88430f0c48f5E+0x38>
    802087a4:	00850593          	addi	a1,a0,8
    802087a8:	4605                	li	a2,1
    802087aa:	40c006b3          	neg	a3,a2
    802087ae:	02d5b5af          	amoadd.d.rl	a1,a3,(a1)
    802087b2:	00c59d63          	bne	a1,a2,802087cc <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h459f88430f0c48f5E+0x38>
    802087b6:	45c1                	li	a1,16
    802087b8:	4621                	li	a2,8
    802087ba:	0230000f          	fence	r,rw
    802087be:	6402                	ld	s0,0(sp)
    802087c0:	60a2                	ld	ra,8(sp)
    802087c2:	0141                	addi	sp,sp,16
    802087c4:	ffffd317          	auipc	t1,0xffffd
    802087c8:	92e30067          	jr	-1746(t1) # 802050f2 <__rust_dealloc>
    802087cc:	6402                	ld	s0,0(sp)
    802087ce:	60a2                	ld	ra,8(sp)
    802087d0:	0141                	addi	sp,sp,16
    802087d2:	8082                	ret

00000000802087d4 <_ZN4core3ptr26drop_in_place$LT$usize$GT$17h21e2ee0472c073a9E.llvm.12230177447416708706>:
    802087d4:	1141                	addi	sp,sp,-16
    802087d6:	e406                	sd	ra,8(sp)
    802087d8:	e022                	sd	s0,0(sp)
    802087da:	0800                	addi	s0,sp,16
    802087dc:	6402                	ld	s0,0(sp)
    802087de:	60a2                	ld	ra,8(sp)
    802087e0:	0141                	addi	sp,sp,16
    802087e2:	8082                	ret

00000000802087e4 <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E>:
    802087e4:	1141                	addi	sp,sp,-16
    802087e6:	e406                	sd	ra,8(sp)
    802087e8:	e022                	sd	s0,0(sp)
    802087ea:	0800                	addi	s0,sp,16
    802087ec:	962e                	add	a2,a2,a1
    802087ee:	059d                	addi	a1,a1,7
    802087f0:	99e1                	andi	a1,a1,-8
    802087f2:	ff867e93          	andi	t4,a2,-8
    802087f6:	16bee963          	bltu	t4,a1,80208968 <.LBB5_15>
    802087fa:	4701                	li	a4,0
    802087fc:	00858613          	addi	a2,a1,8
    80208800:	12ceef63          	bltu	t4,a2,8020893e <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E+0x15a>
    80208804:	03f00813          	li	a6,63
    80208808:	4885                	li	a7,1
    8020880a:	42fd                	li	t0,31
    8020880c:	05555637          	lui	a2,0x5555
    80208810:	5556061b          	addiw	a2,a2,1365
    80208814:	0632                	slli	a2,a2,0xc
    80208816:	55560613          	addi	a2,a2,1365 # 5555555 <.Lline_table_start0+0x553603c>
    8020881a:	0632                	slli	a2,a2,0xc
    8020881c:	55560613          	addi	a2,a2,1365
    80208820:	0632                	slli	a2,a2,0xc
    80208822:	55560313          	addi	t1,a2,1365
    80208826:	03333637          	lui	a2,0x3333
    8020882a:	3336061b          	addiw	a2,a2,819
    8020882e:	0632                	slli	a2,a2,0xc
    80208830:	33360613          	addi	a2,a2,819 # 3333333 <.Lline_table_start0+0x3313e1a>
    80208834:	0632                	slli	a2,a2,0xc
    80208836:	33360613          	addi	a2,a2,819
    8020883a:	0632                	slli	a2,a2,0xc
    8020883c:	33360f13          	addi	t5,a2,819
    80208840:	00f0f637          	lui	a2,0xf0f
    80208844:	0f16061b          	addiw	a2,a2,241
    80208848:	0632                	slli	a2,a2,0xc
    8020884a:	f0f60613          	addi	a2,a2,-241 # f0ef0f <.Lline_table_start0+0xeef9f6>
    8020884e:	0632                	slli	a2,a2,0xc
    80208850:	0f160613          	addi	a2,a2,241
    80208854:	0632                	slli	a2,a2,0xc
    80208856:	f0f60393          	addi	t2,a2,-241
    8020885a:	01010637          	lui	a2,0x1010
    8020885e:	1016061b          	addiw	a2,a2,257
    80208862:	0642                	slli	a2,a2,0x10
    80208864:	10160613          	addi	a2,a2,257 # 1010101 <.Lline_table_start0+0xff0be8>
    80208868:	0642                	slli	a2,a2,0x10
    8020886a:	10160e13          	addi	t3,a2,257
    8020886e:	40b006b3          	neg	a3,a1
    80208872:	40be8633          	sub	a2,t4,a1
    80208876:	8eed                	and	a3,a3,a1
    80208878:	ca59                	beqz	a2,8020890e <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E+0x12a>
    8020887a:	00165793          	srli	a5,a2,0x1
    8020887e:	8e5d                	or	a2,a2,a5
    80208880:	00265793          	srli	a5,a2,0x2
    80208884:	8e5d                	or	a2,a2,a5
    80208886:	00465793          	srli	a5,a2,0x4
    8020888a:	8e5d                	or	a2,a2,a5
    8020888c:	00865793          	srli	a5,a2,0x8
    80208890:	8e5d                	or	a2,a2,a5
    80208892:	01065793          	srli	a5,a2,0x10
    80208896:	8e5d                	or	a2,a2,a5
    80208898:	02065793          	srli	a5,a2,0x20
    8020889c:	8e5d                	or	a2,a2,a5
    8020889e:	fff64613          	not	a2,a2
    802088a2:	00165793          	srli	a5,a2,0x1
    802088a6:	0067f7b3          	and	a5,a5,t1
    802088aa:	8e1d                	sub	a2,a2,a5
    802088ac:	01e677b3          	and	a5,a2,t5
    802088b0:	8209                	srli	a2,a2,0x2
    802088b2:	01e67633          	and	a2,a2,t5
    802088b6:	963e                	add	a2,a2,a5
    802088b8:	00465793          	srli	a5,a2,0x4
    802088bc:	963e                	add	a2,a2,a5
    802088be:	00767633          	and	a2,a2,t2
    802088c2:	03c60633          	mul	a2,a2,t3
    802088c6:	9261                	srli	a2,a2,0x38
    802088c8:	40c80633          	sub	a2,a6,a2
    802088cc:	00c89633          	sll	a2,a7,a2
    802088d0:	00d66363          	bltu	a2,a3,802088d6 <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E+0xf2>
    802088d4:	8636                	mv	a2,a3
    802088d6:	c629                	beqz	a2,80208920 <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E+0x13c>
    802088d8:	fff60693          	addi	a3,a2,-1
    802088dc:	fff64793          	not	a5,a2
    802088e0:	8efd                	and	a3,a3,a5
    802088e2:	0016d793          	srli	a5,a3,0x1
    802088e6:	0067f7b3          	and	a5,a5,t1
    802088ea:	8e9d                	sub	a3,a3,a5
    802088ec:	01e6f7b3          	and	a5,a3,t5
    802088f0:	8289                	srli	a3,a3,0x2
    802088f2:	01e6f6b3          	and	a3,a3,t5
    802088f6:	96be                	add	a3,a3,a5
    802088f8:	0046d793          	srli	a5,a3,0x4
    802088fc:	96be                	add	a3,a3,a5
    802088fe:	0076f6b3          	and	a3,a3,t2
    80208902:	03c686b3          	mul	a3,a3,t3
    80208906:	92e1                	srli	a3,a3,0x38
    80208908:	02d2f063          	bgeu	t0,a3,80208928 <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E+0x144>
    8020890c:	a091                	j	80208950 <.LBB5_14>
    8020890e:	04000613          	li	a2,64
    80208912:	40c80633          	sub	a2,a6,a2
    80208916:	00c89633          	sll	a2,a7,a2
    8020891a:	fad67de3          	bgeu	a2,a3,802088d4 <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E+0xf0>
    8020891e:	bf65                	j	802088d6 <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E+0xf2>
    80208920:	04000693          	li	a3,64
    80208924:	02d2e663          	bltu	t0,a3,80208950 <.LBB5_14>
    80208928:	068e                	slli	a3,a3,0x3
    8020892a:	96aa                	add	a3,a3,a0
    8020892c:	629c                	ld	a5,0(a3)
    8020892e:	e19c                	sd	a5,0(a1)
    80208930:	e28c                	sd	a1,0(a3)
    80208932:	95b2                	add	a1,a1,a2
    80208934:	00858693          	addi	a3,a1,8
    80208938:	9732                	add	a4,a4,a2
    8020893a:	f2defae3          	bgeu	t4,a3,8020886e <_ZN22buddy_system_allocator4Heap4init17hac503de66e22a4d1E+0x8a>
    8020893e:	11053583          	ld	a1,272(a0)
    80208942:	95ba                	add	a1,a1,a4
    80208944:	10b53823          	sd	a1,272(a0)
    80208948:	6402                	ld	s0,0(sp)
    8020894a:	60a2                	ld	ra,8(sp)
    8020894c:	0141                	addi	sp,sp,16
    8020894e:	8082                	ret

0000000080208950 <.LBB5_14>:
    80208950:	00007617          	auipc	a2,0x7
    80208954:	58060613          	addi	a2,a2,1408 # 8020fed0 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.3>
    80208958:	02000593          	li	a1,32
    8020895c:	8536                	mv	a0,a3
    8020895e:	00001097          	auipc	ra,0x1
    80208962:	ed0080e7          	jalr	-304(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000080208968 <.LBB5_15>:
    80208968:	00007517          	auipc	a0,0x7
    8020896c:	4b850513          	addi	a0,a0,1208 # 8020fe20 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.0>

0000000080208970 <.LBB5_16>:
    80208970:	00007617          	auipc	a2,0x7
    80208974:	54860613          	addi	a2,a2,1352 # 8020feb8 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.2>
    80208978:	45f9                	li	a1,30
    8020897a:	00001097          	auipc	ra,0x1
    8020897e:	e88080e7          	jalr	-376(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000080208984 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE>:
    80208984:	1141                	addi	sp,sp,-16
    80208986:	e406                	sd	ra,8(sp)
    80208988:	e022                	sd	s0,0(sp)
    8020898a:	0800                	addi	s0,sp,16
    8020898c:	4885                	li	a7,1
    8020898e:	12b8ef63          	bltu	a7,a1,80208acc <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x148>
    80208992:	46a1                	li	a3,8
    80208994:	1ec6fb63          	bgeu	a3,a2,80208b8a <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x206>
    80208998:	1f167c63          	bgeu	a2,a7,80208b90 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x20c>
    8020899c:	1e088d63          	beqz	a7,80208b96 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x212>
    802089a0:	fff88613          	addi	a2,a7,-1
    802089a4:	fff8c693          	not	a3,a7
    802089a8:	8e75                	and	a2,a2,a3
    802089aa:	00165693          	srli	a3,a2,0x1
    802089ae:	05555737          	lui	a4,0x5555
    802089b2:	5557071b          	addiw	a4,a4,1365
    802089b6:	0732                	slli	a4,a4,0xc
    802089b8:	55570713          	addi	a4,a4,1365 # 5555555 <.Lline_table_start0+0x553603c>
    802089bc:	0732                	slli	a4,a4,0xc
    802089be:	55570713          	addi	a4,a4,1365
    802089c2:	0732                	slli	a4,a4,0xc
    802089c4:	55570713          	addi	a4,a4,1365
    802089c8:	8ef9                	and	a3,a3,a4
    802089ca:	8e15                	sub	a2,a2,a3
    802089cc:	033336b7          	lui	a3,0x3333
    802089d0:	3336869b          	addiw	a3,a3,819
    802089d4:	06b2                	slli	a3,a3,0xc
    802089d6:	33368693          	addi	a3,a3,819 # 3333333 <.Lline_table_start0+0x3313e1a>
    802089da:	06b2                	slli	a3,a3,0xc
    802089dc:	33368693          	addi	a3,a3,819
    802089e0:	06b2                	slli	a3,a3,0xc
    802089e2:	33368693          	addi	a3,a3,819
    802089e6:	00d67733          	and	a4,a2,a3
    802089ea:	8209                	srli	a2,a2,0x2
    802089ec:	8e75                	and	a2,a2,a3
    802089ee:	963a                	add	a2,a2,a4
    802089f0:	00465693          	srli	a3,a2,0x4
    802089f4:	9636                	add	a2,a2,a3
    802089f6:	00f0f6b7          	lui	a3,0xf0f
    802089fa:	0f16869b          	addiw	a3,a3,241
    802089fe:	06b2                	slli	a3,a3,0xc
    80208a00:	f0f68693          	addi	a3,a3,-241 # f0ef0f <.Lline_table_start0+0xeef9f6>
    80208a04:	06b2                	slli	a3,a3,0xc
    80208a06:	0f168693          	addi	a3,a3,241
    80208a0a:	06b2                	slli	a3,a3,0xc
    80208a0c:	f0f68693          	addi	a3,a3,-241
    80208a10:	8e75                	and	a2,a2,a3
    80208a12:	010106b7          	lui	a3,0x1010
    80208a16:	1016869b          	addiw	a3,a3,257
    80208a1a:	06c2                	slli	a3,a3,0x10
    80208a1c:	10168693          	addi	a3,a3,257 # 1010101 <.Lline_table_start0+0xff0be8>
    80208a20:	06c2                	slli	a3,a3,0x10
    80208a22:	10168693          	addi	a3,a3,257
    80208a26:	02d60633          	mul	a2,a2,a3
    80208a2a:	03865293          	srli	t0,a2,0x38
    80208a2e:	02000613          	li	a2,32
    80208a32:	8716                	mv	a4,t0
    80208a34:	00566463          	bltu	a2,t0,80208a3c <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0xb8>
    80208a38:	02000713          	li	a4,32
    80208a3c:	00329813          	slli	a6,t0,0x3
    80208a40:	00a80633          	add	a2,a6,a0
    80208a44:	ff060793          	addi	a5,a2,-16
    80208a48:	8696                	mv	a3,t0
    80208a4a:	06d70b63          	beq	a4,a3,80208ac0 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x13c>
    80208a4e:	6b90                	ld	a2,16(a5)
    80208a50:	0685                	addi	a3,a3,1
    80208a52:	07a1                	addi	a5,a5,8
    80208a54:	da7d                	beqz	a2,80208a4a <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0xc6>
    80208a56:	00128313          	addi	t1,t0,1
    80208a5a:	02d37c63          	bgeu	t1,a3,80208a92 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x10e>
    80208a5e:	4e7d                	li	t3,31
    80208a60:	4385                	li	t2,1
    80208a62:	fff68713          	addi	a4,a3,-1
    80208a66:	14ee6063          	bltu	t3,a4,80208ba6 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x222>
    80208a6a:	00063e83          	ld	t4,0(a2)
    80208a6e:	16f9                	addi	a3,a3,-2
    80208a70:	01d7b423          	sd	t4,8(a5)
    80208a74:	14de6063          	bltu	t3,a3,80208bb4 <.LBB6_29>
    80208a78:	0007be83          	ld	t4,0(a5)
    80208a7c:	00d396b3          	sll	a3,t2,a3
    80208a80:	96b2                	add	a3,a3,a2
    80208a82:	01d6b023          	sd	t4,0(a3)
    80208a86:	e214                	sd	a3,0(a2)
    80208a88:	e390                	sd	a2,0(a5)
    80208a8a:	17e1                	addi	a5,a5,-8
    80208a8c:	86ba                	mv	a3,a4
    80208a8e:	fce36ae3          	bltu	t1,a4,80208a62 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0xde>
    80208a92:	02000613          	li	a2,32
    80208a96:	12c2fb63          	bgeu	t0,a2,80208bcc <.LBB6_30>
    80208a9a:	010506b3          	add	a3,a0,a6
    80208a9e:	6290                	ld	a2,0(a3)
    80208aa0:	14060263          	beqz	a2,80208be4 <.LBB6_31>
    80208aa4:	6218                	ld	a4,0(a2)
    80208aa6:	e298                	sd	a4,0(a3)
    80208aa8:	10053683          	ld	a3,256(a0)
    80208aac:	10853703          	ld	a4,264(a0)
    80208ab0:	95b6                	add	a1,a1,a3
    80208ab2:	10b53023          	sd	a1,256(a0)
    80208ab6:	011705b3          	add	a1,a4,a7
    80208aba:	10b53423          	sd	a1,264(a0)
    80208abe:	a011                	j	80208ac2 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x13e>
    80208ac0:	4601                	li	a2,0
    80208ac2:	8532                	mv	a0,a2
    80208ac4:	6402                	ld	s0,0(sp)
    80208ac6:	60a2                	ld	ra,8(sp)
    80208ac8:	0141                	addi	sp,sp,16
    80208aca:	8082                	ret
    80208acc:	fff58693          	addi	a3,a1,-1
    80208ad0:	0016d713          	srli	a4,a3,0x1
    80208ad4:	8ed9                	or	a3,a3,a4
    80208ad6:	0026d713          	srli	a4,a3,0x2
    80208ada:	8ed9                	or	a3,a3,a4
    80208adc:	0046d713          	srli	a4,a3,0x4
    80208ae0:	8ed9                	or	a3,a3,a4
    80208ae2:	0086d713          	srli	a4,a3,0x8
    80208ae6:	8ed9                	or	a3,a3,a4
    80208ae8:	0106d713          	srli	a4,a3,0x10
    80208aec:	8ed9                	or	a3,a3,a4
    80208aee:	0206d713          	srli	a4,a3,0x20
    80208af2:	8ed9                	or	a3,a3,a4
    80208af4:	fff6c693          	not	a3,a3
    80208af8:	0016d713          	srli	a4,a3,0x1
    80208afc:	055557b7          	lui	a5,0x5555
    80208b00:	5557879b          	addiw	a5,a5,1365
    80208b04:	07b2                	slli	a5,a5,0xc
    80208b06:	55578793          	addi	a5,a5,1365 # 5555555 <.Lline_table_start0+0x553603c>
    80208b0a:	07b2                	slli	a5,a5,0xc
    80208b0c:	55578793          	addi	a5,a5,1365
    80208b10:	07b2                	slli	a5,a5,0xc
    80208b12:	55578793          	addi	a5,a5,1365
    80208b16:	8f7d                	and	a4,a4,a5
    80208b18:	8e99                	sub	a3,a3,a4
    80208b1a:	03333737          	lui	a4,0x3333
    80208b1e:	3337071b          	addiw	a4,a4,819
    80208b22:	0732                	slli	a4,a4,0xc
    80208b24:	33370713          	addi	a4,a4,819 # 3333333 <.Lline_table_start0+0x3313e1a>
    80208b28:	0732                	slli	a4,a4,0xc
    80208b2a:	33370713          	addi	a4,a4,819
    80208b2e:	0732                	slli	a4,a4,0xc
    80208b30:	33370713          	addi	a4,a4,819
    80208b34:	00e6f7b3          	and	a5,a3,a4
    80208b38:	8289                	srli	a3,a3,0x2
    80208b3a:	8ef9                	and	a3,a3,a4
    80208b3c:	96be                	add	a3,a3,a5
    80208b3e:	0046d713          	srli	a4,a3,0x4
    80208b42:	96ba                	add	a3,a3,a4
    80208b44:	00f0f737          	lui	a4,0xf0f
    80208b48:	0f17071b          	addiw	a4,a4,241
    80208b4c:	0732                	slli	a4,a4,0xc
    80208b4e:	f0f70713          	addi	a4,a4,-241 # f0ef0f <.Lline_table_start0+0xeef9f6>
    80208b52:	0732                	slli	a4,a4,0xc
    80208b54:	0f170713          	addi	a4,a4,241
    80208b58:	0732                	slli	a4,a4,0xc
    80208b5a:	f0f70713          	addi	a4,a4,-241
    80208b5e:	8ef9                	and	a3,a3,a4
    80208b60:	01010737          	lui	a4,0x1010
    80208b64:	1017071b          	addiw	a4,a4,257
    80208b68:	0742                	slli	a4,a4,0x10
    80208b6a:	10170713          	addi	a4,a4,257 # 1010101 <.Lline_table_start0+0xff0be8>
    80208b6e:	0742                	slli	a4,a4,0x10
    80208b70:	10170713          	addi	a4,a4,257
    80208b74:	02e686b3          	mul	a3,a3,a4
    80208b78:	92e1                	srli	a3,a3,0x38
    80208b7a:	577d                	li	a4,-1
    80208b7c:	00d756b3          	srl	a3,a4,a3
    80208b80:	00168893          	addi	a7,a3,1
    80208b84:	46a1                	li	a3,8
    80208b86:	e0c6e9e3          	bltu	a3,a2,80208998 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x14>
    80208b8a:	4621                	li	a2,8
    80208b8c:	e11668e3          	bltu	a2,a7,8020899c <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x18>
    80208b90:	88b2                	mv	a7,a2
    80208b92:	e00897e3          	bnez	a7,802089a0 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0x1c>
    80208b96:	04000293          	li	t0,64
    80208b9a:	02000613          	li	a2,32
    80208b9e:	8716                	mv	a4,t0
    80208ba0:	e8567ce3          	bgeu	a2,t0,80208a38 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0xb4>
    80208ba4:	bd61                	j	80208a3c <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE+0xb8>
    80208ba6:	fff68513          	addi	a0,a3,-1

0000000080208baa <.LBB6_28>:
    80208baa:	00007617          	auipc	a2,0x7
    80208bae:	33e60613          	addi	a2,a2,830 # 8020fee8 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.5>
    80208bb2:	a031                	j	80208bbe <.LBB6_29+0xa>

0000000080208bb4 <.LBB6_29>:
    80208bb4:	00007617          	auipc	a2,0x7
    80208bb8:	34c60613          	addi	a2,a2,844 # 8020ff00 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.6>
    80208bbc:	557d                	li	a0,-1
    80208bbe:	02000593          	li	a1,32
    80208bc2:	00001097          	auipc	ra,0x1
    80208bc6:	c6c080e7          	jalr	-916(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000080208bcc <.LBB6_30>:
    80208bcc:	00007617          	auipc	a2,0x7
    80208bd0:	34c60613          	addi	a2,a2,844 # 8020ff18 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.7>
    80208bd4:	02000593          	li	a1,32
    80208bd8:	8516                	mv	a0,t0
    80208bda:	00001097          	auipc	ra,0x1
    80208bde:	c54080e7          	jalr	-940(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000080208be4 <.LBB6_31>:
    80208be4:	00007517          	auipc	a0,0x7
    80208be8:	34c50513          	addi	a0,a0,844 # 8020ff30 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.8>

0000000080208bec <.LBB6_32>:
    80208bec:	00007617          	auipc	a2,0x7
    80208bf0:	36c60613          	addi	a2,a2,876 # 8020ff58 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.9>
    80208bf4:	02800593          	li	a1,40
    80208bf8:	00001097          	auipc	ra,0x1
    80208bfc:	b70080e7          	jalr	-1168(ra) # 80209768 <_ZN4core6option13expect_failed17h7584820e4d909684E>
	...

0000000080208c02 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E>:
    80208c02:	1141                	addi	sp,sp,-16
    80208c04:	e406                	sd	ra,8(sp)
    80208c06:	e022                	sd	s0,0(sp)
    80208c08:	0800                	addi	s0,sp,16
    80208c0a:	4285                	li	t0,1
    80208c0c:	12c2e863          	bltu	t0,a2,80208d3c <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0x13a>
    80208c10:	4721                	li	a4,8
    80208c12:	1ed77563          	bgeu	a4,a3,80208dfc <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0x1fa>
    80208c16:	1e56f663          	bgeu	a3,t0,80208e02 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0x200>
    80208c1a:	1e028763          	beqz	t0,80208e08 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0x206>
    80208c1e:	fff28693          	addi	a3,t0,-1
    80208c22:	fff2c713          	not	a4,t0
    80208c26:	8ef9                	and	a3,a3,a4
    80208c28:	0016d713          	srli	a4,a3,0x1
    80208c2c:	055557b7          	lui	a5,0x5555
    80208c30:	5557879b          	addiw	a5,a5,1365
    80208c34:	07b2                	slli	a5,a5,0xc
    80208c36:	55578793          	addi	a5,a5,1365 # 5555555 <.Lline_table_start0+0x553603c>
    80208c3a:	07b2                	slli	a5,a5,0xc
    80208c3c:	55578793          	addi	a5,a5,1365
    80208c40:	07b2                	slli	a5,a5,0xc
    80208c42:	55578793          	addi	a5,a5,1365
    80208c46:	8f7d                	and	a4,a4,a5
    80208c48:	8e99                	sub	a3,a3,a4
    80208c4a:	03333737          	lui	a4,0x3333
    80208c4e:	3337071b          	addiw	a4,a4,819
    80208c52:	0732                	slli	a4,a4,0xc
    80208c54:	33370713          	addi	a4,a4,819 # 3333333 <.Lline_table_start0+0x3313e1a>
    80208c58:	0732                	slli	a4,a4,0xc
    80208c5a:	33370713          	addi	a4,a4,819
    80208c5e:	0732                	slli	a4,a4,0xc
    80208c60:	33370713          	addi	a4,a4,819
    80208c64:	00e6f7b3          	and	a5,a3,a4
    80208c68:	8289                	srli	a3,a3,0x2
    80208c6a:	8ef9                	and	a3,a3,a4
    80208c6c:	96be                	add	a3,a3,a5
    80208c6e:	0046d713          	srli	a4,a3,0x4
    80208c72:	96ba                	add	a3,a3,a4
    80208c74:	00f0f737          	lui	a4,0xf0f
    80208c78:	0f17071b          	addiw	a4,a4,241
    80208c7c:	0732                	slli	a4,a4,0xc
    80208c7e:	f0f70713          	addi	a4,a4,-241 # f0ef0f <.Lline_table_start0+0xeef9f6>
    80208c82:	0732                	slli	a4,a4,0xc
    80208c84:	0f170713          	addi	a4,a4,241
    80208c88:	0732                	slli	a4,a4,0xc
    80208c8a:	f0f70713          	addi	a4,a4,-241
    80208c8e:	8ef9                	and	a3,a3,a4
    80208c90:	01010737          	lui	a4,0x1010
    80208c94:	1017071b          	addiw	a4,a4,257
    80208c98:	0742                	slli	a4,a4,0x10
    80208c9a:	10170713          	addi	a4,a4,257 # 1010101 <.Lline_table_start0+0xff0be8>
    80208c9e:	0742                	slli	a4,a4,0x10
    80208ca0:	10170713          	addi	a4,a4,257
    80208ca4:	02e686b3          	mul	a3,a3,a4
    80208ca8:	0386d313          	srli	t1,a3,0x38
    80208cac:	487d                	li	a6,31
    80208cae:	16686263          	bltu	a6,t1,80208e12 <.LBB7_23>
    80208cb2:	00331693          	slli	a3,t1,0x3
    80208cb6:	00d503b3          	add	t2,a0,a3
    80208cba:	0003b683          	ld	a3,0(t2)
    80208cbe:	e194                	sd	a3,0(a1)
    80208cc0:	00b3b023          	sd	a1,0(t2)
    80208cc4:	4885                	li	a7,1
    80208cc6:	006896b3          	sll	a3,a7,t1
    80208cca:	00b6c733          	xor	a4,a3,a1
    80208cce:	8e2e                	mv	t3,a1
    80208cd0:	869e                	mv	a3,t2
    80208cd2:	87ae                	mv	a5,a1
    80208cd4:	00b70863          	beq	a4,a1,80208ce4 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0xe2>
    80208cd8:	86be                	mv	a3,a5
    80208cda:	639c                	ld	a5,0(a5)
    80208cdc:	c3a9                	beqz	a5,80208d1e <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0x11c>
    80208cde:	fef71de3          	bne	a4,a5,80208cd8 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0xd6>
    80208ce2:	8e3a                	mv	t3,a4
    80208ce4:	000e3783          	ld	a5,0(t3) # 1c0000 <.Lline_table_start0+0x1a0ae7>
    80208ce8:	e29c                	sd	a5,0(a3)
    80208cea:	0003b683          	ld	a3,0(t2)
    80208cee:	c681                	beqz	a3,80208cf6 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0xf4>
    80208cf0:	6294                	ld	a3,0(a3)
    80208cf2:	00d3b023          	sd	a3,0(t2)
    80208cf6:	00b76363          	bltu	a4,a1,80208cfc <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0xfa>
    80208cfa:	872e                	mv	a4,a1
    80208cfc:	13030763          	beq	t1,a6,80208e2a <.LBB7_24>
    80208d00:	85ba                	mv	a1,a4
    80208d02:	0305                	addi	t1,t1,1
    80208d04:	00331693          	slli	a3,t1,0x3
    80208d08:	00d503b3          	add	t2,a0,a3
    80208d0c:	0003b683          	ld	a3,0(t2)
    80208d10:	e314                	sd	a3,0(a4)
    80208d12:	00e3b023          	sd	a4,0(t2)
    80208d16:	006896b3          	sll	a3,a7,t1
    80208d1a:	8f35                	xor	a4,a4,a3
    80208d1c:	f9cd                	bnez	a1,80208cce <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0xcc>
    80208d1e:	10053583          	ld	a1,256(a0)
    80208d22:	10853683          	ld	a3,264(a0)
    80208d26:	8d91                	sub	a1,a1,a2
    80208d28:	10b53023          	sd	a1,256(a0)
    80208d2c:	405685b3          	sub	a1,a3,t0
    80208d30:	10b53423          	sd	a1,264(a0)
    80208d34:	6402                	ld	s0,0(sp)
    80208d36:	60a2                	ld	ra,8(sp)
    80208d38:	0141                	addi	sp,sp,16
    80208d3a:	8082                	ret
    80208d3c:	fff60713          	addi	a4,a2,-1
    80208d40:	00175793          	srli	a5,a4,0x1
    80208d44:	8f5d                	or	a4,a4,a5
    80208d46:	00275793          	srli	a5,a4,0x2
    80208d4a:	8f5d                	or	a4,a4,a5
    80208d4c:	00475793          	srli	a5,a4,0x4
    80208d50:	8f5d                	or	a4,a4,a5
    80208d52:	00875793          	srli	a5,a4,0x8
    80208d56:	8f5d                	or	a4,a4,a5
    80208d58:	01075793          	srli	a5,a4,0x10
    80208d5c:	8f5d                	or	a4,a4,a5
    80208d5e:	02075793          	srli	a5,a4,0x20
    80208d62:	8f5d                	or	a4,a4,a5
    80208d64:	fff74713          	not	a4,a4
    80208d68:	00175813          	srli	a6,a4,0x1
    80208d6c:	055557b7          	lui	a5,0x5555
    80208d70:	5557879b          	addiw	a5,a5,1365
    80208d74:	07b2                	slli	a5,a5,0xc
    80208d76:	55578793          	addi	a5,a5,1365 # 5555555 <.Lline_table_start0+0x553603c>
    80208d7a:	07b2                	slli	a5,a5,0xc
    80208d7c:	55578793          	addi	a5,a5,1365
    80208d80:	07b2                	slli	a5,a5,0xc
    80208d82:	55578793          	addi	a5,a5,1365
    80208d86:	00f877b3          	and	a5,a6,a5
    80208d8a:	8f1d                	sub	a4,a4,a5
    80208d8c:	033337b7          	lui	a5,0x3333
    80208d90:	3337879b          	addiw	a5,a5,819
    80208d94:	07b2                	slli	a5,a5,0xc
    80208d96:	33378793          	addi	a5,a5,819 # 3333333 <.Lline_table_start0+0x3313e1a>
    80208d9a:	07b2                	slli	a5,a5,0xc
    80208d9c:	33378793          	addi	a5,a5,819
    80208da0:	07b2                	slli	a5,a5,0xc
    80208da2:	33378793          	addi	a5,a5,819
    80208da6:	00f77833          	and	a6,a4,a5
    80208daa:	8309                	srli	a4,a4,0x2
    80208dac:	8f7d                	and	a4,a4,a5
    80208dae:	9742                	add	a4,a4,a6
    80208db0:	00475793          	srli	a5,a4,0x4
    80208db4:	973e                	add	a4,a4,a5
    80208db6:	00f0f7b7          	lui	a5,0xf0f
    80208dba:	0f17879b          	addiw	a5,a5,241
    80208dbe:	07b2                	slli	a5,a5,0xc
    80208dc0:	f0f78793          	addi	a5,a5,-241 # f0ef0f <.Lline_table_start0+0xeef9f6>
    80208dc4:	07b2                	slli	a5,a5,0xc
    80208dc6:	0f178793          	addi	a5,a5,241
    80208dca:	07b2                	slli	a5,a5,0xc
    80208dcc:	f0f78793          	addi	a5,a5,-241
    80208dd0:	8f7d                	and	a4,a4,a5
    80208dd2:	010107b7          	lui	a5,0x1010
    80208dd6:	1017879b          	addiw	a5,a5,257
    80208dda:	07c2                	slli	a5,a5,0x10
    80208ddc:	10178793          	addi	a5,a5,257 # 1010101 <.Lline_table_start0+0xff0be8>
    80208de0:	07c2                	slli	a5,a5,0x10
    80208de2:	10178793          	addi	a5,a5,257
    80208de6:	02f70733          	mul	a4,a4,a5
    80208dea:	9361                	srli	a4,a4,0x38
    80208dec:	57fd                	li	a5,-1
    80208dee:	00e7d733          	srl	a4,a5,a4
    80208df2:	00170293          	addi	t0,a4,1
    80208df6:	4721                	li	a4,8
    80208df8:	e0d76fe3          	bltu	a4,a3,80208c16 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0x14>
    80208dfc:	46a1                	li	a3,8
    80208dfe:	e056eee3          	bltu	a3,t0,80208c1a <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0x18>
    80208e02:	82b6                	mv	t0,a3
    80208e04:	e0029de3          	bnez	t0,80208c1e <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0x1c>
    80208e08:	04000313          	li	t1,64
    80208e0c:	487d                	li	a6,31
    80208e0e:	ea6872e3          	bgeu	a6,t1,80208cb2 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E+0xb0>

0000000080208e12 <.LBB7_23>:
    80208e12:	00007617          	auipc	a2,0x7
    80208e16:	15e60613          	addi	a2,a2,350 # 8020ff70 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.10>
    80208e1a:	02000593          	li	a1,32
    80208e1e:	851a                	mv	a0,t1
    80208e20:	00001097          	auipc	ra,0x1
    80208e24:	a0e080e7          	jalr	-1522(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000080208e2a <.LBB7_24>:
    80208e2a:	00007617          	auipc	a2,0x7
    80208e2e:	15e60613          	addi	a2,a2,350 # 8020ff88 <.Lanon.e439b2da12f24bb2b2718e35359baf9a.11>
    80208e32:	02000513          	li	a0,32
    80208e36:	02000593          	li	a1,32
    80208e3a:	00001097          	auipc	ra,0x1
    80208e3e:	9f4080e7          	jalr	-1548(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

0000000080208e44 <_ZN78_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..ops..deref..Deref$GT$5deref17he2d8c0fd128a6883E>:
    80208e44:	1141                	addi	sp,sp,-16
    80208e46:	e406                	sd	ra,8(sp)
    80208e48:	e022                	sd	s0,0(sp)
    80208e4a:	0800                	addi	s0,sp,16
    80208e4c:	6402                	ld	s0,0(sp)
    80208e4e:	60a2                	ld	ra,8(sp)
    80208e50:	0141                	addi	sp,sp,16
    80208e52:	8082                	ret

0000000080208e54 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h0b502810223d0774E>:
    80208e54:	1101                	addi	sp,sp,-32
    80208e56:	ec06                	sd	ra,24(sp)
    80208e58:	e822                	sd	s0,16(sp)
    80208e5a:	e426                	sd	s1,8(sp)
    80208e5c:	e04a                	sd	s2,0(sp)
    80208e5e:	1000                	addi	s0,sp,32
    80208e60:	892a                	mv	s2,a0
    80208e62:	4505                	li	a0,1
    80208e64:	00a934af          	amoadd.d	s1,a0,(s2)
    80208e68:	00893503          	ld	a0,8(s2)
    80208e6c:	0230000f          	fence	r,rw
    80208e70:	fe951ce3          	bne	a0,s1,80208e68 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h0b502810223d0774E+0x14>
    80208e74:	01090513          	addi	a0,s2,16
    80208e78:	00000097          	auipc	ra,0x0
    80208e7c:	b0c080e7          	jalr	-1268(ra) # 80208984 <_ZN22buddy_system_allocator4Heap5alloc17h5d8f0b698c8f8e9dE>
    80208e80:	00148593          	addi	a1,s1,1
    80208e84:	0310000f          	fence	rw,w
    80208e88:	00b93423          	sd	a1,8(s2)
    80208e8c:	6902                	ld	s2,0(sp)
    80208e8e:	64a2                	ld	s1,8(sp)
    80208e90:	6442                	ld	s0,16(sp)
    80208e92:	60e2                	ld	ra,24(sp)
    80208e94:	6105                	addi	sp,sp,32
    80208e96:	8082                	ret

0000000080208e98 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hbeaa7ce81ea34079E>:
    80208e98:	1101                	addi	sp,sp,-32
    80208e9a:	ec06                	sd	ra,24(sp)
    80208e9c:	e822                	sd	s0,16(sp)
    80208e9e:	e426                	sd	s1,8(sp)
    80208ea0:	e04a                	sd	s2,0(sp)
    80208ea2:	1000                	addi	s0,sp,32
    80208ea4:	892a                	mv	s2,a0
    80208ea6:	4505                	li	a0,1
    80208ea8:	00a934af          	amoadd.d	s1,a0,(s2)
    80208eac:	00893503          	ld	a0,8(s2)
    80208eb0:	0230000f          	fence	r,rw
    80208eb4:	fe951ce3          	bne	a0,s1,80208eac <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hbeaa7ce81ea34079E+0x14>
    80208eb8:	01090513          	addi	a0,s2,16
    80208ebc:	00000097          	auipc	ra,0x0
    80208ec0:	d46080e7          	jalr	-698(ra) # 80208c02 <_ZN22buddy_system_allocator4Heap7dealloc17h5c84ecfe4794c298E>
    80208ec4:	00148513          	addi	a0,s1,1
    80208ec8:	0310000f          	fence	rw,w
    80208ecc:	00a93423          	sd	a0,8(s2)
    80208ed0:	6902                	ld	s2,0(sp)
    80208ed2:	64a2                	ld	s1,8(sp)
    80208ed4:	6442                	ld	s0,16(sp)
    80208ed6:	60e2                	ld	ra,24(sp)
    80208ed8:	6105                	addi	sp,sp,32
    80208eda:	8082                	ret

0000000080208edc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9b6623caf8d45d20E>:
    80208edc:	1141                	addi	sp,sp,-16
    80208ede:	e406                	sd	ra,8(sp)
    80208ee0:	e022                	sd	s0,0(sp)
    80208ee2:	0800                	addi	s0,sp,16
    80208ee4:	6108                	ld	a0,0(a0)
    80208ee6:	6402                	ld	s0,0(sp)
    80208ee8:	60a2                	ld	ra,8(sp)
    80208eea:	0141                	addi	sp,sp,16
    80208eec:	00000317          	auipc	t1,0x0
    80208ef0:	2be30067          	jr	702(t1) # 802091aa <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h84bd9193acdefa11E>

0000000080208ef4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hacf43cd0cf14a9f8E>:
    80208ef4:	1141                	addi	sp,sp,-16
    80208ef6:	e406                	sd	ra,8(sp)
    80208ef8:	e022                	sd	s0,0(sp)
    80208efa:	0800                	addi	s0,sp,16
    80208efc:	6108                	ld	a0,0(a0)
    80208efe:	6402                	ld	s0,0(sp)
    80208f00:	60a2                	ld	ra,8(sp)
    80208f02:	0141                	addi	sp,sp,16
    80208f04:	00000317          	auipc	t1,0x0
    80208f08:	3a230067          	jr	930(t1) # 802092a6 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1b0709ee0fe5e12E>

0000000080208f0c <_ZN4core3ptr59drop_in_place$LT$$RF$riscv..register..scause..Exception$GT$17he2f3c7c1d5181a64E>:
    80208f0c:	1141                	addi	sp,sp,-16
    80208f0e:	e406                	sd	ra,8(sp)
    80208f10:	e022                	sd	s0,0(sp)
    80208f12:	0800                	addi	s0,sp,16
    80208f14:	6402                	ld	s0,0(sp)
    80208f16:	60a2                	ld	ra,8(sp)
    80208f18:	0141                	addi	sp,sp,16
    80208f1a:	8082                	ret

0000000080208f1c <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E>:
    80208f1c:	1141                	addi	sp,sp,-16
    80208f1e:	e406                	sd	ra,8(sp)
    80208f20:	e022                	sd	s0,0(sp)
    80208f22:	0800                	addi	s0,sp,16
    80208f24:	85aa                	mv	a1,a0
    80208f26:	4611                	li	a2,4
    80208f28:	4525                	li	a0,9
    80208f2a:	02b65363          	bge	a2,a1,80208f50 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x34>
    80208f2e:	461d                	li	a2,7
    80208f30:	02b65c63          	bge	a2,a1,80208f68 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x4c>
    80208f34:	4621                	li	a2,8
    80208f36:	04c58f63          	beq	a1,a2,80208f94 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x78>
    80208f3a:	4625                	li	a2,9
    80208f3c:	06c58163          	beq	a1,a2,80208f9e <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x82>
    80208f40:	4629                	li	a2,10
    80208f42:	00c59363          	bne	a1,a2,80208f48 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x2c>
    80208f46:	451d                	li	a0,7
    80208f48:	6402                	ld	s0,0(sp)
    80208f4a:	60a2                	ld	ra,8(sp)
    80208f4c:	0141                	addi	sp,sp,16
    80208f4e:	8082                	ret
    80208f50:	4605                	li	a2,1
    80208f52:	02b64663          	blt	a2,a1,80208f7e <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x62>
    80208f56:	c9a9                	beqz	a1,80208fa8 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x8c>
    80208f58:	4605                	li	a2,1
    80208f5a:	fec597e3          	bne	a1,a2,80208f48 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x2c>
    80208f5e:	4509                	li	a0,2
    80208f60:	6402                	ld	s0,0(sp)
    80208f62:	60a2                	ld	ra,8(sp)
    80208f64:	0141                	addi	sp,sp,16
    80208f66:	8082                	ret
    80208f68:	4615                	li	a2,5
    80208f6a:	04c58463          	beq	a1,a2,80208fb2 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x96>
    80208f6e:	4619                	li	a2,6
    80208f70:	fcc59ce3          	bne	a1,a2,80208f48 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x2c>
    80208f74:	4511                	li	a0,4
    80208f76:	6402                	ld	s0,0(sp)
    80208f78:	60a2                	ld	ra,8(sp)
    80208f7a:	0141                	addi	sp,sp,16
    80208f7c:	8082                	ret
    80208f7e:	4609                	li	a2,2
    80208f80:	02c58e63          	beq	a1,a2,80208fbc <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0xa0>
    80208f84:	4611                	li	a2,4
    80208f86:	fcc591e3          	bne	a1,a2,80208f48 <_ZN5riscv8register6scause9Interrupt4from17hcd7739505e5ee630E+0x2c>
    80208f8a:	450d                	li	a0,3
    80208f8c:	6402                	ld	s0,0(sp)
    80208f8e:	60a2                	ld	ra,8(sp)
    80208f90:	0141                	addi	sp,sp,16
    80208f92:	8082                	ret
    80208f94:	4519                	li	a0,6
    80208f96:	6402                	ld	s0,0(sp)
    80208f98:	60a2                	ld	ra,8(sp)
    80208f9a:	0141                	addi	sp,sp,16
    80208f9c:	8082                	ret
    80208f9e:	4521                	li	a0,8
    80208fa0:	6402                	ld	s0,0(sp)
    80208fa2:	60a2                	ld	ra,8(sp)
    80208fa4:	0141                	addi	sp,sp,16
    80208fa6:	8082                	ret
    80208fa8:	4501                	li	a0,0
    80208faa:	6402                	ld	s0,0(sp)
    80208fac:	60a2                	ld	ra,8(sp)
    80208fae:	0141                	addi	sp,sp,16
    80208fb0:	8082                	ret
    80208fb2:	4515                	li	a0,5
    80208fb4:	6402                	ld	s0,0(sp)
    80208fb6:	60a2                	ld	ra,8(sp)
    80208fb8:	0141                	addi	sp,sp,16
    80208fba:	8082                	ret
    80208fbc:	4505                	li	a0,1
    80208fbe:	6402                	ld	s0,0(sp)
    80208fc0:	60a2                	ld	ra,8(sp)
    80208fc2:	0141                	addi	sp,sp,16
    80208fc4:	8082                	ret

0000000080208fc6 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE>:
    80208fc6:	1141                	addi	sp,sp,-16
    80208fc8:	e406                	sd	ra,8(sp)
    80208fca:	e022                	sd	s0,0(sp)
    80208fcc:	0800                	addi	s0,sp,16
    80208fce:	85aa                	mv	a1,a0
    80208fd0:	4621                	li	a2,8
    80208fd2:	4545                	li	a0,17
    80208fd4:	02b65663          	bge	a2,a1,80209000 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x3a>
    80208fd8:	4639                	li	a2,14
    80208fda:	04b65263          	bge	a2,a1,8020901e <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x58>
    80208fde:	4651                	li	a2,20
    80208fe0:	06b65b63          	bge	a2,a1,80209056 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x90>
    80208fe4:	4655                	li	a2,21
    80208fe6:	0cc58463          	beq	a1,a2,802090ae <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0xe8>
    80208fea:	4659                	li	a2,22
    80208fec:	0cc58663          	beq	a1,a2,802090b8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0xf2>
    80208ff0:	465d                	li	a2,23
    80208ff2:	00c59363          	bne	a1,a2,80208ff8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x32>
    80208ff6:	4541                	li	a0,16
    80208ff8:	6402                	ld	s0,0(sp)
    80208ffa:	60a2                	ld	ra,8(sp)
    80208ffc:	0141                	addi	sp,sp,16
    80208ffe:	8082                	ret
    80209000:	4611                	li	a2,4
    80209002:	02b64c63          	blt	a2,a1,8020903a <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x74>
    80209006:	4605                	li	a2,1
    80209008:	06b64263          	blt	a2,a1,8020906c <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0xa6>
    8020900c:	c9dd                	beqz	a1,802090c2 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0xfc>
    8020900e:	4605                	li	a2,1
    80209010:	fec594e3          	bne	a1,a2,80208ff8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x32>
    80209014:	4505                	li	a0,1
    80209016:	6402                	ld	s0,0(sp)
    80209018:	60a2                	ld	ra,8(sp)
    8020901a:	0141                	addi	sp,sp,16
    8020901c:	8082                	ret
    8020901e:	462d                	li	a2,11
    80209020:	06b64163          	blt	a2,a1,80209082 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0xbc>
    80209024:	4625                	li	a2,9
    80209026:	0ac58363          	beq	a1,a2,802090cc <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x106>
    8020902a:	4629                	li	a2,10
    8020902c:	fcc596e3          	bne	a1,a2,80208ff8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x32>
    80209030:	4525                	li	a0,9
    80209032:	6402                	ld	s0,0(sp)
    80209034:	60a2                	ld	ra,8(sp)
    80209036:	0141                	addi	sp,sp,16
    80209038:	8082                	ret
    8020903a:	4619                	li	a2,6
    8020903c:	04b64e63          	blt	a2,a1,80209098 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0xd2>
    80209040:	4615                	li	a2,5
    80209042:	08c58a63          	beq	a1,a2,802090d6 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x110>
    80209046:	4619                	li	a2,6
    80209048:	fac598e3          	bne	a1,a2,80208ff8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x32>
    8020904c:	4515                	li	a0,5
    8020904e:	6402                	ld	s0,0(sp)
    80209050:	60a2                	ld	ra,8(sp)
    80209052:	0141                	addi	sp,sp,16
    80209054:	8082                	ret
    80209056:	463d                	li	a2,15
    80209058:	08c58463          	beq	a1,a2,802090e0 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x11a>
    8020905c:	4651                	li	a2,20
    8020905e:	f8c59de3          	bne	a1,a2,80208ff8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x32>
    80209062:	4535                	li	a0,13
    80209064:	6402                	ld	s0,0(sp)
    80209066:	60a2                	ld	ra,8(sp)
    80209068:	0141                	addi	sp,sp,16
    8020906a:	8082                	ret
    8020906c:	4609                	li	a2,2
    8020906e:	06c58e63          	beq	a1,a2,802090ea <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x124>
    80209072:	460d                	li	a2,3
    80209074:	f8c592e3          	bne	a1,a2,80208ff8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x32>
    80209078:	450d                	li	a0,3
    8020907a:	6402                	ld	s0,0(sp)
    8020907c:	60a2                	ld	ra,8(sp)
    8020907e:	0141                	addi	sp,sp,16
    80209080:	8082                	ret
    80209082:	4631                	li	a2,12
    80209084:	06c58863          	beq	a1,a2,802090f4 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x12e>
    80209088:	4635                	li	a2,13
    8020908a:	f6c597e3          	bne	a1,a2,80208ff8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x32>
    8020908e:	452d                	li	a0,11
    80209090:	6402                	ld	s0,0(sp)
    80209092:	60a2                	ld	ra,8(sp)
    80209094:	0141                	addi	sp,sp,16
    80209096:	8082                	ret
    80209098:	461d                	li	a2,7
    8020909a:	06c58263          	beq	a1,a2,802090fe <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x138>
    8020909e:	4621                	li	a2,8
    802090a0:	f4c59ce3          	bne	a1,a2,80208ff8 <_ZN5riscv8register6scause9Exception4from17h9c42d4418173eddaE+0x32>
    802090a4:	451d                	li	a0,7
    802090a6:	6402                	ld	s0,0(sp)
    802090a8:	60a2                	ld	ra,8(sp)
    802090aa:	0141                	addi	sp,sp,16
    802090ac:	8082                	ret
    802090ae:	4539                	li	a0,14
    802090b0:	6402                	ld	s0,0(sp)
    802090b2:	60a2                	ld	ra,8(sp)
    802090b4:	0141                	addi	sp,sp,16
    802090b6:	8082                	ret
    802090b8:	453d                	li	a0,15
    802090ba:	6402                	ld	s0,0(sp)
    802090bc:	60a2                	ld	ra,8(sp)
    802090be:	0141                	addi	sp,sp,16
    802090c0:	8082                	ret
    802090c2:	4501                	li	a0,0
    802090c4:	6402                	ld	s0,0(sp)
    802090c6:	60a2                	ld	ra,8(sp)
    802090c8:	0141                	addi	sp,sp,16
    802090ca:	8082                	ret
    802090cc:	4521                	li	a0,8
    802090ce:	6402                	ld	s0,0(sp)
    802090d0:	60a2                	ld	ra,8(sp)
    802090d2:	0141                	addi	sp,sp,16
    802090d4:	8082                	ret
    802090d6:	4511                	li	a0,4
    802090d8:	6402                	ld	s0,0(sp)
    802090da:	60a2                	ld	ra,8(sp)
    802090dc:	0141                	addi	sp,sp,16
    802090de:	8082                	ret
    802090e0:	4531                	li	a0,12
    802090e2:	6402                	ld	s0,0(sp)
    802090e4:	60a2                	ld	ra,8(sp)
    802090e6:	0141                	addi	sp,sp,16
    802090e8:	8082                	ret
    802090ea:	4509                	li	a0,2
    802090ec:	6402                	ld	s0,0(sp)
    802090ee:	60a2                	ld	ra,8(sp)
    802090f0:	0141                	addi	sp,sp,16
    802090f2:	8082                	ret
    802090f4:	4529                	li	a0,10
    802090f6:	6402                	ld	s0,0(sp)
    802090f8:	60a2                	ld	ra,8(sp)
    802090fa:	0141                	addi	sp,sp,16
    802090fc:	8082                	ret
    802090fe:	4519                	li	a0,6
    80209100:	6402                	ld	s0,0(sp)
    80209102:	60a2                	ld	ra,8(sp)
    80209104:	0141                	addi	sp,sp,16
    80209106:	8082                	ret

0000000080209108 <_ZN5riscv8register6scause6Scause4code17h35ab447f086279feE>:
    80209108:	1141                	addi	sp,sp,-16
    8020910a:	e406                	sd	ra,8(sp)
    8020910c:	e022                	sd	s0,0(sp)
    8020910e:	0800                	addi	s0,sp,16
    80209110:	6108                	ld	a0,0(a0)
    80209112:	55fd                	li	a1,-1
    80209114:	15fe                	slli	a1,a1,0x3f
    80209116:	15fd                	addi	a1,a1,-1
    80209118:	8d6d                	and	a0,a0,a1
    8020911a:	6402                	ld	s0,0(sp)
    8020911c:	60a2                	ld	ra,8(sp)
    8020911e:	0141                	addi	sp,sp,16
    80209120:	8082                	ret

0000000080209122 <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17h5debf91c28ede675E>:
    80209122:	7139                	addi	sp,sp,-64
    80209124:	fc06                	sd	ra,56(sp)
    80209126:	f822                	sd	s0,48(sp)
    80209128:	f426                	sd	s1,40(sp)
    8020912a:	f04a                	sd	s2,32(sp)
    8020912c:	0080                	addi	s0,sp,64
    8020912e:	00054603          	lbu	a2,0(a0)
    80209132:	4685                	li	a3,1
    80209134:	00150493          	addi	s1,a0,1
    80209138:	02d61563          	bne	a2,a3,80209162 <.LBB6_6>

000000008020913c <.LBB6_4>:
    8020913c:	00007617          	auipc	a2,0x7
    80209140:	e6460613          	addi	a2,a2,-412 # 8020ffa0 <.Lanon.75ff0572245049a964156ffc40d36dfb.0>
    80209144:	fc040913          	addi	s2,s0,-64
    80209148:	46a5                	li	a3,9
    8020914a:	854a                	mv	a0,s2
    8020914c:	00002097          	auipc	ra,0x2
    80209150:	8f8080e7          	jalr	-1800(ra) # 8020aa44 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    80209154:	fc943c23          	sd	s1,-40(s0)

0000000080209158 <.LBB6_5>:
    80209158:	00007617          	auipc	a2,0x7
    8020915c:	e5860613          	addi	a2,a2,-424 # 8020ffb0 <.Lanon.75ff0572245049a964156ffc40d36dfb.1>
    80209160:	a01d                	j	80209186 <.LBB6_7+0x8>

0000000080209162 <.LBB6_6>:
    80209162:	00007617          	auipc	a2,0x7
    80209166:	e6e60613          	addi	a2,a2,-402 # 8020ffd0 <.Lanon.75ff0572245049a964156ffc40d36dfb.2>
    8020916a:	fc040913          	addi	s2,s0,-64
    8020916e:	46a5                	li	a3,9
    80209170:	854a                	mv	a0,s2
    80209172:	00002097          	auipc	ra,0x2
    80209176:	8d2080e7          	jalr	-1838(ra) # 8020aa44 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    8020917a:	fc943c23          	sd	s1,-40(s0)

000000008020917e <.LBB6_7>:
    8020917e:	00007617          	auipc	a2,0x7
    80209182:	e6260613          	addi	a2,a2,-414 # 8020ffe0 <.Lanon.75ff0572245049a964156ffc40d36dfb.3>
    80209186:	fd840593          	addi	a1,s0,-40
    8020918a:	854a                	mv	a0,s2
    8020918c:	00001097          	auipc	ra,0x1
    80209190:	9fc080e7          	jalr	-1540(ra) # 80209b88 <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>
    80209194:	854a                	mv	a0,s2
    80209196:	00001097          	auipc	ra,0x1
    8020919a:	ae6080e7          	jalr	-1306(ra) # 80209c7c <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    8020919e:	7902                	ld	s2,32(sp)
    802091a0:	74a2                	ld	s1,40(sp)
    802091a2:	7442                	ld	s0,48(sp)
    802091a4:	70e2                	ld	ra,56(sp)
    802091a6:	6121                	addi	sp,sp,64
    802091a8:	8082                	ret

00000000802091aa <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h84bd9193acdefa11E>:
    802091aa:	7179                	addi	sp,sp,-48
    802091ac:	f406                	sd	ra,40(sp)
    802091ae:	f022                	sd	s0,32(sp)
    802091b0:	ec26                	sd	s1,24(sp)
    802091b2:	1800                	addi	s0,sp,48
    802091b4:	00054503          	lbu	a0,0(a0)
    802091b8:	4611                	li	a2,4
    802091ba:	02a64363          	blt	a2,a0,802091e0 <.LBB7_20+0x10>
    802091be:	4605                	li	a2,1
    802091c0:	04a65163          	bge	a2,a0,80209202 <.LBB7_21+0x10>
    802091c4:	4609                	li	a2,2
    802091c6:	06c50263          	beq	a0,a2,8020922a <.LBB7_24>
    802091ca:	460d                	li	a2,3
    802091cc:	06c51763          	bne	a0,a2,8020923a <.LBB7_25>

00000000802091d0 <.LBB7_20>:
    802091d0:	00007617          	auipc	a2,0x7
    802091d4:	e9360613          	addi	a2,a2,-365 # 80210063 <.Lanon.75ff0572245049a964156ffc40d36dfb.10>
    802091d8:	fd040493          	addi	s1,s0,-48
    802091dc:	46a5                	li	a3,9
    802091de:	a06d                	j	80209288 <.LBB7_29+0xe>
    802091e0:	4619                	li	a2,6
    802091e2:	02a65963          	bge	a2,a0,80209214 <.LBB7_22+0x10>
    802091e6:	461d                	li	a2,7
    802091e8:	06c50163          	beq	a0,a2,8020924a <.LBB7_26>
    802091ec:	4621                	li	a2,8
    802091ee:	06c51663          	bne	a0,a2,8020925a <.LBB7_27>

00000000802091f2 <.LBB7_21>:
    802091f2:	00007617          	auipc	a2,0x7
    802091f6:	e1560613          	addi	a2,a2,-491 # 80210007 <.Lanon.75ff0572245049a964156ffc40d36dfb.5>
    802091fa:	fd040493          	addi	s1,s0,-48
    802091fe:	46c9                	li	a3,18
    80209200:	a061                	j	80209288 <.LBB7_29+0xe>
    80209202:	e525                	bnez	a0,8020926a <.LBB7_28>

0000000080209204 <.LBB7_22>:
    80209204:	00004617          	auipc	a2,0x4
    80209208:	53c60613          	addi	a2,a2,1340 # 8020d740 <.Lanon.cb68d3a9003f2ce0aa95ebc54f168231.75+0x30>
    8020920c:	fd040493          	addi	s1,s0,-48
    80209210:	46a1                	li	a3,8
    80209212:	a89d                	j	80209288 <.LBB7_29+0xe>
    80209214:	4615                	li	a2,5
    80209216:	06c51263          	bne	a0,a2,8020927a <.LBB7_29>

000000008020921a <.LBB7_23>:
    8020921a:	00007617          	auipc	a2,0x7
    8020921e:	e2460613          	addi	a2,a2,-476 # 8021003e <.Lanon.75ff0572245049a964156ffc40d36dfb.8>
    80209222:	fd040493          	addi	s1,s0,-48
    80209226:	46bd                	li	a3,15
    80209228:	a085                	j	80209288 <.LBB7_29+0xe>

000000008020922a <.LBB7_24>:
    8020922a:	00007617          	auipc	a2,0x7
    8020922e:	e4260613          	addi	a2,a2,-446 # 8021006c <.Lanon.75ff0572245049a964156ffc40d36dfb.11>
    80209232:	fd040493          	addi	s1,s0,-48
    80209236:	46b9                	li	a3,14
    80209238:	a881                	j	80209288 <.LBB7_29+0xe>

000000008020923a <.LBB7_25>:
    8020923a:	00007617          	auipc	a2,0x7
    8020923e:	e1360613          	addi	a2,a2,-493 # 8021004d <.Lanon.75ff0572245049a964156ffc40d36dfb.9>
    80209242:	fd040493          	addi	s1,s0,-48
    80209246:	46d9                	li	a3,22
    80209248:	a081                	j	80209288 <.LBB7_29+0xe>

000000008020924a <.LBB7_26>:
    8020924a:	00007617          	auipc	a2,0x7
    8020924e:	dcf60613          	addi	a2,a2,-561 # 80210019 <.Lanon.75ff0572245049a964156ffc40d36dfb.6>
    80209252:	fd040493          	addi	s1,s0,-48
    80209256:	46e5                	li	a3,25
    80209258:	a805                	j	80209288 <.LBB7_29+0xe>

000000008020925a <.LBB7_27>:
    8020925a:	00007617          	auipc	a2,0x7
    8020925e:	da660613          	addi	a2,a2,-602 # 80210000 <.Lanon.75ff0572245049a964156ffc40d36dfb.4>
    80209262:	fd040493          	addi	s1,s0,-48
    80209266:	469d                	li	a3,7
    80209268:	a005                	j	80209288 <.LBB7_29+0xe>

000000008020926a <.LBB7_28>:
    8020926a:	00007617          	auipc	a2,0x7
    8020926e:	e1060613          	addi	a2,a2,-496 # 8021007a <.Lanon.75ff0572245049a964156ffc40d36dfb.12>
    80209272:	fd040493          	addi	s1,s0,-48
    80209276:	46d5                	li	a3,21
    80209278:	a801                	j	80209288 <.LBB7_29+0xe>

000000008020927a <.LBB7_29>:
    8020927a:	00007617          	auipc	a2,0x7
    8020927e:	db860613          	addi	a2,a2,-584 # 80210032 <.Lanon.75ff0572245049a964156ffc40d36dfb.7>
    80209282:	fd040493          	addi	s1,s0,-48
    80209286:	46b1                	li	a3,12
    80209288:	8526                	mv	a0,s1
    8020928a:	00001097          	auipc	ra,0x1
    8020928e:	7ba080e7          	jalr	1978(ra) # 8020aa44 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    80209292:	8526                	mv	a0,s1
    80209294:	00001097          	auipc	ra,0x1
    80209298:	9e8080e7          	jalr	-1560(ra) # 80209c7c <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    8020929c:	64e2                	ld	s1,24(sp)
    8020929e:	7402                	ld	s0,32(sp)
    802092a0:	70a2                	ld	ra,40(sp)
    802092a2:	6145                	addi	sp,sp,48
    802092a4:	8082                	ret

00000000802092a6 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17hc1b0709ee0fe5e12E>:
    802092a6:	7179                	addi	sp,sp,-48
    802092a8:	f406                	sd	ra,40(sp)
    802092aa:	f022                	sd	s0,32(sp)
    802092ac:	ec26                	sd	s1,24(sp)
    802092ae:	1800                	addi	s0,sp,48
    802092b0:	00054503          	lbu	a0,0(a0)
    802092b4:	4621                	li	a2,8
    802092b6:	02a64663          	blt	a2,a0,802092e2 <.LBB8_38+0x10>
    802092ba:	460d                	li	a2,3
    802092bc:	04a65763          	bge	a2,a0,8020930a <.LBB8_39+0x10>
    802092c0:	4615                	li	a2,5
    802092c2:	0aa65163          	bge	a2,a0,80209364 <.LBB8_43+0x10>
    802092c6:	4619                	li	a2,6
    802092c8:	0cc50463          	beq	a0,a2,80209390 <.LBB8_46>
    802092cc:	461d                	li	a2,7
    802092ce:	0cc51663          	bne	a0,a2,8020939a <.LBB8_47>

00000000802092d2 <.LBB8_38>:
    802092d2:	00007617          	auipc	a2,0x7
    802092d6:	e6060613          	addi	a2,a2,-416 # 80210132 <.Lanon.75ff0572245049a964156ffc40d36dfb.23>
    802092da:	fd040493          	addi	s1,s0,-48
    802092de:	46ad                	li	a3,11
    802092e0:	a289                	j	80209422 <.LBB8_55+0xe>
    802092e2:	4631                	li	a2,12
    802092e4:	02a65f63          	bge	a2,a0,80209322 <.LBB8_40+0x10>
    802092e8:	4639                	li	a2,14
    802092ea:	08a65863          	bge	a2,a0,8020937a <.LBB8_44+0x10>
    802092ee:	463d                	li	a2,15
    802092f0:	0ac50d63          	beq	a0,a2,802093aa <.LBB8_48>
    802092f4:	4641                	li	a2,16
    802092f6:	0ac51f63          	bne	a0,a2,802093b4 <.LBB8_49>

00000000802092fa <.LBB8_39>:
    802092fa:	00007617          	auipc	a2,0x7
    802092fe:	d9560613          	addi	a2,a2,-619 # 8021008f <.Lanon.75ff0572245049a964156ffc40d36dfb.14>
    80209302:	fd040493          	addi	s1,s0,-48
    80209306:	46cd                	li	a3,19
    80209308:	aa29                	j	80209422 <.LBB8_55+0xe>
    8020930a:	4605                	li	a2,1
    8020930c:	02a64963          	blt	a2,a0,8020933e <.LBB8_41+0x10>
    80209310:	e955                	bnez	a0,802093c4 <.LBB8_50>

0000000080209312 <.LBB8_40>:
    80209312:	00007617          	auipc	a2,0x7
    80209316:	e6960613          	addi	a2,a2,-407 # 8021017b <.Lanon.75ff0572245049a964156ffc40d36dfb.30>
    8020931a:	fd040493          	addi	s1,s0,-48
    8020931e:	46d5                	li	a3,21
    80209320:	a209                	j	80209422 <.LBB8_55+0xe>
    80209322:	4629                	li	a2,10
    80209324:	02a64563          	blt	a2,a0,8020934e <.LBB8_42+0xa>
    80209328:	4625                	li	a2,9
    8020932a:	0ac51563          	bne	a0,a2,802093d4 <.LBB8_51>

000000008020932e <.LBB8_41>:
    8020932e:	00007617          	auipc	a2,0x7
    80209332:	de060613          	addi	a2,a2,-544 # 8021010e <.Lanon.75ff0572245049a964156ffc40d36dfb.21>
    80209336:	fd040493          	addi	s1,s0,-48
    8020933a:	46e1                	li	a3,24
    8020933c:	a0dd                	j	80209422 <.LBB8_55+0xe>
    8020933e:	4609                	li	a2,2
    80209340:	0ac51263          	bne	a0,a2,802093e4 <.LBB8_52>

0000000080209344 <.LBB8_42>:
    80209344:	00007617          	auipc	a2,0x7
    80209348:	e2560613          	addi	a2,a2,-475 # 80210169 <.Lanon.75ff0572245049a964156ffc40d36dfb.28>
    8020934c:	a8c1                	j	8020941c <.LBB8_55+0x8>
    8020934e:	462d                	li	a2,11
    80209350:	0ac51263          	bne	a0,a2,802093f4 <.LBB8_53>

0000000080209354 <.LBB8_43>:
    80209354:	00007617          	auipc	a2,0x7
    80209358:	d9960613          	addi	a2,a2,-615 # 802100ed <.Lanon.75ff0572245049a964156ffc40d36dfb.19>
    8020935c:	fd040493          	addi	s1,s0,-48
    80209360:	46b5                	li	a3,13
    80209362:	a0c1                	j	80209422 <.LBB8_55+0xe>
    80209364:	4611                	li	a2,4
    80209366:	08c51f63          	bne	a0,a2,80209404 <.LBB8_54>

000000008020936a <.LBB8_44>:
    8020936a:	00007617          	auipc	a2,0x7
    8020936e:	dec60613          	addi	a2,a2,-532 # 80210156 <.Lanon.75ff0572245049a964156ffc40d36dfb.26>
    80209372:	fd040493          	addi	s1,s0,-48
    80209376:	46a5                	li	a3,9
    80209378:	a06d                	j	80209422 <.LBB8_55+0xe>
    8020937a:	4635                	li	a2,13
    8020937c:	08c51c63          	bne	a0,a2,80209414 <.LBB8_55>

0000000080209380 <.LBB8_45>:
    80209380:	00007617          	auipc	a2,0x7
    80209384:	d4660613          	addi	a2,a2,-698 # 802100c6 <.Lanon.75ff0572245049a964156ffc40d36dfb.17>
    80209388:	fd040493          	addi	s1,s0,-48
    8020938c:	46e5                	li	a3,25
    8020938e:	a851                	j	80209422 <.LBB8_55+0xe>

0000000080209390 <.LBB8_46>:
    80209390:	00007617          	auipc	a2,0x7
    80209394:	dad60613          	addi	a2,a2,-595 # 8021013d <.Lanon.75ff0572245049a964156ffc40d36dfb.24>
    80209398:	a891                	j	802093ec <.LBB8_52+0x8>

000000008020939a <.LBB8_47>:
    8020939a:	00007617          	auipc	a2,0x7
    8020939e:	d8c60613          	addi	a2,a2,-628 # 80210126 <.Lanon.75ff0572245049a964156ffc40d36dfb.22>
    802093a2:	fd040493          	addi	s1,s0,-48
    802093a6:	46b1                	li	a3,12
    802093a8:	a8ad                	j	80209422 <.LBB8_55+0xe>

00000000802093aa <.LBB8_48>:
    802093aa:	00007617          	auipc	a2,0x7
    802093ae:	cf860613          	addi	a2,a2,-776 # 802100a2 <.Lanon.75ff0572245049a964156ffc40d36dfb.15>
    802093b2:	a0ad                	j	8020941c <.LBB8_55+0x8>

00000000802093b4 <.LBB8_49>:
    802093b4:	00007617          	auipc	a2,0x7
    802093b8:	c4c60613          	addi	a2,a2,-948 # 80210000 <.Lanon.75ff0572245049a964156ffc40d36dfb.4>
    802093bc:	fd040493          	addi	s1,s0,-48
    802093c0:	469d                	li	a3,7
    802093c2:	a085                	j	80209422 <.LBB8_55+0xe>

00000000802093c4 <.LBB8_50>:
    802093c4:	00005617          	auipc	a2,0x5
    802093c8:	7e460613          	addi	a2,a2,2020 # 8020eba8 <anon.bb0fdcfdfbb943db6b4744f30d662cc5.5.llvm.12230177447416708706+0x10>
    802093cc:	fd040493          	addi	s1,s0,-48
    802093d0:	46c1                	li	a3,16
    802093d2:	a881                	j	80209422 <.LBB8_55+0xe>

00000000802093d4 <.LBB8_51>:
    802093d4:	00007617          	auipc	a2,0x7
    802093d8:	d2660613          	addi	a2,a2,-730 # 802100fa <.Lanon.75ff0572245049a964156ffc40d36dfb.20>
    802093dc:	fd040493          	addi	s1,s0,-48
    802093e0:	46d1                	li	a3,20
    802093e2:	a081                	j	80209422 <.LBB8_55+0xe>

00000000802093e4 <.LBB8_52>:
    802093e4:	00007617          	auipc	a2,0x7
    802093e8:	d7b60613          	addi	a2,a2,-645 # 8021015f <.Lanon.75ff0572245049a964156ffc40d36dfb.27>
    802093ec:	fd040493          	addi	s1,s0,-48
    802093f0:	46a9                	li	a3,10
    802093f2:	a805                	j	80209422 <.LBB8_55+0xe>

00000000802093f4 <.LBB8_53>:
    802093f4:	00007617          	auipc	a2,0x7
    802093f8:	ceb60613          	addi	a2,a2,-789 # 802100df <.Lanon.75ff0572245049a964156ffc40d36dfb.18>
    802093fc:	fd040493          	addi	s1,s0,-48
    80209400:	46b9                	li	a3,14
    80209402:	a005                	j	80209422 <.LBB8_55+0xe>

0000000080209404 <.LBB8_54>:
    80209404:	00007617          	auipc	a2,0x7
    80209408:	d4360613          	addi	a2,a2,-701 # 80210147 <.Lanon.75ff0572245049a964156ffc40d36dfb.25>
    8020940c:	fd040493          	addi	s1,s0,-48
    80209410:	46bd                	li	a3,15
    80209412:	a801                	j	80209422 <.LBB8_55+0xe>

0000000080209414 <.LBB8_55>:
    80209414:	00007617          	auipc	a2,0x7
    80209418:	ca060613          	addi	a2,a2,-864 # 802100b4 <.Lanon.75ff0572245049a964156ffc40d36dfb.16>
    8020941c:	fd040493          	addi	s1,s0,-48
    80209420:	46c9                	li	a3,18
    80209422:	8526                	mv	a0,s1
    80209424:	00001097          	auipc	ra,0x1
    80209428:	620080e7          	jalr	1568(ra) # 8020aa44 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    8020942c:	8526                	mv	a0,s1
    8020942e:	00001097          	auipc	ra,0x1
    80209432:	84e080e7          	jalr	-1970(ra) # 80209c7c <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    80209436:	64e2                	ld	s1,24(sp)
    80209438:	7402                	ld	s0,32(sp)
    8020943a:	70a2                	ld	ra,40(sp)
    8020943c:	6145                	addi	sp,sp,48
    8020943e:	8082                	ret

0000000080209440 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E>:
    80209440:	1141                	addi	sp,sp,-16
    80209442:	e406                	sd	ra,8(sp)
    80209444:	e022                	sd	s0,0(sp)
    80209446:	0800                	addi	s0,sp,16
    80209448:	00854583          	lbu	a1,8(a0)
    8020944c:	c591                	beqz	a1,80209458 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h05e01cfad6791585E+0x18>
    8020944e:	6108                	ld	a0,0(a0)
    80209450:	0310000f          	fence	rw,w
    80209454:	458d                	li	a1,3
    80209456:	e10c                	sd	a1,0(a0)
    80209458:	6402                	ld	s0,0(sp)
    8020945a:	60a2                	ld	ra,8(sp)
    8020945c:	0141                	addi	sp,sp,16
    8020945e:	8082                	ret

0000000080209460 <_ZN5alloc5alloc18handle_alloc_error17hd88389f3109c4dfdE>:
    80209460:	1141                	addi	sp,sp,-16
    80209462:	e406                	sd	ra,8(sp)
    80209464:	ffffc097          	auipc	ra,0xffffc
    80209468:	c9e080e7          	jalr	-866(ra) # 80205102 <__rust_alloc_error_handler>
	...

000000008020946e <__rg_oom>:
    8020946e:	1141                	addi	sp,sp,-16
    80209470:	e406                	sd	ra,8(sp)
    80209472:	ffffb097          	auipc	ra,0xffffb
    80209476:	a96080e7          	jalr	-1386(ra) # 80203f08 <rust_oom>
	...

000000008020947c <_ZN5alloc11collections5btree4node10splitpoint17h698ccb298c98f398E>:
    8020947c:	4615                	li	a2,5
    8020947e:	00c5f863          	bgeu	a1,a2,8020948e <_ZN5alloc11collections5btree4node10splitpoint17h698ccb298c98f398E+0x12>
    80209482:	4681                	li	a3,0
    80209484:	4611                	li	a2,4
    80209486:	e110                	sd	a2,0(a0)
    80209488:	e514                	sd	a3,8(a0)
    8020948a:	e90c                	sd	a1,16(a0)
    8020948c:	8082                	ret
    8020948e:	00c58c63          	beq	a1,a2,802094a6 <_ZN5alloc11collections5btree4node10splitpoint17h698ccb298c98f398E+0x2a>
    80209492:	4619                	li	a2,6
    80209494:	00c59f63          	bne	a1,a2,802094b2 <_ZN5alloc11collections5btree4node10splitpoint17h698ccb298c98f398E+0x36>
    80209498:	4581                	li	a1,0
    8020949a:	4685                	li	a3,1
    8020949c:	4615                	li	a2,5
    8020949e:	e110                	sd	a2,0(a0)
    802094a0:	e514                	sd	a3,8(a0)
    802094a2:	e90c                	sd	a1,16(a0)
    802094a4:	8082                	ret
    802094a6:	4681                	li	a3,0
    802094a8:	862e                	mv	a2,a1
    802094aa:	e110                	sd	a2,0(a0)
    802094ac:	e514                	sd	a3,8(a0)
    802094ae:	e90c                	sd	a1,16(a0)
    802094b0:	8082                	ret
    802094b2:	15e5                	addi	a1,a1,-7
    802094b4:	4685                	li	a3,1
    802094b6:	e110                	sd	a2,0(a0)
    802094b8:	e514                	sd	a3,8(a0)
    802094ba:	e90c                	sd	a1,16(a0)
    802094bc:	8082                	ret

00000000802094be <_ZN5alloc7raw_vec17capacity_overflow17h81167f6233698fbeE>:
    802094be:	1141                	addi	sp,sp,-16
    802094c0:	e406                	sd	ra,8(sp)

00000000802094c2 <.LBB23_1>:
    802094c2:	00007517          	auipc	a0,0x7
    802094c6:	cea50513          	addi	a0,a0,-790 # 802101ac <.Lanon.e90f1eee9d5e517caa26d067bfb75e11.19>

00000000802094ca <.LBB23_2>:
    802094ca:	00007617          	auipc	a2,0x7
    802094ce:	cf660613          	addi	a2,a2,-778 # 802101c0 <.Lanon.e90f1eee9d5e517caa26d067bfb75e11.20>
    802094d2:	45c5                	li	a1,17
    802094d4:	00000097          	auipc	ra,0x0
    802094d8:	32e080e7          	jalr	814(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

00000000802094de <_ZN4core3ptr32drop_in_place$LT$$RF$$RF$str$GT$17h210e25d9bcd1565dE>:
    802094de:	1141                	addi	sp,sp,-16
    802094e0:	e406                	sd	ra,8(sp)
    802094e2:	e022                	sd	s0,0(sp)
    802094e4:	0800                	addi	s0,sp,16
    802094e6:	6402                	ld	s0,0(sp)
    802094e8:	60a2                	ld	ra,8(sp)
    802094ea:	0141                	addi	sp,sp,16
    802094ec:	8082                	ret

00000000802094ee <_ZN49_$LT$log..Level$u20$as$u20$core..fmt..Display$GT$3fmt17h386784179059ff14E>:
    802094ee:	1141                	addi	sp,sp,-16
    802094f0:	e406                	sd	ra,8(sp)
    802094f2:	e022                	sd	s0,0(sp)
    802094f4:	0800                	addi	s0,sp,16
    802094f6:	6108                	ld	a0,0(a0)
    802094f8:	0512                	slli	a0,a0,0x4

00000000802094fa <.LBB6_1>:
    802094fa:	00007617          	auipc	a2,0x7
    802094fe:	d2660613          	addi	a2,a2,-730 # 80210220 <_ZN3log15LOG_LEVEL_NAMES17h6ea73011fb54f526E>
    80209502:	9532                	add	a0,a0,a2
    80209504:	6114                	ld	a3,0(a0)
    80209506:	6510                	ld	a2,8(a0)
    80209508:	852e                	mv	a0,a1
    8020950a:	85b6                	mv	a1,a3
    8020950c:	6402                	ld	s0,0(sp)
    8020950e:	60a2                	ld	ra,8(sp)
    80209510:	0141                	addi	sp,sp,16
    80209512:	00001317          	auipc	t1,0x1
    80209516:	1fa30067          	jr	506(t1) # 8020a70c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

000000008020951a <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$7enabled17h2914a33644809ac3E>:
    8020951a:	1141                	addi	sp,sp,-16
    8020951c:	e406                	sd	ra,8(sp)
    8020951e:	e022                	sd	s0,0(sp)
    80209520:	0800                	addi	s0,sp,16
    80209522:	4501                	li	a0,0
    80209524:	6402                	ld	s0,0(sp)
    80209526:	60a2                	ld	ra,8(sp)
    80209528:	0141                	addi	sp,sp,16
    8020952a:	8082                	ret

000000008020952c <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$3log17h2c058c52fb09609fE>:
    8020952c:	1141                	addi	sp,sp,-16
    8020952e:	e406                	sd	ra,8(sp)
    80209530:	e022                	sd	s0,0(sp)
    80209532:	0800                	addi	s0,sp,16
    80209534:	6402                	ld	s0,0(sp)
    80209536:	60a2                	ld	ra,8(sp)
    80209538:	0141                	addi	sp,sp,16
    8020953a:	8082                	ret

000000008020953c <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$5flush17h5e0884bca37ce84bE>:
    8020953c:	1141                	addi	sp,sp,-16
    8020953e:	e406                	sd	ra,8(sp)
    80209540:	e022                	sd	s0,0(sp)
    80209542:	0800                	addi	s0,sp,16
    80209544:	6402                	ld	s0,0(sp)
    80209546:	60a2                	ld	ra,8(sp)
    80209548:	0141                	addi	sp,sp,16
    8020954a:	8082                	ret

000000008020954c <_ZN3log10set_logger17h845e942e3735d12aE>:
    8020954c:	1141                	addi	sp,sp,-16
    8020954e:	e406                	sd	ra,8(sp)
    80209550:	e022                	sd	s0,0(sp)
    80209552:	0800                	addi	s0,sp,16

0000000080209554 <.LBB16_6>:
    80209554:	0021a697          	auipc	a3,0x21a
    80209558:	c2c68693          	addi	a3,a3,-980 # 80423180 <_ZN3log5STATE17h94625bce60546898E>
    8020955c:	4605                	li	a2,1
    8020955e:	1606b72f          	lr.d.aqrl	a4,(a3)
    80209562:	e701                	bnez	a4,8020956a <.LBB16_6+0x16>
    80209564:	1ec6b7af          	sc.d.aqrl	a5,a2,(a3)
    80209568:	fbfd                	bnez	a5,8020955e <.LBB16_6+0xa>
    8020956a:	cf09                	beqz	a4,80209584 <.LBB16_6+0x30>
    8020956c:	4505                	li	a0,1
    8020956e:	02a71663          	bne	a4,a0,8020959a <.LBB16_7+0x14>
    80209572:	4605                	li	a2,1
    80209574:	0330000f          	fence	rw,rw
    80209578:	6288                	ld	a0,0(a3)
    8020957a:	0230000f          	fence	r,rw
    8020957e:	fec50be3          	beq	a0,a2,80209574 <.LBB16_6+0x20>
    80209582:	a821                	j	8020959a <.LBB16_7+0x14>
    80209584:	4601                	li	a2,0

0000000080209586 <.LBB16_7>:
    80209586:	00009717          	auipc	a4,0x9
    8020958a:	a7a70713          	addi	a4,a4,-1414 # 80212000 <erodata>
    8020958e:	e308                	sd	a0,0(a4)
    80209590:	e70c                	sd	a1,8(a4)
    80209592:	0310000f          	fence	rw,w
    80209596:	4509                	li	a0,2
    80209598:	e288                	sd	a0,0(a3)
    8020959a:	8532                	mv	a0,a2
    8020959c:	6402                	ld	s0,0(sp)
    8020959e:	60a2                	ld	ra,8(sp)
    802095a0:	0141                	addi	sp,sp,16
    802095a2:	8082                	ret

00000000802095a4 <_ZN3log17__private_api_log17hba2caac2d4fb19bcE>:
    802095a4:	7175                	addi	sp,sp,-144
    802095a6:	e506                	sd	ra,136(sp)
    802095a8:	e122                	sd	s0,128(sp)
    802095aa:	0900                	addi	s0,sp,144
    802095ac:	00063f03          	ld	t5,0(a2)
    802095b0:	00863e03          	ld	t3,8(a2)
    802095b4:	01063303          	ld	t1,16(a2)
    802095b8:	01863383          	ld	t2,24(a2)
    802095bc:	02063883          	ld	a7,32(a2)
    802095c0:	02863283          	ld	t0,40(a2)
    802095c4:	03062803          	lw	a6,48(a2)
    802095c8:	0330000f          	fence	rw,rw

00000000802095cc <.LBB21_4>:
    802095cc:	0021a617          	auipc	a2,0x21a
    802095d0:	bb460613          	addi	a2,a2,-1100 # 80423180 <_ZN3log5STATE17h94625bce60546898E>
    802095d4:	6214                	ld	a3,0(a2)
    802095d6:	862a                	mv	a2,a0
    802095d8:	4509                	li	a0,2
    802095da:	0230000f          	fence	r,rw
    802095de:	00a68b63          	beq	a3,a0,802095f4 <.LBB21_7>

00000000802095e2 <.LBB21_5>:
    802095e2:	00007e97          	auipc	t4,0x7
    802095e6:	c9ee8e93          	addi	t4,t4,-866 # 80210280 <.Lanon.0a5889d985f7de6288ab56f22fa64c04.18>

00000000802095ea <.LBB21_6>:
    802095ea:	00007517          	auipc	a0,0x7
    802095ee:	bee50513          	addi	a0,a0,-1042 # 802101d8 <.Lanon.0a5889d985f7de6288ab56f22fa64c04.2>
    802095f2:	a801                	j	80209602 <.LBB21_7+0xe>

00000000802095f4 <.LBB21_7>:
    802095f4:	00009697          	auipc	a3,0x9
    802095f8:	a0c68693          	addi	a3,a3,-1524 # 80212000 <erodata>
    802095fc:	6288                	ld	a0,0(a3)
    802095fe:	0086be83          	ld	t4,8(a3)
    80209602:	621c                	ld	a5,0(a2)
    80209604:	01863f83          	ld	t6,24(a2)
    80209608:	7218                	ld	a4,32(a2)
    8020960a:	7614                	ld	a3,40(a2)
    8020960c:	f6b43823          	sd	a1,-144(s0)
    80209610:	f7e43c23          	sd	t5,-136(s0)
    80209614:	660c                	ld	a1,8(a2)
    80209616:	6a10                	ld	a2,16(a2)
    80209618:	f9c43023          	sd	t3,-128(s0)
    8020961c:	f8f43423          	sd	a5,-120(s0)
    80209620:	f8b43823          	sd	a1,-112(s0)
    80209624:	f8c43c23          	sd	a2,-104(s0)
    80209628:	fbf43023          	sd	t6,-96(s0)
    8020962c:	fae43423          	sd	a4,-88(s0)
    80209630:	fad43823          	sd	a3,-80(s0)
    80209634:	fa043c23          	sd	zero,-72(s0)
    80209638:	fc643023          	sd	t1,-64(s0)
    8020963c:	fc743423          	sd	t2,-56(s0)
    80209640:	fc043823          	sd	zero,-48(s0)
    80209644:	fd143c23          	sd	a7,-40(s0)
    80209648:	fe543023          	sd	t0,-32(s0)
    8020964c:	4585                	li	a1,1
    8020964e:	feb42423          	sw	a1,-24(s0)
    80209652:	ff042623          	sw	a6,-20(s0)
    80209656:	020eb603          	ld	a2,32(t4)
    8020965a:	f7040593          	addi	a1,s0,-144
    8020965e:	9602                	jalr	a2
    80209660:	640a                	ld	s0,128(sp)
    80209662:	60aa                	ld	ra,136(sp)
    80209664:	6149                	addi	sp,sp,144
    80209666:	8082                	ret

0000000080209668 <_ZN56_$LT$log..SetLoggerError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha15d64f0af80709eE>:
    80209668:	7139                	addi	sp,sp,-64
    8020966a:	fc06                	sd	ra,56(sp)
    8020966c:	f822                	sd	s0,48(sp)
    8020966e:	f426                	sd	s1,40(sp)
    80209670:	f04a                	sd	s2,32(sp)
    80209672:	0080                	addi	s0,sp,64
    80209674:	84aa                	mv	s1,a0

0000000080209676 <.LBB30_1>:
    80209676:	00007617          	auipc	a2,0x7
    8020967a:	c3a60613          	addi	a2,a2,-966 # 802102b0 <.Lanon.0a5889d985f7de6288ab56f22fa64c04.46>
    8020967e:	fc040913          	addi	s2,s0,-64
    80209682:	46b9                	li	a3,14
    80209684:	854a                	mv	a0,s2
    80209686:	00001097          	auipc	ra,0x1
    8020968a:	3be080e7          	jalr	958(ra) # 8020aa44 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>
    8020968e:	fc943c23          	sd	s1,-40(s0)

0000000080209692 <.LBB30_2>:
    80209692:	00007617          	auipc	a2,0x7
    80209696:	c2e60613          	addi	a2,a2,-978 # 802102c0 <.Lanon.0a5889d985f7de6288ab56f22fa64c04.47>
    8020969a:	fd840593          	addi	a1,s0,-40
    8020969e:	854a                	mv	a0,s2
    802096a0:	00000097          	auipc	ra,0x0
    802096a4:	4e8080e7          	jalr	1256(ra) # 80209b88 <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>
    802096a8:	854a                	mv	a0,s2
    802096aa:	00000097          	auipc	ra,0x0
    802096ae:	5d2080e7          	jalr	1490(ra) # 80209c7c <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>
    802096b2:	7902                	ld	s2,32(sp)
    802096b4:	74a2                	ld	s1,40(sp)
    802096b6:	7442                	ld	s0,48(sp)
    802096b8:	70e2                	ld	ra,56(sp)
    802096ba:	6121                	addi	sp,sp,64
    802096bc:	8082                	ret

00000000802096be <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa024c3ec3d27453E>:
    802096be:	1141                	addi	sp,sp,-16
    802096c0:	e406                	sd	ra,8(sp)
    802096c2:	e022                	sd	s0,0(sp)
    802096c4:	0800                	addi	s0,sp,16

00000000802096c6 <.LBB3_1>:
    802096c6:	00007697          	auipc	a3,0x7
    802096ca:	c1a68693          	addi	a3,a3,-998 # 802102e0 <.Lanon.25da2fd1a18ee2f8319b7f21a1bf996d.0>
    802096ce:	4609                	li	a2,2
    802096d0:	852e                	mv	a0,a1
    802096d2:	85b6                	mv	a1,a3
    802096d4:	6402                	ld	s0,0(sp)
    802096d6:	60a2                	ld	ra,8(sp)
    802096d8:	0141                	addi	sp,sp,16
    802096da:	00001317          	auipc	t1,0x1
    802096de:	03230067          	jr	50(t1) # 8020a70c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

00000000802096e2 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>:
    802096e2:	6108                	ld	a0,0(a0)
    802096e4:	a001                	j	802096e4 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E+0x2>

00000000802096e6 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2c14ec9a62b1a876E>:
    802096e6:	8082                	ret

00000000802096e8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c19ef341f8f601cE>:
    802096e8:	715d                	addi	sp,sp,-80
    802096ea:	e486                	sd	ra,72(sp)
    802096ec:	e0a2                	sd	s0,64(sp)
    802096ee:	fc26                	sd	s1,56(sp)
    802096f0:	842e                	mv	s0,a1
    802096f2:	84aa                	mv	s1,a0
    802096f4:	00002097          	auipc	ra,0x2
    802096f8:	5bc080e7          	jalr	1468(ra) # 8020bcb0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>
    802096fc:	e51d                	bnez	a0,8020972a <.LBB76_5+0x18>
    802096fe:	7008                	ld	a0,32(s0)
    80209700:	740c                	ld	a1,40(s0)

0000000080209702 <.LBB76_4>:
    80209702:	00007617          	auipc	a2,0x7
    80209706:	bee60613          	addi	a2,a2,-1042 # 802102f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.141>
    8020970a:	e432                	sd	a2,8(sp)
    8020970c:	4605                	li	a2,1
    8020970e:	e832                	sd	a2,16(sp)
    80209710:	ec02                	sd	zero,24(sp)

0000000080209712 <.LBB76_5>:
    80209712:	00007617          	auipc	a2,0x7
    80209716:	bd660613          	addi	a2,a2,-1066 # 802102e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    8020971a:	f432                	sd	a2,40(sp)
    8020971c:	f802                	sd	zero,48(sp)
    8020971e:	0030                	addi	a2,sp,8
    80209720:	00001097          	auipc	ra,0x1
    80209724:	bba080e7          	jalr	-1094(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    80209728:	c519                	beqz	a0,80209736 <.LBB76_5+0x24>
    8020972a:	4505                	li	a0,1
    8020972c:	74e2                	ld	s1,56(sp)
    8020972e:	6406                	ld	s0,64(sp)
    80209730:	60a6                	ld	ra,72(sp)
    80209732:	6161                	addi	sp,sp,80
    80209734:	8082                	ret
    80209736:	00848513          	addi	a0,s1,8
    8020973a:	85a2                	mv	a1,s0
    8020973c:	74e2                	ld	s1,56(sp)
    8020973e:	6406                	ld	s0,64(sp)
    80209740:	60a6                	ld	ra,72(sp)
    80209742:	6161                	addi	sp,sp,80
    80209744:	00002317          	auipc	t1,0x2
    80209748:	56c30067          	jr	1388(t1) # 8020bcb0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>

000000008020974c <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7108e12ad9db6507E>:
    8020974c:	0160f537          	lui	a0,0x160f
    80209750:	6275051b          	addiw	a0,a0,1575
    80209754:	0536                	slli	a0,a0,0xd
    80209756:	3d750513          	addi	a0,a0,983 # 160f3d7 <.Lline_table_start0+0x15efebe>
    8020975a:	0532                	slli	a0,a0,0xc
    8020975c:	f8150513          	addi	a0,a0,-127
    80209760:	0532                	slli	a0,a0,0xc
    80209762:	f4250513          	addi	a0,a0,-190
    80209766:	8082                	ret

0000000080209768 <_ZN4core6option13expect_failed17h7584820e4d909684E>:
    80209768:	711d                	addi	sp,sp,-96
    8020976a:	ec86                	sd	ra,88(sp)
    8020976c:	e42a                	sd	a0,8(sp)
    8020976e:	e82e                	sd	a1,16(sp)
    80209770:	0028                	addi	a0,sp,8
    80209772:	e4aa                	sd	a0,72(sp)

0000000080209774 <.LBB117_1>:
    80209774:	00003517          	auipc	a0,0x3
    80209778:	c4e50513          	addi	a0,a0,-946 # 8020c3c2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    8020977c:	e8aa                	sd	a0,80(sp)

000000008020977e <.LBB117_2>:
    8020977e:	00007517          	auipc	a0,0x7
    80209782:	bb250513          	addi	a0,a0,-1102 # 80210330 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.176>
    80209786:	ec2a                	sd	a0,24(sp)
    80209788:	4505                	li	a0,1
    8020978a:	f02a                	sd	a0,32(sp)
    8020978c:	f402                	sd	zero,40(sp)
    8020978e:	00ac                	addi	a1,sp,72
    80209790:	fc2e                	sd	a1,56(sp)
    80209792:	e0aa                	sd	a0,64(sp)
    80209794:	0828                	addi	a0,sp,24
    80209796:	85b2                	mv	a1,a2
    80209798:	00000097          	auipc	ra,0x0
    8020979c:	0d6080e7          	jalr	214(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000802097a2 <_ZN4core6option18expect_none_failed17hf4b8b266798017eaE>:
    802097a2:	7119                	addi	sp,sp,-128
    802097a4:	fc86                	sd	ra,120(sp)
    802097a6:	e42a                	sd	a0,8(sp)
    802097a8:	e82e                	sd	a1,16(sp)
    802097aa:	ec32                	sd	a2,24(sp)
    802097ac:	f036                	sd	a3,32(sp)
    802097ae:	0028                	addi	a0,sp,8
    802097b0:	ecaa                	sd	a0,88(sp)

00000000802097b2 <.LBB118_1>:
    802097b2:	00003517          	auipc	a0,0x3
    802097b6:	c1050513          	addi	a0,a0,-1008 # 8020c3c2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    802097ba:	f0aa                	sd	a0,96(sp)
    802097bc:	0828                	addi	a0,sp,24
    802097be:	f4aa                	sd	a0,104(sp)

00000000802097c0 <.LBB118_2>:
    802097c0:	00003517          	auipc	a0,0x3
    802097c4:	bfa50513          	addi	a0,a0,-1030 # 8020c3ba <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>
    802097c8:	f8aa                	sd	a0,112(sp)

00000000802097ca <.LBB118_3>:
    802097ca:	00007517          	auipc	a0,0x7
    802097ce:	b7e50513          	addi	a0,a0,-1154 # 80210348 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.178>
    802097d2:	f42a                	sd	a0,40(sp)
    802097d4:	4509                	li	a0,2
    802097d6:	f82a                	sd	a0,48(sp)
    802097d8:	fc02                	sd	zero,56(sp)
    802097da:	08ac                	addi	a1,sp,88
    802097dc:	e4ae                	sd	a1,72(sp)
    802097de:	e8aa                	sd	a0,80(sp)
    802097e0:	1028                	addi	a0,sp,40
    802097e2:	85ba                	mv	a1,a4
    802097e4:	00000097          	auipc	ra,0x0
    802097e8:	08a080e7          	jalr	138(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

00000000802097ee <_ZN4core5panic9PanicInfo7message17ha124ea628bb1593aE>:
    802097ee:	6908                	ld	a0,16(a0)
    802097f0:	8082                	ret

00000000802097f2 <_ZN4core5panic9PanicInfo8location17h1a36f39edfc37a5bE>:
    802097f2:	6d08                	ld	a0,24(a0)
    802097f4:	8082                	ret

00000000802097f6 <_ZN4core5panic8Location4file17h3a63c909928b6622E>:
    802097f6:	6110                	ld	a2,0(a0)
    802097f8:	650c                	ld	a1,8(a0)
    802097fa:	8532                	mv	a0,a2
    802097fc:	8082                	ret

00000000802097fe <_ZN4core5panic8Location4line17h438064cf29667b6aE>:
    802097fe:	4908                	lw	a0,16(a0)
    80209800:	8082                	ret

0000000080209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>:
    80209802:	715d                	addi	sp,sp,-80
    80209804:	e486                	sd	ra,72(sp)
    80209806:	fc2a                	sd	a0,56(sp)
    80209808:	e0ae                	sd	a1,64(sp)
    8020980a:	1828                	addi	a0,sp,56
    8020980c:	e42a                	sd	a0,8(sp)
    8020980e:	4505                	li	a0,1
    80209810:	e82a                	sd	a0,16(sp)
    80209812:	ec02                	sd	zero,24(sp)

0000000080209814 <.LBB129_1>:
    80209814:	00007517          	auipc	a0,0x7
    80209818:	ad450513          	addi	a0,a0,-1324 # 802102e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    8020981c:	f42a                	sd	a0,40(sp)
    8020981e:	f802                	sd	zero,48(sp)
    80209820:	0028                	addi	a0,sp,8
    80209822:	85b2                	mv	a1,a2
    80209824:	00000097          	auipc	ra,0x0
    80209828:	04a080e7          	jalr	74(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000008020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>:
    8020982e:	7159                	addi	sp,sp,-112
    80209830:	f486                	sd	ra,104(sp)
    80209832:	e42a                	sd	a0,8(sp)
    80209834:	e82e                	sd	a1,16(sp)
    80209836:	0808                	addi	a0,sp,16
    80209838:	e4aa                	sd	a0,72(sp)

000000008020983a <.LBB130_1>:
    8020983a:	00003517          	auipc	a0,0x3
    8020983e:	98e50513          	addi	a0,a0,-1650 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    80209842:	e8aa                	sd	a0,80(sp)
    80209844:	002c                	addi	a1,sp,8
    80209846:	ecae                	sd	a1,88(sp)
    80209848:	f0aa                	sd	a0,96(sp)

000000008020984a <.LBB130_2>:
    8020984a:	00007517          	auipc	a0,0x7
    8020984e:	b5650513          	addi	a0,a0,-1194 # 802103a0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.188>
    80209852:	ec2a                	sd	a0,24(sp)
    80209854:	4509                	li	a0,2
    80209856:	f02a                	sd	a0,32(sp)
    80209858:	f402                	sd	zero,40(sp)
    8020985a:	00ac                	addi	a1,sp,72
    8020985c:	fc2e                	sd	a1,56(sp)
    8020985e:	e0aa                	sd	a0,64(sp)
    80209860:	0828                	addi	a0,sp,24
    80209862:	85b2                	mv	a1,a2
    80209864:	00000097          	auipc	ra,0x0
    80209868:	00a080e7          	jalr	10(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000008020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>:
    8020986e:	7179                	addi	sp,sp,-48
    80209870:	f406                	sd	ra,40(sp)

0000000080209872 <.LBB131_1>:
    80209872:	00007617          	auipc	a2,0x7
    80209876:	a7660613          	addi	a2,a2,-1418 # 802102e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    8020987a:	e432                	sd	a2,8(sp)

000000008020987c <.LBB131_2>:
    8020987c:	00007617          	auipc	a2,0x7
    80209880:	aec60613          	addi	a2,a2,-1300 # 80210368 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.179>
    80209884:	e832                	sd	a2,16(sp)
    80209886:	ec2a                	sd	a0,24(sp)
    80209888:	f02e                	sd	a1,32(sp)
    8020988a:	0028                	addi	a0,sp,8
    8020988c:	ffffa097          	auipc	ra,0xffffa
    80209890:	4d8080e7          	jalr	1240(ra) # 80203d64 <rust_begin_unwind>
	...

0000000080209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>:
    80209896:	715d                	addi	sp,sp,-80
    80209898:	e486                	sd	ra,72(sp)
    8020989a:	e0a2                	sd	s0,64(sp)
    8020989c:	fc26                	sd	s1,56(sp)
    8020989e:	f84a                	sd	s2,48(sp)
    802098a0:	f44e                	sd	s3,40(sp)
    802098a2:	f052                	sd	s4,32(sp)
    802098a4:	ec56                	sd	s5,24(sp)
    802098a6:	e85a                	sd	s6,16(sp)
    802098a8:	e45e                	sd	s7,8(sp)
    802098aa:	e062                	sd	s8,0(sp)
    802098ac:	ca7d                	beqz	a2,802099a2 <.LBB133_30+0x1a>
    802098ae:	84b2                	mv	s1,a2
    802098b0:	89ae                	mv	s3,a1
    802098b2:	892a                	mv	s2,a0
    802098b4:	4a3d                	li	s4,15
    802098b6:	4aa9                	li	s5,10
    802098b8:	fbf00b13          	li	s6,-65
    802098bc:	4b85                	li	s7,1
    802098be:	a809                	j	802098d0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x3a>
    802098c0:	6d94                	ld	a3,24(a1)
    802098c2:	85ce                	mv	a1,s3
    802098c4:	8622                	mv	a2,s0
    802098c6:	9682                	jalr	a3
    802098c8:	ed79                	bnez	a0,802099a6 <.LBB133_30+0x1e>
    802098ca:	8c81                	sub	s1,s1,s0
    802098cc:	89e2                	mv	s3,s8
    802098ce:	c8f1                	beqz	s1,802099a2 <.LBB133_30+0x1a>
    802098d0:	01093503          	ld	a0,16(s2)
    802098d4:	00054503          	lbu	a0,0(a0)
    802098d8:	cd09                	beqz	a0,802098f2 <.LBB133_29+0xe>
    802098da:	00893583          	ld	a1,8(s2)
    802098de:	00093503          	ld	a0,0(s2)
    802098e2:	6d94                	ld	a3,24(a1)

00000000802098e4 <.LBB133_29>:
    802098e4:	00004597          	auipc	a1,0x4
    802098e8:	21458593          	addi	a1,a1,532 # 8020daf8 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x18>
    802098ec:	4611                	li	a2,4
    802098ee:	9682                	jalr	a3
    802098f0:	e95d                	bnez	a0,802099a6 <.LBB133_30+0x1e>
    802098f2:	4401                	li	s0,0
    802098f4:	8626                	mv	a2,s1
    802098f6:	a029                	j	80209900 <.LBB133_29+0x1c>
    802098f8:	40848633          	sub	a2,s1,s0
    802098fc:	0484e963          	bltu	s1,s0,8020994e <.LBB133_29+0x6a>
    80209900:	008985b3          	add	a1,s3,s0
    80209904:	02ca6063          	bltu	s4,a2,80209924 <.LBB133_29+0x40>
    80209908:	c239                	beqz	a2,8020994e <.LBB133_29+0x6a>
    8020990a:	4601                	li	a2,0
    8020990c:	40848533          	sub	a0,s1,s0
    80209910:	00c586b3          	add	a3,a1,a2
    80209914:	0006c683          	lbu	a3,0(a3)
    80209918:	01568e63          	beq	a3,s5,80209934 <.LBB133_29+0x50>
    8020991c:	0605                	addi	a2,a2,1
    8020991e:	fec519e3          	bne	a0,a2,80209910 <.LBB133_29+0x2c>
    80209922:	a035                	j	8020994e <.LBB133_29+0x6a>
    80209924:	4529                	li	a0,10
    80209926:	00002097          	auipc	ra,0x2
    8020992a:	8c4080e7          	jalr	-1852(ra) # 8020b1ea <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E>
    8020992e:	03751063          	bne	a0,s7,8020994e <.LBB133_29+0x6a>
    80209932:	862e                	mv	a2,a1
    80209934:	00860533          	add	a0,a2,s0
    80209938:	00150413          	addi	s0,a0,1
    8020993c:	fa957ee3          	bgeu	a0,s1,802098f8 <.LBB133_29+0x14>
    80209940:	954e                	add	a0,a0,s3
    80209942:	00054503          	lbu	a0,0(a0)
    80209946:	fb5519e3          	bne	a0,s5,802098f8 <.LBB133_29+0x14>
    8020994a:	4505                	li	a0,1
    8020994c:	a019                	j	80209952 <.LBB133_29+0x6e>
    8020994e:	4501                	li	a0,0
    80209950:	8426                	mv	s0,s1
    80209952:	01093583          	ld	a1,16(s2)
    80209956:	00a58023          	sb	a0,0(a1)
    8020995a:	00093503          	ld	a0,0(s2)
    8020995e:	00893583          	ld	a1,8(s2)
    80209962:	00898c33          	add	s8,s3,s0
    80209966:	f4848de3          	beq	s1,s0,802098c0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x2a>
    8020996a:	04947b63          	bgeu	s0,s1,802099c0 <.LBB133_31>
    8020996e:	000c0603          	lb	a2,0(s8)
    80209972:	04cb5763          	bge	s6,a2,802099c0 <.LBB133_31>
    80209976:	6d94                	ld	a3,24(a1)
    80209978:	85ce                	mv	a1,s3
    8020997a:	8622                	mv	a2,s0
    8020997c:	9682                	jalr	a3
    8020997e:	e505                	bnez	a0,802099a6 <.LBB133_30+0x1e>
    80209980:	000c0503          	lb	a0,0(s8)
    80209984:	f4ab43e3          	blt	s6,a0,802098ca <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E+0x34>

0000000080209988 <.LBB133_30>:
    80209988:	00007717          	auipc	a4,0x7
    8020998c:	a8070713          	addi	a4,a4,-1408 # 80210408 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.193>
    80209990:	854e                	mv	a0,s3
    80209992:	85a6                	mv	a1,s1
    80209994:	8622                	mv	a2,s0
    80209996:	86a6                	mv	a3,s1
    80209998:	00002097          	auipc	ra,0x2
    8020999c:	a1a080e7          	jalr	-1510(ra) # 8020b3b2 <_ZN4core3str16slice_error_fail17he9562343589499f6E>
    802099a0:	0000                	unimp
    802099a2:	4501                	li	a0,0
    802099a4:	a011                	j	802099a8 <.LBB133_30+0x20>
    802099a6:	4505                	li	a0,1
    802099a8:	6c02                	ld	s8,0(sp)
    802099aa:	6ba2                	ld	s7,8(sp)
    802099ac:	6b42                	ld	s6,16(sp)
    802099ae:	6ae2                	ld	s5,24(sp)
    802099b0:	7a02                	ld	s4,32(sp)
    802099b2:	79a2                	ld	s3,40(sp)
    802099b4:	7942                	ld	s2,48(sp)
    802099b6:	74e2                	ld	s1,56(sp)
    802099b8:	6406                	ld	s0,64(sp)
    802099ba:	60a6                	ld	ra,72(sp)
    802099bc:	6161                	addi	sp,sp,80
    802099be:	8082                	ret

00000000802099c0 <.LBB133_31>:
    802099c0:	00007717          	auipc	a4,0x7
    802099c4:	a3070713          	addi	a4,a4,-1488 # 802103f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.192>
    802099c8:	854e                	mv	a0,s3
    802099ca:	85a6                	mv	a1,s1
    802099cc:	4601                	li	a2,0
    802099ce:	86a2                	mv	a3,s0
    802099d0:	00002097          	auipc	ra,0x2
    802099d4:	9e2080e7          	jalr	-1566(ra) # 8020b3b2 <_ZN4core3str16slice_error_fail17he9562343589499f6E>
	...

00000000802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>:
    802099da:	7135                	addi	sp,sp,-160
    802099dc:	ed06                	sd	ra,152(sp)
    802099de:	e922                	sd	s0,144(sp)
    802099e0:	e526                	sd	s1,136(sp)
    802099e2:	e14a                	sd	s2,128(sp)
    802099e4:	fcce                	sd	s3,120(sp)
    802099e6:	f8d2                	sd	s4,112(sp)
    802099e8:	f4d6                	sd	s5,104(sp)
    802099ea:	f0da                	sd	s6,96(sp)
    802099ec:	842a                	mv	s0,a0
    802099ee:	00854503          	lbu	a0,8(a0)
    802099f2:	4b05                	li	s6,1
    802099f4:	4485                	li	s1,1
    802099f6:	c105                	beqz	a0,80209a16 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x3c>
    802099f8:	00940423          	sb	s1,8(s0)
    802099fc:	016404a3          	sb	s6,9(s0)
    80209a00:	8522                	mv	a0,s0
    80209a02:	7b06                	ld	s6,96(sp)
    80209a04:	7aa6                	ld	s5,104(sp)
    80209a06:	7a46                	ld	s4,112(sp)
    80209a08:	79e6                	ld	s3,120(sp)
    80209a0a:	690a                	ld	s2,128(sp)
    80209a0c:	64aa                	ld	s1,136(sp)
    80209a0e:	644a                	ld	s0,144(sp)
    80209a10:	60ea                	ld	ra,152(sp)
    80209a12:	610d                	addi	sp,sp,160
    80209a14:	8082                	ret
    80209a16:	89ba                	mv	s3,a4
    80209a18:	8936                	mv	s2,a3
    80209a1a:	8a32                	mv	s4,a2
    80209a1c:	8aae                	mv	s5,a1
    80209a1e:	6008                	ld	a0,0(s0)
    80209a20:	03056583          	lwu	a1,48(a0)
    80209a24:	00944603          	lbu	a2,9(s0)
    80209a28:	0045f693          	andi	a3,a1,4
    80209a2c:	00163613          	seqz	a2,a2
    80209a30:	e699                	bnez	a3,80209a3e <.LBB134_18+0xa>
    80209a32:	ea45                	bnez	a2,80209ae2 <.LBB134_23>

0000000080209a34 <.LBB134_18>:
    80209a34:	00007597          	auipc	a1,0x7
    80209a38:	9f158593          	addi	a1,a1,-1551 # 80210425 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    80209a3c:	a07d                	j	80209aea <.LBB134_23+0x8>
    80209a3e:	ce19                	beqz	a2,80209a5c <.LBB134_19+0x16>
    80209a40:	750c                	ld	a1,40(a0)
    80209a42:	7108                	ld	a0,32(a0)
    80209a44:	6d94                	ld	a3,24(a1)

0000000080209a46 <.LBB134_19>:
    80209a46:	00007597          	auipc	a1,0x7
    80209a4a:	9da58593          	addi	a1,a1,-1574 # 80210420 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.194>
    80209a4e:	460d                	li	a2,3
    80209a50:	9682                	jalr	a3
    80209a52:	4485                	li	s1,1
    80209a54:	f155                	bnez	a0,802099f8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    80209a56:	6008                	ld	a0,0(s0)
    80209a58:	03056583          	lwu	a1,48(a0)
    80209a5c:	4485                	li	s1,1
    80209a5e:	00910fa3          	sb	s1,31(sp)
    80209a62:	7110                	ld	a2,32(a0)
    80209a64:	7514                	ld	a3,40(a0)
    80209a66:	e032                	sd	a2,0(sp)
    80209a68:	e436                	sd	a3,8(sp)
    80209a6a:	01f10613          	addi	a2,sp,31
    80209a6e:	e832                	sd	a2,16(sp)
    80209a70:	5950                	lw	a2,52(a0)
    80209a72:	03850683          	lb	a3,56(a0)
    80209a76:	6118                	ld	a4,0(a0)
    80209a78:	651c                	ld	a5,8(a0)
    80209a7a:	01053803          	ld	a6,16(a0)
    80209a7e:	6d08                	ld	a0,24(a0)
    80209a80:	c8ae                	sw	a1,80(sp)
    80209a82:	cab2                	sw	a2,84(sp)
    80209a84:	04d10c23          	sb	a3,88(sp)
    80209a88:	f03a                	sd	a4,32(sp)
    80209a8a:	f43e                	sd	a5,40(sp)
    80209a8c:	f842                	sd	a6,48(sp)
    80209a8e:	fc2a                	sd	a0,56(sp)
    80209a90:	850a                	mv	a0,sp
    80209a92:	e0aa                	sd	a0,64(sp)

0000000080209a94 <.LBB134_20>:
    80209a94:	00007597          	auipc	a1,0x7
    80209a98:	92c58593          	addi	a1,a1,-1748 # 802103c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    80209a9c:	e4ae                	sd	a1,72(sp)
    80209a9e:	85d6                	mv	a1,s5
    80209aa0:	8652                	mv	a2,s4
    80209aa2:	00000097          	auipc	ra,0x0
    80209aa6:	df4080e7          	jalr	-524(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    80209aaa:	f539                	bnez	a0,802099f8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>

0000000080209aac <.LBB134_21>:
    80209aac:	00007597          	auipc	a1,0x7
    80209ab0:	89458593          	addi	a1,a1,-1900 # 80210340 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    80209ab4:	850a                	mv	a0,sp
    80209ab6:	4609                	li	a2,2
    80209ab8:	00000097          	auipc	ra,0x0
    80209abc:	dde080e7          	jalr	-546(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    80209ac0:	fd05                	bnez	a0,802099f8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    80209ac2:	0189b603          	ld	a2,24(s3)
    80209ac6:	100c                	addi	a1,sp,32
    80209ac8:	854a                	mv	a0,s2
    80209aca:	9602                	jalr	a2
    80209acc:	f515                	bnez	a0,802099f8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    80209ace:	65a6                	ld	a1,72(sp)
    80209ad0:	6506                	ld	a0,64(sp)
    80209ad2:	6d94                	ld	a3,24(a1)

0000000080209ad4 <.LBB134_22>:
    80209ad4:	00007597          	auipc	a1,0x7
    80209ad8:	94f58593          	addi	a1,a1,-1713 # 80210423 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    80209adc:	4609                	li	a2,2
    80209ade:	9682                	jalr	a3
    80209ae0:	a889                	j	80209b32 <.LBB134_24+0x1c>

0000000080209ae2 <.LBB134_23>:
    80209ae2:	00007597          	auipc	a1,0x7
    80209ae6:	94558593          	addi	a1,a1,-1723 # 80210427 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.197>
    80209aea:	7514                	ld	a3,40(a0)
    80209aec:	7108                	ld	a0,32(a0)
    80209aee:	6e94                	ld	a3,24(a3)
    80209af0:	00266613          	ori	a2,a2,2
    80209af4:	9682                	jalr	a3
    80209af6:	4485                	li	s1,1
    80209af8:	f101                	bnez	a0,802099f8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    80209afa:	6008                	ld	a0,0(s0)
    80209afc:	750c                	ld	a1,40(a0)
    80209afe:	7108                	ld	a0,32(a0)
    80209b00:	6d94                	ld	a3,24(a1)
    80209b02:	85d6                	mv	a1,s5
    80209b04:	8652                	mv	a2,s4
    80209b06:	9682                	jalr	a3
    80209b08:	4485                	li	s1,1
    80209b0a:	ee0517e3          	bnez	a0,802099f8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    80209b0e:	6008                	ld	a0,0(s0)
    80209b10:	750c                	ld	a1,40(a0)
    80209b12:	7108                	ld	a0,32(a0)
    80209b14:	6d94                	ld	a3,24(a1)

0000000080209b16 <.LBB134_24>:
    80209b16:	00007597          	auipc	a1,0x7
    80209b1a:	82a58593          	addi	a1,a1,-2006 # 80210340 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    80209b1e:	4609                	li	a2,2
    80209b20:	9682                	jalr	a3
    80209b22:	4485                	li	s1,1
    80209b24:	ec051ae3          	bnez	a0,802099f8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>
    80209b28:	600c                	ld	a1,0(s0)
    80209b2a:	0189b603          	ld	a2,24(s3)
    80209b2e:	854a                	mv	a0,s2
    80209b30:	9602                	jalr	a2
    80209b32:	84aa                	mv	s1,a0
    80209b34:	b5d1                	j	802099f8 <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE+0x1e>

0000000080209b36 <_ZN4core3fmt8builders11DebugStruct6finish17he2832f029f580c2bE>:
    80209b36:	1141                	addi	sp,sp,-16
    80209b38:	e406                	sd	ra,8(sp)
    80209b3a:	e022                	sd	s0,0(sp)
    80209b3c:	842a                	mv	s0,a0
    80209b3e:	00954503          	lbu	a0,9(a0)
    80209b42:	00844583          	lbu	a1,8(s0)
    80209b46:	c91d                	beqz	a0,80209b7c <.LBB136_9+0x12>
    80209b48:	4505                	li	a0,1
    80209b4a:	e595                	bnez	a1,80209b76 <.LBB136_9+0xc>
    80209b4c:	6008                	ld	a0,0(s0)
    80209b4e:	750c                	ld	a1,40(a0)
    80209b50:	03054603          	lbu	a2,48(a0)
    80209b54:	7108                	ld	a0,32(a0)
    80209b56:	6d94                	ld	a3,24(a1)
    80209b58:	00467593          	andi	a1,a2,4
    80209b5c:	e599                	bnez	a1,80209b6a <.LBB136_9>

0000000080209b5e <.LBB136_8>:
    80209b5e:	00007597          	auipc	a1,0x7
    80209b62:	8cd58593          	addi	a1,a1,-1843 # 8021042b <.Lanon.9d4bfc86079e95d674f3cded52b1db19.202>
    80209b66:	4609                	li	a2,2
    80209b68:	a031                	j	80209b74 <.LBB136_9+0xa>

0000000080209b6a <.LBB136_9>:
    80209b6a:	00007597          	auipc	a1,0x7
    80209b6e:	8c058593          	addi	a1,a1,-1856 # 8021042a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.201>
    80209b72:	4605                	li	a2,1
    80209b74:	9682                	jalr	a3
    80209b76:	00a40423          	sb	a0,8(s0)
    80209b7a:	85aa                	mv	a1,a0
    80209b7c:	00b03533          	snez	a0,a1
    80209b80:	6402                	ld	s0,0(sp)
    80209b82:	60a2                	ld	ra,8(sp)
    80209b84:	0141                	addi	sp,sp,16
    80209b86:	8082                	ret

0000000080209b88 <_ZN4core3fmt8builders10DebugTuple5field17h968d9eaf966503caE>:
    80209b88:	7175                	addi	sp,sp,-144
    80209b8a:	e506                	sd	ra,136(sp)
    80209b8c:	e122                	sd	s0,128(sp)
    80209b8e:	fca6                	sd	s1,120(sp)
    80209b90:	f8ca                	sd	s2,112(sp)
    80209b92:	f4ce                	sd	s3,104(sp)
    80209b94:	842a                	mv	s0,a0
    80209b96:	01054503          	lbu	a0,16(a0)
    80209b9a:	4485                	li	s1,1
    80209b9c:	e179                	bnez	a0,80209c62 <.LBB137_18+0x24>
    80209b9e:	89b2                	mv	s3,a2
    80209ba0:	892e                	mv	s2,a1
    80209ba2:	6008                	ld	a0,0(s0)
    80209ba4:	03056583          	lwu	a1,48(a0)
    80209ba8:	6410                	ld	a2,8(s0)
    80209baa:	0045f693          	andi	a3,a1,4
    80209bae:	00163613          	seqz	a2,a2
    80209bb2:	e699                	bnez	a3,80209bc0 <.LBB137_14+0xa>
    80209bb4:	e649                	bnez	a2,80209c3e <.LBB137_18>

0000000080209bb6 <.LBB137_14>:
    80209bb6:	00007597          	auipc	a1,0x7
    80209bba:	86f58593          	addi	a1,a1,-1937 # 80210425 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    80209bbe:	a061                	j	80209c46 <.LBB137_18+0x8>
    80209bc0:	ce11                	beqz	a2,80209bdc <.LBB137_15+0x14>
    80209bc2:	750c                	ld	a1,40(a0)
    80209bc4:	7108                	ld	a0,32(a0)
    80209bc6:	6d94                	ld	a3,24(a1)

0000000080209bc8 <.LBB137_15>:
    80209bc8:	00007597          	auipc	a1,0x7
    80209bcc:	86558593          	addi	a1,a1,-1947 # 8021042d <.Lanon.9d4bfc86079e95d674f3cded52b1db19.203>
    80209bd0:	4609                	li	a2,2
    80209bd2:	9682                	jalr	a3
    80209bd4:	e559                	bnez	a0,80209c62 <.LBB137_18+0x24>
    80209bd6:	6008                	ld	a0,0(s0)
    80209bd8:	03056583          	lwu	a1,48(a0)
    80209bdc:	4485                	li	s1,1
    80209bde:	029103a3          	sb	s1,39(sp)
    80209be2:	7110                	ld	a2,32(a0)
    80209be4:	7514                	ld	a3,40(a0)
    80209be6:	e432                	sd	a2,8(sp)
    80209be8:	e836                	sd	a3,16(sp)
    80209bea:	02710613          	addi	a2,sp,39
    80209bee:	ec32                	sd	a2,24(sp)
    80209bf0:	5950                	lw	a2,52(a0)
    80209bf2:	03850683          	lb	a3,56(a0)
    80209bf6:	6118                	ld	a4,0(a0)
    80209bf8:	651c                	ld	a5,8(a0)
    80209bfa:	01053803          	ld	a6,16(a0)
    80209bfe:	6d08                	ld	a0,24(a0)
    80209c00:	ccae                	sw	a1,88(sp)
    80209c02:	ceb2                	sw	a2,92(sp)
    80209c04:	06d10023          	sb	a3,96(sp)
    80209c08:	f43a                	sd	a4,40(sp)
    80209c0a:	f83e                	sd	a5,48(sp)
    80209c0c:	fc42                	sd	a6,56(sp)
    80209c0e:	e0aa                	sd	a0,64(sp)
    80209c10:	0028                	addi	a0,sp,8
    80209c12:	0189b603          	ld	a2,24(s3)
    80209c16:	e4aa                	sd	a0,72(sp)

0000000080209c18 <.LBB137_16>:
    80209c18:	00006517          	auipc	a0,0x6
    80209c1c:	7a850513          	addi	a0,a0,1960 # 802103c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    80209c20:	e8aa                	sd	a0,80(sp)
    80209c22:	102c                	addi	a1,sp,40
    80209c24:	854a                	mv	a0,s2
    80209c26:	9602                	jalr	a2
    80209c28:	ed0d                	bnez	a0,80209c62 <.LBB137_18+0x24>
    80209c2a:	65c6                	ld	a1,80(sp)
    80209c2c:	6526                	ld	a0,72(sp)
    80209c2e:	6d94                	ld	a3,24(a1)

0000000080209c30 <.LBB137_17>:
    80209c30:	00006597          	auipc	a1,0x6
    80209c34:	7f358593          	addi	a1,a1,2035 # 80210423 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    80209c38:	4609                	li	a2,2
    80209c3a:	9682                	jalr	a3
    80209c3c:	a015                	j	80209c60 <.LBB137_18+0x22>

0000000080209c3e <.LBB137_18>:
    80209c3e:	00006597          	auipc	a1,0x6
    80209c42:	7f158593          	addi	a1,a1,2033 # 8021042f <.Lanon.9d4bfc86079e95d674f3cded52b1db19.204>
    80209c46:	7514                	ld	a3,40(a0)
    80209c48:	7108                	ld	a0,32(a0)
    80209c4a:	6e94                	ld	a3,24(a3)
    80209c4c:	4709                	li	a4,2
    80209c4e:	40c70633          	sub	a2,a4,a2
    80209c52:	9682                	jalr	a3
    80209c54:	e519                	bnez	a0,80209c62 <.LBB137_18+0x24>
    80209c56:	600c                	ld	a1,0(s0)
    80209c58:	0189b603          	ld	a2,24(s3)
    80209c5c:	854a                	mv	a0,s2
    80209c5e:	9602                	jalr	a2
    80209c60:	84aa                	mv	s1,a0
    80209c62:	6408                	ld	a0,8(s0)
    80209c64:	00940823          	sb	s1,16(s0)
    80209c68:	0505                	addi	a0,a0,1
    80209c6a:	e408                	sd	a0,8(s0)
    80209c6c:	8522                	mv	a0,s0
    80209c6e:	79a6                	ld	s3,104(sp)
    80209c70:	7946                	ld	s2,112(sp)
    80209c72:	74e6                	ld	s1,120(sp)
    80209c74:	640a                	ld	s0,128(sp)
    80209c76:	60aa                	ld	ra,136(sp)
    80209c78:	6149                	addi	sp,sp,144
    80209c7a:	8082                	ret

0000000080209c7c <_ZN4core3fmt8builders10DebugTuple6finish17h9067963986a9fe09E>:
    80209c7c:	1101                	addi	sp,sp,-32
    80209c7e:	ec06                	sd	ra,24(sp)
    80209c80:	e822                	sd	s0,16(sp)
    80209c82:	e426                	sd	s1,8(sp)
    80209c84:	842a                	mv	s0,a0
    80209c86:	650c                	ld	a1,8(a0)
    80209c88:	01054503          	lbu	a0,16(a0)
    80209c8c:	c5b9                	beqz	a1,80209cda <.LBB138_10+0x14>
    80209c8e:	4485                	li	s1,1
    80209c90:	e131                	bnez	a0,80209cd4 <.LBB138_10+0xe>
    80209c92:	4505                	li	a0,1
    80209c94:	02a59563          	bne	a1,a0,80209cbe <.LBB138_9+0x10>
    80209c98:	01144503          	lbu	a0,17(s0)
    80209c9c:	c10d                	beqz	a0,80209cbe <.LBB138_9+0x10>
    80209c9e:	6008                	ld	a0,0(s0)
    80209ca0:	03054583          	lbu	a1,48(a0)
    80209ca4:	8991                	andi	a1,a1,4
    80209ca6:	ed81                	bnez	a1,80209cbe <.LBB138_9+0x10>
    80209ca8:	750c                	ld	a1,40(a0)
    80209caa:	7108                	ld	a0,32(a0)
    80209cac:	6d94                	ld	a3,24(a1)

0000000080209cae <.LBB138_9>:
    80209cae:	00006597          	auipc	a1,0x6
    80209cb2:	78258593          	addi	a1,a1,1922 # 80210430 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.205>
    80209cb6:	4605                	li	a2,1
    80209cb8:	4485                	li	s1,1
    80209cba:	9682                	jalr	a3
    80209cbc:	ed01                	bnez	a0,80209cd4 <.LBB138_10+0xe>
    80209cbe:	6008                	ld	a0,0(s0)
    80209cc0:	750c                	ld	a1,40(a0)
    80209cc2:	7108                	ld	a0,32(a0)
    80209cc4:	6d94                	ld	a3,24(a1)

0000000080209cc6 <.LBB138_10>:
    80209cc6:	00006597          	auipc	a1,0x6
    80209cca:	76b58593          	addi	a1,a1,1899 # 80210431 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.206>
    80209cce:	4605                	li	a2,1
    80209cd0:	9682                	jalr	a3
    80209cd2:	84aa                	mv	s1,a0
    80209cd4:	00940823          	sb	s1,16(s0)
    80209cd8:	8526                	mv	a0,s1
    80209cda:	00a03533          	snez	a0,a0
    80209cde:	64a2                	ld	s1,8(sp)
    80209ce0:	6442                	ld	s0,16(sp)
    80209ce2:	60e2                	ld	ra,24(sp)
    80209ce4:	6105                	addi	sp,sp,32
    80209ce6:	8082                	ret

0000000080209ce8 <_ZN4core3fmt8builders10DebugInner5entry17h6fad96f354534c1fE>:
    80209ce8:	7175                	addi	sp,sp,-144
    80209cea:	e506                	sd	ra,136(sp)
    80209cec:	e122                	sd	s0,128(sp)
    80209cee:	fca6                	sd	s1,120(sp)
    80209cf0:	f8ca                	sd	s2,112(sp)
    80209cf2:	f4ce                	sd	s3,104(sp)
    80209cf4:	f0d2                	sd	s4,96(sp)
    80209cf6:	842a                	mv	s0,a0
    80209cf8:	00854503          	lbu	a0,8(a0)
    80209cfc:	4a05                	li	s4,1
    80209cfe:	4485                	li	s1,1
    80209d00:	ed5d                	bnez	a0,80209dbe <.LBB139_16+0xe>
    80209d02:	89b2                	mv	s3,a2
    80209d04:	892e                	mv	s2,a1
    80209d06:	600c                	ld	a1,0(s0)
    80209d08:	0305e503          	lwu	a0,48(a1)
    80209d0c:	00944603          	lbu	a2,9(s0)
    80209d10:	00457693          	andi	a3,a0,4
    80209d14:	00163613          	seqz	a2,a2
    80209d18:	e29d                	bnez	a3,80209d3e <.LBB139_13+0x1c>
    80209d1a:	ee09                	bnez	a2,80209d34 <.LBB139_13+0x12>
    80209d1c:	7590                	ld	a2,40(a1)
    80209d1e:	7188                	ld	a0,32(a1)
    80209d20:	6e14                	ld	a3,24(a2)

0000000080209d22 <.LBB139_13>:
    80209d22:	00006597          	auipc	a1,0x6
    80209d26:	70358593          	addi	a1,a1,1795 # 80210425 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    80209d2a:	4609                	li	a2,2
    80209d2c:	9682                	jalr	a3
    80209d2e:	4485                	li	s1,1
    80209d30:	e559                	bnez	a0,80209dbe <.LBB139_16+0xe>
    80209d32:	600c                	ld	a1,0(s0)
    80209d34:	0189b603          	ld	a2,24(s3)
    80209d38:	854a                	mv	a0,s2
    80209d3a:	9602                	jalr	a2
    80209d3c:	a041                	j	80209dbc <.LBB139_16+0xc>
    80209d3e:	ce19                	beqz	a2,80209d5c <.LBB139_14+0x16>
    80209d40:	7590                	ld	a2,40(a1)
    80209d42:	7188                	ld	a0,32(a1)
    80209d44:	6e14                	ld	a3,24(a2)

0000000080209d46 <.LBB139_14>:
    80209d46:	00006597          	auipc	a1,0x6
    80209d4a:	6ec58593          	addi	a1,a1,1772 # 80210432 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.207>
    80209d4e:	4605                	li	a2,1
    80209d50:	4485                	li	s1,1
    80209d52:	9682                	jalr	a3
    80209d54:	e52d                	bnez	a0,80209dbe <.LBB139_16+0xe>
    80209d56:	600c                	ld	a1,0(s0)
    80209d58:	0305e503          	lwu	a0,48(a1)
    80209d5c:	4485                	li	s1,1
    80209d5e:	00910fa3          	sb	s1,31(sp)
    80209d62:	7190                	ld	a2,32(a1)
    80209d64:	7594                	ld	a3,40(a1)
    80209d66:	e032                	sd	a2,0(sp)
    80209d68:	e436                	sd	a3,8(sp)
    80209d6a:	01f10613          	addi	a2,sp,31
    80209d6e:	e832                	sd	a2,16(sp)
    80209d70:	59d0                	lw	a2,52(a1)
    80209d72:	03858683          	lb	a3,56(a1)
    80209d76:	6198                	ld	a4,0(a1)
    80209d78:	659c                	ld	a5,8(a1)
    80209d7a:	0105b803          	ld	a6,16(a1)
    80209d7e:	6d8c                	ld	a1,24(a1)
    80209d80:	c8aa                	sw	a0,80(sp)
    80209d82:	cab2                	sw	a2,84(sp)
    80209d84:	04d10c23          	sb	a3,88(sp)
    80209d88:	f03a                	sd	a4,32(sp)
    80209d8a:	f43e                	sd	a5,40(sp)
    80209d8c:	f842                	sd	a6,48(sp)
    80209d8e:	fc2e                	sd	a1,56(sp)
    80209d90:	850a                	mv	a0,sp
    80209d92:	0189b603          	ld	a2,24(s3)
    80209d96:	e0aa                	sd	a0,64(sp)

0000000080209d98 <.LBB139_15>:
    80209d98:	00006517          	auipc	a0,0x6
    80209d9c:	62850513          	addi	a0,a0,1576 # 802103c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    80209da0:	e4aa                	sd	a0,72(sp)
    80209da2:	100c                	addi	a1,sp,32
    80209da4:	854a                	mv	a0,s2
    80209da6:	9602                	jalr	a2
    80209da8:	e919                	bnez	a0,80209dbe <.LBB139_16+0xe>
    80209daa:	65a6                	ld	a1,72(sp)
    80209dac:	6506                	ld	a0,64(sp)
    80209dae:	6d94                	ld	a3,24(a1)

0000000080209db0 <.LBB139_16>:
    80209db0:	00006597          	auipc	a1,0x6
    80209db4:	67358593          	addi	a1,a1,1651 # 80210423 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    80209db8:	4609                	li	a2,2
    80209dba:	9682                	jalr	a3
    80209dbc:	84aa                	mv	s1,a0
    80209dbe:	00940423          	sb	s1,8(s0)
    80209dc2:	014404a3          	sb	s4,9(s0)
    80209dc6:	7a06                	ld	s4,96(sp)
    80209dc8:	79a6                	ld	s3,104(sp)
    80209dca:	7946                	ld	s2,112(sp)
    80209dcc:	74e6                	ld	s1,120(sp)
    80209dce:	640a                	ld	s0,128(sp)
    80209dd0:	60aa                	ld	ra,136(sp)
    80209dd2:	6149                	addi	sp,sp,144
    80209dd4:	8082                	ret

0000000080209dd6 <_ZN4core3fmt8builders8DebugSet5entry17hbbfe70946be6c10eE>:
    80209dd6:	1141                	addi	sp,sp,-16
    80209dd8:	e406                	sd	ra,8(sp)
    80209dda:	e022                	sd	s0,0(sp)
    80209ddc:	842a                	mv	s0,a0
    80209dde:	00000097          	auipc	ra,0x0
    80209de2:	f0a080e7          	jalr	-246(ra) # 80209ce8 <_ZN4core3fmt8builders10DebugInner5entry17h6fad96f354534c1fE>
    80209de6:	8522                	mv	a0,s0
    80209de8:	6402                	ld	s0,0(sp)
    80209dea:	60a2                	ld	ra,8(sp)
    80209dec:	0141                	addi	sp,sp,16
    80209dee:	8082                	ret

0000000080209df0 <_ZN4core3fmt8builders9DebugList6finish17he6bd1c52112a8038E>:
    80209df0:	00854583          	lbu	a1,8(a0)
    80209df4:	c199                	beqz	a1,80209dfa <_ZN4core3fmt8builders9DebugList6finish17he6bd1c52112a8038E+0xa>
    80209df6:	4505                	li	a0,1
    80209df8:	8082                	ret
    80209dfa:	6108                	ld	a0,0(a0)
    80209dfc:	750c                	ld	a1,40(a0)
    80209dfe:	7108                	ld	a0,32(a0)
    80209e00:	6d9c                	ld	a5,24(a1)

0000000080209e02 <.LBB142_3>:
    80209e02:	00006597          	auipc	a1,0x6
    80209e06:	63358593          	addi	a1,a1,1587 # 80210435 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.213>
    80209e0a:	4605                	li	a2,1
    80209e0c:	8782                	jr	a5

0000000080209e0e <_ZN4core3fmt8builders8DebugMap5entry17h3fc39347a213da78E>:
    80209e0e:	1101                	addi	sp,sp,-32
    80209e10:	ec06                	sd	ra,24(sp)
    80209e12:	e822                	sd	s0,16(sp)
    80209e14:	e426                	sd	s1,8(sp)
    80209e16:	843a                	mv	s0,a4
    80209e18:	84b6                	mv	s1,a3
    80209e1a:	00000097          	auipc	ra,0x0
    80209e1e:	01c080e7          	jalr	28(ra) # 80209e36 <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE>
    80209e22:	85a6                	mv	a1,s1
    80209e24:	8622                	mv	a2,s0
    80209e26:	64a2                	ld	s1,8(sp)
    80209e28:	6442                	ld	s0,16(sp)
    80209e2a:	60e2                	ld	ra,24(sp)
    80209e2c:	6105                	addi	sp,sp,32
    80209e2e:	00000317          	auipc	t1,0x0
    80209e32:	11a30067          	jr	282(t1) # 80209f48 <_ZN4core3fmt8builders8DebugMap5value17h8d3fc5fa65b28c1cE>

0000000080209e36 <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE>:
    80209e36:	7119                	addi	sp,sp,-128
    80209e38:	fc86                	sd	ra,120(sp)
    80209e3a:	f8a2                	sd	s0,112(sp)
    80209e3c:	f4a6                	sd	s1,104(sp)
    80209e3e:	f0ca                	sd	s2,96(sp)
    80209e40:	ecce                	sd	s3,88(sp)
    80209e42:	842a                	mv	s0,a0
    80209e44:	00854503          	lbu	a0,8(a0)
    80209e48:	4485                	li	s1,1
    80209e4a:	c919                	beqz	a0,80209e60 <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE+0x2a>
    80209e4c:	00940423          	sb	s1,8(s0)
    80209e50:	8522                	mv	a0,s0
    80209e52:	69e6                	ld	s3,88(sp)
    80209e54:	7906                	ld	s2,96(sp)
    80209e56:	74a6                	ld	s1,104(sp)
    80209e58:	7446                	ld	s0,112(sp)
    80209e5a:	70e6                	ld	ra,120(sp)
    80209e5c:	6109                	addi	sp,sp,128
    80209e5e:	8082                	ret
    80209e60:	00a44503          	lbu	a0,10(s0)
    80209e64:	e179                	bnez	a0,80209f2a <.LBB144_21>
    80209e66:	89b2                	mv	s3,a2
    80209e68:	892e                	mv	s2,a1
    80209e6a:	600c                	ld	a1,0(s0)
    80209e6c:	0305c503          	lbu	a0,48(a1)
    80209e70:	00944603          	lbu	a2,9(s0)
    80209e74:	00457693          	andi	a3,a0,4
    80209e78:	00163513          	seqz	a0,a2
    80209e7c:	e695                	bnez	a3,80209ea8 <.LBB144_17+0x22>
    80209e7e:	ed01                	bnez	a0,80209e96 <.LBB144_17+0x10>
    80209e80:	7590                	ld	a2,40(a1)
    80209e82:	7188                	ld	a0,32(a1)
    80209e84:	6e14                	ld	a3,24(a2)

0000000080209e86 <.LBB144_17>:
    80209e86:	00006597          	auipc	a1,0x6
    80209e8a:	59f58593          	addi	a1,a1,1439 # 80210425 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.196>
    80209e8e:	4609                	li	a2,2
    80209e90:	9682                	jalr	a3
    80209e92:	fd4d                	bnez	a0,80209e4c <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE+0x16>
    80209e94:	600c                	ld	a1,0(s0)
    80209e96:	0189b603          	ld	a2,24(s3)
    80209e9a:	854a                	mv	a0,s2
    80209e9c:	9602                	jalr	a2
    80209e9e:	f55d                	bnez	a0,80209e4c <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE+0x16>
    80209ea0:	6008                	ld	a0,0(s0)
    80209ea2:	750c                	ld	a1,40(a0)
    80209ea4:	7108                	ld	a0,32(a0)
    80209ea6:	a0ad                	j	80209f10 <.LBB144_19+0x16>
    80209ea8:	cd09                	beqz	a0,80209ec2 <.LBB144_18+0x12>
    80209eaa:	7590                	ld	a2,40(a1)
    80209eac:	7188                	ld	a0,32(a1)
    80209eae:	6e14                	ld	a3,24(a2)

0000000080209eb0 <.LBB144_18>:
    80209eb0:	00006597          	auipc	a1,0x6
    80209eb4:	58258593          	addi	a1,a1,1410 # 80210432 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.207>
    80209eb8:	4605                	li	a2,1
    80209eba:	4485                	li	s1,1
    80209ebc:	9682                	jalr	a3
    80209ebe:	f559                	bnez	a0,80209e4c <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE+0x16>
    80209ec0:	600c                	ld	a1,0(s0)
    80209ec2:	4485                	li	s1,1
    80209ec4:	009405a3          	sb	s1,11(s0)
    80209ec8:	7188                	ld	a0,32(a1)
    80209eca:	7590                	ld	a2,40(a1)
    80209ecc:	00b40693          	addi	a3,s0,11
    80209ed0:	e02a                	sd	a0,0(sp)
    80209ed2:	e432                	sd	a2,8(sp)
    80209ed4:	e836                	sd	a3,16(sp)
    80209ed6:	7988                	ld	a0,48(a1)
    80209ed8:	03858603          	lb	a2,56(a1)
    80209edc:	6194                	ld	a3,0(a1)
    80209ede:	6598                	ld	a4,8(a1)
    80209ee0:	699c                	ld	a5,16(a1)
    80209ee2:	6d8c                	ld	a1,24(a1)
    80209ee4:	e4aa                	sd	a0,72(sp)
    80209ee6:	04c10823          	sb	a2,80(sp)
    80209eea:	ec36                	sd	a3,24(sp)
    80209eec:	f03a                	sd	a4,32(sp)
    80209eee:	f43e                	sd	a5,40(sp)
    80209ef0:	f82e                	sd	a1,48(sp)
    80209ef2:	850a                	mv	a0,sp
    80209ef4:	0189b603          	ld	a2,24(s3)
    80209ef8:	fc2a                	sd	a0,56(sp)

0000000080209efa <.LBB144_19>:
    80209efa:	00006517          	auipc	a0,0x6
    80209efe:	4c650513          	addi	a0,a0,1222 # 802103c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    80209f02:	e0aa                	sd	a0,64(sp)
    80209f04:	082c                	addi	a1,sp,24
    80209f06:	854a                	mv	a0,s2
    80209f08:	9602                	jalr	a2
    80209f0a:	f129                	bnez	a0,80209e4c <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE+0x16>
    80209f0c:	6586                	ld	a1,64(sp)
    80209f0e:	7562                	ld	a0,56(sp)
    80209f10:	6d94                	ld	a3,24(a1)

0000000080209f12 <.LBB144_20>:
    80209f12:	00006597          	auipc	a1,0x6
    80209f16:	42e58593          	addi	a1,a1,1070 # 80210340 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.177>
    80209f1a:	4609                	li	a2,2
    80209f1c:	9682                	jalr	a3
    80209f1e:	f51d                	bnez	a0,80209e4c <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE+0x16>
    80209f20:	4481                	li	s1,0
    80209f22:	4505                	li	a0,1
    80209f24:	00a40523          	sb	a0,10(s0)
    80209f28:	b715                	j	80209e4c <_ZN4core3fmt8builders8DebugMap3key17hd9cea4999249dc0eE+0x16>

0000000080209f2a <.LBB144_21>:
    80209f2a:	00006517          	auipc	a0,0x6
    80209f2e:	50c50513          	addi	a0,a0,1292 # 80210436 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.214>

0000000080209f32 <.LBB144_22>:
    80209f32:	00006617          	auipc	a2,0x6
    80209f36:	54e60613          	addi	a2,a2,1358 # 80210480 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.215>
    80209f3a:	04600593          	li	a1,70
    80209f3e:	00000097          	auipc	ra,0x0
    80209f42:	8c4080e7          	jalr	-1852(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

0000000080209f48 <_ZN4core3fmt8builders8DebugMap5value17h8d3fc5fa65b28c1cE>:
    80209f48:	7119                	addi	sp,sp,-128
    80209f4a:	fc86                	sd	ra,120(sp)
    80209f4c:	f8a2                	sd	s0,112(sp)
    80209f4e:	f4a6                	sd	s1,104(sp)
    80209f50:	f0ca                	sd	s2,96(sp)
    80209f52:	842a                	mv	s0,a0
    80209f54:	00854503          	lbu	a0,8(a0)
    80209f58:	4905                	li	s2,1
    80209f5a:	4685                	li	a3,1
    80209f5c:	cd01                	beqz	a0,80209f74 <_ZN4core3fmt8builders8DebugMap5value17h8d3fc5fa65b28c1cE+0x2c>
    80209f5e:	00d40423          	sb	a3,8(s0)
    80209f62:	012404a3          	sb	s2,9(s0)
    80209f66:	8522                	mv	a0,s0
    80209f68:	7906                	ld	s2,96(sp)
    80209f6a:	74a6                	ld	s1,104(sp)
    80209f6c:	7446                	ld	s0,112(sp)
    80209f6e:	70e6                	ld	ra,120(sp)
    80209f70:	6109                	addi	sp,sp,128
    80209f72:	8082                	ret
    80209f74:	00a44503          	lbu	a0,10(s0)
    80209f78:	c159                	beqz	a0,80209ffe <.LBB145_12>
    80209f7a:	6014                	ld	a3,0(s0)
    80209f7c:	0306e503          	lwu	a0,48(a3)
    80209f80:	00457713          	andi	a4,a0,4
    80209f84:	eb01                	bnez	a4,80209f94 <_ZN4core3fmt8builders8DebugMap5value17h8d3fc5fa65b28c1cE+0x4c>
    80209f86:	6e10                	ld	a2,24(a2)
    80209f88:	852e                	mv	a0,a1
    80209f8a:	85b6                	mv	a1,a3
    80209f8c:	9602                	jalr	a2
    80209f8e:	4685                	li	a3,1
    80209f90:	f579                	bnez	a0,80209f5e <_ZN4core3fmt8builders8DebugMap5value17h8d3fc5fa65b28c1cE+0x16>
    80209f92:	a095                	j	80209ff6 <.LBB145_11+0x12>
    80209f94:	7298                	ld	a4,32(a3)
    80209f96:	769c                	ld	a5,40(a3)
    80209f98:	00b40493          	addi	s1,s0,11
    80209f9c:	e43a                	sd	a4,8(sp)
    80209f9e:	e83e                	sd	a5,16(sp)
    80209fa0:	ec26                	sd	s1,24(sp)
    80209fa2:	5ad8                	lw	a4,52(a3)
    80209fa4:	03868783          	lb	a5,56(a3)
    80209fa8:	6284                	ld	s1,0(a3)
    80209faa:	0086b803          	ld	a6,8(a3)
    80209fae:	0106b883          	ld	a7,16(a3)
    80209fb2:	6e94                	ld	a3,24(a3)
    80209fb4:	c8aa                	sw	a0,80(sp)
    80209fb6:	caba                	sw	a4,84(sp)
    80209fb8:	04f10c23          	sb	a5,88(sp)
    80209fbc:	f026                	sd	s1,32(sp)
    80209fbe:	f442                	sd	a6,40(sp)
    80209fc0:	f846                	sd	a7,48(sp)
    80209fc2:	fc36                	sd	a3,56(sp)
    80209fc4:	0028                	addi	a0,sp,8
    80209fc6:	6e14                	ld	a3,24(a2)
    80209fc8:	e0aa                	sd	a0,64(sp)

0000000080209fca <.LBB145_10>:
    80209fca:	00006517          	auipc	a0,0x6
    80209fce:	3f650513          	addi	a0,a0,1014 # 802103c0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.190>
    80209fd2:	e4aa                	sd	a0,72(sp)
    80209fd4:	1010                	addi	a2,sp,32
    80209fd6:	852e                	mv	a0,a1
    80209fd8:	85b2                	mv	a1,a2
    80209fda:	9682                	jalr	a3
    80209fdc:	e919                	bnez	a0,80209ff2 <.LBB145_11+0xe>
    80209fde:	65a6                	ld	a1,72(sp)
    80209fe0:	6506                	ld	a0,64(sp)
    80209fe2:	6d94                	ld	a3,24(a1)

0000000080209fe4 <.LBB145_11>:
    80209fe4:	00006597          	auipc	a1,0x6
    80209fe8:	43f58593          	addi	a1,a1,1087 # 80210423 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.195>
    80209fec:	4609                	li	a2,2
    80209fee:	9682                	jalr	a3
    80209ff0:	c119                	beqz	a0,80209ff6 <.LBB145_11+0x12>
    80209ff2:	4685                	li	a3,1
    80209ff4:	b7ad                	j	80209f5e <_ZN4core3fmt8builders8DebugMap5value17h8d3fc5fa65b28c1cE+0x16>
    80209ff6:	4681                	li	a3,0
    80209ff8:	00040523          	sb	zero,10(s0)
    80209ffc:	b78d                	j	80209f5e <_ZN4core3fmt8builders8DebugMap5value17h8d3fc5fa65b28c1cE+0x16>

0000000080209ffe <.LBB145_12>:
    80209ffe:	00006517          	auipc	a0,0x6
    8020a002:	49a50513          	addi	a0,a0,1178 # 80210498 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.216>

000000008020a006 <.LBB145_13>:
    8020a006:	00006617          	auipc	a2,0x6
    8020a00a:	4c260613          	addi	a2,a2,1218 # 802104c8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.217>
    8020a00e:	02e00593          	li	a1,46
    8020a012:	fffff097          	auipc	ra,0xfffff
    8020a016:	7f0080e7          	jalr	2032(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000008020a01c <_ZN4core3fmt8builders8DebugMap6finish17h8f4472cd6587cc49E>:
    8020a01c:	1141                	addi	sp,sp,-16
    8020a01e:	e406                	sd	ra,8(sp)
    8020a020:	00854583          	lbu	a1,8(a0)
    8020a024:	c589                	beqz	a1,8020a02e <_ZN4core3fmt8builders8DebugMap6finish17h8f4472cd6587cc49E+0x12>
    8020a026:	4505                	li	a0,1
    8020a028:	60a2                	ld	ra,8(sp)
    8020a02a:	0141                	addi	sp,sp,16
    8020a02c:	8082                	ret
    8020a02e:	00a54583          	lbu	a1,10(a0)
    8020a032:	ed89                	bnez	a1,8020a04c <.LBB146_6>
    8020a034:	6108                	ld	a0,0(a0)
    8020a036:	750c                	ld	a1,40(a0)
    8020a038:	7108                	ld	a0,32(a0)
    8020a03a:	6d9c                	ld	a5,24(a1)

000000008020a03c <.LBB146_5>:
    8020a03c:	00006597          	auipc	a1,0x6
    8020a040:	3ee58593          	addi	a1,a1,1006 # 8021042a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.201>
    8020a044:	4605                	li	a2,1
    8020a046:	60a2                	ld	ra,8(sp)
    8020a048:	0141                	addi	sp,sp,16
    8020a04a:	8782                	jr	a5

000000008020a04c <.LBB146_6>:
    8020a04c:	00006517          	auipc	a0,0x6
    8020a050:	49450513          	addi	a0,a0,1172 # 802104e0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.218>

000000008020a054 <.LBB146_7>:
    8020a054:	00006617          	auipc	a2,0x6
    8020a058:	4bc60613          	addi	a2,a2,1212 # 80210510 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.219>
    8020a05c:	02e00593          	li	a1,46
    8020a060:	fffff097          	auipc	ra,0xfffff
    8020a064:	7a2080e7          	jalr	1954(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000008020a06a <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E>:
    8020a06a:	1141                	addi	sp,sp,-16
    8020a06c:	e406                	sd	ra,8(sp)
    8020a06e:	862e                	mv	a2,a1
    8020a070:	2581                	sext.w	a1,a1
    8020a072:	08000693          	li	a3,128
    8020a076:	c202                	sw	zero,4(sp)
    8020a078:	00d5fd63          	bgeu	a1,a3,8020a092 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x28>
    8020a07c:	004c                	addi	a1,sp,4
    8020a07e:	00c10223          	sb	a2,4(sp)
    8020a082:	4605                	li	a2,1
    8020a084:	00000097          	auipc	ra,0x0
    8020a088:	812080e7          	jalr	-2030(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    8020a08c:	60a2                	ld	ra,8(sp)
    8020a08e:	0141                	addi	sp,sp,16
    8020a090:	8082                	ret
    8020a092:	00b6559b          	srliw	a1,a2,0xb
    8020a096:	e595                	bnez	a1,8020a0c2 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x58>
    8020a098:	004c                	addi	a1,sp,4
    8020a09a:	00665693          	srli	a3,a2,0x6
    8020a09e:	0c06e693          	ori	a3,a3,192
    8020a0a2:	00d10223          	sb	a3,4(sp)
    8020a0a6:	03f67613          	andi	a2,a2,63
    8020a0aa:	08066613          	ori	a2,a2,128
    8020a0ae:	00c102a3          	sb	a2,5(sp)
    8020a0b2:	4609                	li	a2,2
    8020a0b4:	fffff097          	auipc	ra,0xfffff
    8020a0b8:	7e2080e7          	jalr	2018(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    8020a0bc:	60a2                	ld	ra,8(sp)
    8020a0be:	0141                	addi	sp,sp,16
    8020a0c0:	8082                	ret
    8020a0c2:	0106569b          	srliw	a3,a2,0x10
    8020a0c6:	004c                	addi	a1,sp,4
    8020a0c8:	ee8d                	bnez	a3,8020a102 <_ZN4core3fmt5Write10write_char17h8aeb772118eba9e2E+0x98>
    8020a0ca:	00c6569b          	srliw	a3,a2,0xc
    8020a0ce:	0e06e693          	ori	a3,a3,224
    8020a0d2:	00d10223          	sb	a3,4(sp)
    8020a0d6:	0066569b          	srliw	a3,a2,0x6
    8020a0da:	03f6f693          	andi	a3,a3,63
    8020a0de:	0806e693          	ori	a3,a3,128
    8020a0e2:	00d102a3          	sb	a3,5(sp)
    8020a0e6:	03f67613          	andi	a2,a2,63
    8020a0ea:	08066613          	ori	a2,a2,128
    8020a0ee:	00c10323          	sb	a2,6(sp)
    8020a0f2:	460d                	li	a2,3
    8020a0f4:	fffff097          	auipc	ra,0xfffff
    8020a0f8:	7a2080e7          	jalr	1954(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    8020a0fc:	60a2                	ld	ra,8(sp)
    8020a0fe:	0141                	addi	sp,sp,16
    8020a100:	8082                	ret
    8020a102:	0126569b          	srliw	a3,a2,0x12
    8020a106:	0f06e693          	ori	a3,a3,240
    8020a10a:	00d10223          	sb	a3,4(sp)
    8020a10e:	00c6569b          	srliw	a3,a2,0xc
    8020a112:	03f6f693          	andi	a3,a3,63
    8020a116:	0806e693          	ori	a3,a3,128
    8020a11a:	00d102a3          	sb	a3,5(sp)
    8020a11e:	0066569b          	srliw	a3,a2,0x6
    8020a122:	03f6f693          	andi	a3,a3,63
    8020a126:	0806e693          	ori	a3,a3,128
    8020a12a:	00d10323          	sb	a3,6(sp)
    8020a12e:	03f67613          	andi	a2,a2,63
    8020a132:	08066613          	ori	a2,a2,128
    8020a136:	00c103a3          	sb	a2,7(sp)
    8020a13a:	4611                	li	a2,4
    8020a13c:	fffff097          	auipc	ra,0xfffff
    8020a140:	75a080e7          	jalr	1882(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    8020a144:	60a2                	ld	ra,8(sp)
    8020a146:	0141                	addi	sp,sp,16
    8020a148:	8082                	ret

000000008020a14a <_ZN4core3fmt5Write9write_fmt17hddb7215d3127a3d2E>:
    8020a14a:	7139                	addi	sp,sp,-64
    8020a14c:	fc06                	sd	ra,56(sp)
    8020a14e:	7590                	ld	a2,40(a1)
    8020a150:	7194                	ld	a3,32(a1)
    8020a152:	e02a                	sd	a0,0(sp)
    8020a154:	f832                	sd	a2,48(sp)
    8020a156:	f436                	sd	a3,40(sp)
    8020a158:	6d88                	ld	a0,24(a1)
    8020a15a:	6990                	ld	a2,16(a1)
    8020a15c:	6594                	ld	a3,8(a1)
    8020a15e:	618c                	ld	a1,0(a1)
    8020a160:	f02a                	sd	a0,32(sp)
    8020a162:	ec32                	sd	a2,24(sp)
    8020a164:	e836                	sd	a3,16(sp)
    8020a166:	e42e                	sd	a1,8(sp)

000000008020a168 <.LBB160_1>:
    8020a168:	00006597          	auipc	a1,0x6
    8020a16c:	4c858593          	addi	a1,a1,1224 # 80210630 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.228>
    8020a170:	850a                	mv	a0,sp
    8020a172:	0030                	addi	a2,sp,8
    8020a174:	00000097          	auipc	ra,0x0
    8020a178:	166080e7          	jalr	358(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    8020a17c:	70e2                	ld	ra,56(sp)
    8020a17e:	6121                	addi	sp,sp,64
    8020a180:	8082                	ret

000000008020a182 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfa57a7fc9f8589d2E>:
    8020a182:	6108                	ld	a0,0(a0)
    8020a184:	fffff317          	auipc	t1,0xfffff
    8020a188:	71230067          	jr	1810(t1) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>

000000008020a18c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE>:
    8020a18c:	1141                	addi	sp,sp,-16
    8020a18e:	e406                	sd	ra,8(sp)
    8020a190:	862e                	mv	a2,a1
    8020a192:	6108                	ld	a0,0(a0)
    8020a194:	2581                	sext.w	a1,a1
    8020a196:	08000693          	li	a3,128
    8020a19a:	c202                	sw	zero,4(sp)
    8020a19c:	00d5fd63          	bgeu	a1,a3,8020a1b6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x2a>
    8020a1a0:	004c                	addi	a1,sp,4
    8020a1a2:	00c10223          	sb	a2,4(sp)
    8020a1a6:	4605                	li	a2,1
    8020a1a8:	fffff097          	auipc	ra,0xfffff
    8020a1ac:	6ee080e7          	jalr	1774(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    8020a1b0:	60a2                	ld	ra,8(sp)
    8020a1b2:	0141                	addi	sp,sp,16
    8020a1b4:	8082                	ret
    8020a1b6:	00b6559b          	srliw	a1,a2,0xb
    8020a1ba:	e595                	bnez	a1,8020a1e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x5a>
    8020a1bc:	004c                	addi	a1,sp,4
    8020a1be:	00665693          	srli	a3,a2,0x6
    8020a1c2:	0c06e693          	ori	a3,a3,192
    8020a1c6:	00d10223          	sb	a3,4(sp)
    8020a1ca:	03f67613          	andi	a2,a2,63
    8020a1ce:	08066613          	ori	a2,a2,128
    8020a1d2:	00c102a3          	sb	a2,5(sp)
    8020a1d6:	4609                	li	a2,2
    8020a1d8:	fffff097          	auipc	ra,0xfffff
    8020a1dc:	6be080e7          	jalr	1726(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    8020a1e0:	60a2                	ld	ra,8(sp)
    8020a1e2:	0141                	addi	sp,sp,16
    8020a1e4:	8082                	ret
    8020a1e6:	0106569b          	srliw	a3,a2,0x10
    8020a1ea:	004c                	addi	a1,sp,4
    8020a1ec:	ee8d                	bnez	a3,8020a226 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h58b6ff904fa9294fE+0x9a>
    8020a1ee:	00c6569b          	srliw	a3,a2,0xc
    8020a1f2:	0e06e693          	ori	a3,a3,224
    8020a1f6:	00d10223          	sb	a3,4(sp)
    8020a1fa:	0066569b          	srliw	a3,a2,0x6
    8020a1fe:	03f6f693          	andi	a3,a3,63
    8020a202:	0806e693          	ori	a3,a3,128
    8020a206:	00d102a3          	sb	a3,5(sp)
    8020a20a:	03f67613          	andi	a2,a2,63
    8020a20e:	08066613          	ori	a2,a2,128
    8020a212:	00c10323          	sb	a2,6(sp)
    8020a216:	460d                	li	a2,3
    8020a218:	fffff097          	auipc	ra,0xfffff
    8020a21c:	67e080e7          	jalr	1662(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    8020a220:	60a2                	ld	ra,8(sp)
    8020a222:	0141                	addi	sp,sp,16
    8020a224:	8082                	ret
    8020a226:	0126569b          	srliw	a3,a2,0x12
    8020a22a:	0f06e693          	ori	a3,a3,240
    8020a22e:	00d10223          	sb	a3,4(sp)
    8020a232:	00c6569b          	srliw	a3,a2,0xc
    8020a236:	03f6f693          	andi	a3,a3,63
    8020a23a:	0806e693          	ori	a3,a3,128
    8020a23e:	00d102a3          	sb	a3,5(sp)
    8020a242:	0066569b          	srliw	a3,a2,0x6
    8020a246:	03f6f693          	andi	a3,a3,63
    8020a24a:	0806e693          	ori	a3,a3,128
    8020a24e:	00d10323          	sb	a3,6(sp)
    8020a252:	03f67613          	andi	a2,a2,63
    8020a256:	08066613          	ori	a2,a2,128
    8020a25a:	00c103a3          	sb	a2,7(sp)
    8020a25e:	4611                	li	a2,4
    8020a260:	fffff097          	auipc	ra,0xfffff
    8020a264:	636080e7          	jalr	1590(ra) # 80209896 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd6b2cc874e13c1a3E>
    8020a268:	60a2                	ld	ra,8(sp)
    8020a26a:	0141                	addi	sp,sp,16
    8020a26c:	8082                	ret

000000008020a26e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h242554f80beddc1fE>:
    8020a26e:	7139                	addi	sp,sp,-64
    8020a270:	fc06                	sd	ra,56(sp)
    8020a272:	6108                	ld	a0,0(a0)
    8020a274:	7590                	ld	a2,40(a1)
    8020a276:	7194                	ld	a3,32(a1)
    8020a278:	e02a                	sd	a0,0(sp)
    8020a27a:	f832                	sd	a2,48(sp)
    8020a27c:	f436                	sd	a3,40(sp)
    8020a27e:	6d88                	ld	a0,24(a1)
    8020a280:	6990                	ld	a2,16(a1)
    8020a282:	6594                	ld	a3,8(a1)
    8020a284:	618c                	ld	a1,0(a1)
    8020a286:	f02a                	sd	a0,32(sp)
    8020a288:	ec32                	sd	a2,24(sp)
    8020a28a:	e836                	sd	a3,16(sp)
    8020a28c:	e42e                	sd	a1,8(sp)

000000008020a28e <.LBB163_1>:
    8020a28e:	00006597          	auipc	a1,0x6
    8020a292:	3a258593          	addi	a1,a1,930 # 80210630 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.228>
    8020a296:	850a                	mv	a0,sp
    8020a298:	0030                	addi	a2,sp,8
    8020a29a:	00000097          	auipc	ra,0x0
    8020a29e:	040080e7          	jalr	64(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    8020a2a2:	70e2                	ld	ra,56(sp)
    8020a2a4:	6121                	addi	sp,sp,64
    8020a2a6:	8082                	ret

000000008020a2a8 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6000ae836ac5c51cE>:
    8020a2a8:	7139                	addi	sp,sp,-64
    8020a2aa:	fc06                	sd	ra,56(sp)
    8020a2ac:	7510                	ld	a2,40(a0)
    8020a2ae:	7118                	ld	a4,32(a0)
    8020a2b0:	7194                	ld	a3,32(a1)
    8020a2b2:	758c                	ld	a1,40(a1)
    8020a2b4:	f832                	sd	a2,48(sp)
    8020a2b6:	f43a                	sd	a4,40(sp)
    8020a2b8:	6d10                	ld	a2,24(a0)
    8020a2ba:	6918                	ld	a4,16(a0)
    8020a2bc:	651c                	ld	a5,8(a0)
    8020a2be:	6108                	ld	a0,0(a0)
    8020a2c0:	f032                	sd	a2,32(sp)
    8020a2c2:	ec3a                	sd	a4,24(sp)
    8020a2c4:	e83e                	sd	a5,16(sp)
    8020a2c6:	e42a                	sd	a0,8(sp)
    8020a2c8:	0030                	addi	a2,sp,8
    8020a2ca:	8536                	mv	a0,a3
    8020a2cc:	00000097          	auipc	ra,0x0
    8020a2d0:	00e080e7          	jalr	14(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    8020a2d4:	70e2                	ld	ra,56(sp)
    8020a2d6:	6121                	addi	sp,sp,64
    8020a2d8:	8082                	ret

000000008020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>:
    8020a2da:	7135                	addi	sp,sp,-160
    8020a2dc:	ed06                	sd	ra,152(sp)
    8020a2de:	e922                	sd	s0,144(sp)
    8020a2e0:	e526                	sd	s1,136(sp)
    8020a2e2:	e14a                	sd	s2,128(sp)
    8020a2e4:	fcce                	sd	s3,120(sp)
    8020a2e6:	f8d2                	sd	s4,112(sp)
    8020a2e8:	f4d6                	sd	s5,104(sp)
    8020a2ea:	f0da                	sd	s6,96(sp)
    8020a2ec:	ecde                	sd	s7,88(sp)
    8020a2ee:	e8e2                	sd	s8,80(sp)
    8020a2f0:	e4e6                	sd	s9,72(sp)
    8020a2f2:	8432                	mv	s0,a2
    8020a2f4:	4605                	li	a2,1
    8020a2f6:	1616                	slli	a2,a2,0x25
    8020a2f8:	fc32                	sd	a2,56(sp)
    8020a2fa:	460d                	li	a2,3
    8020a2fc:	04c10023          	sb	a2,64(sp)
    8020a300:	6804                	ld	s1,16(s0)
    8020a302:	e402                	sd	zero,8(sp)
    8020a304:	ec02                	sd	zero,24(sp)
    8020a306:	f42a                	sd	a0,40(sp)
    8020a308:	f82e                	sd	a1,48(sp)
    8020a30a:	cce9                	beqz	s1,8020a3e4 <.LBB167_35+0x9e>
    8020a30c:	6c10                	ld	a2,24(s0)
    8020a30e:	00843983          	ld	s3,8(s0)
    8020a312:	00043903          	ld	s2,0(s0)
    8020a316:	8ace                	mv	s5,s3
    8020a318:	00c9e363          	bltu	s3,a2,8020a31e <_ZN4core3fmt5write17h338141860f5a80fbE+0x44>
    8020a31c:	8ab2                	mv	s5,a2
    8020a31e:	120a8163          	beqz	s5,8020a440 <.LBB167_35+0xfa>
    8020a322:	00093683          	ld	a3,0(s2)
    8020a326:	00893603          	ld	a2,8(s2)
    8020a32a:	6d98                	ld	a4,24(a1)
    8020a32c:	85b6                	mv	a1,a3
    8020a32e:	9702                	jalr	a4
    8020a330:	12051663          	bnez	a0,8020a45c <.LBB167_35+0x116>
    8020a334:	02043c03          	ld	s8,32(s0)
    8020a338:	03048493          	addi	s1,s1,48
    8020a33c:	01890c93          	addi	s9,s2,24
    8020a340:	00810a13          	addi	s4,sp,8
    8020a344:	4b09                	li	s6,2

000000008020a346 <.LBB167_35>:
    8020a346:	fffffb97          	auipc	s7,0xfffff
    8020a34a:	39cb8b93          	addi	s7,s7,924 # 802096e2 <_ZN4core3ops8function6FnOnce9call_once17hbe6f1b732a2946a4E>
    8020a34e:	8456                	mv	s0,s5
    8020a350:	ff84a503          	lw	a0,-8(s1)
    8020a354:	de2a                	sw	a0,60(sp)
    8020a356:	00048503          	lb	a0,0(s1)
    8020a35a:	04a10023          	sb	a0,64(sp)
    8020a35e:	ffc4a503          	lw	a0,-4(s1)
    8020a362:	dc2a                	sw	a0,56(sp)
    8020a364:	fe84b603          	ld	a2,-24(s1)
    8020a368:	ff04b503          	ld	a0,-16(s1)
    8020a36c:	ca19                	beqz	a2,8020a382 <.LBB167_35+0x3c>
    8020a36e:	4581                	li	a1,0
    8020a370:	01660c63          	beq	a2,s6,8020a388 <.LBB167_35+0x42>
    8020a374:	0512                	slli	a0,a0,0x4
    8020a376:	9562                	add	a0,a0,s8
    8020a378:	650c                	ld	a1,8(a0)
    8020a37a:	01759663          	bne	a1,s7,8020a386 <.LBB167_35+0x40>
    8020a37e:	6108                	ld	a0,0(a0)
    8020a380:	6108                	ld	a0,0(a0)
    8020a382:	4585                	li	a1,1
    8020a384:	a011                	j	8020a388 <.LBB167_35+0x42>
    8020a386:	4581                	li	a1,0
    8020a388:	e42e                	sd	a1,8(sp)
    8020a38a:	e82a                	sd	a0,16(sp)
    8020a38c:	fd84b603          	ld	a2,-40(s1)
    8020a390:	fe04b503          	ld	a0,-32(s1)
    8020a394:	ca19                	beqz	a2,8020a3aa <.LBB167_35+0x64>
    8020a396:	4581                	li	a1,0
    8020a398:	01660c63          	beq	a2,s6,8020a3b0 <.LBB167_35+0x6a>
    8020a39c:	0512                	slli	a0,a0,0x4
    8020a39e:	9562                	add	a0,a0,s8
    8020a3a0:	650c                	ld	a1,8(a0)
    8020a3a2:	01759663          	bne	a1,s7,8020a3ae <.LBB167_35+0x68>
    8020a3a6:	6108                	ld	a0,0(a0)
    8020a3a8:	6108                	ld	a0,0(a0)
    8020a3aa:	4585                	li	a1,1
    8020a3ac:	a011                	j	8020a3b0 <.LBB167_35+0x6a>
    8020a3ae:	4581                	li	a1,0
    8020a3b0:	ec2e                	sd	a1,24(sp)
    8020a3b2:	f02a                	sd	a0,32(sp)
    8020a3b4:	fd04b503          	ld	a0,-48(s1)
    8020a3b8:	0512                	slli	a0,a0,0x4
    8020a3ba:	9562                	add	a0,a0,s8
    8020a3bc:	6510                	ld	a2,8(a0)
    8020a3be:	6108                	ld	a0,0(a0)
    8020a3c0:	85d2                	mv	a1,s4
    8020a3c2:	9602                	jalr	a2
    8020a3c4:	ed41                	bnez	a0,8020a45c <.LBB167_35+0x116>
    8020a3c6:	147d                	addi	s0,s0,-1
    8020a3c8:	cc2d                	beqz	s0,8020a442 <.LBB167_35+0xfc>
    8020a3ca:	76c2                	ld	a3,48(sp)
    8020a3cc:	7522                	ld	a0,40(sp)
    8020a3ce:	ff8cb583          	ld	a1,-8(s9)
    8020a3d2:	000cb603          	ld	a2,0(s9)
    8020a3d6:	6e94                	ld	a3,24(a3)
    8020a3d8:	03848493          	addi	s1,s1,56
    8020a3dc:	0cc1                	addi	s9,s9,16
    8020a3de:	9682                	jalr	a3
    8020a3e0:	d925                	beqz	a0,8020a350 <.LBB167_35+0xa>
    8020a3e2:	a8ad                	j	8020a45c <.LBB167_35+0x116>
    8020a3e4:	7004                	ld	s1,32(s0)
    8020a3e6:	7410                	ld	a2,40(s0)
    8020a3e8:	00843983          	ld	s3,8(s0)
    8020a3ec:	00043903          	ld	s2,0(s0)
    8020a3f0:	8ace                	mv	s5,s3
    8020a3f2:	00c9e363          	bltu	s3,a2,8020a3f8 <.LBB167_35+0xb2>
    8020a3f6:	8ab2                	mv	s5,a2
    8020a3f8:	040a8463          	beqz	s5,8020a440 <.LBB167_35+0xfa>
    8020a3fc:	00093683          	ld	a3,0(s2)
    8020a400:	00893603          	ld	a2,8(s2)
    8020a404:	6d98                	ld	a4,24(a1)
    8020a406:	85b6                	mv	a1,a3
    8020a408:	9702                	jalr	a4
    8020a40a:	e929                	bnez	a0,8020a45c <.LBB167_35+0x116>
    8020a40c:	04a1                	addi	s1,s1,8
    8020a40e:	01890b13          	addi	s6,s2,24
    8020a412:	00810a13          	addi	s4,sp,8
    8020a416:	8456                	mv	s0,s5
    8020a418:	6090                	ld	a2,0(s1)
    8020a41a:	ff84b503          	ld	a0,-8(s1)
    8020a41e:	85d2                	mv	a1,s4
    8020a420:	9602                	jalr	a2
    8020a422:	ed0d                	bnez	a0,8020a45c <.LBB167_35+0x116>
    8020a424:	147d                	addi	s0,s0,-1
    8020a426:	cc11                	beqz	s0,8020a442 <.LBB167_35+0xfc>
    8020a428:	76c2                	ld	a3,48(sp)
    8020a42a:	7522                	ld	a0,40(sp)
    8020a42c:	ff8b3583          	ld	a1,-8(s6)
    8020a430:	000b3603          	ld	a2,0(s6)
    8020a434:	6e94                	ld	a3,24(a3)
    8020a436:	04c1                	addi	s1,s1,16
    8020a438:	0b41                	addi	s6,s6,16
    8020a43a:	9682                	jalr	a3
    8020a43c:	dd71                	beqz	a0,8020a418 <.LBB167_35+0xd2>
    8020a43e:	a839                	j	8020a45c <.LBB167_35+0x116>
    8020a440:	4a81                	li	s5,0
    8020a442:	013aff63          	bgeu	s5,s3,8020a460 <.LBB167_35+0x11a>
    8020a446:	7522                	ld	a0,40(sp)
    8020a448:	76c2                	ld	a3,48(sp)
    8020a44a:	004a9593          	slli	a1,s5,0x4
    8020a44e:	00b90633          	add	a2,s2,a1
    8020a452:	620c                	ld	a1,0(a2)
    8020a454:	6610                	ld	a2,8(a2)
    8020a456:	6e94                	ld	a3,24(a3)
    8020a458:	9682                	jalr	a3
    8020a45a:	c119                	beqz	a0,8020a460 <.LBB167_35+0x11a>
    8020a45c:	4505                	li	a0,1
    8020a45e:	a011                	j	8020a462 <.LBB167_35+0x11c>
    8020a460:	4501                	li	a0,0
    8020a462:	6ca6                	ld	s9,72(sp)
    8020a464:	6c46                	ld	s8,80(sp)
    8020a466:	6be6                	ld	s7,88(sp)
    8020a468:	7b06                	ld	s6,96(sp)
    8020a46a:	7aa6                	ld	s5,104(sp)
    8020a46c:	7a46                	ld	s4,112(sp)
    8020a46e:	79e6                	ld	s3,120(sp)
    8020a470:	690a                	ld	s2,128(sp)
    8020a472:	64aa                	ld	s1,136(sp)
    8020a474:	644a                	ld	s0,144(sp)
    8020a476:	60ea                	ld	ra,152(sp)
    8020a478:	610d                	addi	sp,sp,160
    8020a47a:	8082                	ret

000000008020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>:
    8020a47c:	7159                	addi	sp,sp,-112
    8020a47e:	f486                	sd	ra,104(sp)
    8020a480:	f0a2                	sd	s0,96(sp)
    8020a482:	eca6                	sd	s1,88(sp)
    8020a484:	e8ca                	sd	s2,80(sp)
    8020a486:	e4ce                	sd	s3,72(sp)
    8020a488:	e0d2                	sd	s4,64(sp)
    8020a48a:	fc56                	sd	s5,56(sp)
    8020a48c:	f85a                	sd	s6,48(sp)
    8020a48e:	f45e                	sd	s7,40(sp)
    8020a490:	f062                	sd	s8,32(sp)
    8020a492:	ec66                	sd	s9,24(sp)
    8020a494:	e86a                	sd	s10,16(sp)
    8020a496:	e46e                	sd	s11,8(sp)
    8020a498:	89be                	mv	s3,a5
    8020a49a:	893a                	mv	s2,a4
    8020a49c:	8ab6                	mv	s5,a3
    8020a49e:	842a                	mv	s0,a0
    8020a4a0:	c9b1                	beqz	a1,8020a4f4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x78>
    8020a4a2:	03046503          	lwu	a0,48(s0)
    8020a4a6:	00157593          	andi	a1,a0,1
    8020a4aa:	00110a37          	lui	s4,0x110
    8020a4ae:	c199                	beqz	a1,8020a4b4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x38>
    8020a4b0:	02b00a13          	li	s4,43
    8020a4b4:	01358cb3          	add	s9,a1,s3
    8020a4b8:	00457593          	andi	a1,a0,4
    8020a4bc:	c5a9                	beqz	a1,8020a506 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x8a>
    8020a4be:	4581                	li	a1,0
    8020a4c0:	020a8063          	beqz	s5,8020a4e0 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x64>
    8020a4c4:	86d6                	mv	a3,s5
    8020a4c6:	8732                	mv	a4,a2
    8020a4c8:	00074783          	lbu	a5,0(a4)
    8020a4cc:	0705                	addi	a4,a4,1
    8020a4ce:	0c07f793          	andi	a5,a5,192
    8020a4d2:	f8078793          	addi	a5,a5,-128
    8020a4d6:	0017b793          	seqz	a5,a5
    8020a4da:	16fd                	addi	a3,a3,-1
    8020a4dc:	95be                	add	a1,a1,a5
    8020a4de:	f6ed                	bnez	a3,8020a4c8 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x4c>
    8020a4e0:	015c86b3          	add	a3,s9,s5
    8020a4e4:	40b68cb3          	sub	s9,a3,a1
    8020a4e8:	8b32                	mv	s6,a2
    8020a4ea:	600c                	ld	a1,0(s0)
    8020a4ec:	4d85                	li	s11,1
    8020a4ee:	03b58163          	beq	a1,s11,8020a510 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x94>
    8020a4f2:	a0b1                	j	8020a53e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    8020a4f4:	03046503          	lwu	a0,48(s0)
    8020a4f8:	00198c93          	addi	s9,s3,1
    8020a4fc:	02d00a13          	li	s4,45
    8020a500:	00457593          	andi	a1,a0,4
    8020a504:	fdcd                	bnez	a1,8020a4be <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x42>
    8020a506:	4b01                	li	s6,0
    8020a508:	600c                	ld	a1,0(s0)
    8020a50a:	4d85                	li	s11,1
    8020a50c:	03b59963          	bne	a1,s11,8020a53e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    8020a510:	00843d03          	ld	s10,8(s0)
    8020a514:	03acf563          	bgeu	s9,s10,8020a53e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xc2>
    8020a518:	8921                	andi	a0,a0,8
    8020a51a:	ed3d                	bnez	a0,8020a598 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x11c>
    8020a51c:	03844503          	lbu	a0,56(s0)
    8020a520:	4585                	li	a1,1
    8020a522:	468d                	li	a3,3
    8020a524:	4605                	li	a2,1
    8020a526:	00d50363          	beq	a0,a3,8020a52c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xb0>
    8020a52a:	862a                	mv	a2,a0
    8020a52c:	8a0d                	andi	a2,a2,3
    8020a52e:	419d0533          	sub	a0,s10,s9
    8020a532:	0ac5c763          	blt	a1,a2,8020a5e0 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x164>
    8020a536:	ea45                	bnez	a2,8020a5e6 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16a>
    8020a538:	8c2a                	mv	s8,a0
    8020a53a:	4501                	li	a0,0
    8020a53c:	a0c9                	j	8020a5fe <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    8020a53e:	8522                	mv	a0,s0
    8020a540:	85d2                	mv	a1,s4
    8020a542:	865a                	mv	a2,s6
    8020a544:	86d6                	mv	a3,s5
    8020a546:	00000097          	auipc	ra,0x0
    8020a54a:	174080e7          	jalr	372(ra) # 8020a6ba <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    8020a54e:	c10d                	beqz	a0,8020a570 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xf4>
    8020a550:	856e                	mv	a0,s11
    8020a552:	6da2                	ld	s11,8(sp)
    8020a554:	6d42                	ld	s10,16(sp)
    8020a556:	6ce2                	ld	s9,24(sp)
    8020a558:	7c02                	ld	s8,32(sp)
    8020a55a:	7ba2                	ld	s7,40(sp)
    8020a55c:	7b42                	ld	s6,48(sp)
    8020a55e:	7ae2                	ld	s5,56(sp)
    8020a560:	6a06                	ld	s4,64(sp)
    8020a562:	69a6                	ld	s3,72(sp)
    8020a564:	6946                	ld	s2,80(sp)
    8020a566:	64e6                	ld	s1,88(sp)
    8020a568:	7406                	ld	s0,96(sp)
    8020a56a:	70a6                	ld	ra,104(sp)
    8020a56c:	6165                	addi	sp,sp,112
    8020a56e:	8082                	ret
    8020a570:	740c                	ld	a1,40(s0)
    8020a572:	7008                	ld	a0,32(s0)
    8020a574:	6d9c                	ld	a5,24(a1)
    8020a576:	85ca                	mv	a1,s2
    8020a578:	864e                	mv	a2,s3
    8020a57a:	6da2                	ld	s11,8(sp)
    8020a57c:	6d42                	ld	s10,16(sp)
    8020a57e:	6ce2                	ld	s9,24(sp)
    8020a580:	7c02                	ld	s8,32(sp)
    8020a582:	7ba2                	ld	s7,40(sp)
    8020a584:	7b42                	ld	s6,48(sp)
    8020a586:	7ae2                	ld	s5,56(sp)
    8020a588:	6a06                	ld	s4,64(sp)
    8020a58a:	69a6                	ld	s3,72(sp)
    8020a58c:	6946                	ld	s2,80(sp)
    8020a58e:	64e6                	ld	s1,88(sp)
    8020a590:	7406                	ld	s0,96(sp)
    8020a592:	70a6                	ld	ra,104(sp)
    8020a594:	6165                	addi	sp,sp,112
    8020a596:	8782                	jr	a5
    8020a598:	03446b83          	lwu	s7,52(s0)
    8020a59c:	03000513          	li	a0,48
    8020a5a0:	03844c03          	lbu	s8,56(s0)
    8020a5a4:	d848                	sw	a0,52(s0)
    8020a5a6:	4d85                	li	s11,1
    8020a5a8:	03b40c23          	sb	s11,56(s0)
    8020a5ac:	8522                	mv	a0,s0
    8020a5ae:	85d2                	mv	a1,s4
    8020a5b0:	865a                	mv	a2,s6
    8020a5b2:	86d6                	mv	a3,s5
    8020a5b4:	00000097          	auipc	ra,0x0
    8020a5b8:	106080e7          	jalr	262(ra) # 8020a6ba <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    8020a5bc:	f951                	bnez	a0,8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    8020a5be:	03844503          	lbu	a0,56(s0)
    8020a5c2:	4585                	li	a1,1
    8020a5c4:	468d                	li	a3,3
    8020a5c6:	4605                	li	a2,1
    8020a5c8:	00d50363          	beq	a0,a3,8020a5ce <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x152>
    8020a5cc:	862a                	mv	a2,a0
    8020a5ce:	8a0d                	andi	a2,a2,3
    8020a5d0:	419d0533          	sub	a0,s10,s9
    8020a5d4:	00c5cb63          	blt	a1,a2,8020a5ea <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x16e>
    8020a5d8:	ee01                	bnez	a2,8020a5f0 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x174>
    8020a5da:	8aaa                	mv	s5,a0
    8020a5dc:	4501                	li	a0,0
    8020a5de:	a041                	j	8020a65e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    8020a5e0:	458d                	li	a1,3
    8020a5e2:	00b61963          	bne	a2,a1,8020a5f4 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x178>
    8020a5e6:	4c01                	li	s8,0
    8020a5e8:	a819                	j	8020a5fe <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x182>
    8020a5ea:	458d                	li	a1,3
    8020a5ec:	06b61463          	bne	a2,a1,8020a654 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1d8>
    8020a5f0:	4a81                	li	s5,0
    8020a5f2:	a0b5                	j	8020a65e <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e2>
    8020a5f4:	00150593          	addi	a1,a0,1
    8020a5f8:	8105                	srli	a0,a0,0x1
    8020a5fa:	0015dc13          	srli	s8,a1,0x1
    8020a5fe:	00150493          	addi	s1,a0,1
    8020a602:	14fd                	addi	s1,s1,-1
    8020a604:	c881                	beqz	s1,8020a614 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x198>
    8020a606:	740c                	ld	a1,40(s0)
    8020a608:	7008                	ld	a0,32(s0)
    8020a60a:	7190                	ld	a2,32(a1)
    8020a60c:	584c                	lw	a1,52(s0)
    8020a60e:	9602                	jalr	a2
    8020a610:	d96d                	beqz	a0,8020a602 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x186>
    8020a612:	a085                	j	8020a672 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1f6>
    8020a614:	03446b83          	lwu	s7,52(s0)
    8020a618:	8522                	mv	a0,s0
    8020a61a:	85d2                	mv	a1,s4
    8020a61c:	865a                	mv	a2,s6
    8020a61e:	86d6                	mv	a3,s5
    8020a620:	00000097          	auipc	ra,0x0
    8020a624:	09a080e7          	jalr	154(ra) # 8020a6ba <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>
    8020a628:	4d85                	li	s11,1
    8020a62a:	f11d                	bnez	a0,8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    8020a62c:	740c                	ld	a1,40(s0)
    8020a62e:	7008                	ld	a0,32(s0)
    8020a630:	6d94                	ld	a3,24(a1)
    8020a632:	85ca                	mv	a1,s2
    8020a634:	864e                	mv	a2,s3
    8020a636:	9682                	jalr	a3
    8020a638:	fd01                	bnez	a0,8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    8020a63a:	02043903          	ld	s2,32(s0)
    8020a63e:	7400                	ld	s0,40(s0)
    8020a640:	001c0493          	addi	s1,s8,1
    8020a644:	14fd                	addi	s1,s1,-1
    8020a646:	c0b5                	beqz	s1,8020a6aa <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x22e>
    8020a648:	7010                	ld	a2,32(s0)
    8020a64a:	854a                	mv	a0,s2
    8020a64c:	85de                	mv	a1,s7
    8020a64e:	9602                	jalr	a2
    8020a650:	d975                	beqz	a0,8020a644 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1c8>
    8020a652:	bdfd                	j	8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    8020a654:	00150593          	addi	a1,a0,1
    8020a658:	8105                	srli	a0,a0,0x1
    8020a65a:	0015da93          	srli	s5,a1,0x1
    8020a65e:	00150493          	addi	s1,a0,1
    8020a662:	14fd                	addi	s1,s1,-1
    8020a664:	c889                	beqz	s1,8020a676 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1fa>
    8020a666:	740c                	ld	a1,40(s0)
    8020a668:	7008                	ld	a0,32(s0)
    8020a66a:	7190                	ld	a2,32(a1)
    8020a66c:	584c                	lw	a1,52(s0)
    8020a66e:	9602                	jalr	a2
    8020a670:	d96d                	beqz	a0,8020a662 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x1e6>
    8020a672:	4d85                	li	s11,1
    8020a674:	bdf1                	j	8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    8020a676:	740c                	ld	a1,40(s0)
    8020a678:	03446a03          	lwu	s4,52(s0)
    8020a67c:	7008                	ld	a0,32(s0)
    8020a67e:	6d94                	ld	a3,24(a1)
    8020a680:	85ca                	mv	a1,s2
    8020a682:	864e                	mv	a2,s3
    8020a684:	9682                	jalr	a3
    8020a686:	4d85                	li	s11,1
    8020a688:	ec0514e3          	bnez	a0,8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    8020a68c:	02043903          	ld	s2,32(s0)
    8020a690:	02843983          	ld	s3,40(s0)
    8020a694:	001a8493          	addi	s1,s5,1
    8020a698:	14fd                	addi	s1,s1,-1
    8020a69a:	c891                	beqz	s1,8020a6ae <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x232>
    8020a69c:	0209b603          	ld	a2,32(s3)
    8020a6a0:	854a                	mv	a0,s2
    8020a6a2:	85d2                	mv	a1,s4
    8020a6a4:	9602                	jalr	a2
    8020a6a6:	d96d                	beqz	a0,8020a698 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0x21c>
    8020a6a8:	b565                	j	8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    8020a6aa:	4d81                	li	s11,0
    8020a6ac:	b555                	j	8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>
    8020a6ae:	4d81                	li	s11,0
    8020a6b0:	03742a23          	sw	s7,52(s0)
    8020a6b4:	03840c23          	sb	s8,56(s0)
    8020a6b8:	bd61                	j	8020a550 <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E+0xd4>

000000008020a6ba <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E>:
    8020a6ba:	1101                	addi	sp,sp,-32
    8020a6bc:	ec06                	sd	ra,24(sp)
    8020a6be:	e822                	sd	s0,16(sp)
    8020a6c0:	e426                	sd	s1,8(sp)
    8020a6c2:	e04a                	sd	s2,0(sp)
    8020a6c4:	02059713          	slli	a4,a1,0x20
    8020a6c8:	9301                	srli	a4,a4,0x20
    8020a6ca:	001107b7          	lui	a5,0x110
    8020a6ce:	8936                	mv	s2,a3
    8020a6d0:	84b2                	mv	s1,a2
    8020a6d2:	842a                	mv	s0,a0
    8020a6d4:	00f70963          	beq	a4,a5,8020a6e6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x2c>
    8020a6d8:	7410                	ld	a2,40(s0)
    8020a6da:	7008                	ld	a0,32(s0)
    8020a6dc:	7210                	ld	a2,32(a2)
    8020a6de:	9602                	jalr	a2
    8020a6e0:	85aa                	mv	a1,a0
    8020a6e2:	4505                	li	a0,1
    8020a6e4:	ed91                	bnez	a1,8020a700 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x46>
    8020a6e6:	cc81                	beqz	s1,8020a6fe <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h348f9b16d5d85b52E+0x44>
    8020a6e8:	740c                	ld	a1,40(s0)
    8020a6ea:	7008                	ld	a0,32(s0)
    8020a6ec:	6d9c                	ld	a5,24(a1)
    8020a6ee:	85a6                	mv	a1,s1
    8020a6f0:	864a                	mv	a2,s2
    8020a6f2:	6902                	ld	s2,0(sp)
    8020a6f4:	64a2                	ld	s1,8(sp)
    8020a6f6:	6442                	ld	s0,16(sp)
    8020a6f8:	60e2                	ld	ra,24(sp)
    8020a6fa:	6105                	addi	sp,sp,32
    8020a6fc:	8782                	jr	a5
    8020a6fe:	4501                	li	a0,0
    8020a700:	6902                	ld	s2,0(sp)
    8020a702:	64a2                	ld	s1,8(sp)
    8020a704:	6442                	ld	s0,16(sp)
    8020a706:	60e2                	ld	ra,24(sp)
    8020a708:	6105                	addi	sp,sp,32
    8020a70a:	8082                	ret

000000008020a70c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>:
    8020a70c:	7139                	addi	sp,sp,-64
    8020a70e:	fc06                	sd	ra,56(sp)
    8020a710:	f822                	sd	s0,48(sp)
    8020a712:	f426                	sd	s1,40(sp)
    8020a714:	f04a                	sd	s2,32(sp)
    8020a716:	ec4e                	sd	s3,24(sp)
    8020a718:	e852                	sd	s4,16(sp)
    8020a71a:	e456                	sd	s5,8(sp)
    8020a71c:	e05a                	sd	s6,0(sp)
    8020a71e:	8b2a                	mv	s6,a0
    8020a720:	6914                	ld	a3,16(a0)
    8020a722:	6108                	ld	a0,0(a0)
    8020a724:	89b2                	mv	s3,a2
    8020a726:	892e                	mv	s2,a1
    8020a728:	fff68593          	addi	a1,a3,-1
    8020a72c:	4605                	li	a2,1
    8020a72e:	0015b593          	seqz	a1,a1
    8020a732:	00c51463          	bne	a0,a2,8020a73a <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2e>
    8020a736:	e581                	bnez	a1,8020a73e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x32>
    8020a738:	a215                	j	8020a85c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x150>
    8020a73a:	18058f63          	beqz	a1,8020a8d8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    8020a73e:	018b3683          	ld	a3,24(s6)
    8020a742:	157d                	addi	a0,a0,-1
    8020a744:	00153813          	seqz	a6,a0
    8020a748:	01390733          	add	a4,s2,s3
    8020a74c:	4581                	li	a1,0
    8020a74e:	c2dd                	beqz	a3,8020a7f4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe8>
    8020a750:	5e7d                	li	t3,-1
    8020a752:	0e000393          	li	t2,224
    8020a756:	0f000313          	li	t1,240
    8020a75a:	001c08b7          	lui	a7,0x1c0
    8020a75e:	001102b7          	lui	t0,0x110
    8020a762:	854a                	mv	a0,s2
    8020a764:	a815                	j	8020a798 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x8c>
    8020a766:	00064403          	lbu	s0,0(a2)
    8020a76a:	00160493          	addi	s1,a2,1
    8020a76e:	03f47f93          	andi	t6,s0,63
    8020a772:	07ca                	slli	a5,a5,0x12
    8020a774:	0117f7b3          	and	a5,a5,a7
    8020a778:	00cf1413          	slli	s0,t5,0xc
    8020a77c:	006e9613          	slli	a2,t4,0x6
    8020a780:	8fc1                	or	a5,a5,s0
    8020a782:	8e5d                	or	a2,a2,a5
    8020a784:	01f66633          	or	a2,a2,t6
    8020a788:	0c560863          	beq	a2,t0,8020a858 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    8020a78c:	40a48533          	sub	a0,s1,a0
    8020a790:	16fd                	addi	a3,a3,-1
    8020a792:	95aa                	add	a1,a1,a0
    8020a794:	8526                	mv	a0,s1
    8020a796:	c2a5                	beqz	a3,8020a7f6 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xea>
    8020a798:	0ca70063          	beq	a4,a0,8020a858 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    8020a79c:	00050603          	lb	a2,0(a0)
    8020a7a0:	00150493          	addi	s1,a0,1
    8020a7a4:	fece44e3          	blt	t3,a2,8020a78c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    8020a7a8:	0ff67793          	andi	a5,a2,255
    8020a7ac:	00e48c63          	beq	s1,a4,8020a7c4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xb8>
    8020a7b0:	00154603          	lbu	a2,1(a0)
    8020a7b4:	00250493          	addi	s1,a0,2
    8020a7b8:	03f67f13          	andi	t5,a2,63
    8020a7bc:	8626                	mv	a2,s1
    8020a7be:	fc77e7e3          	bltu	a5,t2,8020a78c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    8020a7c2:	a029                	j	8020a7cc <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xc0>
    8020a7c4:	4f01                	li	t5,0
    8020a7c6:	863a                	mv	a2,a4
    8020a7c8:	fc77e2e3          	bltu	a5,t2,8020a78c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    8020a7cc:	00e60c63          	beq	a2,a4,8020a7e4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xd8>
    8020a7d0:	00064403          	lbu	s0,0(a2)
    8020a7d4:	00160493          	addi	s1,a2,1
    8020a7d8:	03f47e93          	andi	t4,s0,63
    8020a7dc:	8626                	mv	a2,s1
    8020a7de:	fa67e7e3          	bltu	a5,t1,8020a78c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    8020a7e2:	a029                	j	8020a7ec <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xe0>
    8020a7e4:	4e81                	li	t4,0
    8020a7e6:	863a                	mv	a2,a4
    8020a7e8:	fa67e2e3          	bltu	a5,t1,8020a78c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x80>
    8020a7ec:	f6e61de3          	bne	a2,a4,8020a766 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x5a>
    8020a7f0:	4f81                	li	t6,0
    8020a7f2:	b741                	j	8020a772 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x66>
    8020a7f4:	84ca                	mv	s1,s2
    8020a7f6:	06970163          	beq	a4,s1,8020a858 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    8020a7fa:	00048503          	lb	a0,0(s1)
    8020a7fe:	567d                	li	a2,-1
    8020a800:	02a65763          	bge	a2,a0,8020a82e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x122>
    8020a804:	0015b513          	seqz	a0,a1
    8020a808:	0135c633          	xor	a2,a1,s3
    8020a80c:	00163613          	seqz	a2,a2
    8020a810:	8d51                	or	a0,a0,a2
    8020a812:	e919                	bnez	a0,8020a828 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x11c>
    8020a814:	0335fe63          	bgeu	a1,s3,8020a850 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    8020a818:	00b90533          	add	a0,s2,a1
    8020a81c:	00050503          	lb	a0,0(a0)
    8020a820:	fc000613          	li	a2,-64
    8020a824:	02c54663          	blt	a0,a2,8020a850 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x144>
    8020a828:	854a                	mv	a0,s2
    8020a82a:	e50d                	bnez	a0,8020a854 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x148>
    8020a82c:	a035                	j	8020a858 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    8020a82e:	00148613          	addi	a2,s1,1
    8020a832:	0ff57513          	andi	a0,a0,255
    8020a836:	14e60163          	beq	a2,a4,8020a978 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x26c>
    8020a83a:	0014c683          	lbu	a3,1(s1)
    8020a83e:	00248613          	addi	a2,s1,2
    8020a842:	03f6f693          	andi	a3,a3,63
    8020a846:	0e000793          	li	a5,224
    8020a84a:	12f57d63          	bgeu	a0,a5,8020a984 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x278>
    8020a84e:	bf5d                	j	8020a804 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    8020a850:	4501                	li	a0,0
    8020a852:	c119                	beqz	a0,8020a858 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    8020a854:	892a                	mv	s2,a0
    8020a856:	89ae                	mv	s3,a1
    8020a858:	08080063          	beqz	a6,8020a8d8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    8020a85c:	04098763          	beqz	s3,8020a8aa <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x19e>
    8020a860:	4581                	li	a1,0
    8020a862:	854e                	mv	a0,s3
    8020a864:	864a                	mv	a2,s2
    8020a866:	00064683          	lbu	a3,0(a2)
    8020a86a:	0605                	addi	a2,a2,1
    8020a86c:	0c06f693          	andi	a3,a3,192
    8020a870:	f8068693          	addi	a3,a3,-128
    8020a874:	0016b693          	seqz	a3,a3
    8020a878:	157d                	addi	a0,a0,-1
    8020a87a:	95b6                	add	a1,a1,a3
    8020a87c:	f56d                	bnez	a0,8020a866 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x15a>
    8020a87e:	008b3503          	ld	a0,8(s6)
    8020a882:	40b985b3          	sub	a1,s3,a1
    8020a886:	04a5f963          	bgeu	a1,a0,8020a8d8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    8020a88a:	4581                	li	a1,0
    8020a88c:	864e                	mv	a2,s3
    8020a88e:	86ca                	mv	a3,s2
    8020a890:	0006c703          	lbu	a4,0(a3)
    8020a894:	0685                	addi	a3,a3,1
    8020a896:	0c077713          	andi	a4,a4,192
    8020a89a:	f8070713          	addi	a4,a4,-128
    8020a89e:	00173713          	seqz	a4,a4
    8020a8a2:	167d                	addi	a2,a2,-1
    8020a8a4:	95ba                	add	a1,a1,a4
    8020a8a6:	f66d                	bnez	a2,8020a890 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x184>
    8020a8a8:	a029                	j	8020a8b2 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1a6>
    8020a8aa:	008b3503          	ld	a0,8(s6)
    8020a8ae:	4581                	li	a1,0
    8020a8b0:	c505                	beqz	a0,8020a8d8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1cc>
    8020a8b2:	038b4683          	lbu	a3,56(s6)
    8020a8b6:	4701                	li	a4,0
    8020a8b8:	478d                	li	a5,3
    8020a8ba:	41358633          	sub	a2,a1,s3
    8020a8be:	00f68363          	beq	a3,a5,8020a8c4 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1b8>
    8020a8c2:	8736                	mv	a4,a3
    8020a8c4:	00377593          	andi	a1,a4,3
    8020a8c8:	4685                	li	a3,1
    8020a8ca:	9532                	add	a0,a0,a2
    8020a8cc:	02b6c763          	blt	a3,a1,8020a8fa <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1ee>
    8020a8d0:	e985                	bnez	a1,8020a900 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f4>
    8020a8d2:	8aaa                	mv	s5,a0
    8020a8d4:	4501                	li	a0,0
    8020a8d6:	a825                	j	8020a90e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    8020a8d8:	028b3583          	ld	a1,40(s6)
    8020a8dc:	020b3503          	ld	a0,32(s6)
    8020a8e0:	6d9c                	ld	a5,24(a1)
    8020a8e2:	85ca                	mv	a1,s2
    8020a8e4:	864e                	mv	a2,s3
    8020a8e6:	6b02                	ld	s6,0(sp)
    8020a8e8:	6aa2                	ld	s5,8(sp)
    8020a8ea:	6a42                	ld	s4,16(sp)
    8020a8ec:	69e2                	ld	s3,24(sp)
    8020a8ee:	7902                	ld	s2,32(sp)
    8020a8f0:	74a2                	ld	s1,40(sp)
    8020a8f2:	7442                	ld	s0,48(sp)
    8020a8f4:	70e2                	ld	ra,56(sp)
    8020a8f6:	6121                	addi	sp,sp,64
    8020a8f8:	8782                	jr	a5
    8020a8fa:	460d                	li	a2,3
    8020a8fc:	00c59463          	bne	a1,a2,8020a904 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x1f8>
    8020a900:	4a81                	li	s5,0
    8020a902:	a031                	j	8020a90e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x202>
    8020a904:	00150593          	addi	a1,a0,1
    8020a908:	8105                	srli	a0,a0,0x1
    8020a90a:	0015da93          	srli	s5,a1,0x1
    8020a90e:	00150493          	addi	s1,a0,1
    8020a912:	14fd                	addi	s1,s1,-1
    8020a914:	cc81                	beqz	s1,8020a92c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x220>
    8020a916:	028b3583          	ld	a1,40(s6)
    8020a91a:	020b3503          	ld	a0,32(s6)
    8020a91e:	7190                	ld	a2,32(a1)
    8020a920:	034b2583          	lw	a1,52(s6)
    8020a924:	9602                	jalr	a2
    8020a926:	d575                	beqz	a0,8020a912 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x206>
    8020a928:	4905                	li	s2,1
    8020a92a:	a825                	j	8020a962 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    8020a92c:	028b3583          	ld	a1,40(s6)
    8020a930:	034b6a03          	lwu	s4,52(s6)
    8020a934:	020b3503          	ld	a0,32(s6)
    8020a938:	6d94                	ld	a3,24(a1)
    8020a93a:	85ca                	mv	a1,s2
    8020a93c:	864e                	mv	a2,s3
    8020a93e:	9682                	jalr	a3
    8020a940:	4905                	li	s2,1
    8020a942:	e105                	bnez	a0,8020a962 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    8020a944:	020b3983          	ld	s3,32(s6)
    8020a948:	028b3403          	ld	s0,40(s6)
    8020a94c:	001a8493          	addi	s1,s5,1
    8020a950:	14fd                	addi	s1,s1,-1
    8020a952:	c499                	beqz	s1,8020a960 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x254>
    8020a954:	7010                	ld	a2,32(s0)
    8020a956:	854e                	mv	a0,s3
    8020a958:	85d2                	mv	a1,s4
    8020a95a:	9602                	jalr	a2
    8020a95c:	d975                	beqz	a0,8020a950 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x244>
    8020a95e:	a011                	j	8020a962 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x256>
    8020a960:	4901                	li	s2,0
    8020a962:	854a                	mv	a0,s2
    8020a964:	6b02                	ld	s6,0(sp)
    8020a966:	6aa2                	ld	s5,8(sp)
    8020a968:	6a42                	ld	s4,16(sp)
    8020a96a:	69e2                	ld	s3,24(sp)
    8020a96c:	7902                	ld	s2,32(sp)
    8020a96e:	74a2                	ld	s1,40(sp)
    8020a970:	7442                	ld	s0,48(sp)
    8020a972:	70e2                	ld	ra,56(sp)
    8020a974:	6121                	addi	sp,sp,64
    8020a976:	8082                	ret
    8020a978:	4681                	li	a3,0
    8020a97a:	863a                	mv	a2,a4
    8020a97c:	0e000793          	li	a5,224
    8020a980:	e8f562e3          	bltu	a0,a5,8020a804 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    8020a984:	00e60d63          	beq	a2,a4,8020a99e <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x292>
    8020a988:	00064483          	lbu	s1,0(a2)
    8020a98c:	00160793          	addi	a5,a2,1
    8020a990:	03f4f613          	andi	a2,s1,63
    8020a994:	0f000493          	li	s1,240
    8020a998:	00957963          	bgeu	a0,s1,8020a9aa <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x29e>
    8020a99c:	b5a5                	j	8020a804 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    8020a99e:	4601                	li	a2,0
    8020a9a0:	87ba                	mv	a5,a4
    8020a9a2:	0f000493          	li	s1,240
    8020a9a6:	e4956fe3          	bltu	a0,s1,8020a804 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>
    8020a9aa:	00e78763          	beq	a5,a4,8020a9b8 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ac>
    8020a9ae:	0007c703          	lbu	a4,0(a5) # 110000 <.Lline_table_start0+0xf0ae7>
    8020a9b2:	03f77713          	andi	a4,a4,63
    8020a9b6:	a011                	j	8020a9ba <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x2ae>
    8020a9b8:	4701                	li	a4,0
    8020a9ba:	054a                	slli	a0,a0,0x12
    8020a9bc:	001c07b7          	lui	a5,0x1c0
    8020a9c0:	8d7d                	and	a0,a0,a5
    8020a9c2:	06b2                	slli	a3,a3,0xc
    8020a9c4:	061a                	slli	a2,a2,0x6
    8020a9c6:	8d55                	or	a0,a0,a3
    8020a9c8:	8d51                	or	a0,a0,a2
    8020a9ca:	8d59                	or	a0,a0,a4
    8020a9cc:	00110637          	lui	a2,0x110
    8020a9d0:	e8c504e3          	beq	a0,a2,8020a858 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0x14c>
    8020a9d4:	bd05                	j	8020a804 <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E+0xf8>

000000008020a9d6 <_ZN4core3fmt9Formatter9write_str17h5baa12c983195984E>:
    8020a9d6:	7514                	ld	a3,40(a0)
    8020a9d8:	7108                	ld	a0,32(a0)
    8020a9da:	6e9c                	ld	a5,24(a3)
    8020a9dc:	8782                	jr	a5

000000008020a9de <_ZN4core3fmt9Formatter9write_fmt17hda8a61c24e520600E>:
    8020a9de:	7139                	addi	sp,sp,-64
    8020a9e0:	fc06                	sd	ra,56(sp)
    8020a9e2:	7590                	ld	a2,40(a1)
    8020a9e4:	719c                	ld	a5,32(a1)
    8020a9e6:	7118                	ld	a4,32(a0)
    8020a9e8:	7514                	ld	a3,40(a0)
    8020a9ea:	f832                	sd	a2,48(sp)
    8020a9ec:	f43e                	sd	a5,40(sp)
    8020a9ee:	6d88                	ld	a0,24(a1)
    8020a9f0:	6990                	ld	a2,16(a1)
    8020a9f2:	659c                	ld	a5,8(a1)
    8020a9f4:	618c                	ld	a1,0(a1)
    8020a9f6:	f02a                	sd	a0,32(sp)
    8020a9f8:	ec32                	sd	a2,24(sp)
    8020a9fa:	e83e                	sd	a5,16(sp)
    8020a9fc:	e42e                	sd	a1,8(sp)
    8020a9fe:	0030                	addi	a2,sp,8
    8020aa00:	853a                	mv	a0,a4
    8020aa02:	85b6                	mv	a1,a3
    8020aa04:	00000097          	auipc	ra,0x0
    8020aa08:	8d6080e7          	jalr	-1834(ra) # 8020a2da <_ZN4core3fmt5write17h338141860f5a80fbE>
    8020aa0c:	70e2                	ld	ra,56(sp)
    8020aa0e:	6121                	addi	sp,sp,64
    8020aa10:	8082                	ret

000000008020aa12 <_ZN4core3fmt9Formatter15debug_lower_hex17hffada68515a2cdf7E>:
    8020aa12:	03054503          	lbu	a0,48(a0)
    8020aa16:	8941                	andi	a0,a0,16
    8020aa18:	8111                	srli	a0,a0,0x4
    8020aa1a:	8082                	ret

000000008020aa1c <_ZN4core3fmt9Formatter15debug_upper_hex17h3e8dade1475f5ac4E>:
    8020aa1c:	03054503          	lbu	a0,48(a0)
    8020aa20:	02057513          	andi	a0,a0,32
    8020aa24:	8115                	srli	a0,a0,0x5
    8020aa26:	8082                	ret

000000008020aa28 <_ZN4core3fmt9Formatter12debug_struct17he665106596e16955E>:
    8020aa28:	1141                	addi	sp,sp,-16
    8020aa2a:	e406                	sd	ra,8(sp)
    8020aa2c:	e022                	sd	s0,0(sp)
    8020aa2e:	842a                	mv	s0,a0
    8020aa30:	7514                	ld	a3,40(a0)
    8020aa32:	7108                	ld	a0,32(a0)
    8020aa34:	6e94                	ld	a3,24(a3)
    8020aa36:	9682                	jalr	a3
    8020aa38:	85aa                	mv	a1,a0
    8020aa3a:	8522                	mv	a0,s0
    8020aa3c:	6402                	ld	s0,0(sp)
    8020aa3e:	60a2                	ld	ra,8(sp)
    8020aa40:	0141                	addi	sp,sp,16
    8020aa42:	8082                	ret

000000008020aa44 <_ZN4core3fmt9Formatter11debug_tuple17h33e702ebb7966d6cE>:
    8020aa44:	1101                	addi	sp,sp,-32
    8020aa46:	ec06                	sd	ra,24(sp)
    8020aa48:	e822                	sd	s0,16(sp)
    8020aa4a:	e426                	sd	s1,8(sp)
    8020aa4c:	e04a                	sd	s2,0(sp)
    8020aa4e:	842e                	mv	s0,a1
    8020aa50:	7598                	ld	a4,40(a1)
    8020aa52:	718c                	ld	a1,32(a1)
    8020aa54:	6f18                	ld	a4,24(a4)
    8020aa56:	8936                	mv	s2,a3
    8020aa58:	84aa                	mv	s1,a0
    8020aa5a:	852e                	mv	a0,a1
    8020aa5c:	85b2                	mv	a1,a2
    8020aa5e:	8636                	mv	a2,a3
    8020aa60:	9702                	jalr	a4
    8020aa62:	00193593          	seqz	a1,s2
    8020aa66:	e080                	sd	s0,0(s1)
    8020aa68:	00a48823          	sb	a0,16(s1)
    8020aa6c:	0004b423          	sd	zero,8(s1)
    8020aa70:	00b488a3          	sb	a1,17(s1)
    8020aa74:	6902                	ld	s2,0(sp)
    8020aa76:	64a2                	ld	s1,8(sp)
    8020aa78:	6442                	ld	s0,16(sp)
    8020aa7a:	60e2                	ld	ra,24(sp)
    8020aa7c:	6105                	addi	sp,sp,32
    8020aa7e:	8082                	ret

000000008020aa80 <_ZN4core3fmt9Formatter10debug_list17hc79335143a2bab08E>:
    8020aa80:	1141                	addi	sp,sp,-16
    8020aa82:	e406                	sd	ra,8(sp)
    8020aa84:	e022                	sd	s0,0(sp)
    8020aa86:	842a                	mv	s0,a0
    8020aa88:	750c                	ld	a1,40(a0)
    8020aa8a:	7108                	ld	a0,32(a0)
    8020aa8c:	6d94                	ld	a3,24(a1)

000000008020aa8e <.LBB188_1>:
    8020aa8e:	00006597          	auipc	a1,0x6
    8020aa92:	9a658593          	addi	a1,a1,-1626 # 80210434 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.209>
    8020aa96:	4605                	li	a2,1
    8020aa98:	9682                	jalr	a3
    8020aa9a:	85aa                	mv	a1,a0
    8020aa9c:	8522                	mv	a0,s0
    8020aa9e:	6402                	ld	s0,0(sp)
    8020aaa0:	60a2                	ld	ra,8(sp)
    8020aaa2:	0141                	addi	sp,sp,16
    8020aaa4:	8082                	ret

000000008020aaa6 <_ZN4core3fmt9Formatter9debug_map17h0cfd7b986aa1471bE>:
    8020aaa6:	1141                	addi	sp,sp,-16
    8020aaa8:	e406                	sd	ra,8(sp)
    8020aaaa:	e022                	sd	s0,0(sp)
    8020aaac:	842a                	mv	s0,a0
    8020aaae:	750c                	ld	a1,40(a0)
    8020aab0:	7108                	ld	a0,32(a0)
    8020aab2:	6d94                	ld	a3,24(a1)

000000008020aab4 <.LBB190_3>:
    8020aab4:	00006597          	auipc	a1,0x6
    8020aab8:	97f58593          	addi	a1,a1,-1665 # 80210433 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.208>
    8020aabc:	4605                	li	a2,1
    8020aabe:	9682                	jalr	a3
    8020aac0:	010005b7          	lui	a1,0x1000
    8020aac4:	c111                	beqz	a0,8020aac8 <.LBB190_3+0x14>
    8020aac6:	2585                	addiw	a1,a1,1
    8020aac8:	8522                	mv	a0,s0
    8020aaca:	6402                	ld	s0,0(sp)
    8020aacc:	60a2                	ld	ra,8(sp)
    8020aace:	0141                	addi	sp,sp,16
    8020aad0:	8082                	ret

000000008020aad2 <_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h067fc15c1459c2deE>:
    8020aad2:	00054603          	lbu	a2,0(a0)
    8020aad6:	852e                	mv	a0,a1
    8020aad8:	ca11                	beqz	a2,8020aaec <.LBB195_4>

000000008020aada <.LBB195_3>:
    8020aada:	00003597          	auipc	a1,0x3
    8020aade:	03658593          	addi	a1,a1,54 # 8020db10 <.Lanon.f2b1b5a509bdedcdd67207527f4f0965.20+0x30>
    8020aae2:	4611                	li	a2,4
    8020aae4:	00000317          	auipc	t1,0x0
    8020aae8:	c2830067          	jr	-984(t1) # 8020a70c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

000000008020aaec <.LBB195_4>:
    8020aaec:	00006597          	auipc	a1,0x6
    8020aaf0:	b8f58593          	addi	a1,a1,-1137 # 8021067b <.Lanon.9d4bfc86079e95d674f3cded52b1db19.235>
    8020aaf4:	4615                	li	a2,5
    8020aaf6:	00000317          	auipc	t1,0x0
    8020aafa:	c1630067          	jr	-1002(t1) # 8020a70c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

000000008020aafe <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE>:
    8020aafe:	7135                	addi	sp,sp,-160
    8020ab00:	ed06                	sd	ra,152(sp)
    8020ab02:	e922                	sd	s0,144(sp)
    8020ab04:	e526                	sd	s1,136(sp)
    8020ab06:	e14a                	sd	s2,128(sp)
    8020ab08:	fcce                	sd	s3,120(sp)
    8020ab0a:	f8d2                	sd	s4,112(sp)
    8020ab0c:	f4d6                	sd	s5,104(sp)
    8020ab0e:	f0da                	sd	s6,96(sp)
    8020ab10:	ecde                	sd	s7,88(sp)
    8020ab12:	e8e2                	sd	s8,80(sp)
    8020ab14:	e4e6                	sd	s9,72(sp)
    8020ab16:	e0ea                	sd	s10,64(sp)
    8020ab18:	fc6e                	sd	s11,56(sp)
    8020ab1a:	8a32                	mv	s4,a2
    8020ab1c:	7614                	ld	a3,40(a2)
    8020ab1e:	7210                	ld	a2,32(a2)
    8020ab20:	7294                	ld	a3,32(a3)
    8020ab22:	89ae                	mv	s3,a1
    8020ab24:	f82a                	sd	a0,48(sp)
    8020ab26:	02200593          	li	a1,34
    8020ab2a:	8532                	mv	a0,a2
    8020ab2c:	9682                	jalr	a3
    8020ab2e:	3a051c63          	bnez	a0,8020aee6 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x3e8>
    8020ab32:	4481                	li	s1,0
    8020ab34:	38098e63          	beqz	s3,8020aed0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x3d2>
    8020ab38:	4a81                	li	s5,0
    8020ab3a:	7dc2                	ld	s11,48(sp)
    8020ab3c:	013d8b33          	add	s6,s11,s3
    8020ab40:	f0100513          	li	a0,-255
    8020ab44:	1502                	slli	a0,a0,0x20
    8020ab46:	157d                	addi	a0,a0,-1
    8020ab48:	f42a                	sd	a0,40(sp)
    8020ab4a:	05555537          	lui	a0,0x5555
    8020ab4e:	5555051b          	addiw	a0,a0,1365
    8020ab52:	0532                	slli	a0,a0,0xc
    8020ab54:	55550513          	addi	a0,a0,1365 # 5555555 <.Lline_table_start0+0x553603c>
    8020ab58:	0532                	slli	a0,a0,0xc
    8020ab5a:	55550513          	addi	a0,a0,1365
    8020ab5e:	0532                	slli	a0,a0,0xc
    8020ab60:	55550513          	addi	a0,a0,1365
    8020ab64:	f02a                	sd	a0,32(sp)
    8020ab66:	03333537          	lui	a0,0x3333
    8020ab6a:	3335051b          	addiw	a0,a0,819
    8020ab6e:	0532                	slli	a0,a0,0xc
    8020ab70:	33350513          	addi	a0,a0,819 # 3333333 <.Lline_table_start0+0x3313e1a>
    8020ab74:	0532                	slli	a0,a0,0xc
    8020ab76:	33350513          	addi	a0,a0,819
    8020ab7a:	0532                	slli	a0,a0,0xc
    8020ab7c:	33350513          	addi	a0,a0,819
    8020ab80:	ec2a                	sd	a0,24(sp)
    8020ab82:	00f0f537          	lui	a0,0xf0f
    8020ab86:	0f15051b          	addiw	a0,a0,241
    8020ab8a:	0532                	slli	a0,a0,0xc
    8020ab8c:	f0f50513          	addi	a0,a0,-241 # f0ef0f <.Lline_table_start0+0xeef9f6>
    8020ab90:	0532                	slli	a0,a0,0xc
    8020ab92:	0f150513          	addi	a0,a0,241
    8020ab96:	0532                	slli	a0,a0,0xc
    8020ab98:	f0f50513          	addi	a0,a0,-241
    8020ab9c:	e82a                	sd	a0,16(sp)
    8020ab9e:	01010537          	lui	a0,0x1010
    8020aba2:	1015051b          	addiw	a0,a0,257
    8020aba6:	0542                	slli	a0,a0,0x10
    8020aba8:	10150513          	addi	a0,a0,257 # 1010101 <.Lline_table_start0+0xff0be8>
    8020abac:	0542                	slli	a0,a0,0x10
    8020abae:	10150513          	addi	a0,a0,257
    8020abb2:	e42a                	sd	a0,8(sp)
    8020abb4:	4515                	li	a0,5
    8020abb6:	1502                	slli	a0,a0,0x20
    8020abb8:	e02a                	sd	a0,0(sp)
    8020abba:	896e                	mv	s2,s11
    8020abbc:	00090583          	lb	a1,0(s2)
    8020abc0:	00190513          	addi	a0,s2,1
    8020abc4:	0ff5f413          	andi	s0,a1,255
    8020abc8:	0005c463          	bltz	a1,8020abd0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0xd2>
    8020abcc:	892a                	mv	s2,a0
    8020abce:	a871                	j	8020ac6a <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x16c>
    8020abd0:	05650763          	beq	a0,s6,8020ac1e <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x120>
    8020abd4:	00194503          	lbu	a0,1(s2)
    8020abd8:	00290613          	addi	a2,s2,2
    8020abdc:	03f57593          	andi	a1,a0,63
    8020abe0:	8932                	mv	s2,a2
    8020abe2:	01f47513          	andi	a0,s0,31
    8020abe6:	0e000693          	li	a3,224
    8020abea:	04d46363          	bltu	s0,a3,8020ac30 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x132>
    8020abee:	05660563          	beq	a2,s6,8020ac38 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x13a>
    8020abf2:	00064683          	lbu	a3,0(a2) # 110000 <.Lline_table_start0+0xf0ae7>
    8020abf6:	00160913          	addi	s2,a2,1
    8020abfa:	03f6f693          	andi	a3,a3,63
    8020abfe:	864a                	mv	a2,s2
    8020ac00:	059a                	slli	a1,a1,0x6
    8020ac02:	8dd5                	or	a1,a1,a3
    8020ac04:	0f000693          	li	a3,240
    8020ac08:	04d46063          	bltu	s0,a3,8020ac48 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x14a>
    8020ac0c:	05660263          	beq	a2,s6,8020ac50 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x152>
    8020ac10:	00064683          	lbu	a3,0(a2)
    8020ac14:	00160913          	addi	s2,a2,1
    8020ac18:	03f6f613          	andi	a2,a3,63
    8020ac1c:	a81d                	j	8020ac52 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x154>
    8020ac1e:	4581                	li	a1,0
    8020ac20:	892a                	mv	s2,a0
    8020ac22:	865a                	mv	a2,s6
    8020ac24:	01f47513          	andi	a0,s0,31
    8020ac28:	0e000693          	li	a3,224
    8020ac2c:	fcd471e3          	bgeu	s0,a3,8020abee <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0xf0>
    8020ac30:	051a                	slli	a0,a0,0x6
    8020ac32:	00b56433          	or	s0,a0,a1
    8020ac36:	a815                	j	8020ac6a <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x16c>
    8020ac38:	4681                	li	a3,0
    8020ac3a:	865a                	mv	a2,s6
    8020ac3c:	059a                	slli	a1,a1,0x6
    8020ac3e:	8dd5                	or	a1,a1,a3
    8020ac40:	0f000693          	li	a3,240
    8020ac44:	fcd474e3          	bgeu	s0,a3,8020ac0c <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x10e>
    8020ac48:	0532                	slli	a0,a0,0xc
    8020ac4a:	00a5e433          	or	s0,a1,a0
    8020ac4e:	a831                	j	8020ac6a <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x16c>
    8020ac50:	4601                	li	a2,0
    8020ac52:	054a                	slli	a0,a0,0x12
    8020ac54:	001c06b7          	lui	a3,0x1c0
    8020ac58:	8d75                	and	a0,a0,a3
    8020ac5a:	059a                	slli	a1,a1,0x6
    8020ac5c:	8d4d                	or	a0,a0,a1
    8020ac5e:	00c56433          	or	s0,a0,a2
    8020ac62:	00110537          	lui	a0,0x110
    8020ac66:	24a40363          	beq	s0,a0,8020aeac <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x3ae>
    8020ac6a:	4b89                	li	s7,2
    8020ac6c:	02100513          	li	a0,33
    8020ac70:	00854e63          	blt	a0,s0,8020ac8c <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x18e>
    8020ac74:	4525                	li	a0,9
    8020ac76:	02a40963          	beq	s0,a0,8020aca8 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x1aa>
    8020ac7a:	4529                	li	a0,10
    8020ac7c:	0aa40a63          	beq	s0,a0,8020ad30 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x232>
    8020ac80:	4535                	li	a0,13
    8020ac82:	02a41663          	bne	s0,a0,8020acae <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x1b0>
    8020ac86:	07200c13          	li	s8,114
    8020ac8a:	a06d                	j	8020ad34 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x236>
    8020ac8c:	02200513          	li	a0,34
    8020ac90:	00a40a63          	beq	s0,a0,8020aca4 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x1a6>
    8020ac94:	02700513          	li	a0,39
    8020ac98:	00a40663          	beq	s0,a0,8020aca4 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x1a6>
    8020ac9c:	05c00513          	li	a0,92
    8020aca0:	00a41763          	bne	s0,a0,8020acae <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x1b0>
    8020aca4:	8c22                	mv	s8,s0
    8020aca6:	a079                	j	8020ad34 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x236>
    8020aca8:	07400c13          	li	s8,116
    8020acac:	a061                	j	8020ad34 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x236>
    8020acae:	8522                	mv	a0,s0
    8020acb0:	00001097          	auipc	ra,0x1
    8020acb4:	722080e7          	jalr	1826(ra) # 8020c3d2 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>
    8020acb8:	e901                	bnez	a0,8020acc8 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x1ca>
    8020acba:	8522                	mv	a0,s0
    8020acbc:	00001097          	auipc	ra,0x1
    8020acc0:	9d0080e7          	jalr	-1584(ra) # 8020b68c <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>
    8020acc4:	1c051d63          	bnez	a0,8020ae9e <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x3a0>
    8020acc8:	00146513          	ori	a0,s0,1
    8020accc:	00155593          	srli	a1,a0,0x1
    8020acd0:	8d4d                	or	a0,a0,a1
    8020acd2:	00255593          	srli	a1,a0,0x2
    8020acd6:	8d4d                	or	a0,a0,a1
    8020acd8:	00455593          	srli	a1,a0,0x4
    8020acdc:	8d4d                	or	a0,a0,a1
    8020acde:	00855593          	srli	a1,a0,0x8
    8020ace2:	8d4d                	or	a0,a0,a1
    8020ace4:	01055593          	srli	a1,a0,0x10
    8020ace8:	8d4d                	or	a0,a0,a1
    8020acea:	02055593          	srli	a1,a0,0x20
    8020acee:	8d4d                	or	a0,a0,a1
    8020acf0:	fff54513          	not	a0,a0
    8020acf4:	00155593          	srli	a1,a0,0x1
    8020acf8:	7602                	ld	a2,32(sp)
    8020acfa:	8df1                	and	a1,a1,a2
    8020acfc:	8d0d                	sub	a0,a0,a1
    8020acfe:	6662                	ld	a2,24(sp)
    8020ad00:	00c575b3          	and	a1,a0,a2
    8020ad04:	8109                	srli	a0,a0,0x2
    8020ad06:	8d71                	and	a0,a0,a2
    8020ad08:	952e                	add	a0,a0,a1
    8020ad0a:	00455593          	srli	a1,a0,0x4
    8020ad0e:	952e                	add	a0,a0,a1
    8020ad10:	65c2                	ld	a1,16(sp)
    8020ad12:	8d6d                	and	a0,a0,a1
    8020ad14:	65a2                	ld	a1,8(sp)
    8020ad16:	02b50533          	mul	a0,a0,a1
    8020ad1a:	9161                	srli	a0,a0,0x38
    8020ad1c:	1501                	addi	a0,a0,-32
    8020ad1e:	0025551b          	srliw	a0,a0,0x2
    8020ad22:	00754c93          	xori	s9,a0,7
    8020ad26:	6502                	ld	a0,0(sp)
    8020ad28:	00a46d33          	or	s10,s0,a0
    8020ad2c:	4b8d                	li	s7,3
    8020ad2e:	a019                	j	8020ad34 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x236>
    8020ad30:	06e00c13          	li	s8,110
    8020ad34:	1e9aef63          	bltu	s5,s1,8020af32 <.LBB196_73>
    8020ad38:	0014b513          	seqz	a0,s1
    8020ad3c:	0134c5b3          	xor	a1,s1,s3
    8020ad40:	0015b593          	seqz	a1,a1
    8020ad44:	8d4d                	or	a0,a0,a1
    8020ad46:	75c2                	ld	a1,48(sp)
    8020ad48:	95a6                	add	a1,a1,s1
    8020ad4a:	e909                	bnez	a0,8020ad5c <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x25e>
    8020ad4c:	1f34f363          	bgeu	s1,s3,8020af32 <.LBB196_73>
    8020ad50:	00058503          	lb	a0,0(a1)
    8020ad54:	fbf00613          	li	a2,-65
    8020ad58:	1ca65d63          	bge	a2,a0,8020af32 <.LBB196_73>
    8020ad5c:	001ab513          	seqz	a0,s5
    8020ad60:	013ac633          	xor	a2,s5,s3
    8020ad64:	00163613          	seqz	a2,a2
    8020ad68:	8d51                	or	a0,a0,a2
    8020ad6a:	e919                	bnez	a0,8020ad80 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x282>
    8020ad6c:	1d3af363          	bgeu	s5,s3,8020af32 <.LBB196_73>
    8020ad70:	7542                	ld	a0,48(sp)
    8020ad72:	9556                	add	a0,a0,s5
    8020ad74:	00050503          	lb	a0,0(a0) # 110000 <.Lline_table_start0+0xf0ae7>
    8020ad78:	fbf00613          	li	a2,-65
    8020ad7c:	1aa65b63          	bge	a2,a0,8020af32 <.LBB196_73>
    8020ad80:	028a3603          	ld	a2,40(s4) # 110028 <.Lline_table_start0+0xf0b0f>
    8020ad84:	020a3503          	ld	a0,32(s4)
    8020ad88:	6e14                	ld	a3,24(a2)
    8020ad8a:	409a8633          	sub	a2,s5,s1
    8020ad8e:	9682                	jalr	a3
    8020ad90:	4489                	li	s1,2
    8020ad92:	c51d                	beqz	a0,8020adc0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x2c2>
    8020ad94:	aa89                	j	8020aee6 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x3e8>
    8020ad96:	557d                	li	a0,-1
    8020ad98:	00acfcb3          	and	s9,s9,a0
    8020ad9c:	7522                	ld	a0,40(sp)
    8020ad9e:	00ad7533          	and	a0,s10,a0
    8020ada2:	4585                	li	a1,1
    8020ada4:	1586                	slli	a1,a1,0x21
    8020ada6:	00b56d33          	or	s10,a0,a1
    8020adaa:	4b8d                	li	s7,3
    8020adac:	07b00593          	li	a1,123
    8020adb0:	028a3603          	ld	a2,40(s4)
    8020adb4:	020a3503          	ld	a0,32(s4)
    8020adb8:	7210                	ld	a2,32(a2)
    8020adba:	9602                	jalr	a2
    8020adbc:	12051563          	bnez	a0,8020aee6 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x3e8>
    8020adc0:	020b9513          	slli	a0,s7,0x20
    8020adc4:	9101                	srli	a0,a0,0x20
    8020adc6:	4b85                	li	s7,1
    8020adc8:	00abc663          	blt	s7,a0,8020add4 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x2d6>
    8020adcc:	c55d                	beqz	a0,8020ae7a <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x37c>
    8020adce:	4b81                	li	s7,0
    8020add0:	85e2                	mv	a1,s8
    8020add2:	bff9                	j	8020adb0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x2b2>
    8020add4:	05c00593          	li	a1,92
    8020add8:	fc950ce3          	beq	a0,s1,8020adb0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x2b2>
    8020addc:	020d5513          	srli	a0,s10,0x20
    8020ade0:	0ff57513          	andi	a0,a0,255
    8020ade4:	02a4c063          	blt	s1,a0,8020ae04 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x306>
    8020ade8:	c949                	beqz	a0,8020ae7a <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x37c>
    8020adea:	4585                	li	a1,1
    8020adec:	04b51063          	bne	a0,a1,8020ae2c <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x32e>
    8020adf0:	557d                	li	a0,-1
    8020adf2:	00acfcb3          	and	s9,s9,a0
    8020adf6:	7522                	ld	a0,40(sp)
    8020adf8:	00ad7d33          	and	s10,s10,a0
    8020adfc:	4b8d                	li	s7,3
    8020adfe:	07d00593          	li	a1,125
    8020ae02:	b77d                	j	8020adb0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x2b2>
    8020ae04:	460d                	li	a2,3
    8020ae06:	f8c508e3          	beq	a0,a2,8020ad96 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x298>
    8020ae0a:	4611                	li	a2,4
    8020ae0c:	04c51263          	bne	a0,a2,8020ae50 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x352>
    8020ae10:	557d                	li	a0,-1
    8020ae12:	00acfcb3          	and	s9,s9,a0
    8020ae16:	7522                	ld	a0,40(sp)
    8020ae18:	00ad7533          	and	a0,s10,a0
    8020ae1c:	4b8d                	li	s7,3
    8020ae1e:	020b9593          	slli	a1,s7,0x20
    8020ae22:	00b56d33          	or	s10,a0,a1
    8020ae26:	07500593          	li	a1,117
    8020ae2a:	b759                	j	8020adb0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x2b2>
    8020ae2c:	002c9513          	slli	a0,s9,0x2
    8020ae30:	00ad553b          	srlw	a0,s10,a0
    8020ae34:	893d                	andi	a0,a0,15
    8020ae36:	03000593          	li	a1,48
    8020ae3a:	4629                	li	a2,10
    8020ae3c:	00c56463          	bltu	a0,a2,8020ae44 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x346>
    8020ae40:	05700593          	li	a1,87
    8020ae44:	95aa                	add	a1,a1,a0
    8020ae46:	000c8e63          	beqz	s9,8020ae62 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x364>
    8020ae4a:	1cfd                	addi	s9,s9,-1
    8020ae4c:	4b8d                	li	s7,3
    8020ae4e:	b78d                	j	8020adb0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x2b2>
    8020ae50:	557d                	li	a0,-1
    8020ae52:	00acfcb3          	and	s9,s9,a0
    8020ae56:	7522                	ld	a0,40(sp)
    8020ae58:	00ad7533          	and	a0,s10,a0
    8020ae5c:	4605                	li	a2,1
    8020ae5e:	160a                	slli	a2,a2,0x22
    8020ae60:	a809                	j	8020ae72 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x374>
    8020ae62:	557d                	li	a0,-1
    8020ae64:	00acfcb3          	and	s9,s9,a0
    8020ae68:	7522                	ld	a0,40(sp)
    8020ae6a:	00ad7533          	and	a0,s10,a0
    8020ae6e:	4605                	li	a2,1
    8020ae70:	1602                	slli	a2,a2,0x20
    8020ae72:	00c56d33          	or	s10,a0,a2
    8020ae76:	4b8d                	li	s7,3
    8020ae78:	bf25                	j	8020adb0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x2b2>
    8020ae7a:	4505                	li	a0,1
    8020ae7c:	08000593          	li	a1,128
    8020ae80:	00b46d63          	bltu	s0,a1,8020ae9a <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x39c>
    8020ae84:	00b45593          	srli	a1,s0,0xb
    8020ae88:	4509                	li	a0,2
    8020ae8a:	c981                	beqz	a1,8020ae9a <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x39c>
    8020ae8c:	01045513          	srli	a0,s0,0x10
    8020ae90:	00153513          	seqz	a0,a0
    8020ae94:	4591                	li	a1,4
    8020ae96:	40a58533          	sub	a0,a1,a0
    8020ae9a:	015504b3          	add	s1,a0,s5
    8020ae9e:	41ba8533          	sub	a0,s5,s11
    8020aea2:	01250ab3          	add	s5,a0,s2
    8020aea6:	8dca                	mv	s11,s2
    8020aea8:	d12b1ae3          	bne	s6,s2,8020abbc <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0xbe>
    8020aeac:	0014b513          	seqz	a0,s1
    8020aeb0:	0134c5b3          	xor	a1,s1,s3
    8020aeb4:	0015b593          	seqz	a1,a1
    8020aeb8:	8d4d                	or	a0,a0,a1
    8020aeba:	e919                	bnez	a0,8020aed0 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x3d2>
    8020aebc:	0934f863          	bgeu	s1,s3,8020af4c <.LBB196_74>
    8020aec0:	7542                	ld	a0,48(sp)
    8020aec2:	9526                	add	a0,a0,s1
    8020aec4:	00050503          	lb	a0,0(a0)
    8020aec8:	fbf00593          	li	a1,-65
    8020aecc:	08a5d063          	bge	a1,a0,8020af4c <.LBB196_74>
    8020aed0:	028a3583          	ld	a1,40(s4)
    8020aed4:	020a3503          	ld	a0,32(s4)
    8020aed8:	6d94                	ld	a3,24(a1)
    8020aeda:	75c2                	ld	a1,48(sp)
    8020aedc:	95a6                	add	a1,a1,s1
    8020aede:	40998633          	sub	a2,s3,s1
    8020aee2:	9682                	jalr	a3
    8020aee4:	c10d                	beqz	a0,8020af06 <_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h001384d9b7357fffE+0x408>
    8020aee6:	4505                	li	a0,1
    8020aee8:	7de2                	ld	s11,56(sp)
    8020aeea:	6d06                	ld	s10,64(sp)
    8020aeec:	6ca6                	ld	s9,72(sp)
    8020aeee:	6c46                	ld	s8,80(sp)
    8020aef0:	6be6                	ld	s7,88(sp)
    8020aef2:	7b06                	ld	s6,96(sp)
    8020aef4:	7aa6                	ld	s5,104(sp)
    8020aef6:	7a46                	ld	s4,112(sp)
    8020aef8:	79e6                	ld	s3,120(sp)
    8020aefa:	690a                	ld	s2,128(sp)
    8020aefc:	64aa                	ld	s1,136(sp)
    8020aefe:	644a                	ld	s0,144(sp)
    8020af00:	60ea                	ld	ra,152(sp)
    8020af02:	610d                	addi	sp,sp,160
    8020af04:	8082                	ret
    8020af06:	028a3583          	ld	a1,40(s4)
    8020af0a:	020a3503          	ld	a0,32(s4)
    8020af0e:	719c                	ld	a5,32(a1)
    8020af10:	02200593          	li	a1,34
    8020af14:	7de2                	ld	s11,56(sp)
    8020af16:	6d06                	ld	s10,64(sp)
    8020af18:	6ca6                	ld	s9,72(sp)
    8020af1a:	6c46                	ld	s8,80(sp)
    8020af1c:	6be6                	ld	s7,88(sp)
    8020af1e:	7b06                	ld	s6,96(sp)
    8020af20:	7aa6                	ld	s5,104(sp)
    8020af22:	7a46                	ld	s4,112(sp)
    8020af24:	79e6                	ld	s3,120(sp)
    8020af26:	690a                	ld	s2,128(sp)
    8020af28:	64aa                	ld	s1,136(sp)
    8020af2a:	644a                	ld	s0,144(sp)
    8020af2c:	60ea                	ld	ra,152(sp)
    8020af2e:	610d                	addi	sp,sp,160
    8020af30:	8782                	jr	a5

000000008020af32 <.LBB196_73>:
    8020af32:	00005717          	auipc	a4,0x5
    8020af36:	74e70713          	addi	a4,a4,1870 # 80210680 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.236>
    8020af3a:	7542                	ld	a0,48(sp)
    8020af3c:	85ce                	mv	a1,s3
    8020af3e:	8626                	mv	a2,s1
    8020af40:	86d6                	mv	a3,s5
    8020af42:	00000097          	auipc	ra,0x0
    8020af46:	470080e7          	jalr	1136(ra) # 8020b3b2 <_ZN4core3str16slice_error_fail17he9562343589499f6E>
	...

000000008020af4c <.LBB196_74>:
    8020af4c:	00005717          	auipc	a4,0x5
    8020af50:	74c70713          	addi	a4,a4,1868 # 80210698 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.237>
    8020af54:	7542                	ld	a0,48(sp)
    8020af56:	85ce                	mv	a1,s3
    8020af58:	8626                	mv	a2,s1
    8020af5a:	86ce                	mv	a3,s3
    8020af5c:	00000097          	auipc	ra,0x0
    8020af60:	456080e7          	jalr	1110(ra) # 8020b3b2 <_ZN4core3str16slice_error_fail17he9562343589499f6E>
	...

000000008020af66 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h669958e415ffd666E>:
    8020af66:	86ae                	mv	a3,a1
    8020af68:	85aa                	mv	a1,a0
    8020af6a:	8532                	mv	a0,a2
    8020af6c:	8636                	mv	a2,a3
    8020af6e:	fffff317          	auipc	t1,0xfffff
    8020af72:	79e30067          	jr	1950(t1) # 8020a70c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

000000008020af76 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E>:
    8020af76:	7159                	addi	sp,sp,-112
    8020af78:	f486                	sd	ra,104(sp)
    8020af7a:	f0a2                	sd	s0,96(sp)
    8020af7c:	eca6                	sd	s1,88(sp)
    8020af7e:	e8ca                	sd	s2,80(sp)
    8020af80:	e4ce                	sd	s3,72(sp)
    8020af82:	e0d2                	sd	s4,64(sp)
    8020af84:	fc56                	sd	s5,56(sp)
    8020af86:	f85a                	sd	s6,48(sp)
    8020af88:	f45e                	sd	s7,40(sp)
    8020af8a:	f062                	sd	s8,32(sp)
    8020af8c:	ec66                	sd	s9,24(sp)
    8020af8e:	e86a                	sd	s10,16(sp)
    8020af90:	e46e                	sd	s11,8(sp)
    8020af92:	842e                	mv	s0,a1
    8020af94:	758c                	ld	a1,40(a1)
    8020af96:	7010                	ld	a2,32(s0)
    8020af98:	7194                	ld	a3,32(a1)
    8020af9a:	84aa                	mv	s1,a0
    8020af9c:	02700593          	li	a1,39
    8020afa0:	8532                	mv	a0,a2
    8020afa2:	9682                	jalr	a3
    8020afa4:	c10d                	beqz	a0,8020afc6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x50>
    8020afa6:	4505                	li	a0,1
    8020afa8:	6da2                	ld	s11,8(sp)
    8020afaa:	6d42                	ld	s10,16(sp)
    8020afac:	6ce2                	ld	s9,24(sp)
    8020afae:	7c02                	ld	s8,32(sp)
    8020afb0:	7ba2                	ld	s7,40(sp)
    8020afb2:	7b42                	ld	s6,48(sp)
    8020afb4:	7ae2                	ld	s5,56(sp)
    8020afb6:	6a06                	ld	s4,64(sp)
    8020afb8:	69a6                	ld	s3,72(sp)
    8020afba:	6946                	ld	s2,80(sp)
    8020afbc:	64e6                	ld	s1,88(sp)
    8020afbe:	7406                	ld	s0,96(sp)
    8020afc0:	70a6                	ld	ra,104(sp)
    8020afc2:	6165                	addi	sp,sp,112
    8020afc4:	8082                	ret
    8020afc6:	0004ea83          	lwu	s5,0(s1)
    8020afca:	02100513          	li	a0,33
    8020afce:	4489                	li	s1,2
    8020afd0:	01554e63          	blt	a0,s5,8020afec <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x76>
    8020afd4:	4525                	li	a0,9
    8020afd6:	04aa8763          	beq	s5,a0,8020b024 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xae>
    8020afda:	4529                	li	a0,10
    8020afdc:	04aa8763          	beq	s5,a0,8020b02a <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb4>
    8020afe0:	4535                	li	a0,13
    8020afe2:	02aa9163          	bne	s5,a0,8020b004 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x8e>
    8020afe6:	07200a93          	li	s5,114
    8020afea:	a091                	j	8020b02e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    8020afec:	02200513          	li	a0,34
    8020aff0:	02aa8f63          	beq	s5,a0,8020b02e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    8020aff4:	02700513          	li	a0,39
    8020aff8:	02aa8b63          	beq	s5,a0,8020b02e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    8020affc:	05c00513          	li	a0,92
    8020b000:	02aa8763          	beq	s5,a0,8020b02e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    8020b004:	8556                	mv	a0,s5
    8020b006:	00001097          	auipc	ra,0x1
    8020b00a:	3cc080e7          	jalr	972(ra) # 8020c3d2 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>
    8020b00e:	10051b63          	bnez	a0,8020b124 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x1ae>
    8020b012:	8556                	mv	a0,s5
    8020b014:	00000097          	auipc	ra,0x0
    8020b018:	678080e7          	jalr	1656(ra) # 8020b68c <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>
    8020b01c:	10050463          	beqz	a0,8020b124 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x1ae>
    8020b020:	4485                	li	s1,1
    8020b022:	a031                	j	8020b02e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    8020b024:	07400a93          	li	s5,116
    8020b028:	a019                	j	8020b02e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>
    8020b02a:	06e00a93          	li	s5,110
    8020b02e:	4a09                	li	s4,2
    8020b030:	4b05                	li	s6,1
    8020b032:	f0100513          	li	a0,-255
    8020b036:	1502                	slli	a0,a0,0x20
    8020b038:	fff50b93          	addi	s7,a0,-1
    8020b03c:	4c29                	li	s8,10
    8020b03e:	020b1c93          	slli	s9,s6,0x20
    8020b042:	4d0d                	li	s10,3
    8020b044:	021b1d93          	slli	s11,s6,0x21
    8020b048:	4911                	li	s2,4
    8020b04a:	a039                	j	8020b058 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xe2>
    8020b04c:	4485                	li	s1,1
    8020b04e:	7410                	ld	a2,40(s0)
    8020b050:	7008                	ld	a0,32(s0)
    8020b052:	7210                	ld	a2,32(a2)
    8020b054:	9602                	jalr	a2
    8020b056:	f921                	bnez	a0,8020afa6 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x30>
    8020b058:	02049513          	slli	a0,s1,0x20
    8020b05c:	9101                	srli	a0,a0,0x20
    8020b05e:	00ab4663          	blt	s6,a0,8020b06a <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xf4>
    8020b062:	cd49                	beqz	a0,8020b0fc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x186>
    8020b064:	4481                	li	s1,0
    8020b066:	85d6                	mv	a1,s5
    8020b068:	b7dd                	j	8020b04e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    8020b06a:	05c00593          	li	a1,92
    8020b06e:	fd450fe3          	beq	a0,s4,8020b04c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd6>
    8020b072:	0209d513          	srli	a0,s3,0x20
    8020b076:	0ff57513          	andi	a0,a0,255
    8020b07a:	00aa4b63          	blt	s4,a0,8020b090 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x11a>
    8020b07e:	cd3d                	beqz	a0,8020b0fc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x186>
    8020b080:	03651663          	bne	a0,s6,8020b0ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x136>
    8020b084:	0179f9b3          	and	s3,s3,s7
    8020b088:	448d                	li	s1,3
    8020b08a:	07d00593          	li	a1,125
    8020b08e:	b7c1                	j	8020b04e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    8020b090:	05a50063          	beq	a0,s10,8020b0d0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x15a>
    8020b094:	05251663          	bne	a0,s2,8020b0e0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x16a>
    8020b098:	0179f533          	and	a0,s3,s7
    8020b09c:	448d                	li	s1,3
    8020b09e:	02049593          	slli	a1,s1,0x20
    8020b0a2:	00b569b3          	or	s3,a0,a1
    8020b0a6:	07500593          	li	a1,117
    8020b0aa:	b755                	j	8020b04e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    8020b0ac:	6602                	ld	a2,0(sp)
    8020b0ae:	00261513          	slli	a0,a2,0x2
    8020b0b2:	00a9d53b          	srlw	a0,s3,a0
    8020b0b6:	893d                	andi	a0,a0,15
    8020b0b8:	03000593          	li	a1,48
    8020b0bc:	01856463          	bltu	a0,s8,8020b0c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x14e>
    8020b0c0:	05700593          	li	a1,87
    8020b0c4:	95aa                	add	a1,a1,a0
    8020b0c6:	c60d                	beqz	a2,8020b0f0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0x17a>
    8020b0c8:	167d                	addi	a2,a2,-1
    8020b0ca:	e032                	sd	a2,0(sp)
    8020b0cc:	448d                	li	s1,3
    8020b0ce:	b741                	j	8020b04e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    8020b0d0:	0179f533          	and	a0,s3,s7
    8020b0d4:	01b569b3          	or	s3,a0,s11
    8020b0d8:	448d                	li	s1,3
    8020b0da:	07b00593          	li	a1,123
    8020b0de:	bf85                	j	8020b04e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    8020b0e0:	0179f533          	and	a0,s3,s7
    8020b0e4:	022b1613          	slli	a2,s6,0x22
    8020b0e8:	00c569b3          	or	s3,a0,a2
    8020b0ec:	448d                	li	s1,3
    8020b0ee:	b785                	j	8020b04e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    8020b0f0:	0179f533          	and	a0,s3,s7
    8020b0f4:	019569b3          	or	s3,a0,s9
    8020b0f8:	448d                	li	s1,3
    8020b0fa:	bf91                	j	8020b04e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xd8>
    8020b0fc:	740c                	ld	a1,40(s0)
    8020b0fe:	7008                	ld	a0,32(s0)
    8020b100:	719c                	ld	a5,32(a1)
    8020b102:	02700593          	li	a1,39
    8020b106:	6da2                	ld	s11,8(sp)
    8020b108:	6d42                	ld	s10,16(sp)
    8020b10a:	6ce2                	ld	s9,24(sp)
    8020b10c:	7c02                	ld	s8,32(sp)
    8020b10e:	7ba2                	ld	s7,40(sp)
    8020b110:	7b42                	ld	s6,48(sp)
    8020b112:	7ae2                	ld	s5,56(sp)
    8020b114:	6a06                	ld	s4,64(sp)
    8020b116:	69a6                	ld	s3,72(sp)
    8020b118:	6946                	ld	s2,80(sp)
    8020b11a:	64e6                	ld	s1,88(sp)
    8020b11c:	7406                	ld	s0,96(sp)
    8020b11e:	70a6                	ld	ra,104(sp)
    8020b120:	6165                	addi	sp,sp,112
    8020b122:	8782                	jr	a5
    8020b124:	001ae513          	ori	a0,s5,1
    8020b128:	00155593          	srli	a1,a0,0x1
    8020b12c:	8d4d                	or	a0,a0,a1
    8020b12e:	00255593          	srli	a1,a0,0x2
    8020b132:	8d4d                	or	a0,a0,a1
    8020b134:	00455593          	srli	a1,a0,0x4
    8020b138:	8d4d                	or	a0,a0,a1
    8020b13a:	00855593          	srli	a1,a0,0x8
    8020b13e:	8d4d                	or	a0,a0,a1
    8020b140:	01055593          	srli	a1,a0,0x10
    8020b144:	8d4d                	or	a0,a0,a1
    8020b146:	02055593          	srli	a1,a0,0x20
    8020b14a:	8d4d                	or	a0,a0,a1
    8020b14c:	fff54513          	not	a0,a0
    8020b150:	00155593          	srli	a1,a0,0x1
    8020b154:	05555637          	lui	a2,0x5555
    8020b158:	5556061b          	addiw	a2,a2,1365
    8020b15c:	0632                	slli	a2,a2,0xc
    8020b15e:	55560613          	addi	a2,a2,1365 # 5555555 <.Lline_table_start0+0x553603c>
    8020b162:	0632                	slli	a2,a2,0xc
    8020b164:	55560613          	addi	a2,a2,1365
    8020b168:	0632                	slli	a2,a2,0xc
    8020b16a:	55560613          	addi	a2,a2,1365
    8020b16e:	8df1                	and	a1,a1,a2
    8020b170:	8d0d                	sub	a0,a0,a1
    8020b172:	033335b7          	lui	a1,0x3333
    8020b176:	3335859b          	addiw	a1,a1,819
    8020b17a:	05b2                	slli	a1,a1,0xc
    8020b17c:	33358593          	addi	a1,a1,819 # 3333333 <.Lline_table_start0+0x3313e1a>
    8020b180:	05b2                	slli	a1,a1,0xc
    8020b182:	33358593          	addi	a1,a1,819
    8020b186:	05b2                	slli	a1,a1,0xc
    8020b188:	33358593          	addi	a1,a1,819
    8020b18c:	00b57633          	and	a2,a0,a1
    8020b190:	8109                	srli	a0,a0,0x2
    8020b192:	8d6d                	and	a0,a0,a1
    8020b194:	9532                	add	a0,a0,a2
    8020b196:	00455593          	srli	a1,a0,0x4
    8020b19a:	952e                	add	a0,a0,a1
    8020b19c:	00f0f5b7          	lui	a1,0xf0f
    8020b1a0:	0f15859b          	addiw	a1,a1,241
    8020b1a4:	05b2                	slli	a1,a1,0xc
    8020b1a6:	f0f58593          	addi	a1,a1,-241 # f0ef0f <.Lline_table_start0+0xeef9f6>
    8020b1aa:	05b2                	slli	a1,a1,0xc
    8020b1ac:	0f158593          	addi	a1,a1,241
    8020b1b0:	05b2                	slli	a1,a1,0xc
    8020b1b2:	f0f58593          	addi	a1,a1,-241
    8020b1b6:	8d6d                	and	a0,a0,a1
    8020b1b8:	010105b7          	lui	a1,0x1010
    8020b1bc:	1015859b          	addiw	a1,a1,257
    8020b1c0:	05c2                	slli	a1,a1,0x10
    8020b1c2:	10158593          	addi	a1,a1,257 # 1010101 <.Lline_table_start0+0xff0be8>
    8020b1c6:	05c2                	slli	a1,a1,0x10
    8020b1c8:	10158593          	addi	a1,a1,257
    8020b1cc:	02b50533          	mul	a0,a0,a1
    8020b1d0:	9161                	srli	a0,a0,0x38
    8020b1d2:	1501                	addi	a0,a0,-32
    8020b1d4:	0025551b          	srliw	a0,a0,0x2
    8020b1d8:	00754513          	xori	a0,a0,7
    8020b1dc:	e02a                	sd	a0,0(sp)
    8020b1de:	4515                	li	a0,5
    8020b1e0:	1502                	slli	a0,a0,0x20
    8020b1e2:	00aae9b3          	or	s3,s5,a0
    8020b1e6:	448d                	li	s1,3
    8020b1e8:	b599                	j	8020b02e <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E+0xb8>

000000008020b1ea <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E>:
    8020b1ea:	1141                	addi	sp,sp,-16
    8020b1ec:	e406                	sd	ra,8(sp)
    8020b1ee:	00758693          	addi	a3,a1,7
    8020b1f2:	9ae1                	andi	a3,a3,-8
    8020b1f4:	8e8d                	sub	a3,a3,a1
    8020b1f6:	0ff57813          	andi	a6,a0,255
    8020b1fa:	c68d                	beqz	a3,8020b224 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x3a>
    8020b1fc:	8532                	mv	a0,a2
    8020b1fe:	00d66363          	bltu	a2,a3,8020b204 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x1a>
    8020b202:	8536                	mv	a0,a3
    8020b204:	c105                	beqz	a0,8020b224 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x3a>
    8020b206:	4681                	li	a3,0
    8020b208:	00d58733          	add	a4,a1,a3
    8020b20c:	00074703          	lbu	a4,0(a4)
    8020b210:	0d070463          	beq	a4,a6,8020b2d8 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xee>
    8020b214:	0685                	addi	a3,a3,1
    8020b216:	fed519e3          	bne	a0,a3,8020b208 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x1e>
    8020b21a:	ff060893          	addi	a7,a2,-16
    8020b21e:	00a8f663          	bgeu	a7,a0,8020b22a <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x40>
    8020b222:	a049                	j	8020b2a4 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xba>
    8020b224:	4501                	li	a0,0
    8020b226:	ff060893          	addi	a7,a2,-16
    8020b22a:	feff06b7          	lui	a3,0xfeff0
    8020b22e:	eff6869b          	addiw	a3,a3,-257
    8020b232:	06c2                	slli	a3,a3,0x10
    8020b234:	eff68693          	addi	a3,a3,-257 # fffffffffefefeff <ebss+0xffffffff7ebcbeff>
    8020b238:	06c2                	slli	a3,a3,0x10
    8020b23a:	eff68293          	addi	t0,a3,-257
    8020b23e:	76c1                	lui	a3,0xffff0
    8020b240:	1016869b          	addiw	a3,a3,257
    8020b244:	06c2                	slli	a3,a3,0x10
    8020b246:	10168693          	addi	a3,a3,257 # ffffffffffff0101 <ebss+0xffffffff7fbcc101>
    8020b24a:	06c2                	slli	a3,a3,0x10
    8020b24c:	10168693          	addi	a3,a3,257
    8020b250:	06be                	slli	a3,a3,0xf
    8020b252:	08068313          	addi	t1,a3,128
    8020b256:	010106b7          	lui	a3,0x1010
    8020b25a:	1016869b          	addiw	a3,a3,257
    8020b25e:	06c2                	slli	a3,a3,0x10
    8020b260:	10168693          	addi	a3,a3,257 # 1010101 <.Lline_table_start0+0xff0be8>
    8020b264:	06c2                	slli	a3,a3,0x10
    8020b266:	10168693          	addi	a3,a3,257
    8020b26a:	02d803b3          	mul	t2,a6,a3
    8020b26e:	00a587b3          	add	a5,a1,a0
    8020b272:	6398                	ld	a4,0(a5)
    8020b274:	679c                	ld	a5,8(a5)
    8020b276:	00774733          	xor	a4,a4,t2
    8020b27a:	fff74693          	not	a3,a4
    8020b27e:	9716                	add	a4,a4,t0
    8020b280:	0066f6b3          	and	a3,a3,t1
    8020b284:	8ef9                	and	a3,a3,a4
    8020b286:	0077c733          	xor	a4,a5,t2
    8020b28a:	fff74793          	not	a5,a4
    8020b28e:	9716                	add	a4,a4,t0
    8020b290:	0067f7b3          	and	a5,a5,t1
    8020b294:	8f7d                	and	a4,a4,a5
    8020b296:	8ed9                	or	a3,a3,a4
    8020b298:	e681                	bnez	a3,8020b2a0 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xb6>
    8020b29a:	0541                	addi	a0,a0,16
    8020b29c:	fca8f9e3          	bgeu	a7,a0,8020b26e <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0x84>
    8020b2a0:	02a66e63          	bltu	a2,a0,8020b2dc <.LBB203_24>
    8020b2a4:	4681                	li	a3,0
    8020b2a6:	00c51463          	bne	a0,a2,8020b2ae <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xc4>
    8020b2aa:	4581                	li	a1,0
    8020b2ac:	a005                	j	8020b2cc <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe2>
    8020b2ae:	8e09                	sub	a2,a2,a0
    8020b2b0:	95aa                	add	a1,a1,a0
    8020b2b2:	00d58733          	add	a4,a1,a3
    8020b2b6:	00074703          	lbu	a4,0(a4)
    8020b2ba:	01070863          	beq	a4,a6,8020b2ca <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe0>
    8020b2be:	0685                	addi	a3,a3,1
    8020b2c0:	fed619e3          	bne	a2,a3,8020b2b2 <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xc8>
    8020b2c4:	4581                	li	a1,0
    8020b2c6:	86b2                	mv	a3,a2
    8020b2c8:	a011                	j	8020b2cc <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe2>
    8020b2ca:	4585                	li	a1,1
    8020b2cc:	96aa                	add	a3,a3,a0
    8020b2ce:	852e                	mv	a0,a1
    8020b2d0:	85b6                	mv	a1,a3
    8020b2d2:	60a2                	ld	ra,8(sp)
    8020b2d4:	0141                	addi	sp,sp,16
    8020b2d6:	8082                	ret
    8020b2d8:	4585                	li	a1,1
    8020b2da:	bfd5                	j	8020b2ce <_ZN4core5slice6memchr19memchr_general_case17h70a7e3c60d21a994E+0xe4>

000000008020b2dc <.LBB203_24>:
    8020b2dc:	00005697          	auipc	a3,0x5
    8020b2e0:	3d468693          	addi	a3,a3,980 # 802106b0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.242>
    8020b2e4:	85b2                	mv	a1,a2
    8020b2e6:	8636                	mv	a2,a3
    8020b2e8:	00000097          	auipc	ra,0x0
    8020b2ec:	00a080e7          	jalr	10(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>:
    8020b2f2:	7159                	addi	sp,sp,-112
    8020b2f4:	f486                	sd	ra,104(sp)
    8020b2f6:	e42a                	sd	a0,8(sp)
    8020b2f8:	e82e                	sd	a1,16(sp)
    8020b2fa:	0028                	addi	a0,sp,8
    8020b2fc:	e4aa                	sd	a0,72(sp)

000000008020b2fe <.LBB205_1>:
    8020b2fe:	00001517          	auipc	a0,0x1
    8020b302:	eca50513          	addi	a0,a0,-310 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    8020b306:	e8aa                	sd	a0,80(sp)
    8020b308:	080c                	addi	a1,sp,16
    8020b30a:	ecae                	sd	a1,88(sp)
    8020b30c:	f0aa                	sd	a0,96(sp)

000000008020b30e <.LBB205_2>:
    8020b30e:	00005517          	auipc	a0,0x5
    8020b312:	3f250513          	addi	a0,a0,1010 # 80210700 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.247>
    8020b316:	ec2a                	sd	a0,24(sp)
    8020b318:	4509                	li	a0,2
    8020b31a:	f02a                	sd	a0,32(sp)
    8020b31c:	f402                	sd	zero,40(sp)
    8020b31e:	00ac                	addi	a1,sp,72
    8020b320:	fc2e                	sd	a1,56(sp)
    8020b322:	e0aa                	sd	a0,64(sp)
    8020b324:	0828                	addi	a0,sp,24
    8020b326:	85b2                	mv	a1,a2
    8020b328:	ffffe097          	auipc	ra,0xffffe
    8020b32c:	546080e7          	jalr	1350(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000008020b332 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>:
    8020b332:	7159                	addi	sp,sp,-112
    8020b334:	f486                	sd	ra,104(sp)
    8020b336:	e42a                	sd	a0,8(sp)
    8020b338:	e82e                	sd	a1,16(sp)
    8020b33a:	0028                	addi	a0,sp,8
    8020b33c:	e4aa                	sd	a0,72(sp)

000000008020b33e <.LBB206_1>:
    8020b33e:	00001517          	auipc	a0,0x1
    8020b342:	e8a50513          	addi	a0,a0,-374 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    8020b346:	e8aa                	sd	a0,80(sp)
    8020b348:	080c                	addi	a1,sp,16
    8020b34a:	ecae                	sd	a1,88(sp)
    8020b34c:	f0aa                	sd	a0,96(sp)

000000008020b34e <.LBB206_2>:
    8020b34e:	00005517          	auipc	a0,0x5
    8020b352:	3d250513          	addi	a0,a0,978 # 80210720 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.249>
    8020b356:	ec2a                	sd	a0,24(sp)
    8020b358:	4509                	li	a0,2
    8020b35a:	f02a                	sd	a0,32(sp)
    8020b35c:	f402                	sd	zero,40(sp)
    8020b35e:	00ac                	addi	a1,sp,72
    8020b360:	fc2e                	sd	a1,56(sp)
    8020b362:	e0aa                	sd	a0,64(sp)
    8020b364:	0828                	addi	a0,sp,24
    8020b366:	85b2                	mv	a1,a2
    8020b368:	ffffe097          	auipc	ra,0xffffe
    8020b36c:	506080e7          	jalr	1286(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000008020b372 <_ZN4core5slice5index22slice_index_order_fail17h17f07731262cfc7fE>:
    8020b372:	7159                	addi	sp,sp,-112
    8020b374:	f486                	sd	ra,104(sp)
    8020b376:	e42a                	sd	a0,8(sp)
    8020b378:	e82e                	sd	a1,16(sp)
    8020b37a:	0028                	addi	a0,sp,8
    8020b37c:	e4aa                	sd	a0,72(sp)

000000008020b37e <.LBB207_1>:
    8020b37e:	00001517          	auipc	a0,0x1
    8020b382:	e4a50513          	addi	a0,a0,-438 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    8020b386:	e8aa                	sd	a0,80(sp)
    8020b388:	080c                	addi	a1,sp,16
    8020b38a:	ecae                	sd	a1,88(sp)
    8020b38c:	f0aa                	sd	a0,96(sp)

000000008020b38e <.LBB207_2>:
    8020b38e:	00005517          	auipc	a0,0x5
    8020b392:	3da50513          	addi	a0,a0,986 # 80210768 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.252>
    8020b396:	ec2a                	sd	a0,24(sp)
    8020b398:	4509                	li	a0,2
    8020b39a:	f02a                	sd	a0,32(sp)
    8020b39c:	f402                	sd	zero,40(sp)
    8020b39e:	00ac                	addi	a1,sp,72
    8020b3a0:	fc2e                	sd	a1,56(sp)
    8020b3a2:	e0aa                	sd	a0,64(sp)
    8020b3a4:	0828                	addi	a0,sp,24
    8020b3a6:	85b2                	mv	a1,a2
    8020b3a8:	ffffe097          	auipc	ra,0xffffe
    8020b3ac:	4c6080e7          	jalr	1222(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000008020b3b2 <_ZN4core3str16slice_error_fail17he9562343589499f6E>:
    8020b3b2:	7115                	addi	sp,sp,-224
    8020b3b4:	ed86                	sd	ra,216(sp)
    8020b3b6:	e432                	sd	a2,8(sp)
    8020b3b8:	e836                	sd	a3,16(sp)
    8020b3ba:	10100793          	li	a5,257
    8020b3be:	4885                	li	a7,1
    8020b3c0:	882e                	mv	a6,a1
    8020b3c2:	04f5e263          	bltu	a1,a5,8020b406 <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x54>
    8020b3c6:	4381                	li	t2,0
    8020b3c8:	f0158893          	addi	a7,a1,-255
    8020b3cc:	10050293          	addi	t0,a0,256
    8020b3d0:	fbf00313          	li	t1,-65
    8020b3d4:	10038813          	addi	a6,t2,256
    8020b3d8:	00b87863          	bgeu	a6,a1,8020b3e8 <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x36>
    8020b3dc:	007287b3          	add	a5,t0,t2
    8020b3e0:	00078783          	lb	a5,0(a5) # 1c0000 <.Lline_table_start0+0x1a0ae7>
    8020b3e4:	02f34b63          	blt	t1,a5,8020b41a <.LBB228_49+0xc>
    8020b3e8:	0ff38793          	addi	a5,t2,255
    8020b3ec:	00f03833          	snez	a6,a5
    8020b3f0:	0078c7b3          	xor	a5,a7,t2
    8020b3f4:	00f037b3          	snez	a5,a5
    8020b3f8:	00f877b3          	and	a5,a6,a5
    8020b3fc:	13fd                	addi	t2,t2,-1
    8020b3fe:	fbf9                	bnez	a5,8020b3d4 <_ZN4core3str16slice_error_fail17he9562343589499f6E+0x22>
    8020b400:	4881                	li	a7,0
    8020b402:	10038813          	addi	a6,t2,256
    8020b406:	ec2a                	sd	a0,24(sp)
    8020b408:	f042                	sd	a6,32(sp)
    8020b40a:	00089d63          	bnez	a7,8020b424 <.LBB228_49+0x16>

000000008020b40e <.LBB228_49>:
    8020b40e:	00005797          	auipc	a5,0x5
    8020b412:	37a78793          	addi	a5,a5,890 # 80210788 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.310>
    8020b416:	4815                	li	a6,5
    8020b418:	a819                	j	8020b42e <.LBB228_50+0x8>
    8020b41a:	4881                	li	a7,0
    8020b41c:	ec2a                	sd	a0,24(sp)
    8020b41e:	f042                	sd	a6,32(sp)
    8020b420:	fe0887e3          	beqz	a7,8020b40e <.LBB228_49>
    8020b424:	4801                	li	a6,0

000000008020b426 <.LBB228_50>:
    8020b426:	00005797          	auipc	a5,0x5
    8020b42a:	ec278793          	addi	a5,a5,-318 # 802102e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    8020b42e:	f43e                	sd	a5,40(sp)
    8020b430:	00c5b8b3          	sltu	a7,a1,a2
    8020b434:	0018c293          	xori	t0,a7,1
    8020b438:	00d5b7b3          	sltu	a5,a1,a3
    8020b43c:	0017c793          	xori	a5,a5,1
    8020b440:	00f2f7b3          	and	a5,t0,a5
    8020b444:	f842                	sd	a6,48(sp)
    8020b446:	ef8d                	bnez	a5,8020b480 <.LBB228_53+0xe>
    8020b448:	00089363          	bnez	a7,8020b44e <.LBB228_50+0x28>
    8020b44c:	8636                	mv	a2,a3
    8020b44e:	e4b2                	sd	a2,72(sp)
    8020b450:	00a8                	addi	a0,sp,72
    8020b452:	e52a                	sd	a0,136(sp)

000000008020b454 <.LBB228_51>:
    8020b454:	00001517          	auipc	a0,0x1
    8020b458:	d7450513          	addi	a0,a0,-652 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    8020b45c:	e92a                	sd	a0,144(sp)
    8020b45e:	0828                	addi	a0,sp,24
    8020b460:	ed2a                	sd	a0,152(sp)

000000008020b462 <.LBB228_52>:
    8020b462:	00001517          	auipc	a0,0x1
    8020b466:	f6050513          	addi	a0,a0,-160 # 8020c3c2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    8020b46a:	f12a                	sd	a0,160(sp)
    8020b46c:	102c                	addi	a1,sp,40
    8020b46e:	f52e                	sd	a1,168(sp)
    8020b470:	f92a                	sd	a0,176(sp)

000000008020b472 <.LBB228_53>:
    8020b472:	00005517          	auipc	a0,0x5
    8020b476:	33e50513          	addi	a0,a0,830 # 802107b0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.313>
    8020b47a:	ecaa                	sd	a0,88(sp)
    8020b47c:	450d                	li	a0,3
    8020b47e:	aadd                	j	8020b674 <.LBB228_62+0xc>
    8020b480:	02c6fd63          	bgeu	a3,a2,8020b4ba <.LBB228_56+0xe>
    8020b484:	0028                	addi	a0,sp,8
    8020b486:	e52a                	sd	a0,136(sp)

000000008020b488 <.LBB228_54>:
    8020b488:	00001517          	auipc	a0,0x1
    8020b48c:	d4050513          	addi	a0,a0,-704 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    8020b490:	e92a                	sd	a0,144(sp)
    8020b492:	080c                	addi	a1,sp,16
    8020b494:	ed2e                	sd	a1,152(sp)
    8020b496:	f12a                	sd	a0,160(sp)
    8020b498:	0828                	addi	a0,sp,24
    8020b49a:	f52a                	sd	a0,168(sp)

000000008020b49c <.LBB228_55>:
    8020b49c:	00001517          	auipc	a0,0x1
    8020b4a0:	f2650513          	addi	a0,a0,-218 # 8020c3c2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    8020b4a4:	f92a                	sd	a0,176(sp)
    8020b4a6:	102c                	addi	a1,sp,40
    8020b4a8:	fd2e                	sd	a1,184(sp)
    8020b4aa:	e1aa                	sd	a0,192(sp)

000000008020b4ac <.LBB228_56>:
    8020b4ac:	00005517          	auipc	a0,0x5
    8020b4b0:	34450513          	addi	a0,a0,836 # 802107f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.317>
    8020b4b4:	ecaa                	sd	a0,88(sp)
    8020b4b6:	4511                	li	a0,4
    8020b4b8:	aa75                	j	8020b674 <.LBB228_62+0xc>
    8020b4ba:	00163813          	seqz	a6,a2
    8020b4be:	00c5c7b3          	xor	a5,a1,a2
    8020b4c2:	0017b793          	seqz	a5,a5
    8020b4c6:	00f867b3          	or	a5,a6,a5
    8020b4ca:	c399                	beqz	a5,8020b4d0 <.LBB228_56+0x24>
    8020b4cc:	8636                	mv	a2,a3
    8020b4ce:	a819                	j	8020b4e4 <.LBB228_56+0x38>
    8020b4d0:	00b67a63          	bgeu	a2,a1,8020b4e4 <.LBB228_56+0x38>
    8020b4d4:	00c507b3          	add	a5,a0,a2
    8020b4d8:	00078803          	lb	a6,0(a5)
    8020b4dc:	fc000793          	li	a5,-64
    8020b4e0:	fef856e3          	bge	a6,a5,8020b4cc <.LBB228_56+0x20>
    8020b4e4:	00163693          	seqz	a3,a2
    8020b4e8:	00b647b3          	xor	a5,a2,a1
    8020b4ec:	0017b793          	seqz	a5,a5
    8020b4f0:	8edd                	or	a3,a3,a5
    8020b4f2:	fc32                	sd	a2,56(sp)
    8020b4f4:	ca81                	beqz	a3,8020b504 <.LBB228_56+0x58>
    8020b4f6:	87b2                	mv	a5,a2
    8020b4f8:	04410313          	addi	t1,sp,68
    8020b4fc:	863e                	mv	a2,a5
    8020b4fe:	02b60f63          	beq	a2,a1,8020b53c <.LBB228_57>
    8020b502:	a8a9                	j	8020b55c <.LBB228_57+0x20>
    8020b504:	00158893          	addi	a7,a1,1
    8020b508:	fc000813          	li	a6,-64
    8020b50c:	00b67863          	bgeu	a2,a1,8020b51c <.LBB228_56+0x70>
    8020b510:	00c507b3          	add	a5,a0,a2
    8020b514:	00078783          	lb	a5,0(a5)
    8020b518:	0307de63          	bge	a5,a6,8020b554 <.LBB228_57+0x18>
    8020b51c:	fff60793          	addi	a5,a2,-1
    8020b520:	0017b693          	seqz	a3,a5
    8020b524:	00c8c633          	xor	a2,a7,a2
    8020b528:	00163613          	seqz	a2,a2
    8020b52c:	8ed1                	or	a3,a3,a2
    8020b52e:	863e                	mv	a2,a5
    8020b530:	def1                	beqz	a3,8020b50c <.LBB228_56+0x60>
    8020b532:	04410313          	addi	t1,sp,68
    8020b536:	863e                	mv	a2,a5
    8020b538:	02b61263          	bne	a2,a1,8020b55c <.LBB228_57+0x20>

000000008020b53c <.LBB228_57>:
    8020b53c:	00005517          	auipc	a0,0x5
    8020b540:	dc450513          	addi	a0,a0,-572 # 80210300 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.175>
    8020b544:	02b00593          	li	a1,43
    8020b548:	863a                	mv	a2,a4
    8020b54a:	ffffe097          	auipc	ra,0xffffe
    8020b54e:	2b8080e7          	jalr	696(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
    8020b552:	0000                	unimp
    8020b554:	04410313          	addi	t1,sp,68
    8020b558:	feb602e3          	beq	a2,a1,8020b53c <.LBB228_57>
    8020b55c:	00c506b3          	add	a3,a0,a2
    8020b560:	00068783          	lb	a5,0(a3)
    8020b564:	0ff7f393          	andi	t2,a5,255
    8020b568:	0007c663          	bltz	a5,8020b574 <.LBB228_57+0x38>
    8020b56c:	c29e                	sw	t2,68(sp)
    8020b56e:	00a8                	addi	a0,sp,72
    8020b570:	4785                	li	a5,1
    8020b572:	a855                	j	8020b626 <.LBB228_57+0xea>
    8020b574:	952e                	add	a0,a0,a1
    8020b576:	00168593          	addi	a1,a3,1
    8020b57a:	00a59f63          	bne	a1,a0,8020b598 <.LBB228_57+0x5c>
    8020b57e:	4881                	li	a7,0
    8020b580:	85aa                	mv	a1,a0
    8020b582:	0e000693          	li	a3,224
    8020b586:	01f3f813          	andi	a6,t2,31
    8020b58a:	02d3f363          	bgeu	t2,a3,8020b5b0 <.LBB228_57+0x74>
    8020b58e:	00681513          	slli	a0,a6,0x6
    8020b592:	011565b3          	or	a1,a0,a7
    8020b596:	a0bd                	j	8020b604 <.LBB228_57+0xc8>
    8020b598:	0016c783          	lbu	a5,1(a3)
    8020b59c:	00268593          	addi	a1,a3,2
    8020b5a0:	03f7f893          	andi	a7,a5,63
    8020b5a4:	0e000693          	li	a3,224
    8020b5a8:	01f3f813          	andi	a6,t2,31
    8020b5ac:	fed3e1e3          	bltu	t2,a3,8020b58e <.LBB228_57+0x52>
    8020b5b0:	00a59563          	bne	a1,a0,8020b5ba <.LBB228_57+0x7e>
    8020b5b4:	4581                	li	a1,0
    8020b5b6:	82aa                	mv	t0,a0
    8020b5b8:	a039                	j	8020b5c6 <.LBB228_57+0x8a>
    8020b5ba:	0005c683          	lbu	a3,0(a1)
    8020b5be:	00158293          	addi	t0,a1,1
    8020b5c2:	03f6f593          	andi	a1,a3,63
    8020b5c6:	00689693          	slli	a3,a7,0x6
    8020b5ca:	0f000793          	li	a5,240
    8020b5ce:	8dd5                	or	a1,a1,a3
    8020b5d0:	00f3e663          	bltu	t2,a5,8020b5dc <.LBB228_57+0xa0>
    8020b5d4:	00a29863          	bne	t0,a0,8020b5e4 <.LBB228_57+0xa8>
    8020b5d8:	4501                	li	a0,0
    8020b5da:	a809                	j	8020b5ec <.LBB228_57+0xb0>
    8020b5dc:	00c81513          	slli	a0,a6,0xc
    8020b5e0:	8dc9                	or	a1,a1,a0
    8020b5e2:	a00d                	j	8020b604 <.LBB228_57+0xc8>
    8020b5e4:	0002c503          	lbu	a0,0(t0) # 110000 <.Lline_table_start0+0xf0ae7>
    8020b5e8:	03f57513          	andi	a0,a0,63
    8020b5ec:	01281693          	slli	a3,a6,0x12
    8020b5f0:	001c07b7          	lui	a5,0x1c0
    8020b5f4:	8efd                	and	a3,a3,a5
    8020b5f6:	059a                	slli	a1,a1,0x6
    8020b5f8:	8dd5                	or	a1,a1,a3
    8020b5fa:	8dc9                	or	a1,a1,a0
    8020b5fc:	00110537          	lui	a0,0x110
    8020b600:	f2a58ee3          	beq	a1,a0,8020b53c <.LBB228_57>
    8020b604:	c2ae                	sw	a1,68(sp)
    8020b606:	00a8                	addi	a0,sp,72
    8020b608:	08000693          	li	a3,128
    8020b60c:	4785                	li	a5,1
    8020b60e:	00d5ec63          	bltu	a1,a3,8020b626 <.LBB228_57+0xea>
    8020b612:	00b5d693          	srli	a3,a1,0xb
    8020b616:	4789                	li	a5,2
    8020b618:	c699                	beqz	a3,8020b626 <.LBB228_57+0xea>
    8020b61a:	81c1                	srli	a1,a1,0x10
    8020b61c:	0015b593          	seqz	a1,a1
    8020b620:	4691                	li	a3,4
    8020b622:	40b687b3          	sub	a5,a3,a1
    8020b626:	00c785b3          	add	a1,a5,a2
    8020b62a:	e4b2                	sd	a2,72(sp)
    8020b62c:	e8ae                	sd	a1,80(sp)
    8020b62e:	182c                	addi	a1,sp,56
    8020b630:	e52e                	sd	a1,136(sp)

000000008020b632 <.LBB228_58>:
    8020b632:	00001597          	auipc	a1,0x1
    8020b636:	b9658593          	addi	a1,a1,-1130 # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    8020b63a:	e92e                	sd	a1,144(sp)
    8020b63c:	ed1a                	sd	t1,152(sp)

000000008020b63e <.LBB228_59>:
    8020b63e:	00000597          	auipc	a1,0x0
    8020b642:	93858593          	addi	a1,a1,-1736 # 8020af76 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hebe9382637ae1ba8E>
    8020b646:	f12e                	sd	a1,160(sp)
    8020b648:	f52a                	sd	a0,168(sp)

000000008020b64a <.LBB228_60>:
    8020b64a:	ffffe517          	auipc	a0,0xffffe
    8020b64e:	09e50513          	addi	a0,a0,158 # 802096e8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0c19ef341f8f601cE>
    8020b652:	f92a                	sd	a0,176(sp)
    8020b654:	0828                	addi	a0,sp,24
    8020b656:	fd2a                	sd	a0,184(sp)

000000008020b658 <.LBB228_61>:
    8020b658:	00001517          	auipc	a0,0x1
    8020b65c:	d6a50513          	addi	a0,a0,-662 # 8020c3c2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>
    8020b660:	e1aa                	sd	a0,192(sp)
    8020b662:	102c                	addi	a1,sp,40
    8020b664:	e5ae                	sd	a1,200(sp)
    8020b666:	e9aa                	sd	a0,208(sp)

000000008020b668 <.LBB228_62>:
    8020b668:	00005517          	auipc	a0,0x5
    8020b66c:	1f850513          	addi	a0,a0,504 # 80210860 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.321>
    8020b670:	ecaa                	sd	a0,88(sp)
    8020b672:	4515                	li	a0,5
    8020b674:	f0aa                	sd	a0,96(sp)
    8020b676:	f482                	sd	zero,104(sp)
    8020b678:	012c                	addi	a1,sp,136
    8020b67a:	fcae                	sd	a1,120(sp)
    8020b67c:	e12a                	sd	a0,128(sp)
    8020b67e:	08a8                	addi	a0,sp,88
    8020b680:	85ba                	mv	a1,a4
    8020b682:	ffffe097          	auipc	ra,0xffffe
    8020b686:	1ec080e7          	jalr	492(ra) # 8020986e <_ZN4core9panicking9panic_fmt17ha4e041b5d1f17023E>
	...

000000008020b68c <_ZN4core7unicode9printable12is_printable17hd298c127375d0caaE>:
    8020b68c:	1141                	addi	sp,sp,-16
    8020b68e:	e406                	sd	ra,8(sp)
    8020b690:	0105559b          	srliw	a1,a0,0x10
    8020b694:	e1f1                	bnez	a1,8020b758 <.LBB244_43+0x4c>
    8020b696:	4581                	li	a1,0
    8020b698:	6641                	lui	a2,0x10
    8020b69a:	f006061b          	addiw	a2,a2,-256
    8020b69e:	8e69                	and	a2,a2,a0
    8020b6a0:	00865313          	srli	t1,a2,0x8

000000008020b6a4 <.LBB244_41>:
    8020b6a4:	00005717          	auipc	a4,0x5
    8020b6a8:	26470713          	addi	a4,a4,612 # 80210908 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.344>
    8020b6ac:	12300813          	li	a6,291

000000008020b6b0 <.LBB244_42>:
    8020b6b0:	00005897          	auipc	a7,0x5
    8020b6b4:	2aa88893          	addi	a7,a7,682 # 8021095a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.345>
    8020b6b8:	05270293          	addi	t0,a4,82
    8020b6bc:	0ff57793          	andi	a5,a0,255
    8020b6c0:	a811                	j	8020b6d4 <.LBB244_42+0x24>
    8020b6c2:	00d335b3          	sltu	a1,t1,a3
    8020b6c6:	00574633          	xor	a2,a4,t0
    8020b6ca:	00163613          	seqz	a2,a2
    8020b6ce:	8e4d                	or	a2,a2,a1
    8020b6d0:	859e                	mv	a1,t2
    8020b6d2:	ea15                	bnez	a2,8020b706 <.LBB244_42+0x56>
    8020b6d4:	00074683          	lbu	a3,0(a4)
    8020b6d8:	00174603          	lbu	a2,1(a4)
    8020b6dc:	0709                	addi	a4,a4,2
    8020b6de:	00c583b3          	add	t2,a1,a2
    8020b6e2:	fe6690e3          	bne	a3,t1,8020b6c2 <.LBB244_42+0x12>
    8020b6e6:	1eb3e063          	bltu	t2,a1,8020b8c6 <.LBB244_47>
    8020b6ea:	1f03f963          	bgeu	t2,a6,8020b8dc <.LBB244_48>
    8020b6ee:	95c6                	add	a1,a1,a7
    8020b6f0:	ca01                	beqz	a2,8020b700 <.LBB244_42+0x50>
    8020b6f2:	0005c683          	lbu	a3,0(a1)
    8020b6f6:	0585                	addi	a1,a1,1
    8020b6f8:	167d                	addi	a2,a2,-1
    8020b6fa:	fef69be3          	bne	a3,a5,8020b6f0 <.LBB244_42+0x40>
    8020b6fe:	a26d                	j	8020b8a8 <.LBB244_46+0xd4>
    8020b700:	859e                	mv	a1,t2
    8020b702:	fc5719e3          	bne	a4,t0,8020b6d4 <.LBB244_42+0x24>
    8020b706:	65c1                	lui	a1,0x10
    8020b708:	35fd                	addiw	a1,a1,-1
    8020b70a:	8de9                	and	a1,a1,a0

000000008020b70c <.LBB244_43>:
    8020b70c:	00005717          	auipc	a4,0x5
    8020b710:	37070713          	addi	a4,a4,880 # 80210a7c <.Lanon.9d4bfc86079e95d674f3cded52b1db19.346>
    8020b714:	4505                	li	a0,1
    8020b716:	587d                	li	a6,-1
    8020b718:	13570693          	addi	a3,a4,309
    8020b71c:	00070783          	lb	a5,0(a4)
    8020b720:	00170613          	addi	a2,a4,1
    8020b724:	00f85963          	bge	a6,a5,8020b736 <.LBB244_43+0x2a>
    8020b728:	0ff7f793          	andi	a5,a5,255
    8020b72c:	8732                	mv	a4,a2
    8020b72e:	9d9d                	subw	a1,a1,a5
    8020b730:	0005df63          	bgez	a1,8020b74e <.LBB244_43+0x42>
    8020b734:	aa9d                	j	8020b8aa <.LBB244_46+0xd6>
    8020b736:	1cd60663          	beq	a2,a3,8020b902 <.LBB244_50>
    8020b73a:	00174603          	lbu	a2,1(a4)
    8020b73e:	07f7f793          	andi	a5,a5,127
    8020b742:	07a2                	slli	a5,a5,0x8
    8020b744:	0709                	addi	a4,a4,2
    8020b746:	8fd1                	or	a5,a5,a2
    8020b748:	9d9d                	subw	a1,a1,a5
    8020b74a:	1605c063          	bltz	a1,8020b8aa <.LBB244_46+0xd6>
    8020b74e:	00154513          	xori	a0,a0,1
    8020b752:	fcd715e3          	bne	a4,a3,8020b71c <.LBB244_43+0x10>
    8020b756:	aa91                	j	8020b8aa <.LBB244_46+0xd6>
    8020b758:	0115559b          	srliw	a1,a0,0x11
    8020b75c:	e1f1                	bnez	a1,8020b820 <.LBB244_46+0x4c>
    8020b75e:	4581                	li	a1,0
    8020b760:	6641                	lui	a2,0x10
    8020b762:	f006061b          	addiw	a2,a2,-256
    8020b766:	8e69                	and	a2,a2,a0
    8020b768:	00865313          	srli	t1,a2,0x8

000000008020b76c <.LBB244_44>:
    8020b76c:	00005717          	auipc	a4,0x5
    8020b770:	44570713          	addi	a4,a4,1093 # 80210bb1 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.347>
    8020b774:	0b000813          	li	a6,176

000000008020b778 <.LBB244_45>:
    8020b778:	00005897          	auipc	a7,0x5
    8020b77c:	48588893          	addi	a7,a7,1157 # 80210bfd <.Lanon.9d4bfc86079e95d674f3cded52b1db19.348>
    8020b780:	04c70293          	addi	t0,a4,76
    8020b784:	0ff57793          	andi	a5,a0,255
    8020b788:	a811                	j	8020b79c <.LBB244_45+0x24>
    8020b78a:	00d335b3          	sltu	a1,t1,a3
    8020b78e:	00574633          	xor	a2,a4,t0
    8020b792:	00163613          	seqz	a2,a2
    8020b796:	8e4d                	or	a2,a2,a1
    8020b798:	859e                	mv	a1,t2
    8020b79a:	ea15                	bnez	a2,8020b7ce <.LBB244_45+0x56>
    8020b79c:	00074683          	lbu	a3,0(a4)
    8020b7a0:	00174603          	lbu	a2,1(a4)
    8020b7a4:	0709                	addi	a4,a4,2
    8020b7a6:	00c583b3          	add	t2,a1,a2
    8020b7aa:	fe6690e3          	bne	a3,t1,8020b78a <.LBB244_45+0x12>
    8020b7ae:	10b3ec63          	bltu	t2,a1,8020b8c6 <.LBB244_47>
    8020b7b2:	1303fc63          	bgeu	t2,a6,8020b8ea <.LBB244_49>
    8020b7b6:	95c6                	add	a1,a1,a7
    8020b7b8:	ca01                	beqz	a2,8020b7c8 <.LBB244_45+0x50>
    8020b7ba:	0005c683          	lbu	a3,0(a1) # 10000 <.Lline_table_start0+0xd991>
    8020b7be:	0585                	addi	a1,a1,1
    8020b7c0:	167d                	addi	a2,a2,-1
    8020b7c2:	fef69be3          	bne	a3,a5,8020b7b8 <.LBB244_45+0x40>
    8020b7c6:	a0cd                	j	8020b8a8 <.LBB244_46+0xd4>
    8020b7c8:	859e                	mv	a1,t2
    8020b7ca:	fc5719e3          	bne	a4,t0,8020b79c <.LBB244_45+0x24>
    8020b7ce:	65c1                	lui	a1,0x10
    8020b7d0:	35fd                	addiw	a1,a1,-1
    8020b7d2:	8de9                	and	a1,a1,a0

000000008020b7d4 <.LBB244_46>:
    8020b7d4:	00005717          	auipc	a4,0x5
    8020b7d8:	4d870713          	addi	a4,a4,1240 # 80210cac <.Lanon.9d4bfc86079e95d674f3cded52b1db19.349>
    8020b7dc:	4505                	li	a0,1
    8020b7de:	587d                	li	a6,-1
    8020b7e0:	1a370693          	addi	a3,a4,419
    8020b7e4:	00070783          	lb	a5,0(a4)
    8020b7e8:	00170613          	addi	a2,a4,1
    8020b7ec:	00f85963          	bge	a6,a5,8020b7fe <.LBB244_46+0x2a>
    8020b7f0:	0ff7f793          	andi	a5,a5,255
    8020b7f4:	8732                	mv	a4,a2
    8020b7f6:	9d9d                	subw	a1,a1,a5
    8020b7f8:	0005df63          	bgez	a1,8020b816 <.LBB244_46+0x42>
    8020b7fc:	a07d                	j	8020b8aa <.LBB244_46+0xd6>
    8020b7fe:	10d60263          	beq	a2,a3,8020b902 <.LBB244_50>
    8020b802:	00174603          	lbu	a2,1(a4)
    8020b806:	07f7f793          	andi	a5,a5,127
    8020b80a:	07a2                	slli	a5,a5,0x8
    8020b80c:	0709                	addi	a4,a4,2
    8020b80e:	8fd1                	or	a5,a5,a2
    8020b810:	9d9d                	subw	a1,a1,a5
    8020b812:	0805cc63          	bltz	a1,8020b8aa <.LBB244_46+0xd6>
    8020b816:	00154513          	xori	a0,a0,1
    8020b81a:	fcd715e3          	bne	a4,a3,8020b7e4 <.LBB244_46+0x10>
    8020b81e:	a071                	j	8020b8aa <.LBB244_46+0xd6>
    8020b820:	fffd65b7          	lui	a1,0xfffd6
    8020b824:	9225859b          	addiw	a1,a1,-1758
    8020b828:	9da9                	addw	a1,a1,a0
    8020b82a:	0225b593          	sltiu	a1,a1,34
    8020b82e:	fffd5637          	lui	a2,0xfffd5
    8020b832:	8cb6061b          	addiw	a2,a2,-1845
    8020b836:	9e29                	addw	a2,a2,a0
    8020b838:	00b63613          	sltiu	a2,a2,11
    8020b83c:	8dd1                	or	a1,a1,a2
    8020b83e:	00200637          	lui	a2,0x200
    8020b842:	3679                	addiw	a2,a2,-2
    8020b844:	8e69                	and	a2,a2,a0
    8020b846:	0002c6b7          	lui	a3,0x2c
    8020b84a:	81e6869b          	addiw	a3,a3,-2018
    8020b84e:	8e35                	xor	a2,a2,a3
    8020b850:	00163613          	seqz	a2,a2
    8020b854:	8dd1                	or	a1,a1,a2
    8020b856:	fffd3637          	lui	a2,0xfffd3
    8020b85a:	15e6061b          	addiw	a2,a2,350
    8020b85e:	9e29                	addw	a2,a2,a0
    8020b860:	00e63613          	sltiu	a2,a2,14
    8020b864:	8dd1                	or	a1,a1,a2
    8020b866:	fffd1637          	lui	a2,0xfffd1
    8020b86a:	41f6061b          	addiw	a2,a2,1055
    8020b86e:	9e29                	addw	a2,a2,a0
    8020b870:	6685                	lui	a3,0x1
    8020b872:	c1f6869b          	addiw	a3,a3,-993
    8020b876:	00d63633          	sltu	a2,a2,a3
    8020b87a:	8dd1                	or	a1,a1,a2
    8020b87c:	fffd0637          	lui	a2,0xfffd0
    8020b880:	5e26061b          	addiw	a2,a2,1506
    8020b884:	9e29                	addw	a2,a2,a0
    8020b886:	5e263613          	sltiu	a2,a2,1506
    8020b88a:	8dd1                	or	a1,a1,a2
    8020b88c:	fffcf637          	lui	a2,0xfffcf
    8020b890:	cb56061b          	addiw	a2,a2,-843
    8020b894:	9e29                	addw	a2,a2,a0
    8020b896:	000af6b7          	lui	a3,0xaf
    8020b89a:	db56869b          	addiw	a3,a3,-587
    8020b89e:	00d63633          	sltu	a2,a2,a3
    8020b8a2:	8dd1                	or	a1,a1,a2
    8020b8a4:	8985                	andi	a1,a1,1
    8020b8a6:	c591                	beqz	a1,8020b8b2 <.LBB244_46+0xde>
    8020b8a8:	4501                	li	a0,0
    8020b8aa:	8905                	andi	a0,a0,1
    8020b8ac:	60a2                	ld	ra,8(sp)
    8020b8ae:	0141                	addi	sp,sp,16
    8020b8b0:	8082                	ret
    8020b8b2:	2501                	sext.w	a0,a0
    8020b8b4:	000e05b7          	lui	a1,0xe0
    8020b8b8:	1f05859b          	addiw	a1,a1,496
    8020b8bc:	00b53533          	sltu	a0,a0,a1
    8020b8c0:	60a2                	ld	ra,8(sp)
    8020b8c2:	0141                	addi	sp,sp,16
    8020b8c4:	8082                	ret

000000008020b8c6 <.LBB244_47>:
    8020b8c6:	00005617          	auipc	a2,0x5
    8020b8ca:	01260613          	addi	a2,a2,18 # 802108d8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    8020b8ce:	852e                	mv	a0,a1
    8020b8d0:	859e                	mv	a1,t2
    8020b8d2:	00000097          	auipc	ra,0x0
    8020b8d6:	aa0080e7          	jalr	-1376(ra) # 8020b372 <_ZN4core5slice5index22slice_index_order_fail17h17f07731262cfc7fE>
	...

000000008020b8dc <.LBB244_48>:
    8020b8dc:	00005617          	auipc	a2,0x5
    8020b8e0:	ffc60613          	addi	a2,a2,-4 # 802108d8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    8020b8e4:	12200593          	li	a1,290
    8020b8e8:	a039                	j	8020b8f6 <.LBB244_49+0xc>

000000008020b8ea <.LBB244_49>:
    8020b8ea:	00005617          	auipc	a2,0x5
    8020b8ee:	fee60613          	addi	a2,a2,-18 # 802108d8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.342>
    8020b8f2:	0af00593          	li	a1,175
    8020b8f6:	851e                	mv	a0,t2
    8020b8f8:	00000097          	auipc	ra,0x0
    8020b8fc:	a3a080e7          	jalr	-1478(ra) # 8020b332 <_ZN4core5slice5index24slice_end_index_len_fail17h397499141087200aE>
	...

000000008020b902 <.LBB244_50>:
    8020b902:	00005517          	auipc	a0,0x5
    8020b906:	9fe50513          	addi	a0,a0,-1538 # 80210300 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.175>

000000008020b90a <.LBB244_51>:
    8020b90a:	00005617          	auipc	a2,0x5
    8020b90e:	fe660613          	addi	a2,a2,-26 # 802108f0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.343>
    8020b912:	02b00593          	li	a1,43
    8020b916:	ffffe097          	auipc	ra,0xffffe
    8020b91a:	eec080e7          	jalr	-276(ra) # 80209802 <_ZN4core9panicking5panic17h4214b4eed8d3f37fE>
	...

000000008020b920 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h4bd6f5427c4ae7cfE>:
    8020b920:	7175                	addi	sp,sp,-144
    8020b922:	e506                	sd	ra,136(sp)
    8020b924:	00054683          	lbu	a3,0(a0)
    8020b928:	852e                	mv	a0,a1
    8020b92a:	4581                	li	a1,0
    8020b92c:	00810813          	addi	a6,sp,8
    8020b930:	4729                	li	a4,10
    8020b932:	a039                	j	8020b940 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h4bd6f5427c4ae7cfE+0x20>
    8020b934:	05760613          	addi	a2,a2,87
    8020b938:	06c78fa3          	sb	a2,127(a5) # 1c007f <.Lline_table_start0+0x1a0b66>
    8020b93c:	15fd                	addi	a1,a1,-1
    8020b93e:	ce99                	beqz	a3,8020b95c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h4bd6f5427c4ae7cfE+0x3c>
    8020b940:	00b807b3          	add	a5,a6,a1
    8020b944:	00f6f613          	andi	a2,a3,15
    8020b948:	8291                	srli	a3,a3,0x4
    8020b94a:	8abd                	andi	a3,a3,15
    8020b94c:	fee674e3          	bgeu	a2,a4,8020b934 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h4bd6f5427c4ae7cfE+0x14>
    8020b950:	03066613          	ori	a2,a2,48
    8020b954:	06c78fa3          	sb	a2,127(a5)
    8020b958:	15fd                	addi	a1,a1,-1
    8020b95a:	f2fd                	bnez	a3,8020b940 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h4bd6f5427c4ae7cfE+0x20>
    8020b95c:	08058693          	addi	a3,a1,128 # e0080 <.Lline_table_start0+0xc0b67>
    8020b960:	08100613          	li	a2,129
    8020b964:	02c6f463          	bgeu	a3,a2,8020b98c <.LBB444_8>
    8020b968:	40b007b3          	neg	a5,a1
    8020b96c:	95c2                	add	a1,a1,a6
    8020b96e:	08058713          	addi	a4,a1,128

000000008020b972 <.LBB444_7>:
    8020b972:	00005617          	auipc	a2,0x5
    8020b976:	bf060613          	addi	a2,a2,-1040 # 80210562 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    8020b97a:	4585                	li	a1,1
    8020b97c:	4689                	li	a3,2
    8020b97e:	fffff097          	auipc	ra,0xfffff
    8020b982:	afe080e7          	jalr	-1282(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020b986:	60aa                	ld	ra,136(sp)
    8020b988:	6149                	addi	sp,sp,144
    8020b98a:	8082                	ret

000000008020b98c <.LBB444_8>:
    8020b98c:	00005617          	auipc	a2,0x5
    8020b990:	bbc60613          	addi	a2,a2,-1092 # 80210548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    8020b994:	08000593          	li	a1,128
    8020b998:	8536                	mv	a0,a3
    8020b99a:	00000097          	auipc	ra,0x0
    8020b99e:	958080e7          	jalr	-1704(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020b9a4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h83bb5ea9d368b4beE>:
    8020b9a4:	7175                	addi	sp,sp,-144
    8020b9a6:	e506                	sd	ra,136(sp)
    8020b9a8:	00054683          	lbu	a3,0(a0)
    8020b9ac:	852e                	mv	a0,a1
    8020b9ae:	4581                	li	a1,0
    8020b9b0:	00810813          	addi	a6,sp,8
    8020b9b4:	4729                	li	a4,10
    8020b9b6:	a039                	j	8020b9c4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h83bb5ea9d368b4beE+0x20>
    8020b9b8:	03760613          	addi	a2,a2,55
    8020b9bc:	06c78fa3          	sb	a2,127(a5)
    8020b9c0:	15fd                	addi	a1,a1,-1
    8020b9c2:	ce99                	beqz	a3,8020b9e0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h83bb5ea9d368b4beE+0x3c>
    8020b9c4:	00b807b3          	add	a5,a6,a1
    8020b9c8:	00f6f613          	andi	a2,a3,15
    8020b9cc:	8291                	srli	a3,a3,0x4
    8020b9ce:	8abd                	andi	a3,a3,15
    8020b9d0:	fee674e3          	bgeu	a2,a4,8020b9b8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h83bb5ea9d368b4beE+0x14>
    8020b9d4:	03066613          	ori	a2,a2,48
    8020b9d8:	06c78fa3          	sb	a2,127(a5)
    8020b9dc:	15fd                	addi	a1,a1,-1
    8020b9de:	f2fd                	bnez	a3,8020b9c4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h83bb5ea9d368b4beE+0x20>
    8020b9e0:	08058693          	addi	a3,a1,128
    8020b9e4:	08100613          	li	a2,129
    8020b9e8:	02c6f463          	bgeu	a3,a2,8020ba10 <.LBB445_8>
    8020b9ec:	40b007b3          	neg	a5,a1
    8020b9f0:	95c2                	add	a1,a1,a6
    8020b9f2:	08058713          	addi	a4,a1,128

000000008020b9f6 <.LBB445_7>:
    8020b9f6:	00005617          	auipc	a2,0x5
    8020b9fa:	b6c60613          	addi	a2,a2,-1172 # 80210562 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    8020b9fe:	4585                	li	a1,1
    8020ba00:	4689                	li	a3,2
    8020ba02:	fffff097          	auipc	ra,0xfffff
    8020ba06:	a7a080e7          	jalr	-1414(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020ba0a:	60aa                	ld	ra,136(sp)
    8020ba0c:	6149                	addi	sp,sp,144
    8020ba0e:	8082                	ret

000000008020ba10 <.LBB445_8>:
    8020ba10:	00005617          	auipc	a2,0x5
    8020ba14:	b3860613          	addi	a2,a2,-1224 # 80210548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    8020ba18:	08000593          	li	a1,128
    8020ba1c:	8536                	mv	a0,a3
    8020ba1e:	00000097          	auipc	ra,0x0
    8020ba22:	8d4080e7          	jalr	-1836(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020ba28 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h4058e459711b3a3cE>:
    8020ba28:	7175                	addi	sp,sp,-144
    8020ba2a:	e506                	sd	ra,136(sp)
    8020ba2c:	882e                	mv	a6,a1
    8020ba2e:	4581                	li	a1,0
    8020ba30:	00055703          	lhu	a4,0(a0)
    8020ba34:	00810893          	addi	a7,sp,8
    8020ba38:	6505                	lui	a0,0x1
    8020ba3a:	357d                	addiw	a0,a0,-1
    8020ba3c:	42a9                	li	t0,10
    8020ba3e:	a039                	j	8020ba4c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h4058e459711b3a3cE+0x24>
    8020ba40:	05760613          	addi	a2,a2,87
    8020ba44:	06c78fa3          	sb	a2,127(a5)
    8020ba48:	15fd                	addi	a1,a1,-1
    8020ba4a:	c30d                	beqz	a4,8020ba6c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h4058e459711b3a3cE+0x44>
    8020ba4c:	00b887b3          	add	a5,a7,a1
    8020ba50:	00475693          	srli	a3,a4,0x4
    8020ba54:	00f77613          	andi	a2,a4,15
    8020ba58:	00a6f733          	and	a4,a3,a0
    8020ba5c:	fe5672e3          	bgeu	a2,t0,8020ba40 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h4058e459711b3a3cE+0x18>
    8020ba60:	03066613          	ori	a2,a2,48
    8020ba64:	06c78fa3          	sb	a2,127(a5)
    8020ba68:	15fd                	addi	a1,a1,-1
    8020ba6a:	f36d                	bnez	a4,8020ba4c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h4058e459711b3a3cE+0x24>
    8020ba6c:	08058513          	addi	a0,a1,128
    8020ba70:	08100613          	li	a2,129
    8020ba74:	02c57663          	bgeu	a0,a2,8020baa0 <.LBB448_8>
    8020ba78:	40b007b3          	neg	a5,a1
    8020ba7c:	00b88533          	add	a0,a7,a1
    8020ba80:	08050713          	addi	a4,a0,128 # 1080 <n+0x1060>

000000008020ba84 <.LBB448_7>:
    8020ba84:	00005617          	auipc	a2,0x5
    8020ba88:	ade60613          	addi	a2,a2,-1314 # 80210562 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    8020ba8c:	4585                	li	a1,1
    8020ba8e:	4689                	li	a3,2
    8020ba90:	8542                	mv	a0,a6
    8020ba92:	fffff097          	auipc	ra,0xfffff
    8020ba96:	9ea080e7          	jalr	-1558(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020ba9a:	60aa                	ld	ra,136(sp)
    8020ba9c:	6149                	addi	sp,sp,144
    8020ba9e:	8082                	ret

000000008020baa0 <.LBB448_8>:
    8020baa0:	00005617          	auipc	a2,0x5
    8020baa4:	aa860613          	addi	a2,a2,-1368 # 80210548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    8020baa8:	08000593          	li	a1,128
    8020baac:	00000097          	auipc	ra,0x0
    8020bab0:	846080e7          	jalr	-1978(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020bab6 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17ha3e3944a3800e444E>:
    8020bab6:	7175                	addi	sp,sp,-144
    8020bab8:	e506                	sd	ra,136(sp)
    8020baba:	882e                	mv	a6,a1
    8020babc:	4581                	li	a1,0
    8020babe:	00055703          	lhu	a4,0(a0)
    8020bac2:	00810893          	addi	a7,sp,8
    8020bac6:	6505                	lui	a0,0x1
    8020bac8:	357d                	addiw	a0,a0,-1
    8020baca:	42a9                	li	t0,10
    8020bacc:	a039                	j	8020bada <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17ha3e3944a3800e444E+0x24>
    8020bace:	03760613          	addi	a2,a2,55
    8020bad2:	06c78fa3          	sb	a2,127(a5)
    8020bad6:	15fd                	addi	a1,a1,-1
    8020bad8:	c30d                	beqz	a4,8020bafa <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17ha3e3944a3800e444E+0x44>
    8020bada:	00b887b3          	add	a5,a7,a1
    8020bade:	00475693          	srli	a3,a4,0x4
    8020bae2:	00f77613          	andi	a2,a4,15
    8020bae6:	00a6f733          	and	a4,a3,a0
    8020baea:	fe5672e3          	bgeu	a2,t0,8020bace <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17ha3e3944a3800e444E+0x18>
    8020baee:	03066613          	ori	a2,a2,48
    8020baf2:	06c78fa3          	sb	a2,127(a5)
    8020baf6:	15fd                	addi	a1,a1,-1
    8020baf8:	f36d                	bnez	a4,8020bada <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17ha3e3944a3800e444E+0x24>
    8020bafa:	08058513          	addi	a0,a1,128
    8020bafe:	08100613          	li	a2,129
    8020bb02:	02c57663          	bgeu	a0,a2,8020bb2e <.LBB449_8>
    8020bb06:	40b007b3          	neg	a5,a1
    8020bb0a:	00b88533          	add	a0,a7,a1
    8020bb0e:	08050713          	addi	a4,a0,128 # 1080 <n+0x1060>

000000008020bb12 <.LBB449_7>:
    8020bb12:	00005617          	auipc	a2,0x5
    8020bb16:	a5060613          	addi	a2,a2,-1456 # 80210562 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    8020bb1a:	4585                	li	a1,1
    8020bb1c:	4689                	li	a3,2
    8020bb1e:	8542                	mv	a0,a6
    8020bb20:	fffff097          	auipc	ra,0xfffff
    8020bb24:	95c080e7          	jalr	-1700(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020bb28:	60aa                	ld	ra,136(sp)
    8020bb2a:	6149                	addi	sp,sp,144
    8020bb2c:	8082                	ret

000000008020bb2e <.LBB449_8>:
    8020bb2e:	00005617          	auipc	a2,0x5
    8020bb32:	a1a60613          	addi	a2,a2,-1510 # 80210548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    8020bb36:	08000593          	li	a1,128
    8020bb3a:	fffff097          	auipc	ra,0xfffff
    8020bb3e:	7b8080e7          	jalr	1976(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020bb44 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17hbb0b765cca604131E>:
    8020bb44:	7175                	addi	sp,sp,-144
    8020bb46:	e506                	sd	ra,136(sp)
    8020bb48:	6114                	ld	a3,0(a0)
    8020bb4a:	852e                	mv	a0,a1
    8020bb4c:	4581                	li	a1,0
    8020bb4e:	0030                	addi	a2,sp,8
    8020bb50:	00b60733          	add	a4,a2,a1
    8020bb54:	0016d793          	srli	a5,a3,0x1
    8020bb58:	8a85                	andi	a3,a3,1
    8020bb5a:	0306e693          	ori	a3,a3,48
    8020bb5e:	06d70fa3          	sb	a3,127(a4)
    8020bb62:	15fd                	addi	a1,a1,-1
    8020bb64:	86be                	mv	a3,a5
    8020bb66:	f7ed                	bnez	a5,8020bb50 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17hbb0b765cca604131E+0xc>
    8020bb68:	08058693          	addi	a3,a1,128
    8020bb6c:	08100713          	li	a4,129
    8020bb70:	02e6f463          	bgeu	a3,a4,8020bb98 <.LBB454_6>
    8020bb74:	40b007b3          	neg	a5,a1
    8020bb78:	95b2                	add	a1,a1,a2
    8020bb7a:	08058713          	addi	a4,a1,128

000000008020bb7e <.LBB454_5>:
    8020bb7e:	00005617          	auipc	a2,0x5
    8020bb82:	9e260613          	addi	a2,a2,-1566 # 80210560 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.222>
    8020bb86:	4585                	li	a1,1
    8020bb88:	4689                	li	a3,2
    8020bb8a:	fffff097          	auipc	ra,0xfffff
    8020bb8e:	8f2080e7          	jalr	-1806(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020bb92:	60aa                	ld	ra,136(sp)
    8020bb94:	6149                	addi	sp,sp,144
    8020bb96:	8082                	ret

000000008020bb98 <.LBB454_6>:
    8020bb98:	00005617          	auipc	a2,0x5
    8020bb9c:	9b060613          	addi	a2,a2,-1616 # 80210548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    8020bba0:	08000593          	li	a1,128
    8020bba4:	8536                	mv	a0,a3
    8020bba6:	fffff097          	auipc	ra,0xfffff
    8020bbaa:	74c080e7          	jalr	1868(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020bbb0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E>:
    8020bbb0:	7175                	addi	sp,sp,-144
    8020bbb2:	e506                	sd	ra,136(sp)
    8020bbb4:	6114                	ld	a3,0(a0)
    8020bbb6:	852e                	mv	a0,a1
    8020bbb8:	4581                	li	a1,0
    8020bbba:	00810813          	addi	a6,sp,8
    8020bbbe:	4729                	li	a4,10
    8020bbc0:	a039                	j	8020bbce <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    8020bbc2:	05760613          	addi	a2,a2,87
    8020bbc6:	06c78fa3          	sb	a2,127(a5)
    8020bbca:	15fd                	addi	a1,a1,-1
    8020bbcc:	ce91                	beqz	a3,8020bbe8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x38>
    8020bbce:	00b807b3          	add	a5,a6,a1
    8020bbd2:	00f6f613          	andi	a2,a3,15
    8020bbd6:	8291                	srli	a3,a3,0x4
    8020bbd8:	fee675e3          	bgeu	a2,a4,8020bbc2 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x12>
    8020bbdc:	03066613          	ori	a2,a2,48
    8020bbe0:	06c78fa3          	sb	a2,127(a5)
    8020bbe4:	15fd                	addi	a1,a1,-1
    8020bbe6:	f6e5                	bnez	a3,8020bbce <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17he21e11f173f31e15E+0x1e>
    8020bbe8:	08058693          	addi	a3,a1,128
    8020bbec:	08100613          	li	a2,129
    8020bbf0:	02c6f463          	bgeu	a3,a2,8020bc18 <.LBB456_8>
    8020bbf4:	40b007b3          	neg	a5,a1
    8020bbf8:	95c2                	add	a1,a1,a6
    8020bbfa:	08058713          	addi	a4,a1,128

000000008020bbfe <.LBB456_7>:
    8020bbfe:	00005617          	auipc	a2,0x5
    8020bc02:	96460613          	addi	a2,a2,-1692 # 80210562 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    8020bc06:	4585                	li	a1,1
    8020bc08:	4689                	li	a3,2
    8020bc0a:	fffff097          	auipc	ra,0xfffff
    8020bc0e:	872080e7          	jalr	-1934(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020bc12:	60aa                	ld	ra,136(sp)
    8020bc14:	6149                	addi	sp,sp,144
    8020bc16:	8082                	ret

000000008020bc18 <.LBB456_8>:
    8020bc18:	00005617          	auipc	a2,0x5
    8020bc1c:	93060613          	addi	a2,a2,-1744 # 80210548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    8020bc20:	08000593          	li	a1,128
    8020bc24:	8536                	mv	a0,a3
    8020bc26:	fffff097          	auipc	ra,0xfffff
    8020bc2a:	6cc080e7          	jalr	1740(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020bc30 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E>:
    8020bc30:	7175                	addi	sp,sp,-144
    8020bc32:	e506                	sd	ra,136(sp)
    8020bc34:	6114                	ld	a3,0(a0)
    8020bc36:	852e                	mv	a0,a1
    8020bc38:	4581                	li	a1,0
    8020bc3a:	00810813          	addi	a6,sp,8
    8020bc3e:	4729                	li	a4,10
    8020bc40:	a039                	j	8020bc4e <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E+0x1e>
    8020bc42:	03760613          	addi	a2,a2,55
    8020bc46:	06c78fa3          	sb	a2,127(a5)
    8020bc4a:	15fd                	addi	a1,a1,-1
    8020bc4c:	ce91                	beqz	a3,8020bc68 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E+0x38>
    8020bc4e:	00b807b3          	add	a5,a6,a1
    8020bc52:	00f6f613          	andi	a2,a3,15
    8020bc56:	8291                	srli	a3,a3,0x4
    8020bc58:	fee675e3          	bgeu	a2,a4,8020bc42 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E+0x12>
    8020bc5c:	03066613          	ori	a2,a2,48
    8020bc60:	06c78fa3          	sb	a2,127(a5)
    8020bc64:	15fd                	addi	a1,a1,-1
    8020bc66:	f6e5                	bnez	a3,8020bc4e <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h7a5b1e38fb0bc5b9E+0x1e>
    8020bc68:	08058693          	addi	a3,a1,128
    8020bc6c:	08100613          	li	a2,129
    8020bc70:	02c6f463          	bgeu	a3,a2,8020bc98 <.LBB457_8>
    8020bc74:	40b007b3          	neg	a5,a1
    8020bc78:	95c2                	add	a1,a1,a6
    8020bc7a:	08058713          	addi	a4,a1,128

000000008020bc7e <.LBB457_7>:
    8020bc7e:	00005617          	auipc	a2,0x5
    8020bc82:	8e460613          	addi	a2,a2,-1820 # 80210562 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    8020bc86:	4585                	li	a1,1
    8020bc88:	4689                	li	a3,2
    8020bc8a:	ffffe097          	auipc	ra,0xffffe
    8020bc8e:	7f2080e7          	jalr	2034(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020bc92:	60aa                	ld	ra,136(sp)
    8020bc94:	6149                	addi	sp,sp,144
    8020bc96:	8082                	ret

000000008020bc98 <.LBB457_8>:
    8020bc98:	00005617          	auipc	a2,0x5
    8020bc9c:	8b060613          	addi	a2,a2,-1872 # 80210548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    8020bca0:	08000593          	li	a1,128
    8020bca4:	8536                	mv	a0,a3
    8020bca6:	fffff097          	auipc	ra,0xfffff
    8020bcaa:	64c080e7          	jalr	1612(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020bcb0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>:
    8020bcb0:	7175                	addi	sp,sp,-144
    8020bcb2:	e506                	sd	ra,136(sp)
    8020bcb4:	882e                	mv	a6,a1
    8020bcb6:	0305e583          	lwu	a1,48(a1)
    8020bcba:	0105f613          	andi	a2,a1,16
    8020bcbe:	ea19                	bnez	a2,8020bcd4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x24>
    8020bcc0:	0205f593          	andi	a1,a1,32
    8020bcc4:	e1a9                	bnez	a1,8020bd06 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x56>
    8020bcc6:	85c2                	mv	a1,a6
    8020bcc8:	60aa                	ld	ra,136(sp)
    8020bcca:	6149                	addi	sp,sp,144
    8020bccc:	00000317          	auipc	t1,0x0
    8020bcd0:	4fc30067          	jr	1276(t1) # 8020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>
    8020bcd4:	6108                	ld	a0,0(a0)
    8020bcd6:	4581                	li	a1,0
    8020bcd8:	0030                	addi	a2,sp,8
    8020bcda:	46a9                	li	a3,10
    8020bcdc:	a039                	j	8020bcea <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x3a>
    8020bcde:	05778793          	addi	a5,a5,87
    8020bce2:	06f70fa3          	sb	a5,127(a4)
    8020bce6:	15fd                	addi	a1,a1,-1
    8020bce8:	c539                	beqz	a0,8020bd36 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    8020bcea:	00b60733          	add	a4,a2,a1
    8020bcee:	00f57793          	andi	a5,a0,15
    8020bcf2:	8111                	srli	a0,a0,0x4
    8020bcf4:	fed7f5e3          	bgeu	a5,a3,8020bcde <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x2e>
    8020bcf8:	0307e793          	ori	a5,a5,48
    8020bcfc:	06f70fa3          	sb	a5,127(a4)
    8020bd00:	15fd                	addi	a1,a1,-1
    8020bd02:	f565                	bnez	a0,8020bcea <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x3a>
    8020bd04:	a80d                	j	8020bd36 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    8020bd06:	6108                	ld	a0,0(a0)
    8020bd08:	4581                	li	a1,0
    8020bd0a:	0030                	addi	a2,sp,8
    8020bd0c:	46a9                	li	a3,10
    8020bd0e:	a039                	j	8020bd1c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x6c>
    8020bd10:	03778793          	addi	a5,a5,55
    8020bd14:	06f70fa3          	sb	a5,127(a4)
    8020bd18:	15fd                	addi	a1,a1,-1
    8020bd1a:	cd11                	beqz	a0,8020bd36 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x86>
    8020bd1c:	00b60733          	add	a4,a2,a1
    8020bd20:	00f57793          	andi	a5,a0,15
    8020bd24:	8111                	srli	a0,a0,0x4
    8020bd26:	fed7f5e3          	bgeu	a5,a3,8020bd10 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x60>
    8020bd2a:	0307e793          	ori	a5,a5,48
    8020bd2e:	06f70fa3          	sb	a5,127(a4)
    8020bd32:	15fd                	addi	a1,a1,-1
    8020bd34:	f565                	bnez	a0,8020bd1c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE+0x6c>
    8020bd36:	08058513          	addi	a0,a1,128
    8020bd3a:	08100693          	li	a3,129
    8020bd3e:	02d57663          	bgeu	a0,a3,8020bd6a <.LBB462_15>
    8020bd42:	40b007b3          	neg	a5,a1
    8020bd46:	00b60533          	add	a0,a2,a1
    8020bd4a:	08050713          	addi	a4,a0,128

000000008020bd4e <.LBB462_14>:
    8020bd4e:	00005617          	auipc	a2,0x5
    8020bd52:	81460613          	addi	a2,a2,-2028 # 80210562 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.224>
    8020bd56:	4585                	li	a1,1
    8020bd58:	4689                	li	a3,2
    8020bd5a:	8542                	mv	a0,a6
    8020bd5c:	ffffe097          	auipc	ra,0xffffe
    8020bd60:	720080e7          	jalr	1824(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020bd64:	60aa                	ld	ra,136(sp)
    8020bd66:	6149                	addi	sp,sp,144
    8020bd68:	8082                	ret

000000008020bd6a <.LBB462_15>:
    8020bd6a:	00004617          	auipc	a2,0x4
    8020bd6e:	7de60613          	addi	a2,a2,2014 # 80210548 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.221>
    8020bd72:	08000593          	li	a1,128
    8020bd76:	fffff097          	auipc	ra,0xfffff
    8020bd7a:	57c080e7          	jalr	1404(ra) # 8020b2f2 <_ZN4core5slice5index26slice_start_index_len_fail17h43348ae2a84bde06E>
	...

000000008020bd80 <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17ha48a39a8a097abc0E>:
    8020bd80:	7179                	addi	sp,sp,-48
    8020bd82:	f406                	sd	ra,40(sp)
    8020bd84:	00054603          	lbu	a2,0(a0)
    8020bd88:	06400693          	li	a3,100
    8020bd8c:	852e                	mv	a0,a1
    8020bd8e:	04d66e63          	bltu	a2,a3,8020bdea <.LBB464_6+0x22>
    8020bd92:	0fc67593          	andi	a1,a2,252
    8020bd96:	8189                	srli	a1,a1,0x2
    8020bd98:	0051f737          	lui	a4,0x51f
    8020bd9c:	b857071b          	addiw	a4,a4,-1147
    8020bda0:	0736                	slli	a4,a4,0xd
    8020bda2:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x4ffebe>
    8020bda6:	073a                	slli	a4,a4,0xe
    8020bda8:	28f70713          	addi	a4,a4,655
    8020bdac:	0732                	slli	a4,a4,0xc
    8020bdae:	5c370713          	addi	a4,a4,1475
    8020bdb2:	02e5b5b3          	mulhu	a1,a1,a4
    8020bdb6:	0025d713          	srli	a4,a1,0x2
    8020bdba:	02d705b3          	mul	a1,a4,a3
    8020bdbe:	40b605b3          	sub	a1,a2,a1
    8020bdc2:	0586                	slli	a1,a1,0x1
    8020bdc4:	0fe5f593          	andi	a1,a1,254

000000008020bdc8 <.LBB464_6>:
    8020bdc8:	00004617          	auipc	a2,0x4
    8020bdcc:	79c60613          	addi	a2,a2,1948 # 80210564 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    8020bdd0:	95b2                	add	a1,a1,a2
    8020bdd2:	00158603          	lb	a2,1(a1)
    8020bdd6:	0005c583          	lbu	a1,0(a1)
    8020bdda:	02c103a3          	sb	a2,39(sp)
    8020bdde:	02b10323          	sb	a1,38(sp)
    8020bde2:	02400593          	li	a1,36
    8020bde6:	863a                	mv	a2,a4
    8020bde8:	a031                	j	8020bdf4 <.LBB464_6+0x2c>
    8020bdea:	46a5                	li	a3,9
    8020bdec:	02600593          	li	a1,38
    8020bdf0:	00c6ea63          	bltu	a3,a2,8020be04 <.LBB464_6+0x3c>
    8020bdf4:	00110693          	addi	a3,sp,1
    8020bdf8:	96ae                	add	a3,a3,a1
    8020bdfa:	03060613          	addi	a2,a2,48
    8020bdfe:	00c68023          	sb	a2,0(a3) # af000 <.Lline_table_start0+0x8fae7>
    8020be02:	a015                	j	8020be26 <.LBB464_7+0x1e>
    8020be04:	00161593          	slli	a1,a2,0x1

000000008020be08 <.LBB464_7>:
    8020be08:	00004617          	auipc	a2,0x4
    8020be0c:	75c60613          	addi	a2,a2,1884 # 80210564 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    8020be10:	95b2                	add	a1,a1,a2
    8020be12:	00158603          	lb	a2,1(a1)
    8020be16:	0005c583          	lbu	a1,0(a1)
    8020be1a:	02c103a3          	sb	a2,39(sp)
    8020be1e:	02b10323          	sb	a1,38(sp)
    8020be22:	02500593          	li	a1,37
    8020be26:	00110613          	addi	a2,sp,1
    8020be2a:	00b60733          	add	a4,a2,a1
    8020be2e:	02700613          	li	a2,39
    8020be32:	40b607b3          	sub	a5,a2,a1

000000008020be36 <.LBB464_8>:
    8020be36:	00004617          	auipc	a2,0x4
    8020be3a:	4b260613          	addi	a2,a2,1202 # 802102e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    8020be3e:	4585                	li	a1,1
    8020be40:	4681                	li	a3,0
    8020be42:	ffffe097          	auipc	ra,0xffffe
    8020be46:	63a080e7          	jalr	1594(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020be4a:	70a2                	ld	ra,40(sp)
    8020be4c:	6145                	addi	sp,sp,48
    8020be4e:	8082                	ret

000000008020be50 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hb3d3df1644561841E>:
    8020be50:	715d                	addi	sp,sp,-80
    8020be52:	e486                	sd	ra,72(sp)
    8020be54:	e0a2                	sd	s0,64(sp)
    8020be56:	fc26                	sd	s1,56(sp)
    8020be58:	f84a                	sd	s2,48(sp)
    8020be5a:	00055903          	lhu	s2,0(a0)
    8020be5e:	852e                	mv	a0,a1
    8020be60:	00495593          	srli	a1,s2,0x4
    8020be64:	02700693          	li	a3,39
    8020be68:	27100713          	li	a4,625

000000008020be6c <.LBB466_10>:
    8020be6c:	00004817          	auipc	a6,0x4
    8020be70:	6f880813          	addi	a6,a6,1784 # 80210564 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    8020be74:	02e5f363          	bgeu	a1,a4,8020be9a <.LBB466_10+0x2e>
    8020be78:	06300593          	li	a1,99
    8020be7c:	0f25e063          	bltu	a1,s2,8020bf5c <.LBB466_10+0xf0>
    8020be80:	45a5                	li	a1,9
    8020be82:	1325cd63          	blt	a1,s2,8020bfbc <.LBB466_10+0x150>
    8020be86:	fff68593          	addi	a1,a3,-1
    8020be8a:	00910613          	addi	a2,sp,9
    8020be8e:	962e                	add	a2,a2,a1
    8020be90:	03090693          	addi	a3,s2,48
    8020be94:	00d60023          	sb	a3,0(a2)
    8020be98:	a291                	j	8020bfdc <.LBB466_10+0x170>
    8020be9a:	4681                	li	a3,0
    8020be9c:	001a35b7          	lui	a1,0x1a3
    8020bea0:	6e35859b          	addiw	a1,a1,1763
    8020bea4:	05ba                	slli	a1,a1,0xe
    8020bea6:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x1835ae>
    8020beaa:	05ba                	slli	a1,a1,0xe
    8020beac:	43358593          	addi	a1,a1,1075
    8020beb0:	05b6                	slli	a1,a1,0xd
    8020beb2:	94b58893          	addi	a7,a1,-1717
    8020beb6:	6589                	lui	a1,0x2
    8020beb8:	7105831b          	addiw	t1,a1,1808
    8020bebc:	65c1                	lui	a1,0x10
    8020bebe:	ffc58e1b          	addiw	t3,a1,-4
    8020bec2:	0051f737          	lui	a4,0x51f
    8020bec6:	b857071b          	addiw	a4,a4,-1147
    8020beca:	0736                	slli	a4,a4,0xd
    8020becc:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x4ffebe>
    8020bed0:	073a                	slli	a4,a4,0xe
    8020bed2:	28f70713          	addi	a4,a4,655
    8020bed6:	0732                	slli	a4,a4,0xc
    8020bed8:	5c370e93          	addi	t4,a4,1475
    8020bedc:	06400293          	li	t0,100
    8020bee0:	ffe58f1b          	addiw	t5,a1,-2
    8020bee4:	00910393          	addi	t2,sp,9
    8020bee8:	05f5e5b7          	lui	a1,0x5f5e
    8020beec:	0ff58f9b          	addiw	t6,a1,255
    8020bef0:	864a                	mv	a2,s2
    8020bef2:	031937b3          	mulhu	a5,s2,a7
    8020bef6:	00b7d913          	srli	s2,a5,0xb
    8020befa:	02690733          	mul	a4,s2,t1
    8020befe:	40e60733          	sub	a4,a2,a4
    8020bf02:	01c775b3          	and	a1,a4,t3
    8020bf06:	8189                	srli	a1,a1,0x2
    8020bf08:	03d5b5b3          	mulhu	a1,a1,t4
    8020bf0c:	8189                	srli	a1,a1,0x2
    8020bf0e:	00159413          	slli	s0,a1,0x1
    8020bf12:	025585b3          	mul	a1,a1,t0
    8020bf16:	40b705b3          	sub	a1,a4,a1
    8020bf1a:	0586                	slli	a1,a1,0x1
    8020bf1c:	01e5f5b3          	and	a1,a1,t5
    8020bf20:	01040733          	add	a4,s0,a6
    8020bf24:	00d38433          	add	s0,t2,a3
    8020bf28:	00074483          	lbu	s1,0(a4)
    8020bf2c:	00170703          	lb	a4,1(a4)
    8020bf30:	95c2                	add	a1,a1,a6
    8020bf32:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f3eae8>
    8020bf36:	0005c583          	lbu	a1,0(a1)
    8020bf3a:	02e40223          	sb	a4,36(s0)
    8020bf3e:	029401a3          	sb	s1,35(s0)
    8020bf42:	02f40323          	sb	a5,38(s0)
    8020bf46:	02b402a3          	sb	a1,37(s0)
    8020bf4a:	16f1                	addi	a3,a3,-4
    8020bf4c:	facfe2e3          	bltu	t6,a2,8020bef0 <.LBB466_10+0x84>
    8020bf50:	02768693          	addi	a3,a3,39
    8020bf54:	06300593          	li	a1,99
    8020bf58:	f325f4e3          	bgeu	a1,s2,8020be80 <.LBB466_10+0x14>
    8020bf5c:	65c1                	lui	a1,0x10
    8020bf5e:	ffc5861b          	addiw	a2,a1,-4
    8020bf62:	00c97633          	and	a2,s2,a2
    8020bf66:	8209                	srli	a2,a2,0x2
    8020bf68:	0051f737          	lui	a4,0x51f
    8020bf6c:	b857071b          	addiw	a4,a4,-1147
    8020bf70:	0736                	slli	a4,a4,0xd
    8020bf72:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x4ffebe>
    8020bf76:	073a                	slli	a4,a4,0xe
    8020bf78:	28f70713          	addi	a4,a4,655
    8020bf7c:	0732                	slli	a4,a4,0xc
    8020bf7e:	5c370713          	addi	a4,a4,1475
    8020bf82:	02e63633          	mulhu	a2,a2,a4
    8020bf86:	8209                	srli	a2,a2,0x2
    8020bf88:	06400713          	li	a4,100
    8020bf8c:	02e60733          	mul	a4,a2,a4
    8020bf90:	40e90733          	sub	a4,s2,a4
    8020bf94:	0706                	slli	a4,a4,0x1
    8020bf96:	35f9                	addiw	a1,a1,-2
    8020bf98:	8df9                	and	a1,a1,a4
    8020bf9a:	16f9                	addi	a3,a3,-2
    8020bf9c:	95c2                	add	a1,a1,a6
    8020bf9e:	00158703          	lb	a4,1(a1) # 10001 <.Lline_table_start0+0xd992>
    8020bfa2:	0005c583          	lbu	a1,0(a1)
    8020bfa6:	00910793          	addi	a5,sp,9
    8020bfaa:	97b6                	add	a5,a5,a3
    8020bfac:	00e780a3          	sb	a4,1(a5)
    8020bfb0:	00b78023          	sb	a1,0(a5)
    8020bfb4:	8932                	mv	s2,a2
    8020bfb6:	45a5                	li	a1,9
    8020bfb8:	ed25d7e3          	bge	a1,s2,8020be86 <.LBB466_10+0x1a>
    8020bfbc:	00191613          	slli	a2,s2,0x1
    8020bfc0:	ffe68593          	addi	a1,a3,-2
    8020bfc4:	9642                	add	a2,a2,a6
    8020bfc6:	00160683          	lb	a3,1(a2)
    8020bfca:	00064603          	lbu	a2,0(a2)
    8020bfce:	00910713          	addi	a4,sp,9
    8020bfd2:	972e                	add	a4,a4,a1
    8020bfd4:	00d700a3          	sb	a3,1(a4)
    8020bfd8:	00c70023          	sb	a2,0(a4)
    8020bfdc:	00910613          	addi	a2,sp,9
    8020bfe0:	00b60733          	add	a4,a2,a1
    8020bfe4:	02700613          	li	a2,39
    8020bfe8:	40b607b3          	sub	a5,a2,a1

000000008020bfec <.LBB466_11>:
    8020bfec:	00004617          	auipc	a2,0x4
    8020bff0:	2fc60613          	addi	a2,a2,764 # 802102e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    8020bff4:	4585                	li	a1,1
    8020bff6:	4681                	li	a3,0
    8020bff8:	ffffe097          	auipc	ra,0xffffe
    8020bffc:	484080e7          	jalr	1156(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020c000:	7942                	ld	s2,48(sp)
    8020c002:	74e2                	ld	s1,56(sp)
    8020c004:	6406                	ld	s0,64(sp)
    8020c006:	60a6                	ld	ra,72(sp)
    8020c008:	6161                	addi	sp,sp,80
    8020c00a:	8082                	ret

000000008020c00c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h4f29d8511ba5e68eE>:
    8020c00c:	715d                	addi	sp,sp,-80
    8020c00e:	e486                	sd	ra,72(sp)
    8020c010:	e0a2                	sd	s0,64(sp)
    8020c012:	fc26                	sd	s1,56(sp)
    8020c014:	f84a                	sd	s2,48(sp)
    8020c016:	00056903          	lwu	s2,0(a0)
    8020c01a:	852e                	mv	a0,a1
    8020c01c:	00495593          	srli	a1,s2,0x4
    8020c020:	02700693          	li	a3,39
    8020c024:	27100713          	li	a4,625

000000008020c028 <.LBB468_10>:
    8020c028:	00004817          	auipc	a6,0x4
    8020c02c:	53c80813          	addi	a6,a6,1340 # 80210564 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    8020c030:	02e5f363          	bgeu	a1,a4,8020c056 <.LBB468_10+0x2e>
    8020c034:	06300593          	li	a1,99
    8020c038:	0f25e063          	bltu	a1,s2,8020c118 <.LBB468_10+0xf0>
    8020c03c:	45a5                	li	a1,9
    8020c03e:	1325cd63          	blt	a1,s2,8020c178 <.LBB468_10+0x150>
    8020c042:	fff68593          	addi	a1,a3,-1
    8020c046:	00910613          	addi	a2,sp,9
    8020c04a:	962e                	add	a2,a2,a1
    8020c04c:	03090693          	addi	a3,s2,48
    8020c050:	00d60023          	sb	a3,0(a2)
    8020c054:	a291                	j	8020c198 <.LBB468_10+0x170>
    8020c056:	4681                	li	a3,0
    8020c058:	001a35b7          	lui	a1,0x1a3
    8020c05c:	6e35859b          	addiw	a1,a1,1763
    8020c060:	05ba                	slli	a1,a1,0xe
    8020c062:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x1835ae>
    8020c066:	05ba                	slli	a1,a1,0xe
    8020c068:	43358593          	addi	a1,a1,1075
    8020c06c:	05b6                	slli	a1,a1,0xd
    8020c06e:	94b58893          	addi	a7,a1,-1717
    8020c072:	6589                	lui	a1,0x2
    8020c074:	7105831b          	addiw	t1,a1,1808
    8020c078:	65c1                	lui	a1,0x10
    8020c07a:	ffc58e1b          	addiw	t3,a1,-4
    8020c07e:	0051f737          	lui	a4,0x51f
    8020c082:	b857071b          	addiw	a4,a4,-1147
    8020c086:	0736                	slli	a4,a4,0xd
    8020c088:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x4ffebe>
    8020c08c:	073a                	slli	a4,a4,0xe
    8020c08e:	28f70713          	addi	a4,a4,655
    8020c092:	0732                	slli	a4,a4,0xc
    8020c094:	5c370e93          	addi	t4,a4,1475
    8020c098:	06400293          	li	t0,100
    8020c09c:	ffe58f1b          	addiw	t5,a1,-2
    8020c0a0:	00910393          	addi	t2,sp,9
    8020c0a4:	05f5e5b7          	lui	a1,0x5f5e
    8020c0a8:	0ff58f9b          	addiw	t6,a1,255
    8020c0ac:	864a                	mv	a2,s2
    8020c0ae:	031937b3          	mulhu	a5,s2,a7
    8020c0b2:	00b7d913          	srli	s2,a5,0xb
    8020c0b6:	02690733          	mul	a4,s2,t1
    8020c0ba:	40e60733          	sub	a4,a2,a4
    8020c0be:	01c775b3          	and	a1,a4,t3
    8020c0c2:	8189                	srli	a1,a1,0x2
    8020c0c4:	03d5b5b3          	mulhu	a1,a1,t4
    8020c0c8:	8189                	srli	a1,a1,0x2
    8020c0ca:	00159413          	slli	s0,a1,0x1
    8020c0ce:	025585b3          	mul	a1,a1,t0
    8020c0d2:	40b705b3          	sub	a1,a4,a1
    8020c0d6:	0586                	slli	a1,a1,0x1
    8020c0d8:	01e5f5b3          	and	a1,a1,t5
    8020c0dc:	01040733          	add	a4,s0,a6
    8020c0e0:	00d38433          	add	s0,t2,a3
    8020c0e4:	00074483          	lbu	s1,0(a4)
    8020c0e8:	00170703          	lb	a4,1(a4)
    8020c0ec:	95c2                	add	a1,a1,a6
    8020c0ee:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f3eae8>
    8020c0f2:	0005c583          	lbu	a1,0(a1)
    8020c0f6:	02e40223          	sb	a4,36(s0)
    8020c0fa:	029401a3          	sb	s1,35(s0)
    8020c0fe:	02f40323          	sb	a5,38(s0)
    8020c102:	02b402a3          	sb	a1,37(s0)
    8020c106:	16f1                	addi	a3,a3,-4
    8020c108:	facfe2e3          	bltu	t6,a2,8020c0ac <.LBB468_10+0x84>
    8020c10c:	02768693          	addi	a3,a3,39
    8020c110:	06300593          	li	a1,99
    8020c114:	f325f4e3          	bgeu	a1,s2,8020c03c <.LBB468_10+0x14>
    8020c118:	65c1                	lui	a1,0x10
    8020c11a:	ffc5861b          	addiw	a2,a1,-4
    8020c11e:	00c97633          	and	a2,s2,a2
    8020c122:	8209                	srli	a2,a2,0x2
    8020c124:	0051f737          	lui	a4,0x51f
    8020c128:	b857071b          	addiw	a4,a4,-1147
    8020c12c:	0736                	slli	a4,a4,0xd
    8020c12e:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x4ffebe>
    8020c132:	073a                	slli	a4,a4,0xe
    8020c134:	28f70713          	addi	a4,a4,655
    8020c138:	0732                	slli	a4,a4,0xc
    8020c13a:	5c370713          	addi	a4,a4,1475
    8020c13e:	02e63633          	mulhu	a2,a2,a4
    8020c142:	8209                	srli	a2,a2,0x2
    8020c144:	06400713          	li	a4,100
    8020c148:	02e60733          	mul	a4,a2,a4
    8020c14c:	40e90733          	sub	a4,s2,a4
    8020c150:	0706                	slli	a4,a4,0x1
    8020c152:	35f9                	addiw	a1,a1,-2
    8020c154:	8df9                	and	a1,a1,a4
    8020c156:	16f9                	addi	a3,a3,-2
    8020c158:	95c2                	add	a1,a1,a6
    8020c15a:	00158703          	lb	a4,1(a1) # 10001 <.Lline_table_start0+0xd992>
    8020c15e:	0005c583          	lbu	a1,0(a1)
    8020c162:	00910793          	addi	a5,sp,9
    8020c166:	97b6                	add	a5,a5,a3
    8020c168:	00e780a3          	sb	a4,1(a5)
    8020c16c:	00b78023          	sb	a1,0(a5)
    8020c170:	8932                	mv	s2,a2
    8020c172:	45a5                	li	a1,9
    8020c174:	ed25d7e3          	bge	a1,s2,8020c042 <.LBB468_10+0x1a>
    8020c178:	00191613          	slli	a2,s2,0x1
    8020c17c:	ffe68593          	addi	a1,a3,-2
    8020c180:	9642                	add	a2,a2,a6
    8020c182:	00160683          	lb	a3,1(a2)
    8020c186:	00064603          	lbu	a2,0(a2)
    8020c18a:	00910713          	addi	a4,sp,9
    8020c18e:	972e                	add	a4,a4,a1
    8020c190:	00d700a3          	sb	a3,1(a4)
    8020c194:	00c70023          	sb	a2,0(a4)
    8020c198:	00910613          	addi	a2,sp,9
    8020c19c:	00b60733          	add	a4,a2,a1
    8020c1a0:	02700613          	li	a2,39
    8020c1a4:	40b607b3          	sub	a5,a2,a1

000000008020c1a8 <.LBB468_11>:
    8020c1a8:	00004617          	auipc	a2,0x4
    8020c1ac:	14060613          	addi	a2,a2,320 # 802102e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    8020c1b0:	4585                	li	a1,1
    8020c1b2:	4681                	li	a3,0
    8020c1b4:	ffffe097          	auipc	ra,0xffffe
    8020c1b8:	2c8080e7          	jalr	712(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020c1bc:	7942                	ld	s2,48(sp)
    8020c1be:	74e2                	ld	s1,56(sp)
    8020c1c0:	6406                	ld	s0,64(sp)
    8020c1c2:	60a6                	ld	ra,72(sp)
    8020c1c4:	6161                	addi	sp,sp,80
    8020c1c6:	8082                	ret

000000008020c1c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h056fc685b1c7ea74E>:
    8020c1c8:	715d                	addi	sp,sp,-80
    8020c1ca:	e486                	sd	ra,72(sp)
    8020c1cc:	e0a2                	sd	s0,64(sp)
    8020c1ce:	fc26                	sd	s1,56(sp)
    8020c1d0:	f84a                	sd	s2,48(sp)
    8020c1d2:	00053903          	ld	s2,0(a0)
    8020c1d6:	852e                	mv	a0,a1
    8020c1d8:	00495593          	srli	a1,s2,0x4
    8020c1dc:	02700693          	li	a3,39
    8020c1e0:	27100713          	li	a4,625

000000008020c1e4 <.LBB470_10>:
    8020c1e4:	00004817          	auipc	a6,0x4
    8020c1e8:	38080813          	addi	a6,a6,896 # 80210564 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.225>
    8020c1ec:	02e5f363          	bgeu	a1,a4,8020c212 <.LBB470_10+0x2e>
    8020c1f0:	06300593          	li	a1,99
    8020c1f4:	0f25c063          	blt	a1,s2,8020c2d4 <.LBB470_10+0xf0>
    8020c1f8:	45a5                	li	a1,9
    8020c1fa:	1325cd63          	blt	a1,s2,8020c334 <.LBB470_10+0x150>
    8020c1fe:	fff68593          	addi	a1,a3,-1
    8020c202:	00910613          	addi	a2,sp,9
    8020c206:	962e                	add	a2,a2,a1
    8020c208:	03090693          	addi	a3,s2,48
    8020c20c:	00d60023          	sb	a3,0(a2)
    8020c210:	a291                	j	8020c354 <.LBB470_10+0x170>
    8020c212:	4681                	li	a3,0
    8020c214:	001a35b7          	lui	a1,0x1a3
    8020c218:	6e35859b          	addiw	a1,a1,1763
    8020c21c:	05ba                	slli	a1,a1,0xe
    8020c21e:	ac758593          	addi	a1,a1,-1337 # 1a2ac7 <.Lline_table_start0+0x1835ae>
    8020c222:	05ba                	slli	a1,a1,0xe
    8020c224:	43358593          	addi	a1,a1,1075
    8020c228:	05b6                	slli	a1,a1,0xd
    8020c22a:	94b58893          	addi	a7,a1,-1717
    8020c22e:	6589                	lui	a1,0x2
    8020c230:	7105831b          	addiw	t1,a1,1808
    8020c234:	65c1                	lui	a1,0x10
    8020c236:	ffc58e1b          	addiw	t3,a1,-4
    8020c23a:	0051f737          	lui	a4,0x51f
    8020c23e:	b857071b          	addiw	a4,a4,-1147
    8020c242:	0736                	slli	a4,a4,0xd
    8020c244:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x4ffebe>
    8020c248:	073a                	slli	a4,a4,0xe
    8020c24a:	28f70713          	addi	a4,a4,655
    8020c24e:	0732                	slli	a4,a4,0xc
    8020c250:	5c370e93          	addi	t4,a4,1475
    8020c254:	06400293          	li	t0,100
    8020c258:	ffe58f1b          	addiw	t5,a1,-2
    8020c25c:	00910393          	addi	t2,sp,9
    8020c260:	05f5e5b7          	lui	a1,0x5f5e
    8020c264:	0ff58f9b          	addiw	t6,a1,255
    8020c268:	864a                	mv	a2,s2
    8020c26a:	031937b3          	mulhu	a5,s2,a7
    8020c26e:	00b7d913          	srli	s2,a5,0xb
    8020c272:	02690733          	mul	a4,s2,t1
    8020c276:	40e60733          	sub	a4,a2,a4
    8020c27a:	01c775b3          	and	a1,a4,t3
    8020c27e:	8189                	srli	a1,a1,0x2
    8020c280:	03d5b5b3          	mulhu	a1,a1,t4
    8020c284:	8189                	srli	a1,a1,0x2
    8020c286:	00159413          	slli	s0,a1,0x1
    8020c28a:	025585b3          	mul	a1,a1,t0
    8020c28e:	40b705b3          	sub	a1,a4,a1
    8020c292:	0586                	slli	a1,a1,0x1
    8020c294:	01e5f5b3          	and	a1,a1,t5
    8020c298:	01040733          	add	a4,s0,a6
    8020c29c:	00d38433          	add	s0,t2,a3
    8020c2a0:	00074483          	lbu	s1,0(a4)
    8020c2a4:	00170703          	lb	a4,1(a4)
    8020c2a8:	95c2                	add	a1,a1,a6
    8020c2aa:	00158783          	lb	a5,1(a1) # 5f5e001 <.Lline_table_start0+0x5f3eae8>
    8020c2ae:	0005c583          	lbu	a1,0(a1)
    8020c2b2:	02e40223          	sb	a4,36(s0)
    8020c2b6:	029401a3          	sb	s1,35(s0)
    8020c2ba:	02f40323          	sb	a5,38(s0)
    8020c2be:	02b402a3          	sb	a1,37(s0)
    8020c2c2:	16f1                	addi	a3,a3,-4
    8020c2c4:	facfe2e3          	bltu	t6,a2,8020c268 <.LBB470_10+0x84>
    8020c2c8:	02768693          	addi	a3,a3,39
    8020c2cc:	06300593          	li	a1,99
    8020c2d0:	f325d4e3          	bge	a1,s2,8020c1f8 <.LBB470_10+0x14>
    8020c2d4:	65c1                	lui	a1,0x10
    8020c2d6:	ffc5861b          	addiw	a2,a1,-4
    8020c2da:	00c97633          	and	a2,s2,a2
    8020c2de:	8209                	srli	a2,a2,0x2
    8020c2e0:	0051f737          	lui	a4,0x51f
    8020c2e4:	b857071b          	addiw	a4,a4,-1147
    8020c2e8:	0736                	slli	a4,a4,0xd
    8020c2ea:	3d770713          	addi	a4,a4,983 # 51f3d7 <.Lline_table_start0+0x4ffebe>
    8020c2ee:	073a                	slli	a4,a4,0xe
    8020c2f0:	28f70713          	addi	a4,a4,655
    8020c2f4:	0732                	slli	a4,a4,0xc
    8020c2f6:	5c370713          	addi	a4,a4,1475
    8020c2fa:	02e63633          	mulhu	a2,a2,a4
    8020c2fe:	8209                	srli	a2,a2,0x2
    8020c300:	06400713          	li	a4,100
    8020c304:	02e60733          	mul	a4,a2,a4
    8020c308:	40e90733          	sub	a4,s2,a4
    8020c30c:	0706                	slli	a4,a4,0x1
    8020c30e:	35f9                	addiw	a1,a1,-2
    8020c310:	8df9                	and	a1,a1,a4
    8020c312:	16f9                	addi	a3,a3,-2
    8020c314:	95c2                	add	a1,a1,a6
    8020c316:	00158703          	lb	a4,1(a1) # 10001 <.Lline_table_start0+0xd992>
    8020c31a:	0005c583          	lbu	a1,0(a1)
    8020c31e:	00910793          	addi	a5,sp,9
    8020c322:	97b6                	add	a5,a5,a3
    8020c324:	00e780a3          	sb	a4,1(a5)
    8020c328:	00b78023          	sb	a1,0(a5)
    8020c32c:	8932                	mv	s2,a2
    8020c32e:	45a5                	li	a1,9
    8020c330:	ed25d7e3          	bge	a1,s2,8020c1fe <.LBB470_10+0x1a>
    8020c334:	00191613          	slli	a2,s2,0x1
    8020c338:	ffe68593          	addi	a1,a3,-2
    8020c33c:	9642                	add	a2,a2,a6
    8020c33e:	00160683          	lb	a3,1(a2)
    8020c342:	00064603          	lbu	a2,0(a2)
    8020c346:	00910713          	addi	a4,sp,9
    8020c34a:	972e                	add	a4,a4,a1
    8020c34c:	00d700a3          	sb	a3,1(a4)
    8020c350:	00c70023          	sb	a2,0(a4)
    8020c354:	00910613          	addi	a2,sp,9
    8020c358:	00b60733          	add	a4,a2,a1
    8020c35c:	02700613          	li	a2,39
    8020c360:	40b607b3          	sub	a5,a2,a1

000000008020c364 <.LBB470_11>:
    8020c364:	00004617          	auipc	a2,0x4
    8020c368:	f8460613          	addi	a2,a2,-124 # 802102e8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.33>
    8020c36c:	4585                	li	a1,1
    8020c36e:	4681                	li	a3,0
    8020c370:	ffffe097          	auipc	ra,0xffffe
    8020c374:	10c080e7          	jalr	268(ra) # 8020a47c <_ZN4core3fmt9Formatter12pad_integral17h005290bf5c80af87E>
    8020c378:	7942                	ld	s2,48(sp)
    8020c37a:	74e2                	ld	s1,56(sp)
    8020c37c:	6406                	ld	s0,64(sp)
    8020c37e:	60a6                	ld	ra,72(sp)
    8020c380:	6161                	addi	sp,sp,80
    8020c382:	8082                	ret

000000008020c384 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h9b30d63a2778a2bdE>:
    8020c384:	7590                	ld	a2,40(a1)
    8020c386:	7188                	ld	a0,32(a1)
    8020c388:	6e1c                	ld	a5,24(a2)

000000008020c38a <.LBB494_1>:
    8020c38a:	00005597          	auipc	a1,0x5
    8020c38e:	b5658593          	addi	a1,a1,-1194 # 80210ee0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.541>
    8020c392:	4615                	li	a2,5
    8020c394:	8782                	jr	a5

000000008020c396 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3d7355099627c911E>:
    8020c396:	1141                	addi	sp,sp,-16
    8020c398:	e406                	sd	ra,8(sp)
    8020c39a:	6108                	ld	a0,0(a0)
    8020c39c:	6108                	ld	a0,0(a0)
    8020c39e:	e02a                	sd	a0,0(sp)
    8020c3a0:	850a                	mv	a0,sp
    8020c3a2:	00000097          	auipc	ra,0x0
    8020c3a6:	90e080e7          	jalr	-1778(ra) # 8020bcb0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>
    8020c3aa:	60a2                	ld	ra,8(sp)
    8020c3ac:	0141                	addi	sp,sp,16
    8020c3ae:	8082                	ret

000000008020c3b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h583af7b57dae1f0cE>:
    8020c3b0:	6108                	ld	a0,0(a0)
    8020c3b2:	00000317          	auipc	t1,0x0
    8020c3b6:	8fe30067          	jr	-1794(t1) # 8020bcb0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h65700e50f045d1fbE>

000000008020c3ba <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc803731d5e879d1bE>:
    8020c3ba:	6510                	ld	a2,8(a0)
    8020c3bc:	6108                	ld	a0,0(a0)
    8020c3be:	6e1c                	ld	a5,24(a2)
    8020c3c0:	8782                	jr	a5

000000008020c3c2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0ab56ae6638005b3E>:
    8020c3c2:	6114                	ld	a3,0(a0)
    8020c3c4:	6510                	ld	a2,8(a0)
    8020c3c6:	852e                	mv	a0,a1
    8020c3c8:	85b6                	mv	a1,a3
    8020c3ca:	ffffe317          	auipc	t1,0xffffe
    8020c3ce:	34230067          	jr	834(t1) # 8020a70c <_ZN4core3fmt9Formatter3pad17hcc8646e0ded6ea87E>

000000008020c3d2 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E>:
    8020c3d2:	1141                	addi	sp,sp,-16
    8020c3d4:	e406                	sd	ra,8(sp)
    8020c3d6:	4681                	li	a3,0
    8020c3d8:	0005059b          	sext.w	a1,a0
    8020c3dc:	6645                	lui	a2,0x11
    8020c3de:	d246071b          	addiw	a4,a2,-732
    8020c3e2:	00b5161b          	slliw	a2,a0,0xb
    8020c3e6:	00e5e363          	bltu	a1,a4,8020c3ec <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17hc6378705226a5029E+0x1a>
    8020c3ea:	46bd                	li	a3,15
    8020c3ec:	00868713          	addi	a4,a3,8
    8020c3f0:	00271793          	slli	a5,a4,0x2

000000008020c3f4 <.LBB614_29>:
    8020c3f4:	00005597          	auipc	a1,0x5
    8020c3f8:	af458593          	addi	a1,a1,-1292 # 80210ee8 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hfd93ef645f5e63d2E>
    8020c3fc:	97ae                	add	a5,a5,a1
    8020c3fe:	439c                	lw	a5,0(a5)
    8020c400:	00b7979b          	slliw	a5,a5,0xb
    8020c404:	00f66363          	bltu	a2,a5,8020c40a <.LBB614_29+0x16>
    8020c408:	86ba                	mv	a3,a4
    8020c40a:	00468713          	addi	a4,a3,4
    8020c40e:	00271793          	slli	a5,a4,0x2
    8020c412:	97ae                	add	a5,a5,a1
    8020c414:	439c                	lw	a5,0(a5)
    8020c416:	00b7979b          	slliw	a5,a5,0xb
    8020c41a:	00f66363          	bltu	a2,a5,8020c420 <.LBB614_29+0x2c>
    8020c41e:	86ba                	mv	a3,a4
    8020c420:	00268713          	addi	a4,a3,2
    8020c424:	00271793          	slli	a5,a4,0x2
    8020c428:	97ae                	add	a5,a5,a1
    8020c42a:	439c                	lw	a5,0(a5)
    8020c42c:	00b7979b          	slliw	a5,a5,0xb
    8020c430:	00f66363          	bltu	a2,a5,8020c436 <.LBB614_29+0x42>
    8020c434:	86ba                	mv	a3,a4
    8020c436:	00168713          	addi	a4,a3,1
    8020c43a:	00271793          	slli	a5,a4,0x2
    8020c43e:	97ae                	add	a5,a5,a1
    8020c440:	439c                	lw	a5,0(a5)
    8020c442:	00b7979b          	slliw	a5,a5,0xb
    8020c446:	00f66363          	bltu	a2,a5,8020c44c <.LBB614_29+0x58>
    8020c44a:	86ba                	mv	a3,a4
    8020c44c:	00269713          	slli	a4,a3,0x2
    8020c450:	972e                	add	a4,a4,a1
    8020c452:	4318                	lw	a4,0(a4)
    8020c454:	00b7171b          	slliw	a4,a4,0xb
    8020c458:	00c737b3          	sltu	a5,a4,a2
    8020c45c:	8e39                	xor	a2,a2,a4
    8020c45e:	00163613          	seqz	a2,a2
    8020c462:	963e                	add	a2,a2,a5
    8020c464:	00d60733          	add	a4,a2,a3
    8020c468:	46f9                	li	a3,30
    8020c46a:	0ae6e463          	bltu	a3,a4,8020c512 <.LBB614_32>
    8020c46e:	00271793          	slli	a5,a4,0x2
    8020c472:	2b100613          	li	a2,689
    8020c476:	00d70763          	beq	a4,a3,8020c484 <.LBB614_29+0x90>
    8020c47a:	00f58633          	add	a2,a1,a5
    8020c47e:	00466603          	lwu	a2,4(a2) # 11004 <.Lline_table_start0+0xe995>
    8020c482:	8255                	srli	a2,a2,0x15
    8020c484:	fff70693          	addi	a3,a4,-1
    8020c488:	00d77463          	bgeu	a4,a3,8020c490 <.LBB614_29+0x9c>
    8020c48c:	4701                	li	a4,0
    8020c48e:	a821                	j	8020c4a6 <.LBB614_29+0xb2>
    8020c490:	477d                	li	a4,31
    8020c492:	08e6fb63          	bgeu	a3,a4,8020c528 <.LBB614_33>
    8020c496:	068a                	slli	a3,a3,0x2
    8020c498:	96ae                	add	a3,a3,a1
    8020c49a:	0006e683          	lwu	a3,0(a3)
    8020c49e:	00200737          	lui	a4,0x200
    8020c4a2:	377d                	addiw	a4,a4,-1
    8020c4a4:	8f75                	and	a4,a4,a3
    8020c4a6:	95be                	add	a1,a1,a5
    8020c4a8:	0005e583          	lwu	a1,0(a1)
    8020c4ac:	81d5                	srli	a1,a1,0x15
    8020c4ae:	00158693          	addi	a3,a1,1
    8020c4b2:	02d60f63          	beq	a2,a3,8020c4f0 <.LBB614_30+0x22>
    8020c4b6:	2b100793          	li	a5,689
    8020c4ba:	882e                	mv	a6,a1
    8020c4bc:	00b7e463          	bltu	a5,a1,8020c4c4 <.LBB614_29+0xd0>
    8020c4c0:	2b100813          	li	a6,689
    8020c4c4:	4781                	li	a5,0
    8020c4c6:	40e5073b          	subw	a4,a0,a4
    8020c4ca:	fff60513          	addi	a0,a2,-1

000000008020c4ce <.LBB614_30>:
    8020c4ce:	00005617          	auipc	a2,0x5
    8020c4d2:	a9660613          	addi	a2,a2,-1386 # 80210f64 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h95afd816ac45989cE>
    8020c4d6:	02b80263          	beq	a6,a1,8020c4fa <.LBB614_31>
    8020c4da:	00c586b3          	add	a3,a1,a2
    8020c4de:	0006c683          	lbu	a3,0(a3)
    8020c4e2:	9fb5                	addw	a5,a5,a3
    8020c4e4:	00f76663          	bltu	a4,a5,8020c4f0 <.LBB614_30+0x22>
    8020c4e8:	0585                	addi	a1,a1,1
    8020c4ea:	feb516e3          	bne	a0,a1,8020c4d6 <.LBB614_30+0x8>
    8020c4ee:	85aa                	mv	a1,a0
    8020c4f0:	0015f513          	andi	a0,a1,1
    8020c4f4:	60a2                	ld	ra,8(sp)
    8020c4f6:	0141                	addi	sp,sp,16
    8020c4f8:	8082                	ret

000000008020c4fa <.LBB614_31>:
    8020c4fa:	00005617          	auipc	a2,0x5
    8020c4fe:	99660613          	addi	a2,a2,-1642 # 80210e90 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.355>
    8020c502:	2b100593          	li	a1,689
    8020c506:	8542                	mv	a0,a6
    8020c508:	ffffd097          	auipc	ra,0xffffd
    8020c50c:	326080e7          	jalr	806(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

000000008020c512 <.LBB614_32>:
    8020c512:	00005617          	auipc	a2,0x5
    8020c516:	96660613          	addi	a2,a2,-1690 # 80210e78 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.354>
    8020c51a:	45fd                	li	a1,31
    8020c51c:	853a                	mv	a0,a4
    8020c51e:	ffffd097          	auipc	ra,0xffffd
    8020c522:	310080e7          	jalr	784(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

000000008020c528 <.LBB614_33>:
    8020c528:	00005617          	auipc	a2,0x5
    8020c52c:	98060613          	addi	a2,a2,-1664 # 80210ea8 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.356>
    8020c530:	45fd                	li	a1,31
    8020c532:	8536                	mv	a0,a3
    8020c534:	ffffd097          	auipc	ra,0xffffd
    8020c538:	2fa080e7          	jalr	762(ra) # 8020982e <_ZN4core9panicking18panic_bounds_check17ha760e6d8204f3836E>
	...

000000008020c53e <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17h0283edf57016c8a1E>:
    8020c53e:	7139                	addi	sp,sp,-64
    8020c540:	fc06                	sd	ra,56(sp)
    8020c542:	f822                	sd	s0,48(sp)
    8020c544:	f426                	sd	s1,40(sp)
    8020c546:	f04a                	sd	s2,32(sp)
    8020c548:	842e                	mv	s0,a1
    8020c54a:	758c                	ld	a1,40(a1)
    8020c54c:	7014                	ld	a3,32(s0)
    8020c54e:	6d98                	ld	a4,24(a1)
    8020c550:	84aa                	mv	s1,a0
    8020c552:	00850913          	addi	s2,a0,8

000000008020c556 <.LBB624_8>:
    8020c556:	00005597          	auipc	a1,0x5
    8020c55a:	cbf58593          	addi	a1,a1,-833 # 80211215 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.641>
    8020c55e:	4619                	li	a2,6
    8020c560:	8536                	mv	a0,a3
    8020c562:	9702                	jalr	a4
    8020c564:	e42a                	sd	a0,8(sp)
    8020c566:	e022                	sd	s0,0(sp)
    8020c568:	ec26                	sd	s1,24(sp)

000000008020c56a <.LBB624_9>:
    8020c56a:	00005597          	auipc	a1,0x5
    8020c56e:	cb158593          	addi	a1,a1,-847 # 8021121b <.Lanon.9d4bfc86079e95d674f3cded52b1db19.642>

000000008020c572 <.LBB624_10>:
    8020c572:	00005717          	auipc	a4,0x5
    8020c576:	94e70713          	addi	a4,a4,-1714 # 80210ec0 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.418>
    8020c57a:	840a                	mv	s0,sp
    8020c57c:	0834                	addi	a3,sp,24
    8020c57e:	4615                	li	a2,5
    8020c580:	8522                	mv	a0,s0
    8020c582:	ffffd097          	auipc	ra,0xffffd
    8020c586:	458080e7          	jalr	1112(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020c58a:	ec4a                	sd	s2,24(sp)

000000008020c58c <.LBB624_11>:
    8020c58c:	00005597          	auipc	a1,0x5
    8020c590:	c9458593          	addi	a1,a1,-876 # 80211220 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.643>

000000008020c594 <.LBB624_12>:
    8020c594:	00005717          	auipc	a4,0x5
    8020c598:	c9470713          	addi	a4,a4,-876 # 80211228 <.Lanon.9d4bfc86079e95d674f3cded52b1db19.644>
    8020c59c:	0834                	addi	a3,sp,24
    8020c59e:	4619                	li	a2,6
    8020c5a0:	8522                	mv	a0,s0
    8020c5a2:	ffffd097          	auipc	ra,0xffffd
    8020c5a6:	438080e7          	jalr	1080(ra) # 802099da <_ZN4core3fmt8builders11DebugStruct5field17h376881aa7803673dE>
    8020c5aa:	00914503          	lbu	a0,9(sp)
    8020c5ae:	00814583          	lbu	a1,8(sp)
    8020c5b2:	c91d                	beqz	a0,8020c5e8 <.LBB624_14+0x12>
    8020c5b4:	4505                	li	a0,1
    8020c5b6:	e595                	bnez	a1,8020c5e2 <.LBB624_14+0xc>
    8020c5b8:	6502                	ld	a0,0(sp)
    8020c5ba:	750c                	ld	a1,40(a0)
    8020c5bc:	03054603          	lbu	a2,48(a0)
    8020c5c0:	7108                	ld	a0,32(a0)
    8020c5c2:	6d94                	ld	a3,24(a1)
    8020c5c4:	00467593          	andi	a1,a2,4
    8020c5c8:	e599                	bnez	a1,8020c5d6 <.LBB624_14>

000000008020c5ca <.LBB624_13>:
    8020c5ca:	00004597          	auipc	a1,0x4
    8020c5ce:	e6158593          	addi	a1,a1,-415 # 8021042b <.Lanon.9d4bfc86079e95d674f3cded52b1db19.202>
    8020c5d2:	4609                	li	a2,2
    8020c5d4:	a031                	j	8020c5e0 <.LBB624_14+0xa>

000000008020c5d6 <.LBB624_14>:
    8020c5d6:	00004597          	auipc	a1,0x4
    8020c5da:	e5458593          	addi	a1,a1,-428 # 8021042a <.Lanon.9d4bfc86079e95d674f3cded52b1db19.201>
    8020c5de:	4605                	li	a2,1
    8020c5e0:	9682                	jalr	a3
    8020c5e2:	00a10423          	sb	a0,8(sp)
    8020c5e6:	85aa                	mv	a1,a0
    8020c5e8:	00b03533          	snez	a0,a1
    8020c5ec:	7902                	ld	s2,32(sp)
    8020c5ee:	74a2                	ld	s1,40(sp)
    8020c5f0:	7442                	ld	s0,48(sp)
    8020c5f2:	70e2                	ld	ra,56(sp)
    8020c5f4:	6121                	addi	sp,sp,64
    8020c5f6:	8082                	ret

000000008020c5f8 <memcpy>:
    8020c5f8:	ca11                	beqz	a2,8020c60c <memcpy+0x14>
    8020c5fa:	86aa                	mv	a3,a0
    8020c5fc:	00058703          	lb	a4,0(a1)
    8020c600:	00e68023          	sb	a4,0(a3)
    8020c604:	167d                	addi	a2,a2,-1
    8020c606:	0685                	addi	a3,a3,1
    8020c608:	0585                	addi	a1,a1,1
    8020c60a:	fa6d                	bnez	a2,8020c5fc <memcpy+0x4>
    8020c60c:	8082                	ret

000000008020c60e <memmove>:
    8020c60e:	40b506b3          	sub	a3,a0,a1
    8020c612:	02c6f163          	bgeu	a3,a2,8020c634 <memmove+0x26>
    8020c616:	fff50693          	addi	a3,a0,-1
    8020c61a:	15fd                	addi	a1,a1,-1
    8020c61c:	00c58733          	add	a4,a1,a2
    8020c620:	00070703          	lb	a4,0(a4)
    8020c624:	fff60793          	addi	a5,a2,-1
    8020c628:	9636                	add	a2,a2,a3
    8020c62a:	00e60023          	sb	a4,0(a2)
    8020c62e:	863e                	mv	a2,a5
    8020c630:	f7f5                	bnez	a5,8020c61c <memmove+0xe>
    8020c632:	a819                	j	8020c648 <memmove+0x3a>
    8020c634:	ca11                	beqz	a2,8020c648 <memmove+0x3a>
    8020c636:	86aa                	mv	a3,a0
    8020c638:	00058703          	lb	a4,0(a1)
    8020c63c:	00e68023          	sb	a4,0(a3)
    8020c640:	167d                	addi	a2,a2,-1
    8020c642:	0685                	addi	a3,a3,1
    8020c644:	0585                	addi	a1,a1,1
    8020c646:	fa6d                	bnez	a2,8020c638 <memmove+0x2a>
    8020c648:	8082                	ret

000000008020c64a <memset>:
    8020c64a:	c619                	beqz	a2,8020c658 <memset+0xe>
    8020c64c:	86aa                	mv	a3,a0
    8020c64e:	00b68023          	sb	a1,0(a3)
    8020c652:	167d                	addi	a2,a2,-1
    8020c654:	0685                	addi	a3,a3,1
    8020c656:	fe65                	bnez	a2,8020c64e <memset+0x4>
    8020c658:	8082                	ret
