; ---- 1001751D ----
?_2659: ; Local function
        mov     edx, dword [ebp+8H]                     ; 1001751D _ 8B. 55, 08
        push    edi                                     ; 10017520 _ 57
        mov     eax, edx                                ; 10017521 _ 8B. C2
        mov     edi, dword [?_5668]                     ; 10017523 _ 8B. 3D, 100A8C30(d)
        and     eax, 0FFH                               ; 10017529 _ 25, 000000FF
        mov     byte [esi], dl                          ; 1001752E _ 88. 16
        mov     edx, dword [?_5380]                     ; 10017530 _ 8B. 15, 10030B6C(d)
        add     edi, eax                                ; 10017536 _ 03. F8
        lea     ecx, [eax+eax*2]                        ; 10017538 _ 8D. 0C 40
        mov     dword [ebp-0CH], eax                    ; 1001753B _ 89. 45, F4
        shl     ecx, 4                                  ; 1001753E _ C1. E1, 04
        add     ecx, eax                                ; 10017541 _ 03. C8
        push    eax                                     ; 10017543 _ 50
        push    edx                                     ; 10017544 _ 52
        lea     eax, [ebp-410H]                         ; 10017545 _ 8D. 85, FFFFFBF0
        lea     ecx, [ecx+ecx*2]                        ; 1001754B _ 8D. 0C 49
        push    ?_5429                                  ; 1001754E _ 68, 10031438(d)
        push    eax                                     ; 10017553 _ 50
        lea     ecx, [edi+ecx*4]                        ; 10017554 _ 8D. 0C 8F
        mov     dword [ebp-8H], ecx                     ; 10017557 _ 89. 4D, F8
        call    ?_3039                                  ; 1001755A _ E8, 00002D3A
        lea     ecx, [ebp-410H]                         ; 1001755F _ 8D. 8D, FFFFFBF0
        push    8                                       ; 10017565 _ 6A, 08
        push    ecx                                     ; 10017567 _ 51
        push    4312                                    ; 10017568 _ 68, 000010D8
        push    ?_5397                                  ; 1001756D _ 68, 10031004(d)
        call    ?_0267                                  ; 10017572 _ E8, FFFEC0C9
        mov     edx, dword [?_5380]                     ; 10017577 _ 8B. 15, 10030B6C(d)
        mov     eax, dword [ebp+0CH]                    ; 1001757D _ 8B. 45, 0C
        mov     dword [esi+1H], edx                     ; 10017580 _ 89. 56, 01
        mov     edx, dword [?_5380]                     ; 10017583 _ 8B. 15, 10030B6C(d)
        add     esp, 32                                 ; 10017589 _ 83. C4, 20
        inc     edx                                     ; 1001758C _ 42
        mov     dword [?_5380], edx                     ; 1001758D _ 89. 15, 10030B6C(d)
        mov     word [esi+25H], ax                      ; 10017593 _ 66: 89. 46, 25
        mov     word [esi+27H], ax                      ; 10017597 _ 66: 89. 46, 27
        mov     eax, 100                                ; 1001759B _ B8, 00000064
        mov     dword [esi+3DH], eax                    ; 100175A0 _ 89. 46, 3D
        mov     dword [esi+45H], eax                    ; 100175A3 _ 89. 46, 45
        mov     byte [esi+5CH], al                      ; 100175A6 _ 88. 46, 5C
        lea     eax, [esi+99H]                          ; 100175A9 _ 8D. 86, 00000099
        or      ecx, 0FFFFFFFFH                         ; 100175AF _ 83. C9, FF
        mov     edi, eax                                ; 100175B2 _ 8B. F8
        xor     edx, edx                                ; 100175B4 _ 33. D2
        mov     word [esi+29H], bx                      ; 100175B6 _ 66: 89. 5E, 29
        mov     dword [esi+2BH], ebx                    ; 100175BA _ 89. 5E, 2B
        mov     byte [esi+2FH], bl                      ; 100175BD _ 88. 5E, 2F
        mov     dword [esi+5DH], ebx                    ; 100175C0 _ 89. 5E, 5D
        mov     dword [esi+61H], ebx                    ; 100175C3 _ 89. 5E, 61
        mov     dword [esi+30H], ebx                    ; 100175C6 _ 89. 5E, 30
        mov     dword [esi+39H], 32000                  ; 100175C9 _ C7. 46, 39, 00007D00
        mov     dword [esi+41H], 2                      ; 100175D0 _ C7. 46, 41, 00000002
        mov     dword [esi+49H], 1065353216             ; 100175D7 _ C7. 46, 49, 3F800000
        mov     dword [esi+95H], ecx                    ; 100175DE _ 89. 8E, 00000095
        mov     dword [edi], edx                        ; 100175E4 _ 89. 17
        mov     dword [ebp+8H], 48                      ; 100175E6 _ C7. 45, 08, 00000030
        mov     dword [edi+4H], edx                     ; 100175ED _ 89. 57, 04
        mov     dword [edi+8H], edx                     ; 100175F0 _ 89. 57, 08
        mov     dword [edi+0CH], edx                    ; 100175F3 _ 89. 57, 0C
        mov     dword [esi+0A5H], ecx                   ; 100175F6 _ 89. 8E, 000000A5
        mov     ecx, dword [eax]                        ; 100175FC _ 8B. 08
        or      ecx, 01H                                ; 100175FE _ 83. C9, 01
        mov     dword [eax], ecx                        ; 10017601 _ 89. 08
        lea     eax, [esi+65H]                          ; 10017603 _ 8D. 46, 65
        mov     dword [ebp-10H], eax                    ; 10017606 _ 89. 45, F0
        mov     edi, dword [ebp-10H]                    ; 10017609 _ 8B. 7D, F0
        mov     ebx, dword [ebp+8H]                     ; 1001760C _ 8B. 5D, 08
        xor     eax, eax                                ; 1001760F _ 33. C0
        lea     ecx, [edi+edi*2]                        ; 10017611 _ 8D. 0C 7F
        and     ecx, 03H                                ; 10017614 _ 83. E1, 03
        sub     ebx, ecx                                ; 10017617 _ 2B. D9
        jle     ?_2660                                  ; 10017619 _ 7E, 0C
        rep stosb                                       ; 1001761B _ F3: AA
        mov     ecx, ebx                                ; 1001761D _ 8B. CB
        and     ebx, 03H                                ; 1001761F _ 83. E3, 03
        shr     ecx, 2                                  ; 10017622 _ C1. E9, 02
        rep stosd                                       ; 10017625 _ F3: AB
?_2660: add     ecx, ebx                                ; 10017627 _ 03. CB
        rep stosb                                       ; 10017629 _ F3: AA
        mov     eax, dword [ebp-8H]                     ; 1001762B _ 8B. 45, F8
        xor     ebx, ebx                                ; 1001762E _ 33. DB
        mov     dword [ebp+8H], ebx                     ; 10017630 _ 89. 5D, 08
        lea     edi, [eax+23H]                          ; 10017633 _ 8D. 78, 23
?_2661: mov     dx, word [edi]                          ; 10017636 _ 66: 8B. 17
        cmp     dx, bx                                  ; 10017639 _ 66: 3B. D3
        je      ?_2667                                  ; 1001763C _ 0F 84, 00000081
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     dx, -1                                  ; 10017642 _ 66: 81. FA, FFFF
        jz      ?_2666                                  ; 10017647 _ 74, 67
        mov     ebx, dword [?_5693]                     ; 10017649 _ 8B. 1D, 101DE450(d)
        mov     eax, edx                                ; 1001764F _ 8B. C2
        and     eax, 7FFFH                              ; 10017651 _ 25, 00007FFF
        mov     ecx, eax                                ; 10017656 _ 8B. C8
        shl     ecx, 6                                  ; 10017658 _ C1. E1, 06
        add     ebx, ecx                                ; 1001765B _ 03. D9
        mov     ecx, eax                                ; 1001765D _ 8B. C8
        add     ecx, ebx                                ; 1001765F _ 03. CB
        mov     cl, byte [ecx]                          ; 10017661 _ 8A. 09
        cmp     cl, 2                                   ; 10017663 _ 80. F9, 02
        jz      ?_2662                                  ; 10017666 _ 74, 05
        cmp     cl, 6                                   ; 10017668 _ 80. F9, 06
        jnz     ?_2663                                  ; 1001766B _ 75, 07
?_2662: mov     dword [ebp-4H], 1                       ; 1001766D _ C7. 45, FC, 00000001
?_2663: test    dh, 0FFFFFF80H                          ; 10017674 _ F6. C6, 80
        jz      ?_2665                                  ; 10017677 _ 74, 35
        cmp     cl, 2                                   ; 10017679 _ 80. F9, 02
        jz      ?_2664                                  ; 1001767C _ 74, 1F
        cmp     cl, 6                                   ; 1001767E _ 80. F9, 06
        jz      ?_2664                                  ; 10017681 _ 74, 1A
        mov     ecx, dword [ebp-4H]                     ; 10017683 _ 8B. 4D, FC
        xor     ebx, ebx                                ; 10017686 _ 33. DB
        cmp     ecx, ebx                                ; 10017688 _ 3B. CB
        jnz     ?_2666                                  ; 1001768A _ 75, 24
        mov     edx, dword [esi+1H]                     ; 1001768C _ 8B. 56, 01
        push    1                                       ; 1001768F _ 6A, 01
        push    eax                                     ; 10017691 _ 50
        push    edx                                     ; 10017692 _ 52
        call    ?_2524                                  ; 10017693 _ E8, FFFFF0C8
        add     esp, 12                                 ; 10017698 _ 83. C4, 0C
        jmp     ?_2666                                  ; 1001769B _ EB, 13

?_2664: push    eax                                     ; 1001769D _ 50
        push    esi                                     ; 1001769E _ 56
        mov     dword [ebp-4H], 1                       ; 1001769F _ C7. 45, FC, 00000001
        call    ?_2723                                  ; 100176A6 _ E8, 00000595
        add     esp, 8                                  ; 100176AB _ 83. C4, 08
?_2665: xor     ebx, ebx                                ; 100176AE _ 33. DB
?_2666: mov     eax, dword [ebp+8H]                     ; 100176B0 _ 8B. 45, 08
        add     edi, 2                                  ; 100176B3 _ 83. C7, 02
        inc     eax                                     ; 100176B6 _ 40
        cmp     eax, 64                                 ; 100176B7 _ 83. F8, 40
        mov     dword [ebp+8H], eax                     ; 100176BA _ 89. 45, 08
        jl      ?_2661                                  ; 100176BD _ 0F 8C, FFFFFF73
?_2667: mov     eax, dword [esi+5DH]                    ; 100176C3 _ 8B. 46, 5D
        push    2                                       ; 100176C6 _ 6A, 02
        push    4                                       ; 100176C8 _ 6A, 04
        push    1                                       ; 100176CA _ 6A, 01
        push    eax                                     ; 100176CC _ 50
        call    ?_2482                                  ; 100176CD _ E8, FFFFED8E
        add     esp, 16                                 ; 100176D2 _ 83. C4, 10
        cmp     eax, ebx                                ; 100176D5 _ 3B. C3
        pop     edi                                     ; 100176D7 _ 5F
        jz      ?_2670                                  ; 100176D8 _ 74, 19
?_2668:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], 253                         ; 100176DA _ 66: 81. 38, 00FD
        jnz     ?_2669                                  ; 100176DF _ 75, 0B
        call    ?_2461                                  ; 100176E1 _ E8, FFFFEBAA
        cmp     eax, ebx                                ; 100176E6 _ 3B. C3
        jnz     ?_2668                                  ; 100176E8 _ 75, F0
        jmp     ?_2670                                  ; 100176EA _ EB, 07

?_2669: mov     cx, word [eax]                          ; 100176EC _ 66: 8B. 08
        mov     word [esi+29H], cx                      ; 100176EF _ 66: 89. 4E, 29
?_2670: push    esi                                     ; 100176F3 _ 56
        call    ?_2688                                  ; 100176F4 _ E8, 00000217
        add     esp, 4                                  ; 100176F9 _ 83. C4, 04
        cmp     eax, ebx                                ; 100176FC _ 3B. C3
        jz      ?_2671                                  ; 100176FE _ 74, 07
        mov     dx, word [eax]                          ; 10017700 _ 66: 8B. 10
        mov     word [esi+29H], dx                      ; 10017703 _ 66: 89. 56, 29
?_2671: push    esi                                     ; 10017707 _ 56
        call    ?_2710                                  ; 10017708 _ E8, 000003A3
        add     esp, 4                                  ; 1001770D _ 83. C4, 04
        test    eax, eax                                ; 10017710 _ 85. C0
        jz      ?_2672                                  ; 10017712 _ 74, 07
        mov     dword [esi+30H], 5000                   ; 10017714 _ C7. 46, 30, 00001388
?_2672: mov     eax, dword [ebp-0CH]                    ; 1001771B _ 8B. 45, F4
        add     eax, -4                                 ; 1001771E _ 83. C0, FC
        cmp     eax, 73                                 ; 10017721 _ 83. F8, 49
        ja      ?_2684                                  ; 10017724 _ 0F 87, 00000139
        xor     ecx, ecx                                ; 1001772A _ 33. C9
        mov     cl, byte [?_2687+eax]                   ; 1001772C _ 8A. 88, 100178BC(d)
        jmp     near [?_2686+ecx*4]                     ; 10017732 _ FF. 24 8D, 10017890(d)

?_2673: mov     eax, dword [?_5628]                     ; 10017739 _ A1, 10035880(d)
        lea     edx, [esi+69H]                          ; 1001773E _ 8D. 56, 69
        mov     dword [esi+69H], eax                    ; 10017741 _ 89. 46, 69
        mov     ecx, dword [?_5629]                     ; 10017744 _ 8B. 0D, 10035884(d)
        mov     dword [edx+4H], ecx                     ; 1001774A _ 89. 4A, 04
        mov     eax, dword [?_5630]                     ; 1001774D _ A1, 10035888(d)
        mov     dword [edx+8H], eax                     ; 10017752 _ 89. 42, 08
        mov     eax, dword [ebp+0CH]                    ; 10017755 _ 8B. 45, 0C
        mov     cx, word [?_5631]                       ; 10017758 _ 66: 8B. 0D, 1003588C(d)
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 1001775F _ 66: 3D, FFFF
        mov     word [edx+0CH], cx                      ; 10017763 _ 66: 89. 4A, 0C
        je      ?_2680                                  ; 10017767 _ 0F 84, 000000A8
        and     eax, 0FFFFH                             ; 1001776D _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 10017772 _ 8D. 04 40
        lea     eax, [eax+eax*8]                        ; 10017775 _ 8D. 04 C0
        lea     edx, [eax+eax*4]                        ; 10017778 _ 8D. 14 80
        mov     eax, dword [?_5634+edx*4]               ; 1001777B _ 8B. 04 95, 100358A4(d)
        mov     dword [esi+65H], eax                    ; 10017782 _ 89. 46, 65
        jmp     ?_2684                                  ; 10017785 _ E9, 000000D9

?_2674: mov     ecx, dword [esi+1H]                     ; 1001778A _ 8B. 4E, 01
        push    1                                       ; 1001778D _ 6A, 01
        push    437                                     ; 1001778F _ 68, 000001B5
        push    ecx                                     ; 10017794 _ 51
        call    ?_2524                                  ; 10017795 _ E8, FFFFEFC6
        add     esp, 12                                 ; 1001779A _ 83. C4, 0C
        cmp     eax, ebx                                ; 1001779D _ 3B. C3
        je      ?_2684                                  ; 1001779F _ 0F 84, 000000BE
        or      ecx, 0FFFFFFFFH                         ; 100177A5 _ 83. C9, FF
        mov     byte [eax+22H], bl                      ; 100177A8 _ 88. 58, 22
        mov     byte [eax+1CH], cl                      ; 100177AB _ 88. 48, 1C
        mov     byte [eax+1DH], cl                      ; 100177AE _ 88. 48, 1D
        mov     dword [eax+1EH], ecx                    ; 100177B1 _ 89. 48, 1E
        jmp     ?_2684                                  ; 100177B4 _ E9, 000000AA

?_2675: mov     dword [esi+30H], 80000                  ; 100177B9 _ C7. 46, 30, 00013880
        jmp     ?_2684                                  ; 100177C0 _ E9, 0000009E

?_2676: push    ?_5428                                  ; 100177C5 _ 68, 10031428(d)
        push    1536                                    ; 100177CA _ 68, 00000600
        call    ?_0640                                  ; 100177CF _ E8, FFFEEDAC
        add     esp, 8                                  ; 100177D4 _ 83. C4, 08
        mov     dword [esi+71H], eax                    ; 100177D7 _ 89. 46, 71
        xor     eax, eax                                ; 100177DA _ 33. C0
?_2677: mov     edx, dword [esi+71H]                    ; 100177DC _ 8B. 56, 71
        add     eax, 24                                 ; 100177DF _ 83. C0, 18
        cmp     eax, 1536                               ; 100177E2 _ 3D, 00000600
        mov     byte [eax+edx-0BH], -1                  ; 100177E7 _ C6. 44 10, F5, FF
        mov     ecx, dword [esi+71H]                    ; 100177EC _ 8B. 4E, 71
        mov     dword [eax+ecx-4H], ebx                 ; 100177EF _ 89. 5C 08, FC
        jl      ?_2677                                  ; 100177F3 _ 7C, E7
?_2678: mov     dword [esi+30H], 100                    ; 100177F5 _ C7. 46, 30, 00000064
        mov     dword [esi+49H], 1061997773             ; 100177FC _ C7. 46, 49, 3F4CCCCD
        jmp     ?_2684                                  ; 10017803 _ EB, 5E

?_2679: mov     dword [esi+65H], ebx                    ; 10017805 _ 89. 5E, 65
        mov     word [esi+69H], bx                      ; 10017808 _ 66: 89. 5E, 69
        mov     word [esi+6BH], bx                      ; 1001780C _ 66: 89. 5E, 6B
        mov     dword [esi+6DH], ebx                    ; 10017810 _ 89. 5E, 6D
        jmp     ?_2684                                  ; 10017813 _ EB, 4E

?_2680: mov     dword [esi+65H], -1                     ; 10017815 _ C7. 46, 65, FFFFFFFF
        jmp     ?_2684                                  ; 1001781C _ EB, 45

?_2681: mov     dword [esi+65H], 10                     ; 1001781E _ C7. 46, 65, 0000000A
        mov     dword [esi+69H], 3                      ; 10017825 _ C7. 46, 69, 00000003
        mov     dword [esi+6DH], 5                      ; 1001782C _ C7. 46, 6D, 00000005
        jmp     ?_2684                                  ; 10017833 _ EB, 2E

?_2682: push    esi                                     ; 10017835 _ 56
        call    ?_1936                                  ; 10017836 _ E8, FFFF9195
        push    3                                       ; 1001783B _ 6A, 03
        push    esi                                     ; 1001783D _ 56
        mov     dword [esi+65H], eax                    ; 1001783E _ 89. 46, 65
        call    ?_1931                                  ; 10017841 _ E8, FFFF900A
        add     esp, 12                                 ; 10017846 _ 83. C4, 0C
        jmp     ?_2684                                  ; 10017849 _ EB, 18

?_2683: push    ?_5343                                  ; 1001784B _ 68, 1002D504(d)
        push    60                                      ; 10017850 _ 6A, 3C
        call    ?_0640                                  ; 10017852 _ E8, FFFEED29
        mov     dword [esi+65H], eax                    ; 10017857 _ 89. 46, 65
        add     esp, 8                                  ; 1001785A _ 83. C4, 08
        mov     dword [eax], -1                         ; 1001785D _ C7. 00, FFFFFFFF
?_2684: cmp     byte [esi], 38                          ; 10017863 _ 80. 3E, 26
        jnz     ?_2685                                  ; 10017866 _ 75, 06
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [esi+29H], 270                     ; 10017868 _ 66: C7. 46, 29, 010E
?_2685: push    esi                                     ; 1001786E _ 56
        call    ?_2649                                  ; 1001786F _ E8, FFFFFB8C
        xor     edx, edx                                ; 10017874 _ 33. D2
        mov     dl, byte [esi]                          ; 10017876 _ 8A. 16
        push    edx                                     ; 10017878 _ 52
        call    ?_2693                                  ; 10017879 _ E8, 00000132
        push    esi                                     ; 1001787E _ 56
        call    ?_2642                                  ; 1001787F _ E8, FFFFFAAC
        add     esp, 12                                 ; 10017884 _ 83. C4, 0C
        mov     eax, esi                                ; 10017887 _ 8B. C6
        pop     esi                                     ; 10017889 _ 5E
        pop     ebx                                     ; 1001788A _ 5B
        mov     esp, ebp                                ; 1001788B _ 8B. E5
        pop     ebp                                     ; 1001788D _ 5D
        ret                                             ; 1001788E _ C3

        nop                                             ; 1001788F _ 90

?_2686:                                                 ; switch/case jump table
        dd ?_2673                                       ; 10017890 _ 10017739 (d)
        dd ?_2680                                       ; 10017894 _ 10017815 (d)
        dd ?_2681                                       ; 10017898 _ 1001781E (d)
        dd ?_2674                                       ; 1001789C _ 1001778A (d)
        dd ?_2676                                       ; 100178A0 _ 100177C5 (d)
        dd ?_2678                                       ; 100178A4 _ 100177F5 (d)
        dd ?_2679                                       ; 100178A8 _ 10017805 (d)
        dd ?_2675                                       ; 100178AC _ 100177B9 (d)
        dd ?_2682                                       ; 100178B0 _ 10017835 (d)
        dd ?_2683                                       ; 100178B4 _ 1001784B (d)
        dd ?_2684                                       ; 100178B8 _ 10017863 (d)

?_2687: db 00H, 00H, 00H, 00H, 0AH, 0AH, 0AH, 01H       ; 100178BC _ ........
        db 01H, 01H, 02H, 02H, 02H, 0AH, 0AH, 0AH       ; 100178C4 _ ........
        db 03H, 03H, 03H, 0AH, 0AH, 0AH, 0AH, 0AH       ; 100178CC _ ........
        db 0AH, 0AH, 04H, 05H, 05H, 0AH, 0AH, 0AH       ; 100178D4 _ ........
        db 0AH, 0AH, 0AH, 0AH, 0AH, 0AH, 0AH, 0AH       ; 100178DC _ ........
        db 0AH, 0AH, 0AH, 0AH, 0AH, 0AH, 0AH, 0AH       ; 100178E4 _ ........
        db 0AH, 06H, 06H, 06H, 0AH, 0AH, 0AH, 0AH       ; 100178EC _ ........
        db 0AH, 0AH, 0AH, 0AH, 0AH, 0AH, 0AH, 0AH       ; 100178F4 _ ........
        db 0AH, 0AH, 0AH, 07H, 08H, 08H, 08H, 09H       ; 100178FC _ ........
        db 09H, 09H, 90H, 90H, 90H, 90H, 90H, 90H       ; 10017904 _ ........
        db 90H, 90H, 90H, 90H                           ; 1001790C _ ....
?_2688: push    esi                                     ; 10017910 _ 56
        mov     esi, dword [esp+8H]                     ; 10017911 _ 8B. 74 24, 08
        xor     eax, eax                                ; 10017915 _ 33. C0
        push    edi                                     ; 10017917 _ 57
        mov     al, byte [esi]                          ; 10017918 _ 8A. 06
        push    eax                                     ; 1001791A _ 50
        call    ?_2693                                  ; 1001791B _ E8, 00000090
        xor     ecx, ecx                                ; 10017920 _ 33. C9
        push    esi                                     ; 10017922 _ 56
        mov     cl, byte [esi]                          ; 10017923 _ 8A. 0E
        lea     eax, [ecx+ecx*2]                        ; 10017925 _ 8D. 04 49
        shl     eax, 4                                  ; 10017928 _ C1. E0, 04
        add     eax, ecx                                ; 1001792B _ 03. C1
        lea     edx, [eax+eax*2]                        ; 1001792D _ 8D. 14 40
        mov     eax, dword [?_5668]                     ; 10017930 _ A1, 100A8C30(d)
        add     eax, ecx                                ; 10017935 _ 03. C1
        lea     edi, [eax+edx*4]                        ; 10017937 _ 8D. 3C 90
        call    ?_2710                                  ; 1001793A _ E8, 00000171
        add     esp, 8                                  ; 1001793F _ 83. C4, 08
        test    eax, eax                                ; 10017942 _ 85. C0
        jz      ?_2689                                  ; 10017944 _ 74, 18
        mov     ecx, dword [esi+5DH]                    ; 10017946 _ 8B. 4E, 5D
        push    253                                     ; 10017949 _ 68, 000000FD
        push    0                                       ; 1001794E _ 6A, 00
        push    1                                       ; 10017950 _ 6A, 01
        push    ecx                                     ; 10017952 _ 51
        call    ?_2482                                  ; 10017953 _ E8, FFFFEB08
        add     esp, 16                                 ; 10017958 _ 83. C4, 10
        pop     edi                                     ; 1001795B _ 5F
        pop     esi                                     ; 1001795C _ 5E
        ret                                             ; 1001795D _ C3
