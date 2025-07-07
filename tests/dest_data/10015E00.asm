; ---- 10015E00 ----
?_2418: ; Local function
        push    esi                                     ; 10015E00 _ 56
        push    6                                       ; 10015E01 _ 6A, 06
        push    1                                       ; 10015E03 _ 6A, 01
        call    ?_2609                                  ; 10015E05 _ E8, 000012D6
        xor     esi, esi                                ; 10015E0A _ 33. F6
        add     esp, 8                                  ; 10015E0C _ 83. C4, 08
        cmp     eax, esi                                ; 10015E0F _ 3B. C6
        jz      ?_2420                                  ; 10015E11 _ 74, 12
?_2419: push    eax                                     ; 10015E13 _ 50
        call    ?_2627                                  ; 10015E14 _ E8, 00001427
        add     esp, 4                                  ; 10015E19 _ 83. C4, 04
        call    ?_2587                                  ; 10015E1C _ E8, 0000115F
        cmp     eax, esi                                ; 10015E21 _ 3B. C6
        jnz     ?_2419                                  ; 10015E23 _ 75, EE
?_2420: mov     eax, dword [?_5668]                     ; 10015E25 _ A1, 100A8C30(d)
        cmp     eax, esi                                ; 10015E2A _ 3B. C6
        jz      ?_2421                                  ; 10015E2C _ 74, 0F
        push    eax                                     ; 10015E2E _ 50
        call    ?_0663                                  ; 10015E2F _ E8, FFFF09EC
        add     esp, 4                                  ; 10015E34 _ 83. C4, 04
        mov     dword [?_5668], esi                     ; 10015E37 _ 89. 35, 100A8C30(d)
?_2421: mov     eax, dword [?_5690]                     ; 10015E3D _ A1, 1014D8C0(d)
        cmp     eax, esi                                ; 10015E42 _ 3B. C6
        jz      ?_2422                                  ; 10015E44 _ 74, 0F
        push    eax                                     ; 10015E46 _ 50
        call    ?_0663                                  ; 10015E47 _ E8, FFFF09D4
        add     esp, 4                                  ; 10015E4C _ 83. C4, 04
        mov     dword [?_5690], esi                     ; 10015E4F _ 89. 35, 1014D8C0(d)
?_2422: mov     eax, dword [?_5693]                     ; 10015E55 _ A1, 101DE450(d)
        cmp     eax, esi                                ; 10015E5A _ 3B. C6
        jz      ?_2423                                  ; 10015E5C _ 74, 0F
        push    eax                                     ; 10015E5E _ 50
        call    ?_0663                                  ; 10015E5F _ E8, FFFF09BC
        add     esp, 4                                  ; 10015E64 _ 83. C4, 04
        mov     dword [?_5693], esi                     ; 10015E67 _ 89. 35, 101DE450(d)
?_2423: mov     eax, dword [?_5669]                     ; 10015E6D _ A1, 100A8C34(d)
        cmp     eax, esi                                ; 10015E72 _ 3B. C6
        jz      ?_2424                                  ; 10015E74 _ 74, 0F
        push    eax                                     ; 10015E76 _ 50
        call    ?_0663                                  ; 10015E77 _ E8, FFFF09A4
        add     esp, 4                                  ; 10015E7C _ 83. C4, 04
        mov     dword [?_5669], esi                     ; 10015E7F _ 89. 35, 100A8C34(d)
?_2424: pop     esi                                     ; 10015E85 _ 5E
        ret                                             ; 10015E86 _ C3

        nop                                             ; 10015E87 _ 90
        nop                                             ; 10015E88 _ 90
        nop                                             ; 10015E89 _ 90
        nop                                             ; 10015E8A _ 90
        nop                                             ; 10015E8B _ 90
        nop                                             ; 10015E8C _ 90
        nop                                             ; 10015E8D _ 90
        nop                                             ; 10015E8E _ 90
        nop                                             ; 10015E8F _ 90

