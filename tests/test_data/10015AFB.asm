; ---- 10015AFB ----
?_2397: ; Local function
        push    ?_5405                                  ; 10015AFB _ 68, 1003112C(d)
        push    1372696                                 ; 10015B00 _ 68, 0014F218
        call    ?_0640                                  ; 10015B05 _ E8, FFFF0A76
        mov     edi, eax                                ; 10015B0A _ 8B. F8
        add     esp, 8                                  ; 10015B0C _ 83. C4, 08
        test    edi, edi                                ; 10015B0F _ 85. FF
        mov     dword [?_5669], edi                     ; 10015B11 _ 89. 3D, 100A8C34(d)
        jnz     ?_2398                                  ; 10015B17 _ 75, 0F
        pop     edi                                     ; 10015B19 _ 5F
        pop     esi                                     ; 10015B1A _ 5E
        mov     eax, 4294967291                         ; 10015B1B _ B8, FFFFFFFB
        pop     ebx                                     ; 10015B20 _ 5B
        add     esp, 520                                ; 10015B21 _ 81. C4, 00000208
        ret                                             ; 10015B27 _ C3
