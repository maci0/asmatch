; ---- 10016626 ----
?_2507: ; Local function
        mov     ecx, dword [esi+14H]                    ; 10016626 _ 8B. 4E, 14
        lea     eax, [esi+14H]                          ; 10016629 _ 8D. 46, 14
        test    ecx, ecx                                ; 1001662C _ 85. C9
        jz      ?_2508                                  ; 1001662E _ 74, 09
        push    eax                                     ; 10016630 _ 50
        call    ?_2520                                  ; 10016631 _ E8, 000000DA
        add     esp, 4                                  ; 10016636 _ 83. C4, 04
?_2508: push    esi                                     ; 10016639 _ 56
        call    ?_2511                                  ; 1001663A _ E8, 00000031
        add     esp, 4                                  ; 1001663F _ 83. C4, 04
        test    edi, edi                                ; 10016642 _ 85. FF
        jnz     ?_2509                                  ; 10016644 _ 75, 08
        mov     edx, dword [esi+3FH]                    ; 10016646 _ 8B. 56, 3F
        mov     dword [ebp], edx                        ; 10016649 _ 89. 55, 00
        jmp     ?_2510                                  ; 1001664C _ EB, 06

?_2509: mov     eax, dword [esi+3FH]                    ; 1001664E _ 8B. 46, 3F
        mov     dword [ebx+3FH], eax                    ; 10016651 _ 89. 43, 3F
?_2510:
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi], 0                           ; 10016654 _ 66: C7. 06, 0000
        mov     eax, dword [?_5539]                     ; 10016659 _ A1, 10035450(d)
        dec     eax                                     ; 1001665E _ 48
        pop     edi                                     ; 1001665F _ 5F
        pop     esi                                     ; 10016660 _ 5E
        mov     dword [?_5539], eax                     ; 10016661 _ A3, 10035450(d)
        pop     ebp                                     ; 10016666 _ 5D
        xor     eax, eax                                ; 10016667 _ 33. C0
        pop     ebx                                     ; 10016669 _ 5B
        ret                                             ; 1001666A _ C3

        nop                                             ; 1001666B _ 90
        nop                                             ; 1001666C _ 90
        nop                                             ; 1001666D _ 90
        nop                                             ; 1001666E _ 90
        nop                                             ; 1001666F _ 90
