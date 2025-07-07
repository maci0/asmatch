; ---- 10001021 ----
?_0002: ; Local function
        push    ebx                                     ; 10001021 _ 53
        mov     ebx, dword [esp+18H]                    ; 10001022 _ 8B. 5C 24, 18
        test    ebx, ebx                                ; 10001026 _ 85. DB
        jbe     ?_0009                                  ; 10001028 _ 0F 86, 000000F5
        push    ebp                                     ; 1000102E _ 55
?_0003: cmp     ebx, 5552                               ; 1000102F _ 81. FB, 000015B0
        mov     eax, ebx                                ; 10001035 _ 8B. C3
        jc      ?_0004                                  ; 10001037 _ 72, 05
        mov     eax, 5552                               ; 10001039 _ B8, 000015B0
?_0004: sub     ebx, eax                                ; 1000103E _ 2B. D8
        cmp     eax, 16                                 ; 10001040 _ 83. F8, 10
        jl      ?_0006                                  ; 10001043 _ 0F 8C, 000000A7
        mov     ebp, eax                                ; 10001049 _ 8B. E8
        shr     ebp, 4                                  ; 1000104B _ C1. ED, 04
        mov     edx, ebp                                ; 1000104E _ 8B. D5
        neg     edx                                     ; 10001050 _ F7. DA
        shl     edx, 4                                  ; 10001052 _ C1. E2, 04
        add     eax, edx                                ; 10001055 _ 03. C2
?_0005: xor     edx, edx                                ; 10001057 _ 33. D2
        mov     dl, byte [esi]                          ; 10001059 _ 8A. 16
        add     esi, 16                                 ; 1000105B _ 83. C6, 10
        add     ecx, edx                                ; 1000105E _ 03. CA
        xor     edx, edx                                ; 10001060 _ 33. D2
        mov     dl, byte [esi-0FH]                      ; 10001062 _ 8A. 56, F1
        add     edi, ecx                                ; 10001065 _ 03. F9
        add     ecx, edx                                ; 10001067 _ 03. CA
        xor     edx, edx                                ; 10001069 _ 33. D2
        mov     dl, byte [esi-0EH]                      ; 1000106B _ 8A. 56, F2
        add     edi, ecx                                ; 1000106E _ 03. F9
        add     ecx, edx                                ; 10001070 _ 03. CA
        xor     edx, edx                                ; 10001072 _ 33. D2
        mov     dl, byte [esi-0DH]                      ; 10001074 _ 8A. 56, F3
        add     edi, ecx                                ; 10001077 _ 03. F9
        add     ecx, edx                                ; 10001079 _ 03. CA
        xor     edx, edx                                ; 1000107B _ 33. D2
        mov     dl, byte [esi-0CH]                      ; 1000107D _ 8A. 56, F4
        add     edi, ecx                                ; 10001080 _ 03. F9
        add     ecx, edx                                ; 10001082 _ 03. CA
        xor     edx, edx                                ; 10001084 _ 33. D2
        mov     dl, byte [esi-0BH]                      ; 10001086 _ 8A. 56, F5
        add     edi, ecx                                ; 10001089 _ 03. F9
        add     ecx, edx                                ; 1000108B _ 03. CA
        xor     edx, edx                                ; 1000108D _ 33. D2
        mov     dl, byte [esi-0AH]                      ; 1000108F _ 8A. 56, F6
        add     edi, ecx                                ; 10001092 _ 03. F9
        add     ecx, edx                                ; 10001094 _ 03. CA
        xor     edx, edx                                ; 10001096 _ 33. D2
        mov     dl, byte [esi-9H]                       ; 10001098 _ 8A. 56, F7
        add     edi, ecx                                ; 1000109B _ 03. F9
        add     ecx, edx                                ; 1000109D _ 03. CA
        xor     edx, edx                                ; 1000109F _ 33. D2
        mov     dl, byte [esi-8H]                       ; 100010A1 _ 8A. 56, F8
        add     edi, ecx                                ; 100010A4 _ 03. F9
        add     ecx, edx                                ; 100010A6 _ 03. CA
        xor     edx, edx                                ; 100010A8 _ 33. D2
        mov     dl, byte [esi-7H]                       ; 100010AA _ 8A. 56, F9
        add     edi, ecx                                ; 100010AD _ 03. F9
        add     ecx, edx                                ; 100010AF _ 03. CA
        xor     edx, edx                                ; 100010B1 _ 33. D2
        mov     dl, byte [esi-6H]                       ; 100010B3 _ 8A. 56, FA
        add     edi, ecx                                ; 100010B6 _ 03. F9
        add     ecx, edx                                ; 100010B8 _ 03. CA
        xor     edx, edx                                ; 100010BA _ 33. D2
        mov     dl, byte [esi-5H]                       ; 100010BC _ 8A. 56, FB
        add     edi, ecx                                ; 100010BF _ 03. F9
        add     ecx, edx                                ; 100010C1 _ 03. CA
        xor     edx, edx                                ; 100010C3 _ 33. D2
        mov     dl, byte [esi-4H]                       ; 100010C5 _ 8A. 56, FC
        add     edi, ecx                                ; 100010C8 _ 03. F9
        add     ecx, edx                                ; 100010CA _ 03. CA
        xor     edx, edx                                ; 100010CC _ 33. D2
        mov     dl, byte [esi-3H]                       ; 100010CE _ 8A. 56, FD
        add     edi, ecx                                ; 100010D1 _ 03. F9
        add     ecx, edx                                ; 100010D3 _ 03. CA
        xor     edx, edx                                ; 100010D5 _ 33. D2
        mov     dl, byte [esi-2H]                       ; 100010D7 _ 8A. 56, FE
        add     edi, ecx                                ; 100010DA _ 03. F9
        add     ecx, edx                                ; 100010DC _ 03. CA
        xor     edx, edx                                ; 100010DE _ 33. D2
        mov     dl, byte [esi-1H]                       ; 100010E0 _ 8A. 56, FF
        add     edi, ecx                                ; 100010E3 _ 03. F9
        add     ecx, edx                                ; 100010E5 _ 03. CA
        add     edi, ecx                                ; 100010E7 _ 03. F9
        dec     ebp                                     ; 100010E9 _ 4D
        jne     ?_0005                                  ; 100010EA _ 0F 85, FFFFFF67
?_0006: test    eax, eax                                ; 100010F0 _ 85. C0
        jz      ?_0008                                  ; 100010F2 _ 74, 0C
?_0007: xor     edx, edx                                ; 100010F4 _ 33. D2
        mov     dl, byte [esi]                          ; 100010F6 _ 8A. 16
        add     ecx, edx                                ; 100010F8 _ 03. CA
        inc     esi                                     ; 100010FA _ 46
        add     edi, ecx                                ; 100010FB _ 03. F9
        dec     eax                                     ; 100010FD _ 48
        jnz     ?_0007                                  ; 100010FE _ 75, F4
?_0008: mov     eax, ecx                                ; 10001100 _ 8B. C1
        xor     edx, edx                                ; 10001102 _ 33. D2
        mov     ecx, 65521                              ; 10001104 _ B9, 0000FFF1
        div     ecx                                     ; 10001109 _ F7. F1
        mov     eax, edi                                ; 1000110B _ 8B. C7
        mov     edi, 65521                              ; 1000110D _ BF, 0000FFF1
        mov     ecx, edx                                ; 10001112 _ 8B. CA
        xor     edx, edx                                ; 10001114 _ 33. D2
        div     edi                                     ; 10001116 _ F7. F7
        test    ebx, ebx                                ; 10001118 _ 85. DB
        mov     edi, edx                                ; 1000111A _ 8B. FA
        ja      ?_0003                                  ; 1000111C _ 0F 87, FFFFFF0D
        pop     ebp                                     ; 10001122 _ 5D
?_0009: mov     eax, edi                                ; 10001123 _ 8B. C7
        pop     ebx                                     ; 10001125 _ 5B
        shl     eax, 16                                 ; 10001126 _ C1. E0, 10
        pop     edi                                     ; 10001129 _ 5F
        or      eax, ecx                                ; 1000112A _ 0B. C1
        pop     esi                                     ; 1000112C _ 5E
        ret                                             ; 1000112D _ C3

        nop                                             ; 1000112E _ 90
        nop                                             ; 1000112F _ 90
?_0010: sub     esp, 36                                 ; 10001130 _ 83. EC, 24
        push    esi                                     ; 10001133 _ 56
        push    0                                       ; 10001134 _ 6A, 00
        push    2                                       ; 10001136 _ 6A, 02
        push    2                                       ; 10001138 _ 6A, 02
        mov     dword [esp+10H], 1                      ; 1000113A _ C7. 44 24, 10, 00000001
        call    WS2_32_Ordinal_23                       ; 10001142 _ E8, 0001903D
        mov     esi, eax                                ; 10001147 _ 8B. F0
        lea     eax, [esp+4H]                           ; 10001149 _ 8D. 44 24, 04
        push    4                                       ; 1000114D _ 6A, 04
        push    eax                                     ; 1000114F _ 50
        push    32                                      ; 10001150 _ 6A, 20
        push    65535                                   ; 10001152 _ 68, 0000FFFF
        push    esi                                     ; 10001157 _ 56
        call    WS2_32_Ordinal_21                       ; 10001158 _ E8, 00019021
        push    0                                       ; 1000115D _ 6A, 00
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esp+0CH], 2                       ; 1000115F _ 66: C7. 44 24, 0C, 0002
        call    WS2_32_Ordinal_8                        ; 10001166 _ E8, 0001900D
        push    0                                       ; 1000116B _ 6A, 00
        mov     dword [esp+10H], eax                    ; 1000116D _ 89. 44 24, 10
        call    WS2_32_Ordinal_9                        ; 10001171 _ E8, 00018FFC
        lea     ecx, [esp+8H]                           ; 10001176 _ 8D. 4C 24, 08
        push    16                                      ; 1000117A _ 6A, 10
        push    ecx                                     ; 1000117C _ 51
        push    esi                                     ; 1000117D _ 56
        mov     word [esp+16H], ax                      ; 1000117E _ 66: 89. 44 24, 16
        call    WS2_32_Ordinal_2                        ; 10001183 _ E8, 00018FE4
        push    -1                                      ; 10001188 _ 6A, FF
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esp+1CH], 2                       ; 1000118A _ 66: C7. 44 24, 1C, 0002
        call    WS2_32_Ordinal_8                        ; 10001191 _ E8, 00018FE2
        mov     edx, dword [esp+2CH]                    ; 10001196 _ 8B. 54 24, 2C
        mov     dword [esp+1CH], eax                    ; 1000119A _ 89. 44 24, 1C
        push    edx                                     ; 1000119E _ 52
        call    WS2_32_Ordinal_9                        ; 1000119F _ E8, 00018FCE
        mov     ecx, dword [esp+30H]                    ; 100011A4 _ 8B. 4C 24, 30
        mov     word [esp+1AH], ax                      ; 100011A8 _ 66: 89. 44 24, 1A
        lea     eax, [esp+18H]                          ; 100011AD _ 8D. 44 24, 18
        push    16                                      ; 100011B1 _ 6A, 10
        push    eax                                     ; 100011B3 _ 50
        push    0                                       ; 100011B4 _ 6A, 00
        push    106                                     ; 100011B6 _ 6A, 6A
        push    ecx                                     ; 100011B8 _ 51
        push    esi                                     ; 100011B9 _ 56
        call    WS2_32_Ordinal_20                       ; 100011BA _ E8, 00018FA7
        push    esi                                     ; 100011BF _ 56
        call    WS2_32_Ordinal_3                        ; 100011C0 _ E8, 00018F9B
        push    1                                       ; 100011C5 _ 6A, 01
        push    ?_5056                                  ; 100011C7 _ 68, 10027058(d)
        push    335                                     ; 100011CC _ 68, 0000014F
        push    ?_5055                                  ; 100011D1 _ 68, 10027034(d)
        call    ?_0267                                  ; 100011D6 _ E8, 00002465
        add     esp, 16                                 ; 100011DB _ 83. C4, 10
        pop     esi                                     ; 100011DE _ 5E
        add     esp, 36                                 ; 100011DF _ 83. C4, 24
        ret                                             ; 100011E2 _ C3

        nop                                             ; 100011E3 _ 90
        nop                                             ; 100011E4 _ 90
        nop                                             ; 100011E5 _ 90
        nop                                             ; 100011E6 _ 90
        nop                                             ; 100011E7 _ 90
        nop                                             ; 100011E8 _ 90
        nop                                             ; 100011E9 _ 90
        nop                                             ; 100011EA _ 90
        nop                                             ; 100011EB _ 90
        nop                                             ; 100011EC _ 90
        nop                                             ; 100011ED _ 90
        nop                                             ; 100011EE _ 90
        nop                                             ; 100011EF _ 90
?_0011: mov     ecx, dword [esp+8H]                     ; 100011F0 _ 8B. 4C 24, 08
        test    ecx, ecx                                ; 100011F4 _ 85. C9
        jnz     ?_0012                                  ; 100011F6 _ 75, 03
        xor     eax, eax                                ; 100011F8 _ 33. C0
        ret                                             ; 100011FA _ C3

