; ---- 10019CD0 ----
?_2978: ; Local function
        mov     eax, dword [esp+4H]                     ; 10019CD0 _ 8B. 44 24, 04
        mov     ax, word [eax]                          ; 10019CD4 _ 66: 8B. 00
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 42                                  ; 10019CD7 _ 66: 3D, 002A
        jz      ?_2979                                  ; 10019CDB _ 74, 1A
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 278                                 ; 10019CDD _ 66: 3D, 0116
        jz      ?_2979                                  ; 10019CE1 _ 74, 14
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 475                                 ; 10019CE3 _ 66: 3D, 01DB
        jz      ?_2979                                  ; 10019CE7 _ 74, 0E
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 476                                 ; 10019CE9 _ 66: 3D, 01DC
        jz      ?_2979                                  ; 10019CED _ 74, 08
        mov     ecx, dword [esp+8H]                     ; 10019CEF _ 8B. 4C 24, 08
        mov     eax, dword [ecx+0EH]                    ; 10019CF3 _ 8B. 41, 0E
        ret                                             ; 10019CF6 _ C3

