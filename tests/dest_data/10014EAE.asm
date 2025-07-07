; ---- 10014EAE ----
?_2308: ; Local function
        mov     eax, 1                                  ; 10014EAE _ B8, 00000001
        pop     esi                                     ; 10014EB3 _ 5E
        add     esp, 128                                ; 10014EB4 _ 81. C4, 00000080
        ret                                             ; 10014EBA _ C3

        nop                                             ; 10014EBB _ 90

?_2309:                                                 ; switch/case jump table
        dd ?_2301                                       ; 10014EBC _ 10014DFF (d)
        dd ?_2302                                       ; 10014EC0 _ 10014E18 (d)
        dd ?_2303                                       ; 10014EC4 _ 10014E31 (d)
        dd ?_2304                                       ; 10014EC8 _ 10014E4A (d)
        dd ?_2305                                       ; 10014ECC _ 10014E63 (d)
        dd ?_2306                                       ; 10014ED0 _ 10014E7C (d)
        dd ?_2307                                       ; 10014ED4 _ 10014E95 (d)

; Filling space: 8H
; Filler type: NOP
;       db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H

ALIGN   16
?_2310: mov     eax, dword [?_5368]                     ; 10014EE0 _ A1, 1002D878(d)
        xor     edx, edx                                ; 10014EE5 _ 33. D2
        test    ax, ax                                  ; 10014EE7 _ 66: 85. C0
        push    esi                                     ; 10014EEA _ 56
        jz      ?_2312                                  ; 10014EEB _ 74, 1F
        mov     esi, dword [esp+8H]                     ; 10014EED _ 8B. 74 24, 08
        mov     ecx, ?_5368                             ; 10014EF1 _ B9, 1002D878(d)
?_2311: and     eax, 0FFFFH                             ; 10014EF6 _ 25, 0000FFFF
        cmp     eax, esi                                ; 10014EFB _ 3B. C6
        jz      ?_2313                                  ; 10014EFD _ 74, 11
        mov     ax, word [ecx+46H]                      ; 10014EFF _ 66: 8B. 41, 46
        add     ecx, 70                                 ; 10014F03 _ 83. C1, 46
        inc     edx                                     ; 10014F06 _ 42
        test    ax, ax                                  ; 10014F07 _ 66: 85. C0
        jnz     ?_2311                                  ; 10014F0A _ 75, EA
?_2312: xor     eax, eax                                ; 10014F0C _ 33. C0
        pop     esi                                     ; 10014F0E _ 5E
        ret                                             ; 10014F0F _ C3

