; ---- 10006F40 ----
?_0714: ; Local function
        mov     edx, dword [esp+4H]                     ; 10006F40 _ 8B. 54 24, 04
        push    esi                                     ; 10006F44 _ 56
        mov     ecx, 286                                ; 10006F45 _ B9, 0000011E
        xor     esi, esi                                ; 10006F4A _ 33. F6
        lea     eax, [edx+8CH]                          ; 10006F4C _ 8D. 82, 0000008C
?_0715: mov     word [eax], si                          ; 10006F52 _ 66: 89. 30
        add     eax, 4                                  ; 10006F55 _ 83. C0, 04
        dec     ecx                                     ; 10006F58 _ 49
        jnz     ?_0715                                  ; 10006F59 _ 75, F7
        lea     eax, [edx+980H]                         ; 10006F5B _ 8D. 82, 00000980
        mov     ecx, 30                                 ; 10006F61 _ B9, 0000001E
?_0716: mov     word [eax], si                          ; 10006F66 _ 66: 89. 30
        add     eax, 4                                  ; 10006F69 _ 83. C0, 04
        dec     ecx                                     ; 10006F6C _ 49
        jnz     ?_0716                                  ; 10006F6D _ 75, F7
        lea     eax, [edx+0A74H]                        ; 10006F6F _ 8D. 82, 00000A74
        mov     ecx, 19                                 ; 10006F75 _ B9, 00000013
?_0717: mov     word [eax], si                          ; 10006F7A _ 66: 89. 30
        add     eax, 4                                  ; 10006F7D _ 83. C0, 04
        dec     ecx                                     ; 10006F80 _ 49
        jnz     ?_0717                                  ; 10006F81 _ 75, F7
        mov     dword [edx+16A4H], esi                  ; 10006F83 _ 89. B2, 000016A4
        mov     dword [edx+16A0H], esi                  ; 10006F89 _ 89. B2, 000016A0
        mov     dword [edx+16A8H], esi                  ; 10006F8F _ 89. B2, 000016A8
        mov     dword [edx+1698H], esi                  ; 10006F95 _ 89. B2, 00001698
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [edx+48CH], 1                      ; 10006F9B _ 66: C7. 82, 0000048C, 0001
        pop     esi                                     ; 10006FA4 _ 5E
        ret                                             ; 10006FA5 _ C3

        nop                                             ; 10006FA6 _ 90
        nop                                             ; 10006FA7 _ 90
        nop                                             ; 10006FA8 _ 90
        nop                                             ; 10006FA9 _ 90
        nop                                             ; 10006FAA _ 90
        nop                                             ; 10006FAB _ 90
        nop                                             ; 10006FAC _ 90
        nop                                             ; 10006FAD _ 90
        nop                                             ; 10006FAE _ 90
        nop                                             ; 10006FAF _ 90
