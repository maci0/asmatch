; ---- 10021F3D ----
?_4558: ; Local function
        push    edi                                     ; 10021F3D _ 57
        push    64                                      ; 10021F3E _ 6A, 40
        pop     ecx                                     ; 10021F40 _ 59
        xor     eax, eax                                ; 10021F41 _ 33. C0
        mov     edi, ?_5795                             ; 10021F43 _ BF, 11766320(d)
        rep stosd                                       ; 10021F48 _ F3: AB
        stosb                                           ; 10021F4A _ AA
        xor     eax, eax                                ; 10021F4B _ 33. C0
        mov     edi, ?_5792                             ; 10021F4D _ BF, 11766210(d)
        mov     dword [?_5791], eax                     ; 10021F52 _ A3, 11766208(d)
        mov     dword [?_5793], eax                     ; 10021F57 _ A3, 1176621C(d)
        mov     dword [?_5797], eax                     ; 10021F5C _ A3, 11766424(d)
        stosd                                           ; 10021F61 _ AB
        stosd                                           ; 10021F62 _ AB
        stosd                                           ; 10021F63 _ AB
        pop     edi                                     ; 10021F64 _ 5F
        ret                                             ; 10021F65 _ C3
