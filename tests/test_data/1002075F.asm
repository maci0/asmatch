; ---- 1002075F ----
?_4266: ; Local function
        push    ebp                                     ; 1002075F _ 55
        mov     ebp, esp                                ; 10020760 _ 8B. EC
        push    ebx                                     ; 10020762 _ 53
        push    esi                                     ; 10020763 _ 56
        mov     esi, ?_5799                             ; 10020764 _ BE, 1176642C(d)
        push    edi                                     ; 10020769 _ 57
        push    esi                                     ; 1002076A _ 56
        call    near [imp_InterlockedIncrement]         ; 1002076B _ FF. 15, 100240D8(d)
        mov     edi, dword [imp_InterlockedDecrement]   ; 10020771 _ 8B. 3D, 100240D4(d)
        xor     ebx, ebx                                ; 10020777 _ 33. DB
        cmp     dword [?_5798], ebx                     ; 10020779 _ 39. 1D, 11766428(d)
        jz      ?_4267                                  ; 1002077F _ 74, 0E
        push    esi                                     ; 10020781 _ 56
        call    edi                                     ; 10020782 _ FF. D7
        push    19                                      ; 10020784 _ 6A, 13
        call    ?_3610                                  ; 10020786 _ E8, FFFFC8AB
        pop     ecx                                     ; 1002078B _ 59
        push    1                                       ; 1002078C _ 6A, 01
        pop     ebx                                     ; 1002078E _ 5B
?_4267: push    dword [ebp+0CH]                         ; 1002078F _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 10020792 _ FF. 75, 08
        call    ?_4270                                  ; 10020795 _ E8, 0000001E
        pop     ecx                                     ; 1002079A _ 59
        mov     dword [ebp+0CH], eax                    ; 1002079B _ 89. 45, 0C
        test    ebx, ebx                                ; 1002079E _ 85. DB
        pop     ecx                                     ; 100207A0 _ 59
        jz      ?_4268                                  ; 100207A1 _ 74, 0A
        push    19                                      ; 100207A3 _ 6A, 13
        call    ?_3615                                  ; 100207A5 _ E8, FFFFC8ED
        pop     ecx                                     ; 100207AA _ 59
        jmp     ?_4269                                  ; 100207AB _ EB, 03

?_4268: push    esi                                     ; 100207AD _ 56
        call    edi                                     ; 100207AE _ FF. D7
?_4269: mov     eax, dword [ebp+0CH]                    ; 100207B0 _ 8B. 45, 0C
        pop     edi                                     ; 100207B3 _ 5F
        pop     esi                                     ; 100207B4 _ 5E
        pop     ebx                                     ; 100207B5 _ 5B
        pop     ebp                                     ; 100207B6 _ 5D
        ret                                             ; 100207B7 _ C3

