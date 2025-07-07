; ---- 100057B1 ----
?_0529: ; Local function
        mov     eax, 4294967294                         ; 100057B1 _ B8, FFFFFFFE
        pop     esi                                     ; 100057B6 _ 5E
        ret                                             ; 100057B7 _ C3

        nop                                             ; 100057B8 _ 90
        nop                                             ; 100057B9 _ 90
        nop                                             ; 100057BA _ 90
        nop                                             ; 100057BB _ 90
        nop                                             ; 100057BC _ 90
        nop                                             ; 100057BD _ 90
        nop                                             ; 100057BE _ 90
        nop                                             ; 100057BF _ 90
?_0530: mov     eax, dword [esp+0CH]                    ; 100057C0 _ 8B. 44 24, 0C
        push    esi                                     ; 100057C4 _ 56
        push    edi                                     ; 100057C5 _ 57
        xor     edi, edi                                ; 100057C6 _ 33. FF
        cmp     eax, edi                                ; 100057C8 _ 3B. C7
        je      ?_0538                                  ; 100057CA _ 0F 84, 000000F6
        mov     al, byte [eax]                          ; 100057D0 _ 8A. 00
        mov     cl, byte [?_5057]                       ; 100057D2 _ 8A. 0D, 1002706C(d)
        cmp     al, cl                                  ; 100057D8 _ 3A. C1
        jne     ?_0538                                  ; 100057DA _ 0F 85, 000000E6
        cmp     dword [esp+18H], 56                     ; 100057E0 _ 83. 7C 24, 18, 38
        jne     ?_0538                                  ; 100057E5 _ 0F 85, 000000DB
        mov     esi, dword [esp+0CH]                    ; 100057EB _ 8B. 74 24, 0C
        cmp     esi, edi                                ; 100057EF _ 3B. F7
        jnz     ?_0531                                  ; 100057F1 _ 75, 08
        pop     edi                                     ; 100057F3 _ 5F
        mov     eax, 4294967294                         ; 100057F4 _ B8, FFFFFFFE
        pop     esi                                     ; 100057F9 _ 5E
        ret                                             ; 100057FA _ C3

?_0531: mov     eax, dword [esi+20H]                    ; 100057FB _ 8B. 46, 20
        mov     dword [esi+18H], edi                    ; 100057FE _ 89. 7E, 18
        cmp     eax, edi                                ; 10005801 _ 3B. C7
        jnz     ?_0532                                  ; 10005803 _ 75, 0A
        mov     dword [esi+20H], ?_0950                 ; 10005805 _ C7. 46, 20, 100092E0(d)
        mov     dword [esi+28H], edi                    ; 1000580C _ 89. 7E, 28
?_0532: cmp     dword [esi+24H], edi                    ; 1000580F _ 39. 7E, 24
        jnz     ?_0533                                  ; 10005812 _ 75, 07
        mov     dword [esi+24H], ?_0951                 ; 10005814 _ C7. 46, 24, 10009300(d)
?_0533: mov     ecx, dword [esi+28H]                    ; 1000581B _ 8B. 4E, 28
        push    24                                      ; 1000581E _ 6A, 18
        push    1                                       ; 10005820 _ 6A, 01
        push    ecx                                     ; 10005822 _ 51
        call    near [esi+20H]                          ; 10005823 _ FF. 56, 20
        add     esp, 12                                 ; 10005826 _ 83. C4, 0C
        cmp     eax, edi                                ; 10005829 _ 3B. C7
        mov     dword [esi+1CH], eax                    ; 1000582B _ 89. 46, 1C
        jnz     ?_0534                                  ; 1000582E _ 75, 08
        pop     edi                                     ; 10005830 _ 5F
        mov     eax, 4294967292                         ; 10005831 _ B8, FFFFFFFC
        pop     esi                                     ; 10005836 _ 5E
        ret                                             ; 10005837 _ C3

?_0534: mov     ecx, dword [esp+10H]                    ; 10005838 _ 8B. 4C 24, 10
        mov     dword [eax+14H], edi                    ; 1000583C _ 89. 78, 14
        mov     edx, dword [esi+1CH]                    ; 1000583F _ 8B. 56, 1C
        cmp     ecx, edi                                ; 10005842 _ 3B. CF
        mov     dword [edx+0CH], edi                    ; 10005844 _ 89. 7A, 0C
        jge     ?_0535                                  ; 10005847 _ 7D, 0C
        mov     eax, dword [esi+1CH]                    ; 10005849 _ 8B. 46, 1C
        neg     ecx                                     ; 1000584C _ F7. D9
        mov     dword [eax+0CH], 1                      ; 1000584E _ C7. 40, 0C, 00000001
?_0535: cmp     ecx, 8                                  ; 10005855 _ 83. F9, 08
        jl      ?_0537                                  ; 10005858 _ 7C, 5B
        cmp     ecx, 15                                 ; 1000585A _ 83. F9, 0F
        jg      ?_0537                                  ; 1000585D _ 7F, 56
        mov     edx, dword [esi+1CH]                    ; 1000585F _ 8B. 56, 1C
        mov     eax, 1                                  ; 10005862 _ B8, 00000001
        shl     eax, cl                                 ; 10005867 _ D3. E0
        mov     dword [edx+10H], ecx                    ; 10005869 _ 89. 4A, 10
        mov     ecx, dword [esi+1CH]                    ; 1000586C _ 8B. 4E, 1C
        mov     edx, dword [ecx+0CH]                    ; 1000586F _ 8B. 51, 0C
        neg     edx                                     ; 10005872 _ F7. DA
        sbb     edx, edx                                ; 10005874 _ 1B. D2
        push    eax                                     ; 10005876 _ 50
        not     edx                                     ; 10005877 _ F7. D2
        and     edx, ?_0001                             ; 10005879 _ 81. E2, 10001000(d)
        push    edx                                     ; 1000587F _ 52
        push    esi                                     ; 10005880 _ 56
        call    ?_0342                                  ; 10005881 _ E8, FFFFE51A
        mov     ecx, dword [esi+1CH]                    ; 10005886 _ 8B. 4E, 1C
        add     esp, 12                                 ; 10005889 _ 83. C4, 0C
        mov     dword [ecx+14H], eax                    ; 1000588C _ 89. 41, 14
        mov     edx, dword [esi+1CH]                    ; 1000588F _ 8B. 56, 1C
        push    esi                                     ; 10005892 _ 56
        cmp     dword [edx+14H], edi                    ; 10005893 _ 39. 7A, 14
        jnz     ?_0536                                  ; 10005896 _ 75, 10
        call    ?_0527                                  ; 10005898 _ E8, FFFFFED3
        add     esp, 4                                  ; 1000589D _ 83. C4, 04
        mov     eax, 4294967292                         ; 100058A0 _ B8, FFFFFFFC
        pop     edi                                     ; 100058A5 _ 5F
        pop     esi                                     ; 100058A6 _ 5E
        ret                                             ; 100058A7 _ C3

?_0536: call    ?_0525                                  ; 100058A8 _ E8, FFFFFE73
        add     esp, 4                                  ; 100058AD _ 83. C4, 04
        xor     eax, eax                                ; 100058B0 _ 33. C0
        pop     edi                                     ; 100058B2 _ 5F
        pop     esi                                     ; 100058B3 _ 5E
        ret                                             ; 100058B4 _ C3

?_0537: push    esi                                     ; 100058B5 _ 56
        call    ?_0527                                  ; 100058B6 _ E8, FFFFFEB5
        add     esp, 4                                  ; 100058BB _ 83. C4, 04
        mov     eax, 4294967294                         ; 100058BE _ B8, FFFFFFFE
        pop     edi                                     ; 100058C3 _ 5F
        pop     esi                                     ; 100058C4 _ 5E
        ret                                             ; 100058C5 _ C3

