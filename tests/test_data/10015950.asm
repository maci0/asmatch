; ---- 10015950 ----
?_2392: ; Local function
        sub     esp, 520                                ; 10015950 _ 81. EC, 00000208
        push    ebx                                     ; 10015956 _ 53
        push    esi                                     ; 10015957 _ 56
        push    edi                                     ; 10015958 _ 57
        push    1                                       ; 10015959 _ 6A, 01
        push    ?_5415                                  ; 1001595B _ 68, 10031218(d)
        push    1235                                    ; 10015960 _ 68, 000004D3
        push    ?_5397                                  ; 10015965 _ 68, 10031004(d)
        call    ?_0267                                  ; 1001596A _ E8, FFFEDCD1
        push    1                                       ; 1001596F _ 6A, 01
        push    ?_5414                                  ; 10015971 _ 68, 10031204(d)
        push    1238                                    ; 10015976 _ 68, 000004D6
        push    ?_5397                                  ; 1001597B _ 68, 10031004(d)
        call    ?_0267                                  ; 10015980 _ E8, FFFEDCBB
        add     esp, 32                                 ; 10015985 _ 83. C4, 20
        mov     edx, ?_5673                             ; 10015988 _ BA, 100A8CF8(d)
        mov     eax, ?_5665                             ; 1001598D _ B8, 1009B764(d)
        mov     ebx, 1000                               ; 10015992 _ BB, 000003E8
?_2393: mov     ecx, dword [edx-50H]                    ; 10015997 _ 8B. 4A, B0
        lea     edi, [eax+0CH]                          ; 1001599A _ 8D. 78, 0C
        mov     dword [eax-4H], ecx                     ; 1001599D _ 89. 48, FC
        mov     ecx, dword [edx]                        ; 100159A0 _ 8B. 0A
        mov     dword [eax], ebx                        ; 100159A2 _ 89. 18
        mov     dword [eax+4H], ecx                     ; 100159A4 _ 89. 48, 04
        mov     dword [eax+8H], ebx                     ; 100159A7 _ 89. 58, 08
        add     edx, 756                                ; 100159AA _ 81. C2, 000002F4
        mov     ecx, 2720                               ; 100159B0 _ B9, 00000AA0
        mov     esi, ?_5376                             ; 100159B5 _ BE, 1002DDE0(d)
        add     eax, 10896                              ; 100159BA _ 05, 00002A90
        cmp     edx, ?_5676                             ; 100159BF _ 81. FA, 100A9BBC(d)
        rep movsd                                       ; 100159C5 _ F3: A5
        jl      ?_2393                                  ; 100159C7 _ 7C, CE
        push    1                                       ; 100159C9 _ 6A, 01
        push    ?_5413                                  ; 100159CB _ 68, 100311F0(d)
        push    1251                                    ; 100159D0 _ 68, 000004E3
        push    ?_5397                                  ; 100159D5 _ 68, 10031004(d)
        call    ?_0267                                  ; 100159DA _ E8, FFFEDC61
        push    ?_5412                                  ; 100159DF _ 68, 100311D8(d)
        push    51832                                   ; 100159E4 _ 68, 0000CA78
        call    ?_0640                                  ; 100159E9 _ E8, FFFF0B92
        add     esp, 24                                 ; 100159EE _ 83. C4, 18
        mov     dword [?_5668], eax                     ; 100159F1 _ A3, 100A8C30(d)
        test    eax, eax                                ; 100159F6 _ 85. C0
        jnz     ?_2394                                  ; 100159F8 _ 75, 26
        push    1                                       ; 100159FA _ 6A, 01
        push    ?_5411                                  ; 100159FC _ 68, 100311B8(d)
        push    1256                                    ; 10015A01 _ 68, 000004E8
        push    ?_5397                                  ; 10015A06 _ 68, 10031004(d)
        call    ?_0267                                  ; 10015A0B _ E8, FFFEDC30
        add     esp, 16                                 ; 10015A10 _ 83. C4, 10
        or      eax, 0FFFFFFFFH                         ; 10015A13 _ 83. C8, FF
        pop     edi                                     ; 10015A16 _ 5F
        pop     esi                                     ; 10015A17 _ 5E
        pop     ebx                                     ; 10015A18 _ 5B
        add     esp, 520                                ; 10015A19 _ 81. C4, 00000208
        ret                                             ; 10015A1F _ C3
