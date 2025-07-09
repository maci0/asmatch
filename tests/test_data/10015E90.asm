; ---- 10015E90 ----
?_2425: ; Local function
        mov     eax, dword [?_5693]                     ; 10015E90 _ A1, 101DE450(d)
        push    ebx                                     ; 10015E95 _ 53
        push    esi                                     ; 10015E96 _ 56
        test    eax, eax                                ; 10015E97 _ 85. C0
        push    edi                                     ; 10015E99 _ 57
        je      ?_2438                                  ; 10015E9A _ 0F 84, 000000B2
        mov     edi, dword [esp+10H]                    ; 10015EA0 _ 8B. 7C 24, 10
        test    edi, edi                                ; 10015EA4 _ 85. FF
        jz      ?_2426                                  ; 10015EA6 _ 74, 06
        mov     dword [edi], 0                          ; 10015EA8 _ C7. 07, 00000000
?_2426: mov     ebx, dword [esp+14H]                    ; 10015EAE _ 8B. 5C 24, 14
        test    ebx, ebx                                ; 10015EB2 _ 85. DB
        jz      ?_2427                                  ; 10015EB4 _ 74, 06
        mov     dword [ebx], 0                          ; 10015EB6 _ C7. 03, 00000000
?_2427: mov     edx, dword [esp+18H]                    ; 10015EBC _ 8B. 54 24, 18
        mov     esi, dword [esp+1CH]                    ; 10015EC0 _ 8B. 74 24, 1C
        test    edx, edx                                ; 10015EC4 _ 85. D2
        jz      ?_2430                                  ; 10015EC6 _ 74, 27
        mov     dword [edx], 0                          ; 10015EC8 _ C7. 02, 00000000
        mov     eax, ?_5632                             ; 10015ECE _ B8, 100358A0(d)
        xor     ecx, ecx                                ; 10015ED3 _ 33. C9
?_2428:
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], -1                          ; 10015ED5 _ 66: 81. 38, FFFF
        jz      ?_2429                                  ; 10015EDA _ 74, 05
        cmp     dword [eax+4H], esi                     ; 10015EDC _ 39. 70, 04
        jz      ?_2433                                  ; 10015EDF _ 74, 33
?_2429: add     eax, 540                                ; 10015EE1 _ 05, 0000021C
        inc     ecx                                     ; 10015EE6 _ 41
        cmp     ecx, 768                                ; 10015EE7 _ 81. F9, 00000300
        jl      ?_2428                                  ; 10015EED _ 7C, E6
?_2430: test    edi, edi                                ; 10015EEF _ 85. FF
        jz      ?_2435                                  ; 10015EF1 _ 74, 37
        mov     eax, dword [?_5690]                     ; 10015EF3 _ A1, 1014D8C0(d)
        xor     ecx, ecx                                ; 10015EF8 _ 33. C9
?_2431: cmp     byte [eax], 0                           ; 10015EFA _ 80. 38, 00
        jz      ?_2432                                  ; 10015EFD _ 74, 05
        cmp     dword [eax+1H], esi                     ; 10015EFF _ 39. 70, 01
        jz      ?_2434                                  ; 10015F02 _ 74, 1B
?_2432: inc     ecx                                     ; 10015F04 _ 41
        add     eax, 169                                ; 10015F05 _ 05, 000000A9
        cmp     ecx, 256                                ; 10015F0A _ 81. F9, 00000100
        jl      ?_2431                                  ; 10015F10 _ 7C, E8
        jmp     ?_2435                                  ; 10015F12 _ EB, 16

?_2433: pop     edi                                     ; 10015F14 _ 5F
        pop     esi                                     ; 10015F15 _ 5E
        mov     dword [edx], eax                        ; 10015F16 _ 89. 02
        mov     eax, 3                                  ; 10015F18 _ B8, 00000003
        pop     ebx                                     ; 10015F1D _ 5B
        ret                                             ; 10015F1E _ C3

?_2434: mov     dword [edi], eax                        ; 10015F1F _ 89. 07
        pop     edi                                     ; 10015F21 _ 5F
        pop     esi                                     ; 10015F22 _ 5E
        mov     eax, 1                                  ; 10015F23 _ B8, 00000001
        pop     ebx                                     ; 10015F28 _ 5B
        ret                                             ; 10015F29 _ C3

?_2435: test    ebx, ebx                                ; 10015F2A _ 85. DB
        jz      ?_2438                                  ; 10015F2C _ 74, 24
        mov     edx, dword [?_5539]                     ; 10015F2E _ 8B. 15, 10035450(d)
        mov     eax, dword [?_5669]                     ; 10015F34 _ A1, 100A8C34(d)
        xor     ecx, ecx                                ; 10015F39 _ 33. C9
        test    edx, edx                                ; 10015F3B _ 85. D2
        jle     ?_2438                                  ; 10015F3D _ 7E, 13
?_2436: cmp     word [eax], 0                           ; 10015F3F _ 66: 83. 38, 00
        jz      ?_2437                                  ; 10015F43 _ 74, 06
        cmp     dword [eax+2H], esi                     ; 10015F45 _ 39. 70, 02
        jz      ?_2439                                  ; 10015F48 _ 74, 0E
        inc     ecx                                     ; 10015F4A _ 41
?_2437: add     eax, 67                                 ; 10015F4B _ 83. C0, 43
        cmp     ecx, edx                                ; 10015F4E _ 3B. CA
        jl      ?_2436                                  ; 10015F50 _ 7C, ED
?_2438: pop     edi                                     ; 10015F52 _ 5F
        pop     esi                                     ; 10015F53 _ 5E
        xor     eax, eax                                ; 10015F54 _ 33. C0
        pop     ebx                                     ; 10015F56 _ 5B
        ret                                             ; 10015F57 _ C3
