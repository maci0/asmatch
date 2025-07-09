; ---- 1001A835 ----
?_3114: ; Local function
        push    ebp                                     ; 1001A835 _ 55
        mov     ebp, esp                                ; 1001A836 _ 8B. EC
        push    -1                                      ; 1001A838 _ 6A, FF
        push    ?_4952                                  ; 1001A83A _ 68, 10025FC0(d)
        push    ?_3881                                  ; 1001A83F _ 68, 1001E7DC(d)
; Note: Absolute memory address without relocation
        mov     eax, dword [fs:0H]                      ; 1001A844 _ 64: A1, 00000000
        push    eax                                     ; 1001A84A _ 50
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], esp                      ; 1001A84B _ 64: 89. 25, 00000000
        sub     esp, 12                                 ; 1001A852 _ 83. EC, 0C
        push    ebx                                     ; 1001A855 _ 53
        push    esi                                     ; 1001A856 _ 56
        push    edi                                     ; 1001A857 _ 57
        mov     eax, dword [?_5808]                     ; 1001A858 _ A1, 11766450(d)
        cmp     eax, 3                                  ; 1001A85D _ 83. F8, 03
        jnz     ?_3116                                  ; 1001A860 _ 75, 43
        mov     esi, dword [ebp+8H]                     ; 1001A862 _ 8B. 75, 08
        cmp     esi, dword [?_5806]                     ; 1001A865 _ 3B. 35, 11766448(d)
        ja      ?_3122                                  ; 1001A86B _ 0F 87, 00000093
        push    9                                       ; 1001A871 _ 6A, 09
        call    ?_3610                                  ; 1001A873 _ E8, 000027BE
        pop     ecx                                     ; 1001A878 _ 59
        and     dword [ebp-4H], 00H                     ; 1001A879 _ 83. 65, FC, 00
        push    esi                                     ; 1001A87D _ 56
        call    ?_3697                                  ; 1001A87E _ E8, 00002FE6
        pop     ecx                                     ; 1001A883 _ 59
        mov     dword [ebp-1CH], eax                    ; 1001A884 _ 89. 45, E4
        or      dword [ebp-4H], 0FFFFFFFFH              ; 1001A887 _ 83. 4D, FC, FF
        call    ?_3115                                  ; 1001A88B _ E8, 0000000C
        mov     eax, dword [ebp-1CH]                    ; 1001A890 _ 8B. 45, E4
        test    eax, eax                                ; 1001A893 _ 85. C0
        jz      ?_3122                                  ; 1001A895 _ 74, 6D
        jmp     ?_3125                                  ; 1001A897 _ E9, 00000086

?_3115: push    9                                       ; 1001A89C _ 6A, 09
        call    ?_3615                                  ; 1001A89E _ E8, 000027F4
        pop     ecx                                     ; 1001A8A3 _ 59
        ret                                             ; 1001A8A4 _ C3

?_3116: cmp     eax, 2                                  ; 1001A8A5 _ 83. F8, 02
        jnz     ?_3122                                  ; 1001A8A8 _ 75, 5A
        mov     eax, dword [ebp+8H]                     ; 1001A8AA _ 8B. 45, 08
        test    eax, eax                                ; 1001A8AD _ 85. C0
        jz      ?_3117                                  ; 1001A8AF _ 74, 08
        lea     esi, [eax+0FH]                          ; 1001A8B1 _ 8D. 70, 0F
        and     esi, 0FFFFFFF0H                         ; 1001A8B4 _ 83. E6, F0
        jmp     ?_3118                                  ; 1001A8B7 _ EB, 03

?_3117: push    16                                      ; 1001A8B9 _ 6A, 10
        pop     esi                                     ; 1001A8BB _ 5E
?_3118: mov     dword [ebp+8H], esi                     ; 1001A8BC _ 89. 75, 08
        cmp     esi, dword [?_5467]                     ; 1001A8BF _ 3B. 35, 10033B9C(d)
        ja      ?_3119                                  ; 1001A8C5 _ 77, 2E
        push    9                                       ; 1001A8C7 _ 6A, 09
        call    ?_3610                                  ; 1001A8C9 _ E8, 00002768
        pop     ecx                                     ; 1001A8CE _ 59
        mov     dword [ebp-4H], 1                       ; 1001A8CF _ C7. 45, FC, 00000001
        mov     eax, esi                                ; 1001A8D6 _ 8B. C6
        shr     eax, 4                                  ; 1001A8D8 _ C1. E8, 04
        push    eax                                     ; 1001A8DB _ 50
        call    ?_3808                                  ; 1001A8DC _ E8, 00003A2B
        pop     ecx                                     ; 1001A8E1 _ 59
        mov     dword [ebp-1CH], eax                    ; 1001A8E2 _ 89. 45, E4
        or      dword [ebp-4H], 0FFFFFFFFH              ; 1001A8E5 _ 83. 4D, FC, FF
        call    ?_3121                                  ; 1001A8E9 _ E8, 0000000D
        mov     eax, dword [ebp-1CH]                    ; 1001A8EE _ 8B. 45, E4
        test    eax, eax                                ; 1001A8F1 _ 85. C0
        jnz     ?_3125                                  ; 1001A8F3 _ 75, 2D
?_3119: push    esi                                     ; 1001A8F5 _ 56
        jmp     ?_3124                                  ; 1001A8F6 _ EB, 1C

?_3120: mov     esi, dword [ebp+8H]                     ; 1001A8F8 _ 8B. 75, 08
?_3121: push    9                                       ; 1001A8FB _ 6A, 09
        call    ?_3615                                  ; 1001A8FD _ E8, 00002795
        pop     ecx                                     ; 1001A902 _ 59
        ret                                             ; 1001A903 _ C3

?_3122: mov     eax, dword [ebp+8H]                     ; 1001A904 _ 8B. 45, 08
        test    eax, eax                                ; 1001A907 _ 85. C0
        jnz     ?_3123                                  ; 1001A909 _ 75, 03
        push    1                                       ; 1001A90B _ 6A, 01
        pop     eax                                     ; 1001A90D _ 58
?_3123: add     eax, 15                                 ; 1001A90E _ 83. C0, 0F
        and     al, 0FFFFFFF0H                          ; 1001A911 _ 24, F0
        push    eax                                     ; 1001A913 _ 50
?_3124: push    0                                       ; 1001A914 _ 6A, 00
        push    dword [?_5807]                          ; 1001A916 _ FF. 35, 1176644C(d)
        call    near [imp_HeapAlloc]                    ; 1001A91C _ FF. 15, 100240CC(d)
?_3125: mov     ecx, dword [ebp-10H]                    ; 1001A922 _ 8B. 4D, F0
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], ecx                      ; 1001A925 _ 64: 89. 0D, 00000000
        pop     edi                                     ; 1001A92C _ 5F
        pop     esi                                     ; 1001A92D _ 5E
        pop     ebx                                     ; 1001A92E _ 5B
        leave                                           ; 1001A92F _ C9
        ret                                             ; 1001A930 _ C3
