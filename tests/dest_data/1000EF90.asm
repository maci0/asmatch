; ---- 1000EF90 ----
?_1698: ; Local function
        mov     ecx, dword [esp+4H]                     ; 1000EF90 _ 8B. 4C 24, 04
        mov     eax, dword [?_5776]                     ; 1000EF94 _ A1, 1176408C(d)
        mov     dword [ecx+10H], eax                    ; 1000EF99 _ 89. 41, 10
        mov     eax, dword [?_5776]                     ; 1000EF9C _ A1, 1176408C(d)
        inc     eax                                     ; 1000EFA1 _ 40
        mov     dword [?_5776], eax                     ; 1000EFA2 _ A3, 1176408C(d)
        xor     eax, eax                                ; 1000EFA7 _ 33. C0
        ret                                             ; 1000EFA9 _ C3

        nop                                             ; 1000EFAA _ 90
        nop                                             ; 1000EFAB _ 90
        nop                                             ; 1000EFAC _ 90
        nop                                             ; 1000EFAD _ 90
        nop                                             ; 1000EFAE _ 90
        nop                                             ; 1000EFAF _ 90

