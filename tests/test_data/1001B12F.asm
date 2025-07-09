; ---- 1001B12F ----
?_3241: ; Local function
        push    ebp                                     ; 1001B12F _ 55
        mov     ebp, esp                                ; 1001B130 _ 8B. EC
        push    ecx                                     ; 1001B132 _ 51
        cmp     dword [?_5589], 0                       ; 1001B133 _ 83. 3D, 100355BC(d), 00
        push    ebx                                     ; 1001B13A _ 53
        jnz     ?_3242                                  ; 1001B13B _ 75, 1D
        mov     eax, dword [ebp+8H]                     ; 1001B13D _ 8B. 45, 08
        cmp     eax, 97                                 ; 1001B140 _ 83. F8, 61
        jl      ?_3250                                  ; 1001B143 _ 0F 8C, 000000AF
        cmp     eax, 122                                ; 1001B149 _ 83. F8, 7A
        jg      ?_3250                                  ; 1001B14C _ 0F 8F, 000000A6
        sub     eax, 32                                 ; 1001B152 _ 83. E8, 20
        jmp     ?_3250                                  ; 1001B155 _ E9, 0000009E

?_3242: mov     ebx, dword [ebp+8H]                     ; 1001B15A _ 8B. 5D, 08
        cmp     ebx, 256                                ; 1001B15D _ 81. FB, 00000100
        jge     ?_3246                                  ; 1001B163 _ 7D, 28
        cmp     dword [?_5477], 1                       ; 1001B165 _ 83. 3D, 10033EE0(d), 01
        jle     ?_3243                                  ; 1001B16C _ 7E, 0C
        push    2                                       ; 1001B16E _ 6A, 02
        push    ebx                                     ; 1001B170 _ 53
        call    ?_4068                                  ; 1001B171 _ E8, 000046DF
        pop     ecx                                     ; 1001B176 _ 59
        pop     ecx                                     ; 1001B177 _ 59
        jmp     ?_3244                                  ; 1001B178 _ EB, 0B

?_3243: mov     eax, dword [?_5475]                     ; 1001B17A _ A1, 10033CD4(d)
        mov     al, byte [eax+ebx*2]                    ; 1001B17F _ 8A. 04 58
        and     eax, 02H                                ; 1001B182 _ 83. E0, 02
?_3244: test    eax, eax                                ; 1001B185 _ 85. C0
        jnz     ?_3246                                  ; 1001B187 _ 75, 04
?_3245: mov     eax, ebx                                ; 1001B189 _ 8B. C3
        jmp     ?_3250                                  ; 1001B18B _ EB, 6B

?_3246: mov     edx, dword [?_5475]                     ; 1001B18D _ 8B. 15, 10033CD4(d)
        mov     eax, ebx                                ; 1001B193 _ 8B. C3
        sar     eax, 8                                  ; 1001B195 _ C1. F8, 08
        movzx   ecx, al                                 ; 1001B198 _ 0F B6. C8
        test    byte [edx+ecx*2+1H], 0FFFFFF80H         ; 1001B19B _ F6. 44 4A, 01, 80
        jz      ?_3247                                  ; 1001B1A0 _ 74, 0E
        and     byte [ebp+0AH], 00H                     ; 1001B1A2 _ 80. 65, 0A, 00
        mov     byte [ebp+8H], al                       ; 1001B1A6 _ 88. 45, 08
        mov     byte [ebp+9H], bl                       ; 1001B1A9 _ 88. 5D, 09
        push    2                                       ; 1001B1AC _ 6A, 02
        jmp     ?_3248                                  ; 1001B1AE _ EB, 09

?_3247: and     byte [ebp+9H], 00H                      ; 1001B1B0 _ 80. 65, 09, 00
        mov     byte [ebp+8H], bl                       ; 1001B1B4 _ 88. 5D, 08
        push    1                                       ; 1001B1B7 _ 6A, 01
?_3248: pop     eax                                     ; 1001B1B9 _ 58
        lea     ecx, [ebp-4H]                           ; 1001B1BA _ 8D. 4D, FC
        push    1                                       ; 1001B1BD _ 6A, 01
        push    0                                       ; 1001B1BF _ 6A, 00
        push    3                                       ; 1001B1C1 _ 6A, 03
        push    ecx                                     ; 1001B1C3 _ 51
        push    eax                                     ; 1001B1C4 _ 50
        lea     eax, [ebp+8H]                           ; 1001B1C5 _ 8D. 45, 08
        push    eax                                     ; 1001B1C8 _ 50
        push    512                                     ; 1001B1C9 _ 68, 00000200
        push    dword [?_5589]                          ; 1001B1CE _ FF. 35, 100355BC(d)
        call    ?_4050                                  ; 1001B1D4 _ E8, 00004458
        add     esp, 32                                 ; 1001B1D9 _ 83. C4, 20
        test    eax, eax                                ; 1001B1DC _ 85. C0
        jz      ?_3245                                  ; 1001B1DE _ 74, A9
        cmp     eax, 1                                  ; 1001B1E0 _ 83. F8, 01
        jnz     ?_3249                                  ; 1001B1E3 _ 75, 06
        movzx   eax, byte [ebp-4H]                      ; 1001B1E5 _ 0F B6. 45, FC
        jmp     ?_3250                                  ; 1001B1E9 _ EB, 0D

?_3249: movzx   eax, byte [ebp-3H]                      ; 1001B1EB _ 0F B6. 45, FD
        movzx   ecx, byte [ebp-4H]                      ; 1001B1EF _ 0F B6. 4D, FC
        shl     eax, 8                                  ; 1001B1F3 _ C1. E0, 08
        or      eax, ecx                                ; 1001B1F6 _ 0B. C1
?_3250: pop     ebx                                     ; 1001B1F8 _ 5B
        leave                                           ; 1001B1F9 _ C9
        ret                                             ; 1001B1FA _ C3

        int 3    ; breakpoint or filler                 ; 1001B1FB _ CC
        int 3    ; breakpoint or filler                 ; 1001B1FC _ CC
        int 3    ; breakpoint or filler                 ; 1001B1FD _ CC
        int 3    ; breakpoint or filler                 ; 1001B1FE _ CC
        int 3    ; breakpoint or filler                 ; 1001B1FF _ CC
?_3251: push    ebp                                     ; 1001B200 _ 55
        mov     ebp, esp                                ; 1001B201 _ 8B. EC
        push    edi                                     ; 1001B203 _ 57
        push    esi                                     ; 1001B204 _ 56
        mov     esi, dword [ebp+0CH]                    ; 1001B205 _ 8B. 75, 0C
        mov     ecx, dword [ebp+10H]                    ; 1001B208 _ 8B. 4D, 10
        mov     edi, dword [ebp+8H]                     ; 1001B20B _ 8B. 7D, 08
        mov     eax, ecx                                ; 1001B20E _ 8B. C1
        mov     edx, ecx                                ; 1001B210 _ 8B. D1
        add     eax, esi                                ; 1001B212 _ 03. C6
        cmp     edi, esi                                ; 1001B214 _ 3B. FE
        jbe     ?_3252                                  ; 1001B216 _ 76, 08
        cmp     edi, eax                                ; 1001B218 _ 3B. F8
        jc      ?_3274                                  ; 1001B21A _ 0F 82, 00000178
?_3252: test    edi, 3H                                 ; 1001B220 _ F7. C7, 00000003
        jnz     ?_3253                                  ; 1001B226 _ 75, 14
        shr     ecx, 2                                  ; 1001B228 _ C1. E9, 02
        and     edx, 03H                                ; 1001B22B _ 83. E2, 03
        cmp     ecx, 8                                  ; 1001B22E _ 83. F9, 08
        jc      ?_3255                                  ; 1001B231 _ 72, 29
        rep movsd                                       ; 1001B233 _ F3: A5
        jmp     near [?_3269+edx*4]                     ; 1001B235 _ FF. 24 95, 1001B348(d)

?_3253: mov     eax, edi                                ; 1001B23C _ 8B. C7
        mov     edx, 3                                  ; 1001B23E _ BA, 00000003
        sub     ecx, 4                                  ; 1001B243 _ 83. E9, 04
        jc      ?_3254                                  ; 1001B246 _ 72, 0C
        and     eax, 03H                                ; 1001B248 _ 83. E0, 03
        add     ecx, eax                                ; 1001B24B _ 03. C8
        jmp     near [?_3256+eax*4]                     ; 1001B24D _ FF. 24 85, 1001B260(d)

?_3254: jmp     near [?_3270+ecx*4]                     ; 1001B254 _ FF. 24 8D, 1001B358(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
?_3255:
; Warning: Label out of phase with instruction. Possibly spurious
; ?_3256; Misplaced symbol at address 0001A260
        jmp     near [?_3260+ecx*4]                     ; 1001B25C _ FF. 24 8D, 1001B2DC(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
; Error: Relocation source does not match address or operand field
; Note: No jump seems to point here
;       jo      18H                                     ; 1001B264 _ 70(d) Misplaced relocation., B2
        dd ?_3257
; Error: Relocation source does not match address or operand field
;       pushfd                                          ; 1001B268 _ 9C(d) Misplaced relocation.
        dd ?_3258
; Error: Relocation source does not match address or operand field
; Warning: Label out of phase with instruction. Possibly spurious
; ?_3257; Misplaced symbol at address 0001A270
;       sal     byte [edx-2EDCEFFFH], -118              ; 1001B26C _ C0(d) Misplaced relocation.. B2, D1231001, 8A
        dd ?_3259
        db 23H, 0D1H, 8AH
?_3257: and     edx, ecx                                ; 1001B270 _ 23. D1
        mov     al, byte [esi]                          ; 1001B272 _ 8A. 06
        mov     byte [edi], al                          ; 1001B274 _ 88. 07
        mov     al, byte [esi+1H]                       ; 1001B276 _ 8A. 46, 01
        mov     byte [edi+1H], al                       ; 1001B279 _ 88. 47, 01
        mov     al, byte [esi+2H]                       ; 1001B27C _ 8A. 46, 02
        shr     ecx, 2                                  ; 1001B27F _ C1. E9, 02
        mov     byte [edi+2H], al                       ; 1001B282 _ 88. 47, 02

; Note: No jump seems to point here
        add     esi, 3                                  ; 1001B285 _ 83. C6, 03
        add     edi, 3                                  ; 1001B288 _ 83. C7, 03
        cmp     ecx, 8                                  ; 1001B28B _ 83. F9, 08
        jc      ?_3255                                  ; 1001B28E _ 72, CC
        rep movsd                                       ; 1001B290 _ F3: A5
        jmp     near [?_3269+edx*4]                     ; 1001B292 _ FF. 24 95, 1001B348(d)

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4
?_3258: and     edx, ecx                                ; 1001B29C _ 23. D1
        mov     al, byte [esi]                          ; 1001B29E _ 8A. 06
        mov     byte [edi], al                          ; 1001B2A0 _ 88. 07
        mov     al, byte [esi+1H]                       ; 1001B2A2 _ 8A. 46, 01
        shr     ecx, 2                                  ; 1001B2A5 _ C1. E9, 02
        mov     byte [edi+1H], al                       ; 1001B2A8 _ 88. 47, 01
        add     esi, 2                                  ; 1001B2AB _ 83. C6, 02
        add     edi, 2                                  ; 1001B2AE _ 83. C7, 02
        cmp     ecx, 8                                  ; 1001B2B1 _ 83. F9, 08
        jc      ?_3255                                  ; 1001B2B4 _ 72, A6
        rep movsd                                       ; 1001B2B6 _ F3: A5
        jmp     near [?_3269+edx*4]                     ; 1001B2B8 _ FF. 24 95, 1001B348(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3259: and     edx, ecx                                ; 1001B2C0 _ 23. D1
        mov     al, byte [esi]                          ; 1001B2C2 _ 8A. 06
        mov     byte [edi], al                          ; 1001B2C4 _ 88. 07
        inc     esi                                     ; 1001B2C6 _ 46
        shr     ecx, 2                                  ; 1001B2C7 _ C1. E9, 02
        inc     edi                                     ; 1001B2CA _ 47
        cmp     ecx, 8                                  ; 1001B2CB _ 83. F9, 08
        jc      ?_3255                                  ; 1001B2CE _ 72, 8C
        rep movsd                                       ; 1001B2D0 _ F3: A5
        jmp     near [?_3269+edx*4]                     ; 1001B2D2 _ FF. 24 95, 1001B348(d)

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4

?_3260:                                                 ; switch/case jump table
        dd ?_3268                                       ; 1001B2DC _ 1001B33F (d)
        dd ?_3267                                       ; 1001B2E0 _ 1001B32C (d)
        dd ?_3266                                       ; 1001B2E4 _ 1001B324 (d)
        dd ?_3265                                       ; 1001B2E8 _ 1001B31C (d)
        dd ?_3264                                       ; 1001B2EC _ 1001B314 (d)
        dd ?_3263                                       ; 1001B2F0 _ 1001B30C (d)
        dd ?_3262                                       ; 1001B2F4 _ 1001B304 (d)
        dd ?_3261                                       ; 1001B2F8 _ 1001B2FC (d)
?_3261: mov     eax, dword [esi+ecx*4-1CH]              ; 1001B2FC _ 8B. 44 8E, E4
        mov     dword [edi+ecx*4-1CH], eax              ; 1001B300 _ 89. 44 8F, E4
?_3262: mov     eax, dword [esi+ecx*4-18H]              ; 1001B304 _ 8B. 44 8E, E8
        mov     dword [edi+ecx*4-18H], eax              ; 1001B308 _ 89. 44 8F, E8
?_3263: mov     eax, dword [esi+ecx*4-14H]              ; 1001B30C _ 8B. 44 8E, EC
        mov     dword [edi+ecx*4-14H], eax              ; 1001B310 _ 89. 44 8F, EC
?_3264: mov     eax, dword [esi+ecx*4-10H]              ; 1001B314 _ 8B. 44 8E, F0
        mov     dword [edi+ecx*4-10H], eax              ; 1001B318 _ 89. 44 8F, F0
?_3265: mov     eax, dword [esi+ecx*4-0CH]              ; 1001B31C _ 8B. 44 8E, F4
        mov     dword [edi+ecx*4-0CH], eax              ; 1001B320 _ 89. 44 8F, F4
?_3266: mov     eax, dword [esi+ecx*4-8H]               ; 1001B324 _ 8B. 44 8E, F8
        mov     dword [edi+ecx*4-8H], eax               ; 1001B328 _ 89. 44 8F, F8
?_3267: mov     eax, dword [esi+ecx*4-4H]               ; 1001B32C _ 8B. 44 8E, FC
        mov     dword [edi+ecx*4-4H], eax               ; 1001B330 _ 89. 44 8F, FC
        lea     eax, [ecx*4]                            ; 1001B334 _ 8D. 04 8D, 00000000
        add     esi, eax                                ; 1001B33B _ 03. F0
        add     edi, eax                                ; 1001B33D _ 03. F8
?_3268: jmp     near [?_3269+edx*4]                     ; 1001B33F _ FF. 24 95, 1001B348(d)

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   8

?_3269:                                                 ; switch/case jump table
        dd ?_3270                                       ; 1001B348 _ 1001B358 (d)
        dd ?_3271                                       ; 1001B34C _ 1001B360 (d)
        dd ?_3272                                       ; 1001B350 _ 1001B36C (d)
        dd ?_3273                                       ; 1001B354 _ 1001B380 (d)
?_3270: mov     eax, dword [ebp+8H]                     ; 1001B358 _ 8B. 45, 08
        pop     esi                                     ; 1001B35B _ 5E
        pop     edi                                     ; 1001B35C _ 5F
        leave                                           ; 1001B35D _ C9
        ret                                             ; 1001B35E _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3271: mov     al, byte [esi]                          ; 1001B360 _ 8A. 06
        mov     byte [edi], al                          ; 1001B362 _ 88. 07
        mov     eax, dword [ebp+8H]                     ; 1001B364 _ 8B. 45, 08
        pop     esi                                     ; 1001B367 _ 5E
        pop     edi                                     ; 1001B368 _ 5F
        leave                                           ; 1001B369 _ C9
        ret                                             ; 1001B36A _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
?_3272: mov     al, byte [esi]                          ; 1001B36C _ 8A. 06
        mov     byte [edi], al                          ; 1001B36E _ 88. 07
        mov     al, byte [esi+1H]                       ; 1001B370 _ 8A. 46, 01
        mov     byte [edi+1H], al                       ; 1001B373 _ 88. 47, 01
        mov     eax, dword [ebp+8H]                     ; 1001B376 _ 8B. 45, 08
        pop     esi                                     ; 1001B379 _ 5E
        pop     edi                                     ; 1001B37A _ 5F
        leave                                           ; 1001B37B _ C9
        ret                                             ; 1001B37C _ C3

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   8
?_3273: mov     al, byte [esi]                          ; 1001B380 _ 8A. 06
        mov     byte [edi], al                          ; 1001B382 _ 88. 07
        mov     al, byte [esi+1H]                       ; 1001B384 _ 8A. 46, 01
        mov     byte [edi+1H], al                       ; 1001B387 _ 88. 47, 01
        mov     al, byte [esi+2H]                       ; 1001B38A _ 8A. 46, 02
        mov     byte [edi+2H], al                       ; 1001B38D _ 88. 47, 02
        mov     eax, dword [ebp+8H]                     ; 1001B390 _ 8B. 45, 08
        pop     esi                                     ; 1001B393 _ 5E
        pop     edi                                     ; 1001B394 _ 5F
        leave                                           ; 1001B395 _ C9
        ret                                             ; 1001B396 _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3274: lea     esi, [ecx+esi-4H]                       ; 1001B398 _ 8D. 74 31, FC
        lea     edi, [ecx+edi-4H]                       ; 1001B39C _ 8D. 7C 39, FC
        test    edi, 3H                                 ; 1001B3A0 _ F7. C7, 00000003
        jnz     ?_3276                                  ; 1001B3A6 _ 75, 24
        shr     ecx, 2                                  ; 1001B3A8 _ C1. E9, 02
        and     edx, 03H                                ; 1001B3AB _ 83. E2, 03
        cmp     ecx, 8                                  ; 1001B3AE _ 83. F9, 08
        jc      ?_3275                                  ; 1001B3B1 _ 72, 0D
        std                                             ; 1001B3B3 _ FD
        rep movsd                                       ; 1001B3B4 _ F3: A5
        cld                                             ; 1001B3B6 _ FC
        jmp     near [?_3291+edx*4]                     ; 1001B3B7 _ FF. 24 95, 1001B4E0(d)

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   8
?_3275: neg     ecx                                     ; 1001B3C0 _ F7. D9
        jmp     near [?_3282+ecx*4]                     ; 1001B3C2 _ FF. 24 8D, 1001B490(d)

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4
?_3276: mov     eax, edi                                ; 1001B3CC _ 8B. C7
        mov     edx, 3                                  ; 1001B3CE _ BA, 00000003
        cmp     ecx, 4                                  ; 1001B3D3 _ 83. F9, 04
        jc      ?_3277                                  ; 1001B3D6 _ 72, 0C
        and     eax, 03H                                ; 1001B3D8 _ 83. E0, 03
        sub     ecx, eax                                ; 1001B3DB _ 2B. C8
        jmp     near [?_3278+eax*4]                     ; 1001B3DD _ FF. 24 85, 1001B3E8(d)

?_3277:
; Warning: Label out of phase with instruction. Possibly spurious
; ?_3278; Misplaced symbol at address 0001A3E8
        jmp     near [?_3291+ecx*4]                     ; 1001B3E4 _ FF. 24 8D, 1001B4E0(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
; Error: Relocation source does not match address or operand field
; Note: No jump seems to point here
;       clc                                             ; 1001B3EC _ F8(d) Misplaced relocation.
        dd ?_3279
; Error: Relocation source does not match address or operand field
;       sbb     byte [ecx+eax+1B44010H], dh             ; 1001B3F0 _ 18(d) Misplaced relocation.. B4 01, 01B44010
        dd ?_3280
        dd ?_3281
?_3279: mov     al, byte [esi+3H]                       ; 1001B3F8 _ 8A. 46, 03
        and     edx, ecx                                ; 1001B3FB _ 23. D1
        mov     byte [edi+3H], al                       ; 1001B3FD _ 88. 47, 03
        dec     esi                                     ; 1001B400 _ 4E
        shr     ecx, 2                                  ; 1001B401 _ C1. E9, 02
        dec     edi                                     ; 1001B404 _ 4F
        cmp     ecx, 8                                  ; 1001B405 _ 83. F9, 08
        jc      ?_3275                                  ; 1001B408 _ 72, B6
        std                                             ; 1001B40A _ FD
        rep movsd                                       ; 1001B40B _ F3: A5
        cld                                             ; 1001B40D _ FC
        jmp     near [?_3291+edx*4]                     ; 1001B40E _ FF. 24 95, 1001B4E0(d)

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   8
?_3280: mov     al, byte [esi+3H]                       ; 1001B418 _ 8A. 46, 03
        and     edx, ecx                                ; 1001B41B _ 23. D1
        mov     byte [edi+3H], al                       ; 1001B41D _ 88. 47, 03
        mov     al, byte [esi+2H]                       ; 1001B420 _ 8A. 46, 02
        shr     ecx, 2                                  ; 1001B423 _ C1. E9, 02
        mov     byte [edi+2H], al                       ; 1001B426 _ 88. 47, 02
        sub     esi, 2                                  ; 1001B429 _ 83. EE, 02
        sub     edi, 2                                  ; 1001B42C _ 83. EF, 02
        cmp     ecx, 8                                  ; 1001B42F _ 83. F9, 08
        jc      ?_3275                                  ; 1001B432 _ 72, 8C
        std                                             ; 1001B434 _ FD
        rep movsd                                       ; 1001B435 _ F3: A5
        cld                                             ; 1001B437 _ FC
        jmp     near [?_3291+edx*4]                     ; 1001B438 _ FF. 24 95, 1001B4E0(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3281: mov     al, byte [esi+3H]                       ; 1001B440 _ 8A. 46, 03
        and     edx, ecx                                ; 1001B443 _ 23. D1
        mov     byte [edi+3H], al                       ; 1001B445 _ 88. 47, 03
        mov     al, byte [esi+2H]                       ; 1001B448 _ 8A. 46, 02
        mov     byte [edi+2H], al                       ; 1001B44B _ 88. 47, 02
        mov     al, byte [esi+1H]                       ; 1001B44E _ 8A. 46, 01
        shr     ecx, 2                                  ; 1001B451 _ C1. E9, 02
        mov     byte [edi+1H], al                       ; 1001B454 _ 88. 47, 01
        sub     esi, 3                                  ; 1001B457 _ 83. EE, 03
        sub     edi, 3                                  ; 1001B45A _ 83. EF, 03
        cmp     ecx, 8                                  ; 1001B45D _ 83. F9, 08
        jc      ?_3275                                  ; 1001B460 _ 0F 82, FFFFFF5A
        std                                             ; 1001B466 _ FD
        rep movsd                                       ; 1001B467 _ F3: A5
        cld                                             ; 1001B469 _ FC
        jmp     near [?_3291+edx*4]                     ; 1001B46A _ FF. 24 95, 1001B4E0(d)

        db 8DH, 49H, 00H                                ; 1001B471 _ .I.
        dd ?_3283                                       ; 1001B474 _ 1001B494 (d)
        dd ?_3284                                       ; 1001B478 _ 1001B49C (d)
        dd ?_3285                                       ; 1001B47C _ 1001B4A4 (d)
        dd ?_3286                                       ; 1001B480 _ 1001B4AC (d)
        dd ?_3287                                       ; 1001B484 _ 1001B4B4 (d)
        dd ?_3288                                       ; 1001B488 _ 1001B4BC (d)
        dd ?_3289                                       ; 1001B48C _ 1001B4C4 (d)

?_3282:                                                 ; switch/case jump table
        dd ?_3290                                       ; 1001B490 _ 1001B4D7 (d)
?_3283: mov     eax, dword [esi+ecx*4+1CH]              ; 1001B494 _ 8B. 44 8E, 1C
        mov     dword [edi+ecx*4+1CH], eax              ; 1001B498 _ 89. 44 8F, 1C
?_3284: mov     eax, dword [esi+ecx*4+18H]              ; 1001B49C _ 8B. 44 8E, 18
        mov     dword [edi+ecx*4+18H], eax              ; 1001B4A0 _ 89. 44 8F, 18
?_3285: mov     eax, dword [esi+ecx*4+14H]              ; 1001B4A4 _ 8B. 44 8E, 14
        mov     dword [edi+ecx*4+14H], eax              ; 1001B4A8 _ 89. 44 8F, 14
?_3286: mov     eax, dword [esi+ecx*4+10H]              ; 1001B4AC _ 8B. 44 8E, 10
        mov     dword [edi+ecx*4+10H], eax              ; 1001B4B0 _ 89. 44 8F, 10
?_3287: mov     eax, dword [esi+ecx*4+0CH]              ; 1001B4B4 _ 8B. 44 8E, 0C
        mov     dword [edi+ecx*4+0CH], eax              ; 1001B4B8 _ 89. 44 8F, 0C
?_3288: mov     eax, dword [esi+ecx*4+8H]               ; 1001B4BC _ 8B. 44 8E, 08
        mov     dword [edi+ecx*4+8H], eax               ; 1001B4C0 _ 89. 44 8F, 08
?_3289: mov     eax, dword [esi+ecx*4+4H]               ; 1001B4C4 _ 8B. 44 8E, 04
        mov     dword [edi+ecx*4+4H], eax               ; 1001B4C8 _ 89. 44 8F, 04
        lea     eax, [ecx*4]                            ; 1001B4CC _ 8D. 04 8D, 00000000
        add     esi, eax                                ; 1001B4D3 _ 03. F0
        add     edi, eax                                ; 1001B4D5 _ 03. F8
?_3290: jmp     near [?_3291+edx*4]                     ; 1001B4D7 _ FF. 24 95, 1001B4E0(d)

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   8

?_3291:                                                 ; switch/case jump table
        dd ?_3292                                       ; 1001B4E0 _ 1001B4F0 (d)
        dd ?_3293                                       ; 1001B4E4 _ 1001B4F8 (d)
        dd ?_3294                                       ; 1001B4E8 _ 1001B508 (d)
        dd ?_3295                                       ; 1001B4EC _ 1001B51C (d)
?_3292: mov     eax, dword [ebp+8H]                     ; 1001B4F0 _ 8B. 45, 08
        pop     esi                                     ; 1001B4F3 _ 5E
        pop     edi                                     ; 1001B4F4 _ 5F
        leave                                           ; 1001B4F5 _ C9
        ret                                             ; 1001B4F6 _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3293: mov     al, byte [esi+3H]                       ; 1001B4F8 _ 8A. 46, 03
        mov     byte [edi+3H], al                       ; 1001B4FB _ 88. 47, 03
        mov     eax, dword [ebp+8H]                     ; 1001B4FE _ 8B. 45, 08
        pop     esi                                     ; 1001B501 _ 5E
        pop     edi                                     ; 1001B502 _ 5F
        leave                                           ; 1001B503 _ C9
        ret                                             ; 1001B504 _ C3

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   8
?_3294: mov     al, byte [esi+3H]                       ; 1001B508 _ 8A. 46, 03
        mov     byte [edi+3H], al                       ; 1001B50B _ 88. 47, 03
        mov     al, byte [esi+2H]                       ; 1001B50E _ 8A. 46, 02
        mov     byte [edi+2H], al                       ; 1001B511 _ 88. 47, 02
        mov     eax, dword [ebp+8H]                     ; 1001B514 _ 8B. 45, 08
        pop     esi                                     ; 1001B517 _ 5E
        pop     edi                                     ; 1001B518 _ 5F
        leave                                           ; 1001B519 _ C9
        ret                                             ; 1001B51A _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
?_3295: mov     al, byte [esi+3H]                       ; 1001B51C _ 8A. 46, 03
        mov     byte [edi+3H], al                       ; 1001B51F _ 88. 47, 03
        mov     al, byte [esi+2H]                       ; 1001B522 _ 8A. 46, 02
        mov     byte [edi+2H], al                       ; 1001B525 _ 88. 47, 02
        mov     al, byte [esi+1H]                       ; 1001B528 _ 8A. 46, 01
        mov     byte [edi+1H], al                       ; 1001B52B _ 88. 47, 01
        mov     eax, dword [ebp+8H]                     ; 1001B52E _ 8B. 45, 08
        pop     esi                                     ; 1001B531 _ 5E
        pop     edi                                     ; 1001B532 _ 5F
        leave                                           ; 1001B533 _ C9
        ret                                             ; 1001B534 _ C3
