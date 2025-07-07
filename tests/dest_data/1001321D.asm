; ---- 1001321D ----
?_2152: ; Local function
        pop     edi                                     ; 1001321D _ 5F
        pop     esi                                     ; 1001321E _ 5E
        pop     ebp                                     ; 1001321F _ 5D
        xor     eax, eax                                ; 10013220 _ 33. C0
        pop     ebx                                     ; 10013222 _ 5B
        ret                                             ; 10013223 _ C3

        nop                                             ; 10013224 _ 90
        nop                                             ; 10013225 _ 90
        nop                                             ; 10013226 _ 90
        nop                                             ; 10013227 _ 90
        nop                                             ; 10013228 _ 90
        nop                                             ; 10013229 _ 90
        nop                                             ; 1001322A _ 90
        nop                                             ; 1001322B _ 90
        nop                                             ; 1001322C _ 90
        nop                                             ; 1001322D _ 90
        nop                                             ; 1001322E _ 90
        nop                                             ; 1001322F _ 90
?_2153: sub     esp, 12                                 ; 10013230 _ 83. EC, 0C
; Note: Zero displacement could be omitted
        lea     eax, [esp]                              ; 10013233 _ 8D. 44 24, 00
        push    ebx                                     ; 10013237 _ 53
        push    ebp                                     ; 10013238 _ 55
        push    esi                                     ; 10013239 _ 56
        push    edi                                     ; 1001323A _ 57
        mov     edi, dword [esp+20H]                    ; 1001323B _ 8B. 7C 24, 20
        push    edi                                     ; 1001323F _ 57
        push    1                                       ; 10013240 _ 6A, 01
        push    2                                       ; 10013242 _ 6A, 02
        push    eax                                     ; 10013244 _ 50
        call    ?_2085                                  ; 10013245 _ E8, FFFFF1F6
        add     esp, 16                                 ; 1001324A _ 83. C4, 10
        test    eax, eax                                ; 1001324D _ 85. C0
        jnz     ?_2154                                  ; 1001324F _ 75, 08
        pop     edi                                     ; 10013251 _ 5F
        pop     esi                                     ; 10013252 _ 5E
        pop     ebp                                     ; 10013253 _ 5D
        pop     ebx                                     ; 10013254 _ 5B
        add     esp, 12                                 ; 10013255 _ 83. C4, 0C
        ret                                             ; 10013258 _ C3

