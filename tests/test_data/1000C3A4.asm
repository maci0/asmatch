; ---- 1000C3A4 ----
?_1303: ; Local function
        mov     ecx, dword [esi+10H]                    ; 1000C3A4 _ 8B. 4E, 10
        mov     dword [edi+eax*8+10H], ecx              ; 1000C3A7 _ 89. 4C C7, 10
        pop     edi                                     ; 1000C3AB _ 5F
        pop     esi                                     ; 1000C3AC _ 5E
        mov     eax, 1                                  ; 1000C3AD _ B8, 00000001
        ret                                             ; 1000C3B2 _ C3

        nop                                             ; 1000C3B3 _ 90
        nop                                             ; 1000C3B4 _ 90
        nop                                             ; 1000C3B5 _ 90
        nop                                             ; 1000C3B6 _ 90
        nop                                             ; 1000C3B7 _ 90
        nop                                             ; 1000C3B8 _ 90
        nop                                             ; 1000C3B9 _ 90
        nop                                             ; 1000C3BA _ 90
        nop                                             ; 1000C3BB _ 90
        nop                                             ; 1000C3BC _ 90
        nop                                             ; 1000C3BD _ 90
        nop                                             ; 1000C3BE _ 90
        nop                                             ; 1000C3BF _ 90
?_1304: mov     eax, dword [esp+4H]                     ; 1000C3C0 _ 8B. 44 24, 04
        mov     ecx, dword [esp+8H]                     ; 1000C3C4 _ 8B. 4C 24, 08
        fld     dword [eax+10H]                         ; 1000C3C8 _ D9. 40, 10
        fadd    dword [ecx+4H]                          ; 1000C3CB _ D8. 41, 04
        fcom    dword [?_4921]                          ; 1000C3CE _ D8. 15, 100256CC(d)
        fnstsw  ax                                      ; 1000C3D4 _ DF. E0
        test    ah, 41H                                 ; 1000C3D6 _ F6. C4, 41
        jnz     ?_1305                                  ; 1000C3D9 _ 75, 16
        fcom    dword [?_4910]                          ; 1000C3DB _ D8. 15, 100256A0(d)
        fnstsw  ax                                      ; 1000C3E1 _ DF. E0
        test    ah, 01H                                 ; 1000C3E3 _ F6. C4, 01
        jz      ?_1306                                  ; 1000C3E6 _ 74, 1A
        fstp    dword [ecx+4H]                          ; 1000C3E8 _ D9. 59, 04
        mov     eax, 1                                  ; 1000C3EB _ B8, 00000001
        ret                                             ; 1000C3F0 _ C3

?_1305: fstp    st0                                     ; 1000C3F1 _ DD. D8
        fld     dword [?_4921]                          ; 1000C3F3 _ D9. 05, 100256CC(d)
        mov     eax, 1                                  ; 1000C3F9 _ B8, 00000001
        fstp    dword [ecx+4H]                          ; 1000C3FE _ D9. 59, 04
        ret                                             ; 1000C401 _ C3

