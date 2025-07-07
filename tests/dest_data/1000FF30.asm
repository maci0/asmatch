; ---- 1000FF30 ----
?_1831: ; Local function
        mov     eax, dword [esp+8H]                     ; 1000FF30 _ 8B. 44 24, 08
        xor     ecx, ecx                                ; 1000FF34 _ 33. C9
        cmp     eax, ecx                                ; 1000FF36 _ 3B. C1
        jz      ?_1832                                  ; 1000FF38 _ 74, 09
        mov     byte [eax], 2                           ; 1000FF3A _ C6. 00, 02
        mov     byte [eax+1H], cl                       ; 1000FF3D _ 88. 48, 01
        mov     dword [eax+6H], ecx                     ; 1000FF40 _ 89. 48, 06
?_1832: mov     eax, dword [esp+4H]                     ; 1000FF43 _ 8B. 44 24, 04
        mov     ecx, dword [eax+10H]                    ; 1000FF47 _ 8B. 48, 10
        push    ecx                                     ; 1000FF4A _ 51
        call    ?_2817                                  ; 1000FF4B _ E8, 00008550
        add     esp, 4                                  ; 1000FF50 _ 83. C4, 04
        neg     eax                                     ; 1000FF53 _ F7. D8
        sbb     eax, eax                                ; 1000FF55 _ 1B. C0
        inc     eax                                     ; 1000FF57 _ 40
        ret                                             ; 1000FF58 _ C3

        nop                                             ; 1000FF59 _ 90
        nop                                             ; 1000FF5A _ 90
        nop                                             ; 1000FF5B _ 90
        nop                                             ; 1000FF5C _ 90
        nop                                             ; 1000FF5D _ 90
        nop                                             ; 1000FF5E _ 90
        nop                                             ; 1000FF5F _ 90

