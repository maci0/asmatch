; ---- 1000D1E2 ----
?_1454: ; Local function
        cmp     eax, 1668048242                         ; 1000D1E2 _ 3D, 636C6572
        jnz     ?_1449                                  ; 1000D1E7 _ 75, 8E
        mov     ecx, dword [esi+18H]                    ; 1000D1E9 _ 8B. 4E, 18
        push    ecx                                     ; 1000D1EC _ 51
        push    1                                       ; 1000D1ED _ 6A, 01
        push    1                                       ; 1000D1EF _ 6A, 01
        call    ?_2609                                  ; 1000D1F1 _ E8, 00009EEA
        add     esp, 12                                 ; 1000D1F6 _ 83. C4, 0C
        test    eax, eax                                ; 1000D1F9 _ 85. C0
        je      ?_1449                                  ; 1000D1FB _ 0F 84, FFFFFF76
        mov     cx, word [eax+27H]                      ; 1000D201 _ 66: 8B. 48, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     cx, -1                                  ; 1000D205 _ 66: 81. F9, FFFF
        jz      ?_1455                                  ; 1000D20A _ 74, 33
        and     ecx, 0FFFFH                             ; 1000D20C _ 81. E1, 0000FFFF
        lea     ecx, [ecx+ecx*2]                        ; 1000D212 _ 8D. 0C 49
        lea     ecx, [ecx+ecx*4]                        ; 1000D215 _ 8D. 0C 89
        lea     edx, [ecx+ecx*8]                        ; 1000D218 _ 8D. 14 C9
        lea     ecx, [?_5632+edx*4]                     ; 1000D21B _ 8D. 0C 95, 100358A0(d)
        test    ecx, ecx                                ; 1000D222 _ 85. C9
        jz      ?_1455                                  ; 1000D224 _ 74, 19
        cmp     ecx, dword [?_5547]                     ; 1000D226 _ 3B. 0D, 1003546C(d)
        jz      ?_1455                                  ; 1000D22C _ 74, 11
        mov     dl, byte [ecx+8H]                       ; 1000D22E _ 8A. 51, 08
        test    dl, dl                                  ; 1000D231 _ 84. D2
        jz      ?_1455                                  ; 1000D233 _ 74, 0A
        cmp     byte [ecx+2H], 15                       ; 1000D235 _ 80. 79, 02, 0F
        jne     ?_1449                                  ; 1000D239 _ 0F 85, FFFFFF38
?_1455: mov     eax, dword [eax+5DH]                    ; 1000D23F _ 8B. 40, 5D
        push    301                                     ; 1000D242 _ 68, 0000012D
        push    0                                       ; 1000D247 _ 6A, 00
        push    6                                       ; 1000D249 _ 6A, 06
        push    2                                       ; 1000D24B _ 6A, 02
        push    eax                                     ; 1000D24D _ 50
        call    ?_2482                                  ; 1000D24E _ E8, 0000920D
        add     esp, 20                                 ; 1000D253 _ 83. C4, 14
        neg     eax                                     ; 1000D256 _ F7. D8
        sbb     eax, eax                                ; 1000D258 _ 1B. C0
        inc     eax                                     ; 1000D25A _ 40
        pop     esi                                     ; 1000D25B _ 5E
        ret                                             ; 1000D25C _ C3

        nop                                             ; 1000D25D _ 90
        nop                                             ; 1000D25E _ 90
        nop                                             ; 1000D25F _ 90

