; ---- 10020BEB ----
?_4311: ; Local function
        push    ebx                                     ; 10020BEB _ 53
        push    esi                                     ; 10020BEC _ 56
        push    edi                                     ; 10020BED _ 57
        xor     edi, edi                                ; 10020BEE _ 33. FF
        cmp     dword [?_5482], edi                     ; 10020BF0 _ 39. 3D, 10033F84(d)
        jnz     ?_4313                                  ; 10020BF6 _ 75, 07
?_4312: xor     eax, eax                                ; 10020BF8 _ 33. C0
        jmp     ?_4322                                  ; 10020BFA _ E9, 0000014C

?_4313: mov     esi, dword [esp+10H]                    ; 10020BFF _ 8B. 74 24, 10
        push    1                                       ; 10020C03 _ 6A, 01
        pop     ebx                                     ; 10020C05 _ 5B
        mov     eax, dword [esi+14H]                    ; 10020C06 _ 8B. 46, 14
        cmp     eax, dword [?_5488]                     ; 10020C09 _ 3B. 05, 10034018(d)
        jnz     ?_4314                                  ; 10020C0F _ 75, 0C
        cmp     eax, dword [?_5491]                     ; 10020C11 _ 3B. 05, 10034028(d)
        je      ?_4320                                  ; 10020C17 _ 0F 84, 00000102
?_4314: cmp     dword [?_5595], edi                     ; 10020C1D _ 39. 3D, 100356E8(d)
        je      ?_4319                                  ; 10020C23 _ 0F 84, 000000CC
        movzx   ecx, word [?_5615]                      ; 10020C29 _ 0F B7. 0D, 10035796(d)
        push    ecx                                     ; 10020C30 _ 51
        cmp     word [?_5608], di                       ; 10020C31 _ 66: 39. 3D, 10035788(d)
        movzx   ecx, word [?_5614]                      ; 10020C38 _ 0F B7. 0D, 10035794(d)
        push    ecx                                     ; 10020C3F _ 51
        movzx   ecx, word [?_5613]                      ; 10020C40 _ 0F B7. 0D, 10035792(d)
        push    ecx                                     ; 10020C47 _ 51
        movzx   ecx, word [?_5612]                      ; 10020C48 _ 0F B7. 0D, 10035790(d)
        push    ecx                                     ; 10020C4F _ 51
        jnz     ?_4315                                  ; 10020C50 _ 75, 1D
        movzx   ecx, word [?_5610]                      ; 10020C52 _ 0F B7. 0D, 1003578C(d)
        push    edi                                     ; 10020C59 _ 57
        push    ecx                                     ; 10020C5A _ 51
        movzx   ecx, word [?_5611]                      ; 10020C5B _ 0F B7. 0D, 1003578E(d)
        push    ecx                                     ; 10020C62 _ 51
        movzx   ecx, word [?_5609]                      ; 10020C63 _ 0F B7. 0D, 1003578A(d)
        push    ecx                                     ; 10020C6A _ 51
        push    eax                                     ; 10020C6B _ 50
        push    ebx                                     ; 10020C6C _ 53
        jmp     ?_4316                                  ; 10020C6D _ EB, 14

?_4315: movzx   ecx, word [?_5611]                      ; 10020C6F _ 0F B7. 0D, 1003578E(d)
        push    ecx                                     ; 10020C76 _ 51
        push    edi                                     ; 10020C77 _ 57
        movzx   ecx, word [?_5609]                      ; 10020C78 _ 0F B7. 0D, 1003578A(d)
        push    edi                                     ; 10020C7F _ 57
        push    ecx                                     ; 10020C80 _ 51
        push    eax                                     ; 10020C81 _ 50
        push    edi                                     ; 10020C82 _ 57
?_4316: push    ebx                                     ; 10020C83 _ 53
        call    ?_4327                                  ; 10020C84 _ E8, 0000010E
        movzx   eax, word [?_5605]                      ; 10020C89 _ 0F B7. 05, 10035742(d)
        add     esp, 44                                 ; 10020C90 _ 83. C4, 2C
        cmp     word [?_5598], di                       ; 10020C93 _ 66: 39. 3D, 10035734(d)
        push    eax                                     ; 10020C9A _ 50
        movzx   eax, word [?_5604]                      ; 10020C9B _ 0F B7. 05, 10035740(d)
        push    eax                                     ; 10020CA2 _ 50
        movzx   eax, word [?_5603]                      ; 10020CA3 _ 0F B7. 05, 1003573E(d)
        push    eax                                     ; 10020CAA _ 50
        movzx   eax, word [?_5602]                      ; 10020CAB _ 0F B7. 05, 1003573C(d)
        push    eax                                     ; 10020CB2 _ 50
        jnz     ?_4318                                  ; 10020CB3 _ 75, 28
        movzx   eax, word [?_5600]                      ; 10020CB5 _ 0F B7. 05, 10035738(d)
        push    edi                                     ; 10020CBC _ 57
        push    eax                                     ; 10020CBD _ 50
        movzx   eax, word [?_5601]                      ; 10020CBE _ 0F B7. 05, 1003573A(d)
        push    eax                                     ; 10020CC5 _ 50
        movzx   eax, word [?_5599]                      ; 10020CC6 _ 0F B7. 05, 10035736(d)
        push    eax                                     ; 10020CCD _ 50
        push    dword [esi+14H]                         ; 10020CCE _ FF. 76, 14
        push    ebx                                     ; 10020CD1 _ 53
?_4317: push    edi                                     ; 10020CD2 _ 57
        call    ?_4327                                  ; 10020CD3 _ E8, 000000BF
        add     esp, 44                                 ; 10020CD8 _ 83. C4, 2C
        jmp     ?_4320                                  ; 10020CDB _ EB, 42

?_4318: movzx   eax, word [?_5601]                      ; 10020CDD _ 0F B7. 05, 1003573A(d)
        push    eax                                     ; 10020CE4 _ 50
        push    edi                                     ; 10020CE5 _ 57
        movzx   eax, word [?_5599]                      ; 10020CE6 _ 0F B7. 05, 10035736(d)
        push    edi                                     ; 10020CED _ 57
        push    eax                                     ; 10020CEE _ 50
        push    dword [esi+14H]                         ; 10020CEF _ FF. 76, 14
        push    edi                                     ; 10020CF2 _ 57
        jmp     ?_4317                                  ; 10020CF3 _ EB, DD

?_4319: push    edi                                     ; 10020CF5 _ 57
        push    edi                                     ; 10020CF6 _ 57
        push    edi                                     ; 10020CF7 _ 57
        push    2                                       ; 10020CF8 _ 6A, 02
        push    edi                                     ; 10020CFA _ 57
        push    edi                                     ; 10020CFB _ 57
        push    ebx                                     ; 10020CFC _ 53
        push    4                                       ; 10020CFD _ 6A, 04
        push    eax                                     ; 10020CFF _ 50
        push    ebx                                     ; 10020D00 _ 53
        push    ebx                                     ; 10020D01 _ 53
        call    ?_4327                                  ; 10020D02 _ E8, 00000090
        push    edi                                     ; 10020D07 _ 57
        push    edi                                     ; 10020D08 _ 57
        push    edi                                     ; 10020D09 _ 57
        push    2                                       ; 10020D0A _ 6A, 02
        push    edi                                     ; 10020D0C _ 57
        push    edi                                     ; 10020D0D _ 57
        push    5                                       ; 10020D0E _ 6A, 05
        push    10                                      ; 10020D10 _ 6A, 0A
        push    dword [esi+14H]                         ; 10020D12 _ FF. 76, 14
        push    ebx                                     ; 10020D15 _ 53
        push    edi                                     ; 10020D16 _ 57
        call    ?_4327                                  ; 10020D17 _ E8, 0000007B
        add     esp, 88                                 ; 10020D1C _ 83. C4, 58
?_4320: mov     edx, dword [?_5489]                     ; 10020D1F _ 8B. 15, 1003401C(d)
        mov     eax, dword [?_5492]                     ; 10020D25 _ A1, 1003402C(d)
        mov     ecx, dword [esi+1CH]                    ; 10020D2A _ 8B. 4E, 1C
        cmp     edx, eax                                ; 10020D2D _ 3B. D0
        jge     ?_4323                                  ; 10020D2F _ 7D, 1E
        cmp     ecx, edx                                ; 10020D31 _ 3B. CA
        jl      ?_4312                                  ; 10020D33 _ 0F 8C, FFFFFEBF
        cmp     ecx, eax                                ; 10020D39 _ 3B. C8
        jg      ?_4312                                  ; 10020D3B _ 0F 8F, FFFFFEB7
        cmp     ecx, edx                                ; 10020D41 _ 3B. CA
        jle     ?_4324                                  ; 10020D43 _ 7E, 1E
        cmp     ecx, eax                                ; 10020D45 _ 3B. C8
        jge     ?_4324                                  ; 10020D47 _ 7D, 1A
?_4321: mov     eax, ebx                                ; 10020D49 _ 8B. C3
?_4322: pop     edi                                     ; 10020D4B _ 5F
        pop     esi                                     ; 10020D4C _ 5E
        pop     ebx                                     ; 10020D4D _ 5B
        ret                                             ; 10020D4E _ C3

?_4323: cmp     ecx, eax                                ; 10020D4F _ 3B. C8
        jl      ?_4321                                  ; 10020D51 _ 7C, F6
        cmp     ecx, edx                                ; 10020D53 _ 3B. CA
        jg      ?_4321                                  ; 10020D55 _ 7F, F2
        cmp     ecx, eax                                ; 10020D57 _ 3B. C8
        jle     ?_4324                                  ; 10020D59 _ 7E, 08
        cmp     ecx, edx                                ; 10020D5B _ 3B. CA
        jl      ?_4312                                  ; 10020D5D _ 0F 8C, FFFFFE95
?_4324: mov     eax, dword [esi+8H]                     ; 10020D63 _ 8B. 46, 08
        imul    eax, eax, 60                            ; 10020D66 _ 6B. C0, 3C
        add     eax, dword [esi+4H]                     ; 10020D69 _ 03. 46, 04
        imul    eax, eax, 60                            ; 10020D6C _ 6B. C0, 3C
        add     eax, dword [esi]                        ; 10020D6F _ 03. 06
        imul    eax, eax, 1000                          ; 10020D71 _ 69. C0, 000003E8
        cmp     ecx, edx                                ; 10020D77 _ 3B. CA
        jnz     ?_4326                                  ; 10020D79 _ 75, 0F
        xor     ecx, ecx                                ; 10020D7B _ 33. C9
        cmp     eax, dword [?_5490]                     ; 10020D7D _ 3B. 05, 10034020(d)
        setge   cl                                      ; 10020D83 _ 0F 9D. C1
?_4325: mov     eax, ecx                                ; 10020D86 _ 8B. C1
        jmp     ?_4322                                  ; 10020D88 _ EB, C1
