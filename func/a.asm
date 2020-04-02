
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   QWORD PTR [rip+0x2f9a]        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f9b]        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fad]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001050 <printf@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f75]        # 3fd0 <printf@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    ebp,ebp
    1066:	49 89 d1             	mov    r9,rdx
    1069:	5e                   	pop    rsi
    106a:	48 89 e2             	mov    rdx,rsp
    106d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1071:	50                   	push   rax
    1072:	54                   	push   rsp
    1073:	4c 8d 05 b6 01 00 00 	lea    r8,[rip+0x1b6]        # 1230 <__libc_csu_fini>
    107a:	48 8d 0d 3f 01 00 00 	lea    rcx,[rip+0x13f]        # 11c0 <__libc_csu_init>
    1081:	48 8d 3d c1 00 00 00 	lea    rdi,[rip+0xc1]        # 1149 <main>
    1088:	ff 15 52 2f 00 00    	call   QWORD PTR [rip+0x2f52]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    108e:	f4                   	hlt    
    108f:	90                   	nop

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    rdi,[rip+0x2f79]        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    rax,[rip+0x2f72]        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    rax,rdi
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 2e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f2e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    10aa:	48 85 c0             	test   rax,rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    rax
    10b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    rdi,[rip+0x2f49]        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    rsi,[rip+0x2f42]        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    rsi,rdi
    10d1:	48 89 f0             	mov    rax,rsi
    10d4:	48 c1 ee 3f          	shr    rsi,0x3f
    10d8:	48 c1 f8 03          	sar    rax,0x3
    10dc:	48 01 c6             	add    rsi,rax
    10df:	48 d1 fe             	sar    rsi,1
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f05]        # 3ff0 <_ITM_registerTMCloneTable>
    10eb:	48 85 c0             	test   rax,rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    rax
    10f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 05 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f05],0x0        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   rbp
    110e:	48 83 3d e2 2e 00 00 	cmp    QWORD PTR [rip+0x2ee2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    rbp,rsp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ee6]        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	mov    BYTE PTR [rip+0x2edd],0x1        # 4010 <__TMC_END__>
    1133:	5d                   	pop    rbp
    1134:	c3                   	ret    
    1135:	0f 1f 00             	nop    DWORD PTR [rax]
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <main>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   rbp
    114e:	48 89 e5             	mov    rbp,rsp
    1151:	b8 00 00 00 00       	mov    eax,0x0
    1156:	e8 07 00 00 00       	call   1162 <func1>
    115b:	b8 00 00 00 00       	mov    eax,0x0
    1160:	5d                   	pop    rbp
    1161:	c3                   	ret    

0000000000001162 <func1>:
    1162:	f3 0f 1e fa          	endbr64 
    1166:	55                   	push   rbp
    1167:	48 89 e5             	mov    rbp,rsp
    116a:	b8 00 00 00 00       	mov    eax,0x0
    116f:	e8 07 00 00 00       	call   117b <func2>
    1174:	b8 00 00 00 00       	mov    eax,0x0
    1179:	5d                   	pop    rbp
    117a:	c3                   	ret    

000000000000117b <func2>:
    117b:	f3 0f 1e fa          	endbr64 
    117f:	55                   	push   rbp
    1180:	48 89 e5             	mov    rbp,rsp
    1183:	b8 00 00 00 00       	mov    eax,0x0
    1188:	e8 07 00 00 00       	call   1194 <func3>
    118d:	b8 01 00 00 00       	mov    eax,0x1
    1192:	5d                   	pop    rbp
    1193:	c3                   	ret    

0000000000001194 <func3>:
    1194:	f3 0f 1e fa          	endbr64 
    1198:	55                   	push   rbp
    1199:	48 89 e5             	mov    rbp,rsp
    119c:	48 8d 3d 61 0e 00 00 	lea    rdi,[rip+0xe61]        # 2004 <_IO_stdin_used+0x4>
    11a3:	b8 00 00 00 00       	mov    eax,0x0
    11a8:	e8 a3 fe ff ff       	call   1050 <printf@plt>
    11ad:	b8 02 00 00 00       	mov    eax,0x2
    11b2:	5d                   	pop    rbp
    11b3:	c3                   	ret    
    11b4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    11bb:	00 00 00 
    11be:	66 90                	xchg   ax,ax

00000000000011c0 <__libc_csu_init>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	41 57                	push   r15
    11c6:	4c 8d 3d eb 2b 00 00 	lea    r15,[rip+0x2beb]        # 3db8 <__frame_dummy_init_array_entry>
    11cd:	41 56                	push   r14
    11cf:	49 89 d6             	mov    r14,rdx
    11d2:	41 55                	push   r13
    11d4:	49 89 f5             	mov    r13,rsi
    11d7:	41 54                	push   r12
    11d9:	41 89 fc             	mov    r12d,edi
    11dc:	55                   	push   rbp
    11dd:	48 8d 2d dc 2b 00 00 	lea    rbp,[rip+0x2bdc]        # 3dc0 <__init_array_end>
    11e4:	53                   	push   rbx
    11e5:	4c 29 fd             	sub    rbp,r15
    11e8:	48 83 ec 08          	sub    rsp,0x8
    11ec:	e8 0f fe ff ff       	call   1000 <_init>
    11f1:	48 c1 fd 03          	sar    rbp,0x3
    11f5:	74 1f                	je     1216 <__libc_csu_init+0x56>
    11f7:	31 db                	xor    ebx,ebx
    11f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1200:	4c 89 f2             	mov    rdx,r14
    1203:	4c 89 ee             	mov    rsi,r13
    1206:	44 89 e7             	mov    edi,r12d
    1209:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    120d:	48 83 c3 01          	add    rbx,0x1
    1211:	48 39 dd             	cmp    rbp,rbx
    1214:	75 ea                	jne    1200 <__libc_csu_init+0x40>
    1216:	48 83 c4 08          	add    rsp,0x8
    121a:	5b                   	pop    rbx
    121b:	5d                   	pop    rbp
    121c:	41 5c                	pop    r12
    121e:	41 5d                	pop    r13
    1220:	41 5e                	pop    r14
    1222:	41 5f                	pop    r15
    1224:	c3                   	ret    
    1225:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    122c:	00 00 00 00 

0000000000001230 <__libc_csu_fini>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	c3                   	ret    

Disassembly of section .fini:

0000000000001238 <_fini>:
    1238:	f3 0f 1e fa          	endbr64 
    123c:	48 83 ec 08          	sub    rsp,0x8
    1240:	48 83 c4 08          	add    rsp,0x8
    1244:	c3                   	ret    
