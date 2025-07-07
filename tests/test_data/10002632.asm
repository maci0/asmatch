; ---- 10002632 ----
?_0153: ; Local function
        pop     edi                                     ; 10002632 _ 5F
        pop     esi                                     ; 10002633 _ 5E
        pop     ebp                                     ; 10002634 _ 5D
        xor     eax, eax                                ; 10002635 _ 33. C0
        pop     ebx                                     ; 10002637 _ 5B
        pop     ecx                                     ; 10002638 _ 59
        ret                                             ; 10002639 _ C3

        nop                                             ; 1000263A _ 90
        nop                                             ; 1000263B _ 90
        nop                                             ; 1000263C _ 90
        nop                                             ; 1000263D _ 90
        nop                                             ; 1000263E _ 90
        nop                                             ; 1000263F _ 90
?_0154: sub     esp, 264                                ; 10002640 _ 81. EC, 00000108
        push    ebx                                     ; 10002646 _ 53
        mov     bl, byte [esp+114H]                     ; 10002647 _ 8A. 9C 24, 00000114
        push    ebp                                     ; 1000264E _ 55
        mov     ebp, dword [esp+114H]                   ; 1000264F _ 8B. AC 24, 00000114
        test    bl, 01H                                 ; 10002656 _ F6. C3, 01
        push    esi                                     ; 10002659 _ 56
        je      ?_0159                                  ; 1000265A _ 0F 84, 000000A1
        mov     edx, dword [esp+120H]                   ; 10002660 _ 8B. 94 24, 00000120
        xor     eax, eax                                ; 10002667 _ 33. C0
        mov     ecx, ?_5059                             ; 10002669 _ B9, 10027078(d)
?_0155: cmp     edx, dword [ecx]                        ; 1000266E _ 3B. 11
        jz      ?_0156                                  ; 10002670 _ 74, 0E
        add     ecx, 4                                  ; 10002672 _ 83. C1, 04
        inc     eax                                     ; 10002675 _ 40
        cmp     ecx, ?_5060                             ; 10002676 _ 81. F9, 10027084(d)
        jl      ?_0155                                  ; 1000267C _ 7C, F0
        jmp     ?_0157                                  ; 1000267E _ EB, 35

?_0156: shl     eax, 5                                  ; 10002680 _ C1. E0, 05
        add     eax, ?_5060                             ; 10002683 _ 05, 10027084(d)
        push    eax                                     ; 10002688 _ 50
        push    ?_5789                                  ; 10002689 _ 68, 11766100(d)
        lea     eax, [esp+18H]                          ; 1000268E _ 8D. 44 24, 18
        push    ?_5064                                  ; 10002692 _ 68, 100270FC(d)
        push    eax                                     ; 10002697 _ 50
        call    ?_3039                                  ; 10002698 _ E8, 00017BFC
        lea     ecx, [esp+20H]                          ; 1000269D _ 8D. 4C 24, 20
        push    ?_5063                                  ; 100026A1 _ 68, 100270F8(d)
        push    ecx                                     ; 100026A6 _ 51
        call    ?_3038                                  ; 100026A7 _ E8, 00017BDA
        mov     esi, eax                                ; 100026AC _ 8B. F0
        add     esp, 24                                 ; 100026AE _ 83. C4, 18
        test    esi, esi                                ; 100026B1 _ 85. F6
        jnz     ?_0158                                  ; 100026B3 _ 75, 31
?_0157: push    ?_5062                                  ; 100026B5 _ 68, 100270E8(d)
        push    ?_5789                                  ; 100026BA _ 68, 11766100(d)
        lea     edx, [esp+18H]                          ; 100026BF _ 8D. 54 24, 18
        push    ?_5064                                  ; 100026C3 _ 68, 100270FC(d)
        push    edx                                     ; 100026C8 _ 52
        call    ?_3039                                  ; 100026C9 _ E8, 00017BCB
        lea     eax, [esp+20H]                          ; 100026CE _ 8D. 44 24, 20
        push    ?_5063                                  ; 100026D2 _ 68, 100270F8(d)
        push    eax                                     ; 100026D7 _ 50
        call    ?_3038                                  ; 100026D8 _ E8, 00017BA9
        mov     esi, eax                                ; 100026DD _ 8B. F0
        add     esp, 24                                 ; 100026DF _ 83. C4, 18
        test    esi, esi                                ; 100026E2 _ 85. F6
        jz      ?_0159                                  ; 100026E4 _ 74, 1B
?_0158: push    esi                                     ; 100026E6 _ 56
        push    ebp                                     ; 100026E7 _ 55
        call    ?_3035                                  ; 100026E8 _ E8, 00017B1A
        push    esi                                     ; 100026ED _ 56
        push    ?_5061                                  ; 100026EE _ 68, 100270E4(d)
        call    ?_3035                                  ; 100026F3 _ E8, 00017B0F
        push    esi                                     ; 100026F8 _ 56
        call    ?_3029                                  ; 100026F9 _ E8, 00017A8C
        add     esp, 20                                 ; 100026FE _ 83. C4, 14
?_0159: test    bl, 04H                                 ; 10002701 _ F6. C3, 04
        jz      ?_0160                                  ; 10002704 _ 74, 10
        mov     esi, dword [imp_OutputDebugStringA]     ; 10002706 _ 8B. 35, 10024004(d)
        push    ebp                                     ; 1000270C _ 55
        call    esi                                     ; 1000270D _ FF. D6
        push    ?_5061                                  ; 1000270F _ 68, 100270E4(d)
        call    esi                                     ; 10002714 _ FF. D6
?_0160: test    bl, 08H                                 ; 10002716 _ F6. C3, 08
        jz      ?_0161                                  ; 10002719 _ 74, 3D
        push    edi                                     ; 1000271B _ 57
        lea     ecx, [esp+10H]                          ; 1000271C _ 8D. 4C 24, 10
        push    0                                       ; 10002720 _ 6A, 00
        push    ecx                                     ; 10002722 _ 51
        mov     edi, ebp                                ; 10002723 _ 8B. FD
        or      ecx, 0FFFFFFFFH                         ; 10002725 _ 83. C9, FF
        xor     eax, eax                                ; 10002728 _ 33. C0
        mov     edx, dword [?_5790]                     ; 1000272A _ 8B. 15, 11766204(d)
        repne scasb                                     ; 10002730 _ F2: AE
        mov     esi, dword [imp_WriteConsoleA]          ; 10002732 _ 8B. 35, 100240C0(d)
        not     ecx                                     ; 10002738 _ F7. D1
        dec     ecx                                     ; 1000273A _ 49
        push    ecx                                     ; 1000273B _ 51
        push    ebp                                     ; 1000273C _ 55
        push    edx                                     ; 1000273D _ 52
        call    esi                                     ; 1000273E _ FF. D6
        mov     ecx, dword [?_5790]                     ; 10002740 _ 8B. 0D, 11766204(d)
        lea     eax, [esp+10H]                          ; 10002746 _ 8D. 44 24, 10
        push    0                                       ; 1000274A _ 6A, 00
        push    eax                                     ; 1000274C _ 50
        push    1                                       ; 1000274D _ 6A, 01
        push    ?_5061                                  ; 1000274F _ 68, 100270E4(d)
        push    ecx                                     ; 10002754 _ 51
        call    esi                                     ; 10002755 _ FF. D6
        pop     edi                                     ; 10002757 _ 5F
?_0161: pop     esi                                     ; 10002758 _ 5E
        pop     ebp                                     ; 10002759 _ 5D
        pop     ebx                                     ; 1000275A _ 5B
        add     esp, 264                                ; 1000275B _ 81. C4, 00000108
        ret                                             ; 10002761 _ C3

        nop                                             ; 10002762 _ 90
        nop                                             ; 10002763 _ 90
        nop                                             ; 10002764 _ 90
        nop                                             ; 10002765 _ 90
        nop                                             ; 10002766 _ 90
        nop                                             ; 10002767 _ 90
        nop                                             ; 10002768 _ 90
        nop                                             ; 10002769 _ 90
        nop                                             ; 1000276A _ 90
        nop                                             ; 1000276B _ 90
        nop                                             ; 1000276C _ 90
        nop                                             ; 1000276D _ 90
        nop                                             ; 1000276E _ 90
        nop                                             ; 1000276F _ 90

