; ---- 1000F2F0 ----
?_1727: ; Local function
        mov     eax, dword [?_5380]                     ; 1000F2F0 _ A1, 10030B6C(d)
        push    esi                                     ; 1000F2F5 _ 56
        push    edi                                     ; 1000F2F6 _ 57
        mov     edi, dword [esp+0CH]                    ; 1000F2F7 _ 8B. 7C 24, 0C
        mov     ecx, dword [edi+14H]                    ; 1000F2FB _ 8B. 4F, 14
        mov     dword [edi+10H], eax                    ; 1000F2FE _ 89. 47, 10
        push    ecx                                     ; 1000F301 _ 51
        push    edi                                     ; 1000F302 _ 57
        call    ?_1389                                  ; 1000F303 _ E8, FFFFD788
        push    1                                       ; 1000F308 _ 6A, 01
        push    437                                     ; 1000F30A _ 68, 000001B5
        push    eax                                     ; 1000F30F _ 50
        mov     dword [edi+14H], eax                    ; 1000F310 _ 89. 47, 14
        call    ?_2524                                  ; 1000F313 _ E8, 00007448
        mov     esi, eax                                ; 1000F318 _ 8B. F0
        add     esp, 20                                 ; 1000F31A _ 83. C4, 14
        test    esi, esi                                ; 1000F31D _ 85. F6
        jnz     ?_1728                                  ; 1000F31F _ 75, 08
        pop     edi                                     ; 1000F321 _ 5F
        mov     eax, 1                                  ; 1000F322 _ B8, 00000001
        pop     esi                                     ; 1000F327 _ 5E
        ret                                             ; 1000F328 _ C3
