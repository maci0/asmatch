; ---- 10004B80 ----
?_0431: ; Local function
        mov     eax, dword [esp+14H]                    ; 10004B80 _ 8B. 44 24, 14
        push    28                                      ; 10004B84 _ 6A, 1C
        push    1                                       ; 10004B86 _ 6A, 01
        mov     ecx, dword [eax+28H]                    ; 10004B88 _ 8B. 48, 28
        push    ecx                                     ; 10004B8B _ 51
        call    near [eax+20H]                          ; 10004B8C _ FF. 50, 20
        add     esp, 12                                 ; 10004B8F _ 83. C4, 0C
        test    eax, eax                                ; 10004B92 _ 85. C0
        jz      ?_0432                                  ; 10004B94 _ 74, 22
        mov     dl, byte [esp+4H]                       ; 10004B96 _ 8A. 54 24, 04
        mov     cl, byte [esp+8H]                       ; 10004B9A _ 8A. 4C 24, 08
        mov     byte [eax+10H], dl                      ; 10004B9E _ 88. 50, 10
        mov     edx, dword [esp+0CH]                    ; 10004BA1 _ 8B. 54 24, 0C
        mov     byte [eax+11H], cl                      ; 10004BA5 _ 88. 48, 11
        mov     ecx, dword [esp+10H]                    ; 10004BA8 _ 8B. 4C 24, 10
        mov     dword [eax], 0                          ; 10004BAC _ C7. 00, 00000000
        mov     dword [eax+14H], edx                    ; 10004BB2 _ 89. 50, 14
        mov     dword [eax+18H], ecx                    ; 10004BB5 _ 89. 48, 18
?_0432: ret                                             ; 10004BB8 _ C3

        nop                                             ; 10004BB9 _ 90
        nop                                             ; 10004BBA _ 90
        nop                                             ; 10004BBB _ 90
        nop                                             ; 10004BBC _ 90
        nop                                             ; 10004BBD _ 90
        nop                                             ; 10004BBE _ 90
        nop                                             ; 10004BBF _ 90
