; ---- 10015A20 ----
?_2394: ; Local function
        push    ?_5410                                  ; 10015A20 _ 68, 100311A0(d)
        push    43264                                   ; 10015A25 _ 68, 0000A900
        call    ?_0640                                  ; 10015A2A _ E8, FFFF0B51
        mov     edi, eax                                ; 10015A2F _ 8B. F8
        mov     ecx, 10816                              ; 10015A31 _ B9, 00002A40
        xor     eax, eax                                ; 10015A36 _ 33. C0
        mov     dword [?_5690], edi                     ; 10015A38 _ 89. 3D, 1014D8C0(d)
        rep stosd                                       ; 10015A3E _ F3: AB
        mov     eax, dword [?_5690]                     ; 10015A40 _ A1, 1014D8C0(d)
        add     esp, 8                                  ; 10015A45 _ 83. C4, 08
        test    eax, eax                                ; 10015A48 _ 85. C0
        jnz     ?_2395                                  ; 10015A4A _ 75, 0F
        pop     edi                                     ; 10015A4C _ 5F
        pop     esi                                     ; 10015A4D _ 5E
        mov     eax, 4294967294                         ; 10015A4E _ B8, FFFFFFFE
        pop     ebx                                     ; 10015A53 _ 5B
        add     esp, 520                                ; 10015A54 _ 81. C4, 00000208
        ret                                             ; 10015A5A _ C3
