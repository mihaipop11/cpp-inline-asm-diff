
main-inline:     file format elf64-x86-64


Disassembly of section .init:

0000000000400390 <_init>:
  400390:	48 83 ec 08          	sub    rsp,0x8
  400394:	48 8b 05 5d 0c 20 00 	mov    rax,QWORD PTR [rip+0x200c5d]        # 600ff8 <_DYNAMIC+0x1d0>
  40039b:	48 85 c0             	test   rax,rax
  40039e:	74 05                	je     4003a5 <_init+0x15>
  4003a0:	e8 2b 00 00 00       	call   4003d0 <__libc_start_main@plt+0x10>
  4003a5:	48 83 c4 08          	add    rsp,0x8
  4003a9:	c3                   	ret    

Disassembly of section .plt:

00000000004003b0 <__libc_start_main@plt-0x10>:
  4003b0:	ff 35 52 0c 20 00    	push   QWORD PTR [rip+0x200c52]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003b6:	ff 25 54 0c 20 00    	jmp    QWORD PTR [rip+0x200c54]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004003c0 <__libc_start_main@plt>:
  4003c0:	ff 25 52 0c 20 00    	jmp    QWORD PTR [rip+0x200c52]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003c6:	68 00 00 00 00       	push   0x0
  4003cb:	e9 e0 ff ff ff       	jmp    4003b0 <_init+0x20>

Disassembly of section .plt.got:

00000000004003d0 <.plt.got>:
  4003d0:	ff 25 22 0c 20 00    	jmp    QWORD PTR [rip+0x200c22]        # 600ff8 <_DYNAMIC+0x1d0>
  4003d6:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000004003e0 <main>:
  4003e0:	b8 01 00 00 00       	mov    eax,0x1
  4003e5:	c3                   	ret    
  4003e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4003ed:	00 00 00 

00000000004003f0 <_start>:
  4003f0:	31 ed                	xor    ebp,ebp
  4003f2:	49 89 d1             	mov    r9,rdx
  4003f5:	5e                   	pop    rsi
  4003f6:	48 89 e2             	mov    rdx,rsp
  4003f9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4003fd:	50                   	push   rax
  4003fe:	54                   	push   rsp
  4003ff:	49 c7 c0 60 05 40 00 	mov    r8,0x400560
  400406:	48 c7 c1 f0 04 40 00 	mov    rcx,0x4004f0
  40040d:	48 c7 c7 e0 03 40 00 	mov    rdi,0x4003e0
  400414:	e8 a7 ff ff ff       	call   4003c0 <__libc_start_main@plt>
  400419:	f4                   	hlt    
  40041a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400420 <deregister_tm_clones>:
  400420:	b8 37 10 60 00       	mov    eax,0x601037
  400425:	55                   	push   rbp
  400426:	48 2d 30 10 60 00    	sub    rax,0x601030
  40042c:	48 83 f8 0e          	cmp    rax,0xe
  400430:	48 89 e5             	mov    rbp,rsp
  400433:	76 1b                	jbe    400450 <deregister_tm_clones+0x30>
  400435:	b8 00 00 00 00       	mov    eax,0x0
  40043a:	48 85 c0             	test   rax,rax
  40043d:	74 11                	je     400450 <deregister_tm_clones+0x30>
  40043f:	5d                   	pop    rbp
  400440:	bf 30 10 60 00       	mov    edi,0x601030
  400445:	ff e0                	jmp    rax
  400447:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40044e:	00 00 
  400450:	5d                   	pop    rbp
  400451:	c3                   	ret    
  400452:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400456:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40045d:	00 00 00 

0000000000400460 <register_tm_clones>:
  400460:	be 30 10 60 00       	mov    esi,0x601030
  400465:	55                   	push   rbp
  400466:	48 81 ee 30 10 60 00 	sub    rsi,0x601030
  40046d:	48 c1 fe 03          	sar    rsi,0x3
  400471:	48 89 e5             	mov    rbp,rsp
  400474:	48 89 f0             	mov    rax,rsi
  400477:	48 c1 e8 3f          	shr    rax,0x3f
  40047b:	48 01 c6             	add    rsi,rax
  40047e:	48 d1 fe             	sar    rsi,1
  400481:	74 15                	je     400498 <register_tm_clones+0x38>
  400483:	b8 00 00 00 00       	mov    eax,0x0
  400488:	48 85 c0             	test   rax,rax
  40048b:	74 0b                	je     400498 <register_tm_clones+0x38>
  40048d:	5d                   	pop    rbp
  40048e:	bf 30 10 60 00       	mov    edi,0x601030
  400493:	ff e0                	jmp    rax
  400495:	0f 1f 00             	nop    DWORD PTR [rax]
  400498:	5d                   	pop    rbp
  400499:	c3                   	ret    
  40049a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004004a0 <__do_global_dtors_aux>:
  4004a0:	80 3d 89 0b 20 00 00 	cmp    BYTE PTR [rip+0x200b89],0x0        # 601030 <__TMC_END__>
  4004a7:	75 11                	jne    4004ba <__do_global_dtors_aux+0x1a>
  4004a9:	55                   	push   rbp
  4004aa:	48 89 e5             	mov    rbp,rsp
  4004ad:	e8 6e ff ff ff       	call   400420 <deregister_tm_clones>
  4004b2:	5d                   	pop    rbp
  4004b3:	c6 05 76 0b 20 00 01 	mov    BYTE PTR [rip+0x200b76],0x1        # 601030 <__TMC_END__>
  4004ba:	f3 c3                	repz ret 
  4004bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004004c0 <frame_dummy>:
  4004c0:	bf 20 0e 60 00       	mov    edi,0x600e20
  4004c5:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  4004c9:	75 05                	jne    4004d0 <frame_dummy+0x10>
  4004cb:	eb 93                	jmp    400460 <register_tm_clones>
  4004cd:	0f 1f 00             	nop    DWORD PTR [rax]
  4004d0:	b8 00 00 00 00       	mov    eax,0x0
  4004d5:	48 85 c0             	test   rax,rax
  4004d8:	74 f1                	je     4004cb <frame_dummy+0xb>
  4004da:	55                   	push   rbp
  4004db:	48 89 e5             	mov    rbp,rsp
  4004de:	ff d0                	call   rax
  4004e0:	5d                   	pop    rbp
  4004e1:	e9 7a ff ff ff       	jmp    400460 <register_tm_clones>
  4004e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4004ed:	00 00 00 

00000000004004f0 <__libc_csu_init>:
  4004f0:	41 57                	push   r15
  4004f2:	41 56                	push   r14
  4004f4:	41 89 ff             	mov    r15d,edi
  4004f7:	41 55                	push   r13
  4004f9:	41 54                	push   r12
  4004fb:	4c 8d 25 0e 09 20 00 	lea    r12,[rip+0x20090e]        # 600e10 <__frame_dummy_init_array_entry>
  400502:	55                   	push   rbp
  400503:	48 8d 2d 0e 09 20 00 	lea    rbp,[rip+0x20090e]        # 600e18 <__init_array_end>
  40050a:	53                   	push   rbx
  40050b:	49 89 f6             	mov    r14,rsi
  40050e:	49 89 d5             	mov    r13,rdx
  400511:	4c 29 e5             	sub    rbp,r12
  400514:	48 83 ec 08          	sub    rsp,0x8
  400518:	48 c1 fd 03          	sar    rbp,0x3
  40051c:	e8 6f fe ff ff       	call   400390 <_init>
  400521:	48 85 ed             	test   rbp,rbp
  400524:	74 20                	je     400546 <__libc_csu_init+0x56>
  400526:	31 db                	xor    ebx,ebx
  400528:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40052f:	00 
  400530:	4c 89 ea             	mov    rdx,r13
  400533:	4c 89 f6             	mov    rsi,r14
  400536:	44 89 ff             	mov    edi,r15d
  400539:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40053d:	48 83 c3 01          	add    rbx,0x1
  400541:	48 39 eb             	cmp    rbx,rbp
  400544:	75 ea                	jne    400530 <__libc_csu_init+0x40>
  400546:	48 83 c4 08          	add    rsp,0x8
  40054a:	5b                   	pop    rbx
  40054b:	5d                   	pop    rbp
  40054c:	41 5c                	pop    r12
  40054e:	41 5d                	pop    r13
  400550:	41 5e                	pop    r14
  400552:	41 5f                	pop    r15
  400554:	c3                   	ret    
  400555:	90                   	nop
  400556:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40055d:	00 00 00 

0000000000400560 <__libc_csu_fini>:
  400560:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400564 <_fini>:
  400564:	48 83 ec 08          	sub    rsp,0x8
  400568:	48 83 c4 08          	add    rsp,0x8
  40056c:	c3                   	ret    
