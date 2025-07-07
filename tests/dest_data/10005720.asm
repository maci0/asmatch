; ---- 10005720 ----
?_0525: ; Local function
        mov     eax, dword [esp+4H]                     ; 10005720 _ 8B. 44 24, 04
        xor     edx, edx                                ; 10005724 _ 33. D2
        cmp     eax, edx                                ; 10005726 _ 3B. C2
        jz      ?_0526                                  ; 10005728 _ 74, 32
        mov     ecx, dword [eax+1CH]                    ; 1000572A _ 8B. 48, 1C
        cmp     ecx, edx                                ; 1000572D _ 3B. CA
        jz      ?_0526                                  ; 1000572F _ 74, 2B
        push    esi                                     ; 10005731 _ 56
        mov     dword [eax+14H], edx                    ; 10005732 _ 89. 50, 14
        mov     dword [eax+8H], edx                     ; 10005735 _ 89. 50, 08
        mov     dword [eax+18H], edx                    ; 10005738 _ 89. 50, 18
        mov     esi, dword [ecx+0CH]                    ; 1000573B _ 8B. 71, 0C
        push    edx                                     ; 1000573E _ 52
        neg     esi                                     ; 1000573F _ F7. DE
        sbb     esi, esi                                ; 10005741 _ 1B. F6
        push    eax                                     ; 10005743 _ 50
        and     esi, 07H                                ; 10005744 _ 83. E6, 07
        mov     dword [ecx], esi                        ; 10005747 _ 89. 31
        mov     eax, dword [eax+1CH]                    ; 10005749 _ 8B. 40, 1C
        mov     ecx, dword [eax+14H]                    ; 1000574C _ 8B. 48, 14
        push    ecx                                     ; 1000574F _ 51
        call    ?_0336                                  ; 10005750 _ E8, FFFFE5CB
        add     esp, 12                                 ; 10005755 _ 83. C4, 0C
        xor     eax, eax                                ; 10005758 _ 33. C0
        pop     esi                                     ; 1000575A _ 5E
        ret                                             ; 1000575B _ C3

