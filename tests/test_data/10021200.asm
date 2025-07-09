; ---- 10021200 ----
?_4389: ; Local function
        push    ebp                                     ; 10021200 _ 55
        mov     ebp, esp                                ; 10021201 _ 8B. EC
        push    edi                                     ; 10021203 _ 57
        push    esi                                     ; 10021204 _ 56
        push    ebx                                     ; 10021205 _ 53
        mov     ecx, dword [ebp+10H]                    ; 10021206 _ 8B. 4D, 10
        jecxz   ?_4391                                  ; 10021209 _ E3, 26
        mov     ebx, ecx                                ; 1002120B _ 8B. D9
        mov     edi, dword [ebp+8H]                     ; 1002120D _ 8B. 7D, 08
        mov     esi, edi                                ; 10021210 _ 8B. F7
        xor     eax, eax                                ; 10021212 _ 33. C0
        repne scasb                                     ; 10021214 _ F2: AE
        neg     ecx                                     ; 10021216 _ F7. D9
        add     ecx, ebx                                ; 10021218 _ 03. CB
        mov     edi, esi                                ; 1002121A _ 8B. FE
        mov     esi, dword [ebp+0CH]                    ; 1002121C _ 8B. 75, 0C
        repe cmpsb                                      ; 1002121F _ F3: A6
        mov     al, byte [esi-1H]                       ; 10021221 _ 8A. 46, FF
        xor     ecx, ecx                                ; 10021224 _ 33. C9
        cmp     al, byte [edi-1H]                       ; 10021226 _ 3A. 47, FF
        ja      ?_4390                                  ; 10021229 _ 77, 04
        jz      ?_4391                                  ; 1002122B _ 74, 04
        dec     ecx                                     ; 1002122D _ 49
        dec     ecx                                     ; 1002122E _ 49
?_4390: not     ecx                                     ; 1002122F _ F7. D1
?_4391: mov     eax, ecx                                ; 10021231 _ 8B. C1
        pop     ebx                                     ; 10021233 _ 5B
        pop     esi                                     ; 10021234 _ 5E
        pop     edi                                     ; 10021235 _ 5F
        leave                                           ; 10021236 _ C9
        ret                                             ; 10021237 _ C3

        int 3    ; breakpoint or filler                 ; 10021238 _ CC
        int 3    ; breakpoint or filler                 ; 10021239 _ CC
        int 3    ; breakpoint or filler                 ; 1002123A _ CC
        int 3    ; breakpoint or filler                 ; 1002123B _ CC
        int 3    ; breakpoint or filler                 ; 1002123C _ CC
        int 3    ; breakpoint or filler                 ; 1002123D _ CC
        int 3    ; breakpoint or filler                 ; 1002123E _ CC
        int 3    ; breakpoint or filler                 ; 1002123F _ CC
