; ---- 10021924 ----
?_4481: ; Local function
        push    ebp                                     ; 10021924 _ 55
        mov     ebp, esp                                ; 10021925 _ 8B. EC
        mov     edx, dword [ebp+10H]                    ; 10021927 _ 8B. 55, 10
        push    ebx                                     ; 1002192A _ 53
        mov     ebx, dword [ebp+0CH]                    ; 1002192B _ 8B. 5D, 0C
        push    esi                                     ; 1002192E _ 56
        mov     esi, dword [ebp+8H]                     ; 1002192F _ 8B. 75, 08
        mov     ecx, dword [edx+0CH]                    ; 10021932 _ 8B. 4A, 0C
        push    edi                                     ; 10021935 _ 57
        lea     edi, [esi+1H]                           ; 10021936 _ 8D. 7E, 01
        mov     byte [esi], 48                          ; 10021939 _ C6. 06, 30
        test    ebx, ebx                                ; 1002193C _ 85. DB
        mov     eax, edi                                ; 1002193E _ 8B. C7
        jle     ?_4485                                  ; 10021940 _ 7E, 1F
        mov     dword [ebp+8H], ebx                     ; 10021942 _ 89. 5D, 08
        xor     ebx, ebx                                ; 10021945 _ 33. DB
?_4482: mov     dl, byte [ecx]                          ; 10021947 _ 8A. 11
        test    dl, dl                                  ; 10021949 _ 84. D2
        jz      ?_4483                                  ; 1002194B _ 74, 06
        movsx   edx, dl                                 ; 1002194D _ 0F BE. D2
        inc     ecx                                     ; 10021950 _ 41
        jmp     ?_4484                                  ; 10021951 _ EB, 03

?_4483: push    48                                      ; 10021953 _ 6A, 30
        pop     edx                                     ; 10021955 _ 5A
?_4484: mov     byte [eax], dl                          ; 10021956 _ 88. 10
        inc     eax                                     ; 10021958 _ 40
        dec     dword [ebp+8H]                          ; 10021959 _ FF. 4D, 08
        jnz     ?_4482                                  ; 1002195C _ 75, E9
        mov     edx, dword [ebp+10H]                    ; 1002195E _ 8B. 55, 10
?_4485: and     byte [eax], 00H                         ; 10021961 _ 80. 20, 00
        test    ebx, ebx                                ; 10021964 _ 85. DB
        jl      ?_4488                                  ; 10021966 _ 7C, 12
        cmp     byte [ecx], 53                          ; 10021968 _ 80. 39, 35
        jl      ?_4488                                  ; 1002196B _ 7C, 0D
?_4486: dec     eax                                     ; 1002196D _ 48
        cmp     byte [eax], 57                          ; 1002196E _ 80. 38, 39
        jnz     ?_4487                                  ; 10021971 _ 75, 05
        mov     byte [eax], 48                          ; 10021973 _ C6. 00, 30
        jmp     ?_4486                                  ; 10021976 _ EB, F5

?_4487: inc     byte [eax]                              ; 10021978 _ FE. 00
?_4488: cmp     byte [esi], 49                          ; 1002197A _ 80. 3E, 31
        jnz     ?_4489                                  ; 1002197D _ 75, 05
        inc     dword [edx+4H]                          ; 1002197F _ FF. 42, 04
        jmp     ?_4490                                  ; 10021982 _ EB, 12

?_4489: push    edi                                     ; 10021984 _ 57
        call    ?_3393                                  ; 10021985 _ E8, FFFFA446
        inc     eax                                     ; 1002198A _ 40
        push    eax                                     ; 1002198B _ 50
        push    edi                                     ; 1002198C _ 57
        push    esi                                     ; 1002198D _ 56
        call    ?_3251                                  ; 1002198E _ E8, FFFF986D
        add     esp, 16                                 ; 10021993 _ 83. C4, 10
?_4490: pop     edi                                     ; 10021996 _ 5F
        pop     esi                                     ; 10021997 _ 5E
        pop     ebx                                     ; 10021998 _ 5B
        pop     ebp                                     ; 10021999 _ 5D
        ret                                             ; 1002199A _ C3
