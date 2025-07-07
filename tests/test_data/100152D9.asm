; ---- 100152D9 ----
?_2351: ; Local function
        mov     dword [esp+10H], 0                      ; 100152D9 _ C7. 44 24, 10, 00000000
?_2352: push    ebx                                     ; 100152E1 _ 53
        call    ?_3022                                  ; 100152E2 _ E8, 00004DE9
        mov     esi, eax                                ; 100152E7 _ 8B. F0
        and     eax, 0FFFFH                             ; 100152E9 _ 25, 0000FFFF
        add     esp, 4                                  ; 100152EE _ 83. C4, 04
        lea     eax, [eax+eax*2]                        ; 100152F1 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 100152F4 _ 8D. 04 80
        lea     ecx, [eax+eax*8]                        ; 100152F7 _ 8D. 0C C0
        shl     ecx, 2                                  ; 100152FA _ C1. E1, 02
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [?_5632+ecx], -1                   ; 100152FD _ 66: 81. B9, 100358A0(d), FFFF
        jnz     ?_2353                                  ; 10015306 _ 75, 10
        lea     eax, [ebx+ebx*2]                        ; 10015308 _ 8D. 04 5B
        cdq                                             ; 1001530B _ 99
        and     edx, 03H                                ; 1001530C _ 83. E2, 03
        add     eax, edx                                ; 1001530F _ 03. C2
        sar     eax, 2                                  ; 10015311 _ C1. F8, 02
        mov     ebx, eax                                ; 10015314 _ 8B. D8
        jmp     ?_2357                                  ; 10015316 _ EB, 6C

?_2353: cmp     byte [?_5633+ecx], 6                    ; 10015318 _ 80. B9, 100358A2(d), 06
        jnc     ?_2356                                  ; 1001531F _ 73, 5E
        xor     edx, edx                                ; 10015321 _ 33. D2
        mov     dx, word [?_5636+ecx]                   ; 10015323 _ 66: 8B. 91, 100358AA(d)
        mov     dword [esp+14H], edx                    ; 1001532A _ 89. 54 24, 14
        fild    dword [esp+14H]                         ; 1001532E _ DB. 44 24, 14
        fcomp   dword [?_5638+ecx]                      ; 10015332 _ D8. 99, 100358C0(d)
        fnstsw  ax                                      ; 10015338 _ DF. E0
        test    ah, 01H                                 ; 1001533A _ F6. C4, 01
        jnz     ?_2356                                  ; 1001533D _ 75, 40
        mov     al, byte [?_5635+ecx]                   ; 1001533F _ 8A. 81, 100358A8(d)
        test    al, al                                  ; 10015345 _ 84. C0
        jz      ?_2356                                  ; 10015347 _ 74, 36
        lea     eax, [?_5645+ecx]                       ; 10015349 _ 8D. 81, 10035908(d)
        xor     edi, edi                                ; 1001534F _ 33. FF
        mov     ecx, 5                                  ; 10015351 _ B9, 00000005
?_2354: cmp     dword [eax], -1                         ; 10015356 _ 83. 38, FF
        jz      ?_2355                                  ; 10015359 _ 74, 01
        inc     edi                                     ; 1001535B _ 47
?_2355: add     eax, 4                                  ; 1001535C _ 83. C0, 04
        dec     ecx                                     ; 1001535F _ 49
        jnz     ?_2354                                  ; 10015360 _ 75, F4
        push    256                                     ; 10015362 _ 68, 00000100
        call    ?_3022                                  ; 10015367 _ E8, 00004D64
        mov     ecx, dword [esp+edi*4+1CH]              ; 1001536C _ 8B. 4C BC, 1C
        and     eax, 0FFFFH                             ; 10015370 _ 25, 0000FFFF
        add     esp, 4                                  ; 10015375 _ 83. C4, 04
        inc     eax                                     ; 10015378 _ 40
        cmp     eax, ecx                                ; 10015379 _ 3B. C1
        jl      ?_2358                                  ; 1001537B _ 7C, 19
        jmp     ?_2357                                  ; 1001537D _ EB, 05

?_2356: mov     esi, 65535                              ; 1001537F _ BE, 0000FFFF
?_2357: mov     eax, dword [esp+10H]                    ; 10015384 _ 8B. 44 24, 10
        inc     eax                                     ; 10015388 _ 40
        cmp     eax, 16                                 ; 10015389 _ 83. F8, 10
        mov     dword [esp+10H], eax                    ; 1001538C _ 89. 44 24, 10
        jl      ?_2352                                  ; 10015390 _ 0F 8C, FFFFFF4B
?_2358:
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     si, -1                                  ; 10015396 _ 66: 81. FE, FFFF
        jnz     ?_2359                                  ; 1001539B _ 75, 0B
        pop     edi                                     ; 1001539D _ 5F
        pop     esi                                     ; 1001539E _ 5E
        pop     ebp                                     ; 1001539F _ 5D
        xor     ax, ax                                  ; 100153A0 _ 66: 33. C0
        pop     ebx                                     ; 100153A3 _ 5B
        add     esp, 32                                 ; 100153A4 _ 83. C4, 20
        ret                                             ; 100153A7 _ C3

