; ---- 10010260 ----
?_1861: ; Local function
        mov     eax, dword [?_5380]                     ; 10010260 _ A1, 10030B6C(d)
        push    esi                                     ; 10010265 _ 56
        mov     esi, dword [esp+8H]                     ; 10010266 _ 8B. 74 24, 08
        mov     dword [esi+27H], eax                    ; 1001026A _ 89. 46, 27
        call    ?_3297                                  ; 1001026D _ E8, 0000B2D0
        mov     ecx, dword [esi+10H]                    ; 10010272 _ 8B. 4E, 10
        mov     dword [esi+2BH], eax                    ; 10010275 _ 89. 46, 2B
        lea     eax, [esi+10H]                          ; 10010278 _ 8D. 46, 10
        cmp     ecx, 6                                  ; 1001027B _ 83. F9, 06
        pop     esi                                     ; 1001027E _ 5E
        ja      ?_1869                                  ; 1001027F _ 77, 4D
        jmp     near [?_1870+ecx*4]                     ; 10010281 _ FF. 24 8D, 100102D4(d)

?_1862: push    eax                                     ; 10010288 _ 50
        call    ?_1970                                  ; 10010289 _ E8, 00000D12
        add     esp, 4                                  ; 1001028E _ 83. C4, 04
        ret                                             ; 10010291 _ C3

?_1863: push    eax                                     ; 10010292 _ 50
        call    ?_1981                                  ; 10010293 _ E8, 00000F18
        add     esp, 4                                  ; 10010298 _ 83. C4, 04
        ret                                             ; 1001029B _ C3

?_1864: push    eax                                     ; 1001029C _ 50
        call    ?_1992                                  ; 1001029D _ E8, 0000110E
        add     esp, 4                                  ; 100102A2 _ 83. C4, 04
        ret                                             ; 100102A5 _ C3

?_1865: push    eax                                     ; 100102A6 _ 50
        call    ?_2000                                  ; 100102A7 _ E8, 00001294
        add     esp, 4                                  ; 100102AC _ 83. C4, 04
        ret                                             ; 100102AF _ C3

?_1866: push    eax                                     ; 100102B0 _ 50
        call    ?_2008                                  ; 100102B1 _ E8, 000013AA
        add     esp, 4                                  ; 100102B6 _ 83. C4, 04
        ret                                             ; 100102B9 _ C3

?_1867: push    eax                                     ; 100102BA _ 50
        call    ?_2018                                  ; 100102BB _ E8, 000014D0
        add     esp, 4                                  ; 100102C0 _ 83. C4, 04
        ret                                             ; 100102C3 _ C3

?_1868: push    eax                                     ; 100102C4 _ 50
        call    ?_2025                                  ; 100102C5 _ E8, 000015C6
        add     esp, 4                                  ; 100102CA _ 83. C4, 04
        ret                                             ; 100102CD _ C3
