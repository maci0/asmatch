; ---- 100222EB ----
?_4597: ; Local function
        movzx   esi, byte [edi]                         ; 100222EB _ 0F B6. 37
        inc     edi                                     ; 100222EE _ 47
        cmp     esi, 45                                 ; 100222EF _ 83. FE, 2D
        mov     ebp, esi                                ; 100222F2 _ 8B. EE
        jz      ?_4598                                  ; 100222F4 _ 74, 05
        cmp     esi, 43                                 ; 100222F6 _ 83. FE, 2B
        jnz     ?_4599                                  ; 100222F9 _ 75, 04
?_4598: movzx   esi, byte [edi]                         ; 100222FB _ 0F B6. 37
        inc     edi                                     ; 100222FE _ 47
?_4599: xor     ebx, ebx                                ; 100222FF _ 33. DB
?_4600: cmp     dword [?_5477], 1                       ; 10022301 _ 83. 3D, 10033EE0(d), 01
        jle     ?_4601                                  ; 10022308 _ 7E, 0C
        push    4                                       ; 1002230A _ 6A, 04
        push    esi                                     ; 1002230C _ 56
        call    ?_4068                                  ; 1002230D _ E8, FFFFD543
        pop     ecx                                     ; 10022312 _ 59
        pop     ecx                                     ; 10022313 _ 59
        jmp     ?_4602                                  ; 10022314 _ EB, 0B

?_4601: mov     eax, dword [?_5475]                     ; 10022316 _ A1, 10033CD4(d)
        mov     al, byte [eax+esi*2]                    ; 1002231B _ 8A. 04 70
        and     eax, 04H                                ; 1002231E _ 83. E0, 04
?_4602: test    eax, eax                                ; 10022321 _ 85. C0
        jz      ?_4603                                  ; 10022323 _ 74, 0D
        lea     eax, [ebx+ebx*4]                        ; 10022325 _ 8D. 04 9B
        lea     ebx, [esi+eax*2-30H]                    ; 10022328 _ 8D. 5C 46, D0
        movzx   esi, byte [edi]                         ; 1002232C _ 0F B6. 37
        inc     edi                                     ; 1002232F _ 47
        jmp     ?_4600                                  ; 10022330 _ EB, CF

