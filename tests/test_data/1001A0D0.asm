; ---- 1001A0D0 ----
?_3022: ; Local function
        push    esi                                     ; 1001A0D0 _ 56
        mov     esi, dword [esp+8H]                     ; 1001A0D1 _ 8B. 74 24, 08
        test    si, si                                  ; 1001A0D5 _ 66: 85. F6
        jz      ?_3023                                  ; 1001A0D8 _ 74, 12
        call    ?_3297                                  ; 1001A0DA _ E8, 00001463
        cdq                                             ; 1001A0DF _ 99
        and     esi, 0FFFFH                             ; 1001A0E0 _ 81. E6, 0000FFFF
        idiv    esi                                     ; 1001A0E6 _ F7. FE
        pop     esi                                     ; 1001A0E8 _ 5E
        mov     eax, edx                                ; 1001A0E9 _ 8B. C2
        ret                                             ; 1001A0EB _ C3
