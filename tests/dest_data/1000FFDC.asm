; ---- 1000FFDC ----
?_1839: ; Local function
        mov     ecx, dword [esi+14H]                    ; 1000FFDC _ 8B. 4E, 14
        mov     edx, dword [eax+194H]                   ; 1000FFDF _ 8B. 90, 00000194
        add     ecx, edx                                ; 1000FFE5 _ 03. CA
        mov     edx, 0                                  ; 1000FFE7 _ BA, 00000000
        sets    dl                                      ; 1000FFEC _ 0F 98. C2
        dec     edx                                     ; 1000FFEF _ 4A
        and     ecx, edx                                ; 1000FFF0 _ 23. CA
        cmp     ecx, 50                                 ; 1000FFF2 _ 83. F9, 32
        jl      ?_1840                                  ; 1000FFF5 _ 7C, 05
        mov     ecx, 50                                 ; 1000FFF7 _ B9, 00000032
?_1840: mov     dword [eax+194H], ecx                   ; 1000FFFC _ 89. 88, 00000194
        xor     eax, eax                                ; 10010002 _ 33. C0
        pop     esi                                     ; 10010004 _ 5E
        ret                                             ; 10010005 _ C3

        nop                                             ; 10010006 _ 90
        nop                                             ; 10010007 _ 90
        nop                                             ; 10010008 _ 90
        nop                                             ; 10010009 _ 90
        nop                                             ; 1001000A _ 90
        nop                                             ; 1001000B _ 90
        nop                                             ; 1001000C _ 90
        nop                                             ; 1001000D _ 90
        nop                                             ; 1001000E _ 90
        nop                                             ; 1001000F _ 90

