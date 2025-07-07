; ---- 10004ABB ----
?_0427: ; Local function
        mov     edx, dword [esp+18H]                    ; 10004ABB _ 8B. 54 24, 18
        mov     eax, dword [esp+48H]                    ; 10004ABF _ 8B. 44 24, 48
        mov     ecx, dword [esp+14H]                    ; 10004AC3 _ 8B. 4C 24, 14
        mov     dword [ebx+20H], edx                    ; 10004AC7 _ 89. 53, 20
        mov     dword [ebx+1CH], ebp                    ; 10004ACA _ 89. 6B, 1C
        mov     esi, dword [eax]                        ; 10004ACD _ 8B. 30
        mov     ebp, dword [eax+8H]                     ; 10004ACF _ 8B. 68, 08
        mov     dword [eax+4H], ecx                     ; 10004AD2 _ 89. 48, 04
        mov     ecx, dword [esp+10H]                    ; 10004AD5 _ 8B. 4C 24, 10
        push    -2                                      ; 10004AD9 _ 6A, FE
        mov     edx, ecx                                ; 10004ADB _ 8B. D1
        mov     dword [eax], ecx                        ; 10004ADD _ 89. 08
        mov     ecx, dword [esp+48H]                    ; 10004ADF _ 8B. 4C 24, 48
        sub     edx, esi                                ; 10004AE3 _ 2B. D6
        add     ebp, edx                                ; 10004AE5 _ 03. EA
        push    eax                                     ; 10004AE7 _ 50
        mov     dword [eax+8H], ebp                     ; 10004AE8 _ 89. 68, 08
        push    ebx                                     ; 10004AEB _ 53
        mov     dword [ebx+34H], ecx                    ; 10004AEC _ 89. 4B, 34
        call    ?_0630                                  ; 10004AEF _ E8, 0000194C
        add     esp, 12                                 ; 10004AF4 _ 83. C4, 0C
        pop     edi                                     ; 10004AF7 _ 5F
        pop     esi                                     ; 10004AF8 _ 5E
        pop     ebp                                     ; 10004AF9 _ 5D
        pop     ebx                                     ; 10004AFA _ 5B
        add     esp, 48                                 ; 10004AFB _ 83. C4, 30
        ret                                             ; 10004AFE _ C3

        nop                                             ; 10004AFF _ 90

?_0428:                                                 ; switch/case jump table
        dd ?_0350                                       ; 10004B00 _ 10003E94 (d)
        dd ?_0357                                       ; 10004B04 _ 10003F8A (d)
        dd ?_0360                                       ; 10004B08 _ 10003FFD (d)
        dd ?_0373                                       ; 10004B0C _ 1000412C (d)
        dd ?_0376                                       ; 10004B10 _ 100041D5 (d)
        dd ?_0384                                       ; 10004B14 _ 100042BE (d)
        dd ?_0397                                       ; 10004B18 _ 1000450E (d)
        dd ?_0420                                       ; 10004B1C _ 100049CC (d)
        dd ?_0424                                       ; 10004B20 _ 10004A33 (d)
        dd ?_0426                                       ; 10004B24 _ 10004A77 (d)

?_0429:                                                 ; switch/case jump table
        dd ?_0354                                       ; 10004B28 _ 10003EF8 (d)
        dd ?_0355                                       ; 10004B2C _ 10003F16 (d)
        dd ?_0356                                       ; 10004B30 _ 10003F75 (d)
        dd ?_0403                                       ; 10004B34 _ 1000462F (d)

; Filling space: 8H
; Filler type: NOP
;       db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H

ALIGN   16
?_0430: push    esi                                     ; 10004B40 _ 56
        mov     esi, dword [esp+0CH]                    ; 10004B41 _ 8B. 74 24, 0C
        push    edi                                     ; 10004B45 _ 57
        mov     edi, dword [esp+0CH]                    ; 10004B46 _ 8B. 7C 24, 0C
        push    0                                       ; 10004B4A _ 6A, 00
        push    esi                                     ; 10004B4C _ 56
        push    edi                                     ; 10004B4D _ 57
        call    ?_0336                                  ; 10004B4E _ E8, FFFFF1CD
        mov     eax, dword [edi+28H]                    ; 10004B53 _ 8B. 47, 28
        mov     ecx, dword [esi+28H]                    ; 10004B56 _ 8B. 4E, 28
        push    eax                                     ; 10004B59 _ 50
        push    ecx                                     ; 10004B5A _ 51
        call    near [esi+24H]                          ; 10004B5B _ FF. 56, 24
        mov     edx, dword [edi+24H]                    ; 10004B5E _ 8B. 57, 24
        mov     eax, dword [esi+28H]                    ; 10004B61 _ 8B. 46, 28
        push    edx                                     ; 10004B64 _ 52
        push    eax                                     ; 10004B65 _ 50
        call    near [esi+24H]                          ; 10004B66 _ FF. 56, 24
        mov     ecx, dword [esi+28H]                    ; 10004B69 _ 8B. 4E, 28
        push    edi                                     ; 10004B6C _ 57
        push    ecx                                     ; 10004B6D _ 51
        call    near [esi+24H]                          ; 10004B6E _ FF. 56, 24
        add     esp, 36                                 ; 10004B71 _ 83. C4, 24
        xor     eax, eax                                ; 10004B74 _ 33. C0
        pop     edi                                     ; 10004B76 _ 5F
        pop     esi                                     ; 10004B77 _ 5E
        ret                                             ; 10004B78 _ C3

        nop                                             ; 10004B79 _ 90
        nop                                             ; 10004B7A _ 90
        nop                                             ; 10004B7B _ 90
        nop                                             ; 10004B7C _ 90
        nop                                             ; 10004B7D _ 90
        nop                                             ; 10004B7E _ 90
        nop                                             ; 10004B7F _ 90

