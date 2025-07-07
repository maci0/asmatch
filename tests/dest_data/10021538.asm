; ---- 10021538 ----
?_4442: ; Local function
        mov     eax, dword [esp+8H]                     ; 10021538 _ 8B. 44 24, 08
        push    esi                                     ; 1002153C _ 56
        push    32                                      ; 1002153D _ 6A, 20
        cdq                                             ; 1002153F _ 99
        pop     ecx                                     ; 10021540 _ 59
        idiv    ecx                                     ; 10021541 _ F7. F9
        push    31                                      ; 10021543 _ 6A, 1F
        mov     esi, eax                                ; 10021545 _ 8B. F0
        mov     eax, dword [esp+10H]                    ; 10021547 _ 8B. 44 24, 10
        cdq                                             ; 1002154B _ 99
        idiv    ecx                                     ; 1002154C _ F7. F9
        pop     ecx                                     ; 1002154E _ 59
        mov     eax, dword [esp+8H]                     ; 1002154F _ 8B. 44 24, 08
        sub     ecx, edx                                ; 10021553 _ 2B. CA
        or      edx, 0FFFFFFFFH                         ; 10021555 _ 83. CA, FF
        shl     edx, cl                                 ; 10021558 _ D3. E2
        not     edx                                     ; 1002155A _ F7. D2
        test    dword [eax+esi*4], edx                  ; 1002155C _ 85. 14 B0
        jnz     ?_4445                                  ; 1002155F _ 75, 1C
        inc     esi                                     ; 10021561 _ 46
        cmp     esi, 3                                  ; 10021562 _ 83. FE, 03
        jge     ?_4444                                  ; 10021565 _ 7D, 11
        lea     eax, [eax+esi*4]                        ; 10021567 _ 8D. 04 B0
?_4443: cmp     dword [eax], 0                          ; 1002156A _ 83. 38, 00
        jnz     ?_4445                                  ; 1002156D _ 75, 0E
        inc     esi                                     ; 1002156F _ 46
        add     eax, 4                                  ; 10021570 _ 83. C0, 04
        cmp     esi, 3                                  ; 10021573 _ 83. FE, 03
        jl      ?_4443                                  ; 10021576 _ 7C, F2
?_4444: push    1                                       ; 10021578 _ 6A, 01
        pop     eax                                     ; 1002157A _ 58
        pop     esi                                     ; 1002157B _ 5E
        ret                                             ; 1002157C _ C3

