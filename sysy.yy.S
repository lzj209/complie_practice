
sysy.yy.o:	file format mach-o 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000000000000 <_yylex>:
       0: 55                           	pushq	%rbp
       1: 48 89 e5                     	movq	%rsp, %rbp
       4: 48 83 ec 40                  	subq	$64, %rsp
       8: 83 3d ff ff ff ff 00         	cmpl	$0, -1(%rip)  # e <_yylex+0xe>
       f: 0f 85 d0 00 00 00            	jne	0xe5 <_yylex+0xe5>
      15: c7 05 fc ff ff ff 01 00 00 00	movl	$1, -4(%rip)  # 1b <_yylex+0x1b>
      1f: 83 3d ff ff ff ff 00         	cmpl	$0, -1(%rip)  # 25 <_yylex+0x25>
      26: 0f 85 0a 00 00 00            	jne	0x36 <_yylex+0x36>
      2c: c7 05 fc ff ff ff 01 00 00 00	movl	$1, -4(%rip)  # 32 <_yylex+0x32>
      36: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 3d <_yylex+0x3d>
      3e: 0f 85 11 00 00 00            	jne	0x55 <_yylex+0x55>
      44: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 4b <_yylex+0x4b>
      4b: 48 8b 00                     	movq	(%rax), %rax
      4e: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 55 <_yylex+0x55>
      55: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 5c <_yylex+0x5c>
      5d: 0f 85 11 00 00 00            	jne	0x74 <_yylex+0x74>
      63: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 6a <_yylex+0x6a>
      6a: 48 8b 00                     	movq	(%rax), %rax
      6d: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 74 <_yylex+0x74>
      74: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 7b <_yylex+0x7b>
      7c: 0f 84 1b 00 00 00            	je	0x9d <_yylex+0x9d>
      82: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 89 <_yylex+0x89>
      89: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 90 <_yylex+0x90>
      90: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
      94: 48 89 45 d0                  	movq	%rax, -48(%rbp)
      98: e9 0d 00 00 00               	jmp	0xaa <_yylex+0xaa>
      9d: 31 c0                        	xorl	%eax, %eax
      9f: 89 c1                        	movl	%eax, %ecx
      a1: 48 89 4d d0                  	movq	%rcx, -48(%rbp)
      a5: e9 00 00 00 00               	jmp	0xaa <_yylex+0xaa>
      aa: 48 8b 45 d0                  	movq	-48(%rbp), %rax
      ae: 48 83 f8 00                  	cmpq	$0, %rax
      b2: 0f 85 28 00 00 00            	jne	0xe0 <_yylex+0xe0>
      b8: e8 00 00 00 00               	callq	0xbd <_yylex+0xbd>
      bd: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # c4 <_yylex+0xc4>
      c4: be 00 40 00 00               	movl	$16384, %esi
      c9: e8 00 00 00 00               	callq	0xce <_yylex+0xce>
      ce: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # d5 <_yylex+0xd5>
      d5: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # dc <_yylex+0xdc>
      dc: 48 89 04 d1                  	movq	%rax, (%rcx,%rdx,8)
      e0: e8 00 00 00 00               	callq	0xe5 <_yylex+0xe5>
      e5: e9 00 00 00 00               	jmp	0xea <_yylex+0xea>
      ea: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # f1 <_yylex+0xf1>
      f1: 48 89 45 f0                  	movq	%rax, -16(%rbp)
      f5: 8a 0d 00 00 00 00            	movb	(%rip), %cl  # fb <_yylex+0xfb>
      fb: 48 8b 45 f0                  	movq	-16(%rbp), %rax
      ff: 88 08                        	movb	%cl, (%rax)
     101: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     105: 48 89 45 e8                  	movq	%rax, -24(%rbp)
     109: 8b 15 00 00 00 00            	movl	(%rip), %edx  # 10f <_yylex+0x10f>
     10f: 89 55 f8                     	movl	%edx, -8(%rbp)
     112: e9 00 00 00 00               	jmp	0x117 <_yylex+0x117>
     117: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     11b: 0f b6 08                     	movzbl	(%rax), %ecx
     11e: 89 c9                        	movl	%ecx, %ecx
     120: 89 c8                        	movl	%ecx, %eax
     122: 48 8d 15 00 00 00 00         	leaq	(%rip), %rdx  # 129 <_yylex+0x129>
     129: 8b 0c 82                     	movl	(%rdx,%rax,4), %ecx
     12c: 88 4d e3                     	movb	%cl, -29(%rbp)
     12f: 48 63 45 f8                  	movslq	-8(%rbp), %rax
     133: 48 8d 15 00 00 00 00         	leaq	(%rip), %rdx  # 13a <_yylex+0x13a>
     13a: 66 83 3c 42 00               	cmpw	$0, (%rdx,%rax,2)
     13f: 0f 84 14 00 00 00            	je	0x159 <_yylex+0x159>
     145: 8b 45 f8                     	movl	-8(%rbp), %eax
     148: 89 05 00 00 00 00            	movl	%eax, (%rip)  # 14e <_yylex+0x14e>
     14e: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
     152: 48 89 0d 00 00 00 00         	movq	%rcx, (%rip)  # 159 <_yylex+0x159>
     159: e9 00 00 00 00               	jmp	0x15e <_yylex+0x15e>
     15e: 48 63 45 f8                  	movslq	-8(%rbp), %rax
     162: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # 169 <_yylex+0x169>
     169: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     16d: 0f b6 75 e3                  	movzbl	-29(%rbp), %esi
     171: 01 f2                        	addl	%esi, %edx
     173: 48 63 c2                     	movslq	%edx, %rax
     176: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # 17d <_yylex+0x17d>
     17d: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     181: 3b 55 f8                     	cmpl	-8(%rbp), %edx
     184: 0f 84 36 00 00 00            	je	0x1c0 <_yylex+0x1c0>
     18a: 48 63 45 f8                  	movslq	-8(%rbp), %rax
     18e: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # 195 <_yylex+0x195>
     195: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     199: 89 55 f8                     	movl	%edx, -8(%rbp)
     19c: 83 7d f8 4b                  	cmpl	$75, -8(%rbp)
     1a0: 0f 8c 15 00 00 00            	jl	0x1bb <_yylex+0x1bb>
     1a6: 0f b6 45 e3                  	movzbl	-29(%rbp), %eax
     1aa: 89 c0                        	movl	%eax, %eax
     1ac: 89 c1                        	movl	%eax, %ecx
     1ae: 48 8d 15 00 00 00 00         	leaq	(%rip), %rdx  # 1b5 <_yylex+0x1b5>
     1b5: 8b 04 8a                     	movl	(%rdx,%rcx,4), %eax
     1b8: 88 45 e3                     	movb	%al, -29(%rbp)
     1bb: e9 9e ff ff ff               	jmp	0x15e <_yylex+0x15e>
     1c0: 48 63 45 f8                  	movslq	-8(%rbp), %rax
     1c4: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # 1cb <_yylex+0x1cb>
     1cb: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     1cf: 0f b6 75 e3                  	movzbl	-29(%rbp), %esi
     1d3: 01 f2                        	addl	%esi, %edx
     1d5: 89 d2                        	movl	%edx, %edx
     1d7: 89 d0                        	movl	%edx, %eax
     1d9: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # 1e0 <_yylex+0x1e0>
     1e0: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     1e4: 89 55 f8                     	movl	%edx, -8(%rbp)
     1e7: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     1eb: 48 05 01 00 00 00            	addq	$1, %rax
     1f1: 48 89 45 f0                  	movq	%rax, -16(%rbp)
     1f5: 48 63 45 f8                  	movslq	-8(%rbp), %rax
     1f9: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # 200 <_yylex+0x200>
     200: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     204: 83 fa 68                     	cmpl	$104, %edx
     207: 0f 85 0a ff ff ff            	jne	0x117 <_yylex+0x117>
     20d: e9 00 00 00 00               	jmp	0x212 <_yylex+0x212>
     212: 48 63 45 f8                  	movslq	-8(%rbp), %rax
     216: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # 21d <_yylex+0x21d>
     21d: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     221: 89 55 e4                     	movl	%edx, -28(%rbp)
     224: 83 7d e4 00                  	cmpl	$0, -28(%rbp)
     228: 0f 85 26 00 00 00            	jne	0x254 <_yylex+0x254>
     22e: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 235 <_yylex+0x235>
     235: 48 89 45 f0                  	movq	%rax, -16(%rbp)
     239: 8b 0d 00 00 00 00            	movl	(%rip), %ecx  # 23f <_yylex+0x23f>
     23f: 89 4d f8                     	movl	%ecx, -8(%rbp)
     242: 48 63 45 f8                  	movslq	-8(%rbp), %rax
     246: 48 8d 15 00 00 00 00         	leaq	(%rip), %rdx  # 24d <_yylex+0x24d>
     24d: 0f bf 0c 42                  	movswl	(%rdx,%rax,2), %ecx
     251: 89 4d e4                     	movl	%ecx, -28(%rbp)
     254: 48 8b 45 e8                  	movq	-24(%rbp), %rax
     258: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 25f <_yylex+0x25f>
     25f: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     263: 48 8b 4d e8                  	movq	-24(%rbp), %rcx
     267: 48 29 c8                     	subq	%rcx, %rax
     26a: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 271 <_yylex+0x271>
     271: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     275: 8a 10                        	movb	(%rax), %dl
     277: 88 15 00 00 00 00            	movb	%dl, (%rip)  # 27d <_yylex+0x27d>
     27d: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     281: c6 00 00                     	movb	$0, (%rax)
     284: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     288: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 28f <_yylex+0x28f>
     28f: 8b 45 e4                     	movl	-28(%rbp), %eax
     292: 89 c1                        	movl	%eax, %ecx
     294: 48 89 ca                     	movq	%rcx, %rdx
     297: 48 83 ea 1b                  	subq	$27, %rdx
     29b: 48 89 4d c8                  	movq	%rcx, -56(%rbp)
     29f: 0f 87 2e 04 00 00            	ja	0x6d3 <_yylex+0x6d3>
     2a5: 48 8d 05 44 04 00 00         	leaq	1092(%rip), %rax  # 6f0 <_yylex+0x6f0>
     2ac: 48 8b 4d c8                  	movq	-56(%rbp), %rcx
     2b0: 48 63 14 88                  	movslq	(%rax,%rcx,4), %rdx
     2b4: 48 01 c2                     	addq	%rax, %rdx
     2b7: ff e2                        	jmpq	*%rdx
     2b9: 8a 05 00 00 00 00            	movb	(%rip), %al  # 2bf <_yylex+0x2bf>
     2bf: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
     2c3: 88 01                        	movb	%al, (%rcx)
     2c5: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 2cc <_yylex+0x2cc>
     2cc: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
     2d0: 8b 15 00 00 00 00            	movl	(%rip), %edx  # 2d6 <_yylex+0x2d6>
     2d6: 89 55 f8                     	movl	%edx, -8(%rbp)
     2d9: e9 34 ff ff ff               	jmp	0x212 <_yylex+0x212>
     2de: e9 fc 03 00 00               	jmp	0x6df <_yylex+0x6df>
     2e3: e9 f7 03 00 00               	jmp	0x6df <_yylex+0x6df>
     2e8: e9 f2 03 00 00               	jmp	0x6df <_yylex+0x6df>
     2ed: c7 45 fc 02 01 00 00         	movl	$258, -4(%rbp)
     2f4: e9 eb 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     2f9: c7 45 fc 03 01 00 00         	movl	$259, -4(%rbp)
     300: e9 df 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     305: c7 45 fc 04 01 00 00         	movl	$260, -4(%rbp)
     30c: e9 d3 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     311: c7 45 fc 05 01 00 00         	movl	$261, -4(%rbp)
     318: e9 c7 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     31d: c7 45 fc 06 01 00 00         	movl	$262, -4(%rbp)
     324: e9 bb 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     329: c7 45 fc 07 01 00 00         	movl	$263, -4(%rbp)
     330: e9 af 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     335: c7 45 fc 08 01 00 00         	movl	$264, -4(%rbp)
     33c: e9 a3 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     341: c7 45 fc 09 01 00 00         	movl	$265, -4(%rbp)
     348: e9 97 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     34d: c7 45 fc 0a 01 00 00         	movl	$266, -4(%rbp)
     354: e9 8b 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     359: c7 45 fc 0b 01 00 00         	movl	$267, -4(%rbp)
     360: e9 7f 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     365: c7 45 fc 0c 01 00 00         	movl	$268, -4(%rbp)
     36c: e9 73 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     371: c7 45 fc 0d 01 00 00         	movl	$269, -4(%rbp)
     378: e9 67 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     37d: c7 45 fc 0e 01 00 00         	movl	$270, -4(%rbp)
     384: e9 5b 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     389: c7 45 fc 0f 01 00 00         	movl	$271, -4(%rbp)
     390: e9 4f 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     395: c7 45 fc 10 01 00 00         	movl	$272, -4(%rbp)
     39c: e9 43 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     3a1: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 3a8 <_yylex+0x3a8>
     3a8: 0f be 08                     	movsbl	(%rax), %ecx
     3ab: 89 4d fc                     	movl	%ecx, -4(%rbp)
     3ae: e9 31 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     3b3: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 3ba <_yylex+0x3ba>
     3ba: e8 00 00 00 00               	callq	0x3bf <_yylex+0x3bf>
     3bf: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 3c6 <_yylex+0x3c6>
     3c6: 48 89 01                     	movq	%rax, (%rcx)
     3c9: c7 45 fc 11 01 00 00         	movl	$273, -4(%rbp)
     3d0: e9 0f 03 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     3d5: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 3dc <_yylex+0x3dc>
     3dc: e8 00 00 00 00               	callq	0x3e1 <_yylex+0x3e1>
     3e1: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 3e8 <_yylex+0x3e8>
     3e8: 89 01                        	movl	%eax, (%rcx)
     3ea: c7 45 fc 12 01 00 00         	movl	$274, -4(%rbp)
     3f1: e9 ee 02 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     3f6: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 3fd <_yylex+0x3fd>
     3fd: e8 00 00 00 00               	callq	0x402 <_yylex+0x402>
     402: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 409 <_yylex+0x409>
     409: 89 01                        	movl	%eax, (%rcx)
     40b: c7 45 fc 12 01 00 00         	movl	$274, -4(%rbp)
     412: e9 cd 02 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     417: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 41e <_yylex+0x41e>
     41e: e8 00 00 00 00               	callq	0x423 <_yylex+0x423>
     423: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 42a <_yylex+0x42a>
     42a: 89 01                        	movl	%eax, (%rcx)
     42c: c7 45 fc 12 01 00 00         	movl	$274, -4(%rbp)
     433: e9 ac 02 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     438: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 43f <_yylex+0x43f>
     43f: 0f be 38                     	movsbl	(%rax), %edi
     442: e8 00 00 00 00               	callq	0x447 <_yylex+0x447>
     447: e9 93 02 00 00               	jmp	0x6df <_yylex+0x6df>
     44c: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 453 <_yylex+0x453>
     453: 48 8b 35 00 00 00 00         	movq	(%rip), %rsi  # 45a <_yylex+0x45a>
     45a: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 461 <_yylex+0x461>
     461: ba 01 00 00 00               	movl	$1, %edx
     466: e8 00 00 00 00               	callq	0x46b <_yylex+0x46b>
     46b: e9 6f 02 00 00               	jmp	0x6df <_yylex+0x6df>
     470: c7 45 fc 00 00 00 00         	movl	$0, -4(%rbp)
     477: e9 68 02 00 00               	jmp	0x6e4 <_yylex+0x6e4>
     47c: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     480: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 487 <_yylex+0x487>
     487: 48 29 c8                     	subq	%rcx, %rax
     48a: 83 e8 01                     	subl	$1, %eax
     48d: 89 45 dc                     	movl	%eax, -36(%rbp)
     490: 8a 15 00 00 00 00            	movb	(%rip), %dl  # 496 <_yylex+0x496>
     496: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
     49a: 88 11                        	movb	%dl, (%rcx)
     49c: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 4a3 <_yylex+0x4a3>
     4a3: 48 8b 35 00 00 00 00         	movq	(%rip), %rsi  # 4aa <_yylex+0x4aa>
     4aa: 48 8b 0c f1                  	movq	(%rcx,%rsi,8), %rcx
     4ae: 83 79 40 00                  	cmpl	$0, 64(%rcx)
     4b2: 0f 85 52 00 00 00            	jne	0x50a <_yylex+0x50a>
     4b8: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 4bf <_yylex+0x4bf>
     4bf: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 4c6 <_yylex+0x4c6>
     4c6: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     4ca: 48 8b 40 20                  	movq	32(%rax), %rax
     4ce: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 4d5 <_yylex+0x4d5>
     4d5: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 4dc <_yylex+0x4dc>
     4dc: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 4e3 <_yylex+0x4e3>
     4e3: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 4ea <_yylex+0x4ea>
     4ea: 48 8b 0c d1                  	movq	(%rcx,%rdx,8), %rcx
     4ee: 48 89 01                     	movq	%rax, (%rcx)
     4f1: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 4f8 <_yylex+0x4f8>
     4f8: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 4ff <_yylex+0x4ff>
     4ff: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     503: c7 40 40 01 00 00 00         	movl	$1, 64(%rax)
     50a: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 511 <_yylex+0x511>
     511: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 518 <_yylex+0x518>
     518: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 51f <_yylex+0x51f>
     51f: 48 8b 0c d1                  	movq	(%rcx,%rdx,8), %rcx
     523: 48 8b 49 08                  	movq	8(%rcx), %rcx
     527: 48 03 0d 00 00 00 00         	addq	(%rip), %rcx  # 52e <_yylex+0x52e>
     52e: 48 39 c8                     	cmpq	%rcx, %rax
     531: 0f 87 70 00 00 00            	ja	0x5a7 <_yylex+0x5a7>
     537: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 53e <_yylex+0x53e>
     53e: 48 63 4d dc                  	movslq	-36(%rbp), %rcx
     542: 48 01 c8                     	addq	%rcx, %rax
     545: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 54c <_yylex+0x54c>
     54c: e8 00 00 00 00               	callq	0x551 <_yylex+0x551>
     551: 89 45 f8                     	movl	%eax, -8(%rbp)
     554: 8b 7d f8                     	movl	-8(%rbp), %edi
     557: e8 00 00 00 00               	callq	0x55c <_yylex+0x55c>
     55c: 89 45 d8                     	movl	%eax, -40(%rbp)
     55f: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 566 <_yylex+0x566>
     566: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
     56a: 83 7d d8 00                  	cmpl	$0, -40(%rbp)
     56e: 0f 84 23 00 00 00            	je	0x597 <_yylex+0x597>
     574: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 57b <_yylex+0x57b>
     57b: 48 05 01 00 00 00            	addq	$1, %rax
     581: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 588 <_yylex+0x588>
     588: 48 89 45 f0                  	movq	%rax, -16(%rbp)
     58c: 8b 4d d8                     	movl	-40(%rbp), %ecx
     58f: 89 4d f8                     	movl	%ecx, -8(%rbp)
     592: e9 7b fb ff ff               	jmp	0x112 <_yylex+0x112>
     597: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 59e <_yylex+0x59e>
     59e: 48 89 45 f0                  	movq	%rax, -16(%rbp)
     5a2: e9 6b fc ff ff               	jmp	0x212 <_yylex+0x212>
     5a7: e8 00 00 00 00               	callq	0x5ac <_yylex+0x5ac>
     5ac: 89 c1                        	movl	%eax, %ecx
     5ae: 85 c0                        	testl	%eax, %eax
     5b0: 89 4d c4                     	movl	%ecx, -60(%rbp)
     5b3: 0f 84 91 00 00 00            	je	0x64a <_yylex+0x64a>
     5b9: e9 00 00 00 00               	jmp	0x5be <_yylex+0x5be>
     5be: 8b 45 c4                     	movl	-60(%rbp), %eax
     5c1: 83 e8 01                     	subl	$1, %eax
     5c4: 0f 84 16 00 00 00            	je	0x5e0 <_yylex+0x5e0>
     5ca: e9 00 00 00 00               	jmp	0x5cf <_yylex+0x5cf>
     5cf: 8b 45 c4                     	movl	-60(%rbp), %eax
     5d2: 83 e8 02                     	subl	$2, %eax
     5d5: 0f 84 a7 00 00 00            	je	0x682 <_yylex+0x682>
     5db: e9 e9 00 00 00               	jmp	0x6c9 <_yylex+0x6c9>
     5e0: c7 05 fc ff ff ff 00 00 00 00	movl	$0, -4(%rip)  # 5e6 <_yylex+0x5e6>
     5ea: e8 00 00 00 00               	callq	0x5ef <_yylex+0x5ef>
     5ef: 83 f8 00                     	cmpl	$0, %eax
     5f2: 0f 84 2f 00 00 00            	je	0x627 <_yylex+0x627>
     5f8: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 5ff <_yylex+0x5ff>
     5ff: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 606 <_yylex+0x606>
     606: 8b 0d 00 00 00 00            	movl	(%rip), %ecx  # 60c <_yylex+0x60c>
     60c: 83 e9 01                     	subl	$1, %ecx
     60f: 89 c8                        	movl	%ecx, %eax
     611: 99                           	cltd
     612: b9 02 00 00 00               	movl	$2, %ecx
     617: f7 f9                        	idivl	%ecx
     619: 83 c0 1a                     	addl	$26, %eax
     61c: 83 c0 01                     	addl	$1, %eax
     61f: 89 45 e4                     	movl	%eax, -28(%rbp)
     622: e9 68 fc ff ff               	jmp	0x28f <_yylex+0x28f>
     627: 83 3d ff ff ff ff 00         	cmpl	$0, -1(%rip)  # 62d <_yylex+0x62d>
     62e: 0f 85 0c 00 00 00            	jne	0x640 <_yylex+0x640>
     634: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 63b <_yylex+0x63b>
     63b: e8 00 00 00 00               	callq	0x640 <_yylex+0x640>
     640: e9 00 00 00 00               	jmp	0x645 <_yylex+0x645>
     645: e9 7f 00 00 00               	jmp	0x6c9 <_yylex+0x6c9>
     64a: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 651 <_yylex+0x651>
     651: 48 63 4d dc                  	movslq	-36(%rbp), %rcx
     655: 48 01 c8                     	addq	%rcx, %rax
     658: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 65f <_yylex+0x65f>
     65f: e8 00 00 00 00               	callq	0x664 <_yylex+0x664>
     664: 89 45 f8                     	movl	%eax, -8(%rbp)
     667: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 66e <_yylex+0x66e>
     66e: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
     672: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 679 <_yylex+0x679>
     679: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
     67d: e9 90 fa ff ff               	jmp	0x112 <_yylex+0x112>
     682: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 689 <_yylex+0x689>
     689: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 690 <_yylex+0x690>
     690: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     694: 48 8b 40 08                  	movq	8(%rax), %rax
     698: 48 03 05 00 00 00 00         	addq	(%rip), %rax  # 69f <_yylex+0x69f>
     69f: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 6a6 <_yylex+0x6a6>
     6a6: e8 00 00 00 00               	callq	0x6ab <_yylex+0x6ab>
     6ab: 89 45 f8                     	movl	%eax, -8(%rbp)
     6ae: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 6b5 <_yylex+0x6b5>
     6b5: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
     6b9: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 6c0 <_yylex+0x6c0>
     6c0: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
     6c4: e9 49 fb ff ff               	jmp	0x212 <_yylex+0x212>
     6c9: e9 00 00 00 00               	jmp	0x6ce <_yylex+0x6ce>
     6ce: e9 0c 00 00 00               	jmp	0x6df <_yylex+0x6df>
     6d3: 48 8d 3d 54 20 00 00         	leaq	8276(%rip), %rdi  # 272e <__Z6yywarpv+0x8ce>
     6da: e8 00 00 00 00               	callq	0x6df <_yylex+0x6df>
     6df: e9 06 fa ff ff               	jmp	0xea <_yylex+0xea>
     6e4: 8b 45 fc                     	movl	-4(%rbp), %eax
     6e7: 48 83 c4 40                  	addq	$64, %rsp
     6eb: 5d                           	popq	%rbp
     6ec: c3                           	retq
     6ed: 0f 1f 00                     	nopl	(%rax)
     6f0: c9                           	leave
     6f1: fb                           	sti
     6f2: ff ff                        	<unknown>
     6f4: ee                           	outb	%al, %dx
     6f5: fb                           	sti
     6f6: ff ff                        	<unknown>
     6f8: f3 fb                        	rep		sti
     6fa: ff ff                        	<unknown>
     6fc: f8                           	clc
     6fd: fb                           	sti
     6fe: ff ff                        	<unknown>
     700: fd                           	std
     701: fb                           	sti
     702: ff ff                        	<unknown>
     704: 09 fc                        	orl	%edi, %esp
     706: ff ff                        	<unknown>
     708: 15 fc ff ff 21               	adcl	$570425340, %eax
     70d: fc                           	cld
     70e: ff ff                        	<unknown>
     710: 2d fc ff ff 39               	subl	$973078524, %eax
     715: fc                           	cld
     716: ff ff                        	<unknown>
     718: 45 fc                        	cld
     71a: ff ff                        	<unknown>
     71c: 51                           	pushq	%rcx
     71d: fc                           	cld
     71e: ff ff                        	<unknown>
     720: 5d                           	popq	%rbp
     721: fc                           	cld
     722: ff ff                        	<unknown>
     724: 69 fc ff ff 75 fc            	imull	$4235591679, %esp, %edi
     72a: ff ff                        	<unknown>
     72c: 81 fc ff ff 8d fc            	cmpl	$4237164543, %esp
     732: ff ff                        	<unknown>
     734: 99                           	cltd
     735: fc                           	cld
     736: ff ff                        	<unknown>
     738: a5                           	movsl	(%rsi), %es:(%rdi)
     739: fc                           	cld
     73a: ff ff                        	<unknown>
     73c: b1 fc                        	movb	$-4, %cl
     73e: ff ff                        	<unknown>
     740: c3                           	retq
     741: fc                           	cld
     742: ff ff                        	<unknown>
     744: e5 fc                        	inl	$252, %eax
     746: ff ff                        	<unknown>
     748: 06                           	<unknown>
     749: fd                           	std
     74a: ff ff                        	<unknown>
     74c: 27                           	<unknown>
     74d: fd                           	std
     74e: ff ff                        	<unknown>
     750: 48 fd                        	std
     752: ff ff                        	<unknown>
     754: 5c                           	popq	%rsp
     755: fd                           	std
     756: ff ff                        	<unknown>
     758: 8c fd                        	<unknown>
     75a: ff ff                        	<unknown>
     75c: 80 fd ff                     	cmpb	$-1, %ch
     75f: ff 55 48                     	callq	*72(%rbp)

0000000000000760 <__ZL21yyensure_buffer_stackv>:
     760: 55                           	pushq	%rbp
     761: 48 89 e5                     	movq	%rsp, %rbp
     764: 48 83 ec 10                  	subq	$16, %rsp
     768: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 76f <__ZL21yyensure_buffer_stackv+0xf>
     770: 0f 85 70 00 00 00            	jne	0x7e6 <__ZL21yyensure_buffer_stackv+0x86>
     776: 48 c7 45 f8 01 00 00 00      	movq	$1, -8(%rbp)
     77e: 48 8b 45 f8                  	movq	-8(%rbp), %rax
     782: 48 c1 e0 03                  	shlq	$3, %rax
     786: 48 89 c7                     	movq	%rax, %rdi
     789: e8 00 00 00 00               	callq	0x78e <__ZL21yyensure_buffer_stackv+0x2e>
     78e: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 795 <__ZL21yyensure_buffer_stackv+0x35>
     795: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 79c <__ZL21yyensure_buffer_stackv+0x3c>
     79d: 0f 85 0c 00 00 00            	jne	0x7af <__ZL21yyensure_buffer_stackv+0x4f>
     7a3: 48 8d 3d 03 21 00 00         	leaq	8451(%rip), %rdi  # 28ad <__Z6yywarpv+0xa4d>
     7aa: e8 00 00 00 00               	callq	0x7af <__ZL21yyensure_buffer_stackv+0x4f>
     7af: 31 f6                        	xorl	%esi, %esi
     7b1: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 7b8 <__ZL21yyensure_buffer_stackv+0x58>
     7b8: 48 8b 4d f8                  	movq	-8(%rbp), %rcx
     7bc: 48 c1 e1 03                  	shlq	$3, %rcx
     7c0: 48 89 c7                     	movq	%rax, %rdi
     7c3: 48 89 ca                     	movq	%rcx, %rdx
     7c6: e8 00 00 00 00               	callq	0x7cb <__ZL21yyensure_buffer_stackv+0x6b>
     7cb: 48 8b 45 f8                  	movq	-8(%rbp), %rax
     7cf: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 7d6 <__ZL21yyensure_buffer_stackv+0x76>
     7d6: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # 7dd <__ZL21yyensure_buffer_stackv+0x7d>
     7e1: e9 a7 00 00 00               	jmp	0x88d <__ZL21yyensure_buffer_stackv+0x12d>
     7e6: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 7ed <__ZL21yyensure_buffer_stackv+0x8d>
     7ed: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 7f4 <__ZL21yyensure_buffer_stackv+0x94>
     7f4: 48 81 e9 01 00 00 00         	subq	$1, %rcx
     7fb: 48 39 c8                     	cmpq	%rcx, %rax
     7fe: 0f 82 89 00 00 00            	jb	0x88d <__ZL21yyensure_buffer_stackv+0x12d>
     804: c7 45 f4 08 00 00 00         	movl	$8, -12(%rbp)
     80b: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 812 <__ZL21yyensure_buffer_stackv+0xb2>
     812: 48 63 4d f4                  	movslq	-12(%rbp), %rcx
     816: 48 01 c8                     	addq	%rcx, %rax
     819: 48 89 45 f8                  	movq	%rax, -8(%rbp)
     81d: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 824 <__ZL21yyensure_buffer_stackv+0xc4>
     824: 48 8b 4d f8                  	movq	-8(%rbp), %rcx
     828: 48 c1 e1 03                  	shlq	$3, %rcx
     82c: 48 89 c7                     	movq	%rax, %rdi
     82f: 48 89 ce                     	movq	%rcx, %rsi
     832: e8 00 00 00 00               	callq	0x837 <__ZL21yyensure_buffer_stackv+0xd7>
     837: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 83e <__ZL21yyensure_buffer_stackv+0xde>
     83e: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 845 <__ZL21yyensure_buffer_stackv+0xe5>
     846: 0f 85 0c 00 00 00            	jne	0x858 <__ZL21yyensure_buffer_stackv+0xf8>
     84c: 48 8d 3d 5a 20 00 00         	leaq	8282(%rip), %rdi  # 28ad <__Z6yywarpv+0xa4d>
     853: e8 00 00 00 00               	callq	0x858 <__ZL21yyensure_buffer_stackv+0xf8>
     858: 31 f6                        	xorl	%esi, %esi
     85a: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 861 <__ZL21yyensure_buffer_stackv+0x101>
     861: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 868 <__ZL21yyensure_buffer_stackv+0x108>
     868: 48 c1 e1 03                  	shlq	$3, %rcx
     86c: 48 01 c8                     	addq	%rcx, %rax
     86f: 48 63 4d f4                  	movslq	-12(%rbp), %rcx
     873: 48 c1 e1 03                  	shlq	$3, %rcx
     877: 48 89 c7                     	movq	%rax, %rdi
     87a: 48 89 ca                     	movq	%rcx, %rdx
     87d: e8 00 00 00 00               	callq	0x882 <__ZL21yyensure_buffer_stackv+0x122>
     882: 48 8b 45 f8                  	movq	-8(%rbp), %rax
     886: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 88d <__ZL21yyensure_buffer_stackv+0x12d>
     88d: 48 83 c4 10                  	addq	$16, %rsp
     891: 5d                           	popq	%rbp
     892: c3                           	retq
     893: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
     89d: 0f 1f 00                     	nopl	(%rax)

00000000000008a0 <__Z16yy_create_bufferP7__sFILEi>:
     8a0: 55                           	pushq	%rbp
     8a1: 48 89 e5                     	movq	%rsp, %rbp
     8a4: 48 83 ec 20                  	subq	$32, %rsp
     8a8: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
     8ac: 89 75 f4                     	movl	%esi, -12(%rbp)
     8af: bf 48 00 00 00               	movl	$72, %edi
     8b4: e8 00 00 00 00               	callq	0x8b9 <__Z16yy_create_bufferP7__sFILEi+0x19>
     8b9: 48 89 45 e8                  	movq	%rax, -24(%rbp)
     8bd: 48 83 7d e8 00               	cmpq	$0, -24(%rbp)
     8c2: 0f 85 0c 00 00 00            	jne	0x8d4 <__Z16yy_create_bufferP7__sFILEi+0x34>
     8c8: 48 8d 3d 92 1e 00 00         	leaq	7826(%rip), %rdi  # 2761 <__Z6yywarpv+0x901>
     8cf: e8 00 00 00 00               	callq	0x8d4 <__Z16yy_create_bufferP7__sFILEi+0x34>
     8d4: 48 63 45 f4                  	movslq	-12(%rbp), %rax
     8d8: 48 8b 4d e8                  	movq	-24(%rbp), %rcx
     8dc: 48 89 41 18                  	movq	%rax, 24(%rcx)
     8e0: 48 8b 45 e8                  	movq	-24(%rbp), %rax
     8e4: 48 8b 40 18                  	movq	24(%rax), %rax
     8e8: 48 05 02 00 00 00            	addq	$2, %rax
     8ee: 48 89 c7                     	movq	%rax, %rdi
     8f1: e8 00 00 00 00               	callq	0x8f6 <__Z16yy_create_bufferP7__sFILEi+0x56>
     8f6: 48 8b 4d e8                  	movq	-24(%rbp), %rcx
     8fa: 48 89 41 08                  	movq	%rax, 8(%rcx)
     8fe: 48 8b 45 e8                  	movq	-24(%rbp), %rax
     902: 48 83 78 08 00               	cmpq	$0, 8(%rax)
     907: 0f 85 0c 00 00 00            	jne	0x919 <__Z16yy_create_bufferP7__sFILEi+0x79>
     90d: 48 8d 3d 4d 1e 00 00         	leaq	7757(%rip), %rdi  # 2761 <__Z6yywarpv+0x901>
     914: e8 00 00 00 00               	callq	0x919 <__Z16yy_create_bufferP7__sFILEi+0x79>
     919: 48 8b 45 e8                  	movq	-24(%rbp), %rax
     91d: c7 40 28 01 00 00 00         	movl	$1, 40(%rax)
     924: 48 8b 7d e8                  	movq	-24(%rbp), %rdi
     928: 48 8b 75 f8                  	movq	-8(%rbp), %rsi
     92c: e8 00 00 00 00               	callq	0x931 <__Z16yy_create_bufferP7__sFILEi+0x91>
     931: 48 8b 45 e8                  	movq	-24(%rbp), %rax
     935: 48 83 c4 20                  	addq	$32, %rsp
     939: 5d                           	popq	%rbp
     93a: c3                           	retq
     93b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

0000000000000940 <__ZL20yy_load_buffer_statev>:
     940: 55                           	pushq	%rbp
     941: 48 89 e5                     	movq	%rsp, %rbp
     944: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 94b <__ZL20yy_load_buffer_statev+0xb>
     94b: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 952 <__ZL20yy_load_buffer_statev+0x12>
     952: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     956: 48 8b 40 20                  	movq	32(%rax), %rax
     95a: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 961 <__ZL20yy_load_buffer_statev+0x21>
     961: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 968 <__ZL20yy_load_buffer_statev+0x28>
     968: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 96f <__ZL20yy_load_buffer_statev+0x2f>
     96f: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     973: 48 8b 40 10                  	movq	16(%rax), %rax
     977: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 97e <__ZL20yy_load_buffer_statev+0x3e>
     97e: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 985 <__ZL20yy_load_buffer_statev+0x45>
     985: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 98c <__ZL20yy_load_buffer_statev+0x4c>
     98c: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 993 <__ZL20yy_load_buffer_statev+0x53>
     993: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     997: 48 8b 00                     	movq	(%rax), %rax
     99a: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 9a1 <__ZL20yy_load_buffer_statev+0x61>
     9a1: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 9a8 <__ZL20yy_load_buffer_statev+0x68>
     9a8: 8a 10                        	movb	(%rax), %dl
     9aa: 88 15 00 00 00 00            	movb	%dl, (%rip)  # 9b0 <__ZL20yy_load_buffer_statev+0x70>
     9b0: 5d                           	popq	%rbp
     9b1: c3                           	retq
     9b2: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
     9bc: 0f 1f 40 00                  	nopl	(%rax)

00000000000009c0 <__ZL21yy_get_previous_statev>:
     9c0: 55                           	pushq	%rbp
     9c1: 48 89 e5                     	movq	%rsp, %rbp
     9c4: 8b 05 00 00 00 00            	movl	(%rip), %eax  # 9ca <__ZL21yy_get_previous_statev+0xa>
     9ca: 89 45 fc                     	movl	%eax, -4(%rbp)
     9cd: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 9d4 <__ZL21yy_get_previous_statev+0x14>
     9d4: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
     9d8: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     9dc: 48 3b 05 00 00 00 00         	cmpq	(%rip), %rax  # 9e3 <__ZL21yy_get_previous_statev+0x23>
     9e3: 0f 83 08 01 00 00            	jae	0xaf1 <__ZL21yy_get_previous_statev+0x131>
     9e9: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     9ed: 80 38 00                     	cmpb	$0, (%rax)
     9f0: 0f 84 1d 00 00 00            	je	0xa13 <__ZL21yy_get_previous_statev+0x53>
     9f6: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     9fa: 0f b6 08                     	movzbl	(%rax), %ecx
     9fd: 89 c9                        	movl	%ecx, %ecx
     9ff: 89 c8                        	movl	%ecx, %eax
     a01: 48 8d 15 00 00 00 00         	leaq	(%rip), %rdx  # a08 <__ZL21yy_get_previous_statev+0x48>
     a08: 8b 0c 82                     	movl	(%rdx,%rax,4), %ecx
     a0b: 89 4d e8                     	movl	%ecx, -24(%rbp)
     a0e: e9 0d 00 00 00               	jmp	0xa20 <__ZL21yy_get_previous_statev+0x60>
     a13: b8 01 00 00 00               	movl	$1, %eax
     a18: 89 45 e8                     	movl	%eax, -24(%rbp)
     a1b: e9 00 00 00 00               	jmp	0xa20 <__ZL21yy_get_previous_statev+0x60>
     a20: 8b 45 e8                     	movl	-24(%rbp), %eax
     a23: 88 45 ef                     	movb	%al, -17(%rbp)
     a26: 48 63 4d fc                  	movslq	-4(%rbp), %rcx
     a2a: 48 8d 15 00 00 00 00         	leaq	(%rip), %rdx  # a31 <__ZL21yy_get_previous_statev+0x71>
     a31: 66 83 3c 4a 00               	cmpw	$0, (%rdx,%rcx,2)
     a36: 0f 84 14 00 00 00            	je	0xa50 <__ZL21yy_get_previous_statev+0x90>
     a3c: 8b 45 fc                     	movl	-4(%rbp), %eax
     a3f: 89 05 00 00 00 00            	movl	%eax, (%rip)  # a45 <__ZL21yy_get_previous_statev+0x85>
     a45: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
     a49: 48 89 0d 00 00 00 00         	movq	%rcx, (%rip)  # a50 <__ZL21yy_get_previous_statev+0x90>
     a50: e9 00 00 00 00               	jmp	0xa55 <__ZL21yy_get_previous_statev+0x95>
     a55: 48 63 45 fc                  	movslq	-4(%rbp), %rax
     a59: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # a60 <__ZL21yy_get_previous_statev+0xa0>
     a60: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     a64: 0f b6 75 ef                  	movzbl	-17(%rbp), %esi
     a68: 01 f2                        	addl	%esi, %edx
     a6a: 48 63 c2                     	movslq	%edx, %rax
     a6d: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # a74 <__ZL21yy_get_previous_statev+0xb4>
     a74: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     a78: 3b 55 fc                     	cmpl	-4(%rbp), %edx
     a7b: 0f 84 36 00 00 00            	je	0xab7 <__ZL21yy_get_previous_statev+0xf7>
     a81: 48 63 45 fc                  	movslq	-4(%rbp), %rax
     a85: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # a8c <__ZL21yy_get_previous_statev+0xcc>
     a8c: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     a90: 89 55 fc                     	movl	%edx, -4(%rbp)
     a93: 83 7d fc 4b                  	cmpl	$75, -4(%rbp)
     a97: 0f 8c 15 00 00 00            	jl	0xab2 <__ZL21yy_get_previous_statev+0xf2>
     a9d: 0f b6 45 ef                  	movzbl	-17(%rbp), %eax
     aa1: 89 c0                        	movl	%eax, %eax
     aa3: 89 c1                        	movl	%eax, %ecx
     aa5: 48 8d 15 00 00 00 00         	leaq	(%rip), %rdx  # aac <__ZL21yy_get_previous_statev+0xec>
     aac: 8b 04 8a                     	movl	(%rdx,%rcx,4), %eax
     aaf: 88 45 ef                     	movb	%al, -17(%rbp)
     ab2: e9 9e ff ff ff               	jmp	0xa55 <__ZL21yy_get_previous_statev+0x95>
     ab7: 48 63 45 fc                  	movslq	-4(%rbp), %rax
     abb: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # ac2 <__ZL21yy_get_previous_statev+0x102>
     ac2: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     ac6: 0f b6 75 ef                  	movzbl	-17(%rbp), %esi
     aca: 01 f2                        	addl	%esi, %edx
     acc: 89 d2                        	movl	%edx, %edx
     ace: 89 d0                        	movl	%edx, %eax
     ad0: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # ad7 <__ZL21yy_get_previous_statev+0x117>
     ad7: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     adb: 89 55 fc                     	movl	%edx, -4(%rbp)
     ade: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     ae2: 48 05 01 00 00 00            	addq	$1, %rax
     ae8: 48 89 45 f0                  	movq	%rax, -16(%rbp)
     aec: e9 e7 fe ff ff               	jmp	0x9d8 <__ZL21yy_get_previous_statev+0x18>
     af1: 8b 45 fc                     	movl	-4(%rbp), %eax
     af4: 5d                           	popq	%rbp
     af5: c3                           	retq
     af6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000000b00 <__ZL16yy_try_NUL_transi>:
     b00: 55                           	pushq	%rbp
     b01: 48 89 e5                     	movq	%rsp, %rbp
     b04: 89 7d fc                     	movl	%edi, -4(%rbp)
     b07: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # b0e <__ZL16yy_try_NUL_transi+0xe>
     b0e: 48 89 45 f0                  	movq	%rax, -16(%rbp)
     b12: c6 45 ef 01                  	movb	$1, -17(%rbp)
     b16: 48 63 45 fc                  	movslq	-4(%rbp), %rax
     b1a: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # b21 <__ZL16yy_try_NUL_transi+0x21>
     b21: 66 83 3c 41 00               	cmpw	$0, (%rcx,%rax,2)
     b26: 0f 84 14 00 00 00            	je	0xb40 <__ZL16yy_try_NUL_transi+0x40>
     b2c: 8b 45 fc                     	movl	-4(%rbp), %eax
     b2f: 89 05 00 00 00 00            	movl	%eax, (%rip)  # b35 <__ZL16yy_try_NUL_transi+0x35>
     b35: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
     b39: 48 89 0d 00 00 00 00         	movq	%rcx, (%rip)  # b40 <__ZL16yy_try_NUL_transi+0x40>
     b40: e9 00 00 00 00               	jmp	0xb45 <__ZL16yy_try_NUL_transi+0x45>
     b45: 48 63 45 fc                  	movslq	-4(%rbp), %rax
     b49: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # b50 <__ZL16yy_try_NUL_transi+0x50>
     b50: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     b54: 0f b6 75 ef                  	movzbl	-17(%rbp), %esi
     b58: 01 f2                        	addl	%esi, %edx
     b5a: 48 63 c2                     	movslq	%edx, %rax
     b5d: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # b64 <__ZL16yy_try_NUL_transi+0x64>
     b64: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     b68: 3b 55 fc                     	cmpl	-4(%rbp), %edx
     b6b: 0f 84 36 00 00 00            	je	0xba7 <__ZL16yy_try_NUL_transi+0xa7>
     b71: 48 63 45 fc                  	movslq	-4(%rbp), %rax
     b75: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # b7c <__ZL16yy_try_NUL_transi+0x7c>
     b7c: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     b80: 89 55 fc                     	movl	%edx, -4(%rbp)
     b83: 83 7d fc 4b                  	cmpl	$75, -4(%rbp)
     b87: 0f 8c 15 00 00 00            	jl	0xba2 <__ZL16yy_try_NUL_transi+0xa2>
     b8d: 0f b6 45 ef                  	movzbl	-17(%rbp), %eax
     b91: 89 c0                        	movl	%eax, %eax
     b93: 89 c1                        	movl	%eax, %ecx
     b95: 48 8d 15 00 00 00 00         	leaq	(%rip), %rdx  # b9c <__ZL16yy_try_NUL_transi+0x9c>
     b9c: 8b 04 8a                     	movl	(%rdx,%rcx,4), %eax
     b9f: 88 45 ef                     	movb	%al, -17(%rbp)
     ba2: e9 9e ff ff ff               	jmp	0xb45 <__ZL16yy_try_NUL_transi+0x45>
     ba7: 48 63 45 fc                  	movslq	-4(%rbp), %rax
     bab: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # bb2 <__ZL16yy_try_NUL_transi+0xb2>
     bb2: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     bb6: 0f b6 75 ef                  	movzbl	-17(%rbp), %esi
     bba: 01 f2                        	addl	%esi, %edx
     bbc: 89 d2                        	movl	%edx, %edx
     bbe: 89 d0                        	movl	%edx, %eax
     bc0: 48 8d 0d 00 00 00 00         	leaq	(%rip), %rcx  # bc7 <__ZL16yy_try_NUL_transi+0xc7>
     bc7: 0f bf 14 41                  	movswl	(%rcx,%rax,2), %edx
     bcb: 89 55 fc                     	movl	%edx, -4(%rbp)
     bce: 83 7d fc 4a                  	cmpl	$74, -4(%rbp)
     bd2: 40 0f 94 c7                  	sete	%dil
     bd6: 40 80 e7 01                  	andb	$1, %dil
     bda: 40 0f b6 d7                  	movzbl	%dil, %edx
     bde: 89 55 f8                     	movl	%edx, -8(%rbp)
     be1: 83 7d f8 00                  	cmpl	$0, -8(%rbp)
     be5: 0f 84 0a 00 00 00            	je	0xbf5 <__ZL16yy_try_NUL_transi+0xf5>
     beb: 31 c0                        	xorl	%eax, %eax
     bed: 89 45 e8                     	movl	%eax, -24(%rbp)
     bf0: e9 06 00 00 00               	jmp	0xbfb <__ZL16yy_try_NUL_transi+0xfb>
     bf5: 8b 45 fc                     	movl	-4(%rbp), %eax
     bf8: 89 45 e8                     	movl	%eax, -24(%rbp)
     bfb: 8b 45 e8                     	movl	-24(%rbp), %eax
     bfe: 5d                           	popq	%rbp
     bff: c3                           	retq

0000000000000c00 <__ZL18yy_get_next_bufferv>:
     c00: 55                           	pushq	%rbp
     c01: 48 89 e5                     	movq	%rsp, %rbp
     c04: 48 83 ec 70                  	subq	$112, %rsp
     c08: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # c0f <__ZL18yy_get_next_bufferv+0xf>
     c0f: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # c16 <__ZL18yy_get_next_bufferv+0x16>
     c16: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     c1a: 48 8b 40 08                  	movq	8(%rax), %rax
     c1e: 48 89 45 f0                  	movq	%rax, -16(%rbp)
     c22: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # c29 <__ZL18yy_get_next_bufferv+0x29>
     c29: 48 89 45 e8                  	movq	%rax, -24(%rbp)
     c2d: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # c34 <__ZL18yy_get_next_bufferv+0x34>
     c34: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # c3b <__ZL18yy_get_next_bufferv+0x3b>
     c3b: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # c42 <__ZL18yy_get_next_bufferv+0x42>
     c42: 48 8b 0c d1                  	movq	(%rcx,%rdx,8), %rcx
     c46: 48 8b 49 08                  	movq	8(%rcx), %rcx
     c4a: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # c51 <__ZL18yy_get_next_bufferv+0x51>
     c51: 48 81 c2 01 00 00 00         	addq	$1, %rdx
     c58: 48 01 d1                     	addq	%rdx, %rcx
     c5b: 48 39 c8                     	cmpq	%rcx, %rax
     c5e: 0f 86 0c 00 00 00            	jbe	0xc70 <__ZL18yy_get_next_bufferv+0x70>
     c64: 48 8d 3d 93 1b 00 00         	leaq	7059(%rip), %rdi  # 27fe <__Z6yywarpv+0x99e>
     c6b: e8 00 00 00 00               	callq	0xc70 <__ZL18yy_get_next_bufferv+0x70>
     c70: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # c77 <__ZL18yy_get_next_bufferv+0x77>
     c77: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # c7e <__ZL18yy_get_next_bufferv+0x7e>
     c7e: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     c82: 83 78 3c 00                  	cmpl	$0, 60(%rax)
     c86: 0f 85 39 00 00 00            	jne	0xcc5 <__ZL18yy_get_next_bufferv+0xc5>
     c8c: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # c93 <__ZL18yy_get_next_bufferv+0x93>
     c93: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # c9a <__ZL18yy_get_next_bufferv+0x9a>
     c9a: 48 29 c8                     	subq	%rcx, %rax
     c9d: 48 2d 00 00 00 00            	subq	$0, %rax
     ca3: 48 83 f8 01                  	cmpq	$1, %rax
     ca7: 0f 85 0c 00 00 00            	jne	0xcb9 <__ZL18yy_get_next_bufferv+0xb9>
     cad: c7 45 fc 01 00 00 00         	movl	$1, -4(%rbp)
     cb4: e9 bb 05 00 00               	jmp	0x1274 <__ZL18yy_get_next_bufferv+0x674>
     cb9: c7 45 fc 02 00 00 00         	movl	$2, -4(%rbp)
     cc0: e9 af 05 00 00               	jmp	0x1274 <__ZL18yy_get_next_bufferv+0x674>
     cc5: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # ccc <__ZL18yy_get_next_bufferv+0xcc>
     ccc: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # cd3 <__ZL18yy_get_next_bufferv+0xd3>
     cd3: 48 29 c8                     	subq	%rcx, %rax
     cd6: 83 e8 01                     	subl	$1, %eax
     cd9: 89 45 e4                     	movl	%eax, -28(%rbp)
     cdc: c7 45 e0 00 00 00 00         	movl	$0, -32(%rbp)
     ce3: 8b 45 e0                     	movl	-32(%rbp), %eax
     ce6: 3b 45 e4                     	cmpl	-28(%rbp), %eax
     ce9: 0f 8d 36 00 00 00            	jge	0xd25 <__ZL18yy_get_next_bufferv+0x125>
     cef: 48 8b 45 e8                  	movq	-24(%rbp), %rax
     cf3: 48 89 c1                     	movq	%rax, %rcx
     cf6: 48 81 c1 01 00 00 00         	addq	$1, %rcx
     cfd: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
     d01: 8a 10                        	movb	(%rax), %dl
     d03: 48 8b 45 f0                  	movq	-16(%rbp), %rax
     d07: 48 89 c1                     	movq	%rax, %rcx
     d0a: 48 81 c1 01 00 00 00         	addq	$1, %rcx
     d11: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
     d15: 88 10                        	movb	%dl, (%rax)
     d17: 8b 45 e0                     	movl	-32(%rbp), %eax
     d1a: 83 c0 01                     	addl	$1, %eax
     d1d: 89 45 e0                     	movl	%eax, -32(%rbp)
     d20: e9 be ff ff ff               	jmp	0xce3 <__ZL18yy_get_next_bufferv+0xe3>
     d25: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # d2c <__ZL18yy_get_next_bufferv+0x12c>
     d2c: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # d33 <__ZL18yy_get_next_bufferv+0x133>
     d33: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     d37: 83 78 40 02                  	cmpl	$2, 64(%rax)
     d3b: 0f 85 2a 00 00 00            	jne	0xd6b <__ZL18yy_get_next_bufferv+0x16b>
     d41: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # d48 <__ZL18yy_get_next_bufferv+0x148>
     d4c: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # d53 <__ZL18yy_get_next_bufferv+0x153>
     d53: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # d5a <__ZL18yy_get_next_bufferv+0x15a>
     d5a: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     d5e: 48 c7 40 20 00 00 00 00      	movq	$0, 32(%rax)
     d66: e9 88 03 00 00               	jmp	0x10f3 <__ZL18yy_get_next_bufferv+0x4f3>
     d6b: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # d72 <__ZL18yy_get_next_bufferv+0x172>
     d72: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # d79 <__ZL18yy_get_next_bufferv+0x179>
     d79: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     d7d: 48 8b 40 18                  	movq	24(%rax), %rax
     d81: 48 63 4d e4                  	movslq	-28(%rbp), %rcx
     d85: 48 29 c8                     	subq	%rcx, %rax
     d88: 48 2d 01 00 00 00            	subq	$1, %rax
     d8e: 48 89 45 d0                  	movq	%rax, -48(%rbp)
     d92: 48 83 7d d0 00               	cmpq	$0, -48(%rbp)
     d97: 0f 87 3d 01 00 00            	ja	0xeda <__ZL18yy_get_next_bufferv+0x2da>
     d9d: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # da4 <__ZL18yy_get_next_bufferv+0x1a4>
     da5: 0f 84 1b 00 00 00            	je	0xdc6 <__ZL18yy_get_next_bufferv+0x1c6>
     dab: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # db2 <__ZL18yy_get_next_bufferv+0x1b2>
     db2: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # db9 <__ZL18yy_get_next_bufferv+0x1b9>
     db9: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     dbd: 48 89 45 98                  	movq	%rax, -104(%rbp)
     dc1: e9 0d 00 00 00               	jmp	0xdd3 <__ZL18yy_get_next_bufferv+0x1d3>
     dc6: 31 c0                        	xorl	%eax, %eax
     dc8: 89 c1                        	movl	%eax, %ecx
     dca: 48 89 4d 98                  	movq	%rcx, -104(%rbp)
     dce: e9 00 00 00 00               	jmp	0xdd3 <__ZL18yy_get_next_bufferv+0x1d3>
     dd3: 48 8b 45 98                  	movq	-104(%rbp), %rax
     dd7: 48 89 45 c8                  	movq	%rax, -56(%rbp)
     ddb: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # de2 <__ZL18yy_get_next_bufferv+0x1e2>
     de2: 48 8b 4d c8                  	movq	-56(%rbp), %rcx
     de6: 48 8b 49 08                  	movq	8(%rcx), %rcx
     dea: 48 29 c8                     	subq	%rcx, %rax
     ded: 89 45 c4                     	movl	%eax, -60(%rbp)
     df0: 48 8b 4d c8                  	movq	-56(%rbp), %rcx
     df4: 83 79 28 00                  	cmpl	$0, 40(%rcx)
     df8: 0f 84 73 00 00 00            	je	0xe71 <__ZL18yy_get_next_bufferv+0x271>
     dfe: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     e02: 48 8b 40 18                  	movq	24(%rax), %rax
     e06: 48 c1 e0 01                  	shlq	$1, %rax
     e0a: 48 89 45 b8                  	movq	%rax, -72(%rbp)
     e0e: 48 83 7d b8 00               	cmpq	$0, -72(%rbp)
     e13: 0f 87 1d 00 00 00            	ja	0xe36 <__ZL18yy_get_next_bufferv+0x236>
     e19: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     e1d: 48 8b 40 18                  	movq	24(%rax), %rax
     e21: 48 c1 e8 03                  	shrq	$3, %rax
     e25: 48 8b 4d c8                  	movq	-56(%rbp), %rcx
     e29: 48 03 41 18                  	addq	24(%rcx), %rax
     e2d: 48 89 41 18                  	movq	%rax, 24(%rcx)
     e31: e9 10 00 00 00               	jmp	0xe46 <__ZL18yy_get_next_bufferv+0x246>
     e36: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     e3a: 48 8b 48 18                  	movq	24(%rax), %rcx
     e3e: 48 c1 e1 01                  	shlq	$1, %rcx
     e42: 48 89 48 18                  	movq	%rcx, 24(%rax)
     e46: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     e4a: 48 8b 78 08                  	movq	8(%rax), %rdi
     e4e: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     e52: 48 8b 40 18                  	movq	24(%rax), %rax
     e56: 48 05 02 00 00 00            	addq	$2, %rax
     e5c: 48 89 c6                     	movq	%rax, %rsi
     e5f: e8 00 00 00 00               	callq	0xe64 <__ZL18yy_get_next_bufferv+0x264>
     e64: 48 8b 4d c8                  	movq	-56(%rbp), %rcx
     e68: 48 89 41 08                  	movq	%rax, 8(%rcx)
     e6c: e9 0c 00 00 00               	jmp	0xe7d <__ZL18yy_get_next_bufferv+0x27d>
     e71: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     e75: 48 c7 40 08 00 00 00 00      	movq	$0, 8(%rax)
     e7d: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     e81: 48 83 78 08 00               	cmpq	$0, 8(%rax)
     e86: 0f 85 0c 00 00 00            	jne	0xe98 <__ZL18yy_get_next_bufferv+0x298>
     e8c: 48 8d 3d a3 19 00 00         	leaq	6563(%rip), %rdi  # 2836 <__Z6yywarpv+0x9d6>
     e93: e8 00 00 00 00               	callq	0xe98 <__ZL18yy_get_next_bufferv+0x298>
     e98: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     e9c: 48 8b 40 08                  	movq	8(%rax), %rax
     ea0: 48 63 4d c4                  	movslq	-60(%rbp), %rcx
     ea4: 48 01 c8                     	addq	%rcx, %rax
     ea7: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # eae <__ZL18yy_get_next_bufferv+0x2ae>
     eae: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # eb5 <__ZL18yy_get_next_bufferv+0x2b5>
     eb5: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # ebc <__ZL18yy_get_next_bufferv+0x2bc>
     ebc: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     ec0: 48 8b 40 18                  	movq	24(%rax), %rax
     ec4: 48 63 4d e4                  	movslq	-28(%rbp), %rcx
     ec8: 48 29 c8                     	subq	%rcx, %rax
     ecb: 48 2d 01 00 00 00            	subq	$1, %rax
     ed1: 48 89 45 d0                  	movq	%rax, -48(%rbp)
     ed5: e9 b8 fe ff ff               	jmp	0xd92 <__ZL18yy_get_next_bufferv+0x192>
     eda: 48 81 7d d0 00 20 00 00      	cmpq	$8192, -48(%rbp)
     ee2: 0f 86 08 00 00 00            	jbe	0xef0 <__ZL18yy_get_next_bufferv+0x2f0>
     ee8: 48 c7 45 d0 00 20 00 00      	movq	$8192, -48(%rbp)
     ef0: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # ef7 <__ZL18yy_get_next_bufferv+0x2f7>
     ef7: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # efe <__ZL18yy_get_next_bufferv+0x2fe>
     efe: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
     f02: 83 78 2c 00                  	cmpl	$0, 44(%rax)
     f06: 0f 84 0d 01 00 00            	je	0x1019 <__ZL18yy_get_next_bufferv+0x419>
     f0c: c7 45 b4 2a 00 00 00         	movl	$42, -76(%rbp)
     f13: 48 c7 45 a8 00 00 00 00      	movq	$0, -88(%rbp)
     f1b: 31 c0                        	xorl	%eax, %eax
     f1d: 48 8b 4d a8                  	movq	-88(%rbp), %rcx
     f21: 48 3b 4d d0                  	cmpq	-48(%rbp), %rcx
     f25: 88 45 97                     	movb	%al, -105(%rbp)
     f28: 0f 83 27 00 00 00            	jae	0xf55 <__ZL18yy_get_next_bufferv+0x355>
     f2e: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # f35 <__ZL18yy_get_next_bufferv+0x335>
     f35: e8 00 00 00 00               	callq	0xf3a <__ZL18yy_get_next_bufferv+0x33a>
     f3a: 31 c9                        	xorl	%ecx, %ecx
     f3c: 89 45 b4                     	movl	%eax, -76(%rbp)
     f3f: 83 f8 ff                     	cmpl	$-1, %eax
     f42: 88 4d 97                     	movb	%cl, -105(%rbp)
     f45: 0f 84 0a 00 00 00            	je	0xf55 <__ZL18yy_get_next_bufferv+0x355>
     f4b: 83 7d b4 0a                  	cmpl	$10, -76(%rbp)
     f4f: 0f 95 c0                     	setne	%al
     f52: 88 45 97                     	movb	%al, -105(%rbp)
     f55: 8a 45 97                     	movb	-105(%rbp), %al
     f58: a8 01                        	testb	$1, %al
     f5a: 0f 85 05 00 00 00            	jne	0xf65 <__ZL18yy_get_next_bufferv+0x365>
     f60: e9 3a 00 00 00               	jmp	0xf9f <__ZL18yy_get_next_bufferv+0x39f>
     f65: 8b 45 b4                     	movl	-76(%rbp), %eax
     f68: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # f6f <__ZL18yy_get_next_bufferv+0x36f>
     f6f: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # f76 <__ZL18yy_get_next_bufferv+0x376>
     f76: 48 8b 0c d1                  	movq	(%rcx,%rdx,8), %rcx
     f7a: 48 8b 49 08                  	movq	8(%rcx), %rcx
     f7e: 48 63 55 e4                  	movslq	-28(%rbp), %rdx
     f82: 48 01 d1                     	addq	%rdx, %rcx
     f85: 48 8b 55 a8                  	movq	-88(%rbp), %rdx
     f89: 88 04 11                     	movb	%al, (%rcx,%rdx)
     f8c: 48 8b 45 a8                  	movq	-88(%rbp), %rax
     f90: 48 05 01 00 00 00            	addq	$1, %rax
     f96: 48 89 45 a8                  	movq	%rax, -88(%rbp)
     f9a: e9 7c ff ff ff               	jmp	0xf1b <__ZL18yy_get_next_bufferv+0x31b>
     f9f: 83 7d b4 0a                  	cmpl	$10, -76(%rbp)
     fa3: 0f 85 35 00 00 00            	jne	0xfde <__ZL18yy_get_next_bufferv+0x3de>
     fa9: 8b 45 b4                     	movl	-76(%rbp), %eax
     fac: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # fb3 <__ZL18yy_get_next_bufferv+0x3b3>
     fb3: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # fba <__ZL18yy_get_next_bufferv+0x3ba>
     fba: 48 8b 0c d1                  	movq	(%rcx,%rdx,8), %rcx
     fbe: 48 8b 49 08                  	movq	8(%rcx), %rcx
     fc2: 48 63 55 e4                  	movslq	-28(%rbp), %rdx
     fc6: 48 01 d1                     	addq	%rdx, %rcx
     fc9: 48 8b 55 a8                  	movq	-88(%rbp), %rdx
     fcd: 48 89 d6                     	movq	%rdx, %rsi
     fd0: 48 81 c6 01 00 00 00         	addq	$1, %rsi
     fd7: 48 89 75 a8                  	movq	%rsi, -88(%rbp)
     fdb: 88 04 11                     	movb	%al, (%rcx,%rdx)
     fde: 83 7d b4 ff                  	cmpl	$-1, -76(%rbp)
     fe2: 0f 85 21 00 00 00            	jne	0x1009 <__ZL18yy_get_next_bufferv+0x409>
     fe8: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # fef <__ZL18yy_get_next_bufferv+0x3ef>
     fef: e8 00 00 00 00               	callq	0xff4 <__ZL18yy_get_next_bufferv+0x3f4>
     ff4: 83 f8 00                     	cmpl	$0, %eax
     ff7: 0f 84 0c 00 00 00            	je	0x1009 <__ZL18yy_get_next_bufferv+0x409>
     ffd: 48 8d 3d 5e 18 00 00         	leaq	6238(%rip), %rdi  # 2862 <__Z6yywarpv+0xa02>
    1004: e8 00 00 00 00               	callq	0x1009 <__ZL18yy_get_next_bufferv+0x409>
    1009: 48 8b 45 a8                  	movq	-88(%rbp), %rax
    100d: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 1014 <__ZL18yy_get_next_bufferv+0x414>
    1014: e9 bd 00 00 00               	jmp	0x10d6 <__ZL18yy_get_next_bufferv+0x4d6>
    1019: e8 00 00 00 00               	callq	0x101e <__ZL18yy_get_next_bufferv+0x41e>
    101e: c7 00 00 00 00 00            	movl	$0, (%rax)
    1024: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 102b <__ZL18yy_get_next_bufferv+0x42b>
    102b: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1032 <__ZL18yy_get_next_bufferv+0x432>
    1032: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1036: 48 8b 40 08                  	movq	8(%rax), %rax
    103a: 48 63 4d e4                  	movslq	-28(%rbp), %rcx
    103e: 48 01 c8                     	addq	%rcx, %rax
    1041: 48 8b 55 d0                  	movq	-48(%rbp), %rdx
    1045: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 104c <__ZL18yy_get_next_bufferv+0x44c>
    104c: 48 89 c7                     	movq	%rax, %rdi
    104f: be 01 00 00 00               	movl	$1, %esi
    1054: e8 00 00 00 00               	callq	0x1059 <__ZL18yy_get_next_bufferv+0x459>
    1059: 45 31 c0                     	xorl	%r8d, %r8d
    105c: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 1063 <__ZL18yy_get_next_bufferv+0x463>
    1063: 48 83 f8 00                  	cmpq	$0, %rax
    1067: 44 88 45 96                  	movb	%r8b, -106(%rbp)
    106b: 0f 85 15 00 00 00            	jne	0x1086 <__ZL18yy_get_next_bufferv+0x486>
    1071: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 1078 <__ZL18yy_get_next_bufferv+0x478>
    1078: e8 00 00 00 00               	callq	0x107d <__ZL18yy_get_next_bufferv+0x47d>
    107d: 83 f8 00                     	cmpl	$0, %eax
    1080: 0f 95 c1                     	setne	%cl
    1083: 88 4d 96                     	movb	%cl, -106(%rbp)
    1086: 8a 45 96                     	movb	-106(%rbp), %al
    1089: a8 01                        	testb	$1, %al
    108b: 0f 85 05 00 00 00            	jne	0x1096 <__ZL18yy_get_next_bufferv+0x496>
    1091: e9 3b 00 00 00               	jmp	0x10d1 <__ZL18yy_get_next_bufferv+0x4d1>
    1096: e8 00 00 00 00               	callq	0x109b <__ZL18yy_get_next_bufferv+0x49b>
    109b: 83 38 04                     	cmpl	$4, (%rax)
    109e: 0f 84 11 00 00 00            	je	0x10b5 <__ZL18yy_get_next_bufferv+0x4b5>
    10a4: 48 8d 3d b7 17 00 00         	leaq	6071(%rip), %rdi  # 2862 <__Z6yywarpv+0xa02>
    10ab: e8 00 00 00 00               	callq	0x10b0 <__ZL18yy_get_next_bufferv+0x4b0>
    10b0: e9 1c 00 00 00               	jmp	0x10d1 <__ZL18yy_get_next_bufferv+0x4d1>
    10b5: e8 00 00 00 00               	callq	0x10ba <__ZL18yy_get_next_bufferv+0x4ba>
    10ba: c7 00 00 00 00 00            	movl	$0, (%rax)
    10c0: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 10c7 <__ZL18yy_get_next_bufferv+0x4c7>
    10c7: e8 00 00 00 00               	callq	0x10cc <__ZL18yy_get_next_bufferv+0x4cc>
    10cc: e9 53 ff ff ff               	jmp	0x1024 <__ZL18yy_get_next_bufferv+0x424>
    10d1: e9 00 00 00 00               	jmp	0x10d6 <__ZL18yy_get_next_bufferv+0x4d6>
    10d6: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 10dd <__ZL18yy_get_next_bufferv+0x4dd>
    10dd: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 10e4 <__ZL18yy_get_next_bufferv+0x4e4>
    10e4: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 10eb <__ZL18yy_get_next_bufferv+0x4eb>
    10eb: 48 8b 0c d1                  	movq	(%rcx,%rdx,8), %rcx
    10ef: 48 89 41 20                  	movq	%rax, 32(%rcx)
    10f3: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 10fa <__ZL18yy_get_next_bufferv+0x4fa>
    10fb: 0f 85 47 00 00 00            	jne	0x1148 <__ZL18yy_get_next_bufferv+0x548>
    1101: 83 7d e4 00                  	cmpl	$0, -28(%rbp)
    1105: 0f 85 18 00 00 00            	jne	0x1123 <__ZL18yy_get_next_bufferv+0x523>
    110b: c7 45 dc 01 00 00 00         	movl	$1, -36(%rbp)
    1112: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 1119 <__ZL18yy_get_next_bufferv+0x519>
    1119: e8 00 00 00 00               	callq	0x111e <__ZL18yy_get_next_bufferv+0x51e>
    111e: e9 20 00 00 00               	jmp	0x1143 <__ZL18yy_get_next_bufferv+0x543>
    1123: c7 45 dc 02 00 00 00         	movl	$2, -36(%rbp)
    112a: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1131 <__ZL18yy_get_next_bufferv+0x531>
    1131: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1138 <__ZL18yy_get_next_bufferv+0x538>
    1138: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    113c: c7 40 40 02 00 00 00         	movl	$2, 64(%rax)
    1143: e9 07 00 00 00               	jmp	0x114f <__ZL18yy_get_next_bufferv+0x54f>
    1148: c7 45 dc 00 00 00 00         	movl	$0, -36(%rbp)
    114f: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1156 <__ZL18yy_get_next_bufferv+0x556>
    1156: 48 63 4d e4                  	movslq	-28(%rbp), %rcx
    115a: 48 01 c8                     	addq	%rcx, %rax
    115d: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1164 <__ZL18yy_get_next_bufferv+0x564>
    1164: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 116b <__ZL18yy_get_next_bufferv+0x56b>
    116b: 48 8b 0c d1                  	movq	(%rcx,%rdx,8), %rcx
    116f: 48 3b 41 18                  	cmpq	24(%rcx), %rax
    1173: 0f 86 83 00 00 00            	jbe	0x11fc <__ZL18yy_get_next_bufferv+0x5fc>
    1179: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1180 <__ZL18yy_get_next_bufferv+0x580>
    1180: 48 63 4d e4                  	movslq	-28(%rbp), %rcx
    1184: 48 01 c8                     	addq	%rcx, %rax
    1187: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 118e <__ZL18yy_get_next_bufferv+0x58e>
    118e: 48 c1 e9 01                  	shrq	$1, %rcx
    1192: 48 01 c8                     	addq	%rcx, %rax
    1195: 48 89 45 a0                  	movq	%rax, -96(%rbp)
    1199: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 11a0 <__ZL18yy_get_next_bufferv+0x5a0>
    11a0: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 11a7 <__ZL18yy_get_next_bufferv+0x5a7>
    11a7: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    11ab: 48 8b 78 08                  	movq	8(%rax), %rdi
    11af: 48 8b 75 a0                  	movq	-96(%rbp), %rsi
    11b3: e8 00 00 00 00               	callq	0x11b8 <__ZL18yy_get_next_bufferv+0x5b8>
    11b8: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 11bf <__ZL18yy_get_next_bufferv+0x5bf>
    11bf: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 11c6 <__ZL18yy_get_next_bufferv+0x5c6>
    11c6: 48 8b 0c d1                  	movq	(%rcx,%rdx,8), %rcx
    11ca: 48 89 41 08                  	movq	%rax, 8(%rcx)
    11ce: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 11d5 <__ZL18yy_get_next_bufferv+0x5d5>
    11d5: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 11dc <__ZL18yy_get_next_bufferv+0x5dc>
    11dc: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    11e0: 48 83 78 08 00               	cmpq	$0, 8(%rax)
    11e5: 0f 85 0c 00 00 00            	jne	0x11f7 <__ZL18yy_get_next_bufferv+0x5f7>
    11eb: 48 8d 3d 8d 16 00 00         	leaq	5773(%rip), %rdi  # 287f <__Z6yywarpv+0xa1f>
    11f2: e8 00 00 00 00               	callq	0x11f7 <__ZL18yy_get_next_bufferv+0x5f7>
    11f7: e9 00 00 00 00               	jmp	0x11fc <__ZL18yy_get_next_bufferv+0x5fc>
    11fc: 48 63 45 e4                  	movslq	-28(%rbp), %rax
    1200: 48 03 05 00 00 00 00         	addq	(%rip), %rax  # 1207 <__ZL18yy_get_next_bufferv+0x607>
    1207: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 120e <__ZL18yy_get_next_bufferv+0x60e>
    120e: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1215 <__ZL18yy_get_next_bufferv+0x615>
    1215: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 121c <__ZL18yy_get_next_bufferv+0x61c>
    121c: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1220: 48 8b 40 08                  	movq	8(%rax), %rax
    1224: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 122b <__ZL18yy_get_next_bufferv+0x62b>
    122b: c6 04 08 00                  	movb	$0, (%rax,%rcx)
    122f: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1236 <__ZL18yy_get_next_bufferv+0x636>
    1236: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 123d <__ZL18yy_get_next_bufferv+0x63d>
    123d: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1241: 48 8b 40 08                  	movq	8(%rax), %rax
    1245: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 124c <__ZL18yy_get_next_bufferv+0x64c>
    124c: c6 44 08 01 00               	movb	$0, 1(%rax,%rcx)
    1251: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1258 <__ZL18yy_get_next_bufferv+0x658>
    1258: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 125f <__ZL18yy_get_next_bufferv+0x65f>
    125f: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1263: 48 8b 40 08                  	movq	8(%rax), %rax
    1267: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 126e <__ZL18yy_get_next_bufferv+0x66e>
    126e: 8b 55 dc                     	movl	-36(%rbp), %edx
    1271: 89 55 fc                     	movl	%edx, -4(%rbp)
    1274: 8b 45 fc                     	movl	-4(%rbp), %eax
    1277: 48 83 c4 70                  	addq	$112, %rsp
    127b: 5d                           	popq	%rbp
    127c: c3                           	retq
    127d: 0f 1f 00                     	nopl	(%rax)

0000000000001280 <__Z9yyrestartP7__sFILE>:
    1280: 55                           	pushq	%rbp
    1281: 48 89 e5                     	movq	%rsp, %rbp
    1284: 48 83 ec 20                  	subq	$32, %rsp
    1288: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    128c: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 1293 <__Z9yyrestartP7__sFILE+0x13>
    1294: 0f 84 1b 00 00 00            	je	0x12b5 <__Z9yyrestartP7__sFILE+0x35>
    129a: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 12a1 <__Z9yyrestartP7__sFILE+0x21>
    12a1: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 12a8 <__Z9yyrestartP7__sFILE+0x28>
    12a8: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    12ac: 48 89 45 f0                  	movq	%rax, -16(%rbp)
    12b0: e9 0d 00 00 00               	jmp	0x12c2 <__Z9yyrestartP7__sFILE+0x42>
    12b5: 31 c0                        	xorl	%eax, %eax
    12b7: 89 c1                        	movl	%eax, %ecx
    12b9: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
    12bd: e9 00 00 00 00               	jmp	0x12c2 <__Z9yyrestartP7__sFILE+0x42>
    12c2: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    12c6: 48 83 f8 00                  	cmpq	$0, %rax
    12ca: 0f 85 28 00 00 00            	jne	0x12f8 <__Z9yyrestartP7__sFILE+0x78>
    12d0: e8 00 00 00 00               	callq	0x12d5 <__Z9yyrestartP7__sFILE+0x55>
    12d5: 48 8b 3d 00 00 00 00         	movq	(%rip), %rdi  # 12dc <__Z9yyrestartP7__sFILE+0x5c>
    12dc: be 00 40 00 00               	movl	$16384, %esi
    12e1: e8 00 00 00 00               	callq	0x12e6 <__Z9yyrestartP7__sFILE+0x66>
    12e6: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 12ed <__Z9yyrestartP7__sFILE+0x6d>
    12ed: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 12f4 <__Z9yyrestartP7__sFILE+0x74>
    12f4: 48 89 04 d1                  	movq	%rax, (%rcx,%rdx,8)
    12f8: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 12ff <__Z9yyrestartP7__sFILE+0x7f>
    1300: 0f 84 1b 00 00 00            	je	0x1321 <__Z9yyrestartP7__sFILE+0xa1>
    1306: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 130d <__Z9yyrestartP7__sFILE+0x8d>
    130d: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1314 <__Z9yyrestartP7__sFILE+0x94>
    1314: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1318: 48 89 45 e8                  	movq	%rax, -24(%rbp)
    131c: e9 0d 00 00 00               	jmp	0x132e <__Z9yyrestartP7__sFILE+0xae>
    1321: 31 c0                        	xorl	%eax, %eax
    1323: 89 c1                        	movl	%eax, %ecx
    1325: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
    1329: e9 00 00 00 00               	jmp	0x132e <__Z9yyrestartP7__sFILE+0xae>
    132e: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    1332: 48 8b 75 f8                  	movq	-8(%rbp), %rsi
    1336: 48 89 c7                     	movq	%rax, %rdi
    1339: e8 00 00 00 00               	callq	0x133e <__Z9yyrestartP7__sFILE+0xbe>
    133e: e8 00 00 00 00               	callq	0x1343 <__Z9yyrestartP7__sFILE+0xc3>
    1343: 48 83 c4 20                  	addq	$32, %rsp
    1347: 5d                           	popq	%rbp
    1348: c3                           	retq
    1349: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001350 <__ZL14yy_fatal_errorPKc>:
    1350: 55                           	pushq	%rbp
    1351: 48 89 e5                     	movq	%rsp, %rbp
    1354: 48 83 ec 10                  	subq	$16, %rsp
    1358: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    135c: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1363 <__ZL14yy_fatal_errorPKc+0x13>
    1363: 48 8b 38                     	movq	(%rax), %rdi
    1366: 48 8b 55 f8                  	movq	-8(%rbp), %rdx
    136a: 48 8d 35 6d 15 00 00         	leaq	5485(%rip), %rsi  # 28de <__Z6yywarpv+0xa7e>
    1371: 31 c9                        	xorl	%ecx, %ecx
    1373: 88 c8                        	movb	%cl, %al
    1375: e8 00 00 00 00               	callq	0x137a <__ZL14yy_fatal_errorPKc+0x2a>
    137a: bf 02 00 00 00               	movl	$2, %edi
    137f: 89 45 f4                     	movl	%eax, -12(%rbp)
    1382: e8 00 00 00 00               	callq	0x1387 <__ZL14yy_fatal_errorPKc+0x37>
    1387: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000001390 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE>:
    1390: 55                           	pushq	%rbp
    1391: 48 89 e5                     	movq	%rsp, %rbp
    1394: 48 83 ec 30                  	subq	$48, %rsp
    1398: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    139c: 48 89 75 f0                  	movq	%rsi, -16(%rbp)
    13a0: e8 00 00 00 00               	callq	0x13a5 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x15>
    13a5: 8b 08                        	movl	(%rax), %ecx
    13a7: 89 4d ec                     	movl	%ecx, -20(%rbp)
    13aa: 48 8b 7d f8                  	movq	-8(%rbp), %rdi
    13ae: e8 00 00 00 00               	callq	0x13b3 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x23>
    13b3: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    13b7: 48 8b 55 f8                  	movq	-8(%rbp), %rdx
    13bb: 48 89 02                     	movq	%rax, (%rdx)
    13be: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    13c2: c7 40 3c 01 00 00 00         	movl	$1, 60(%rax)
    13c9: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    13cd: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 13d4 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x44>
    13d5: 48 89 45 e0                  	movq	%rax, -32(%rbp)
    13d9: 0f 84 1b 00 00 00            	je	0x13fa <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x6a>
    13df: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 13e6 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x56>
    13e6: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 13ed <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x5d>
    13ed: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    13f1: 48 89 45 d8                  	movq	%rax, -40(%rbp)
    13f5: e9 0d 00 00 00               	jmp	0x1407 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x77>
    13fa: 31 c0                        	xorl	%eax, %eax
    13fc: 89 c1                        	movl	%eax, %ecx
    13fe: 48 89 4d d8                  	movq	%rcx, -40(%rbp)
    1402: e9 00 00 00 00               	jmp	0x1407 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x77>
    1407: 48 8b 45 d8                  	movq	-40(%rbp), %rax
    140b: 48 8b 4d e0                  	movq	-32(%rbp), %rcx
    140f: 48 39 c1                     	cmpq	%rax, %rcx
    1412: 0f 84 16 00 00 00            	je	0x142e <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0x9e>
    1418: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    141c: c7 40 34 01 00 00 00         	movl	$1, 52(%rax)
    1423: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1427: c7 40 38 00 00 00 00         	movl	$0, 56(%rax)
    142e: 48 83 7d f0 00               	cmpq	$0, -16(%rbp)
    1433: 0f 84 24 00 00 00            	je	0x145d <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0xcd>
    1439: 48 8b 7d f0                  	movq	-16(%rbp), %rdi
    143d: e8 00 00 00 00               	callq	0x1442 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0xb2>
    1442: 89 c7                        	movl	%eax, %edi
    1444: e8 00 00 00 00               	callq	0x1449 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0xb9>
    1449: 83 f8 00                     	cmpl	$0, %eax
    144c: 0f 9f c1                     	setg	%cl
    144f: 80 e1 01                     	andb	$1, %cl
    1452: 0f b6 c1                     	movzbl	%cl, %eax
    1455: 89 45 d4                     	movl	%eax, -44(%rbp)
    1458: e9 0a 00 00 00               	jmp	0x1467 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0xd7>
    145d: 31 c0                        	xorl	%eax, %eax
    145f: 89 45 d4                     	movl	%eax, -44(%rbp)
    1462: e9 00 00 00 00               	jmp	0x1467 <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0xd7>
    1467: 8b 45 d4                     	movl	-44(%rbp), %eax
    146a: 48 8b 4d f8                  	movq	-8(%rbp), %rcx
    146e: 89 41 2c                     	movl	%eax, 44(%rcx)
    1471: 8b 45 ec                     	movl	-20(%rbp), %eax
    1474: 89 45 d0                     	movl	%eax, -48(%rbp)
    1477: e8 00 00 00 00               	callq	0x147c <__ZL14yy_init_bufferP15yy_buffer_stateP7__sFILE+0xec>
    147c: 8b 55 d0                     	movl	-48(%rbp), %edx
    147f: 89 10                        	movl	%edx, (%rax)
    1481: 48 83 c4 30                  	addq	$48, %rsp
    1485: 5d                           	popq	%rbp
    1486: c3                           	retq
    1487: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000001490 <__Z19yy_switch_to_bufferP15yy_buffer_state>:
    1490: 55                           	pushq	%rbp
    1491: 48 89 e5                     	movq	%rsp, %rbp
    1494: 48 83 ec 20                  	subq	$32, %rsp
    1498: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    149c: e8 00 00 00 00               	callq	0x14a1 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x11>
    14a1: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 14a8 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x18>
    14a9: 0f 84 1b 00 00 00            	je	0x14ca <__Z19yy_switch_to_bufferP15yy_buffer_state+0x3a>
    14af: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 14b6 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x26>
    14b6: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 14bd <__Z19yy_switch_to_bufferP15yy_buffer_state+0x2d>
    14bd: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    14c1: 48 89 45 f0                  	movq	%rax, -16(%rbp)
    14c5: e9 0d 00 00 00               	jmp	0x14d7 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x47>
    14ca: 31 c0                        	xorl	%eax, %eax
    14cc: 89 c1                        	movl	%eax, %ecx
    14ce: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
    14d2: e9 00 00 00 00               	jmp	0x14d7 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x47>
    14d7: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    14db: 48 3b 45 f8                  	cmpq	-8(%rbp), %rax
    14df: 0f 85 05 00 00 00            	jne	0x14ea <__Z19yy_switch_to_bufferP15yy_buffer_state+0x5a>
    14e5: e9 b2 00 00 00               	jmp	0x159c <__Z19yy_switch_to_bufferP15yy_buffer_state+0x10c>
    14ea: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 14f1 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x61>
    14f2: 0f 84 1b 00 00 00            	je	0x1513 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x83>
    14f8: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 14ff <__Z19yy_switch_to_bufferP15yy_buffer_state+0x6f>
    14ff: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1506 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x76>
    1506: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    150a: 48 89 45 e8                  	movq	%rax, -24(%rbp)
    150e: e9 0d 00 00 00               	jmp	0x1520 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x90>
    1513: 31 c0                        	xorl	%eax, %eax
    1515: 89 c1                        	movl	%eax, %ecx
    1517: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
    151b: e9 00 00 00 00               	jmp	0x1520 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x90>
    1520: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    1524: 48 83 f8 00                  	cmpq	$0, %rax
    1528: 0f 84 49 00 00 00            	je	0x1577 <__Z19yy_switch_to_bufferP15yy_buffer_state+0xe7>
    152e: 8a 05 00 00 00 00            	movb	(%rip), %al  # 1534 <__Z19yy_switch_to_bufferP15yy_buffer_state+0xa4>
    1534: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 153b <__Z19yy_switch_to_bufferP15yy_buffer_state+0xab>
    153b: 88 01                        	movb	%al, (%rcx)
    153d: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1544 <__Z19yy_switch_to_bufferP15yy_buffer_state+0xb4>
    1544: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 154b <__Z19yy_switch_to_bufferP15yy_buffer_state+0xbb>
    154b: 48 8b 35 00 00 00 00         	movq	(%rip), %rsi  # 1552 <__Z19yy_switch_to_bufferP15yy_buffer_state+0xc2>
    1552: 48 8b 14 f2                  	movq	(%rdx,%rsi,8), %rdx
    1556: 48 89 4a 10                  	movq	%rcx, 16(%rdx)
    155a: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1561 <__Z19yy_switch_to_bufferP15yy_buffer_state+0xd1>
    1561: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 1568 <__Z19yy_switch_to_bufferP15yy_buffer_state+0xd8>
    1568: 48 8b 35 00 00 00 00         	movq	(%rip), %rsi  # 156f <__Z19yy_switch_to_bufferP15yy_buffer_state+0xdf>
    156f: 48 8b 14 f2                  	movq	(%rdx,%rsi,8), %rdx
    1573: 48 89 4a 20                  	movq	%rcx, 32(%rdx)
    1577: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    157b: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1582 <__Z19yy_switch_to_bufferP15yy_buffer_state+0xf2>
    1582: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 1589 <__Z19yy_switch_to_bufferP15yy_buffer_state+0xf9>
    1589: 48 89 04 d1                  	movq	%rax, (%rcx,%rdx,8)
    158d: e8 00 00 00 00               	callq	0x1592 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x102>
    1592: c7 05 fc ff ff ff 01 00 00 00	movl	$1, -4(%rip)  # 1598 <__Z19yy_switch_to_bufferP15yy_buffer_state+0x108>
    159c: 48 83 c4 20                  	addq	$32, %rsp
    15a0: 5d                           	popq	%rbp
    15a1: c3                           	retq
    15a2: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    15ac: 0f 1f 40 00                  	nopl	(%rax)

00000000000015b0 <__Z7yyallocm>:
    15b0: 55                           	pushq	%rbp
    15b1: 48 89 e5                     	movq	%rsp, %rbp
    15b4: 48 83 ec 10                  	subq	$16, %rsp
    15b8: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    15bc: 48 8b 7d f8                  	movq	-8(%rbp), %rdi
    15c0: e8 00 00 00 00               	callq	0x15c5 <__Z7yyallocm+0x15>
    15c5: 48 83 c4 10                  	addq	$16, %rsp
    15c9: 5d                           	popq	%rbp
    15ca: c3                           	retq
    15cb: 0f 1f 44 00 00               	nopl	(%rax,%rax)

00000000000015d0 <__Z16yy_delete_bufferP15yy_buffer_state>:
    15d0: 55                           	pushq	%rbp
    15d1: 48 89 e5                     	movq	%rsp, %rbp
    15d4: 48 83 ec 20                  	subq	$32, %rsp
    15d8: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    15dc: 48 83 7d f8 00               	cmpq	$0, -8(%rbp)
    15e1: 0f 85 05 00 00 00            	jne	0x15ec <__Z16yy_delete_bufferP15yy_buffer_state+0x1c>
    15e7: e9 8c 00 00 00               	jmp	0x1678 <__Z16yy_delete_bufferP15yy_buffer_state+0xa8>
    15ec: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    15f0: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 15f7 <__Z16yy_delete_bufferP15yy_buffer_state+0x27>
    15f8: 48 89 45 f0                  	movq	%rax, -16(%rbp)
    15fc: 0f 84 1b 00 00 00            	je	0x161d <__Z16yy_delete_bufferP15yy_buffer_state+0x4d>
    1602: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1609 <__Z16yy_delete_bufferP15yy_buffer_state+0x39>
    1609: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1610 <__Z16yy_delete_bufferP15yy_buffer_state+0x40>
    1610: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1614: 48 89 45 e8                  	movq	%rax, -24(%rbp)
    1618: e9 0d 00 00 00               	jmp	0x162a <__Z16yy_delete_bufferP15yy_buffer_state+0x5a>
    161d: 31 c0                        	xorl	%eax, %eax
    161f: 89 c1                        	movl	%eax, %ecx
    1621: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
    1625: e9 00 00 00 00               	jmp	0x162a <__Z16yy_delete_bufferP15yy_buffer_state+0x5a>
    162a: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    162e: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
    1632: 48 39 c1                     	cmpq	%rax, %rcx
    1635: 0f 85 16 00 00 00            	jne	0x1651 <__Z16yy_delete_bufferP15yy_buffer_state+0x81>
    163b: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1642 <__Z16yy_delete_bufferP15yy_buffer_state+0x72>
    1642: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1649 <__Z16yy_delete_bufferP15yy_buffer_state+0x79>
    1649: 48 c7 04 c8 00 00 00 00      	movq	$0, (%rax,%rcx,8)
    1651: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1655: 83 78 28 00                  	cmpl	$0, 40(%rax)
    1659: 0f 84 0d 00 00 00            	je	0x166c <__Z16yy_delete_bufferP15yy_buffer_state+0x9c>
    165f: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1663: 48 8b 78 08                  	movq	8(%rax), %rdi
    1667: e8 00 00 00 00               	callq	0x166c <__Z16yy_delete_bufferP15yy_buffer_state+0x9c>
    166c: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1670: 48 89 c7                     	movq	%rax, %rdi
    1673: e8 00 00 00 00               	callq	0x1678 <__Z16yy_delete_bufferP15yy_buffer_state+0xa8>
    1678: 48 83 c4 20                  	addq	$32, %rsp
    167c: 5d                           	popq	%rbp
    167d: c3                           	retq
    167e: 66 90                        	nop

0000000000001680 <__Z6yyfreePv>:
    1680: 55                           	pushq	%rbp
    1681: 48 89 e5                     	movq	%rsp, %rbp
    1684: 48 83 ec 10                  	subq	$16, %rsp
    1688: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    168c: 48 8b 7d f8                  	movq	-8(%rbp), %rdi
    1690: e8 00 00 00 00               	callq	0x1695 <__Z6yyfreePv+0x15>
    1695: 48 83 c4 10                  	addq	$16, %rsp
    1699: 5d                           	popq	%rbp
    169a: c3                           	retq
    169b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

00000000000016a0 <__Z15yy_flush_bufferP15yy_buffer_state>:
    16a0: 55                           	pushq	%rbp
    16a1: 48 89 e5                     	movq	%rsp, %rbp
    16a4: 48 83 ec 20                  	subq	$32, %rsp
    16a8: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    16ac: 48 83 7d f8 00               	cmpq	$0, -8(%rbp)
    16b1: 0f 85 05 00 00 00            	jne	0x16bc <__Z15yy_flush_bufferP15yy_buffer_state+0x1c>
    16b7: e9 9d 00 00 00               	jmp	0x1759 <__Z15yy_flush_bufferP15yy_buffer_state+0xb9>
    16bc: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    16c0: 48 c7 40 20 00 00 00 00      	movq	$0, 32(%rax)
    16c8: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    16cc: 48 8b 40 08                  	movq	8(%rax), %rax
    16d0: c6 00 00                     	movb	$0, (%rax)
    16d3: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    16d7: 48 8b 40 08                  	movq	8(%rax), %rax
    16db: c6 40 01 00                  	movb	$0, 1(%rax)
    16df: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    16e3: 48 8b 40 08                  	movq	8(%rax), %rax
    16e7: 48 8b 4d f8                  	movq	-8(%rbp), %rcx
    16eb: 48 89 41 10                  	movq	%rax, 16(%rcx)
    16ef: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    16f3: c7 40 30 01 00 00 00         	movl	$1, 48(%rax)
    16fa: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    16fe: c7 40 40 00 00 00 00         	movl	$0, 64(%rax)
    1705: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1709: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 1710 <__Z15yy_flush_bufferP15yy_buffer_state+0x70>
    1711: 48 89 45 f0                  	movq	%rax, -16(%rbp)
    1715: 0f 84 1b 00 00 00            	je	0x1736 <__Z15yy_flush_bufferP15yy_buffer_state+0x96>
    171b: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1722 <__Z15yy_flush_bufferP15yy_buffer_state+0x82>
    1722: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1729 <__Z15yy_flush_bufferP15yy_buffer_state+0x89>
    1729: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    172d: 48 89 45 e8                  	movq	%rax, -24(%rbp)
    1731: e9 0d 00 00 00               	jmp	0x1743 <__Z15yy_flush_bufferP15yy_buffer_state+0xa3>
    1736: 31 c0                        	xorl	%eax, %eax
    1738: 89 c1                        	movl	%eax, %ecx
    173a: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
    173e: e9 00 00 00 00               	jmp	0x1743 <__Z15yy_flush_bufferP15yy_buffer_state+0xa3>
    1743: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    1747: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
    174b: 48 39 c1                     	cmpq	%rax, %rcx
    174e: 0f 85 05 00 00 00            	jne	0x1759 <__Z15yy_flush_bufferP15yy_buffer_state+0xb9>
    1754: e8 00 00 00 00               	callq	0x1759 <__Z15yy_flush_bufferP15yy_buffer_state+0xb9>
    1759: 48 83 c4 20                  	addq	$32, %rsp
    175d: 5d                           	popq	%rbp
    175e: c3                           	retq
    175f: 90                           	nop

0000000000001760 <__Z19yypush_buffer_stateP15yy_buffer_state>:
    1760: 55                           	pushq	%rbp
    1761: 48 89 e5                     	movq	%rsp, %rbp
    1764: 48 83 ec 20                  	subq	$32, %rsp
    1768: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    176c: 48 83 7d f8 00               	cmpq	$0, -8(%rbp)
    1771: 0f 85 05 00 00 00            	jne	0x177c <__Z19yypush_buffer_stateP15yy_buffer_state+0x1c>
    1777: e9 0f 01 00 00               	jmp	0x188b <__Z19yypush_buffer_stateP15yy_buffer_state+0x12b>
    177c: e8 00 00 00 00               	callq	0x1781 <__Z19yypush_buffer_stateP15yy_buffer_state+0x21>
    1781: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 1788 <__Z19yypush_buffer_stateP15yy_buffer_state+0x28>
    1789: 0f 84 1b 00 00 00            	je	0x17aa <__Z19yypush_buffer_stateP15yy_buffer_state+0x4a>
    178f: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1796 <__Z19yypush_buffer_stateP15yy_buffer_state+0x36>
    1796: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 179d <__Z19yypush_buffer_stateP15yy_buffer_state+0x3d>
    179d: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    17a1: 48 89 45 f0                  	movq	%rax, -16(%rbp)
    17a5: e9 0d 00 00 00               	jmp	0x17b7 <__Z19yypush_buffer_stateP15yy_buffer_state+0x57>
    17aa: 31 c0                        	xorl	%eax, %eax
    17ac: 89 c1                        	movl	%eax, %ecx
    17ae: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
    17b2: e9 00 00 00 00               	jmp	0x17b7 <__Z19yypush_buffer_stateP15yy_buffer_state+0x57>
    17b7: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    17bb: 48 83 f8 00                  	cmpq	$0, %rax
    17bf: 0f 84 49 00 00 00            	je	0x180e <__Z19yypush_buffer_stateP15yy_buffer_state+0xae>
    17c5: 8a 05 00 00 00 00            	movb	(%rip), %al  # 17cb <__Z19yypush_buffer_stateP15yy_buffer_state+0x6b>
    17cb: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 17d2 <__Z19yypush_buffer_stateP15yy_buffer_state+0x72>
    17d2: 88 01                        	movb	%al, (%rcx)
    17d4: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 17db <__Z19yypush_buffer_stateP15yy_buffer_state+0x7b>
    17db: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 17e2 <__Z19yypush_buffer_stateP15yy_buffer_state+0x82>
    17e2: 48 8b 35 00 00 00 00         	movq	(%rip), %rsi  # 17e9 <__Z19yypush_buffer_stateP15yy_buffer_state+0x89>
    17e9: 48 8b 14 f2                  	movq	(%rdx,%rsi,8), %rdx
    17ed: 48 89 4a 10                  	movq	%rcx, 16(%rdx)
    17f1: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 17f8 <__Z19yypush_buffer_stateP15yy_buffer_state+0x98>
    17f8: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 17ff <__Z19yypush_buffer_stateP15yy_buffer_state+0x9f>
    17ff: 48 8b 35 00 00 00 00         	movq	(%rip), %rsi  # 1806 <__Z19yypush_buffer_stateP15yy_buffer_state+0xa6>
    1806: 48 8b 14 f2                  	movq	(%rdx,%rsi,8), %rdx
    180a: 48 89 4a 20                  	movq	%rcx, 32(%rdx)
    180e: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 1815 <__Z19yypush_buffer_stateP15yy_buffer_state+0xb5>
    1816: 0f 84 1b 00 00 00            	je	0x1837 <__Z19yypush_buffer_stateP15yy_buffer_state+0xd7>
    181c: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1823 <__Z19yypush_buffer_stateP15yy_buffer_state+0xc3>
    1823: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 182a <__Z19yypush_buffer_stateP15yy_buffer_state+0xca>
    182a: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    182e: 48 89 45 e8                  	movq	%rax, -24(%rbp)
    1832: e9 0d 00 00 00               	jmp	0x1844 <__Z19yypush_buffer_stateP15yy_buffer_state+0xe4>
    1837: 31 c0                        	xorl	%eax, %eax
    1839: 89 c1                        	movl	%eax, %ecx
    183b: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
    183f: e9 00 00 00 00               	jmp	0x1844 <__Z19yypush_buffer_stateP15yy_buffer_state+0xe4>
    1844: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    1848: 48 83 f8 00                  	cmpq	$0, %rax
    184c: 0f 84 14 00 00 00            	je	0x1866 <__Z19yypush_buffer_stateP15yy_buffer_state+0x106>
    1852: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1859 <__Z19yypush_buffer_stateP15yy_buffer_state+0xf9>
    1859: 48 05 01 00 00 00            	addq	$1, %rax
    185f: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 1866 <__Z19yypush_buffer_stateP15yy_buffer_state+0x106>
    1866: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    186a: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1871 <__Z19yypush_buffer_stateP15yy_buffer_state+0x111>
    1871: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx  # 1878 <__Z19yypush_buffer_stateP15yy_buffer_state+0x118>
    1878: 48 89 04 d1                  	movq	%rax, (%rcx,%rdx,8)
    187c: e8 00 00 00 00               	callq	0x1881 <__Z19yypush_buffer_stateP15yy_buffer_state+0x121>
    1881: c7 05 fc ff ff ff 01 00 00 00	movl	$1, -4(%rip)  # 1887 <__Z19yypush_buffer_stateP15yy_buffer_state+0x127>
    188b: 48 83 c4 20                  	addq	$32, %rsp
    188f: 5d                           	popq	%rbp
    1890: c3                           	retq
    1891: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    189b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

00000000000018a0 <__Z18yypop_buffer_statev>:
    18a0: 55                           	pushq	%rbp
    18a1: 48 89 e5                     	movq	%rsp, %rbp
    18a4: 48 83 ec 20                  	subq	$32, %rsp
    18a8: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 18af <__Z18yypop_buffer_statev+0xf>
    18b0: 0f 84 1b 00 00 00            	je	0x18d1 <__Z18yypop_buffer_statev+0x31>
    18b6: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 18bd <__Z18yypop_buffer_statev+0x1d>
    18bd: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 18c4 <__Z18yypop_buffer_statev+0x24>
    18c4: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    18c8: 48 89 45 f8                  	movq	%rax, -8(%rbp)
    18cc: e9 0d 00 00 00               	jmp	0x18de <__Z18yypop_buffer_statev+0x3e>
    18d1: 31 c0                        	xorl	%eax, %eax
    18d3: 89 c1                        	movl	%eax, %ecx
    18d5: 48 89 4d f8                  	movq	%rcx, -8(%rbp)
    18d9: e9 00 00 00 00               	jmp	0x18de <__Z18yypop_buffer_statev+0x3e>
    18de: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    18e2: 48 83 f8 00                  	cmpq	$0, %rax
    18e6: 0f 85 05 00 00 00            	jne	0x18f1 <__Z18yypop_buffer_statev+0x51>
    18ec: e9 cd 00 00 00               	jmp	0x19be <__Z18yypop_buffer_statev+0x11e>
    18f1: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 18f8 <__Z18yypop_buffer_statev+0x58>
    18f9: 0f 84 1b 00 00 00            	je	0x191a <__Z18yypop_buffer_statev+0x7a>
    18ff: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1906 <__Z18yypop_buffer_statev+0x66>
    1906: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 190d <__Z18yypop_buffer_statev+0x6d>
    190d: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1911: 48 89 45 f0                  	movq	%rax, -16(%rbp)
    1915: e9 0d 00 00 00               	jmp	0x1927 <__Z18yypop_buffer_statev+0x87>
    191a: 31 c0                        	xorl	%eax, %eax
    191c: 89 c1                        	movl	%eax, %ecx
    191e: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
    1922: e9 00 00 00 00               	jmp	0x1927 <__Z18yypop_buffer_statev+0x87>
    1927: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    192b: 48 89 c7                     	movq	%rax, %rdi
    192e: e8 00 00 00 00               	callq	0x1933 <__Z18yypop_buffer_statev+0x93>
    1933: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 193a <__Z18yypop_buffer_statev+0x9a>
    193a: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1941 <__Z18yypop_buffer_statev+0xa1>
    1941: 48 c7 04 c8 00 00 00 00      	movq	$0, (%rax,%rcx,8)
    1949: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 1950 <__Z18yypop_buffer_statev+0xb0>
    1951: 0f 86 14 00 00 00            	jbe	0x196b <__Z18yypop_buffer_statev+0xcb>
    1957: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 195e <__Z18yypop_buffer_statev+0xbe>
    195e: 48 05 ff ff ff ff            	addq	$-1, %rax
    1964: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 196b <__Z18yypop_buffer_statev+0xcb>
    196b: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 1972 <__Z18yypop_buffer_statev+0xd2>
    1973: 0f 84 1b 00 00 00            	je	0x1994 <__Z18yypop_buffer_statev+0xf4>
    1979: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1980 <__Z18yypop_buffer_statev+0xe0>
    1980: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1987 <__Z18yypop_buffer_statev+0xe7>
    1987: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    198b: 48 89 45 e8                  	movq	%rax, -24(%rbp)
    198f: e9 0d 00 00 00               	jmp	0x19a1 <__Z18yypop_buffer_statev+0x101>
    1994: 31 c0                        	xorl	%eax, %eax
    1996: 89 c1                        	movl	%eax, %ecx
    1998: 48 89 4d e8                  	movq	%rcx, -24(%rbp)
    199c: e9 00 00 00 00               	jmp	0x19a1 <__Z18yypop_buffer_statev+0x101>
    19a1: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    19a5: 48 83 f8 00                  	cmpq	$0, %rax
    19a9: 0f 84 0f 00 00 00            	je	0x19be <__Z18yypop_buffer_statev+0x11e>
    19af: e8 00 00 00 00               	callq	0x19b4 <__Z18yypop_buffer_statev+0x114>
    19b4: c7 05 fc ff ff ff 01 00 00 00	movl	$1, -4(%rip)  # 19ba <__Z18yypop_buffer_statev+0x11a>
    19be: 48 83 c4 20                  	addq	$32, %rsp
    19c2: 5d                           	popq	%rbp
    19c3: c3                           	retq
    19c4: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    19ce: 66 90                        	nop

00000000000019d0 <__Z14yy_scan_bufferPcm>:
    19d0: 55                           	pushq	%rbp
    19d1: 48 89 e5                     	movq	%rsp, %rbp
    19d4: 48 83 ec 20                  	subq	$32, %rsp
    19d8: 48 89 7d f0                  	movq	%rdi, -16(%rbp)
    19dc: 48 89 75 e8                  	movq	%rsi, -24(%rbp)
    19e0: 48 83 7d e8 02               	cmpq	$2, -24(%rbp)
    19e5: 0f 82 38 00 00 00            	jb	0x1a23 <__Z14yy_scan_bufferPcm+0x53>
    19eb: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    19ef: 48 8b 4d e8                  	movq	-24(%rbp), %rcx
    19f3: 48 81 e9 02 00 00 00         	subq	$2, %rcx
    19fa: 0f be 14 08                  	movsbl	(%rax,%rcx), %edx
    19fe: 83 fa 00                     	cmpl	$0, %edx
    1a01: 0f 85 1c 00 00 00            	jne	0x1a23 <__Z14yy_scan_bufferPcm+0x53>
    1a07: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    1a0b: 48 8b 4d e8                  	movq	-24(%rbp), %rcx
    1a0f: 48 81 e9 01 00 00 00         	subq	$1, %rcx
    1a16: 0f be 14 08                  	movsbl	(%rax,%rcx), %edx
    1a1a: 83 fa 00                     	cmpl	$0, %edx
    1a1d: 0f 84 0d 00 00 00            	je	0x1a30 <__Z14yy_scan_bufferPcm+0x60>
    1a23: 48 c7 45 f8 00 00 00 00      	movq	$0, -8(%rbp)
    1a2b: e9 ae 00 00 00               	jmp	0x1ade <__Z14yy_scan_bufferPcm+0x10e>
    1a30: bf 48 00 00 00               	movl	$72, %edi
    1a35: e8 00 00 00 00               	callq	0x1a3a <__Z14yy_scan_bufferPcm+0x6a>
    1a3a: 48 89 45 e0                  	movq	%rax, -32(%rbp)
    1a3e: 48 83 7d e0 00               	cmpq	$0, -32(%rbp)
    1a43: 0f 85 0c 00 00 00            	jne	0x1a55 <__Z14yy_scan_bufferPcm+0x85>
    1a49: 48 8d 3d 3d 0d 00 00         	leaq	3389(%rip), %rdi  # 278d <__Z6yywarpv+0x92d>
    1a50: e8 00 00 00 00               	callq	0x1a55 <__Z14yy_scan_bufferPcm+0x85>
    1a55: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    1a59: 48 2d 02 00 00 00            	subq	$2, %rax
    1a5f: 48 8b 4d e0                  	movq	-32(%rbp), %rcx
    1a63: 48 89 41 18                  	movq	%rax, 24(%rcx)
    1a67: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    1a6b: 48 8b 4d e0                  	movq	-32(%rbp), %rcx
    1a6f: 48 89 41 08                  	movq	%rax, 8(%rcx)
    1a73: 48 8b 4d e0                  	movq	-32(%rbp), %rcx
    1a77: 48 89 41 10                  	movq	%rax, 16(%rcx)
    1a7b: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1a7f: c7 40 28 00 00 00 00         	movl	$0, 40(%rax)
    1a86: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1a8a: 48 c7 00 00 00 00 00         	movq	$0, (%rax)
    1a91: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1a95: 48 8b 40 18                  	movq	24(%rax), %rax
    1a99: 48 8b 4d e0                  	movq	-32(%rbp), %rcx
    1a9d: 48 89 41 20                  	movq	%rax, 32(%rcx)
    1aa1: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1aa5: c7 40 2c 00 00 00 00         	movl	$0, 44(%rax)
    1aac: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1ab0: c7 40 30 01 00 00 00         	movl	$1, 48(%rax)
    1ab7: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1abb: c7 40 3c 00 00 00 00         	movl	$0, 60(%rax)
    1ac2: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1ac6: c7 40 40 00 00 00 00         	movl	$0, 64(%rax)
    1acd: 48 8b 7d e0                  	movq	-32(%rbp), %rdi
    1ad1: e8 00 00 00 00               	callq	0x1ad6 <__Z14yy_scan_bufferPcm+0x106>
    1ad6: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1ada: 48 89 45 f8                  	movq	%rax, -8(%rbp)
    1ade: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1ae2: 48 83 c4 20                  	addq	$32, %rsp
    1ae6: 5d                           	popq	%rbp
    1ae7: c3                           	retq
    1ae8: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)

0000000000001af0 <__Z14yy_scan_stringPKc>:
    1af0: 55                           	pushq	%rbp
    1af1: 48 89 e5                     	movq	%rsp, %rbp
    1af4: 48 83 ec 10                  	subq	$16, %rsp
    1af8: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    1afc: 48 8b 7d f8                  	movq	-8(%rbp), %rdi
    1b00: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1b04: 48 89 7d f0                  	movq	%rdi, -16(%rbp)
    1b08: 48 89 c7                     	movq	%rax, %rdi
    1b0b: e8 00 00 00 00               	callq	0x1b10 <__Z14yy_scan_stringPKc+0x20>
    1b10: 48 8b 7d f0                  	movq	-16(%rbp), %rdi
    1b14: 48 89 c6                     	movq	%rax, %rsi
    1b17: e8 00 00 00 00               	callq	0x1b1c <__Z14yy_scan_stringPKc+0x2c>
    1b1c: 48 83 c4 10                  	addq	$16, %rsp
    1b20: 5d                           	popq	%rbp
    1b21: c3                           	retq
    1b22: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    1b2c: 0f 1f 40 00                  	nopl	(%rax)

0000000000001b30 <__Z13yy_scan_bytesPKcm>:
    1b30: 55                           	pushq	%rbp
    1b31: 48 89 e5                     	movq	%rsp, %rbp
    1b34: 48 83 ec 30                  	subq	$48, %rsp
    1b38: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    1b3c: 48 89 75 f0                  	movq	%rsi, -16(%rbp)
    1b40: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    1b44: 48 05 02 00 00 00            	addq	$2, %rax
    1b4a: 48 89 45 d8                  	movq	%rax, -40(%rbp)
    1b4e: 48 8b 7d d8                  	movq	-40(%rbp), %rdi
    1b52: e8 00 00 00 00               	callq	0x1b57 <__Z13yy_scan_bytesPKcm+0x27>
    1b57: 48 89 45 e0                  	movq	%rax, -32(%rbp)
    1b5b: 48 83 7d e0 00               	cmpq	$0, -32(%rbp)
    1b60: 0f 85 0c 00 00 00            	jne	0x1b72 <__Z13yy_scan_bytesPKcm+0x42>
    1b66: 48 8d 3d 4a 0c 00 00         	leaq	3146(%rip), %rdi  # 27b7 <__Z6yywarpv+0x957>
    1b6d: e8 00 00 00 00               	callq	0x1b72 <__Z13yy_scan_bytesPKcm+0x42>
    1b72: 48 c7 45 d0 00 00 00 00      	movq	$0, -48(%rbp)
    1b7a: 48 8b 45 d0                  	movq	-48(%rbp), %rax
    1b7e: 48 3b 45 f0                  	cmpq	-16(%rbp), %rax
    1b82: 0f 83 29 00 00 00            	jae	0x1bb1 <__Z13yy_scan_bytesPKcm+0x81>
    1b88: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1b8c: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
    1b90: 8a 14 08                     	movb	(%rax,%rcx), %dl
    1b93: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1b97: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
    1b9b: 88 14 08                     	movb	%dl, (%rax,%rcx)
    1b9e: 48 8b 45 d0                  	movq	-48(%rbp), %rax
    1ba2: 48 05 01 00 00 00            	addq	$1, %rax
    1ba8: 48 89 45 d0                  	movq	%rax, -48(%rbp)
    1bac: e9 c9 ff ff ff               	jmp	0x1b7a <__Z13yy_scan_bytesPKcm+0x4a>
    1bb1: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1bb5: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
    1bb9: c6 44 08 01 00               	movb	$0, 1(%rax,%rcx)
    1bbe: 48 8b 45 e0                  	movq	-32(%rbp), %rax
    1bc2: 48 8b 4d f0                  	movq	-16(%rbp), %rcx
    1bc6: c6 04 08 00                  	movb	$0, (%rax,%rcx)
    1bca: 48 8b 7d e0                  	movq	-32(%rbp), %rdi
    1bce: 48 8b 75 d8                  	movq	-40(%rbp), %rsi
    1bd2: e8 00 00 00 00               	callq	0x1bd7 <__Z13yy_scan_bytesPKcm+0xa7>
    1bd7: 48 89 45 e8                  	movq	%rax, -24(%rbp)
    1bdb: 48 83 7d e8 00               	cmpq	$0, -24(%rbp)
    1be0: 0f 85 0c 00 00 00            	jne	0x1bf2 <__Z13yy_scan_bytesPKcm+0xc2>
    1be6: 48 8d 3d f3 0b 00 00         	leaq	3059(%rip), %rdi  # 27e0 <__Z6yywarpv+0x980>
    1bed: e8 00 00 00 00               	callq	0x1bf2 <__Z13yy_scan_bytesPKcm+0xc2>
    1bf2: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    1bf6: c7 40 28 01 00 00 00         	movl	$1, 40(%rax)
    1bfd: 48 8b 45 e8                  	movq	-24(%rbp), %rax
    1c01: 48 83 c4 30                  	addq	$48, %rsp
    1c05: 5d                           	popq	%rbp
    1c06: c3                           	retq
    1c07: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000001c10 <__Z12yyget_linenov>:
    1c10: 55                           	pushq	%rbp
    1c11: 48 89 e5                     	movq	%rsp, %rbp
    1c14: 8b 05 00 00 00 00            	movl	(%rip), %eax  # 1c1a <__Z12yyget_linenov+0xa>
    1c1a: 5d                           	popq	%rbp
    1c1b: c3                           	retq
    1c1c: 0f 1f 40 00                  	nopl	(%rax)

0000000000001c20 <__Z8yyget_inv>:
    1c20: 55                           	pushq	%rbp
    1c21: 48 89 e5                     	movq	%rsp, %rbp
    1c24: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1c2b <__Z8yyget_inv+0xb>
    1c2b: 5d                           	popq	%rbp
    1c2c: c3                           	retq
    1c2d: 0f 1f 00                     	nopl	(%rax)

0000000000001c30 <__Z9yyget_outv>:
    1c30: 55                           	pushq	%rbp
    1c31: 48 89 e5                     	movq	%rsp, %rbp
    1c34: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1c3b <__Z9yyget_outv+0xb>
    1c3b: 5d                           	popq	%rbp
    1c3c: c3                           	retq
    1c3d: 0f 1f 00                     	nopl	(%rax)

0000000000001c40 <__Z10yyget_lengv>:
    1c40: 55                           	pushq	%rbp
    1c41: 48 89 e5                     	movq	%rsp, %rbp
    1c44: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1c4b <__Z10yyget_lengv+0xb>
    1c4b: 5d                           	popq	%rbp
    1c4c: c3                           	retq
    1c4d: 0f 1f 00                     	nopl	(%rax)

0000000000001c50 <__Z10yyget_textv>:
    1c50: 55                           	pushq	%rbp
    1c51: 48 89 e5                     	movq	%rsp, %rbp
    1c54: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1c5b <__Z10yyget_textv+0xb>
    1c5b: 5d                           	popq	%rbp
    1c5c: c3                           	retq
    1c5d: 0f 1f 00                     	nopl	(%rax)

0000000000001c60 <__Z12yyset_linenoi>:
    1c60: 55                           	pushq	%rbp
    1c61: 48 89 e5                     	movq	%rsp, %rbp
    1c64: 89 7d fc                     	movl	%edi, -4(%rbp)
    1c67: 8b 45 fc                     	movl	-4(%rbp), %eax
    1c6a: 89 05 00 00 00 00            	movl	%eax, (%rip)  # 1c70 <__Z12yyset_linenoi+0x10>
    1c70: 5d                           	popq	%rbp
    1c71: c3                           	retq
    1c72: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    1c7c: 0f 1f 40 00                  	nopl	(%rax)

0000000000001c80 <__Z8yyset_inP7__sFILE>:
    1c80: 55                           	pushq	%rbp
    1c81: 48 89 e5                     	movq	%rsp, %rbp
    1c84: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    1c88: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1c8c: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 1c93 <__Z8yyset_inP7__sFILE+0x13>
    1c93: 5d                           	popq	%rbp
    1c94: c3                           	retq
    1c95: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    1c9f: 90                           	nop

0000000000001ca0 <__Z9yyset_outP7__sFILE>:
    1ca0: 55                           	pushq	%rbp
    1ca1: 48 89 e5                     	movq	%rsp, %rbp
    1ca4: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    1ca8: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1cac: 48 89 05 00 00 00 00         	movq	%rax, (%rip)  # 1cb3 <__Z9yyset_outP7__sFILE+0x13>
    1cb3: 5d                           	popq	%rbp
    1cb4: c3                           	retq
    1cb5: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    1cbf: 90                           	nop

0000000000001cc0 <__Z11yyget_debugv>:
    1cc0: 55                           	pushq	%rbp
    1cc1: 48 89 e5                     	movq	%rsp, %rbp
    1cc4: 8b 05 00 00 00 00            	movl	(%rip), %eax  # 1cca <__Z11yyget_debugv+0xa>
    1cca: 5d                           	popq	%rbp
    1ccb: c3                           	retq
    1ccc: 0f 1f 40 00                  	nopl	(%rax)

0000000000001cd0 <__Z11yyset_debugi>:
    1cd0: 55                           	pushq	%rbp
    1cd1: 48 89 e5                     	movq	%rsp, %rbp
    1cd4: 89 7d fc                     	movl	%edi, -4(%rbp)
    1cd7: 8b 45 fc                     	movl	-4(%rbp), %eax
    1cda: 89 05 00 00 00 00            	movl	%eax, (%rip)  # 1ce0 <__Z11yyset_debugi+0x10>
    1ce0: 5d                           	popq	%rbp
    1ce1: c3                           	retq
    1ce2: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    1cec: 0f 1f 40 00                  	nopl	(%rax)

0000000000001cf0 <__Z13yylex_destroyv>:
    1cf0: 55                           	pushq	%rbp
    1cf1: 48 89 e5                     	movq	%rsp, %rbp
    1cf4: 48 83 ec 20                  	subq	$32, %rsp
    1cf8: e9 00 00 00 00               	jmp	0x1cfd <__Z13yylex_destroyv+0xd>
    1cfd: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 1d04 <__Z13yylex_destroyv+0x14>
    1d05: 0f 84 1b 00 00 00            	je	0x1d26 <__Z13yylex_destroyv+0x36>
    1d0b: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1d12 <__Z13yylex_destroyv+0x22>
    1d12: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1d19 <__Z13yylex_destroyv+0x29>
    1d19: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1d1d: 48 89 45 f8                  	movq	%rax, -8(%rbp)
    1d21: e9 0d 00 00 00               	jmp	0x1d33 <__Z13yylex_destroyv+0x43>
    1d26: 31 c0                        	xorl	%eax, %eax
    1d28: 89 c1                        	movl	%eax, %ecx
    1d2a: 48 89 4d f8                  	movq	%rcx, -8(%rbp)
    1d2e: e9 00 00 00 00               	jmp	0x1d33 <__Z13yylex_destroyv+0x43>
    1d33: 48 8b 45 f8                  	movq	-8(%rbp), %rax
    1d37: 48 83 f8 00                  	cmpq	$0, %rax
    1d3b: 0f 84 62 00 00 00            	je	0x1da3 <__Z13yylex_destroyv+0xb3>
    1d41: 48 83 3d ff ff ff ff 00      	cmpq	$0, -1(%rip)  # 1d48 <__Z13yylex_destroyv+0x58>
    1d49: 0f 84 1b 00 00 00            	je	0x1d6a <__Z13yylex_destroyv+0x7a>
    1d4f: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1d56 <__Z13yylex_destroyv+0x66>
    1d56: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1d5d <__Z13yylex_destroyv+0x6d>
    1d5d: 48 8b 04 c8                  	movq	(%rax,%rcx,8), %rax
    1d61: 48 89 45 f0                  	movq	%rax, -16(%rbp)
    1d65: e9 0d 00 00 00               	jmp	0x1d77 <__Z13yylex_destroyv+0x87>
    1d6a: 31 c0                        	xorl	%eax, %eax
    1d6c: 89 c1                        	movl	%eax, %ecx
    1d6e: 48 89 4d f0                  	movq	%rcx, -16(%rbp)
    1d72: e9 00 00 00 00               	jmp	0x1d77 <__Z13yylex_destroyv+0x87>
    1d77: 48 8b 45 f0                  	movq	-16(%rbp), %rax
    1d7b: 48 89 c7                     	movq	%rax, %rdi
    1d7e: e8 00 00 00 00               	callq	0x1d83 <__Z13yylex_destroyv+0x93>
    1d83: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1d8a <__Z13yylex_destroyv+0x9a>
    1d8a: 48 8b 0d 00 00 00 00         	movq	(%rip), %rcx  # 1d91 <__Z13yylex_destroyv+0xa1>
    1d91: 48 c7 04 c8 00 00 00 00      	movq	$0, (%rax,%rcx,8)
    1d99: e8 00 00 00 00               	callq	0x1d9e <__Z13yylex_destroyv+0xae>
    1d9e: e9 5a ff ff ff               	jmp	0x1cfd <__Z13yylex_destroyv+0xd>
    1da3: 48 8b 05 00 00 00 00         	movq	(%rip), %rax  # 1daa <__Z13yylex_destroyv+0xba>
    1daa: 48 89 c7                     	movq	%rax, %rdi
    1dad: e8 00 00 00 00               	callq	0x1db2 <__Z13yylex_destroyv+0xc2>
    1db2: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # 1db9 <__Z13yylex_destroyv+0xc9>
    1dbd: e8 00 00 00 00               	callq	0x1dc2 <__Z13yylex_destroyv+0xd2>
    1dc2: 31 c9                        	xorl	%ecx, %ecx
    1dc4: 89 45 ec                     	movl	%eax, -20(%rbp)
    1dc7: 89 c8                        	movl	%ecx, %eax
    1dc9: 48 83 c4 20                  	addq	$32, %rsp
    1dcd: 5d                           	popq	%rbp
    1dce: c3                           	retq
    1dcf: 90                           	nop

0000000000001dd0 <__ZL15yy_init_globalsv>:
    1dd0: 55                           	pushq	%rbp
    1dd1: 48 89 e5                     	movq	%rsp, %rbp
    1dd4: 31 c0                        	xorl	%eax, %eax
    1dd6: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # 1ddd <__ZL15yy_init_globalsv+0xd>
    1de1: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # 1de8 <__ZL15yy_init_globalsv+0x18>
    1dec: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # 1df3 <__ZL15yy_init_globalsv+0x23>
    1df7: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # 1dfe <__ZL15yy_init_globalsv+0x2e>
    1e02: c7 05 fc ff ff ff 00 00 00 00	movl	$0, -4(%rip)  # 1e08 <__ZL15yy_init_globalsv+0x38>
    1e0c: c7 05 fc ff ff ff 00 00 00 00	movl	$0, -4(%rip)  # 1e12 <__ZL15yy_init_globalsv+0x42>
    1e16: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # 1e1d <__ZL15yy_init_globalsv+0x4d>
    1e21: 48 c7 05 fc ff ff ff 00 00 00 00     	movq	$0, -4(%rip)  # 1e28 <__ZL15yy_init_globalsv+0x58>
    1e2c: 5d                           	popq	%rbp
    1e2d: c3                           	retq
    1e2e: 66 90                        	nop

0000000000001e30 <__Z9yyreallocPvm>:
    1e30: 55                           	pushq	%rbp
    1e31: 48 89 e5                     	movq	%rsp, %rbp
    1e34: 48 83 ec 10                  	subq	$16, %rsp
    1e38: 48 89 7d f8                  	movq	%rdi, -8(%rbp)
    1e3c: 48 89 75 f0                  	movq	%rsi, -16(%rbp)
    1e40: 48 8b 7d f8                  	movq	-8(%rbp), %rdi
    1e44: 48 8b 75 f0                  	movq	-16(%rbp), %rsi
    1e48: e8 00 00 00 00               	callq	0x1e4d <__Z9yyreallocPvm+0x1d>
    1e4d: 48 83 c4 10                  	addq	$16, %rsp
    1e51: 5d                           	popq	%rbp
    1e52: c3                           	retq
    1e53: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
    1e5d: 0f 1f 00                     	nopl	(%rax)

0000000000001e60 <__Z6yywarpv>:
    1e60: 55                           	pushq	%rbp
    1e61: 48 89 e5                     	movq	%rsp, %rbp
    1e64: b8 01 00 00 00               	movl	$1, %eax
    1e69: 5d                           	popq	%rbp
    1e6a: c3                           	retq
