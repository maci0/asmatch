; ---- 10016240 ----
?_2458: ; Local function
        mov     edx, dword [esp+4H]                     ; 10016240 _ 8B. 54 24, 04
        xor     ecx, ecx                                ; 10016244 _ 33. C9
        mov     eax, edx                                ; 10016246 _ 8B. C2
        push    esi                                     ; 10016248 _ 56
        shl     eax, 4                                  ; 10016249 _ C1. E0, 04
        add     eax, edx                                ; 1001624C _ 03. C2
        mov     esi, dword [esp+0CH]                    ; 1001624E _ 8B. 74 24, 0C
        push    edi                                     ; 10016252 _ 57
        lea     eax, [eax+eax*4]                        ; 10016253 _ 8D. 04 80
        lea     edx, [edx+eax*8]                        ; 10016256 _ 8D. 14 C2
        shl     edx, 4                                  ; 10016259 _ C1. E2, 04
        lea     eax, [?_5667+edx]                       ; 1001625C _ 8D. 82, 1009B770(d)
?_2459: xor     edi, edi                                ; 10016262 _ 33. FF
        mov     di, word [eax]                          ; 10016264 _ 66: 8B. 38
        cmp     edi, esi                                ; 10016267 _ 3B. FE
        jz      ?_2460                                  ; 10016269 _ 74, 10
        inc     ecx                                     ; 1001626B _ 41
        add     eax, 128                                ; 1001626C _ 05, 00000080
        cmp     ecx, 85                                 ; 10016271 _ 83. F9, 55
        jl      ?_2459                                  ; 10016274 _ 7C, EC
        pop     edi                                     ; 10016276 _ 5F
        xor     eax, eax                                ; 10016277 _ 33. C0
        pop     esi                                     ; 10016279 _ 5E
        ret                                             ; 1001627A _ C3

