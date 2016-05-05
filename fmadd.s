# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) MIC Architecture, Version 16.0.2.181 Bu";
# mark_description "ild 20160204";
# mark_description "-O3 -S -lpthread -mmic";
	.file "fmadd.c"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0 Latency 17
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #88.1
        pushq     %rbp                                          #88.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #88.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #88.1
        pushq     %r12                                          #88.1 c1
        pushq     %r13                                          #88.1 c5
        subq      $29168, %rsp                                  #88.1 c5
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
        movq      %rsi, %r12                                    #88.1 c9
        xorl      %esi, %esi                                    #88.1 c9
        movl      $3, %edi                                      #88.1 c13
        call      __intel_new_feature_proc_init                 #88.1 c17
                                # LOE rbx r12 r14 r15
..B1.22:                        # Preds ..B1.1 Latency 11
        stmxcsr   (%rsp)                                        #88.1 c1
        orl       $32832, (%rsp)                                #88.1 c2
        ldmxcsr   (%rsp)                                        #88.1 c6
        movq      8(%r12), %rdi                                 #95.10 c7
        call      atoll                                         #95.10 c11
                                # LOE rax rbx r14 r15
..B1.2:                         # Preds ..B1.22 Latency 13
        movslq    %eax, %r12                                    #95.2 c1
        lea       29008(%rsp), %rdi                             #98.2 c1
        movl      %r12d, %r13d                                  #98.2 c5
        xorl      %esi, %esi                                    #98.2 c9
        movl      %r13d, %edx                                   #98.2 c9
..___tag_value_main.8:
#       pthread_barrier_init(pthread_barrier_t *__restrict__, const pthread_barrierattr_t *__restrict__, unsigned int)
        call      pthread_barrier_init                          #98.2
..___tag_value_main.9:
                                # LOE rbx r12 r14 r15 r13d
..B1.3:                         # Preds ..B1.2 Latency 9
        xorl      %ecx, %ecx                                    #100.2 c1
        xorl      %edx, %edx                                    #100.2 c1
        lea       128(%rsp), %rax                               #105.16 c5
        testq     %r12, %r12                                    #100.14 c5
        jle       ..B1.13       # Prob 77%                      #100.14 c9
                                # LOE rax rdx rcx rbx r12 r14 r15 r13d
..B1.4:                         # Preds ..B1.3 Latency 37
        vprefetche0 15528(%rsp)                                 #102.3 c1
        vprefetche0 15576(%rsp)                                 #102.3 c5
        vprefetche0 15552(%rsp)                                 #104.3 c9
        vprefetche0 15600(%rsp)                                 #104.3 c13
        vprefetch0 128(%rsp)                                    #105.16 c17
        movb      %al, %al                                      #105.16 c17
        vprefetch0 192(%rsp)                                    #105.16 c21
        movb      %al, %al                                      #107.3 c21
        movq      %r12, 29040(%rsp)                             #107.3 c25
        movq      %rdx, %r12                                    #107.3 c25
        movq      %r14, 15504(%rsp)                             #107.3 c29
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x90, 0xca, 0xff, 0xff, 0x22
        movl      %r13d, %r14d                                  #107.3 c29
        movq      %r15, 15496(%rsp)                             #107.3 c33
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x88, 0xca, 0xff, 0xff, 0x22
        movq      %rax, %r13                                    #107.3 c33
        movq      %rbx, 15488(%rsp)                             #107.3 c37
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xca, 0xff, 0xff, 0x22
        movq      %rcx, %r15                                    #107.3 c37
                                # LOE r12 r13 r15 r14d
..B1.5:                         # Preds ..B1.11 ..B1.4 Latency 13
        lea       29008(%rsp), %rbx                             #104.3 c1
        lea       28952(%rsp), %rdi                             #106.3 c1
        movl      %r15d, 15528(%rsp,%r12)                       #102.3 c5
        movq      %rbx, 15552(%rsp,%r12)                        #104.3 c5
        movl      %r14d, 15532(%rsp,%r12)                       #103.3 c9
        movq      %r13, 15512(%rsp,%r12)                        #105.3 c9
..___tag_value_main.13:
#       pthread_attr_init(pthread_attr_t *)
        call      pthread_attr_init                             #106.3
..___tag_value_main.14:
                                # LOE r12 r13 r15 r14d
..B1.6:                         # Preds ..B1.5 Latency 13
        vpxord    %zmm0, %zmm0, %zmm0                           #107.3 c1
        nop                                                     #107.3 c5
        vmovaps   %zmm0, (%rsp)                                 #107.3 c9
        vmovaps   %zmm0, 64(%rsp)                               #107.3 c13
                                # LOE r12 r13 r15 r14d
..B1.7:                         # Preds ..B1.6 Latency 9
        movq      %r15, %rbx                                    #108.3 c1
        shrq      $3, %rbx                                      #108.3 c5
        cmpq      $128, %rbx                                    #108.3 c9
        jae       ..B1.9        # Prob 50%                      #108.3 c9
                                # LOE r12 r13 r15 r14d
..B1.8:                         # Preds ..B1.7 Latency 17
        movq      %r15, %rdi                                    #108.3 c1
        movl      %r15d, %ecx                                   #108.3 c1
        shrq      $6, %rdi                                      #108.3 c5
        movl      $1, %ebx                                      #108.3 c5
        shlq      %cl, %rbx                                     #108.3 c9
        movq      (%rsp,%rdi,8), %rsi                           #108.3 c9
        orq       %rbx, %rsi                                    #108.3 c13
        movq      %rsi, (%rsp,%rdi,8)                           #108.3 c17
                                # LOE r12 r13 r15 r14d
..B1.9:                         # Preds ..B1.7 ..B1.8 Latency 9
        lea       28952(%rsp), %rdi                             #109.3 c1
        movl      $128, %esi                                    #109.3 c1
        lea       (%rsp), %rdx                                  #109.3 c5
..___tag_value_main.15:
#       pthread_attr_setaffinity_np(pthread_attr_t *, size_t, const cpu_set_t *)
        call      pthread_attr_setaffinity_np                   #109.3
..___tag_value_main.16:
                                # LOE r12 r13 r15 r14d
..B1.10:                        # Preds ..B1.9 Latency 13
        lea       27032(%rsp,%r15,8), %rbx                      #110.19 c1
        lea       15512(%rsp,%r12), %rcx                        #110.3 c1
        movq      %rbx, %rdi                                    #110.3 c5
        lea       28952(%rsp), %rsi                             #110.3 c5
        movl      $thread, %edx                                 #110.3 c9
#       pthread_create(pthread_t *__restrict__, const pthread_attr_t *__restrict__, void *(*)(void *), void *__restrict__)
        call      pthread_create                                #110.3 c13
                                # LOE rbx r12 r13 r15 r14d
..B1.11:                        # Preds ..B1.10 Latency 37
        vprefetche1 16296(%rsp,%r12)                            #102.3 c1
        vprefetche0 15624(%rsp,%r12)                            #102.3 c5
        vprefetche1 16320(%rsp,%r12)                            #104.3 c9
        vprefetche0 15648(%rsp,%r12)                            #104.3 c13
        vprefetch1 128(%rbx)                                    #110.19 c17
        incq      %r15                                          #100.2 c17
        vprefetch0 16(%rbx)                                     #110.19 c21
        addq      $48, %r12                                     #100.2 c21
        vprefetch1 1024(%r13)                                   #105.16 c25
        addq      $64, %r13                                     #100.2 c25
        vprefetch0 64(%r13)                                     #105.16 c29
        movb      %al, %al                                      #100.2 c29
        movq      29040(%rsp), %rbx                             #100.2 c33
        cmpq      %rbx, %r15                                    #100.2 c37
        jb        ..B1.5        # Prob 99%                      #100.2 c37
                                # LOE rbx r12 r13 r15 ebx r14d bl bh
..B1.12:                        # Preds ..B1.11 Latency 9
        movq      %rbx, %r12                                    # c1
        movq      15504(%rsp), %r14                             # c1
	.cfi_restore 14
        movq      15496(%rsp), %r15                             # c5
	.cfi_restore 15
        testq     %r12, %r12                                    #100.14 c5
        movq      15488(%rsp), %rbx                             # c9
	.cfi_restore 3
                                # LOE rbx r12 r14 r15
..B1.13:                        # Preds ..B1.3 ..B1.12 Latency 1
        movl      $0, %r13d                                     #112.2 c1
        jle       ..B1.18       # Prob 10%                      #112.14 c1
                                # LOE rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13 Latency 1
        vprefetch0 27032(%rsp)                                  #114.16 c1
                                # LOE rbx r12 r13 r14 r15
..B1.15:                        # Preds ..B1.16 ..B1.14 Latency 5
        movq      27032(%rsp,%r13,8), %rdi                      #114.3 c1
        xorl      %esi, %esi                                    #114.3 c1
..___tag_value_main.20:
#       pthread_join(pthread_t, void **)
        call      pthread_join                                  #114.3
..___tag_value_main.21:
                                # LOE rbx r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15 Latency 13
        vprefetch1 27288(%rsp,%r13,8)                           #114.16 c1
        vprefetch0 27048(%rsp,%r13,8)                           #114.16 c5
        incq      %r13                                          #112.2 c9
        cmpq      %r12, %r13                                    #112.2 c13
        jb        ..B1.15       # Prob 99%                      #112.2 c13
                                # LOE rbx r12 r13 r14 r15
..B1.18:                        # Preds ..B1.16 ..B1.13 Latency 13
        xorl      %eax, %eax                                    #116.9 c1
        addq      $29168, %rsp                                  #116.9 c1
	.cfi_restore 13
        popq      %r13                                          #116.9
	.cfi_restore 12
        popq      %r12                                          #116.9
        movq      %rbp, %rsp                                    #116.9 c13
        popq      %rbp                                          #116.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #116.9
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.text
# -- Begin  bi_gettimeofday_improved
	.text
# mark_begin;
# Threads 4
        .align    16,0x90
# --- bi_gettimeofday_improved()
bi_gettimeofday_improved:
..B2.1:                         # Preds ..B2.0 Latency 9
	.cfi_startproc
..___tag_value_bi_gettimeofday_improved.27:
..L28:
                                                         #25.42
        subq      $24, %rsp                                     #25.42 c1
	.cfi_def_cfa_offset 32
        xorl      %esi, %esi                                    #27.2 c1
        lea       (%rsp), %rdi                                  #27.2 c5
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #27.2 c9
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1 Latency 45
        movl      $1, %edx                                      #28.60 c1
        kmov      %edx, %k1                                     #28.60 c5
        vcvtudq2pd (%rsp){1to8}, %zmm2{%k1}                     #28.19 c9
        vcvtdq2pd 4(%rsp){1to8}, %zmm3{%k1}                     #28.19 c13
        vcvtudq2pd 8(%rsp){1to8}, %zmm1{%k1}                    #28.60 c17
        vcvtdq2pd 12(%rsp){1to8}, %zmm0{%k1}                    #28.60 c21
        vfmadd132pd .L_2il0floatpacket.3(%rip){1to8}, %zmm2, %zmm3{%k1} #28.19 c25
        vfmadd132pd .L_2il0floatpacket.3(%rip){1to8}, %zmm1, %zmm0{%k1} #28.60 c29
        vsubpd    d_bi_start_sec(%rip){1to8}, %zmm3, %zmm4{%k1} #28.33 c33
        vfmadd132pd .L_2il0floatpacket.2(%rip){1to8}, %zmm4, %zmm0{%k1} #28.75 c37
        addq      $24, %rsp                                     #28.75 c41
	.cfi_def_cfa_offset 8
        ret                                                     #28.75 c45
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	bi_gettimeofday_improved,@function
	.size	bi_gettimeofday_improved,.-bi_gettimeofday_improved
	.data
# -- End  bi_gettimeofday_improved
	.text
# -- Begin  mysecond
	.text
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl mysecond
# --- mysecond()
mysecond:
..B3.1:                         # Preds ..B3.0 Latency 9
	.cfi_startproc
..___tag_value_mysecond.32:
..L33:
                                                         #33.1
        subq      $24, %rsp                                     #33.1 c1
	.cfi_def_cfa_offset 32
        lea       (%rsp), %rdi                                  #38.6 c5
        lea       16(%rsp), %rsi                                #38.6 c5
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #38.6 c9
                                # LOE rbx rbp r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1 Latency 41
        movl      $1, %edx                                      #39.41 c1
        kmov      %edx, %k1                                     #39.41 c5
        vcvtudq2pd 8(%rsp){1to8}, %zmm1{%k1}                    #39.41 c9
        vcvtdq2pd 12(%rsp){1to8}, %zmm0{%k1}                    #39.41 c13
        vcvtudq2pd (%rsp){1to8}, %zmm2{%k1}                     #39.20 c17
        vcvtdq2pd 4(%rsp){1to8}, %zmm3{%k1}                     #39.20 c21
        vfmadd132pd .L_2il0floatpacket.3(%rip){1to8}, %zmm1, %zmm0{%k1} #39.41 c25
        vfmadd132pd .L_2il0floatpacket.3(%rip){1to8}, %zmm2, %zmm3{%k1} #39.20 c29
        vfmadd132pd .L_2il0floatpacket.2(%rip){1to8}, %zmm3, %zmm0{%k1} #39.54 c33
        addq      $24, %rsp                                     #39.54 c37
	.cfi_def_cfa_offset 8
        ret                                                     #39.54 c41
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	mysecond,@function
	.size	mysecond,.-mysecond
	.data
# -- End  mysecond
	.text
# -- Begin  thread
	.text
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl thread
# --- thread(void *)
thread:
# parameter 1: %rdi
..B4.1:                         # Preds ..B4.0 Latency 41
	.cfi_startproc
..___tag_value_thread.37:
..L38:
                                                         #53.1
        pushq     %rbp                                          #53.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #53.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-64, %rsp                                    #53.1
        pushq     %r14                                          #53.1 c1
        subq      $248, %rsp                                    #53.1 c1
        vbroadcastf32x4 _vset_cnst.1(%rip), %zmm0               #60.4 c5
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
        movq      %rdi, %r14                                    #53.1 c9
        movb      %al, %al                                      #60.4 c9
        vmovaps   %zmm0, 128(%rsp)                              #60.4 c13
        movq      40(%r14), %rdi                                #64.9 c13
        vbroadcastf32x4 _vset_cnst.2(%rip), %zmm1               #61.4 c17
        nop                                                     #61.4 c21
        vmovaps   %zmm1, 64(%rsp)                               #61.4 c25
        vbroadcastf32x4 _vset_cnst.3(%rip), %zmm2               #62.4 c29
        nop                                                     #62.4 c33
        vmovaps   %zmm2, (%rsp)                                 #62.4 c37
#       pthread_barrier_wait(pthread_barrier_t *)
        call      pthread_barrier_wait                          #64.9 c41
                                # LOE rbx r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1 Latency 5
        lea       192(%rsp), %rdi                               #66.8 c1
        lea       216(%rsp), %rsi                               #66.8 c1
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #66.8 c5
                                # LOE rbx r12 r13 r14 r15
..B4.3:                         # Preds ..B4.2 Latency 49
        movl      $1, %edx                                      #66.8 c1
        xorb      %al, %al                                      #68.8 c1
        kmov      %edx, %k1                                     #66.8 c5
        vcvtudq2pd 200(%rsp){1to8}, %zmm0{%k1}                  #66.8 c9
        vcvtdq2pd 204(%rsp){1to8}, %zmm2{%k1}                   #66.8 c13
        vcvtudq2pd 192(%rsp){1to8}, %zmm1{%k1}                  #66.8 c17
        vcvtdq2pd 196(%rsp){1to8}, %zmm3{%k1}                   #66.8 c21
        vfmadd132pd .L_2il0floatpacket.3(%rip){1to8}, %zmm0, %zmm2{%k1} #66.8 c25
        vfmadd132pd .L_2il0floatpacket.3(%rip){1to8}, %zmm1, %zmm3{%k1} #66.8 c29
        vfmadd231pd .L_2il0floatpacket.2(%rip){1to8}, %zmm2, %zmm3{%k1} #66.8 c33
        vmovaps   (%rsp), %zmm1                                 #68.8 c37
        movb      %al, %al                                      #66.8 c37
        vpackstorelpd %zmm3, 208(%rsp){%k1}                     #66.8 c41
        vmovaps   64(%rsp), %zmm2                               #68.8 c45
        vmovaps   128(%rsp), %zmm3                              #68.8 c49
                                # LOE rbx r12 r13 r14 r15 al zmm1 zmm2 zmm3
..B4.4:                         # Preds ..B4.4 ..B4.3 Latency 1205
        vfmadd213ps %zmm1, %zmm2, %zmm3                         #70.3 c1
        incb      %al                                           #68.20 c1
        vmovaps   %zmm1, %zmm0                                  #70.3 c5
        cmpb      $100, %al                                     #68.14 c5
        vfmadd231ps %zmm3, %zmm2, %zmm0                         #70.3 c9
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c13
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c17
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c21
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c25
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c29
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c33
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c37
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c41
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c45
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c49
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c53
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c57
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c61
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c65
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c69
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c73
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c77
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c81
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c85
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c89
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c93
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c97
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c101
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c105
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c109
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c113
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c117
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c121
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c125
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c129
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c133
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c137
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c141
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c145
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c149
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c153
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c157
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c161
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c165
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c169
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c173
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c177
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c181
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c185
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c189
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c193
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c197
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c201
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c205
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c209
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c213
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c217
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c221
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c225
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c229
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c233
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c237
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c241
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c245
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c249
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c253
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c257
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c261
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c265
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c269
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c273
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c277
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c281
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c285
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c289
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c293
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c297
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c301
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c305
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c309
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c313
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c317
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c321
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c325
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c329
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c333
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c337
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c341
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c345
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c349
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c353
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c357
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c361
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c365
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c369
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c373
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c377
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c381
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c385
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c389
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c393
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c397
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c401
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c405
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c409
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c413
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c417
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c421
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c425
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c429
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c433
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c437
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c441
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c445
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c449
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c453
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c457
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c461
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c465
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c469
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c473
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c477
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c481
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c485
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c489
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c493
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c497
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c501
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c505
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c509
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c513
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c517
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c521
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c525
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c529
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c533
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c537
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c541
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c545
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c549
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c553
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c557
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c561
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c565
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c569
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c573
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c577
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c581
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c585
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c589
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c593
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c597
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c601
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c605
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c609
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c613
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c617
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c621
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c625
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c629
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c633
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c637
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c641
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c645
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c649
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c653
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c657
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c661
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c665
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c669
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c673
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c677
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c681
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c685
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c689
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c693
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c697
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c701
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c705
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c709
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c713
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c717
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c721
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c725
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c729
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c733
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c737
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c741
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c745
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c749
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c753
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c757
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c761
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c765
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c769
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c773
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c777
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c781
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c785
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c789
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c793
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c797
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c801
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c805
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c809
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c813
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c817
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c821
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c825
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c829
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c833
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c837
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c841
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c845
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c849
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c853
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c857
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c861
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c865
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c869
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c873
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c877
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c881
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c885
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c889
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c893
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c897
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c901
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c905
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c909
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c913
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c917
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c921
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c925
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c929
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c933
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c937
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c941
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c945
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c949
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c953
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c957
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c961
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c965
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c969
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c973
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c977
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c981
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c985
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c989
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c993
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c997
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1001
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1005
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1009
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1013
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1017
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1021
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1025
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1029
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1033
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1037
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1041
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1045
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1049
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1053
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1057
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1061
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1065
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1069
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1073
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1077
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1081
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1085
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1089
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1093
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1097
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1101
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1105
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1109
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1113
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1117
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1121
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1125
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1129
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1133
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1137
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1141
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1145
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1149
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1153
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1157
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1161
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1165
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1169
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1173
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1177
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1181
        vfmadd213ps %zmm1, %zmm3, %zmm0                         #70.3 c1185
        vfmadd231ps %zmm3, %zmm0, %zmm1                         #70.3 c1189
        vfmadd213ps %zmm1, %zmm0, %zmm3                         #70.3 c1193
        vmovaps   %zmm3, %zmm2                                  #70.3 c1197
        vfmadd213ps %zmm1, %zmm0, %zmm2                         #70.3 c1201
        vfmadd231ps %zmm3, %zmm2, %zmm1                         #70.3 c1205
        jl        ..B4.4        # Prob 99%                      #68.14 c1205
                                # LOE rbx r12 r13 r14 r15 al zmm1 zmm2 zmm3
..B4.5:                         # Preds ..B4.4 Latency 9
        lea       64(%rsp), %rdi                                #75.7 c1
        lea       88(%rsp), %rsi                                #75.7 c1
        vmovaps   %zmm1, (%rsp)                                 # c5
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #75.7 c9
                                # LOE rbx r12 r13 r14 r15
..B4.6:                         # Preds ..B4.5 Latency 45
        movl      $1, %edx                                      #75.7 c1
        movq      40(%r14), %rdi                                #76.9 c1
        kmov      %edx, %k1                                     #75.7 c5
        vcvtudq2pd 72(%rsp){1to8}, %zmm0{%k1}                   #75.7 c9
        vcvtdq2pd 76(%rsp){1to8}, %zmm2{%k1}                    #75.7 c13
        vcvtudq2pd 64(%rsp){1to8}, %zmm1{%k1}                   #75.7 c17
        vcvtdq2pd 68(%rsp){1to8}, %zmm3{%k1}                    #75.7 c21
        vfmadd132pd .L_2il0floatpacket.3(%rip){1to8}, %zmm0, %zmm2{%k1} #75.7 c25
        vfmadd132pd .L_2il0floatpacket.3(%rip){1to8}, %zmm1, %zmm3{%k1} #75.7 c29
        vfmadd231pd .L_2il0floatpacket.2(%rip){1to8}, %zmm2, %zmm3{%k1} #75.7 c33
        nop                                                     #75.7 c37
        vpackstorelpd %zmm3, 80(%rsp){%k1}                      #75.7 c41
#       pthread_barrier_wait(pthread_barrier_t *)
        call      pthread_barrier_wait                          #76.9 c45
                                # LOE rbx r12 r13 r14 r15
..B4.7:                         # Preds ..B4.6 Latency 13
        vmovaps   (%rsp), %zmm0                                 #77.18 c1
        movb      %dl, %dl                                      #77.18 c1
        movq      (%r14), %rax                                  #77.18 c5
        vmovaps   %zmm0, (%rax)                                 #77.18 c9
        movl      16(%r14), %edx                                #79.5 c9
        testl     %edx, %edx                                    #79.15 c13
        jne       ..B4.9        # Prob 78%                      #79.15 c13
                                # LOE rbx r12 r13 r14 r15
..B4.8:                         # Preds ..B4.7 Latency 299
        vbroadcastsd 80(%rsp), %zmm7                            #82.3 c1
        movl      $.L_2__STRING.0, %edi                         #82.3 c1
        vbroadcasti32x4 .L_2il0floatpacket.7(%rip), %zmm5       #82.3 c5
        vbroadcasti64x4 .L_2il0floatpacket.5(%rip), %zmm3       #82.3 c9
        vpxorq    %zmm28, %zmm28, %zmm28                        #82.3 c13
        movl      20(%r14), %eax                                #82.3 c13
        imull     $960000, %eax, %edx                           #82.3 c17
        vpbroadcastd .L_2il0floatpacket.8(%rip), %zmm29         #82.3 c27
        vmovaps   %zmm28, %zmm10                                #82.3 c31
        movl      $1, %eax                                      #82.3 c31
        vmovapd   %zmm3{bbbb}, %zmm0                            #82.3 c35
        movl      %edx, (%rsp)                                  #82.3 c35
        vmovdqa64 %zmm3{bbbb}, %zmm2                            #82.3 c39
        kmov      %eax, %k5                                     #82.3 c39
        vcvtdq2pd (%rsp){1to8}, %zmm8{%k5}                      #82.3 c43
        vsubpd    208(%rsp){1to8}, %zmm7, %zmm9{%k5}            #82.3 c47
        vgetexppd %zmm9, %zmm15{%k5}                            #82.3 c51
        vgetexppd %zmm8, %zmm14{%k5}                            #82.3 c55
        vgetmantpd $0, %zmm9, %zmm13{%k5}                       #82.3 c59
        vsubpd    %zmm15, %zmm14, %zmm16{%k5}                   #82.3 c63
        vpminsd   %zmm5{aaaa}, %zmm16, %zmm17                   #82.3 c67
        vcvtpd2ps {rz-sae}, %zmm13, %zmm11{%k5}                 #82.3 c71
        vpminud   %zmm5{bbbb}, %zmm17, %zmm18                   #82.3 c75
        vrcp23ps  %zmm11, %zmm12{%k5}                           #82.3 c79
        vaddpd    %zmm3{cccc}, %zmm18, %zmm18{%k5}              #82.3 c83
        vfixupnanpd %zmm29, %zmm9, %zmm10{%k5}                  #82.3 c87
        vcvtps2pd %zmm12, %zmm22{%k5}                           #82.3 c91
        vpslld    $20, %zmm18, %zmm19                           #82.3 c95
        vbroadcasti64x4 .L_2il0floatpacket.6(%rip), %zmm4       #82.3 c99
        vfixupnanpd %zmm29, %zmm8, %zmm10{%k5}                  #82.3 c103
        vfnmadd213pd {rn-sae}, %zmm0, %zmm22, %zmm13{%k5}       #82.3 c107
        vpsrad    $1, %zmm19, %zmm23                            #82.3 c111
        vcmpeqpd  %zmm10, %zmm10, %k2{%k5}                      #82.3 c115
        vfmadd231pd {rn-sae}, %zmm13, %zmm13, %zmm13{%k5}       #82.3 c119
        vpandq    %zmm4{aaaa}, %zmm23, %zmm23{%k5}              #82.3 c123
        kmov      %k2, %k1                                      #82.3 c123
        vpbroadcastd .L_2il0floatpacket.9(%rip), %zmm1          #82.3 c127
        vfmadd231pd {rn-sae}, %zmm22, %zmm13, %zmm22{%k5}       #82.3 c131
        kandn     %k5, %k1                                      #82.3 c131
        vgetmantpd $0, %zmm8, %zmm21{%k5}                       #82.3 c135
        vpsubd    %zmm23, %zmm19, %zmm20                        #82.3 c139
        vfixupnanpd %zmm1, %zmm9, %zmm9{%k5}                    #82.3 c143
        vmulpd    {rn-sae}, %zmm22, %zmm21, %zmm26{%k2}         #82.3 c147
        vpaddd    %zmm2, %zmm20, %zmm25                         #82.3 c151
        vmulpd    {rn-sae}, %zmm9, %zmm8, %zmm26{%k1}           #82.3 c155
        vpandq    %zmm3{aaaa}, %zmm25, %zmm25{%k5}              #82.3 c159
        vpaddd    %zmm23, %zmm26, %zmm24                        #82.3 c163
        vmulpd    {rn}, %zmm25, %zmm24, %zmm26{%k2}             #82.3 c167
        vbroadcastsd .L_2il0floatpacket.4(%rip), %zmm27{%k5}    #82.3 c171
        vmovapd   %zmm26, %zmm6{%k5}                            #82.3 c175
        vfixupnanpd %zmm29, %zmm27, %zmm28{%k5}                 #82.3 c179
        vfixupnanpd %zmm29, %zmm6, %zmm28{%k5}                  #82.3 c183
        vcmpeqpd  %zmm28, %zmm28, %k4{%k5}                      #82.3 c187
        vgetmantpd $0, %zmm27, %zmm28{%k5}                      #82.3 c191
        vgetexppd %zmm27, %zmm29{%k5}                           #82.3 c195
        kmov      %k4, %k3                                      #82.3 c195
        vcvtpd2ps {rz-sae}, %zmm28, %zmm30{%k5}                 #82.3 c199
        kandn     %k5, %k3                                      #82.3 c199
        vrcp23ps  %zmm30, %zmm31{%k5}                           #82.3 c203
        vfixupnanpd %zmm1, %zmm27, %zmm27{%k5}                  #82.3 c207
        vcvtps2pd %zmm31, %zmm8{%k5}                            #82.3 c211
        vfnmadd213pd {rn-sae}, %zmm0, %zmm8, %zmm28{%k5}        #82.3 c215
        vgetexppd %zmm6, %zmm0{%k5}                             #82.3 c219
        vsubpd    %zmm29, %zmm0, %zmm30{%k5}                    #82.3 c223
        vpminsd   %zmm5{aaaa}, %zmm30, %zmm31                   #82.3 c227
        vpminud   %zmm5{bbbb}, %zmm31, %zmm5                    #82.3 c231
        vaddpd    %zmm3{cccc}, %zmm5, %zmm5{%k5}                #82.3 c235
        vpslld    $20, %zmm5, %zmm7                             #82.3 c239
        vpsrad    $1, %zmm7, %zmm9                              #82.3 c243
        vpandq    %zmm4{aaaa}, %zmm9, %zmm9{%k5}                #82.3 c247
        vpsubd    %zmm9, %zmm7, %zmm4                           #82.3 c251
        vfmadd231pd {rn-sae}, %zmm28, %zmm28, %zmm28{%k5}       #82.3 c255
        vpaddd    %zmm2, %zmm4, %zmm2                           #82.3 c259
        vfmadd231pd {rn-sae}, %zmm8, %zmm28, %zmm8{%k5}         #82.3 c263
        vpandq    %zmm3{aaaa}, %zmm2, %zmm2{%k5}                #82.3 c267
        vgetmantpd $0, %zmm6, %zmm3{%k5}                        #82.3 c271
        vmulpd    {rn-sae}, %zmm8, %zmm3, %zmm10{%k4}           #82.3 c275
        vmulpd    {rn-sae}, %zmm27, %zmm6, %zmm10{%k3}          #82.3 c279
        vpaddd    %zmm9, %zmm10, %zmm1                          #82.3 c283
        vmulpd    {rn}, %zmm2, %zmm1, %zmm10{%k4}               #82.3 c287
        vmovapd   %zmm10, %zmm11{%k5}                           #82.3 c291
        vmovapd   %zmm11, %zmm0                                 #82.3 c295
..___tag_value_thread.43:
#       printf(const char *__restrict__, ...)
        call      printf                                        #82.3
..___tag_value_thread.44:
                                # LOE rbx r12 r13 r15
..B4.9:                         # Preds ..B4.8 ..B4.7 Latency 9
        addq      $248, %rsp                                    #85.1 c1
	.cfi_restore 14
        popq      %r14                                          #85.1
        movq      %rbp, %rsp                                    #85.1 c9
        popq      %rbp                                          #85.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #85.1
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	thread,@function
	.size	thread,.-thread
	.data
# -- End  thread
	.data
	.align 8
	.align 8
	.globl bi_gettime
bi_gettime:
	.quad	bi_gettimeofday_improved
	.type	bi_gettime,@object
	.size	bi_gettime,8
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.5:
	.long	0x00000000,0x7ff00000,0x00000000,0x3ff00000,0x00000000,0x41380000,0x00000000,0x4137fc02
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,32
	.align 32
.L_2il0floatpacket.6:
	.long	0x00000000,0xfff00000,0x00000001,0x00000000,0x0000043e,0x00000000,0x00000000,0x80000000
	.type	.L_2il0floatpacket.6,@object
	.size	.L_2il0floatpacket.6,32
	.align 16
_vset_cnst.1:
	.long	0x40833333
	.long	0x40466666
	.long	0x40066666
	.long	0x3f8ccccd
	.type	_vset_cnst.1,@object
	.size	_vset_cnst.1,16
	.align 16
_vset_cnst.2:
	.long	0x40866666
	.long	0x404ccccd
	.long	0x400ccccd
	.long	0x3f99999a
	.type	_vset_cnst.2,@object
	.size	_vset_cnst.2,16
	.align 16
_vset_cnst.3:
	.long	0x4089999a
	.long	0x40533333
	.long	0x40133333
	.long	0x3fa66666
	.type	_vset_cnst.3,@object
	.size	_vset_cnst.3,16
	.align 16
.L_2il0floatpacket.7:
	.long	0x40900800,0xc090d400,0x7fe00000,0x03500000
	.type	.L_2il0floatpacket.7,@object
	.size	.L_2il0floatpacket.7,16
	.align 8
.L_2il0floatpacket.2:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0x41f00000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 8
.L_2il0floatpacket.4:
	.long	0x00000000,0x41cdcd65
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,8
	.align 4
.L_2il0floatpacket.8:
	.long	0x00028b45
	.type	.L_2il0floatpacket.8,@object
	.size	.L_2il0floatpacket.8,4
	.align 4
.L_2il0floatpacket.9:
	.long	0x00018842
	.type	.L_2il0floatpacket.9,@object
	.size	.L_2il0floatpacket.9,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1330398791
	.long	622875472
	.long	663654
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,12
	.data
	.comm d_bi_start_sec,8,8
# mark_proc_addr_taken bi_gettimeofday_improved;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
