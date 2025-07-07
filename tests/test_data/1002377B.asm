; ---- 1002377B ----
?_4871: ; Local function
        push    ebp                                     ; 1002377B _ 55
        mov     ebp, esp                                ; 1002377C _ 8B. EC
        cmp     dword [?_5793], 0                       ; 1002377E _ 83. 3D, 1176621C(d), 00
        push    ebx                                     ; 10023785 _ 53
        push    esi                                     ; 10023786 _ 56
        jnz     ?_4872                                  ; 10023787 _ 75, 0F
        push    dword [ebp+0CH]                         ; 10023789 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1002378C _ FF. 75, 08
        call    ?_3210                                  ; 1002378F _ E8, FFFF779C
        pop     ecx                                     ; 10023794 _ 59
        pop     ecx                                     ; 10023795 _ 59
        jmp     ?_4879                                  ; 10023796 _ EB, 76

?_4872: push    25                                      ; 10023798 _ 6A, 19
        call    ?_3610                                  ; 1002379A _ E8, FFFF9897
        mov     esi, dword [ebp+8H]                     ; 1002379F _ 8B. 75, 08
        pop     ecx                                     ; 100237A2 _ 59
?_4873: movzx   bx, byte [esi]                          ; 100237A3 _ 66: 0F B6. 1E
        test    bx, bx                                  ; 100237A7 _ 66: 85. DB
        jz      ?_4878                                  ; 100237AA _ 74, 4A
        movzx   eax, bl                                 ; 100237AC _ 0F B6. C3
        test    byte [?_5796+eax], 04H                  ; 100237AF _ F6. 80, 11766321(d), 04
        jz      ?_4874                                  ; 100237B6 _ 74, 1A
        mov     al, byte [esi+1H]                       ; 100237B8 _ 8A. 46, 01
        inc     esi                                     ; 100237BB _ 46
        test    al, al                                  ; 100237BC _ 84. C0
        jz      ?_4876                                  ; 100237BE _ 74, 1D
        movzx   ecx, bx                                 ; 100237C0 _ 0F B7. CB
        movzx   eax, al                                 ; 100237C3 _ 0F B6. C0
        shl     ecx, 8                                  ; 100237C6 _ C1. E1, 08
        or      ecx, eax                                ; 100237C9 _ 0B. C8
        cmp     dword [ebp+0CH], ecx                    ; 100237CB _ 39. 4D, 0C
        jz      ?_4877                                  ; 100237CE _ 74, 19
        jmp     ?_4875                                  ; 100237D0 _ EB, 08

?_4874: movzx   eax, bx                                 ; 100237D2 _ 0F B7. C3
        cmp     dword [ebp+0CH], eax                    ; 100237D5 _ 39. 45, 0C
        jz      ?_4878                                  ; 100237D8 _ 74, 1C
?_4875: inc     esi                                     ; 100237DA _ 46
        jmp     ?_4873                                  ; 100237DB _ EB, C6

?_4876: push    25                                      ; 100237DD _ 6A, 19
        call    ?_3615                                  ; 100237DF _ E8, FFFF98B3
        pop     ecx                                     ; 100237E4 _ 59
        xor     eax, eax                                ; 100237E5 _ 33. C0
        jmp     ?_4879                                  ; 100237E7 _ EB, 25

?_4877: push    25                                      ; 100237E9 _ 6A, 19
        call    ?_3615                                  ; 100237EB _ E8, FFFF98A7
        pop     ecx                                     ; 100237F0 _ 59
        lea     eax, [esi-1H]                           ; 100237F1 _ 8D. 46, FF
        jmp     ?_4879                                  ; 100237F4 _ EB, 18

?_4878: push    25                                      ; 100237F6 _ 6A, 19
        call    ?_3615                                  ; 100237F8 _ E8, FFFF989A
        mov     eax, dword [ebp+0CH]                    ; 100237FD _ 8B. 45, 0C
        pop     ecx                                     ; 10023800 _ 59
        movzx   ecx, bx                                 ; 10023801 _ 0F B7. CB
        sub     eax, ecx                                ; 10023804 _ 2B. C1
        neg     eax                                     ; 10023806 _ F7. D8
        sbb     eax, eax                                ; 10023808 _ 1B. C0
        not     eax                                     ; 1002380A _ F7. D0
        and     eax, esi                                ; 1002380C _ 23. C6
?_4879: pop     esi                                     ; 1002380E _ 5E
        pop     ebx                                     ; 1002380F _ 5B
        pop     ebp                                     ; 10023810 _ 5D
        ret                                             ; 10023811 _ C3

