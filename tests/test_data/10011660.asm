; ---- 10011660 ----
?_2008: ; Local function
        push    ecx                                     ; 10011660 _ 51
        push    esi                                     ; 10011661 _ 56
        push    edi                                     ; 10011662 _ 57
        mov     edi, dword [esp+10H]                    ; 10011663 _ 8B. 7C 24, 10
        lea     ecx, [esp+10H]                          ; 10011667 _ 8D. 4C 24, 10
        mov     eax, dword [edi+8H]                     ; 1001166B _ 8B. 47, 08
        push    eax                                     ; 1001166E _ 50
        push    0                                       ; 1001166F _ 6A, 00
        push    0                                       ; 10011671 _ 6A, 00
        push    ecx                                     ; 10011673 _ 51
        call    ?_2425                                  ; 10011674 _ E8, 00004817
        mov     edx, dword [esp+20H]                    ; 10011679 _ 8B. 54 24, 20
        add     esp, 16                                 ; 1001167D _ 83. C4, 10
        test    edx, edx                                ; 10011680 _ 85. D2
        je      ?_2017                                  ; 10011682 _ 0F 84, 000000FA
        mov     ax, word [edx+27H]                      ; 10011688 _ 66: 8B. 42, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 1001168C _ 66: 3D, FFFF
        je      ?_2017                                  ; 10011690 _ 0F 84, 000000EC
        and     eax, 0FFFFH                             ; 10011696 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 1001169B _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 1001169E _ 8D. 04 80
        lea     eax, [eax+eax*8]                        ; 100116A1 _ 8D. 04 C0
        lea     ecx, [?_5632+eax*4]                     ; 100116A4 _ 8D. 0C 85, 100358A0(d)
        mov     eax, dword [?_5547]                     ; 100116AB _ A1, 1003546C(d)
        cmp     ecx, eax                                ; 100116B0 _ 3B. C8
        je      ?_2017                                  ; 100116B2 _ 0F 84, 000000CA
        xor     ecx, ecx                                ; 100116B8 _ 33. C9
        mov     esi, dword [?_5668]                     ; 100116BA _ 8B. 35, 100A8C30(d)
        mov     cl, byte [edx]                          ; 100116C0 _ 8A. 0A
        add     esi, ecx                                ; 100116C2 _ 03. F1
        lea     eax, [ecx+ecx*2]                        ; 100116C4 _ 8D. 04 49
        shl     eax, 4                                  ; 100116C7 _ C1. E0, 04
        add     eax, ecx                                ; 100116CA _ 03. C1
        lea     eax, [eax+eax*2]                        ; 100116CC _ 8D. 04 40
        cmp     byte [esi+eax*4], 29                    ; 100116CF _ 80. 3C 86, 1D
        jz      ?_2009                                  ; 100116D3 _ 74, 09
        pop     edi                                     ; 100116D5 _ 5F
        mov     eax, 4294967294                         ; 100116D6 _ B8, FFFFFFFE
        pop     esi                                     ; 100116DB _ 5E
        pop     ecx                                     ; 100116DC _ 59
        ret                                             ; 100116DD _ C3

?_2009: mov     esi, dword [edx+65H]                    ; 100116DE _ 8B. 72, 65
        test    esi, esi                                ; 100116E1 _ 85. F6
        jnz     ?_2010                                  ; 100116E3 _ 75, 09
        pop     edi                                     ; 100116E5 _ 5F
        mov     eax, 4294967293                         ; 100116E6 _ B8, FFFFFFFD
        pop     esi                                     ; 100116EB _ 5E
        pop     ecx                                     ; 100116EC _ 59
        ret                                             ; 100116ED _ C3

?_2010: mov     ecx, dword [edi+4H]                     ; 100116EE _ 8B. 4F, 04
        lea     edx, [esp+8H]                           ; 100116F1 _ 8D. 54 24, 08
        push    ecx                                     ; 100116F5 _ 51
        push    edx                                     ; 100116F6 _ 52
        push    0                                       ; 100116F7 _ 6A, 00
        push    0                                       ; 100116F9 _ 6A, 00
        call    ?_2425                                  ; 100116FB _ E8, 00004790
        mov     eax, dword [esp+18H]                    ; 10011700 _ 8B. 44 24, 18
        add     esp, 16                                 ; 10011704 _ 83. C4, 10
        test    eax, eax                                ; 10011707 _ 85. C0
        jnz     ?_2011                                  ; 10011709 _ 75, 09
        pop     edi                                     ; 1001170B _ 5F
        mov     eax, 4294967290                         ; 1001170C _ B8, FFFFFFFA
        pop     esi                                     ; 10011711 _ 5E
        pop     ecx                                     ; 10011712 _ 59
        ret                                             ; 10011713 _ C3

?_2011: mov     eax, dword [edi+0CH]                    ; 10011714 _ 8B. 47, 0C
        cmp     eax, 3                                  ; 10011717 _ 83. F8, 03
        jnz     ?_2012                                  ; 1001171A _ 75, 21
        mov     eax, dword [esi+14H]                    ; 1001171C _ 8B. 46, 14
        test    eax, eax                                ; 1001171F _ 85. C0
        jz      ?_2015                                  ; 10011721 _ 74, 4D
        cmp     dword [esi+4H], 3                       ; 10011723 _ 83. 7E, 04, 03
        jl      ?_2015                                  ; 10011727 _ 7C, 47
        mov     ecx, 1                                  ; 10011729 _ B9, 00000001
        pop     edi                                     ; 1001172E _ 5F
        mov     byte [esi+1BH], cl                      ; 1001172F _ 88. 4E, 1B
        mov     byte [esi+1AH], cl                      ; 10011732 _ 88. 4E, 1A
        mov     byte [esi+19H], cl                      ; 10011735 _ 88. 4E, 19
        xor     eax, eax                                ; 10011738 _ 33. C0
        pop     esi                                     ; 1001173A _ 5E
        pop     ecx                                     ; 1001173B _ 59
        ret                                             ; 1001173C _ C3

?_2012: cmp     eax, 2                                  ; 1001173D _ 83. F8, 02
        jnz     ?_2014                                  ; 10011740 _ 75, 1E
        mov     eax, dword [esi+10H]                    ; 10011742 _ 8B. 46, 10
        test    eax, eax                                ; 10011745 _ 85. C0
        jz      ?_2015                                  ; 10011747 _ 74, 27
        cmp     dword [esi+4H], 2                       ; 10011749 _ 83. 7E, 04, 02
        jl      ?_2015                                  ; 1001174D _ 7C, 21
        mov     ecx, 1                                  ; 1001174F _ B9, 00000001
        mov     byte [esi+1AH], cl                      ; 10011754 _ 88. 4E, 1A
?_2013: mov     byte [esi+19H], cl                      ; 10011757 _ 88. 4E, 19
        pop     edi                                     ; 1001175A _ 5F
        xor     eax, eax                                ; 1001175B _ 33. C0
        pop     esi                                     ; 1001175D _ 5E
        pop     ecx                                     ; 1001175E _ 59
        ret                                             ; 1001175F _ C3

?_2014: mov     ecx, 1                                  ; 10011760 _ B9, 00000001
        cmp     eax, ecx                                ; 10011765 _ 3B. C1
        jnz     ?_2016                                  ; 10011767 _ 75, 10
        mov     eax, dword [esi+0CH]                    ; 10011769 _ 8B. 46, 0C
        test    eax, eax                                ; 1001176C _ 85. C0
        jnz     ?_2013                                  ; 1001176E _ 75, E7
?_2015: pop     edi                                     ; 10011770 _ 5F
        mov     eax, 4294967289                         ; 10011771 _ B8, FFFFFFF9
        pop     esi                                     ; 10011776 _ 5E
        pop     ecx                                     ; 10011777 _ 59
        ret                                             ; 10011778 _ C3

?_2016: pop     edi                                     ; 10011779 _ 5F
        mov     eax, 4294967288                         ; 1001177A _ B8, FFFFFFF8
        pop     esi                                     ; 1001177F _ 5E
        pop     ecx                                     ; 10011780 _ 59
        ret                                             ; 10011781 _ C3

