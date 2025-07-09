; ---- 10003DBF ----
?_0343: ; Local function
        mov     ecx, dword [edi+28H]                    ; 10003DBF _ 8B. 4F, 28
        push    1440                                    ; 10003DC2 _ 68, 000005A0
        push    8                                       ; 10003DC7 _ 6A, 08
        push    ecx                                     ; 10003DC9 _ 51
        call    near [edi+20H]                          ; 10003DCA _ FF. 57, 20
        add     esp, 12                                 ; 10003DCD _ 83. C4, 0C
        mov     dword [esi+24H], eax                    ; 10003DD0 _ 89. 46, 24
        test    eax, eax                                ; 10003DD3 _ 85. C0
        jnz     ?_0344                                  ; 10003DD5 _ 75, 11
        mov     edx, dword [edi+28H]                    ; 10003DD7 _ 8B. 57, 28
        push    esi                                     ; 10003DDA _ 56
        push    edx                                     ; 10003DDB _ 52
        call    near [edi+24H]                          ; 10003DDC _ FF. 57, 24
        add     esp, 8                                  ; 10003DDF _ 83. C4, 08
        xor     eax, eax                                ; 10003DE2 _ 33. C0
        pop     edi                                     ; 10003DE4 _ 5F
        pop     esi                                     ; 10003DE5 _ 5E
        pop     ebx                                     ; 10003DE6 _ 5B
        ret                                             ; 10003DE7 _ C3
