; ---- 1001A18A ----
?_3029: ; Local function
        push    esi                                     ; 1001A18A _ 56
        mov     esi, dword [esp+8H]                     ; 1001A18B _ 8B. 74 24, 08
        push    edi                                     ; 1001A18F _ 57
        or      edi, 0FFFFFFFFH                         ; 1001A190 _ 83. CF, FF
        test    byte [esi+0CH], 40H                     ; 1001A193 _ F6. 46, 0C, 40
        jz      ?_3030                                  ; 1001A197 _ 74, 06
        and     dword [esi+0CH], 00H                    ; 1001A199 _ 83. 66, 0C, 00
        jmp     ?_3031                                  ; 1001A19D _ EB, 17

?_3030: push    esi                                     ; 1001A19F _ 56
        call    ?_3366                                  ; 1001A1A0 _ E8, 000019BB
        push    esi                                     ; 1001A1A5 _ 56
        call    ?_3032                                  ; 1001A1A6 _ E8, 00000010
        push    esi                                     ; 1001A1AB _ 56
        mov     edi, eax                                ; 1001A1AC _ 8B. F8
        call    ?_3370                                  ; 1001A1AE _ E8, 000019FF
        add     esp, 12                                 ; 1001A1B3 _ 83. C4, 0C
?_3031: mov     eax, edi                                ; 1001A1B6 _ 8B. C7
        pop     edi                                     ; 1001A1B8 _ 5F
        pop     esi                                     ; 1001A1B9 _ 5E
        ret                                             ; 1001A1BA _ C3

