; ---- 1001AB81 ----
?_3158: ; Local function
        push    ebp                                     ; 1001AB81 _ 55
        mov     ebp, esp                                ; 1001AB82 _ 8B. EC
        push    -1                                      ; 1001AB84 _ 6A, FF
        push    ?_4953                                  ; 1001AB86 _ 68, 10025FD8(d)
        push    ?_3881                                  ; 1001AB8B _ 68, 1001E7DC(d)
; Note: Absolute memory address without relocation
        mov     eax, dword [fs:0H]                      ; 1001AB90 _ 64: A1, 00000000
        push    eax                                     ; 1001AB96 _ 50
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], esp                      ; 1001AB97 _ 64: 89. 25, 00000000
        sub     esp, 24                                 ; 1001AB9E _ 83. EC, 18
        push    ebx                                     ; 1001ABA1 _ 53
        push    esi                                     ; 1001ABA2 _ 56
        push    edi                                     ; 1001ABA3 _ 57
        mov     esi, dword [ebp+8H]                     ; 1001ABA4 _ 8B. 75, 08
        test    esi, esi                                ; 1001ABA7 _ 85. F6
        je      ?_3167                                  ; 1001ABA9 _ 0F 84, 000000AC
        mov     eax, dword [?_5808]                     ; 1001ABAF _ A1, 11766450(d)
        cmp     eax, 3                                  ; 1001ABB4 _ 83. F8, 03
        jnz     ?_3161                                  ; 1001ABB7 _ 75, 3B
        push    9                                       ; 1001ABB9 _ 6A, 09
        call    ?_3610                                  ; 1001ABBB _ E8, 00002476
        pop     ecx                                     ; 1001ABC0 _ 59
        and     dword [ebp-4H], 00H                     ; 1001ABC1 _ 83. 65, FC, 00
        push    esi                                     ; 1001ABC5 _ 56
        call    ?_3669                                  ; 1001ABC6 _ E8, 0000294A
        pop     ecx                                     ; 1001ABCB _ 59
        mov     dword [ebp-1CH], eax                    ; 1001ABCC _ 89. 45, E4
        test    eax, eax                                ; 1001ABCF _ 85. C0
        jz      ?_3159                                  ; 1001ABD1 _ 74, 09
        push    esi                                     ; 1001ABD3 _ 56
        push    eax                                     ; 1001ABD4 _ 50
        call    ?_3673                                  ; 1001ABD5 _ E8, 00002966
        pop     ecx                                     ; 1001ABDA _ 59
        pop     ecx                                     ; 1001ABDB _ 59
?_3159: or      dword [ebp-4H], 0FFFFFFFFH              ; 1001ABDC _ 83. 4D, FC, FF
        call    ?_3160                                  ; 1001ABE0 _ E8, 00000006
        cmp     dword [ebp-1CH], 0                      ; 1001ABE5 _ 83. 7D, E4, 00
        jmp     ?_3163                                  ; 1001ABE9 _ EB, 51

?_3160: push    9                                       ; 1001ABEB _ 6A, 09
        call    ?_3615                                  ; 1001ABED _ E8, 000024A5
        pop     ecx                                     ; 1001ABF2 _ 59
        ret                                             ; 1001ABF3 _ C3

?_3161: cmp     eax, 2                                  ; 1001ABF4 _ 83. F8, 02
        jnz     ?_3165                                  ; 1001ABF7 _ 75, 53
        push    9                                       ; 1001ABF9 _ 6A, 09
        call    ?_3610                                  ; 1001ABFB _ E8, 00002436
        pop     ecx                                     ; 1001AC00 _ 59
        mov     dword [ebp-4H], 1                       ; 1001AC01 _ C7. 45, FC, 00000001
        lea     eax, [ebp-20H]                          ; 1001AC08 _ 8D. 45, E0
        push    eax                                     ; 1001AC0B _ 50
        lea     eax, [ebp-28H]                          ; 1001AC0C _ 8D. 45, D8
        push    eax                                     ; 1001AC0F _ 50
        push    esi                                     ; 1001AC10 _ 56
        call    ?_3801                                  ; 1001AC11 _ E8, 0000365A
        add     esp, 12                                 ; 1001AC16 _ 83. C4, 0C
        mov     dword [ebp-24H], eax                    ; 1001AC19 _ 89. 45, DC
        test    eax, eax                                ; 1001AC1C _ 85. C0
        jz      ?_3162                                  ; 1001AC1E _ 74, 0F
        push    eax                                     ; 1001AC20 _ 50
        push    dword [ebp-20H]                         ; 1001AC21 _ FF. 75, E0
        push    dword [ebp-28H]                         ; 1001AC24 _ FF. 75, D8
        call    ?_3806                                  ; 1001AC27 _ E8, 0000369B
        add     esp, 12                                 ; 1001AC2C _ 83. C4, 0C
?_3162: or      dword [ebp-4H], 0FFFFFFFFH              ; 1001AC2F _ 83. 4D, FC, FF
        call    ?_3164                                  ; 1001AC33 _ E8, 0000000B
        cmp     dword [ebp-24H], 0                      ; 1001AC38 _ 83. 7D, DC, 00
?_3163: jnz     ?_3167                                  ; 1001AC3C _ 75, 1D
        push    dword [ebp+8H]                          ; 1001AC3E _ FF. 75, 08
        jmp     ?_3166                                  ; 1001AC41 _ EB, 0A

?_3164: push    9                                       ; 1001AC43 _ 6A, 09
        call    ?_3615                                  ; 1001AC45 _ E8, 0000244D
        pop     ecx                                     ; 1001AC4A _ 59
        ret                                             ; 1001AC4B _ C3

?_3165: push    esi                                     ; 1001AC4C _ 56
?_3166: push    0                                       ; 1001AC4D _ 6A, 00
        push    dword [?_5807]                          ; 1001AC4F _ FF. 35, 1176644C(d)
        call    near [imp_HeapFree]                     ; 1001AC55 _ FF. 15, 10024074(d)
?_3167: mov     ecx, dword [ebp-10H]                    ; 1001AC5B _ 8B. 4D, F0
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], ecx                      ; 1001AC5E _ 64: 89. 0D, 00000000
        pop     edi                                     ; 1001AC65 _ 5F
        pop     esi                                     ; 1001AC66 _ 5E
        pop     ebx                                     ; 1001AC67 _ 5B
        leave                                           ; 1001AC68 _ C9
        ret                                             ; 1001AC69 _ C3

        int 3    ; breakpoint or filler                 ; 1001AC6A _ CC
        int 3    ; breakpoint or filler                 ; 1001AC6B _ CC
        int 3    ; breakpoint or filler                 ; 1001AC6C _ CC
        int 3    ; breakpoint or filler                 ; 1001AC6D _ CC
        int 3    ; breakpoint or filler                 ; 1001AC6E _ CC
        int 3    ; breakpoint or filler                 ; 1001AC6F _ CC
?_3168: push    ecx                                     ; 1001AC70 _ 51
        cmp     eax, 4096                               ; 1001AC71 _ 3D, 00001000
        lea     ecx, [esp+8H]                           ; 1001AC76 _ 8D. 4C 24, 08
        jc      ?_3170                                  ; 1001AC7A _ 72, 14
?_3169: sub     ecx, 4096                               ; 1001AC7C _ 81. E9, 00001000
        sub     eax, 4096                               ; 1001AC82 _ 2D, 00001000
        test    dword [ecx], eax                        ; 1001AC87 _ 85. 01
        cmp     eax, 4096                               ; 1001AC89 _ 3D, 00001000
        jnc     ?_3169                                  ; 1001AC8E _ 73, EC
?_3170: sub     ecx, eax                                ; 1001AC90 _ 2B. C8
        mov     eax, esp                                ; 1001AC92 _ 8B. C4
        test    dword [ecx], eax                        ; 1001AC94 _ 85. 01
        mov     esp, ecx                                ; 1001AC96 _ 8B. E1
        mov     ecx, dword [eax]                        ; 1001AC98 _ 8B. 08
        mov     eax, dword [eax+4H]                     ; 1001AC9A _ 8B. 40, 04
        push    eax                                     ; 1001AC9D _ 50
        ret                                             ; 1001AC9E _ C3

