; ---- 1000BDE3 ----
?_1269: ; Local function
        xor     eax, eax                                ; 1000BDE3 _ 33. C0
        ret                                             ; 1000BDE5 _ C3

        nop                                             ; 1000BDE6 _ 90
        nop                                             ; 1000BDE7 _ 90
        nop                                             ; 1000BDE8 _ 90
        nop                                             ; 1000BDE9 _ 90
        nop                                             ; 1000BDEA _ 90
        nop                                             ; 1000BDEB _ 90
        nop                                             ; 1000BDEC _ 90
        nop                                             ; 1000BDED _ 90
        nop                                             ; 1000BDEE _ 90
        nop                                             ; 1000BDEF _ 90
?_1270: mov     eax, dword [esp+4H]                     ; 1000BDF0 _ 8B. 44 24, 04
        sub     esp, 8                                  ; 1000BDF4 _ 83. EC, 08
; Note: Zero displacement could be omitted
        lea     edx, [esp]                              ; 1000BDF7 _ 8D. 54 24, 00
        mov     ecx, dword [eax+8H]                     ; 1000BDFB _ 8B. 48, 08
        push    ebx                                     ; 1000BDFE _ 53
        push    ebp                                     ; 1000BDFF _ 55
        xor     ebx, ebx                                ; 1000BE00 _ 33. DB
        push    ecx                                     ; 1000BE02 _ 51
        push    ebx                                     ; 1000BE03 _ 53
        push    ebx                                     ; 1000BE04 _ 53
        push    edx                                     ; 1000BE05 _ 52
        call    ?_2425                                  ; 1000BE06 _ E8, 0000A085
        mov     eax, dword [esp+18H]                    ; 1000BE0B _ 8B. 44 24, 18
        add     esp, 16                                 ; 1000BE0F _ 83. C4, 10
        cmp     eax, ebx                                ; 1000BE12 _ 3B. C3
        jnz     ?_1271                                  ; 1000BE14 _ 75, 0E
        push    1                                       ; 1000BE16 _ 6A, 01
        push    ?_5250                                  ; 1000BE18 _ 68, 1002A19C(d)
        push    1097                                    ; 1000BE1D _ 68, 00000449
        jmp     ?_1277                                  ; 1000BE22 _ EB, 7B

?_1271: xor     ecx, ecx                                ; 1000BE24 _ 33. C9
        mov     edx, dword [?_5668]                     ; 1000BE26 _ 8B. 15, 100A8C30(d)
        mov     cl, byte [eax]                          ; 1000BE2C _ 8A. 08
        add     edx, ecx                                ; 1000BE2E _ 03. D1
        lea     eax, [ecx+ecx*2]                        ; 1000BE30 _ 8D. 04 49
        shl     eax, 4                                  ; 1000BE33 _ C1. E0, 04
        add     eax, ecx                                ; 1000BE36 _ 03. C1
        lea     eax, [eax+eax*2]                        ; 1000BE38 _ 8D. 04 40
        cmp     byte [edx+eax*4], 30                    ; 1000BE3B _ 80. 3C 82, 1E
        jz      ?_1272                                  ; 1000BE3F _ 74, 0E
        push    1                                       ; 1000BE41 _ 6A, 01
        push    ?_5249                                  ; 1000BE43 _ 68, 1002A168(d)
        push    1105                                    ; 1000BE48 _ 68, 00000451
        jmp     ?_1277                                  ; 1000BE4D _ EB, 50

?_1272: xor     ebp, ebp                                ; 1000BE4F _ 33. ED
        mov     eax, ?_5632                             ; 1000BE51 _ B8, 100358A0(d)
?_1273:
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], -1                          ; 1000BE56 _ 66: 81. 38, FFFF
        jz      ?_1274                                  ; 1000BE5B _ 74, 0D
        add     eax, 540                                ; 1000BE5D _ 05, 0000021C
        inc     ebp                                     ; 1000BE62 _ 45
        cmp     eax, ?_5656                             ; 1000BE63 _ 3D, 1009ACA0(d)
        jl      ?_1273                                  ; 1000BE68 _ 7C, EC
?_1274: cmp     ebp, 768                                ; 1000BE6A _ 81. FD, 00000300
        jnz     ?_1278                                  ; 1000BE70 _ 75, 45
        xor     ebp, ebp                                ; 1000BE72 _ 33. ED
        mov     eax, ?_5633                             ; 1000BE74 _ B8, 100358A2(d)
?_1275: cmp     byte [eax], 15                          ; 1000BE79 _ 80. 38, 0F
        jz      ?_1276                                  ; 1000BE7C _ 74, 0D
        add     eax, 540                                ; 1000BE7E _ 05, 0000021C
        inc     ebp                                     ; 1000BE83 _ 45
        cmp     eax, ?_5657                             ; 1000BE84 _ 3D, 1009ACA2(d)
        jl      ?_1275                                  ; 1000BE89 _ 7C, EE
?_1276: cmp     ebp, 768                                ; 1000BE8B _ 81. FD, 00000300
        jnz     ?_1278                                  ; 1000BE91 _ 75, 24
        push    1                                       ; 1000BE93 _ 6A, 01
        push    ?_5248                                  ; 1000BE95 _ 68, 1002A140(d)
        push    1117                                    ; 1000BE9A _ 68, 0000045D
?_1277: push    ?_5247                                  ; 1000BE9F _ 68, 1002A10C(d)
        call    ?_0267                                  ; 1000BEA4 _ E8, FFFF7797
        add     esp, 16                                 ; 1000BEA9 _ 83. C4, 10
        mov     eax, 65535                              ; 1000BEAC _ B8, 0000FFFF
        pop     ebp                                     ; 1000BEB1 _ 5D
        pop     ebx                                     ; 1000BEB2 _ 5B
        add     esp, 8                                  ; 1000BEB3 _ 83. C4, 08
        ret                                             ; 1000BEB6 _ C3
