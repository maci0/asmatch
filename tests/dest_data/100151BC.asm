; ---- 100151BC ----
?_2342: ; Local function
        mov     ecx, dword [esp+8H]                     ; 100151BC _ 8B. 4C 24, 08
        mov     edx, dword [?_5372+eax*8]               ; 100151C0 _ 8B. 14 C5, 1002DA30(d)
        mov     dword [ecx], edx                        ; 100151C7 _ 89. 11
        mov     eax, dword [?_5373+eax*8]               ; 100151C9 _ 8B. 04 C5, 1002DA34(d)
        mov     dword [ecx+4H], eax                     ; 100151D0 _ 89. 41, 04
        mov     eax, 1                                  ; 100151D3 _ B8, 00000001
        ret                                             ; 100151D8 _ C3

        nop                                             ; 100151D9 _ 90
        nop                                             ; 100151DA _ 90
        nop                                             ; 100151DB _ 90
        nop                                             ; 100151DC _ 90
        nop                                             ; 100151DD _ 90
        nop                                             ; 100151DE _ 90
        nop                                             ; 100151DF _ 90
?_2343: sub     esp, 32                                 ; 100151E0 _ 83. EC, 20
        push    ebx                                     ; 100151E3 _ 53
        push    ebp                                     ; 100151E4 _ 55
        push    esi                                     ; 100151E5 _ 56
        push    edi                                     ; 100151E6 _ 57
        xor     edi, edi                                ; 100151E7 _ 33. FF
        mov     dword [esp+18H], 96                     ; 100151E9 _ C7. 44 24, 18, 00000060
        mov     dword [esp+1CH], 75                     ; 100151F1 _ C7. 44 24, 1C, 0000004B
        mov     dword [esp+20H], 40                     ; 100151F9 _ C7. 44 24, 20, 00000028
        mov     dword [esp+24H], 23                     ; 10015201 _ C7. 44 24, 24, 00000017
        mov     dword [esp+28H], 9                      ; 10015209 _ C7. 44 24, 28, 00000009
        mov     dword [esp+2CH], edi                    ; 10015211 _ 89. 7C 24, 2C
        mov     ebx, 768                                ; 10015215 _ BB, 00000300
?_2344: push    ebx                                     ; 1001521A _ 53
        call    ?_3022                                  ; 1001521B _ E8, 00004EB0
        mov     ebp, eax                                ; 10015220 _ 8B. E8
        and     eax, 0FFFFH                             ; 10015222 _ 25, 0000FFFF
        add     esp, 4                                  ; 10015227 _ 83. C4, 04
        lea     eax, [eax+eax*2]                        ; 1001522A _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 1001522D _ 8D. 04 80
        lea     ecx, [eax+eax*8]                        ; 10015230 _ 8D. 0C C0
        shl     ecx, 2                                  ; 10015233 _ C1. E1, 02
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [?_5632+ecx], -1                   ; 10015236 _ 66: 81. B9, 100358A0(d), FFFF
        jnz     ?_2345                                  ; 1001523F _ 75, 10
        lea     eax, [ebx+ebx*2]                        ; 10015241 _ 8D. 04 5B
        cdq                                             ; 10015244 _ 99
        and     edx, 03H                                ; 10015245 _ 83. E2, 03
        add     eax, edx                                ; 10015248 _ 03. C2
        sar     eax, 2                                  ; 1001524A _ C1. F8, 02
        mov     ebx, eax                                ; 1001524D _ 8B. D8
        jmp     ?_2349                                  ; 1001524F _ EB, 6C

?_2345: cmp     byte [?_5633+ecx], 6                    ; 10015251 _ 80. B9, 100358A2(d), 06
        jnc     ?_2348                                  ; 10015258 _ 73, 5E
        xor     eax, eax                                ; 1001525A _ 33. C0
        mov     ax, word [?_5636+ecx]                   ; 1001525C _ 66: 8B. 81, 100358AA(d)
        mov     dword [esp+10H], eax                    ; 10015263 _ 89. 44 24, 10
        fild    dword [esp+10H]                         ; 10015267 _ DB. 44 24, 10
        fcomp   dword [?_5638+ecx]                      ; 1001526B _ D8. 99, 100358C0(d)
        fnstsw  ax                                      ; 10015271 _ DF. E0
        test    ah, 01H                                 ; 10015273 _ F6. C4, 01
        jnz     ?_2348                                  ; 10015276 _ 75, 40
        mov     al, byte [?_5635+ecx]                   ; 10015278 _ 8A. 81, 100358A8(d)
        test    al, al                                  ; 1001527E _ 84. C0
        jz      ?_2348                                  ; 10015280 _ 74, 36
        lea     eax, [?_5645+ecx]                       ; 10015282 _ 8D. 81, 10035908(d)
        xor     esi, esi                                ; 10015288 _ 33. F6
        mov     ecx, 5                                  ; 1001528A _ B9, 00000005
?_2346: cmp     dword [eax], -1                         ; 1001528F _ 83. 38, FF
        jz      ?_2347                                  ; 10015292 _ 74, 01
        inc     esi                                     ; 10015294 _ 46
?_2347: add     eax, 4                                  ; 10015295 _ 83. C0, 04
        dec     ecx                                     ; 10015298 _ 49
        jnz     ?_2346                                  ; 10015299 _ 75, F4
        push    256                                     ; 1001529B _ 68, 00000100
        call    ?_3022                                  ; 100152A0 _ E8, 00004E2B
        mov     ecx, dword [esp+esi*4+1CH]              ; 100152A5 _ 8B. 4C B4, 1C
        and     eax, 0FFFFH                             ; 100152A9 _ 25, 0000FFFF
        add     esp, 4                                  ; 100152AE _ 83. C4, 04
        inc     eax                                     ; 100152B1 _ 40
        cmp     eax, ecx                                ; 100152B2 _ 3B. C1
        jl      ?_2350                                  ; 100152B4 _ 7C, 11
        jmp     ?_2349                                  ; 100152B6 _ EB, 05

?_2348: mov     ebp, 65535                              ; 100152B8 _ BD, 0000FFFF
?_2349: inc     edi                                     ; 100152BD _ 47
        cmp     edi, 16                                 ; 100152BE _ 83. FF, 10
        jl      ?_2344                                  ; 100152C1 _ 0F 8C, FFFFFF53
?_2350:
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     bp, -1                                  ; 100152C7 _ 66: 81. FD, FFFF
        jnz     ?_2351                                  ; 100152CC _ 75, 0B
        pop     edi                                     ; 100152CE _ 5F
        pop     esi                                     ; 100152CF _ 5E
        pop     ebp                                     ; 100152D0 _ 5D
        xor     ax, ax                                  ; 100152D1 _ 66: 33. C0
        pop     ebx                                     ; 100152D4 _ 5B
        add     esp, 32                                 ; 100152D5 _ 83. C4, 20
        ret                                             ; 100152D8 _ C3

