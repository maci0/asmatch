; ---- 10014FF0 ----
?_2322: ; Local function
        push    ecx                                     ; 10014FF0 _ 51
        mov     eax, dword [esp+8H]                     ; 10014FF1 _ 8B. 44 24, 08
        push    ebx                                     ; 10014FF5 _ 53
        push    ebp                                     ; 10014FF6 _ 55
        push    esi                                     ; 10014FF7 _ 56
        xor     esi, esi                                ; 10014FF8 _ 33. F6
        xor     ecx, ecx                                ; 10014FFA _ 33. C9
        add     eax, 8                                  ; 10014FFC _ 83. C0, 08
        push    edi                                     ; 10014FFF _ 57
        or      dl, 0FFFFFFFFH                          ; 10015000 _ 80. CA, FF
?_2323: cmp     byte [eax+5H], dl                       ; 10015003 _ 38. 50, 05
        jnz     ?_2324                                  ; 10015006 _ 75, 07
        mov     esi, 1                                  ; 10015008 _ BE, 00000001
        jmp     ?_2325                                  ; 1001500D _ EB, 19

?_2324: mov     edi, dword [esp+1CH]                    ; 1001500F _ 8B. 7C 24, 1C
        xor     ebx, ebx                                ; 10015013 _ 33. DB
        mov     bl, byte [eax]                          ; 10015015 _ 8A. 18
        cmp     ebx, edi                                ; 10015017 _ 3B. DF
        jnz     ?_2325                                  ; 10015019 _ 75, 0D
        mov     edi, dword [esp+20H]                    ; 1001501B _ 8B. 7C 24, 20
        xor     ebx, ebx                                ; 1001501F _ 33. DB
        mov     bl, byte [eax+1H]                       ; 10015021 _ 8A. 58, 01
        cmp     ebx, edi                                ; 10015024 _ 3B. DF
        jz      ?_2326                                  ; 10015026 _ 74, 0D
?_2325: inc     ecx                                     ; 10015028 _ 41
        add     eax, 24                                 ; 10015029 _ 83. C0, 18
        cmp     ecx, 64                                 ; 1001502C _ 83. F9, 40
        jl      ?_2323                                  ; 1001502F _ 7C, D2
        test    esi, esi                                ; 10015031 _ 85. F6
        jnz     ?_2327                                  ; 10015033 _ 75, 08
?_2326: pop     edi                                     ; 10015035 _ 5F
        pop     esi                                     ; 10015036 _ 5E
        pop     ebp                                     ; 10015037 _ 5D
        xor     eax, eax                                ; 10015038 _ 33. C0
        pop     ebx                                     ; 1001503A _ 5B
        pop     ecx                                     ; 1001503B _ 59
        ret                                             ; 1001503C _ C3

