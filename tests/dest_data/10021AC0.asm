; ---- 10021AC0 ----
?_4501: ; Local function
        mov     edx, dword [esp+4H]                     ; 10021AC0 _ 8B. 54 24, 04
        mov     ecx, dword [esp+8H]                     ; 10021AC4 _ 8B. 4C 24, 08
        test    edx, 3H                                 ; 10021AC8 _ F7. C2, 00000003
        jnz     ?_4505                                  ; 10021ACE _ 75, 3C
?_4502: mov     eax, dword [edx]                        ; 10021AD0 _ 8B. 02
        cmp     al, byte [ecx]                          ; 10021AD2 _ 3A. 01
        jnz     ?_4504                                  ; 10021AD4 _ 75, 2E
        or      al, al                                  ; 10021AD6 _ 0A. C0
        jz      ?_4503                                  ; 10021AD8 _ 74, 26
        cmp     ah, byte [ecx+1H]                       ; 10021ADA _ 3A. 61, 01
        jnz     ?_4504                                  ; 10021ADD _ 75, 25
        or      ah, ah                                  ; 10021ADF _ 0A. E4
        jz      ?_4503                                  ; 10021AE1 _ 74, 1D
        shr     eax, 16                                 ; 10021AE3 _ C1. E8, 10
        cmp     al, byte [ecx+2H]                       ; 10021AE6 _ 3A. 41, 02
        jnz     ?_4504                                  ; 10021AE9 _ 75, 19
        or      al, al                                  ; 10021AEB _ 0A. C0
        jz      ?_4503                                  ; 10021AED _ 74, 11
        cmp     ah, byte [ecx+3H]                       ; 10021AEF _ 3A. 61, 03
        jnz     ?_4504                                  ; 10021AF2 _ 75, 10
        add     ecx, 4                                  ; 10021AF4 _ 83. C1, 04
        add     edx, 4                                  ; 10021AF7 _ 83. C2, 04
        or      ah, ah                                  ; 10021AFA _ 0A. E4
        jnz     ?_4502                                  ; 10021AFC _ 75, D2
; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   8
?_4503: xor     eax, eax                                ; 10021B00 _ 33. C0
        ret                                             ; 10021B02 _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
?_4504: sbb     eax, eax                                ; 10021B04 _ 1B. C0
        shl     eax, 1                                  ; 10021B06 _ D1. E0
        inc     eax                                     ; 10021B08 _ 40
        ret                                             ; 10021B09 _ C3

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   4
?_4505: test    edx, 1H                                 ; 10021B0C _ F7. C2, 00000001
        jz      ?_4506                                  ; 10021B12 _ 74, 14
        mov     al, byte [edx]                          ; 10021B14 _ 8A. 02
        inc     edx                                     ; 10021B16 _ 42
        cmp     al, byte [ecx]                          ; 10021B17 _ 3A. 01
        jnz     ?_4504                                  ; 10021B19 _ 75, E9
        inc     ecx                                     ; 10021B1B _ 41
        or      al, al                                  ; 10021B1C _ 0A. C0
        jz      ?_4503                                  ; 10021B1E _ 74, E0
        test    edx, 2H                                 ; 10021B20 _ F7. C2, 00000002
        jz      ?_4502                                  ; 10021B26 _ 74, A8
?_4506: mov     ax, word [edx]                          ; 10021B28 _ 66: 8B. 02
        add     edx, 2                                  ; 10021B2B _ 83. C2, 02
        cmp     al, byte [ecx]                          ; 10021B2E _ 3A. 01
        jnz     ?_4504                                  ; 10021B30 _ 75, D2
        or      al, al                                  ; 10021B32 _ 0A. C0
        jz      ?_4503                                  ; 10021B34 _ 74, CA
        cmp     ah, byte [ecx+1H]                       ; 10021B36 _ 3A. 61, 01
        jnz     ?_4504                                  ; 10021B39 _ 75, C9
        or      ah, ah                                  ; 10021B3B _ 0A. E4
        jz      ?_4503                                  ; 10021B3D _ 74, C1
        add     ecx, 2                                  ; 10021B3F _ 83. C1, 02
        jmp     ?_4502                                  ; 10021B42 _ EB, 8C

        int 3    ; breakpoint or filler                 ; 10021B44 _ CC
        int 3    ; breakpoint or filler                 ; 10021B45 _ CC
        int 3    ; breakpoint or filler                 ; 10021B46 _ CC
        int 3    ; breakpoint or filler                 ; 10021B47 _ CC
        int 3    ; breakpoint or filler                 ; 10021B48 _ CC
        int 3    ; breakpoint or filler                 ; 10021B49 _ CC
        int 3    ; breakpoint or filler                 ; 10021B4A _ CC
        int 3    ; breakpoint or filler                 ; 10021B4B _ CC
        int 3    ; breakpoint or filler                 ; 10021B4C _ CC
        int 3    ; breakpoint or filler                 ; 10021B4D _ CC
        int 3    ; breakpoint or filler                 ; 10021B4E _ CC
        int 3    ; breakpoint or filler                 ; 10021B4F _ CC
        push    ebp                                     ; 10021B50 _ 55
        mov     ebp, esp                                ; 10021B51 _ 8B. EC
        push    esi                                     ; 10021B53 _ 56
        xor     eax, eax                                ; 10021B54 _ 33. C0
        push    eax                                     ; 10021B56 _ 50
        push    eax                                     ; 10021B57 _ 50
        push    eax                                     ; 10021B58 _ 50
        push    eax                                     ; 10021B59 _ 50
        push    eax                                     ; 10021B5A _ 50
        push    eax                                     ; 10021B5B _ 50
        push    eax                                     ; 10021B5C _ 50
        push    eax                                     ; 10021B5D _ 50
        mov     edx, dword [ebp+0CH]                    ; 10021B5E _ 8B. 55, 0C
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4
?_4507: mov     al, byte [edx]                          ; 10021B64 _ 8A. 02
        or      al, al                                  ; 10021B66 _ 0A. C0
        jz      ?_4508                                  ; 10021B68 _ 74, 07
        inc     edx                                     ; 10021B6A _ 42
        bts     dword [esp], eax                        ; 10021B6B _ 0F AB. 04 24
        jmp     ?_4507                                  ; 10021B6F _ EB, F3

