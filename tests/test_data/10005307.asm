; ---- 10005307 ----
?_0495: ; Local function
        mov     ecx, dword [esp+24H]                    ; 10005307 _ 8B. 4C 24, 24
        mov     eax, dword [esp+28H]                    ; 1000530B _ 8B. 44 24, 28
        mov     dword [esi+20H], ecx                    ; 1000530F _ 89. 4E, 20
        mov     dword [esi+1CH], ebx                    ; 10005312 _ 89. 5E, 1C
        mov     ebx, dword [edi]                        ; 10005315 _ 8B. 1F
        mov     ecx, ebp                                ; 10005317 _ 8B. CD
        mov     dword [edi+4H], eax                     ; 10005319 _ 89. 47, 04
        mov     eax, dword [edi+8H]                     ; 1000531C _ 8B. 47, 08
        sub     ecx, ebx                                ; 1000531F _ 2B. CB
        push    -2                                      ; 10005321 _ 6A, FE
        add     eax, ecx                                ; 10005323 _ 03. C1
        push    edi                                     ; 10005325 _ 57
        mov     dword [edi+8H], eax                     ; 10005326 _ 89. 47, 08
        mov     dword [edi], ebp                        ; 10005329 _ 89. 2F
        push    esi                                     ; 1000532B _ 56
        mov     dword [esi+34H], edx                    ; 1000532C _ 89. 56, 34
        call    ?_0630                                  ; 1000532F _ E8, 0000110C
        add     esp, 12                                 ; 10005334 _ 83. C4, 0C
        pop     edi                                     ; 10005337 _ 5F
        pop     esi                                     ; 10005338 _ 5E
        pop     ebp                                     ; 10005339 _ 5D
        pop     ebx                                     ; 1000533A _ 5B
        add     esp, 16                                 ; 1000533B _ 83. C4, 10
        ret                                             ; 1000533E _ C3

        nop                                             ; 1000533F _ 90

?_0496:                                                 ; switch/case jump table
        dd ?_0437                                       ; 10005340 _ 10004C13 (d)
        dd ?_0441                                       ; 10005344 _ 10004CD5 (d)
        dd ?_0448                                       ; 10005348 _ 10004DC9 (d)
        dd ?_0451                                       ; 1000534C _ 10004E4A (d)
        dd ?_0455                                       ; 10005350 _ 10004EF7 (d)
        dd ?_0458                                       ; 10005354 _ 10004F6A (d)
        dd ?_0474                                       ; 10005358 _ 10005097 (d)
        dd ?_0490                                       ; 1000535C _ 10005228 (d)
        dd ?_0493                                       ; 10005360 _ 10005297 (d)
        dd ?_0494                                       ; 10005364 _ 100052CF (d)

; Filling space: 8H
; Filler type: NOP
;       db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H

ALIGN   16
?_0497: mov     eax, dword [esp+4H]                     ; 10005370 _ 8B. 44 24, 04
        push    eax                                     ; 10005374 _ 50
        mov     eax, dword [esp+0CH]                    ; 10005375 _ 8B. 44 24, 0C
        mov     ecx, dword [eax+28H]                    ; 10005379 _ 8B. 48, 28
        push    ecx                                     ; 1000537C _ 51
        call    near [eax+24H]                          ; 1000537D _ FF. 50, 24
        add     esp, 8                                  ; 10005380 _ 83. C4, 08
        ret                                             ; 10005383 _ C3

        nop                                             ; 10005384 _ 90
        nop                                             ; 10005385 _ 90
        nop                                             ; 10005386 _ 90
        nop                                             ; 10005387 _ 90
        nop                                             ; 10005388 _ 90
        nop                                             ; 10005389 _ 90
        nop                                             ; 1000538A _ 90
        nop                                             ; 1000538B _ 90
        nop                                             ; 1000538C _ 90
        nop                                             ; 1000538D _ 90
        nop                                             ; 1000538E _ 90
        nop                                             ; 1000538F _ 90
