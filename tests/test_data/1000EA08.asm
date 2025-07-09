; ---- 1000EA08 ----
?_1639: ; Local function
        mov     al, byte [edi+14H]                      ; 1000EA08 _ 8A. 47, 14
        push    ebx                                     ; 1000EA0B _ 53
        xor     ebx, ebx                                ; 1000EA0C _ 33. DB
        lea     edx, [edi+15H]                          ; 1000EA0E _ 8D. 57, 15
        test    al, al                                  ; 1000EA11 _ 84. C0
        jbe     ?_1645                                  ; 1000EA13 _ 76, 71
        push    esi                                     ; 1000EA15 _ 56
?_1640: xor     eax, eax                                ; 1000EA16 _ 33. C0
        mov     al, byte [edx]                          ; 1000EA18 _ 8A. 02
        inc     edx                                     ; 1000EA1A _ 42
        fld     dword [edx]                             ; 1000EA1B _ D9. 02
        lea     ecx, [eax+eax*2+24H]                    ; 1000EA1D _ 8D. 4C 40, 24
        mov     eax, dword [esp+10H]                    ; 1000EA21 _ 8B. 44 24, 10
        shl     ecx, 2                                  ; 1000EA25 _ C1. E1, 02
        add     edx, 4                                  ; 1000EA28 _ 83. C2, 04
        fadd    dword [ecx+eax]                         ; 1000EA2B _ D8. 04 01
        fstp    dword [ecx+eax]                         ; 1000EA2E _ D9. 1C 01
        mov     esi, dword [esp+10H]                    ; 1000EA31 _ 8B. 74 24, 10
        fld     dword [ecx+esi]                         ; 1000EA35 _ D9. 04 31
        fcomp   qword [?_4909]                          ; 1000EA38 _ DC. 1D, 10025698(d)
        fnstsw  ax                                      ; 1000EA3E _ DF. E0
        test    ah, 01H                                 ; 1000EA40 _ F6. C4, 01
        jnz     ?_1641                                  ; 1000EA43 _ 75, 10
        fld     dword [ecx+esi]                         ; 1000EA45 _ D9. 04 31
        fcomp   qword [?_4908]                          ; 1000EA48 _ DC. 1D, 10025690(d)
        fnstsw  ax                                      ; 1000EA4E _ DF. E0
        test    ah, 01H                                 ; 1000EA50 _ F6. C4, 01
        jz      ?_1643                                  ; 1000EA53 _ 74, 1D
?_1641: fld     dword [ecx+esi]                         ; 1000EA55 _ D9. 04 31
        fcomp   qword [?_4909]                          ; 1000EA58 _ DC. 1D, 10025698(d)
        fnstsw  ax                                      ; 1000EA5E _ DF. E0
        test    ah, 01H                                 ; 1000EA60 _ F6. C4, 01
        jz      ?_1642                                  ; 1000EA63 _ 74, 08
        fld     qword [?_4909]                          ; 1000EA65 _ DD. 05, 10025698(d)
        jmp     ?_1644                                  ; 1000EA6B _ EB, 0B

?_1642: fld     dword [ecx+esi]                         ; 1000EA6D _ D9. 04 31
        jmp     ?_1644                                  ; 1000EA70 _ EB, 06

?_1643: fld     qword [?_4908]                          ; 1000EA72 _ DD. 05, 10025690(d)
?_1644: fstp    dword [ecx+esi]                         ; 1000EA78 _ D9. 1C 31
        xor     eax, eax                                ; 1000EA7B _ 33. C0
        inc     ebx                                     ; 1000EA7D _ 43
        mov     al, byte [edi+14H]                      ; 1000EA7E _ 8A. 47, 14
        cmp     ebx, eax                                ; 1000EA81 _ 3B. D8
        jc      ?_1640                                  ; 1000EA83 _ 72, 91
        pop     esi                                     ; 1000EA85 _ 5E
?_1645: mov     eax, dword [esp+10H]                    ; 1000EA86 _ 8B. 44 24, 10
        pop     ebx                                     ; 1000EA8A _ 5B
        test    eax, eax                                ; 1000EA8B _ 85. C0
        jz      ?_1646                                  ; 1000EA8D _ 74, 03
        mov     byte [eax], 1                           ; 1000EA8F _ C6. 00, 01
?_1646: xor     eax, eax                                ; 1000EA92 _ 33. C0
        pop     edi                                     ; 1000EA94 _ 5F
        ret                                             ; 1000EA95 _ C3

        nop                                             ; 1000EA96 _ 90
        nop                                             ; 1000EA97 _ 90
        nop                                             ; 1000EA98 _ 90
        nop                                             ; 1000EA99 _ 90
        nop                                             ; 1000EA9A _ 90
        nop                                             ; 1000EA9B _ 90
        nop                                             ; 1000EA9C _ 90
        nop                                             ; 1000EA9D _ 90
        nop                                             ; 1000EA9E _ 90
        nop                                             ; 1000EA9F _ 90
