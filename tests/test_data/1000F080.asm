; ---- 1000F080 ----
?_1706: ; Local function
        mov     ecx, dword [esp+4H]                     ; 1000F080 _ 8B. 4C 24, 04
        mov     eax, dword [?_5527]                     ; 1000F084 _ A1, 10035408(d)
        mov     dword [ecx+10H], eax                    ; 1000F089 _ 89. 41, 10
        mov     eax, dword [?_5527]                     ; 1000F08C _ A1, 10035408(d)
        inc     eax                                     ; 1000F091 _ 40
        mov     dword [?_5527], eax                     ; 1000F092 _ A3, 10035408(d)
        xor     eax, eax                                ; 1000F097 _ 33. C0
        ret                                             ; 1000F099 _ C3

        nop                                             ; 1000F09A _ 90
        nop                                             ; 1000F09B _ 90
        nop                                             ; 1000F09C _ 90
        nop                                             ; 1000F09D _ 90
        nop                                             ; 1000F09E _ 90
        nop                                             ; 1000F09F _ 90
