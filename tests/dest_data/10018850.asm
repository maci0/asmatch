; ---- 10018850 ----
?_2844: ; Local function
        sub     esp, 1052                               ; 10018850 _ 81. EC, 0000041C
        push    ebx                                     ; 10018856 _ 53
        push    ebp                                     ; 10018857 _ 55
        xor     ebx, ebx                                ; 10018858 _ 33. DB
        push    esi                                     ; 1001885A _ 56
        push    edi                                     ; 1001885B _ 57
        mov     dword [esp+1CH], ebx                    ; 1001885C _ 89. 5C 24, 1C
        mov     eax, ?_5632                             ; 10018860 _ B8, 100358A0(d)
?_2845:
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], -1                          ; 10018865 _ 66: 81. 38, FFFF
        jz      ?_2846                                  ; 1001886A _ 74, 0D
        add     eax, 540                                ; 1001886C _ 05, 0000021C
        inc     ebx                                     ; 10018871 _ 43
        cmp     eax, ?_5656                             ; 10018872 _ 3D, 1009ACA0(d)
        jl      ?_2845                                  ; 10018877 _ 7C, EC
?_2846: cmp     ebx, 768                                ; 10018879 _ 81. FB, 00000300
        mov     dword [esp+1CH], ebx                    ; 1001887F _ 89. 5C 24, 1C
        jnz     ?_2849                                  ; 10018883 _ 75, 21
        xor     ebx, ebx                                ; 10018885 _ 33. DB
        mov     eax, ?_5633                             ; 10018887 _ B8, 100358A2(d)
        mov     dword [esp+1CH], ebx                    ; 1001888C _ 89. 5C 24, 1C
?_2847: cmp     byte [eax], 15                          ; 10018890 _ 80. 38, 0F
        jz      ?_2848                                  ; 10018893 _ 74, 0D
        add     eax, 540                                ; 10018895 _ 05, 0000021C
        inc     ebx                                     ; 1001889A _ 43
        cmp     eax, ?_5657                             ; 1001889B _ 3D, 1009ACA2(d)
        jl      ?_2847                                  ; 100188A0 _ 7C, EE
?_2848: mov     dword [esp+1CH], ebx                    ; 100188A2 _ 89. 5C 24, 1C
?_2849: lea     eax, [ebx+ebx*2]                        ; 100188A6 _ 8D. 04 5B
        lea     edx, [eax+eax*4]                        ; 100188A9 _ 8D. 14 80
        lea     edx, [edx+edx*8]                        ; 100188AC _ 8D. 14 D2
        shl     edx, 2                                  ; 100188AF _ C1. E2, 02
        cmp     byte [?_5633+edx], 15                   ; 100188B2 _ 80. BA, 100358A2(d), 0F
        jnz     ?_2850                                  ; 100188B9 _ 75, 06
        dec     dword [?_5531]                          ; 100188BB _ FF. 0D, 10035434(d)
?_2850: cmp     ebx, 768                                ; 100188C1 _ 81. FB, 00000300
        jnz     ?_2851                                  ; 100188C7 _ 75, 11
        push    1                                       ; 100188C9 _ 6A, 01
        push    ?_5439                                  ; 100188CB _ 68, 10031604(d)
        push    9748                                    ; 100188D0 _ 68, 00002614
        jmp     ?_2916                                  ; 100188D5 _ E9, 00000C01

?_2851: lea     ebp, [?_5632+edx]                       ; 100188DA _ 8D. AA, 100358A0(d)
        mov     ecx, 135                                ; 100188E0 _ B9, 00000087
        xor     eax, eax                                ; 100188E5 _ 33. C0
        mov     edi, ebp                                ; 100188E7 _ 8B. FD
        rep stosd                                       ; 100188E9 _ F3: AB
        or      esi, 0FFFFFFFFH                         ; 100188EB _ 83. CE, FF
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp], -1                          ; 100188EE _ 66: C7. 45, 00, FFFF
        mov     dword [?_5634+edx], esi                 ; 100188F4 _ 89. B2, 100358A4(d)
        lea     edx, [?_5643+edx]                       ; 100188FA _ 8D. 92, 100358FC(d)
        mov     ecx, 8                                  ; 10018900 _ B9, 00000008
        mov     eax, esi                                ; 10018905 _ 8B. C6
        mov     edi, edx                                ; 10018907 _ 8B. FA
        rep stosd                                       ; 10018909 _ F3: AB
        mov     eax, dword [esp+430H]                   ; 1001890B _ 8B. 84 24, 00000430
        mov     edi, dword [?_5531]                     ; 10018912 _ 8B. 3D, 10035434(d)
        mov     word [ebp], bx                          ; 10018918 _ 66: 89. 5D, 00
        xor     ebx, ebx                                ; 1001891C _ 33. DB
        mov     byte [ebp+2H], al                       ; 1001891E _ 88. 45, 02
        mov     dword [ebp+170H], ebx                   ; 10018921 _ 89. 9D, 00000170
        mov     dword [ebp+16CH], ebx                   ; 10018927 _ 89. 9D, 0000016C
        push    eax                                     ; 1001892D _ 50
        mov     eax, dword [?_5380]                     ; 1001892E _ A1, 10030B6C(d)
        mov     dword [ebp+1F0H], ebx                   ; 10018933 _ 89. 9D, 000001F0
        mov     dword [ebp+210H], esi                   ; 10018939 _ 89. B5, 00000210
        mov     byte [ebp+215H], bl                     ; 1001893F _ 88. 9D, 00000215
        push    eax                                     ; 10018945 _ 50
        lea     ecx, [esp+34H]                          ; 10018946 _ 8D. 4C 24, 34
        inc     edi                                     ; 1001894A _ 47
        mov     byte [ebp+216H], bl                     ; 1001894B _ 88. 9D, 00000216
        push    ?_5438                                  ; 10018951 _ 68, 100315E4(d)
        mov     byte [ebp+217H], bl                     ; 10018956 _ 88. 9D, 00000217
        push    ecx                                     ; 1001895C _ 51
        mov     dword [?_5531], edi                     ; 1001895D _ 89. 3D, 10035434(d)
        mov     byte [ebp+218H], 1                      ; 10018963 _ C6. 85, 00000218, 01
        call    ?_3039                                  ; 1001896A _ E8, 0000192A
        lea     edx, [esp+3CH]                          ; 1001896F _ 8D. 54 24, 3C
        push    8                                       ; 10018973 _ 6A, 08
        push    edx                                     ; 10018975 _ 52
        push    9783                                    ; 10018976 _ 68, 00002637
        push    ?_5397                                  ; 1001897B _ 68, 10031004(d)
        call    ?_0267                                  ; 10018980 _ E8, FFFEACBB
        mov     eax, dword [?_5380]                     ; 10018985 _ A1, 10030B6C(d)
        add     esp, 32                                 ; 1001898A _ 83. C4, 20
        mov     dword [ebp+4H], eax                     ; 1001898D _ 89. 45, 04
        mov     edi, dword [esp+43CH]                   ; 10018990 _ 8B. BC 24, 0000043C
        mov     cl, byte [esp+448H]                     ; 10018997 _ 8A. 8C 24, 00000448
        inc     eax                                     ; 1001899E _ 40
        mov     dword [?_5380], eax                     ; 1001899F _ A3, 10030B6C(d)
        mov     al, byte [esp+444H]                     ; 100189A4 _ 8A. 84 24, 00000444
        mov     dword [ebp+1E4H], 1065353216            ; 100189AB _ C7. 85, 000001E4, 3F800000
        mov     byte [ebp+164H], al                     ; 100189B5 _ 88. 85, 00000164
        mov     al, byte [ebp+2H]                       ; 100189BB _ 8A. 45, 02
        mov     byte [ebp+8H], 100                      ; 100189BE _ C6. 45, 08, 64
        cmp     al, 3                                   ; 100189C2 _ 3C, 03
        mov     word [ebp+0AH], di                      ; 100189C4 _ 66: 89. 7D, 0A
        mov     byte [ebp+166H], bl                     ; 100189C8 _ 88. 9D, 00000166
        mov     byte [ebp+165H], cl                     ; 100189CE _ 88. 8D, 00000165
        mov     byte [ebp+1F4H], bl                     ; 100189D4 _ 88. 9D, 000001F4
        mov     dword [ebp+190H], 4                     ; 100189DA _ C7. 85, 00000190, 00000004
        mov     dword [ebp+194H], ebx                   ; 100189E4 _ 89. 9D, 00000194
        mov     byte [ebp+0DH], 1                       ; 100189EA _ C6. 45, 0D, 01
        mov     dword [ebp+18CH], esi                   ; 100189EE _ 89. B5, 0000018C
        mov     dword [ebp+20CH], esi                   ; 100189F4 _ 89. B5, 0000020C
        jz      ?_2852                                  ; 100189FA _ 74, 08
        cmp     al, 16                                  ; 100189FC _ 3C, 10
        jz      ?_2852                                  ; 100189FE _ 74, 04
        cmp     al, 19                                  ; 10018A00 _ 3C, 13
        jnz     ?_2853                                  ; 10018A02 _ 75, 0E
?_2852: mov     dword [ebp+1E8H], 1                     ; 10018A04 _ C7. 85, 000001E8, 00000001
        mov     byte [ebp+0DH], 2                       ; 10018A0E _ C6. 45, 0D, 02
?_2853: cmp     al, 16                                  ; 10018A12 _ 3C, 10
        jne     ?_2860                                  ; 10018A14 _ 0F 85, 0000021E
        call    ?_1322                                  ; 10018A1A _ E8, FFFF3BE1
        mov     ebx, eax                                ; 10018A1F _ 8B. D8
        mov     byte [ebp+2H], 3                        ; 10018A21 _ C6. 45, 02, 03
        test    ebx, ebx                                ; 10018A25 _ 85. DB
        je      ?_2859                                  ; 10018A27 _ 0F 84, 000001FB
        push    8                                       ; 10018A2D _ 6A, 08
        call    ?_3022                                  ; 10018A2F _ E8, 0000169C
        mov     edx, dword [ebx]                        ; 10018A34 _ 8B. 13
        and     eax, 0FFFFH                             ; 10018A36 _ 25, 0000FFFF
        mov     dword [esp+20H], eax                    ; 10018A3B _ 89. 44 24, 20
        mov     dword [ebp+1F0H], edx                   ; 10018A3F _ 89. 95, 000001F0
        mov     al, byte [ebx+0D4H]                     ; 10018A45 _ 8A. 83, 000000D4
        lea     edi, [ebx+4H]                           ; 10018A4B _ 8D. 7B, 04
        mov     byte [ebp+164H], al                     ; 10018A4E _ 88. 85, 00000164
        mov     cl, byte [ebx+0D5H]                     ; 10018A54 _ 8A. 8B, 000000D5
        mov     byte [ebp+9H], cl                       ; 10018A5A _ 88. 4D, 09
        mov     dl, byte [ebx+0D6H]                     ; 10018A5D _ 8A. 93, 000000D6
        or      ecx, 0FFFFFFFFH                         ; 10018A63 _ 83. C9, FF
        xor     eax, eax                                ; 10018A66 _ 33. C0
        mov     byte [ebp+0CH], dl                      ; 10018A68 _ 88. 55, 0C
        lea     edx, [ebp+30H]                          ; 10018A6B _ 8D. 55, 30
        repne scasb                                     ; 10018A6E _ F2: AE
        not     ecx                                     ; 10018A70 _ F7. D1
        sub     edi, ecx                                ; 10018A72 _ 2B. F9
        mov     eax, ecx                                ; 10018A74 _ 8B. C1
        mov     esi, edi                                ; 10018A76 _ 8B. F7
        mov     edi, edx                                ; 10018A78 _ 8B. FA
        lea     edx, [ebp+40H]                          ; 10018A7A _ 8D. 55, 40
        shr     ecx, 2                                  ; 10018A7D _ C1. E9, 02
        rep movsd                                       ; 10018A80 _ F3: A5
        mov     ecx, eax                                ; 10018A82 _ 8B. C8
        xor     eax, eax                                ; 10018A84 _ 33. C0
        and     ecx, 03H                                ; 10018A86 _ 83. E1, 03
        rep movsb                                       ; 10018A89 _ F3: A4
        lea     edi, [ebx+14H]                          ; 10018A8B _ 8D. 7B, 14
        or      ecx, 0FFFFFFFFH                         ; 10018A8E _ 83. C9, FF
        repne scasb                                     ; 10018A91 _ F2: AE
        not     ecx                                     ; 10018A93 _ F7. D1
        sub     edi, ecx                                ; 10018A95 _ 2B. F9
        mov     eax, ecx                                ; 10018A97 _ 8B. C1
        mov     esi, edi                                ; 10018A99 _ 8B. F7
        mov     edi, edx                                ; 10018A9B _ 8B. FA
        shr     ecx, 2                                  ; 10018A9D _ C1. E9, 02
        rep movsd                                       ; 10018AA0 _ F3: A5
        mov     ecx, eax                                ; 10018AA2 _ 8B. C8
        xor     eax, eax                                ; 10018AA4 _ 33. C0
        and     ecx, 03H                                ; 10018AA6 _ 83. E1, 03
        rep movsb                                       ; 10018AA9 _ F3: A4
        lea     edi, [ebx+0D7H]                         ; 10018AAB _ 8D. BB, 000000D7
        or      ecx, 0FFFFFFFFH                         ; 10018AB1 _ 83. C9, FF
        repne scasb                                     ; 10018AB4 _ F2: AE
        not     ecx                                     ; 10018AB6 _ F7. D1
        sub     edi, ecx                                ; 10018AB8 _ 2B. F9
        lea     eax, [ebx+24H]                          ; 10018ABA _ 8D. 43, 24
        mov     edx, ecx                                ; 10018ABD _ 8B. D1
        mov     esi, edi                                ; 10018ABF _ 8B. F7
        lea     edi, [ebp+1F4H]                         ; 10018AC1 _ 8D. BD, 000001F4
        shr     ecx, 2                                  ; 10018AC7 _ C1. E9, 02
        rep movsd                                       ; 10018ACA _ F3: A5
        mov     ecx, edx                                ; 10018ACC _ 8B. CA
        and     ecx, 03H                                ; 10018ACE _ 83. E1, 03
        rep movsb                                       ; 10018AD1 _ F3: A4
        mov     edx, dword [eax]                        ; 10018AD3 _ 8B. 10
        lea     ecx, [ebp+80H]                          ; 10018AD5 _ 8D. 8D, 00000080
        lea     esi, [ebx+2CH]                          ; 10018ADB _ 8D. 73, 2C
        lea     edi, [ebp+88H]                          ; 10018ADE _ 8D. BD, 00000088
        mov     dword [ecx], edx                        ; 10018AE4 _ 89. 11
        mov     al, byte [eax+4H]                       ; 10018AE6 _ 8A. 40, 04
        mov     byte [ecx+4H], al                       ; 10018AE9 _ 88. 41, 04
        mov     ecx, 42                                 ; 10018AEC _ B9, 0000002A
        rep movsd                                       ; 10018AF1 _ F3: A5
        call    ?_3024                                  ; 10018AF3 _ E8, 000015F8
        fmul    dword [?_4914]                          ; 10018AF8 _ D8. 0D, 100256B0(d)
        mov     eax, dword [?_5529]                     ; 10018AFE _ A1, 1003542C(d)
        mov     dword [ebp+1CH], 1148846080             ; 10018B03 _ C7. 45, 1C, 447A0000
        mov     word [ebp+50H], ax                      ; 10018B0A _ 66: 89. 45, 50
        inc     eax                                     ; 10018B0E _ 40
        fadd    dword [?_4923]                          ; 10018B0F _ D8. 05, 10025714(d)
        mov     dword [?_5529], eax                     ; 10018B15 _ A3, 1003542C(d)
        fstp    dword [ebp+1D0H]                        ; 10018B1A _ D9. 9D, 000001D0
        call    ?_3025                                  ; 10018B20 _ E8, 000015EB
        fmul    dword [?_4920]                          ; 10018B25 _ D8. 0D, 100256C8(d)
        mov     dword [ebp+20H], 1094713344             ; 10018B2B _ C7. 45, 20, 41400000
        fadd    dword [?_4919]                          ; 10018B32 _ D8. 05, 100256C4(d)
        fstp    dword [ebp+14H]                         ; 10018B38 _ D9. 5D, 14
        fld     dword [ebp+1CH]                         ; 10018B3B _ D9. 45, 1C
        fmul    qword [?_4940]                          ; 10018B3E _ DC. 0D, 10025810(d)
        call    ?_3298                                  ; 10018B44 _ E8, 00002A1B
        push    eax                                     ; 10018B49 _ 50
        call    ?_3022                                  ; 10018B4A _ E8, 00001581
        and     eax, 0FFFFH                             ; 10018B4F _ 25, 0000FFFF
        mov     ecx, dword [ebp+1CH]                    ; 10018B54 _ 8B. 4D, 1C
        mov     dword [esp+18H], eax                    ; 10018B57 _ 89. 44 24, 18
        mov     eax, dword [esp+24H]                    ; 10018B5B _ 8B. 44 24, 24
        fild    dword [esp+18H]                         ; 10018B5F _ DB. 44 24, 18
        fld     dword [ebp+1CH]                         ; 10018B63 _ D9. 45, 1C
        fmul    dword [?_4916]                          ; 10018B66 _ D8. 0D, 100256B8(d)
        add     esp, 8                                  ; 10018B6C _ 83. C4, 08
        cmp     eax, 2                                  ; 10018B6F _ 83. F8, 02
        mov     dword [ebp+18H], ecx                    ; 10018B72 _ 89. 4D, 18
        faddp   st1, st(0)                              ; 10018B75 _ DE. C1
        fld     dword [ebp+1CH]                         ; 10018B77 _ D9. 45, 1C
        fmul    dword [?_4915]                          ; 10018B7A _ D8. 0D, 100256B4(d)
        fsubp   st1, st(0)                              ; 10018B80 _ DE. E9
        fstp    dword [ebp+10H]                         ; 10018B82 _ D9. 5D, 10
        jge     ?_2854                                  ; 10018B85 _ 7D, 09
        mov     byte [ebp+217H], 88                     ; 10018B87 _ C6. 85, 00000217, 58
        jmp     ?_2855                                  ; 10018B8E _ EB, 0E

?_2854: cmp     dword [esp+1CH], 4                      ; 10018B90 _ 83. 7C 24, 1C, 04
        jge     ?_2855                                  ; 10018B95 _ 7D, 07
        mov     byte [ebp+217H], 92                     ; 10018B97 _ C6. 85, 00000217, 5C
?_2855: cmp     dword [esp+1CH], 6                      ; 10018B9E _ 83. 7C 24, 1C, 06
        setge   dl                                      ; 10018BA3 _ 0F 9D. C2
        xor     eax, eax                                ; 10018BA6 _ 33. C0
        dec     edx                                     ; 10018BA8 _ 4A
        mov     ax, word [ebp+0AH]                      ; 10018BA9 _ 66: 8B. 45, 0A
        and     edx, 86H                                ; 10018BAD _ 81. E2, 00000086
        mov     dword [esp+10H], eax                    ; 10018BB3 _ 89. 44 24, 10
        add     edx, 60                                 ; 10018BB7 _ 83. C2, 3C
        fild    dword [esp+10H]                         ; 10018BBA _ DB. 44 24, 10
        mov     byte [ebp+217H], dl                     ; 10018BBE _ 88. 95, 00000217
        fst     dword [esp+24H]                         ; 10018BC4 _ D9. 54 24, 24
        fcomp   dword [ebp+20H]                         ; 10018BC8 _ D8. 5D, 20
        fnstsw  ax                                      ; 10018BCB _ DF. E0
        test    ah, 41H                                 ; 10018BCD _ F6. C4, 41
        jne     ?_2928                                  ; 10018BD0 _ 0F 85, 00000AD4
        fld     dword [ebp+1CH]                         ; 10018BD6 _ D9. 45, 1C
        fld     dword [esp+24H]                         ; 10018BD9 _ D9. 44 24, 24
        fsub    dword [ebp+20H]                         ; 10018BDD _ D8. 65, 20
        mov     ecx, dword [ebp+14H]                    ; 10018BE0 _ 8B. 4D, 14
        mov     dword [esp+28H], ecx                    ; 10018BE3 _ 89. 4C 24, 28
        call    ?_3298                                  ; 10018BE7 _ E8, 00002978
        test    eax, eax                                ; 10018BEC _ 85. C0
        jle     ?_2857                                  ; 10018BEE _ 7E, 11
?_2856: fld     dword [esp+28H]                         ; 10018BF0 _ D9. 44 24, 28
        fdiv    st(0), st1                              ; 10018BF4 _ D8. F1
        fxch    st1                                     ; 10018BF6 _ D9. C9
        dec     eax                                     ; 10018BF8 _ 48
        fsub    dword [esp+28H]                         ; 10018BF9 _ D8. 64 24, 28
        faddp   st1, st(0)                              ; 10018BFD _ DE. C1
        jnz     ?_2856                                  ; 10018BFF _ 75, EF
?_2857: fcom    dword [?_4910]                          ; 10018C01 _ D8. 15, 100256A0(d)
        fnstsw  ax                                      ; 10018C07 _ DF. E0
        test    ah, 41H                                 ; 10018C09 _ F6. C4, 41
        jz      ?_2858                                  ; 10018C0C _ 74, 08
        fstp    st0                                     ; 10018C0E _ DD. D8
        fld     dword [?_4910]                          ; 10018C10 _ D9. 05, 100256A0(d)
?_2858: fstp    dword [ebp+1CH]                         ; 10018C16 _ D9. 5D, 1C
        mov     ax, word [ebp]                          ; 10018C19 _ 66: 8B. 45, 00
        pop     edi                                     ; 10018C1D _ 5F
        pop     esi                                     ; 10018C1E _ 5E
        pop     ebp                                     ; 10018C1F _ 5D
        pop     ebx                                     ; 10018C20 _ 5B
        add     esp, 1052                               ; 10018C21 _ 81. C4, 0000041C
        ret                                             ; 10018C27 _ C3

?_2859: mov     ebx, dword [esp+444H]                   ; 10018C28 _ 8B. 9C 24, 00000444
        mov     esi, dword [esp+430H]                   ; 10018C2F _ 8B. B4 24, 00000430
        jmp     ?_2861                                  ; 10018C36 _ EB, 0E

?_2860: mov     esi, dword [esp+430H]                   ; 10018C38 _ 8B. B4 24, 00000430
        mov     ebx, dword [esp+444H]                   ; 10018C3F _ 8B. 9C 24, 00000444
?_2861: mov     al, byte [ebp+2H]                       ; 10018C46 _ 8A. 45, 02
        cmp     al, 21                                  ; 10018C49 _ 3C, 15
        je      ?_2927                                  ; 10018C4B _ 0F 84, 00000A41
        cmp     al, 22                                  ; 10018C51 _ 3C, 16
        je      ?_2927                                  ; 10018C53 _ 0F 84, 00000A39
        mov     edx, dword [esp+440H]                   ; 10018C59 _ 8B. 94 24, 00000440
        test    edx, edx                                ; 10018C60 _ 85. D2
        jz      ?_2863                                  ; 10018C62 _ 74, 42
        xor     ecx, ecx                                ; 10018C64 _ 33. C9
        mov     edi, dword [?_5668]                     ; 10018C66 _ 8B. 3D, 100A8C30(d)
        mov     cl, byte [edx]                          ; 10018C6C _ 8A. 0A
        add     edi, ecx                                ; 10018C6E _ 03. F9
        lea     eax, [ecx+ecx*2]                        ; 10018C70 _ 8D. 04 49
        shl     eax, 4                                  ; 10018C73 _ C1. E0, 04
        add     eax, ecx                                ; 10018C76 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 10018C78 _ 8D. 04 40
        lea     eax, [edi+eax*4]                        ; 10018C7B _ 8D. 04 87
        mov     al, byte [eax]                          ; 10018C7E _ 8A. 00
        cmp     al, 1                                   ; 10018C80 _ 3C, 01
        jz      ?_2862                                  ; 10018C82 _ 74, 1C
        cmp     al, 3                                   ; 10018C84 _ 3C, 03
        jbe     ?_2863                                  ; 10018C86 _ 76, 1E
        cmp     al, 23                                  ; 10018C88 _ 3C, 17
        jnc     ?_2863                                  ; 10018C8A _ 73, 1A
        cmp     al, 10                                  ; 10018C8C _ 3C, 0A
        jz      ?_2863                                  ; 10018C8E _ 74, 16
        cmp     al, 15                                  ; 10018C90 _ 3C, 0F
        jz      ?_2863                                  ; 10018C92 _ 74, 12
        cmp     al, 17                                  ; 10018C94 _ 3C, 11
        jz      ?_2863                                  ; 10018C96 _ 74, 0E
        mov     dword [ebp+16CH], edx                   ; 10018C98 _ 89. 95, 0000016C
        jmp     ?_2863                                  ; 10018C9E _ EB, 06

?_2862: mov     dword [ebp+170H], edx                   ; 10018CA0 _ 89. 95, 00000170
?_2863: mov     al, byte [ebp+166H]                     ; 10018CA6 _ 8A. 85, 00000166
        test    al, al                                  ; 10018CAC _ 84. C0
        setne   cl                                      ; 10018CAE _ 0F 95. C1
        inc     ecx                                     ; 10018CB1 _ 41
        cmp     esi, 6                                  ; 10018CB2 _ 83. FE, 06
        mov     byte [ebp+0DH], cl                      ; 10018CB5 _ 88. 4D, 0D
        jz      ?_2864                                  ; 10018CB8 _ 74, 1A
        cmp     esi, 7                                  ; 10018CBA _ 83. FE, 07
        jz      ?_2864                                  ; 10018CBD _ 74, 15
        cmp     esi, 10                                 ; 10018CBF _ 83. FE, 0A
        jge     ?_2864                                  ; 10018CC2 _ 7D, 10
        push    8                                       ; 10018CC4 _ 6A, 08
        call    ?_3022                                  ; 10018CC6 _ E8, 00001405
        add     esp, 4                                  ; 10018CCB _ 83. C4, 04
        mov     byte [ebp+1B0H], al                     ; 10018CCE _ 88. 85, 000001B0
?_2864: mov     eax, dword [esp+44CH]                   ; 10018CD4 _ 8B. 84 24, 0000044C
        cmp     eax, 2                                  ; 10018CDB _ 83. F8, 02
        jnz     ?_2865                                  ; 10018CDE _ 75, 09
        push    eax                                     ; 10018CE0 _ 50
        call    ?_3022                                  ; 10018CE1 _ E8, 000013EA
        add     esp, 4                                  ; 10018CE6 _ 83. C4, 04
?_2865: cmp     esi, 4                                  ; 10018CE9 _ 83. FE, 04
        mov     byte [ebp+9H], al                       ; 10018CEC _ 88. 45, 09
        jl      ?_2866                                  ; 10018CEF _ 7C, 05
        cmp     esi, 11                                 ; 10018CF1 _ 83. FE, 0B
        jnz     ?_2869                                  ; 10018CF4 _ 75, 30
?_2866: mov     eax, dword [esp+448H]                   ; 10018CF6 _ 8B. 84 24, 00000448
        test    eax, eax                                ; 10018CFD _ 85. C0
        jz      ?_2867                                  ; 10018CFF _ 74, 10
        push    eax                                     ; 10018D01 _ 50
        call    ?_2770                                  ; 10018D02 _ E8, FFFFF449
        add     esp, 4                                  ; 10018D07 _ 83. C4, 04
        cmp     eax, 2                                  ; 10018D0A _ 83. F8, 02
        jz      ?_2869                                  ; 10018D0D _ 74, 17
        jmp     ?_2868                                  ; 10018D0F _ EB, 12

?_2867: test    ebx, ebx                                ; 10018D11 _ 85. DB
        jz      ?_2869                                  ; 10018D13 _ 74, 11
        push    ebx                                     ; 10018D15 _ 53
        call    ?_2768                                  ; 10018D16 _ E8, FFFFF415
        add     esp, 4                                  ; 10018D1B _ 83. C4, 04
        cmp     eax, 2                                  ; 10018D1E _ 83. F8, 02
        jz      ?_2869                                  ; 10018D21 _ 74, 03
?_2868: mov     byte [ebp+9H], al                       ; 10018D23 _ 88. 45, 09
?_2869: mov     edx, dword [esp+434H]                   ; 10018D26 _ 8B. 94 24, 00000434
        push    edx                                     ; 10018D2D _ 52
        call    ?_2817                                  ; 10018D2E _ E8, FFFFF76D
        mov     esi, eax                                ; 10018D33 _ 8B. F0
        mov     eax, dword [esp+43CH]                   ; 10018D35 _ 8B. 84 24, 0000043C
        push    eax                                     ; 10018D3C _ 50
        mov     dword [esp+28H], esi                    ; 10018D3D _ 89. 74 24, 28
        call    ?_2817                                  ; 10018D41 _ E8, FFFFF75A
        add     esp, 8                                  ; 10018D46 _ 83. C4, 08
        mov     dword [esp+18H], eax                    ; 10018D49 _ 89. 44 24, 18
        test    esi, esi                                ; 10018D4D _ 85. F6
        je      ?_2895                                  ; 10018D4F _ 0F 84, 00000499
        test    eax, eax                                ; 10018D55 _ 85. C0
        je      ?_2895                                  ; 10018D57 _ 0F 84, 00000491
        mov     byte [ebp+0DH], 1                       ; 10018D5D _ C6. 45, 0D, 01
        mov     cl, byte [esi+2H]                       ; 10018D61 _ 8A. 4E, 02
        cmp     cl, 6                                   ; 10018D64 _ 80. F9, 06
        je      ?_2872                                  ; 10018D67 _ 0F 84, 00000080
        cmp     cl, 7                                   ; 10018D6D _ 80. F9, 07
        jz      ?_2872                                  ; 10018D70 _ 74, 7B
        cmp     cl, 5                                   ; 10018D72 _ 80. F9, 05
        jz      ?_2872                                  ; 10018D75 _ 74, 76
        mov     cl, byte [eax+2H]                       ; 10018D77 _ 8A. 48, 02
        cmp     cl, 6                                   ; 10018D7A _ 80. F9, 06
        jz      ?_2871                                  ; 10018D7D _ 74, 54
        cmp     cl, 7                                   ; 10018D7F _ 80. F9, 07
        jz      ?_2871                                  ; 10018D82 _ 74, 4F
        cmp     cl, 5                                   ; 10018D84 _ 80. F9, 05
        jz      ?_2871                                  ; 10018D87 _ 74, 4A
        mov     cl, byte [esi+0DH]                      ; 10018D89 _ 8A. 4E, 0D
        mov     dl, byte [eax+0DH]                      ; 10018D8C _ 8A. 50, 0D
        cmp     cl, dl                                  ; 10018D8F _ 3A. CA
        jc      ?_2870                                  ; 10018D91 _ 72, 20
        mov     dl, byte [esi+0CH]                      ; 10018D93 _ 8A. 56, 0C
        mov     byte [ebp+0CH], dl                      ; 10018D96 _ 88. 55, 0C
        mov     eax, dword [esi+1D0H]                   ; 10018D99 _ 8B. 86, 000001D0
        mov     dword [ebp+1D0H], eax                   ; 10018D9F _ 89. 85, 000001D0
        mov     cl, byte [esi+217H]                     ; 10018DA5 _ 8A. 8E, 00000217
        mov     byte [ebp+217H], cl                     ; 10018DAB _ 88. 8D, 00000217
        jmp     ?_2874                                  ; 10018DB1 _ EB, 58

?_2870: mov     dl, byte [eax+0CH]                      ; 10018DB3 _ 8A. 50, 0C
        mov     byte [ebp+0CH], dl                      ; 10018DB6 _ 88. 55, 0C
        mov     ecx, dword [eax+1D0H]                   ; 10018DB9 _ 8B. 88, 000001D0
        mov     dword [ebp+1D0H], ecx                   ; 10018DBF _ 89. 8D, 000001D0
        mov     dl, byte [eax+217H]                     ; 10018DC5 _ 8A. 90, 00000217
        mov     byte [ebp+217H], dl                     ; 10018DCB _ 88. 95, 00000217
        jmp     ?_2874                                  ; 10018DD1 _ EB, 38

?_2871: mov     cl, byte [eax+0CH]                      ; 10018DD3 _ 8A. 48, 0C
        mov     byte [ebp+0CH], cl                      ; 10018DD6 _ 88. 4D, 0C
        mov     edx, dword [eax+1D0H]                   ; 10018DD9 _ 8B. 90, 000001D0
        mov     dword [ebp+1D0H], edx                   ; 10018DDF _ 89. 95, 000001D0
        mov     al, byte [eax+217H]                     ; 10018DE5 _ 8A. 80, 00000217
        jmp     ?_2873                                  ; 10018DEB _ EB, 18

?_2872: mov     cl, byte [esi+0CH]                      ; 10018DED _ 8A. 4E, 0C
        mov     byte [ebp+0CH], cl                      ; 10018DF0 _ 88. 4D, 0C
        mov     edx, dword [esi+1D0H]                   ; 10018DF3 _ 8B. 96, 000001D0
        mov     dword [ebp+1D0H], edx                   ; 10018DF9 _ 89. 95, 000001D0
        mov     al, byte [esi+217H]                     ; 10018DFF _ 8A. 86, 00000217
?_2873: mov     byte [ebp+217H], al                     ; 10018E05 _ 88. 85, 00000217
?_2874: mov     eax, dword [esp+18H]                    ; 10018E0B _ 8B. 44 24, 18
        mov     edi, dword [esp+20H]                    ; 10018E0F _ 8B. 7C 24, 20
        sub     eax, edi                                ; 10018E13 _ 2B. C7
        lea     esi, [ebp+88H]                          ; 10018E15 _ 8D. B5, 00000088
        mov     dword [esp+10H], eax                    ; 10018E1B _ 89. 44 24, 10
        sub     edi, ebp                                ; 10018E1F _ 2B. FD
        mov     ebx, 14                                 ; 10018E21 _ BB, 0000000E
?_2875: call    ?_3024                                  ; 10018E26 _ E8, 000012C5
        mov     ecx, dword [esp+10H]                    ; 10018E2B _ 8B. 4C 24, 10
        lea     eax, [edi+esi]                          ; 10018E2F _ 8D. 04 37
        fld     st0                                     ; 10018E32 _ D9. C0
        fsubr   qword [?_4938]                          ; 10018E34 _ DC. 2D, 100257D8(d)
        push    10                                      ; 10018E3A _ 6A, 0A
        fmul    dword [eax+ecx]                         ; 10018E3C _ D8. 0C 08
        fxch    st1                                     ; 10018E3F _ D9. C9
        fmul    dword [eax]                             ; 10018E41 _ D8. 08
        faddp   st1, st(0)                              ; 10018E43 _ DE. C1
        fstp    dword [esi]                             ; 10018E45 _ D9. 1E
        call    ?_3022                                  ; 10018E47 _ E8, 00001284
        and     eax, 0FFFFH                             ; 10018E4C _ 25, 0000FFFF
        add     esp, 4                                  ; 10018E51 _ 83. C4, 04
        mov     dword [esp+24H], eax                    ; 10018E54 _ 89. 44 24, 24
        add     esi, 12                                 ; 10018E58 _ 83. C6, 0C
        fild    dword [esp+24H]                         ; 10018E5B _ DB. 44 24, 24
        dec     ebx                                     ; 10018E5F _ 4B
        fadd    qword [?_4944]                          ; 10018E60 _ DC. 05, 10025F98(d)
        fstp    dword [esi-4H]                          ; 10018E66 _ D9. 5E, FC
        fld     dword [esi-0CH]                         ; 10018E69 _ D9. 46, F4
        fmul    qword [?_4922]                          ; 10018E6C _ DC. 0D, 100256D0(d)
        fstp    dword [esi-8H]                          ; 10018E72 _ D9. 5E, F8
        jnz     ?_2875                                  ; 10018E75 _ 75, AF
        call    ?_3024                                  ; 10018E77 _ E8, 00001274
        fadd    qword [?_4907]                          ; 10018E7C _ DC. 05, 10025688(d)
        mov     edx, dword [esp+18H]                    ; 10018E82 _ 8B. 54 24, 18
        mov     esi, dword [esp+20H]                    ; 10018E86 _ 8B. 74 24, 20
        xor     eax, eax                                ; 10018E8A _ 33. C0
        mov     ecx, 1                                  ; 10018E8C _ B9, 00000001
        fmul    qword [?_4943]                          ; 10018E91 _ DC. 0D, 10025F90(d)
        mov     dword [esp+24H], eax                    ; 10018E97 _ 89. 44 24, 24
        mov     dword [esp+28H], eax                    ; 10018E9B _ 89. 44 24, 28
        lea     eax, [edx+81H]                          ; 10018E9F _ 8D. 82, 00000081
        sub     esi, edx                                ; 10018EA5 _ 2B. F2
        fst     dword [ebp+124H]                        ; 10018EA7 _ D9. 95, 00000124
        fmul    qword [?_4922]                          ; 10018EAD _ DC. 0D, 100256D0(d)
        fstp    dword [ebp+128H]                        ; 10018EB3 _ D9. 9D, 00000128
?_2876: mov     edi, dword [esp+20H]                    ; 10018EB9 _ 8B. 7C 24, 20
        mov     ebx, dword [esp+24H]                    ; 10018EBD _ 8B. 5C 24, 24
        mov     dl, byte [esi+eax]                      ; 10018EC1 _ 8A. 14 06
        add     edi, 128                                ; 10018EC4 _ 81. C7, 00000080
        cmp     dl, byte [edi+ebx]                      ; 10018ECA _ 3A. 14 1F
        jbe     ?_2877                                  ; 10018ECD _ 76, 04
        mov     dword [esp+24H], ecx                    ; 10018ECF _ 89. 4C 24, 24
?_2877: mov     edi, dword [esp+18H]                    ; 10018ED3 _ 8B. 7C 24, 18
        mov     ebx, dword [esp+28H]                    ; 10018ED7 _ 8B. 5C 24, 28
        mov     dl, byte [eax]                          ; 10018EDB _ 8A. 10
        cmp     dl, byte [edi+ebx+80H]                  ; 10018EDD _ 3A. 94 1F, 00000080
        jbe     ?_2878                                  ; 10018EE4 _ 76, 04
        mov     dword [esp+28H], ecx                    ; 10018EE6 _ 89. 4C 24, 28
?_2878: inc     ecx                                     ; 10018EEA _ 41
        inc     eax                                     ; 10018EEB _ 40
        cmp     ecx, 5                                  ; 10018EEC _ 83. F9, 05
        jl      ?_2876                                  ; 10018EEF _ 7C, C8
        mov     eax, dword [esp+20H]                    ; 10018EF1 _ 8B. 44 24, 20
        mov     ebx, dword [esp+10H]                    ; 10018EF5 _ 8B. 5C 24, 10
        xor     esi, esi                                ; 10018EF9 _ 33. F6
        lea     edi, [eax+80H]                          ; 10018EFB _ 8D. B8, 00000080
?_2879: call    ?_3024                                  ; 10018F01 _ E8, 000011EA
        mov     eax, dword [esp+28H]                    ; 10018F06 _ 8B. 44 24, 28
        fstp    dword [esp+10H]                         ; 10018F0A _ D9. 5C 24, 10
        cmp     esi, eax                                ; 10018F0E _ 3B. F0
        jnz     ?_2880                                  ; 10018F10 _ 75, 0F
        xor     ecx, ecx                                ; 10018F12 _ 33. C9
        mov     cl, byte [edi+ebx]                      ; 10018F14 _ 8A. 0C 1F
        mov     dword [esp+10H], ecx                    ; 10018F17 _ 89. 4C 24, 10
        fild    dword [esp+10H]                         ; 10018F1B _ DB. 44 24, 10
        jmp     ?_2882                                  ; 10018F1F _ EB, 3D

?_2880: cmp     esi, dword [esp+24H]                    ; 10018F21 _ 3B. 74 24, 24
        jnz     ?_2881                                  ; 10018F25 _ 75, 0E
        xor     edx, edx                                ; 10018F27 _ 33. D2
        mov     dl, byte [edi]                          ; 10018F29 _ 8A. 17
        mov     dword [esp+10H], edx                    ; 10018F2B _ 89. 54 24, 10
        fild    dword [esp+10H]                         ; 10018F2F _ DB. 44 24, 10
        jmp     ?_2882                                  ; 10018F33 _ EB, 29

?_2881: fld     dword [esp+10H]                         ; 10018F35 _ D9. 44 24, 10
        fsubr   qword [?_4938]                          ; 10018F39 _ DC. 2D, 100257D8(d)
        xor     eax, eax                                ; 10018F3F _ 33. C0
        xor     ecx, ecx                                ; 10018F41 _ 33. C9
        mov     al, byte [edi+ebx]                      ; 10018F43 _ 8A. 04 1F
        mov     cl, byte [edi]                          ; 10018F46 _ 8A. 0F
        mov     dword [esp+14H], eax                    ; 10018F48 _ 89. 44 24, 14
        fimul   dword [esp+14H]                         ; 10018F4C _ DA. 4C 24, 14
        mov     dword [esp+14H], ecx                    ; 10018F50 _ 89. 4C 24, 14
        fild    dword [esp+14H]                         ; 10018F54 _ DB. 44 24, 14
        fmul    dword [esp+10H]                         ; 10018F58 _ D8. 4C 24, 10
        faddp   st1, st(0)                              ; 10018F5C _ DE. C1
?_2882: fmul    dword [?_4914]                          ; 10018F5E _ D8. 0D, 100256B0(d)
        call    ?_3298                                  ; 10018F64 _ E8, 000025FB
        mov     byte [esi+ebp+80H], al                  ; 10018F69 _ 88. 84 2E, 00000080
        inc     esi                                     ; 10018F70 _ 46
        inc     edi                                     ; 10018F71 _ 47
        cmp     esi, 5                                  ; 10018F72 _ 83. FE, 05
        jl      ?_2879                                  ; 10018F75 _ 7C, 8A
        mov     edx, dword [esp+434H]                   ; 10018F77 _ 8B. 94 24, 00000434
        mov     eax, dword [esp+438H]                   ; 10018F7E _ 8B. 84 24, 00000438
        or      ecx, 0FFFFFFFFH                         ; 10018F85 _ 83. C9, FF
        mov     dword [ebp+60H], edx                    ; 10018F88 _ 89. 55, 60
        mov     edx, dword [esp+20H]                    ; 10018F8B _ 8B. 54 24, 20
        mov     dword [ebp+64H], eax                    ; 10018F8F _ 89. 45, 64
        mov     dword [ebp+68H], ecx                    ; 10018F92 _ 89. 4D, 68
        mov     esi, 3                                  ; 10018F95 _ BE, 00000003
        mov     dword [ebp+6CH], ecx                    ; 10018F9A _ 89. 4D, 6C
        lea     edi, [edx+68H]                          ; 10018F9D _ 8D. 7A, 68
        mov     dword [ebp+70H], ecx                    ; 10018FA0 _ 89. 4D, 70
        mov     dword [ebp+74H], ecx                    ; 10018FA3 _ 89. 4D, 74
        mov     dword [ebp+78H], ecx                    ; 10018FA6 _ 89. 4D, 78
?_2883: mov     eax, dword [edi]                        ; 10018FA9 _ 8B. 07
        cmp     eax, -1                                 ; 10018FAB _ 83. F8, FF
        jz      ?_2884                                  ; 10018FAE _ 74, 1C
        push    eax                                     ; 10018FB0 _ 50
        call    ?_2817                                  ; 10018FB1 _ E8, FFFFF4EA
        mov     cl, byte [eax+2H]                       ; 10018FB6 _ 8A. 48, 02
        add     esp, 4                                  ; 10018FB9 _ 83. C4, 04
        cmp     cl, 15                                  ; 10018FBC _ 80. F9, 0F
        jz      ?_2885                                  ; 10018FBF _ 74, 18
        inc     esi                                     ; 10018FC1 _ 46
        add     edi, 4                                  ; 10018FC2 _ 83. C7, 04
        cmp     esi, 8                                  ; 10018FC5 _ 83. FE, 08
        jl      ?_2883                                  ; 10018FC8 _ 7C, DF
        jmp     ?_2886                                  ; 10018FCA _ EB, 18

?_2884: mov     ecx, dword [esp+20H]                    ; 10018FCC _ 8B. 4C 24, 20
        mov     eax, dword [ebp+4H]                     ; 10018FD0 _ 8B. 45, 04
        mov     dword [ecx+esi*4+5CH], eax              ; 10018FD3 _ 89. 44 B1, 5C
        jmp     ?_2886                                  ; 10018FD7 _ EB, 0B

?_2885: mov     eax, dword [esp+20H]                    ; 10018FD9 _ 8B. 44 24, 20
        mov     edx, dword [ebp+4H]                     ; 10018FDD _ 8B. 55, 04
        mov     dword [eax+esi*4+5CH], edx              ; 10018FE0 _ 89. 54 B0, 5C
?_2886: mov     ecx, dword [esp+18H]                    ; 10018FE4 _ 8B. 4C 24, 18
        mov     esi, 3                                  ; 10018FE8 _ BE, 00000003
        lea     edi, [ecx+68H]                          ; 10018FED _ 8D. 79, 68
?_2887: mov     eax, dword [edi]                        ; 10018FF0 _ 8B. 07
        cmp     eax, -1                                 ; 10018FF2 _ 83. F8, FF
        jz      ?_2888                                  ; 10018FF5 _ 74, 1C
        push    eax                                     ; 10018FF7 _ 50
        call    ?_2817                                  ; 10018FF8 _ E8, FFFFF4A3
        mov     cl, byte [eax+2H]                       ; 10018FFD _ 8A. 48, 02
        add     esp, 4                                  ; 10019000 _ 83. C4, 04
        cmp     cl, 15                                  ; 10019003 _ 80. F9, 0F
        jz      ?_2889                                  ; 10019006 _ 74, 18
        inc     esi                                     ; 10019008 _ 46
        add     edi, 4                                  ; 10019009 _ 83. C7, 04
        cmp     esi, 8                                  ; 1001900C _ 83. FE, 08
        jl      ?_2887                                  ; 1001900F _ 7C, DF
        jmp     ?_2890                                  ; 10019011 _ EB, 18

?_2888: mov     ecx, dword [esp+18H]                    ; 10019013 _ 8B. 4C 24, 18
        mov     edx, dword [ebp+4H]                     ; 10019017 _ 8B. 55, 04
        mov     dword [ecx+esi*4+5CH], edx              ; 1001901A _ 89. 54 B1, 5C
        jmp     ?_2891                                  ; 1001901E _ EB, 0F

?_2889: mov     ecx, dword [esp+18H]                    ; 10019020 _ 8B. 4C 24, 18
        mov     eax, dword [ebp+4H]                     ; 10019024 _ 8B. 45, 04
        mov     dword [ecx+esi*4+5CH], eax              ; 10019027 _ 89. 44 B1, 5C
?_2890: mov     ecx, dword [esp+18H]                    ; 1001902B _ 8B. 4C 24, 18
?_2891: mov     dword [ebp+7CH], 0                      ; 1001902F _ C7. 45, 7C, 00000000
        mov     al, byte [ecx+2H]                       ; 10019036 _ 8A. 41, 02
        cmp     al, 6                                   ; 10019039 _ 3C, 06
        jz      ?_2892                                  ; 1001903B _ 74, 24
        cmp     al, 7                                   ; 1001903D _ 3C, 07
        jz      ?_2892                                  ; 1001903F _ 74, 20
        cmp     al, 5                                   ; 10019041 _ 3C, 05
        jz      ?_2892                                  ; 10019043 _ 74, 1C
        mov     eax, dword [esp+20H]                    ; 10019045 _ 8B. 44 24, 20
        mov     dx, word [eax+50H]                      ; 10019049 _ 66: 8B. 50, 50
        mov     word [ebp+50H], dx                      ; 1001904D _ 66: 89. 55, 50
        mov     cl, byte [eax+58H]                      ; 10019051 _ 8A. 48, 58
        inc     cl                                      ; 10019054 _ FE. C1
        mov     byte [ebp+58H], cl                      ; 10019056 _ 88. 4D, 58
        mov     edx, dword [eax+54H]                    ; 10019059 _ 8B. 50, 54
        mov     dword [ebp+54H], edx                    ; 1001905C _ 89. 55, 54
        jmp     ?_2893                                  ; 1001905F _ EB, 16

?_2892: mov     ax, word [ecx+50H]                      ; 10019061 _ 66: 8B. 41, 50
        mov     word [ebp+50H], ax                      ; 10019065 _ 66: 89. 45, 50
        mov     dl, byte [ecx+58H]                      ; 10019069 _ 8A. 51, 58
        inc     dl                                      ; 1001906C _ FE. C2
        mov     byte [ebp+58H], dl                      ; 1001906E _ 88. 55, 58
        mov     eax, dword [ecx+54H]                    ; 10019071 _ 8B. 41, 54
        mov     dword [ebp+54H], eax                    ; 10019074 _ 89. 45, 54
?_2893: mov     dword [ebp+1CH], 1148846080             ; 10019077 _ C7. 45, 1C, 447A0000
        call    ?_3025                                  ; 1001907E _ E8, 0000108D
        fmul    dword [?_4920]                          ; 10019083 _ D8. 0D, 100256C8(d)
        mov     ecx, dword [esp+18H]                    ; 10019089 _ 8B. 4C 24, 18
        mov     edx, dword [esp+20H]                    ; 1001908D _ 8B. 54 24, 20
        fadd    dword [?_4919]                          ; 10019091 _ D8. 05, 100256C4(d)
        fmul    dword [?_4942]                          ; 10019097 _ D8. 0D, 10025F88(d)
        fld     dword [ecx+14H]                         ; 1001909D _ D9. 41, 14
        fadd    dword [edx+14H]                         ; 100190A0 _ D8. 42, 14
        mov     dword [ebp+20H], 1094713344             ; 100190A3 _ C7. 45, 20, 41400000
        fmul    qword [?_4940]                          ; 100190AA _ DC. 0D, 10025810(d)
        faddp   st1, st(0)                              ; 100190B0 _ DE. C1
        fstp    dword [ebp+14H]                         ; 100190B2 _ D9. 5D, 14
        fld     dword [ebp+1CH]                         ; 100190B5 _ D9. 45, 1C
        fmul    qword [?_4940]                          ; 100190B8 _ DC. 0D, 10025810(d)
        call    ?_3298                                  ; 100190BE _ E8, 000024A1
        push    eax                                     ; 100190C3 _ 50
        call    ?_3022                                  ; 100190C4 _ E8, 00001007
        and     eax, 0FFFFH                             ; 100190C9 _ 25, 0000FFFF
        add     esp, 4                                  ; 100190CE _ 83. C4, 04
        mov     dword [esp+14H], eax                    ; 100190D1 _ 89. 44 24, 14
        mov     eax, dword [ebp+1CH]                    ; 100190D5 _ 8B. 45, 1C
        fild    dword [esp+14H]                         ; 100190D8 _ DB. 44 24, 14
        fld     dword [ebp+1CH]                         ; 100190DC _ D9. 45, 1C
        fmul    dword [?_4916]                          ; 100190DF _ D8. 0D, 100256B8(d)
        xor     ebx, ebx                                ; 100190E5 _ 33. DB
        mov     dword [ebp+18H], eax                    ; 100190E7 _ 89. 45, 18
        xor     esi, esi                                ; 100190EA _ 33. F6
        faddp   st1, st(0)                              ; 100190EC _ DE. C1
        fld     dword [ebp+1CH]                         ; 100190EE _ D9. 45, 1C
        fmul    dword [?_4915]                          ; 100190F1 _ D8. 0D, 100256B4(d)
        fsubp   st1, st(0)                              ; 100190F7 _ DE. E9
        fstp    dword [ebp+10H]                         ; 100190F9 _ D9. 5D, 10
?_2894: xor     ecx, ecx                                ; 100190FC _ 33. C9
        push    64                                      ; 100190FE _ 6A, 40
        mov     cx, word [ebp]                          ; 10019100 _ 66: 8B. 4D, 00
        lea     edi, [ecx+esi]                          ; 10019104 _ 8D. 3C 31
        call    ?_3022                                  ; 10019107 _ E8, 00000FC4
        sub     al, 32                                  ; 1001910C _ 2C, 20
        mov     byte [?_5691+edi], 0                    ; 1001910E _ C6. 87, 1014D8E0(d), 00
        mov     byte [?_5674+edi], al                   ; 10019115 _ 88. 87, 100A9820(d)
        xor     eax, eax                                ; 1001911B _ 33. C0
        mov     ax, word [ebp]                          ; 1001911D _ 66: 8B. 45, 00
        push    64                                      ; 10019121 _ 6A, 40
        lea     edx, [eax+eax*2]                        ; 10019123 _ 8D. 14 40
        shl     edx, 8                                  ; 10019126 _ C1. E2, 08
        lea     edi, [edx+ebx]                          ; 10019129 _ 8D. 3C 1A
        call    ?_3022                                  ; 1001912C _ E8, 00000F9F
        add     esp, 8                                  ; 10019131 _ 83. C4, 08
        sub     al, 32                                  ; 10019134 _ 2C, 20
        add     esi, 768                                ; 10019136 _ 81. C6, 00000300
        inc     ebx                                     ; 1001913C _ 43
        cmp     esi, 589824                             ; 1001913D _ 81. FE, 00090000
        mov     byte [?_5674+edi], al                   ; 10019143 _ 88. 87, 100A9820(d)
        mov     byte [?_5691+edi], 0                    ; 10019149 _ C6. 87, 1014D8E0(d), 00
        jl      ?_2894                                  ; 10019150 _ 7C, AA
        push    32                                      ; 10019152 _ 6A, 20
        call    ?_3022                                  ; 10019154 _ E8, 00000F77
        mov     cl, 127                                 ; 10019159 _ B1, 7F
        mov     esi, dword [esp+24H]                    ; 1001915B _ 8B. 74 24, 24
        sub     cl, al                                  ; 1001915F _ 2A. C8
        xor     eax, eax                                ; 10019161 _ 33. C0
        mov     ax, word [ebp]                          ; 10019163 _ 66: 8B. 45, 00
        push    32                                      ; 10019167 _ 6A, 20
        lea     edx, [eax+eax*2]                        ; 10019169 _ 8D. 14 40
        xor     eax, eax                                ; 1001916C _ 33. C0
        mov     ax, word [esi]                          ; 1001916E _ 66: 8B. 06
        shl     edx, 8                                  ; 10019171 _ C1. E2, 08
        mov     byte [?_5674+edx+eax], cl               ; 10019174 _ 88. 8C 02, 100A9820(d)
        call    ?_3022                                  ; 1001917B _ E8, 00000F50
        mov     cl, 127                                 ; 10019180 _ B1, 7F
        push    32                                      ; 10019182 _ 6A, 20
        sub     cl, al                                  ; 10019184 _ 2A. C8
        xor     eax, eax                                ; 10019186 _ 33. C0
        mov     ax, word [esi]                          ; 10019188 _ 66: 8B. 06
        lea     edx, [eax+eax*2]                        ; 1001918B _ 8D. 14 40
        xor     eax, eax                                ; 1001918E _ 33. C0
        mov     ax, word [ebp]                          ; 10019190 _ 66: 8B. 45, 00
        shl     edx, 8                                  ; 10019194 _ C1. E2, 08
        mov     byte [?_5674+edx+eax], cl               ; 10019197 _ 88. 8C 02, 100A9820(d)
        call    ?_3022                                  ; 1001919E _ E8, 00000F2D
        mov     cl, 127                                 ; 100191A3 _ B1, 7F
        mov     esi, dword [esp+24H]                    ; 100191A5 _ 8B. 74 24, 24
        sub     cl, al                                  ; 100191A9 _ 2A. C8
        xor     eax, eax                                ; 100191AB _ 33. C0
        mov     ax, word [ebp]                          ; 100191AD _ 66: 8B. 45, 00
        push    32                                      ; 100191B1 _ 6A, 20
        lea     edx, [eax+eax*2]                        ; 100191B3 _ 8D. 14 40
        xor     eax, eax                                ; 100191B6 _ 33. C0
        mov     ax, word [esi]                          ; 100191B8 _ 66: 8B. 06
        shl     edx, 8                                  ; 100191BB _ C1. E2, 08
        mov     byte [?_5674+edx+eax], cl               ; 100191BE _ 88. 8C 02, 100A9820(d)
        call    ?_3022                                  ; 100191C5 _ E8, 00000F06
        mov     cl, 127                                 ; 100191CA _ B1, 7F
        add     esp, 16                                 ; 100191CC _ 83. C4, 10
        sub     cl, al                                  ; 100191CF _ 2A. C8
        xor     eax, eax                                ; 100191D1 _ 33. C0
        mov     ax, word [esi]                          ; 100191D3 _ 66: 8B. 06
        lea     edx, [eax+eax*2]                        ; 100191D6 _ 8D. 14 40
        shl     edx, 8                                  ; 100191D9 _ C1. E2, 08
        xor     eax, eax                                ; 100191DC _ 33. C0
        mov     ax, word [ebp]                          ; 100191DE _ 66: 8B. 45, 00
        mov     byte [?_5674+edx+eax], cl               ; 100191E2 _ 88. 8C 02, 100A9820(d)
        jmp     ?_2919                                  ; 100191E9 _ E9, 00000384

?_2895: mov     cl, byte [esp+448H]                     ; 100191EE _ 8A. 8C 24, 00000448
        mov     byte [ebp+164H], bl                     ; 100191F5 _ 88. 9D, 00000164
        and     ebx, 0FFH                               ; 100191FB _ 81. E3, 000000FF
        mov     byte [ebp+166H], 0                      ; 10019201 _ C6. 85, 00000166, 00
        push    ebx                                     ; 10019208 _ 53
        mov     byte [ebp+165H], cl                     ; 10019209 _ 88. 8D, 00000165
        call    ?_2778                                  ; 1001920F _ E8, FFFFEFEC
        push    8                                       ; 10019214 _ 6A, 08
        mov     ebx, eax                                ; 10019216 _ 8B. D8
        call    ?_3022                                  ; 10019218 _ E8, 00000EB3
        mov     cl, byte [ebp+2H]                       ; 1001921D _ 8A. 4D, 02
        add     esp, 8                                  ; 10019220 _ 83. C4, 08
        and     eax, 0FFFFH                             ; 10019223 _ 25, 0000FFFF
        cmp     cl, 3                                   ; 10019228 _ 80. F9, 03
        jz      ?_2898                                  ; 1001922B _ 74, 3B
        cmp     ebx, 11                                 ; 1001922D _ 83. FB, 0B
        jz      ?_2897                                  ; 10019230 _ 74, 22
        cmp     ebx, 12                                 ; 10019232 _ 83. FB, 0C
        jz      ?_2897                                  ; 10019235 _ 74, 1D
        cmp     eax, 3                                  ; 10019237 _ 83. F8, 03
        jge     ?_2896                                  ; 1001923A _ 7D, 09
        mov     byte [ebp+217H], 62                     ; 1001923C _ C6. 85, 00000217, 3E
        jmp     ?_2903                                  ; 10019243 _ EB, 74

?_2896: cmp     eax, 6                                  ; 10019245 _ 83. F8, 06
        setge   dl                                      ; 10019248 _ 0F 9D. C2
        dec     edx                                     ; 1001924B _ 4A
        and     edx, 08H                                ; 1001924C _ 83. E2, 08
        add     edx, 78                                 ; 1001924F _ 83. C2, 4E
        jmp     ?_2902                                  ; 10019252 _ EB, 5F

?_2897: cmp     eax, 4                                  ; 10019254 _ 83. F8, 04
        setge   al                                      ; 10019257 _ 0F 9D. C0
        dec     eax                                     ; 1001925A _ 48
        and     al, 0FFFFFFF8H                          ; 1001925B _ 24, F8
        add     eax, 86                                 ; 1001925D _ 83. C0, 56
        mov     byte [ebp+217H], al                     ; 10019260 _ 88. 85, 00000217
        jmp     ?_2903                                  ; 10019266 _ EB, 51

?_2898: cmp     ebx, 11                                 ; 10019268 _ 83. FB, 0B
        jz      ?_2900                                  ; 1001926B _ 74, 28
        cmp     ebx, 12                                 ; 1001926D _ 83. FB, 0C
        jz      ?_2900                                  ; 10019270 _ 74, 23
        cmp     eax, 3                                  ; 10019272 _ 83. F8, 03
        jge     ?_2899                                  ; 10019275 _ 7D, 09
        mov     byte [ebp+217H], 60                     ; 10019277 _ C6. 85, 00000217, 3C
        jmp     ?_2903                                  ; 1001927E _ EB, 39

?_2899: cmp     eax, 6                                  ; 10019280 _ 83. F8, 06
        setge   cl                                      ; 10019283 _ 0F 9D. C1
        dec     ecx                                     ; 10019286 _ 49
        and     ecx, 04H                                ; 10019287 _ 83. E1, 04
        add     ecx, 88                                 ; 1001928A _ 83. C1, 58
        mov     byte [ebp+217H], cl                     ; 1001928D _ 88. 8D, 00000217
        jmp     ?_2903                                  ; 10019293 _ EB, 24

?_2900: cmp     eax, 3                                  ; 10019295 _ 83. F8, 03
        jge     ?_2901                                  ; 10019298 _ 7D, 09
        mov     byte [ebp+217H], 88                     ; 1001929A _ C6. 85, 00000217, 58
        jmp     ?_2903                                  ; 100192A1 _ EB, 16

?_2901: cmp     eax, 6                                  ; 100192A3 _ 83. F8, 06
        setge   dl                                      ; 100192A6 _ 0F 9D. C2
        dec     edx                                     ; 100192A9 _ 4A
        and     edx, 0FFFFFF9AH                         ; 100192AA _ 83. E2, 9A
        add     edx, 194                                ; 100192AD _ 81. C2, 000000C2
?_2902: mov     byte [ebp+217H], dl                     ; 100192B3 _ 88. 95, 00000217
?_2903: lea     edi, [ebx*8]                            ; 100192B9 _ 8D. 3C DD, 00000000
        lea     esi, [ebp+88H]                          ; 100192C0 _ 8D. B5, 00000088
        sub     edi, ebx                                ; 100192C6 _ 2B. FB
        mov     ebx, 14                                 ; 100192C8 _ BB, 0000000E
        shl     edi, 4                                  ; 100192CD _ C1. E7, 04
        add     edi, ?_4941                             ; 100192D0 _ 81. C7, 10025818(d)
?_2904: call    ?_3024                                  ; 100192D6 _ E8, 00000E15
        fld     dword [edi+4H]                          ; 100192DB _ D9. 47, 04
        fsub    dword [edi]                             ; 100192DE _ D8. 27
        push    10                                      ; 100192E0 _ 6A, 0A
        fmulp   st1, st(0)                              ; 100192E2 _ DE. C9
        fadd    dword [edi]                             ; 100192E4 _ D8. 07
        fstp    dword [esi]                             ; 100192E6 _ D9. 1E
        call    ?_3022                                  ; 100192E8 _ E8, 00000DE3
        and     eax, 0FFFFH                             ; 100192ED _ 25, 0000FFFF
        add     esp, 4                                  ; 100192F2 _ 83. C4, 04
        mov     dword [esp+14H], eax                    ; 100192F5 _ 89. 44 24, 14
        add     edi, 8                                  ; 100192F9 _ 83. C7, 08
        fild    dword [esp+14H]                         ; 100192FC _ DB. 44 24, 14
        add     esi, 12                                 ; 10019300 _ 83. C6, 0C
        dec     ebx                                     ; 10019303 _ 4B
        fadd    qword [?_4944]                          ; 10019304 _ DC. 05, 10025F98(d)
        fstp    dword [esi-4H]                          ; 1001930A _ D9. 5E, FC
        fld     dword [esi-0CH]                         ; 1001930D _ D9. 46, F4
        fmul    qword [?_4922]                          ; 10019310 _ DC. 0D, 100256D0(d)
        fstp    dword [esi-8H]                          ; 10019316 _ D9. 5E, F8
        jnz     ?_2904                                  ; 10019319 _ 75, BB
        call    ?_3024                                  ; 1001931B _ E8, 00000DD0
        fadd    qword [?_4907]                          ; 10019320 _ DC. 05, 10025688(d)
        xor     ebx, ebx                                ; 10019326 _ 33. DB
        xor     esi, esi                                ; 10019328 _ 33. F6
        fmul    qword [?_4943]                          ; 1001932A _ DC. 0D, 10025F90(d)
        fst     dword [ebp+124H]                        ; 10019330 _ D9. 95, 00000124
        fmul    qword [?_4922]                          ; 10019336 _ DC. 0D, 100256D0(d)
        fstp    dword [ebp+128H]                        ; 1001933C _ D9. 9D, 00000128
?_2905: xor     eax, eax                                ; 10019342 _ 33. C0
        push    64                                      ; 10019344 _ 6A, 40
        mov     ax, word [ebp]                          ; 10019346 _ 66: 8B. 45, 00
        lea     edi, [eax+esi]                          ; 1001934A _ 8D. 3C 30
        call    ?_3022                                  ; 1001934D _ E8, 00000D7E
        sub     al, 32                                  ; 10019352 _ 2C, 20
        mov     byte [?_5691+edi], 0                    ; 10019354 _ C6. 87, 1014D8E0(d), 00
        mov     byte [?_5674+edi], al                   ; 1001935B _ 88. 87, 100A9820(d)
        xor     eax, eax                                ; 10019361 _ 33. C0
        mov     ax, word [ebp]                          ; 10019363 _ 66: 8B. 45, 00
        push    64                                      ; 10019367 _ 6A, 40
        lea     ecx, [eax+eax*2]                        ; 10019369 _ 8D. 0C 40
        shl     ecx, 8                                  ; 1001936C _ C1. E1, 08
        lea     edi, [ecx+ebx]                          ; 1001936F _ 8D. 3C 19
        call    ?_3022                                  ; 10019372 _ E8, 00000D59
        add     esp, 8                                  ; 10019377 _ 83. C4, 08
        sub     al, 32                                  ; 1001937A _ 2C, 20
        add     esi, 768                                ; 1001937C _ 81. C6, 00000300
        inc     ebx                                     ; 10019382 _ 43
        cmp     esi, 589824                             ; 10019383 _ 81. FE, 00090000
        mov     byte [?_5674+edi], al                   ; 10019389 _ 88. 87, 100A9820(d)
        mov     byte [?_5691+edi], 0                    ; 1001938F _ C6. 87, 1014D8E0(d), 00
        jl      ?_2905                                  ; 10019396 _ 7C, AA
        push    2                                       ; 10019398 _ 6A, 02
        call    ?_3022                                  ; 1001939A _ E8, 00000D31
        add     esp, 4                                  ; 1001939F _ 83. C4, 04
        mov     byte [ebp+0CH], al                      ; 100193A2 _ 88. 45, 0C
        call    ?_3024                                  ; 100193A5 _ E8, 00000D46
        fmul    dword [?_4914]                          ; 100193AA _ D8. 0D, 100256B0(d)
        mov     eax, dword [esp+448H]                   ; 100193B0 _ 8B. 84 24, 00000448
        test    eax, eax                                ; 100193B7 _ 85. C0
        fadd    dword [?_4923]                          ; 100193B9 _ D8. 05, 10025714(d)
        fstp    dword [ebp+1D0H]                        ; 100193BF _ D9. 9D, 000001D0
        jz      ?_2907                                  ; 100193C5 _ 74, 37
        mov     eax, dword [esp+444H]                   ; 100193C7 _ 8B. 84 24, 00000444
        test    eax, eax                                ; 100193CE _ 85. C0
        jnz     ?_2907                                  ; 100193D0 _ 75, 2C
        xor     esi, esi                                ; 100193D2 _ 33. F6
?_2906: xor     eax, eax                                ; 100193D4 _ 33. C0
        mov     al, byte [ebp+165H]                     ; 100193D6 _ 8A. 85, 00000165
        lea     edx, [eax+eax*2]                        ; 100193DC _ 8D. 14 40
        mov     al, byte [?_5393+esi+edx*2]             ; 100193DF _ 8A. 84 56, 10030DDA(d)
        push    eax                                     ; 100193E6 _ 50
        call    ?_2814                                  ; 100193E7 _ E8, FFFFF064
        add     esp, 4                                  ; 100193EC _ 83. C4, 04
        mov     byte [esi+ebp+80H], al                  ; 100193EF _ 88. 84 2E, 00000080
        inc     esi                                     ; 100193F6 _ 46
        cmp     esi, 5                                  ; 100193F7 _ 83. FE, 05
        jl      ?_2906                                  ; 100193FA _ 7C, D8
        jmp     ?_2909                                  ; 100193FC _ EB, 2A

?_2907: xor     esi, esi                                ; 100193FE _ 33. F6
?_2908: xor     eax, eax                                ; 10019400 _ 33. C0
        mov     al, byte [ebp+164H]                     ; 10019402 _ 8A. 85, 00000164
        lea     ecx, [eax+eax*2]                        ; 10019408 _ 8D. 0C 40
        mov     dl, byte [?_5391+esi+ecx*2]             ; 1001940B _ 8A. 94 4E, 10030BA0(d)
        push    edx                                     ; 10019412 _ 52
        call    ?_2814                                  ; 10019413 _ E8, FFFFF038
        add     esp, 4                                  ; 10019418 _ 83. C4, 04
        mov     byte [esi+ebp+80H], al                  ; 1001941B _ 88. 84 2E, 00000080
        inc     esi                                     ; 10019422 _ 46
        cmp     esi, 5                                  ; 10019423 _ 83. FE, 05
        jl      ?_2908                                  ; 10019426 _ 7C, D8
?_2909: mov     esi, dword [esp+430H]                   ; 10019428 _ 8B. B4 24, 00000430
        cmp     esi, 6                                  ; 1001942F _ 83. FE, 06
        jz      ?_2910                                  ; 10019432 _ 74, 1A
        cmp     esi, 7                                  ; 10019434 _ 83. FE, 07
        jz      ?_2910                                  ; 10019437 _ 74, 15
        xor     eax, eax                                ; 10019439 _ 33. C0
        mov     al, byte [ebp+164H]                     ; 1001943B _ 8A. 85, 00000164
        lea     eax, [eax+eax*2]                        ; 10019441 _ 8D. 04 40
        mov     cl, byte [?_5392+eax*2]                 ; 10019444 _ 8A. 0C 45, 10030BA5(d)
        mov     byte [ebp+0DH], cl                      ; 1001944B _ 88. 4D, 0D
?_2910: mov     edx, dword [esp+438H]                   ; 1001944E _ 8B. 94 24, 00000438
        lea     edi, [ebp+5CH]                          ; 10019455 _ 8D. 7D, 5C
        mov     ecx, 8                                  ; 10019458 _ B9, 00000008
        or      eax, 0FFFFFFFFH                         ; 1001945D _ 83. C8, FF
        rep stosd                                       ; 10019460 _ F3: AB
        mov     dword [ebp+64H], edx                    ; 10019462 _ 89. 55, 64
        mov     edx, dword [esp+18H]                    ; 10019465 _ 8B. 54 24, 18
        test    edx, edx                                ; 10019469 _ 85. D2
        mov     byte [ebp+58H], 1                       ; 1001946B _ C6. 45, 58, 01
        jz      ?_2913                                  ; 1001946F _ 74, 27
        mov     al, byte [edx+58H]                      ; 10019471 _ 8A. 42, 58
        lea     ecx, [edx+68H]                          ; 10019474 _ 8D. 4A, 68
        inc     al                                      ; 10019477 _ FE. C0
        mov     byte [ebp+58H], al                      ; 10019479 _ 88. 45, 58
        mov     eax, 3                                  ; 1001947C _ B8, 00000003
?_2911: cmp     dword [ecx], -1                         ; 10019481 _ 83. 39, FF
        jz      ?_2912                                  ; 10019484 _ 74, 0B
        inc     eax                                     ; 10019486 _ 40
        add     ecx, 4                                  ; 10019487 _ 83. C1, 04
        cmp     eax, 8                                  ; 1001948A _ 83. F8, 08
        jl      ?_2911                                  ; 1001948D _ 7C, F2
        jmp     ?_2913                                  ; 1001948F _ EB, 07

?_2912: mov     ecx, dword [ebp+4H]                     ; 10019491 _ 8B. 4D, 04
        mov     dword [edx+eax*4+5CH], ecx              ; 10019494 _ 89. 4C 82, 5C
?_2913: cmp     esi, 6                                  ; 10019498 _ 83. FE, 06
        jz      ?_2915                                  ; 1001949B _ 74, 28
        cmp     esi, 7                                  ; 1001949D _ 83. FE, 07
        jz      ?_2915                                  ; 100194A0 _ 74, 23
        cmp     esi, 5                                  ; 100194A2 _ 83. FE, 05
        jz      ?_2915                                  ; 100194A5 _ 74, 1E
        cmp     esi, 10                                 ; 100194A7 _ 83. FE, 0A
        jl      ?_2914                                  ; 100194AA _ 7C, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebp+50H], 32767                   ; 100194AC _ 66: C7. 45, 50, 7FFF
        jmp     ?_2918                                  ; 100194B2 _ EB, 52

?_2914: mov     eax, dword [?_5529]                     ; 100194B4 _ A1, 1003542C(d)
        mov     word [ebp+50H], ax                      ; 100194B9 _ 66: 89. 45, 50
        inc     eax                                     ; 100194BD _ 40
        mov     dword [?_5529], eax                     ; 100194BE _ A3, 1003542C(d)
        jmp     ?_2918                                  ; 100194C3 _ EB, 41

?_2915: mov     eax, dword [?_5530]                     ; 100194C5 _ A1, 10035430(d)
        cmp     eax, 16                                 ; 100194CA _ 83. F8, 10
        jl      ?_2917                                  ; 100194CD _ 7C, 28
        push    1                                       ; 100194CF _ 6A, 01
        push    ?_5437                                  ; 100194D1 _ 68, 100315AC(d)
        push    10224                                   ; 100194D6 _ 68, 000027F0
?_2916: push    ?_5397                                  ; 100194DB _ 68, 10031004(d)
        call    ?_0267                                  ; 100194E0 _ E8, FFFEA15B
        add     esp, 16                                 ; 100194E5 _ 83. C4, 10
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        or      ax, 0FFFFH                              ; 100194E8 _ 66: 0D, FFFF
        pop     edi                                     ; 100194EC _ 5F
        pop     esi                                     ; 100194ED _ 5E
        pop     ebp                                     ; 100194EE _ 5D
        pop     ebx                                     ; 100194EF _ 5B
        add     esp, 1052                               ; 100194F0 _ 81. C4, 0000041C
        ret                                             ; 100194F6 _ C3

?_2917: mov     edx, eax                                ; 100194F7 _ 8B. D0
        or      dh, 0FFFFFF80H                          ; 100194F9 _ 80. CE, 80
        inc     eax                                     ; 100194FC _ 40
        mov     word [ebp+50H], dx                      ; 100194FD _ 66: 89. 55, 50
        mov     dword [?_5530], eax                     ; 10019501 _ A3, 10035430(d)
?_2918: mov     dword [ebp+1CH], 1148846080             ; 10019506 _ C7. 45, 1C, 447A0000
        call    ?_3025                                  ; 1001950D _ E8, 00000BFE
        fmul    dword [?_4920]                          ; 10019512 _ D8. 0D, 100256C8(d)
        mov     dword [ebp+20H], 1094713344             ; 10019518 _ C7. 45, 20, 41400000
        fadd    dword [?_4919]                          ; 1001951F _ D8. 05, 100256C4(d)
        fstp    dword [ebp+14H]                         ; 10019525 _ D9. 5D, 14
        fld     dword [ebp+1CH]                         ; 10019528 _ D9. 45, 1C
        fmul    qword [?_4940]                          ; 1001952B _ DC. 0D, 10025810(d)
        call    ?_3298                                  ; 10019531 _ E8, 0000202E
        push    eax                                     ; 10019536 _ 50
        call    ?_3022                                  ; 10019537 _ E8, 00000B94
        and     eax, 0FFFFH                             ; 1001953C _ 25, 0000FFFF
        push    16                                      ; 10019541 _ 6A, 10
        mov     dword [esp+1CH], eax                    ; 10019543 _ 89. 44 24, 1C
        mov     eax, dword [ebp+1CH]                    ; 10019547 _ 8B. 45, 1C
        fild    dword [esp+1CH]                         ; 1001954A _ DB. 44 24, 1C
        fld     dword [ebp+1CH]                         ; 1001954E _ D9. 45, 1C
        fmul    dword [?_4916]                          ; 10019551 _ D8. 0D, 100256B8(d)
        mov     dword [ebp+18H], eax                    ; 10019557 _ 89. 45, 18
        faddp   st1, st(0)                              ; 1001955A _ DE. C1
        fld     dword [ebp+1CH]                         ; 1001955C _ D9. 45, 1C
        fmul    dword [?_4915]                          ; 1001955F _ D8. 0D, 100256B4(d)
        fsubp   st1, st(0)                              ; 10019565 _ DE. E9
        fstp    dword [ebp+10H]                         ; 10019567 _ D9. 5D, 10
        call    ?_3022                                  ; 1001956A _ E8, 00000B61
        add     esp, 8                                  ; 1001956F _ 83. C4, 08
?_2919: push    16                                      ; 10019572 _ 6A, 10
        call    ?_3022                                  ; 10019574 _ E8, 00000B57
        xor     ecx, ecx                                ; 10019579 _ 33. C9
        add     esp, 4                                  ; 1001957B _ 83. C4, 04
        mov     cx, word [ebp+0AH]                      ; 1001957E _ 66: 8B. 4D, 0A
        mov     dword [esp+14H], ecx                    ; 10019582 _ 89. 4C 24, 14
        fild    dword [esp+14H]                         ; 10019586 _ DB. 44 24, 14
        fst     dword [esp+24H]                         ; 1001958A _ D9. 54 24, 24
        fcomp   dword [ebp+20H]                         ; 1001958E _ D8. 5D, 20
        fnstsw  ax                                      ; 10019591 _ DF. E0
        test    ah, 41H                                 ; 10019593 _ F6. C4, 41
        jnz     ?_2923                                  ; 10019596 _ 75, 43
        fld     dword [ebp+1CH]                         ; 10019598 _ D9. 45, 1C
        fld     dword [esp+24H]                         ; 1001959B _ D9. 44 24, 24
        fsub    dword [ebp+20H]                         ; 1001959F _ D8. 65, 20
        mov     edx, dword [ebp+14H]                    ; 100195A2 _ 8B. 55, 14
        mov     dword [esp+10H], edx                    ; 100195A5 _ 89. 54 24, 10
        call    ?_3298                                  ; 100195A9 _ E8, 00001FB6
        test    eax, eax                                ; 100195AE _ 85. C0
        jle     ?_2921                                  ; 100195B0 _ 7E, 11
?_2920: fld     dword [esp+10H]                         ; 100195B2 _ D9. 44 24, 10
        fdiv    st(0), st1                              ; 100195B6 _ D8. F1
        fxch    st1                                     ; 100195B8 _ D9. C9
        dec     eax                                     ; 100195BA _ 48
        fsub    dword [esp+10H]                         ; 100195BB _ D8. 64 24, 10
        faddp   st1, st(0)                              ; 100195BF _ DE. C1
        jnz     ?_2920                                  ; 100195C1 _ 75, EF
?_2921: fcom    dword [?_4910]                          ; 100195C3 _ D8. 15, 100256A0(d)
        fnstsw  ax                                      ; 100195C9 _ DF. E0
        test    ah, 41H                                 ; 100195CB _ F6. C4, 41
        jz      ?_2922                                  ; 100195CE _ 74, 08
        fstp    st0                                     ; 100195D0 _ DD. D8
        fld     dword [?_4910]                          ; 100195D2 _ D9. 05, 100256A0(d)
?_2922: fstp    dword [ebp+1CH]                         ; 100195D8 _ D9. 5D, 1C
?_2923: lea     ecx, [ebp+1B4H]                         ; 100195DB _ 8D. 8D, 000001B4
        xor     eax, eax                                ; 100195E1 _ 33. C0
        push    ebp                                     ; 100195E3 _ 55
        mov     dword [ecx], eax                        ; 100195E4 _ 89. 01
        mov     dword [ecx+4H], eax                     ; 100195E6 _ 89. 41, 04
        mov     dword [ecx+8H], eax                     ; 100195E9 _ 89. 41, 08
        mov     dword [ecx+0CH], eax                    ; 100195EC _ 89. 41, 0C
        call    ?_1265                                  ; 100195EF _ E8, FFFF275C
        mov     al, byte [ebp+2H]                       ; 100195F4 _ 8A. 45, 02
        add     esp, 4                                  ; 100195F7 _ 83. C4, 04
        cmp     al, 3                                   ; 100195FA _ 3C, 03
        jz      ?_2924                                  ; 100195FC _ 74, 0C
        cmp     al, 4                                   ; 100195FE _ 3C, 04
        jz      ?_2924                                  ; 10019600 _ 74, 08
        cmp     al, 2                                   ; 10019602 _ 3C, 02
        jz      ?_2924                                  ; 10019604 _ 74, 04
        cmp     al, 19                                  ; 10019606 _ 3C, 13
        jnz     ?_2925                                  ; 10019608 _ 75, 22
?_2924: push    3                                       ; 1001960A _ 6A, 03
        call    ?_3022                                  ; 1001960C _ E8, 00000ABF
        and     eax, 0FFFFH                             ; 10019611 _ 25, 0000FFFF
        add     esp, 4                                  ; 10019616 _ 83. C4, 04
        mov     cl, byte [eax+ebp+82H]                  ; 10019619 _ 8A. 8C 28, 00000082
        lea     eax, [eax+ebp+82H]                      ; 10019620 _ 8D. 84 28, 00000082
        add     cl, 42                                  ; 10019627 _ 80. C1, 2A
        mov     byte [eax], cl                          ; 1001962A _ 88. 08
?_2925: mov     esi, dword [esp+1CH]                    ; 1001962C _ 8B. 74 24, 1C
        cmp     esi, 65535                              ; 10019630 _ 81. FE, 0000FFFF
        jnz     ?_2926                                  ; 10019636 _ 75, 19
        push    1                                       ; 10019638 _ 6A, 01
        push    ?_5436                                  ; 1001963A _ 68, 10031594(d)
        push    10348                                   ; 1001963F _ 68, 0000286C
        push    ?_5397                                  ; 10019644 _ 68, 10031004(d)
        call    ?_0267                                  ; 10019649 _ E8, FFFE9FF2
        add     esp, 16                                 ; 1001964E _ 83. C4, 10
?_2926: mov     edx, dword [?_5380]                     ; 10019651 _ 8B. 15, 10030B6C(d)
        add     ebp, 48                                 ; 10019657 _ 83. C5, 30
        push    ebp                                     ; 1001965A _ 55
        push    edx                                     ; 1001965B _ 52
        lea     eax, [esp+34H]                          ; 1001965C _ 8D. 44 24, 34
        push    ?_5435                                  ; 10019660 _ 68, 10031570(d)
        push    eax                                     ; 10019665 _ 50
        call    ?_3039                                  ; 10019666 _ E8, 00000C2E
        lea     ecx, [esp+3CH]                          ; 1001966B _ 8D. 4C 24, 3C
        push    8                                       ; 1001966F _ 6A, 08
        push    ecx                                     ; 10019671 _ 51
        push    10376                                   ; 10019672 _ 68, 00002888
        push    ?_5397                                  ; 10019677 _ 68, 10031004(d)
        call    ?_0267                                  ; 1001967C _ E8, FFFE9FBF
        add     esp, 32                                 ; 10019681 _ 83. C4, 20
        mov     ax, si                                  ; 10019684 _ 66: 8B. C6
        pop     edi                                     ; 10019687 _ 5F
        pop     esi                                     ; 10019688 _ 5E
        pop     ebp                                     ; 10019689 _ 5D
        pop     ebx                                     ; 1001968A _ 5B
        add     esp, 1052                               ; 1001968B _ 81. C4, 0000041C
        ret                                             ; 10019691 _ C3

?_2927: mov     edx, dword [esp+434H]                   ; 10019692 _ 8B. 94 24, 00000434
        push    ebp                                     ; 10019699 _ 55
        push    edi                                     ; 1001969A _ 57
        and     eax, 0FFH                               ; 1001969B _ 25, 000000FF
        push    edx                                     ; 100196A0 _ 52
        push    eax                                     ; 100196A1 _ 50
        call    ?_2079                                  ; 100196A2 _ E8, FFFF8C39
        add     esp, 16                                 ; 100196A7 _ 83. C4, 10
?_2928: mov     ax, word [ebp]                          ; 100196AA _ 66: 8B. 45, 00
        pop     edi                                     ; 100196AE _ 5F
        pop     esi                                     ; 100196AF _ 5E
        pop     ebp                                     ; 100196B0 _ 5D
        pop     ebx                                     ; 100196B1 _ 5B
        add     esp, 1052                               ; 100196B2 _ 81. C4, 0000041C
        ret                                             ; 100196B8 _ C3

        nop                                             ; 100196B9 _ 90
        nop                                             ; 100196BA _ 90
        nop                                             ; 100196BB _ 90
        nop                                             ; 100196BC _ 90
        nop                                             ; 100196BD _ 90
        nop                                             ; 100196BE _ 90
        nop                                             ; 100196BF _ 90

