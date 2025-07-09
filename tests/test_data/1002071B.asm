; ---- 1002071B ----
?_4263: ; Local function
        inc     dword [?_5577]                          ; 1002071B _ FF. 05, 10035510(d)
        push    4096                                    ; 10020721 _ 68, 00001000
        call    ?_3109                                  ; 10020726 _ E8, FFFFA0CC
        pop     ecx                                     ; 1002072B _ 59
        mov     ecx, dword [esp+4H]                     ; 1002072C _ 8B. 4C 24, 04
        test    eax, eax                                ; 10020730 _ 85. C0
        mov     dword [ecx+8H], eax                     ; 10020732 _ 89. 41, 08
        jz      ?_4264                                  ; 10020735 _ 74, 0D
        or      dword [ecx+0CH], 08H                    ; 10020737 _ 83. 49, 0C, 08
        mov     dword [ecx+18H], 4096                   ; 1002073B _ C7. 41, 18, 00001000
        jmp     ?_4265                                  ; 10020742 _ EB, 11

?_4264: or      dword [ecx+0CH], 04H                    ; 10020744 _ 83. 49, 0C, 04
        lea     eax, [ecx+14H]                          ; 10020748 _ 8D. 41, 14
        mov     dword [ecx+8H], eax                     ; 1002074B _ 89. 41, 08
        mov     dword [ecx+18H], 2                      ; 1002074E _ C7. 41, 18, 00000002
?_4265: mov     eax, dword [ecx+8H]                     ; 10020755 _ 8B. 41, 08
        and     dword [ecx+4H], 00H                     ; 10020758 _ 83. 61, 04, 00
        mov     dword [ecx], eax                        ; 1002075C _ 89. 01
        ret                                             ; 1002075E _ C3
