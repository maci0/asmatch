; ---- 10015690 ----
?_2378: ; Local function
        mov     ecx, dword [esp+10H]                    ; 10015690 _ 8B. 4C 24, 10
        mov     eax, dword [esp+4H]                     ; 10015694 _ 8B. 44 24, 04
        movzx   dx, byte [esp+8H]                       ; 10015698 _ 66: 0F B6. 54 24, 08
        and     ecx, 0FFH                               ; 1001569E _ 81. E1, 000000FF
        mov     word [eax+4H], dx                       ; 100156A4 _ 66: 89. 50, 04
        mov     dword [eax+0AH], ecx                    ; 100156A8 _ 89. 48, 0A
        mov     ecx, dword [esp+0CH]                    ; 100156AB _ 8B. 4C 24, 0C
        and     ecx, 0FFH                               ; 100156AF _ 81. E1, 000000FF
        mov     dword [eax+6H], ecx                     ; 100156B5 _ 89. 48, 06
        ret                                             ; 100156B8 _ C3

        nop                                             ; 100156B9 _ 90
        nop                                             ; 100156BA _ 90
        nop                                             ; 100156BB _ 90
        nop                                             ; 100156BC _ 90
        nop                                             ; 100156BD _ 90
        nop                                             ; 100156BE _ 90
        nop                                             ; 100156BF _ 90
?_2379: sub     esp, 36                                 ; 100156C0 _ 83. EC, 24
        push    ebx                                     ; 100156C3 _ 53
        push    ebp                                     ; 100156C4 _ 55
        push    esi                                     ; 100156C5 _ 56
        push    edi                                     ; 100156C6 _ 57
        push    1                                       ; 100156C7 _ 6A, 01
        mov     ecx, 25                                 ; 100156C9 _ B9, 00000019
        xor     eax, eax                                ; 100156CE _ 33. C0
        mov     edi, ?_5677                             ; 100156D0 _ BF, 10139820(d)
        push    ?_5398                                  ; 100156D5 _ 68, 1003102C(d)
        xor     ebp, ebp                                ; 100156DA _ 33. ED
        push    1112                                    ; 100156DC _ 68, 00000458
        push    ?_5397                                  ; 100156E1 _ 68, 10031004(d)
        rep stosd                                       ; 100156E6 _ F3: AB
        mov     dword [esp+20H], ebp                    ; 100156E8 _ 89. 6C 24, 20
        mov     dword [esp+24H], ebp                    ; 100156EC _ 89. 6C 24, 24
        call    ?_0267                                  ; 100156F0 _ E8, FFFEDF4B
        push    1                                       ; 100156F5 _ 6A, 01
        push    ?_5396                                  ; 100156F7 _ 68, 10030FB0(d)
        push    1133                                    ; 100156FC _ 68, 0000046D
        push    ?_5397                                  ; 10015701 _ 68, 10031004(d)
        mov     dword [?_5680], 47                      ; 10015706 _ C7. 05, 10139840(d), 0000002F
        mov     dword [?_5679], 50                      ; 10015710 _ C7. 05, 1013983C(d), 00000032
        mov     dword [?_5678], 41                      ; 1001571A _ C7. 05, 10139838(d), 00000029
        mov     dword [?_5682], 33                      ; 10015724 _ C7. 05, 10139848(d), 00000021
        mov     dword [?_5685], 30                      ; 1001572E _ C7. 05, 10139858(d), 0000001E
        mov     dword [?_5686], 31                      ; 10015738 _ C7. 05, 1013985C(d), 0000001F
        mov     dword [?_5687], 32                      ; 10015742 _ C7. 05, 10139860(d), 00000020
        mov     dword [?_5683], 23                      ; 1001574C _ C7. 05, 1013984C(d), 00000017
        mov     dword [?_5684], 53                      ; 10015756 _ C7. 05, 10139850(d), 00000035
        mov     dword [?_5681], 20                      ; 10015760 _ C7. 05, 10139844(d), 00000014
        call    ?_0267                                  ; 1001576A _ E8, FFFEDED1
        mov     ebx, dword [?_5668]                     ; 1001576F _ 8B. 1D, 100A8C30(d)
        mov     ecx, 732                                ; 10015775 _ B9, 000002DC
        mov     eax, 88                                 ; 1001577A _ B8, 00000058
        mov     edi, ?_5692                             ; 1001577F _ BF, 101DD8E0(d)
        add     esp, 32                                 ; 10015784 _ 83. C4, 20
        mov     dword [esp+20H], eax                    ; 10015787 _ 89. 44 24, 20
        rep stosd                                       ; 1001578B _ F3: AB
        mov     dword [esp+1CH], ebp                    ; 1001578D _ 89. 6C 24, 1C
        mov     dword [esp+2CH], ebp                    ; 10015791 _ 89. 6C 24, 2C
?_2380: lea     edi, [ebx+ebp]                          ; 10015795 _ 8D. 3C 2B
        xor     eax, eax                                ; 10015798 _ 33. C0
        mov     dword [esp+24H], edi                    ; 1001579A _ 89. 7C 24, 24
        mov     al, byte [edi]                          ; 1001579E _ 8A. 07
        mov     esi, eax                                ; 100157A0 _ 8B. F0
        mov     eax, dword [esp+20H]                    ; 100157A2 _ 8B. 44 24, 20
        cmp     esi, eax                                ; 100157A6 _ 3B. F0
        jz      ?_2382                                  ; 100157A8 _ 74, 3B
        xor     ebx, ebx                                ; 100157AA _ 33. DB
        cmp     ebp, 51832                              ; 100157AC _ 81. FD, 0000CA78
        mov     dword [esp+10H], ebx                    ; 100157B2 _ 89. 5C 24, 10
        mov     dword [esp+20H], esi                    ; 100157B6 _ 89. 74 24, 20
        mov     dword [esp+14H], ebx                    ; 100157BA _ 89. 5C 24, 14
        jge     ?_2383                                  ; 100157BE _ 7D, 30
        mov     eax, dword [esp+1CH]                    ; 100157C0 _ 8B. 44 24, 1C
        mov     ecx, edi                                ; 100157C4 _ 8B. CF
?_2381: xor     edx, edx                                ; 100157C6 _ 33. D2
        mov     dl, byte [ecx]                          ; 100157C8 _ 8A. 11
        cmp     edx, esi                                ; 100157CA _ 3B. D6
        jnz     ?_2383                                  ; 100157CC _ 75, 22
        mov     edx, dword [esp+14H]                    ; 100157CE _ 8B. 54 24, 14
        add     ecx, 589                                ; 100157D2 _ 81. C1, 0000024D
        inc     edx                                     ; 100157D8 _ 42
        inc     eax                                     ; 100157D9 _ 40
        cmp     eax, 88                                 ; 100157DA _ 83. F8, 58
        mov     dword [esp+14H], edx                    ; 100157DD _ 89. 54 24, 14
        jl      ?_2381                                  ; 100157E1 _ 7C, E3
        jmp     ?_2383                                  ; 100157E3 _ EB, 0B

?_2382: mov     eax, dword [esp+10H]                    ; 100157E5 _ 8B. 44 24, 10
        inc     eax                                     ; 100157E9 _ 40
        xor     ebx, ebx                                ; 100157EA _ 33. DB
        mov     dword [esp+10H], eax                    ; 100157EC _ 89. 44 24, 10
?_2383: push    1                                       ; 100157F0 _ 6A, 01
        push    ?_5395                                  ; 100157F2 _ 68, 10030F54(d)
        push    1168                                    ; 100157F7 _ 68, 00000490
        push    ?_5397                                  ; 100157FC _ 68, 10031004(d)
        call    ?_0267                                  ; 10015801 _ E8, FFFEDE3A
        mov     al, byte [edi+22H]                      ; 10015806 _ 8A. 47, 22
        add     esp, 16                                 ; 10015809 _ 83. C4, 10
        mov     dword [esp+28H], ebx                    ; 1001580C _ 89. 5C 24, 28
        mov     ebx, dword [?_5668]                     ; 10015810 _ 8B. 1D, 100A8C30(d)
        test    al, al                                  ; 10015816 _ 84. C0
        jbe     ?_2389                                  ; 10015818 _ 0F 86, 000000B7
        lea     eax, [edi+23H]                          ; 1001581E _ 8D. 47, 23
        mov     dword [esp+18H], eax                    ; 10015821 _ 89. 44 24, 18
?_2384: mov     ecx, dword [esp+18H]                    ; 10015825 _ 8B. 4C 24, 18
        mov     ax, word [ecx]                          ; 10015829 _ 66: 8B. 01
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 1001582C _ 66: 3D, FFFF
        jz      ?_2388                                  ; 10015830 _ 74, 7E
        and     eax, 7FFFH                              ; 10015832 _ 25, 00007FFF
        xor     ecx, ecx                                ; 10015837 _ 33. C9
        mov     esi, eax                                ; 10015839 _ 8B. F0
        mov     eax, dword [?_5693]                     ; 1001583B _ A1, 101DE450(d)
        mov     edx, esi                                ; 10015840 _ 8B. D6
        shl     edx, 6                                  ; 10015842 _ C1. E2, 06
        add     eax, edx                                ; 10015845 _ 03. C2
        mov     cl, byte [esi+eax+21H]                  ; 10015847 _ 8A. 4C 06, 21
        mov     ecx, dword [?_5677+ecx*4]               ; 1001584B _ 8B. 0C 8D, 10139820(d)
        lea     eax, [ecx+ecx*2]                        ; 10015852 _ 8D. 04 49
        shl     eax, 4                                  ; 10015855 _ C1. E0, 04
        add     eax, ecx                                ; 10015858 _ 03. C1
        lea     edx, [eax+eax*2]                        ; 1001585A _ 8D. 14 40
        lea     eax, [ebx+ecx]                          ; 1001585D _ 8D. 04 0B
        lea     edx, [eax+edx*4]                        ; 10015860 _ 8D. 14 90
        xor     eax, eax                                ; 10015863 _ 33. C0
        mov     al, byte [edx]                          ; 10015865 _ 8A. 02
        mov     dword [esp+30H], eax                    ; 10015867 _ 89. 44 24, 30
        xor     eax, eax                                ; 1001586B _ 33. C0
        cmp     ecx, 88                                 ; 1001586D _ 83. F9, 58
        jge     ?_2386                                  ; 10015870 _ 7D, 1C
        mov     edi, ecx                                ; 10015872 _ 8B. F9
        mov     ebp, edx                                ; 10015874 _ 8B. EA
?_2385: xor     edx, edx                                ; 10015876 _ 33. D2
        mov     dl, byte [ebp]                          ; 10015878 _ 8A. 55, 00
        cmp     edx, dword [esp+30H]                    ; 1001587B _ 3B. 54 24, 30
        jnz     ?_2386                                  ; 1001587F _ 75, 0D
        inc     eax                                     ; 10015881 _ 40
        inc     edi                                     ; 10015882 _ 47
        add     ebp, 589                                ; 10015883 _ 81. C5, 0000024D
        cmp     edi, 88                                 ; 10015889 _ 83. FF, 58
        jl      ?_2385                                  ; 1001588C _ 7C, E8
?_2386: imul    eax, dword [esp+10H]                    ; 1001588E _ 0F AF. 44 24, 10
        cdq                                             ; 10015893 _ 99
        idiv    dword [esp+14H]                         ; 10015894 _ F7. 7C 24, 14
        add     ecx, eax                                ; 10015898 _ 03. C8
        mov     eax, dword [?_5692+esi*4]               ; 1001589A _ 8B. 04 B5, 101DD8E0(d)
        cmp     ecx, eax                                ; 100158A1 _ 3B. C8
        jge     ?_2387                                  ; 100158A3 _ 7D, 07
        mov     dword [?_5692+esi*4], ecx               ; 100158A5 _ 89. 0C B5, 101DD8E0(d)
?_2387: mov     edi, dword [esp+24H]                    ; 100158AC _ 8B. 7C 24, 24
?_2388: mov     eax, dword [esp+28H]                    ; 100158B0 _ 8B. 44 24, 28
        mov     esi, dword [esp+18H]                    ; 100158B4 _ 8B. 74 24, 18
        xor     ecx, ecx                                ; 100158B8 _ 33. C9
        inc     eax                                     ; 100158BA _ 40
        mov     cl, byte [edi+22H]                      ; 100158BB _ 8A. 4F, 22
        add     esi, 2                                  ; 100158BE _ 83. C6, 02
        cmp     eax, ecx                                ; 100158C1 _ 3B. C1
        mov     dword [esp+28H], eax                    ; 100158C3 _ 89. 44 24, 28
        mov     dword [esp+18H], esi                    ; 100158C7 _ 89. 74 24, 18
        jl      ?_2384                                  ; 100158CB _ 0F 8C, FFFFFF54
        mov     ebp, dword [esp+2CH]                    ; 100158D1 _ 8B. 6C 24, 2C
?_2389: mov     edx, dword [esp+1CH]                    ; 100158D5 _ 8B. 54 24, 1C
        add     ebp, 589                                ; 100158D9 _ 81. C5, 0000024D
        inc     edx                                     ; 100158DF _ 42
        cmp     ebp, 51832                              ; 100158E0 _ 81. FD, 0000CA78
        mov     dword [esp+1CH], edx                    ; 100158E6 _ 89. 54 24, 1C
        mov     dword [esp+2CH], ebp                    ; 100158EA _ 89. 6C 24, 2C
        jl      ?_2380                                  ; 100158EE _ 0F 8C, FFFFFEA1
        push    1                                       ; 100158F4 _ 6A, 01
        push    ?_5394                                  ; 100158F6 _ 68, 10030EEC(d)
        push    1198                                    ; 100158FB _ 68, 000004AE
        push    ?_5397                                  ; 10015900 _ 68, 10031004(d)
        call    ?_0267                                  ; 10015905 _ E8, FFFEDD36
        mov     edx, dword [?_5693]                     ; 1001590A _ 8B. 15, 101DE450(d)
        add     esp, 16                                 ; 10015910 _ 83. C4, 10
        mov     eax, ?_5692                             ; 10015913 _ B8, 101DD8E0(d)
        pop     edi                                     ; 10015918 _ 5F
        pop     esi                                     ; 10015919 _ 5E
        pop     ebp                                     ; 1001591A _ 5D
        lea     ecx, [edx+21H]                          ; 1001591B _ 8D. 4A, 21
        pop     ebx                                     ; 1001591E _ 5B
?_2390: cmp     dword [eax], 88                         ; 1001591F _ 83. 38, 58
        jnz     ?_2391                                  ; 10015922 _ 75, 0D
        xor     edx, edx                                ; 10015924 _ 33. D2
        mov     dl, byte [ecx]                          ; 10015926 _ 8A. 11
        mov     edx, dword [?_5677+edx*4]               ; 10015928 _ 8B. 14 95, 10139820(d)
        mov     dword [eax], edx                        ; 1001592F _ 89. 10
?_2391: add     eax, 4                                  ; 10015931 _ 83. C0, 04
        add     ecx, 65                                 ; 10015934 _ 83. C1, 41
        cmp     eax, ?_5693                             ; 10015937 _ 3D, 101DE450(d)
        jl      ?_2390                                  ; 1001593C _ 7C, E1
        add     esp, 36                                 ; 1001593E _ 83. C4, 24
        ret                                             ; 10015941 _ C3

        nop                                             ; 10015942 _ 90
        nop                                             ; 10015943 _ 90
        nop                                             ; 10015944 _ 90
        nop                                             ; 10015945 _ 90
        nop                                             ; 10015946 _ 90
        nop                                             ; 10015947 _ 90
        nop                                             ; 10015948 _ 90
        nop                                             ; 10015949 _ 90
        nop                                             ; 1001594A _ 90
        nop                                             ; 1001594B _ 90
        nop                                             ; 1001594C _ 90
        nop                                             ; 1001594D _ 90
        nop                                             ; 1001594E _ 90
        nop                                             ; 1001594F _ 90
