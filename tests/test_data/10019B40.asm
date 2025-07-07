; ---- 10019B40 ----
?_2960: ; Local function
        push    ecx                                     ; 10019B40 _ 51
        mov     eax, dword [esp+8H]                     ; 10019B41 _ 8B. 44 24, 08
        lea     edx, [esp+8H]                           ; 10019B45 _ 8D. 54 24, 08
        mov     ecx, dword [eax+0AH]                    ; 10019B49 _ 8B. 48, 0A
; Note: Zero displacement could be omitted
        lea     eax, [esp]                              ; 10019B4C _ 8D. 44 24, 00
        push    ecx                                     ; 10019B50 _ 51
        push    edx                                     ; 10019B51 _ 52
        push    0                                       ; 10019B52 _ 6A, 00
        push    eax                                     ; 10019B54 _ 50
        call    ?_2425                                  ; 10019B55 _ E8, FFFFC336
        mov     eax, dword [esp+18H]                    ; 10019B5A _ 8B. 44 24, 18
        add     esp, 16                                 ; 10019B5E _ 83. C4, 10
        test    eax, eax                                ; 10019B61 _ 85. C0
        jz      ?_2961                                  ; 10019B63 _ 74, 05
        mov     ax, word [eax]                          ; 10019B65 _ 66: 8B. 00
        pop     ecx                                     ; 10019B68 _ 59
        ret                                             ; 10019B69 _ C3

