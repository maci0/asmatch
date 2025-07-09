; ---- 10021732 ----
?_4464: ; Local function
        push    ebp                                     ; 10021732 _ 55
        mov     ebp, esp                                ; 10021733 _ 8B. EC
        sub     esp, 24                                 ; 10021735 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 10021738 _ 8B. 45, 08
        push    ebx                                     ; 1002173B _ 53
        push    esi                                     ; 1002173C _ 56
        push    edi                                     ; 1002173D _ 57
        movzx   ecx, word [eax+0AH]                     ; 1002173E _ 0F B7. 48, 0A
        mov     ebx, ecx                                ; 10021742 _ 8B. D9
        and     ecx, 8000H                              ; 10021744 _ 81. E1, 00008000
        mov     dword [ebp+8H], ecx                     ; 1002174A _ 89. 4D, 08
        mov     ecx, dword [eax+6H]                     ; 1002174D _ 8B. 48, 06
        mov     dword [ebp-0CH], ecx                    ; 10021750 _ 89. 4D, F4
        mov     ecx, dword [eax+2H]                     ; 10021753 _ 8B. 48, 02
        movzx   eax, word [eax]                         ; 10021756 _ 0F B7. 00
        mov     edi, dword [ebp+10H]                    ; 10021759 _ 8B. 7D, 10
        and     ebx, 7FFFH                              ; 1002175C _ 81. E3, 00007FFF
        sub     ebx, 16383                              ; 10021762 _ 81. EB, 00003FFF
        mov     dword [ebp-8H], ecx                     ; 10021768 _ 89. 4D, F8
        shl     eax, 16                                 ; 1002176B _ C1. E0, 10
        cmp     ebx, -16383                             ; 1002176E _ 81. FB, FFFFC001
        mov     dword [ebp-4H], eax                     ; 10021774 _ 89. 45, FC
        jnz     ?_4467                                  ; 10021777 _ 75, 26
        lea     eax, [ebp-0CH]                          ; 10021779 _ 8D. 45, F4
        xor     esi, esi                                ; 1002177C _ 33. F6
        push    eax                                     ; 1002177E _ 50
        call    ?_4456                                  ; 1002177F _ E8, FFFFFF06
        test    eax, eax                                ; 10021784 _ 85. C0
        pop     ecx                                     ; 10021786 _ 59
        jne     ?_4473                                  ; 10021787 _ 0F 85, 000000D1
        lea     eax, [ebp-0CH]                          ; 1002178D _ 8D. 45, F4
        push    eax                                     ; 10021790 _ 50
        call    ?_4455                                  ; 10021791 _ E8, FFFFFEE8
        pop     ecx                                     ; 10021796 _ 59
?_4465: push    2                                       ; 10021797 _ 6A, 02
?_4466: pop     eax                                     ; 10021799 _ 58
        jmp     ?_4474                                  ; 1002179A _ E9, 000000C1

?_4467: lea     eax, [ebp-0CH]                          ; 1002179F _ 8D. 45, F4
        push    eax                                     ; 100217A2 _ 50
        lea     eax, [ebp-18H]                          ; 100217A3 _ 8D. 45, E8
        push    eax                                     ; 100217A6 _ 50
        call    ?_4453                                  ; 100217A7 _ E8, FFFFFEB7
        push    dword [edi+8H]                          ; 100217AC _ FF. 77, 08
        lea     eax, [ebp-0CH]                          ; 100217AF _ 8D. 45, F4
        push    eax                                     ; 100217B2 _ 50
        call    ?_4449                                  ; 100217B3 _ E8, FFFFFE1F
        add     esp, 16                                 ; 100217B8 _ 83. C4, 10
        test    eax, eax                                ; 100217BB _ 85. C0
        jz      ?_4468                                  ; 100217BD _ 74, 01
        inc     ebx                                     ; 100217BF _ 43
?_4468: mov     eax, dword [edi+4H]                     ; 100217C0 _ 8B. 47, 04
        mov     ecx, eax                                ; 100217C3 _ 8B. C8
        sub     ecx, dword [edi+8H]                     ; 100217C5 _ 2B. 4F, 08
        cmp     ebx, ecx                                ; 100217C8 _ 3B. D9
        jge     ?_4469                                  ; 100217CA _ 7D, 0C
        lea     eax, [ebp-0CH]                          ; 100217CC _ 8D. 45, F4
        push    eax                                     ; 100217CF _ 50
        call    ?_4455                                  ; 100217D0 _ E8, FFFFFEA9
        pop     ecx                                     ; 100217D5 _ 59
        jmp     ?_4470                                  ; 100217D6 _ EB, 3C

?_4469: cmp     ebx, eax                                ; 100217D8 _ 3B. D8
        jg      ?_4471                                  ; 100217DA _ 7F, 3F
        sub     eax, ebx                                ; 100217DC _ 2B. C3
        mov     esi, eax                                ; 100217DE _ 8B. F0
        lea     eax, [ebp-18H]                          ; 100217E0 _ 8D. 45, E8
        push    eax                                     ; 100217E3 _ 50
        lea     eax, [ebp-0CH]                          ; 100217E4 _ 8D. 45, F4
        push    eax                                     ; 100217E7 _ 50
        call    ?_4453                                  ; 100217E8 _ E8, FFFFFE76
        lea     eax, [ebp-0CH]                          ; 100217ED _ 8D. 45, F4
        push    esi                                     ; 100217F0 _ 56
        push    eax                                     ; 100217F1 _ 50
        call    ?_4459                                  ; 100217F2 _ E8, FFFFFEAE
        push    dword [edi+8H]                          ; 100217F7 _ FF. 77, 08
        lea     eax, [ebp-0CH]                          ; 100217FA _ 8D. 45, F4
        push    eax                                     ; 100217FD _ 50
        call    ?_4449                                  ; 100217FE _ E8, FFFFFDD4
        mov     eax, dword [edi+0CH]                    ; 10021803 _ 8B. 47, 0C
        inc     eax                                     ; 10021806 _ 40
        push    eax                                     ; 10021807 _ 50
        lea     eax, [ebp-0CH]                          ; 10021808 _ 8D. 45, F4
        push    eax                                     ; 1002180B _ 50
        call    ?_4459                                  ; 1002180C _ E8, FFFFFE94
        add     esp, 32                                 ; 10021811 _ 83. C4, 20
?_4470: xor     esi, esi                                ; 10021814 _ 33. F6
        jmp     ?_4465                                  ; 10021816 _ E9, FFFFFF7C

?_4471: cmp     ebx, dword [edi]                        ; 1002181B _ 3B. 1F
        jl      ?_4472                                  ; 1002181D _ 7C, 28
        lea     eax, [ebp-0CH]                          ; 1002181F _ 8D. 45, F4
        push    eax                                     ; 10021822 _ 50
        call    ?_4455                                  ; 10021823 _ E8, FFFFFE56
        push    dword [edi+0CH]                         ; 10021828 _ FF. 77, 0C
        or      byte [ebp-9H], 0FFFFFF80H               ; 1002182B _ 80. 4D, F7, 80
        lea     eax, [ebp-0CH]                          ; 1002182F _ 8D. 45, F4
        push    eax                                     ; 10021832 _ 50
        call    ?_4459                                  ; 10021833 _ E8, FFFFFE6D
        mov     esi, dword [edi+14H]                    ; 10021838 _ 8B. 77, 14
        add     esp, 12                                 ; 1002183B _ 83. C4, 0C
        add     esi, dword [edi]                        ; 1002183E _ 03. 37
        push    1                                       ; 10021840 _ 6A, 01
        jmp     ?_4466                                  ; 10021842 _ E9, FFFFFF52

?_4472: push    dword [edi+0CH]                         ; 10021847 _ FF. 77, 0C
        mov     esi, dword [edi+14H]                    ; 1002184A _ 8B. 77, 14
        and     byte [ebp-9H], 7FH                      ; 1002184D _ 80. 65, F7, 7F
        lea     eax, [ebp-0CH]                          ; 10021851 _ 8D. 45, F4
        push    eax                                     ; 10021854 _ 50
        add     esi, ebx                                ; 10021855 _ 03. F3
        call    ?_4459                                  ; 10021857 _ E8, FFFFFE49
        pop     ecx                                     ; 1002185C _ 59
        pop     ecx                                     ; 1002185D _ 59
?_4473: xor     eax, eax                                ; 1002185E _ 33. C0
?_4474: push    31                                      ; 10021860 _ 6A, 1F
        pop     ecx                                     ; 10021862 _ 59
        sub     ecx, dword [edi+0CH]                    ; 10021863 _ 2B. 4F, 0C
        mov     edi, dword [edi+10H]                    ; 10021866 _ 8B. 7F, 10
        shl     esi, cl                                 ; 10021869 _ D3. E6
        mov     ecx, dword [ebp+8H]                     ; 1002186B _ 8B. 4D, 08
        neg     ecx                                     ; 1002186E _ F7. D9
        sbb     ecx, ecx                                ; 10021870 _ 1B. C9
        and     ecx, 80000000H                          ; 10021872 _ 81. E1, 80000000
        or      esi, ecx                                ; 10021878 _ 0B. F1
        or      esi, dword [ebp-0CH]                    ; 1002187A _ 0B. 75, F4
        cmp     edi, 64                                 ; 1002187D _ 83. FF, 40
        jnz     ?_4475                                  ; 10021880 _ 75, 0D
        mov     ecx, dword [ebp+0CH]                    ; 10021882 _ 8B. 4D, 0C
        mov     edx, dword [ebp-8H]                     ; 10021885 _ 8B. 55, F8
        mov     dword [ecx+4H], esi                     ; 10021888 _ 89. 71, 04
        mov     dword [ecx], edx                        ; 1002188B _ 89. 11
        jmp     ?_4476                                  ; 1002188D _ EB, 0A

?_4475: cmp     edi, 32                                 ; 1002188F _ 83. FF, 20
        jnz     ?_4476                                  ; 10021892 _ 75, 05
        mov     ecx, dword [ebp+0CH]                    ; 10021894 _ 8B. 4D, 0C
        mov     dword [ecx], esi                        ; 10021897 _ 89. 31
?_4476: pop     edi                                     ; 10021899 _ 5F
        pop     esi                                     ; 1002189A _ 5E
        pop     ebx                                     ; 1002189B _ 5B
        leave                                           ; 1002189C _ C9
        ret                                             ; 1002189D _ C3
