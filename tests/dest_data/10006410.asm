; ---- 10006410 ----
?_0629: ; Local function
        mov     eax, dword [esp+4H]                     ; 10006410 _ 8B. 44 24, 04
        mov     ecx, dword [?_5126]                     ; 10006414 _ 8B. 0D, 100275A8(d)
        mov     edx, dword [esp+8H]                     ; 1000641A _ 8B. 54 24, 08
        mov     dword [eax], ecx                        ; 1000641E _ 89. 08
        mov     eax, dword [?_5127]                     ; 10006420 _ A1, 100275AC(d)
        mov     ecx, dword [esp+0CH]                    ; 10006425 _ 8B. 4C 24, 0C
        mov     dword [edx], eax                        ; 10006429 _ 89. 02
        mov     edx, dword [esp+10H]                    ; 1000642B _ 8B. 54 24, 10
        xor     eax, eax                                ; 1000642F _ 33. C0
        mov     dword [ecx], ?_5128                     ; 10006431 _ C7. 01, 100275B0(d)
        mov     dword [edx], ?_5129                     ; 10006437 _ C7. 02, 100285B0(d)
        ret                                             ; 1000643D _ C3

        nop                                             ; 1000643E _ 90
        nop                                             ; 1000643F _ 90

