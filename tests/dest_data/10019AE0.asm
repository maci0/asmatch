; ---- 10019AE0 ----
?_2957: ; Local function
        push    ecx                                     ; 10019AE0 _ 51
        mov     eax, dword [esp+8H]                     ; 10019AE1 _ 8B. 44 24, 08
        lea     edx, [esp+8H]                           ; 10019AE5 _ 8D. 54 24, 08
        mov     ecx, dword [eax+0AH]                    ; 10019AE9 _ 8B. 48, 0A
; Note: Zero displacement could be omitted
        lea     eax, [esp]                              ; 10019AEC _ 8D. 44 24, 00
        push    ecx                                     ; 10019AF0 _ 51
        push    edx                                     ; 10019AF1 _ 52
        push    0                                       ; 10019AF2 _ 6A, 00
        push    eax                                     ; 10019AF4 _ 50
        call    ?_2425                                  ; 10019AF5 _ E8, FFFFC396
        mov     eax, dword [esp+18H]                    ; 10019AFA _ 8B. 44 24, 18
        add     esp, 16                                 ; 10019AFE _ 83. C4, 10
        test    eax, eax                                ; 10019B01 _ 85. C0
        jnz     ?_2959                                  ; 10019B03 _ 75, 2B
; Note: Zero displacement could be omitted
        mov     eax, dword [esp]                        ; 10019B05 _ 8B. 44 24, 00
        test    eax, eax                                ; 10019B09 _ 85. C0
        jz      ?_2958                                  ; 10019B0B _ 74, 21
        mov     ax, word [eax+27H]                      ; 10019B0D _ 66: 8B. 40, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 10019B11 _ 66: 3D, FFFF
        jz      ?_2958                                  ; 10019B15 _ 74, 17
        and     eax, 0FFFFH                             ; 10019B17 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 10019B1C _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 10019B1F _ 8D. 04 80
        lea     ecx, [eax+eax*8]                        ; 10019B22 _ 8D. 0C C0
        lea     eax, [?_5632+ecx*4]                     ; 10019B25 _ 8D. 04 8D, 100358A0(d)
        pop     ecx                                     ; 10019B2C _ 59
        ret                                             ; 10019B2D _ C3

?_2958: xor     eax, eax                                ; 10019B2E _ 33. C0
?_2959: pop     ecx                                     ; 10019B30 _ 59
        ret                                             ; 10019B31 _ C3

        nop                                             ; 10019B32 _ 90
        nop                                             ; 10019B33 _ 90
        nop                                             ; 10019B34 _ 90
        nop                                             ; 10019B35 _ 90
        nop                                             ; 10019B36 _ 90
        nop                                             ; 10019B37 _ 90
        nop                                             ; 10019B38 _ 90
        nop                                             ; 10019B39 _ 90
        nop                                             ; 10019B3A _ 90
        nop                                             ; 10019B3B _ 90
        nop                                             ; 10019B3C _ 90
        nop                                             ; 10019B3D _ 90
        nop                                             ; 10019B3E _ 90
        nop                                             ; 10019B3F _ 90

