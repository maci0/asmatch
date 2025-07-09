; ---- 10001910 ----
?_0058: ; Local function
        push    esi                                     ; 10001910 _ 56
        mov     esi, dword [esp+8H]                     ; 10001911 _ 8B. 74 24, 08
        test    esi, esi                                ; 10001915 _ 85. F6
        push    edi                                     ; 10001917 _ 57
        je      ?_0064                                  ; 10001918 _ 0F 84, 00000094
        mov     eax, dword [esi+1CH]                    ; 1000191E _ 8B. 46, 1C
        test    eax, eax                                ; 10001921 _ 85. C0
        je      ?_0064                                  ; 10001923 _ 0F 84, 00000089
        mov     edi, dword [eax+4H]                     ; 10001929 _ 8B. 78, 04
        cmp     edi, 42                                 ; 1000192C _ 83. FF, 2A
        jz      ?_0059                                  ; 1000192F _ 74, 0D
        cmp     edi, 113                                ; 10001931 _ 83. FF, 71
        jz      ?_0059                                  ; 10001934 _ 74, 08
        cmp     edi, 666                                ; 10001936 _ 81. FF, 0000029A
        jnz     ?_0064                                  ; 1000193C _ 75, 74
?_0059: mov     eax, dword [eax+8H]                     ; 1000193E _ 8B. 40, 08
        test    eax, eax                                ; 10001941 _ 85. C0
        jz      ?_0060                                  ; 10001943 _ 74, 0B
        push    eax                                     ; 10001945 _ 50
        mov     eax, dword [esi+28H]                    ; 10001946 _ 8B. 46, 28
        push    eax                                     ; 10001949 _ 50
        call    near [esi+24H]                          ; 1000194A _ FF. 56, 24
        add     esp, 8                                  ; 1000194D _ 83. C4, 08
?_0060: mov     ecx, dword [esi+1CH]                    ; 10001950 _ 8B. 4E, 1C
        mov     eax, dword [ecx+3CH]                    ; 10001953 _ 8B. 41, 3C
        test    eax, eax                                ; 10001956 _ 85. C0
        jz      ?_0061                                  ; 10001958 _ 74, 0B
        mov     edx, dword [esi+28H]                    ; 1000195A _ 8B. 56, 28
        push    eax                                     ; 1000195D _ 50
        push    edx                                     ; 1000195E _ 52
        call    near [esi+24H]                          ; 1000195F _ FF. 56, 24
        add     esp, 8                                  ; 10001962 _ 83. C4, 08
?_0061: mov     eax, dword [esi+1CH]                    ; 10001965 _ 8B. 46, 1C
        mov     eax, dword [eax+38H]                    ; 10001968 _ 8B. 40, 38
        test    eax, eax                                ; 1000196B _ 85. C0
        jz      ?_0062                                  ; 1000196D _ 74, 0B
        mov     ecx, dword [esi+28H]                    ; 1000196F _ 8B. 4E, 28
        push    eax                                     ; 10001972 _ 50
        push    ecx                                     ; 10001973 _ 51
        call    near [esi+24H]                          ; 10001974 _ FF. 56, 24
        add     esp, 8                                  ; 10001977 _ 83. C4, 08
?_0062: mov     edx, dword [esi+1CH]                    ; 1000197A _ 8B. 56, 1C
        mov     eax, dword [edx+30H]                    ; 1000197D _ 8B. 42, 30
        test    eax, eax                                ; 10001980 _ 85. C0
        jz      ?_0063                                  ; 10001982 _ 74, 0B
        push    eax                                     ; 10001984 _ 50
        mov     eax, dword [esi+28H]                    ; 10001985 _ 8B. 46, 28
        push    eax                                     ; 10001988 _ 50
        call    near [esi+24H]                          ; 10001989 _ FF. 56, 24
        add     esp, 8                                  ; 1000198C _ 83. C4, 08
?_0063: mov     ecx, dword [esi+1CH]                    ; 1000198F _ 8B. 4E, 1C
        mov     edx, dword [esi+28H]                    ; 10001992 _ 8B. 56, 28
        push    ecx                                     ; 10001995 _ 51
        push    edx                                     ; 10001996 _ 52
        call    near [esi+24H]                          ; 10001997 _ FF. 56, 24
        add     esp, 8                                  ; 1000199A _ 83. C4, 08
        xor     eax, eax                                ; 1000199D _ 33. C0
        cmp     edi, 113                                ; 1000199F _ 83. FF, 71
        mov     dword [esi+1CH], 0                      ; 100019A2 _ C7. 46, 1C, 00000000
        setne   al                                      ; 100019A9 _ 0F 95. C0
        dec     eax                                     ; 100019AC _ 48
        pop     edi                                     ; 100019AD _ 5F
        and     al, 0FFFFFFFDH                          ; 100019AE _ 24, FD
        pop     esi                                     ; 100019B0 _ 5E
        ret                                             ; 100019B1 _ C3
