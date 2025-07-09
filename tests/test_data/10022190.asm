; ---- 10022190 ----
?_4583: ; Local function
        push    ebp                                     ; 10022190 _ 55
        mov     ebp, esp                                ; 10022191 _ 8B. EC
        mov     eax, 4100                               ; 10022193 _ B8, 00001004
        call    ?_3168                                  ; 10022198 _ E8, FFFF8AD3
        push    ebx                                     ; 1002219D _ 53
        push    esi                                     ; 1002219E _ 56
        xor     esi, esi                                ; 1002219F _ 33. F6
        push    1                                       ; 100221A1 _ 6A, 01
        push    esi                                     ; 100221A3 _ 56
        push    dword [ebp+8H]                          ; 100221A4 _ FF. 75, 08
        call    ?_3577                                  ; 100221A7 _ E8, FFFFAA6E
        or      ebx, 0FFFFFFFFH                         ; 100221AC _ 83. CB, FF
        add     esp, 12                                 ; 100221AF _ 83. C4, 0C
        cmp     eax, ebx                                ; 100221B2 _ 3B. C3
        mov     dword [ebp-4H], eax                     ; 100221B4 _ 89. 45, FC
        je      ?_4591                                  ; 100221B7 _ 0F 84, 000000F2
        push    2                                       ; 100221BD _ 6A, 02
        push    esi                                     ; 100221BF _ 56
        push    dword [ebp+8H]                          ; 100221C0 _ FF. 75, 08
        call    ?_3577                                  ; 100221C3 _ E8, FFFFAA52
        add     esp, 12                                 ; 100221C8 _ 83. C4, 0C
        cmp     eax, ebx                                ; 100221CB _ 3B. C3
        je      ?_4591                                  ; 100221CD _ 0F 84, 000000DC
        push    edi                                     ; 100221D3 _ 57
        mov     edi, dword [ebp+0CH]                    ; 100221D4 _ 8B. 7D, 0C
        sub     edi, eax                                ; 100221D7 _ 2B. F8
        test    edi, edi                                ; 100221D9 _ 85. FF
        jle     ?_4589                                  ; 100221DB _ 7E, 75
        mov     ebx, 4096                               ; 100221DD _ BB, 00001000
        lea     eax, [ebp-1004H]                        ; 100221E2 _ 8D. 85, FFFFEFFC
        push    ebx                                     ; 100221E8 _ 53
        push    esi                                     ; 100221E9 _ 56
        push    eax                                     ; 100221EA _ 50
        call    ?_4392                                  ; 100221EB _ E8, FFFFF050
        push    32768                                   ; 100221F0 _ 68, 00008000
        push    dword [ebp+8H]                          ; 100221F5 _ FF. 75, 08
        call    ?_4768                                  ; 100221F8 _ E8, 00000CA4
        add     esp, 20                                 ; 100221FD _ 83. C4, 14
        mov     dword [ebp+0CH], eax                    ; 10022200 _ 89. 45, 0C
?_4584: cmp     edi, ebx                                ; 10022203 _ 3B. FB
        mov     eax, ebx                                ; 10022205 _ 8B. C3
        jge     ?_4585                                  ; 10022207 _ 7D, 02
        mov     eax, edi                                ; 10022209 _ 8B. C7
?_4585: push    eax                                     ; 1002220B _ 50
        lea     eax, [ebp-1004H]                        ; 1002220C _ 8D. 85, FFFFEFFC
        push    eax                                     ; 10022212 _ 50
        push    dword [ebp+8H]                          ; 10022213 _ FF. 75, 08
        call    ?_3890                                  ; 10022216 _ E8, FFFFC6FE
        add     esp, 12                                 ; 1002221B _ 83. C4, 0C
        cmp     eax, -1                                 ; 1002221E _ 83. F8, FF
        jz      ?_4586                                  ; 10022221 _ 74, 08
        sub     edi, eax                                ; 10022223 _ 2B. F8
        test    edi, edi                                ; 10022225 _ 85. FF
        jle     ?_4588                                  ; 10022227 _ 7E, 1A
        jmp     ?_4584                                  ; 10022229 _ EB, D8

?_4586: call    ?_3108                                  ; 1002222B _ E8, FFFF85BE
        cmp     dword [eax], 5                          ; 10022230 _ 83. 38, 05
        jnz     ?_4587                                  ; 10022233 _ 75, 0B
        call    ?_3107                                  ; 10022235 _ E8, FFFF85AB
        mov     dword [eax], 13                         ; 1002223A _ C7. 00, 0000000D
?_4587: or      esi, 0FFFFFFFFH                         ; 10022240 _ 83. CE, FF
?_4588: push    dword [ebp+0CH]                         ; 10022243 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10022246 _ FF. 75, 08
        call    ?_4768                                  ; 10022249 _ E8, 00000C53
        pop     ecx                                     ; 1002224E _ 59
        pop     ecx                                     ; 1002224F _ 59
        jmp     ?_4590                                  ; 10022250 _ EB, 48

?_4589: jge     ?_4590                                  ; 10022252 _ 7D, 46
        push    0                                       ; 10022254 _ 6A, 00
        push    dword [ebp+0CH]                         ; 10022256 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10022259 _ FF. 75, 08
        call    ?_3577                                  ; 1002225C _ E8, FFFFA9B9
        push    dword [ebp+8H]                          ; 10022261 _ FF. 75, 08
        call    ?_4218                                  ; 10022264 _ E8, FFFFE0F7
        add     esp, 16                                 ; 10022269 _ 83. C4, 10
        push    eax                                     ; 1002226C _ 50
        call    near [imp_SetEndOfFile]                 ; 1002226D _ FF. 15, 10024088(d)
        mov     esi, eax                                ; 10022273 _ 8B. F0
        neg     esi                                     ; 10022275 _ F7. DE
        sbb     esi, esi                                ; 10022277 _ 1B. F6
        neg     esi                                     ; 10022279 _ F7. DE
        dec     esi                                     ; 1002227B _ 4E
        cmp     esi, ebx                                ; 1002227C _ 3B. F3
        jnz     ?_4590                                  ; 1002227E _ 75, 1A
        call    ?_3107                                  ; 10022280 _ E8, FFFF8560
        mov     dword [eax], 13                         ; 10022285 _ C7. 00, 0000000D
        call    near [imp_GetLastError]                 ; 1002228B _ FF. 15, 100240DC(d)
        mov     edi, eax                                ; 10022291 _ 8B. F8
        call    ?_3108                                  ; 10022293 _ E8, FFFF8556
        mov     dword [eax], edi                        ; 10022298 _ 89. 38
?_4590: push    0                                       ; 1002229A _ 6A, 00
        push    dword [ebp-4H]                          ; 1002229C _ FF. 75, FC
        push    dword [ebp+8H]                          ; 1002229F _ FF. 75, 08
        call    ?_3577                                  ; 100222A2 _ E8, FFFFA973
        add     esp, 12                                 ; 100222A7 _ 83. C4, 0C
        mov     eax, esi                                ; 100222AA _ 8B. C6
        pop     edi                                     ; 100222AC _ 5F
        jmp     ?_4592                                  ; 100222AD _ EB, 02

?_4591: mov     eax, ebx                                ; 100222AF _ 8B. C3
?_4592: pop     esi                                     ; 100222B1 _ 5E
        pop     ebx                                     ; 100222B2 _ 5B
        leave                                           ; 100222B3 _ C9
        ret                                             ; 100222B4 _ C3
