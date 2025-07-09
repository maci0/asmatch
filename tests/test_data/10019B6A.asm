; ---- 10019B6A ----
?_2961: ; Local function
; Note: Zero displacement could be omitted
        mov     eax, dword [esp]                        ; 10019B6A _ 8B. 44 24, 00
        test    eax, eax                                ; 10019B6E _ 85. C0
        jz      ?_2962                                  ; 10019B70 _ 74, 06
        mov     ax, word [eax+27H]                      ; 10019B72 _ 66: 8B. 40, 27
        pop     ecx                                     ; 10019B76 _ 59
        ret                                             ; 10019B77 _ C3
