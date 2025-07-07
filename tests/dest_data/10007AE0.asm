; ---- 10007AE0 ----
?_0791: ; Local function
        push    ecx                                     ; 10007AE0 _ 51
        mov     eax, dword [esp+0CH]                    ; 10007AE1 _ 8B. 44 24, 0C
        push    ebx                                     ; 10007AE5 _ 53
        xor     ecx, ecx                                ; 10007AE6 _ 33. C9
        push    esi                                     ; 10007AE8 _ 56
        mov     cx, word [eax+2H]                       ; 10007AE9 _ 66: 8B. 48, 02
        push    edi                                     ; 10007AED _ 57
        xor     edi, edi                                ; 10007AEE _ 33. FF
        mov     dword [esp+0CH], -1                     ; 10007AF0 _ C7. 44 24, 0C, FFFFFFFF
        test    ecx, ecx                                ; 10007AF8 _ 85. C9
        mov     edx, 7                                  ; 10007AFA _ BA, 00000007
        mov     esi, 4                                  ; 10007AFF _ BE, 00000004
        jnz     ?_0792                                  ; 10007B04 _ 75, 0A
        mov     edx, 138                                ; 10007B06 _ BA, 0000008A
        mov     esi, 3                                  ; 10007B0B _ BE, 00000003
?_0792: mov     ebx, dword [esp+1CH]                    ; 10007B10 _ 8B. 5C 24, 1C
        test    ebx, ebx                                ; 10007B14 _ 85. DB
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+ebx*4+6H], -1                 ; 10007B16 _ 66: C7. 44 98, 06, FFFF
        jl      ?_0803                                  ; 10007B1D _ 0F 8C, 0000009F
        inc     ebx                                     ; 10007B23 _ 43
        push    ebp                                     ; 10007B24 _ 55
        mov     dword [esp+1CH], ebx                    ; 10007B25 _ 89. 5C 24, 1C
        mov     ebx, dword [esp+18H]                    ; 10007B29 _ 8B. 5C 24, 18
        lea     ebp, [eax+6H]                           ; 10007B2D _ 8D. 68, 06
?_0793: mov     eax, ecx                                ; 10007B30 _ 8B. C1
        xor     ecx, ecx                                ; 10007B32 _ 33. C9
        mov     cx, word [ebp]                          ; 10007B34 _ 66: 8B. 4D, 00
        inc     edi                                     ; 10007B38 _ 47
        cmp     edi, edx                                ; 10007B39 _ 3B. FA
        jge     ?_0794                                  ; 10007B3B _ 7D, 04
        cmp     eax, ecx                                ; 10007B3D _ 3B. C1
        jz      ?_0802                                  ; 10007B3F _ 74, 6E
?_0794: cmp     edi, esi                                ; 10007B41 _ 3B. FE
        jge     ?_0795                                  ; 10007B43 _ 7D, 0A
        add     word [ebx+eax*4+0A74H], di              ; 10007B45 _ 66: 01. BC 83, 00000A74
        jmp     ?_0799                                  ; 10007B4D _ EB, 30

?_0795: test    eax, eax                                ; 10007B4F _ 85. C0
        jz      ?_0797                                  ; 10007B51 _ 74, 17
        cmp     eax, dword [esp+10H]                    ; 10007B53 _ 3B. 44 24, 10
        jz      ?_0796                                  ; 10007B57 _ 74, 08
        inc     word [ebx+eax*4+0A74H]                  ; 10007B59 _ 66: FF. 84 83, 00000A74
?_0796: inc     word [ebx+0AB4H]                        ; 10007B61 _ 66: FF. 83, 00000AB4
        jmp     ?_0799                                  ; 10007B68 _ EB, 15

?_0797: cmp     edi, 10                                 ; 10007B6A _ 83. FF, 0A
        jg      ?_0798                                  ; 10007B6D _ 7F, 09
        inc     word [ebx+0AB8H]                        ; 10007B6F _ 66: FF. 83, 00000AB8
        jmp     ?_0799                                  ; 10007B76 _ EB, 07

?_0798: inc     word [ebx+0ABCH]                        ; 10007B78 _ 66: FF. 83, 00000ABC
?_0799: xor     edi, edi                                ; 10007B7F _ 33. FF
        mov     dword [esp+10H], eax                    ; 10007B81 _ 89. 44 24, 10
        test    ecx, ecx                                ; 10007B85 _ 85. C9
        jnz     ?_0800                                  ; 10007B87 _ 75, 0C
        mov     edx, 138                                ; 10007B89 _ BA, 0000008A
        mov     esi, 3                                  ; 10007B8E _ BE, 00000003
        jmp     ?_0802                                  ; 10007B93 _ EB, 1A

?_0800: cmp     eax, ecx                                ; 10007B95 _ 3B. C1
        jnz     ?_0801                                  ; 10007B97 _ 75, 0C
        mov     edx, 6                                  ; 10007B99 _ BA, 00000006
        mov     esi, 3                                  ; 10007B9E _ BE, 00000003
        jmp     ?_0802                                  ; 10007BA3 _ EB, 0A

?_0801: mov     edx, 7                                  ; 10007BA5 _ BA, 00000007
        mov     esi, 4                                  ; 10007BAA _ BE, 00000004
?_0802: mov     eax, dword [esp+1CH]                    ; 10007BAF _ 8B. 44 24, 1C
        add     ebp, 4                                  ; 10007BB3 _ 83. C5, 04
        dec     eax                                     ; 10007BB6 _ 48
        mov     dword [esp+1CH], eax                    ; 10007BB7 _ 89. 44 24, 1C
        jne     ?_0793                                  ; 10007BBB _ 0F 85, FFFFFF6F
        pop     ebp                                     ; 10007BC1 _ 5D
?_0803: pop     edi                                     ; 10007BC2 _ 5F
        pop     esi                                     ; 10007BC3 _ 5E
        pop     ebx                                     ; 10007BC4 _ 5B
        pop     ecx                                     ; 10007BC5 _ 59
        ret                                             ; 10007BC6 _ C3

        nop                                             ; 10007BC7 _ 90
        nop                                             ; 10007BC8 _ 90
        nop                                             ; 10007BC9 _ 90
        nop                                             ; 10007BCA _ 90
        nop                                             ; 10007BCB _ 90
        nop                                             ; 10007BCC _ 90
        nop                                             ; 10007BCD _ 90
        nop                                             ; 10007BCE _ 90
        nop                                             ; 10007BCF _ 90

