; ---- 10006FB0 ----
?_0718: ; Local function
        mov     eax, dword [esp+4H]                     ; 10006FB0 _ 8B. 44 24, 04
        mov     ecx, dword [eax+16B4H]                  ; 10006FB4 _ 8B. 88, 000016B4
        cmp     ecx, 13                                 ; 10006FBA _ 83. F9, 0D
        jle     ?_0719                                  ; 10006FBD _ 7E, 62
        mov     edx, dword [esp+10H]                    ; 10006FBF _ 8B. 54 24, 10
        push    ebx                                     ; 10006FC3 _ 53
        push    esi                                     ; 10006FC4 _ 56
        mov     esi, edx                                ; 10006FC5 _ 8B. F2
        shl     esi, cl                                 ; 10006FC7 _ D3. E6
        mov     ecx, dword [eax+8H]                     ; 10006FC9 _ 8B. 48, 08
        push    edi                                     ; 10006FCC _ 57
        or      word [eax+16B0H], si                    ; 10006FCD _ 66: 09. B0, 000016B0
        mov     esi, dword [eax+14H]                    ; 10006FD4 _ 8B. 70, 14
        mov     bl, byte [eax+16B0H]                    ; 10006FD7 _ 8A. 98, 000016B0
        mov     byte [ecx+esi], bl                      ; 10006FDD _ 88. 1C 31
        mov     esi, dword [eax+14H]                    ; 10006FE0 _ 8B. 70, 14
        mov     edi, dword [eax+8H]                     ; 10006FE3 _ 8B. 78, 08
        xor     ecx, ecx                                ; 10006FE6 _ 33. C9
        mov     cl, byte [eax+16B1H]                    ; 10006FE8 _ 8A. 88, 000016B1
        inc     esi                                     ; 10006FEE _ 46
        mov     dword [eax+14H], esi                    ; 10006FEF _ 89. 70, 14
        mov     byte [edi+esi], cl                      ; 10006FF2 _ 88. 0C 37
        mov     ecx, dword [eax+14H]                    ; 10006FF5 _ 8B. 48, 14
        mov     esi, dword [eax+16B4H]                  ; 10006FF8 _ 8B. B0, 000016B4
        inc     ecx                                     ; 10006FFE _ 41
        mov     dword [eax+14H], ecx                    ; 10006FFF _ 89. 48, 14
; Note: Length-changing prefix causes delay on Intel processors
        mov     cx, 16                                  ; 10007002 _ 66: B9, 0010
        sub     cx, si                                  ; 10007006 _ 66: 2B. CE
        pop     edi                                     ; 10007009 _ 5F
        shr     dx, cl                                  ; 1000700A _ 66: D3. EA
        add     esi, -13                                ; 1000700D _ 83. C6, F3
        mov     dword [eax+16B4H], esi                  ; 10007010 _ 89. B0, 000016B4
        pop     esi                                     ; 10007016 _ 5E
        pop     ebx                                     ; 10007017 _ 5B
        mov     word [eax+16B0H], dx                    ; 10007018 _ 66: 89. 90, 000016B0
        jmp     ?_0720                                  ; 1000701F _ EB, 16

?_0719: mov     edx, dword [esp+10H]                    ; 10007021 _ 8B. 54 24, 10
        shl     edx, cl                                 ; 10007025 _ D3. E2
        or      word [eax+16B0H], dx                    ; 10007027 _ 66: 09. 90, 000016B0
        add     ecx, 3                                  ; 1000702E _ 83. C1, 03
        mov     dword [eax+16B4H], ecx                  ; 10007031 _ 89. 88, 000016B4
?_0720: mov     ecx, dword [esp+0CH]                    ; 10007037 _ 8B. 4C 24, 0C
        mov     edx, dword [esp+8H]                     ; 1000703B _ 8B. 54 24, 08
        push    1                                       ; 1000703F _ 6A, 01
        push    ecx                                     ; 10007041 _ 51
        push    edx                                     ; 10007042 _ 52
        push    eax                                     ; 10007043 _ 50
        call    ?_0874                                  ; 10007044 _ E8, 00001967
        add     esp, 16                                 ; 10007049 _ 83. C4, 10
        ret                                             ; 1000704C _ C3

        nop                                             ; 1000704D _ 90
        nop                                             ; 1000704E _ 90
        nop                                             ; 1000704F _ 90

