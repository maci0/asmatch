; ---- 10011790 ----
?_2018: ; Local function
        push    esi                                     ; 10011790 _ 56
        push    edi                                     ; 10011791 _ 57
        mov     edi, dword [esp+0CH]                    ; 10011792 _ 8B. 7C 24, 0C
        lea     ecx, [esp+0CH]                          ; 10011796 _ 8D. 4C 24, 0C
        mov     eax, dword [edi+8H]                     ; 1001179A _ 8B. 47, 08
        push    eax                                     ; 1001179D _ 50
        push    0                                       ; 1001179E _ 6A, 00
        push    0                                       ; 100117A0 _ 6A, 00
        push    ecx                                     ; 100117A2 _ 51
        call    ?_2425                                  ; 100117A3 _ E8, 000046E8
        mov     edx, dword [esp+1CH]                    ; 100117A8 _ 8B. 54 24, 1C
        add     esp, 16                                 ; 100117AC _ 83. C4, 10
        test    edx, edx                                ; 100117AF _ 85. D2
        je      ?_2024                                  ; 100117B1 _ 0F 84, 000000C5
        mov     ax, word [edx+27H]                      ; 100117B7 _ 66: 8B. 42, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 100117BB _ 66: 3D, FFFF
        je      ?_2024                                  ; 100117BF _ 0F 84, 000000B7
        and     eax, 0FFFFH                             ; 100117C5 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 100117CA _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 100117CD _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 100117D0 _ 8D. 04 C0
        lea     ecx, [?_5632+eax*4]                     ; 100117D3 _ 8D. 0C 85, 100358A0(d)
        mov     eax, dword [?_5547]                     ; 100117DA _ A1, 1003546C(d)
        cmp     ecx, eax                                ; 100117DF _ 3B. C8
        je      ?_2024                                  ; 100117E1 _ 0F 84, 00000095
        xor     ecx, ecx                                ; 100117E7 _ 33. C9
        mov     esi, dword [?_5668]                     ; 100117E9 _ 8B. 35, 100A8C30(d)
        mov     cl, byte [edx]                          ; 100117EF _ 8A. 0A
        add     esi, ecx                                ; 100117F1 _ 03. F1
        lea     eax, [ecx+ecx*2]                        ; 100117F3 _ 8D. 04 49
        shl     eax, 4                                  ; 100117F6 _ C1. E0, 04
        add     eax, ecx                                ; 100117F9 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 100117FB _ 8D. 04 40
        cmp     byte [esi+eax*4], 29                    ; 100117FE _ 80. 3C 86, 1D
        jz      ?_2019                                  ; 10011802 _ 74, 08
        pop     edi                                     ; 10011804 _ 5F
        mov     eax, 4294967294                         ; 10011805 _ B8, FFFFFFFE
        pop     esi                                     ; 1001180A _ 5E
        ret                                             ; 1001180B _ C3

?_2019: mov     esi, dword [edx+65H]                    ; 1001180C _ 8B. 72, 65
        test    esi, esi                                ; 1001180F _ 85. F6
        jnz     ?_2020                                  ; 10011811 _ 75, 08
        pop     edi                                     ; 10011813 _ 5F
        mov     eax, 4294967293                         ; 10011814 _ B8, FFFFFFFD
        pop     esi                                     ; 10011819 _ 5E
        ret                                             ; 1001181A _ C3

?_2020: mov     ecx, dword [edi+0CH]                    ; 1001181B _ 8B. 4F, 0C
        push    ecx                                     ; 1001181E _ 51
        push    esi                                     ; 1001181F _ 56
        call    ?_1891                                  ; 10011820 _ E8, FFFFED0B
        add     esp, 8                                  ; 10011825 _ 83. C4, 08
        test    eax, eax                                ; 10011828 _ 85. C0
        jnz     ?_2021                                  ; 1001182A _ 75, 08
        pop     edi                                     ; 1001182C _ 5F
        mov     eax, 4294967292                         ; 1001182D _ B8, FFFFFFFC
        pop     esi                                     ; 10011832 _ 5E
        ret                                             ; 10011833 _ C3

?_2021: mov     dl, byte [edi+10H]                      ; 10011834 _ 8A. 57, 10
        mov     eax, dword [edi+0CH]                    ; 10011837 _ 8B. 47, 0C
        push    edx                                     ; 1001183A _ 52
        push    eax                                     ; 1001183B _ 50
        push    esi                                     ; 1001183C _ 56
        call    ?_1900                                  ; 1001183D _ E8, FFFFED6E
        add     esp, 12                                 ; 10011842 _ 83. C4, 0C
        test    eax, eax                                ; 10011845 _ 85. C0
        jnz     ?_2022                                  ; 10011847 _ 75, 08
        pop     edi                                     ; 10011849 _ 5F
        mov     eax, 4294967289                         ; 1001184A _ B8, FFFFFFF9
        pop     esi                                     ; 1001184F _ 5E
        ret                                             ; 10011850 _ C3

?_2022: xor     ecx, ecx                                ; 10011851 _ 33. C9
        mov     cl, byte [eax+0CH]                      ; 10011853 _ 8A. 48, 0C
        mov     edx, ecx                                ; 10011856 _ 8B. D1
        mov     ecx, dword [edi+13H]                    ; 10011858 _ 8B. 4F, 13
        add     ecx, edx                                ; 1001185B _ 03. CA
        xor     edx, edx                                ; 1001185D _ 33. D2
        test    ecx, ecx                                ; 1001185F _ 85. C9
        setle   dl                                      ; 10011861 _ 0F 9E. C2
        dec     edx                                     ; 10011864 _ 4A
        and     ecx, edx                                ; 10011865 _ 23. CA
        cmp     ecx, 255                                ; 10011867 _ 81. F9, 000000FF
        jl      ?_2023                                  ; 1001186D _ 7C, 05
        mov     ecx, 255                                ; 1001186F _ B9, 000000FF
?_2023: mov     byte [eax+0CH], cl                      ; 10011874 _ 88. 48, 0C
        pop     edi                                     ; 10011877 _ 5F
        xor     eax, eax                                ; 10011878 _ 33. C0
        pop     esi                                     ; 1001187A _ 5E
        ret                                             ; 1001187B _ C3
