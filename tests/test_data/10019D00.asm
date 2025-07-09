; ---- 10019D00 ----
?_2980: ; Local function
        mov     eax, dword [esp+4H]                     ; 10019D00 _ 8B. 44 24, 04
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], 477                         ; 10019D04 _ 66: 81. 38, 01DD
        mov     eax, dword [eax+0EH]                    ; 10019D09 _ 8B. 40, 0E
        jnz     ?_2981                                  ; 10019D0C _ 75, 07
        add     eax, 2                                  ; 10019D0E _ 83. C0, 02
        lea     eax, [eax+eax*4]                        ; 10019D11 _ 8D. 04 80
        ret                                             ; 10019D14 _ C3
