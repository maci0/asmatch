; ---- 10022340 ----
?_4605: ; Local function
        cmp     dword [?_5817], 0                       ; 10022340 _ 83. 3D, 1176758C(d), 00
        push    ebx                                     ; 10022347 _ 53
        push    esi                                     ; 10022348 _ 56
        mov     esi, dword [?_5565]                     ; 10022349 _ 8B. 35, 100354D0(d)
        push    edi                                     ; 1002234F _ 57
        jz      ?_4610                                  ; 10022350 _ 74, 65
        test    esi, esi                                ; 10022352 _ 85. F6
        jnz     ?_4606                                  ; 10022354 _ 75, 1B
        cmp     dword [?_5567], esi                     ; 10022356 _ 39. 35, 100354D8(d)
        jz      ?_4610                                  ; 1002235C _ 74, 59
        call    ?_4776                                  ; 1002235E _ E8, 00000C20
        test    eax, eax                                ; 10022363 _ 85. C0
        jnz     ?_4610                                  ; 10022365 _ 75, 50
        mov     esi, dword [?_5565]                     ; 10022367 _ 8B. 35, 100354D0(d)
        test    esi, esi                                ; 1002236D _ 85. F6
        jz      ?_4610                                  ; 1002236F _ 74, 46
?_4606: mov     ebx, dword [esp+10H]                    ; 10022371 _ 8B. 5C 24, 10
        test    ebx, ebx                                ; 10022375 _ 85. DB
        jz      ?_4610                                  ; 10022377 _ 74, 3E
        push    ebx                                     ; 10022379 _ 53
        call    ?_3393                                  ; 1002237A _ E8, FFFF9A51
        pop     ecx                                     ; 1002237F _ 59
        mov     edi, eax                                ; 10022380 _ 8B. F8
?_4607: mov     eax, dword [esi]                        ; 10022382 _ 8B. 06
        test    eax, eax                                ; 10022384 _ 85. C0
        jz      ?_4610                                  ; 10022386 _ 74, 2F
        push    eax                                     ; 10022388 _ 50
        call    ?_3393                                  ; 10022389 _ E8, FFFF9A42
        cmp     eax, edi                                ; 1002238E _ 3B. C7
        pop     ecx                                     ; 10022390 _ 59
        jbe     ?_4608                                  ; 10022391 _ 76, 17
        mov     eax, dword [esi]                        ; 10022393 _ 8B. 06
        cmp     byte [eax+edi], 61                      ; 10022395 _ 80. 3C 38, 3D
        jnz     ?_4608                                  ; 10022399 _ 75, 0F
        push    edi                                     ; 1002239B _ 57
        push    ebx                                     ; 1002239C _ 53
        push    eax                                     ; 1002239D _ 50
        call    ?_4773                                  ; 1002239E _ E8, 00000BA1
        add     esp, 12                                 ; 100223A3 _ 83. C4, 0C
        test    eax, eax                                ; 100223A6 _ 85. C0
        jz      ?_4609                                  ; 100223A8 _ 74, 05
?_4608: add     esi, 4                                  ; 100223AA _ 83. C6, 04
        jmp     ?_4607                                  ; 100223AD _ EB, D3

?_4609: mov     eax, dword [esi]                        ; 100223AF _ 8B. 06
        lea     eax, [eax+edi+1H]                       ; 100223B1 _ 8D. 44 38, 01
        jmp     ?_4611                                  ; 100223B5 _ EB, 02

?_4610: xor     eax, eax                                ; 100223B7 _ 33. C0
?_4611: pop     edi                                     ; 100223B9 _ 5F
        pop     esi                                     ; 100223BA _ 5E
        pop     ebx                                     ; 100223BB _ 5B
        ret                                             ; 100223BC _ C3

