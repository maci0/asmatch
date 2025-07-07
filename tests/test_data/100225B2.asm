; ---- 100225B2 ----
?_4629: ; Local function
        push    4                                       ; 100225B2 _ 6A, 04
        pop     esi                                     ; 100225B4 _ 5E
?_4630: mov     bl, byte [edi]                          ; 100225B5 _ 8A. 1F
        inc     edi                                     ; 100225B7 _ 47
        cmp     eax, 11                                 ; 100225B8 _ 83. F8, 0B
        ja      ?_4680                                  ; 100225BB _ 0F 87, 00000277
; Note: Memory operand is misaligned. Performance penalty
        jmp     near [?_4710+eax*4]                     ; 100225C1 _ FF. 24 85, 100229FF(d)

?_4631: cmp     bl, 49                                  ; 100225C8 _ 80. FB, 31
        jl      ?_4633                                  ; 100225CB _ 7C, 0C
        cmp     bl, 57                                  ; 100225CD _ 80. FB, 39
        jg      ?_4633                                  ; 100225D0 _ 7F, 07
?_4632: push    3                                       ; 100225D2 _ 6A, 03
        jmp     ?_4672                                  ; 100225D4 _ E9, 0000021D

?_4633: cmp     bl, byte [?_5478]                       ; 100225D9 _ 3A. 1D, 10033EE4(d)
        jnz     ?_4635                                  ; 100225DF _ 75, 07
?_4634: push    5                                       ; 100225E1 _ 6A, 05
        jmp     ?_4678                                  ; 100225E3 _ E9, 00000246

?_4635: movsx   eax, bl                                 ; 100225E8 _ 0F BE. C3
        sub     eax, 43                                 ; 100225EB _ 83. E8, 2B
        jz      ?_4637                                  ; 100225EE _ 74, 1E
        dec     eax                                     ; 100225F0 _ 48
        dec     eax                                     ; 100225F1 _ 48
        jz      ?_4636                                  ; 100225F2 _ 74, 0E
        sub     eax, 3                                  ; 100225F4 _ 83. E8, 03
        jne     ?_4691                                  ; 100225F7 _ 0F 85, 000002D4
        jmp     ?_4645                                  ; 100225FD _ E9, 0000008F

?_4636: push    2                                       ; 10022602 _ 6A, 02
        mov     dword [ebp-28H], 32768                  ; 10022604 _ C7. 45, D8, 00008000
        pop     eax                                     ; 1002260B _ 58
        jmp     ?_4630                                  ; 1002260C _ EB, A7

?_4637: and     dword [ebp-28H], 00H                    ; 1002260E _ 83. 65, D8, 00
        push    2                                       ; 10022612 _ 6A, 02
        pop     eax                                     ; 10022614 _ 58
        jmp     ?_4630                                  ; 10022615 _ EB, 9E

?_4638: cmp     bl, 49                                  ; 10022617 _ 80. FB, 31
        mov     dword [ebp-10H], edx                    ; 1002261A _ 89. 55, F0
        jl      ?_4639                                  ; 1002261D _ 7C, 05
        cmp     bl, 57                                  ; 1002261F _ 80. FB, 39
        jle     ?_4632                                  ; 10022622 _ 7E, AE
?_4639: cmp     bl, byte [?_5478]                       ; 10022624 _ 3A. 1D, 10033EE4(d)
        je      ?_4653                                  ; 1002262A _ 0F 84, 000000BC
        cmp     bl, 43                                  ; 10022630 _ 80. FB, 2B
        jz      ?_4642                                  ; 10022633 _ 74, 31
        cmp     bl, 45                                  ; 10022635 _ 80. FB, 2D
        jz      ?_4642                                  ; 10022638 _ 74, 2C
        cmp     bl, 48                                  ; 1002263A _ 80. FB, 30
        jz      ?_4645                                  ; 1002263D _ 74, 52
?_4640: cmp     bl, 67                                  ; 1002263F _ 80. FB, 43
        jle     ?_4691                                  ; 10022642 _ 0F 8E, 00000289
        cmp     bl, 69                                  ; 10022648 _ 80. FB, 45
        jle     ?_4641                                  ; 1002264B _ 7E, 12
        cmp     bl, 99                                  ; 1002264D _ 80. FB, 63
        jle     ?_4691                                  ; 10022650 _ 0F 8E, 0000027B
        cmp     bl, 101                                 ; 10022656 _ 80. FB, 65
        jg      ?_4691                                  ; 10022659 _ 0F 8F, 00000272
?_4641: push    6                                       ; 1002265F _ 6A, 06
        jmp     ?_4678                                  ; 10022661 _ E9, 000001C8

?_4642: dec     edi                                     ; 10022666 _ 4F
        push    11                                      ; 10022667 _ 6A, 0B
        jmp     ?_4678                                  ; 10022669 _ E9, 000001C0

?_4643: cmp     bl, 49                                  ; 1002266E _ 80. FB, 31
        jl      ?_4644                                  ; 10022671 _ 7C, 09
        cmp     bl, 57                                  ; 10022673 _ 80. FB, 39
        jle     ?_4632                                  ; 10022676 _ 0F 8E, FFFFFF56
?_4644: cmp     bl, byte [?_5478]                       ; 1002267C _ 3A. 1D, 10033EE4(d)
        je      ?_4634                                  ; 10022682 _ 0F 84, FFFFFF59
        cmp     bl, 48                                  ; 10022688 _ 80. FB, 30
        jne     ?_4681                                  ; 1002268B _ 0F 85, 000001B5
?_4645: mov     eax, edx                                ; 10022691 _ 8B. C2
        jmp     ?_4630                                  ; 10022693 _ E9, FFFFFF1D

?_4646: mov     dword [ebp-10H], edx                    ; 10022698 _ 89. 55, F0
?_4647: cmp     dword [?_5477], edx                     ; 1002269B _ 39. 15, 10033EE0(d)
        jle     ?_4648                                  ; 100226A1 _ 7E, 11
        movzx   eax, bl                                 ; 100226A3 _ 0F B6. C3
        push    esi                                     ; 100226A6 _ 56
        push    eax                                     ; 100226A7 _ 50
        call    ?_4068                                  ; 100226A8 _ E8, FFFFD1A8
        pop     ecx                                     ; 100226AD _ 59
        pop     ecx                                     ; 100226AE _ 59
        push    1                                       ; 100226AF _ 6A, 01
        pop     edx                                     ; 100226B1 _ 5A
        jmp     ?_4649                                  ; 100226B2 _ EB, 0E

?_4648: mov     ecx, dword [?_5475]                     ; 100226B4 _ 8B. 0D, 10033CD4(d)
        movzx   eax, bl                                 ; 100226BA _ 0F B6. C3
        mov     al, byte [ecx+eax*2]                    ; 100226BD _ 8A. 04 41
        and     eax, esi                                ; 100226C0 _ 23. C6
?_4649: test    eax, eax                                ; 100226C2 _ 85. C0
        jz      ?_4652                                  ; 100226C4 _ 74, 1E
        cmp     dword [ebp-4H], 25                      ; 100226C6 _ 83. 7D, FC, 19
        jnc     ?_4650                                  ; 100226CA _ 73, 10
        mov     eax, dword [ebp-0CH]                    ; 100226CC _ 8B. 45, F4
        inc     dword [ebp-4H]                          ; 100226CF _ FF. 45, FC
        sub     bl, 48                                  ; 100226D2 _ 80. EB, 30
        inc     dword [ebp-0CH]                         ; 100226D5 _ FF. 45, F4
        mov     byte [eax], bl                          ; 100226D8 _ 88. 18
        jmp     ?_4651                                  ; 100226DA _ EB, 03

?_4650: inc     dword [ebp-8H]                          ; 100226DC _ FF. 45, F8
?_4651: mov     bl, byte [edi]                          ; 100226DF _ 8A. 1F
        inc     edi                                     ; 100226E1 _ 47
        jmp     ?_4647                                  ; 100226E2 _ EB, B7

?_4652: cmp     bl, byte [?_5478]                       ; 100226E4 _ 3A. 1D, 10033EE4(d)
        jnz     ?_4660                                  ; 100226EA _ 75, 67
?_4653: mov     eax, esi                                ; 100226EC _ 8B. C6
        jmp     ?_4630                                  ; 100226EE _ E9, FFFFFEC2

?_4654: cmp     dword [ebp-4H], 0                       ; 100226F3 _ 83. 7D, FC, 00
        mov     dword [ebp-10H], edx                    ; 100226F7 _ 89. 55, F0
        mov     dword [ebp-24H], edx                    ; 100226FA _ 89. 55, DC
        jnz     ?_4656                                  ; 100226FD _ 75, 0D
?_4655: cmp     bl, 48                                  ; 100226FF _ 80. FB, 30
        jnz     ?_4656                                  ; 10022702 _ 75, 08
        dec     dword [ebp-8H]                          ; 10022704 _ FF. 4D, F8
        mov     bl, byte [edi]                          ; 10022707 _ 8A. 1F
        inc     edi                                     ; 10022709 _ 47
        jmp     ?_4655                                  ; 1002270A _ EB, F3

?_4656: cmp     dword [?_5477], edx                     ; 1002270C _ 39. 15, 10033EE0(d)
        jle     ?_4657                                  ; 10022712 _ 7E, 11
        movzx   eax, bl                                 ; 10022714 _ 0F B6. C3
        push    esi                                     ; 10022717 _ 56
        push    eax                                     ; 10022718 _ 50
        call    ?_4068                                  ; 10022719 _ E8, FFFFD137
        pop     ecx                                     ; 1002271E _ 59
        pop     ecx                                     ; 1002271F _ 59
        push    1                                       ; 10022720 _ 6A, 01
        pop     edx                                     ; 10022722 _ 5A
        jmp     ?_4658                                  ; 10022723 _ EB, 0E

?_4657: mov     ecx, dword [?_5475]                     ; 10022725 _ 8B. 0D, 10033CD4(d)
        movzx   eax, bl                                 ; 1002272B _ 0F B6. C3
        mov     al, byte [ecx+eax*2]                    ; 1002272E _ 8A. 04 41
        and     eax, esi                                ; 10022731 _ 23. C6
?_4658: test    eax, eax                                ; 10022733 _ 85. C0
        jz      ?_4660                                  ; 10022735 _ 74, 1C
        cmp     dword [ebp-4H], 25                      ; 10022737 _ 83. 7D, FC, 19
        jnc     ?_4659                                  ; 1002273B _ 73, 11
        mov     eax, dword [ebp-0CH]                    ; 1002273D _ 8B. 45, F4
        inc     dword [ebp-4H]                          ; 10022740 _ FF. 45, FC
        sub     bl, 48                                  ; 10022743 _ 80. EB, 30
        inc     dword [ebp-0CH]                         ; 10022746 _ FF. 45, F4
        dec     dword [ebp-8H]                          ; 10022749 _ FF. 4D, F8
        mov     byte [eax], bl                          ; 1002274C _ 88. 18
?_4659: mov     bl, byte [edi]                          ; 1002274E _ 8A. 1F
        inc     edi                                     ; 10022750 _ 47
        jmp     ?_4656                                  ; 10022751 _ EB, B9

?_4660: cmp     bl, 43                                  ; 10022753 _ 80. FB, 2B
        je      ?_4642                                  ; 10022756 _ 0F 84, FFFFFF0A
        cmp     bl, 45                                  ; 1002275C _ 80. FB, 2D
        je      ?_4642                                  ; 1002275F _ 0F 84, FFFFFF01
        jmp     ?_4640                                  ; 10022765 _ E9, FFFFFED5

?_4661: cmp     dword [?_5477], edx                     ; 1002276A _ 39. 15, 10033EE0(d)
        mov     dword [ebp-24H], edx                    ; 10022770 _ 89. 55, DC
        jle     ?_4662                                  ; 10022773 _ 7E, 11
        movzx   eax, bl                                 ; 10022775 _ 0F B6. C3
        push    esi                                     ; 10022778 _ 56
        push    eax                                     ; 10022779 _ 50
        call    ?_4068                                  ; 1002277A _ E8, FFFFD0D6
        pop     ecx                                     ; 1002277F _ 59
        pop     ecx                                     ; 10022780 _ 59
        push    1                                       ; 10022781 _ 6A, 01
        pop     edx                                     ; 10022783 _ 5A
        jmp     ?_4663                                  ; 10022784 _ EB, 0E

?_4662: mov     ecx, dword [?_5475]                     ; 10022786 _ 8B. 0D, 10033CD4(d)
        movzx   eax, bl                                 ; 1002278C _ 0F B6. C3
        mov     al, byte [ecx+eax*2]                    ; 1002278F _ 8A. 04 41
        and     eax, esi                                ; 10022792 _ 23. C6
?_4663: test    eax, eax                                ; 10022794 _ 85. C0
        je      ?_4681                                  ; 10022796 _ 0F 84, 000000AA
        mov     eax, esi                                ; 1002279C _ 8B. C6
        jmp     ?_4673                                  ; 1002279E _ EB, 57

?_4664: lea     ecx, [edi-2H]                           ; 100227A0 _ 8D. 4F, FE
        cmp     bl, 49                                  ; 100227A3 _ 80. FB, 31
        mov     dword [ebp+10H], ecx                    ; 100227A6 _ 89. 4D, 10
        jl      ?_4665                                  ; 100227A9 _ 7C, 05
        cmp     bl, 57                                  ; 100227AB _ 80. FB, 39
        jle     ?_4671                                  ; 100227AE _ 7E, 44
?_4665: movsx   eax, bl                                 ; 100227B0 _ 0F BE. C3
        sub     eax, 43                                 ; 100227B3 _ 83. E8, 2B
        jz      ?_4677                                  ; 100227B6 _ 74, 74
        dec     eax                                     ; 100227B8 _ 48
        dec     eax                                     ; 100227B9 _ 48
        jz      ?_4676                                  ; 100227BA _ 74, 64
        sub     eax, 3                                  ; 100227BC _ 83. E8, 03
        jne     ?_4692                                  ; 100227BF _ 0F 85, 0000010F
?_4666: push    8                                       ; 100227C5 _ 6A, 08
        jmp     ?_4678                                  ; 100227C7 _ EB, 65

?_4667: mov     dword [ebp-20H], edx                    ; 100227C9 _ 89. 55, E0
?_4668: cmp     bl, 48                                  ; 100227CC _ 80. FB, 30
        jnz     ?_4669                                  ; 100227CF _ 75, 05
        mov     bl, byte [edi]                          ; 100227D1 _ 8A. 1F
        inc     edi                                     ; 100227D3 _ 47
        jmp     ?_4668                                  ; 100227D4 _ EB, F6

?_4669: cmp     bl, 49                                  ; 100227D6 _ 80. FB, 31
        jl      ?_4691                                  ; 100227D9 _ 0F 8C, 000000F2
        cmp     bl, 57                                  ; 100227DF _ 80. FB, 39
        jg      ?_4691                                  ; 100227E2 _ 0F 8F, 000000E9
        jmp     ?_4671                                  ; 100227E8 _ EB, 0A

?_4670: cmp     bl, 49                                  ; 100227EA _ 80. FB, 31
        jl      ?_4674                                  ; 100227ED _ 7C, 0E
        cmp     bl, 57                                  ; 100227EF _ 80. FB, 39
        jg      ?_4674                                  ; 100227F2 _ 7F, 09
?_4671: push    9                                       ; 100227F4 _ 6A, 09
?_4672: pop     eax                                     ; 100227F6 _ 58
?_4673: dec     edi                                     ; 100227F7 _ 4F
        jmp     ?_4630                                  ; 100227F8 _ E9, FFFFFDB8

?_4674: cmp     bl, 48                                  ; 100227FD _ 80. FB, 30
        jnz     ?_4681                                  ; 10022800 _ 75, 44
        jmp     ?_4666                                  ; 10022802 _ EB, C1

?_4675: cmp     dword [ebp+20H], 0                      ; 10022804 _ 83. 7D, 20, 00
        jz      ?_4679                                  ; 10022808 _ 74, 2A
        movsx   eax, bl                                 ; 1002280A _ 0F BE. C3
        lea     ecx, [edi-1H]                           ; 1002280D _ 8D. 4F, FF
        sub     eax, 43                                 ; 10022810 _ 83. E8, 2B
        mov     dword [ebp+10H], ecx                    ; 10022813 _ 89. 4D, 10
        jz      ?_4677                                  ; 10022816 _ 74, 14
        dec     eax                                     ; 10022818 _ 48
        dec     eax                                     ; 10022819 _ 48
        jne     ?_4692                                  ; 1002281A _ 0F 85, 000000B4
?_4676: or      dword [ebp-18H], 0FFFFFFFFH             ; 10022820 _ 83. 4D, E8, FF
        push    7                                       ; 10022824 _ 6A, 07
        pop     eax                                     ; 10022826 _ 58
        jmp     ?_4630                                  ; 10022827 _ E9, FFFFFD89

?_4677: push    7                                       ; 1002282C _ 6A, 07
?_4678: pop     eax                                     ; 1002282E _ 58
        jmp     ?_4630                                  ; 1002282F _ E9, FFFFFD81

?_4679: push    10                                      ; 10022834 _ 6A, 0A
        dec     edi                                     ; 10022836 _ 4F
        pop     eax                                     ; 10022837 _ 58
?_4680: cmp     eax, 10                                 ; 10022838 _ 83. F8, 0A
        je      ?_4693                                  ; 1002283B _ 0F 84, 00000095
        jmp     ?_4630                                  ; 10022841 _ E9, FFFFFD6F

?_4681: mov     edi, dword [ebp+10H]                    ; 10022846 _ 8B. 7D, 10
        jmp     ?_4693                                  ; 10022849 _ E9, 00000088

?_4682: mov     dword [ebp-20H], 1                      ; 1002284E _ C7. 45, E0, 00000001
        xor     esi, esi                                ; 10022855 _ 33. F6
?_4683: cmp     dword [?_5477], 1                       ; 10022857 _ 83. 3D, 10033EE0(d), 01
        jle     ?_4684                                  ; 1002285E _ 7E, 0F
        movzx   eax, bl                                 ; 10022860 _ 0F B6. C3
        push    4                                       ; 10022863 _ 6A, 04
        push    eax                                     ; 10022865 _ 50
        call    ?_4068                                  ; 10022866 _ E8, FFFFCFEA
        pop     ecx                                     ; 1002286B _ 59
        pop     ecx                                     ; 1002286C _ 59
        jmp     ?_4685                                  ; 1002286D _ EB, 0F

?_4684: mov     ecx, dword [?_5475]                     ; 1002286F _ 8B. 0D, 10033CD4(d)
        movzx   eax, bl                                 ; 10022875 _ 0F B6. C3
        mov     al, byte [ecx+eax*2]                    ; 10022878 _ 8A. 04 41
        and     eax, 04H                                ; 1002287B _ 83. E0, 04
?_4685: test    eax, eax                                ; 1002287E _ 85. C0
        jz      ?_4687                                  ; 10022880 _ 74, 1C
        movsx   ecx, bl                                 ; 10022882 _ 0F BE. CB
        lea     eax, [esi+esi*4]                        ; 10022885 _ 8D. 04 B6
        lea     esi, [ecx+eax*2-30H]                    ; 10022888 _ 8D. 74 41, D0
        cmp     esi, 5200                               ; 1002288C _ 81. FE, 00001450
        jg      ?_4686                                  ; 10022892 _ 7F, 05
        mov     bl, byte [edi]                          ; 10022894 _ 8A. 1F
        inc     edi                                     ; 10022896 _ 47
        jmp     ?_4683                                  ; 10022897 _ EB, BE

?_4686: mov     esi, 5201                               ; 10022899 _ BE, 00001451
?_4687: mov     dword [ebp-1CH], esi                    ; 1002289E _ 89. 75, E4
?_4688: cmp     dword [?_5477], 1                       ; 100228A1 _ 83. 3D, 10033EE0(d), 01
        jle     ?_4689                                  ; 100228A8 _ 7E, 0F
        movzx   eax, bl                                 ; 100228AA _ 0F B6. C3
        push    4                                       ; 100228AD _ 6A, 04
        push    eax                                     ; 100228AF _ 50
        call    ?_4068                                  ; 100228B0 _ E8, FFFFCFA0
        pop     ecx                                     ; 100228B5 _ 59
        pop     ecx                                     ; 100228B6 _ 59
        jmp     ?_4690                                  ; 100228B7 _ EB, 0F

?_4689: mov     ecx, dword [?_5475]                     ; 100228B9 _ 8B. 0D, 10033CD4(d)
        movzx   eax, bl                                 ; 100228BF _ 0F B6. C3
        mov     al, byte [ecx+eax*2]                    ; 100228C2 _ 8A. 04 41
        and     eax, 04H                                ; 100228C5 _ 83. E0, 04
?_4690: test    eax, eax                                ; 100228C8 _ 85. C0
        jz      ?_4691                                  ; 100228CA _ 74, 05
        mov     bl, byte [edi]                          ; 100228CC _ 8A. 1F
        inc     edi                                     ; 100228CE _ 47
        jmp     ?_4688                                  ; 100228CF _ EB, D0

?_4691: dec     edi                                     ; 100228D1 _ 4F
        jmp     ?_4693                                  ; 100228D2 _ EB, 02

?_4692: mov     edi, ecx                                ; 100228D4 _ 8B. F9
?_4693: mov     eax, dword [ebp+0CH]                    ; 100228D6 _ 8B. 45, 0C
        cmp     dword [ebp-10H], 0                      ; 100228D9 _ 83. 7D, F0, 00
        mov     dword [eax], edi                        ; 100228DD _ 89. 38
        je      ?_4707                                  ; 100228DF _ 0F 84, 000000D9
        push    24                                      ; 100228E5 _ 6A, 18
        pop     eax                                     ; 100228E7 _ 58
        cmp     dword [ebp-4H], eax                     ; 100228E8 _ 39. 45, FC
        jbe     ?_4695                                  ; 100228EB _ 76, 15
        cmp     byte [ebp-45H], 5                       ; 100228ED _ 80. 7D, BB, 05
        jl      ?_4694                                  ; 100228F1 _ 7C, 03
        inc     byte [ebp-45H]                          ; 100228F3 _ FE. 45, BB
?_4694: mov     dword [ebp-4H], eax                     ; 100228F6 _ 89. 45, FC
        mov     eax, dword [ebp-0CH]                    ; 100228F9 _ 8B. 45, F4
        dec     eax                                     ; 100228FC _ 48
        inc     dword [ebp-8H]                          ; 100228FD _ FF. 45, F8
        jmp     ?_4696                                  ; 10022900 _ EB, 03

?_4695: mov     eax, dword [ebp-0CH]                    ; 10022902 _ 8B. 45, F4
?_4696: cmp     dword [ebp-4H], 0                       ; 10022905 _ 83. 7D, FC, 00
        jbe     ?_4706                                  ; 10022909 _ 0F 86, 000000A5
?_4697: dec     eax                                     ; 1002290F _ 48
        cmp     byte [eax], 0                           ; 10022910 _ 80. 38, 00
        jnz     ?_4698                                  ; 10022913 _ 75, 08
        dec     dword [ebp-4H]                          ; 10022915 _ FF. 4D, FC
        inc     dword [ebp-8H]                          ; 10022918 _ FF. 45, F8
        jmp     ?_4697                                  ; 1002291B _ EB, F2

?_4698: lea     eax, [ebp-40H]                          ; 1002291D _ 8D. 45, C0
        push    eax                                     ; 10022920 _ 50
        lea     eax, [ebp-5CH]                          ; 10022921 _ 8D. 45, A4
        push    dword [ebp-4H]                          ; 10022924 _ FF. 75, FC
        push    eax                                     ; 10022927 _ 50
        call    ?_4620                                  ; 10022928 _ E8, FFFFFB6A
        mov     eax, dword [ebp-1CH]                    ; 1002292D _ 8B. 45, E4
        xor     ecx, ecx                                ; 10022930 _ 33. C9
        add     esp, 12                                 ; 10022932 _ 83. C4, 0C
        cmp     dword [ebp-18H], ecx                    ; 10022935 _ 39. 4D, E8
        jge     ?_4699                                  ; 10022938 _ 7D, 02
        neg     eax                                     ; 1002293A _ F7. D8
?_4699: add     eax, dword [ebp-8H]                     ; 1002293C _ 03. 45, F8
        cmp     dword [ebp-20H], ecx                    ; 1002293F _ 39. 4D, E0
        jnz     ?_4700                                  ; 10022942 _ 75, 03
        add     eax, dword [ebp+18H]                    ; 10022944 _ 03. 45, 18
?_4700: cmp     dword [ebp-24H], ecx                    ; 10022947 _ 39. 4D, DC
        jnz     ?_4701                                  ; 1002294A _ 75, 03
        sub     eax, dword [ebp+1CH]                    ; 1002294C _ 2B. 45, 1C
?_4701: cmp     eax, 5200                               ; 1002294F _ 3D, 00001450
        jle     ?_4704                                  ; 10022954 _ 7E, 30
        mov     dword [ebp-2CH], 1                      ; 10022956 _ C7. 45, D4, 00000001
?_4702: mov     ebx, dword [ebp+10H]                    ; 1002295D _ 8B. 5D, 10
        mov     esi, dword [ebp+10H]                    ; 10022960 _ 8B. 75, 10
        mov     eax, dword [ebp+10H]                    ; 10022963 _ 8B. 45, 10
        mov     edx, dword [ebp+10H]                    ; 10022966 _ 8B. 55, 10
?_4703: cmp     dword [ebp-2CH], 0                      ; 10022969 _ 83. 7D, D4, 00
        jz      ?_4708                                  ; 1002296D _ 74, 60
        xor     ebx, ebx                                ; 1002296F _ 33. DB
        mov     eax, 32767                              ; 10022971 _ B8, 00007FFF
        mov     esi, 2147483648                         ; 10022976 _ BE, 80000000
        xor     edx, edx                                ; 1002297B _ 33. D2
        mov     dword [ebp-14H], 2                      ; 1002297D _ C7. 45, EC, 00000002
        jmp     ?_4709                                  ; 10022984 _ EB, 5E

?_4704: cmp     eax, 4294962096                         ; 10022986 _ 3D, FFFFEBB0
        jge     ?_4705                                  ; 1002298B _ 7D, 09
        mov     dword [ebp-30H], 1                      ; 1002298D _ C7. 45, D0, 00000001
        jmp     ?_4702                                  ; 10022994 _ EB, C7

?_4705: push    dword [ebp+14H]                         ; 10022996 _ FF. 75, 14
        push    eax                                     ; 10022999 _ 50
        lea     eax, [ebp-40H]                          ; 1002299A _ 8D. 45, C0
        push    eax                                     ; 1002299D _ 50
        call    ?_4805                                  ; 1002299E _ E8, 0000086E
        mov     edx, dword [ebp-40H]                    ; 100229A3 _ 8B. 55, C0
        mov     ebx, dword [ebp-3EH]                    ; 100229A6 _ 8B. 5D, C2
        mov     esi, dword [ebp-3AH]                    ; 100229A9 _ 8B. 75, C6
        mov     eax, dword [ebp-36H]                    ; 100229AC _ 8B. 45, CA
        add     esp, 12                                 ; 100229AF _ 83. C4, 0C
        jmp     ?_4703                                  ; 100229B2 _ EB, B5

?_4706: xor     edx, edx                                ; 100229B4 _ 33. D2
        xor     eax, eax                                ; 100229B6 _ 33. C0
        xor     esi, esi                                ; 100229B8 _ 33. F6
        xor     ebx, ebx                                ; 100229BA _ 33. DB
        jmp     ?_4703                                  ; 100229BC _ EB, AB

?_4707: xor     edx, edx                                ; 100229BE _ 33. D2
        xor     eax, eax                                ; 100229C0 _ 33. C0
        xor     esi, esi                                ; 100229C2 _ 33. F6
        xor     ebx, ebx                                ; 100229C4 _ 33. DB
        mov     dword [ebp-14H], 4                      ; 100229C6 _ C7. 45, EC, 00000004
        jmp     ?_4709                                  ; 100229CD _ EB, 15

?_4708: cmp     dword [ebp-30H], 0                      ; 100229CF _ 83. 7D, D0, 00
        jz      ?_4709                                  ; 100229D3 _ 74, 0F
        xor     edx, edx                                ; 100229D5 _ 33. D2
        xor     eax, eax                                ; 100229D7 _ 33. C0
        xor     esi, esi                                ; 100229D9 _ 33. F6
        xor     ebx, ebx                                ; 100229DB _ 33. DB
        mov     dword [ebp-14H], 1                      ; 100229DD _ C7. 45, EC, 00000001
?_4709: mov     ecx, dword [ebp+8H]                     ; 100229E4 _ 8B. 4D, 08
        or      eax, dword [ebp-28H]                    ; 100229E7 _ 0B. 45, D8
        pop     edi                                     ; 100229EA _ 5F
        mov     dword [ecx+6H], esi                     ; 100229EB _ 89. 71, 06
        mov     dword [ecx+2H], ebx                     ; 100229EE _ 89. 59, 02
        mov     word [ecx+0AH], ax                      ; 100229F1 _ 66: 89. 41, 0A
        mov     eax, dword [ebp-14H]                    ; 100229F5 _ 8B. 45, EC
        pop     esi                                     ; 100229F8 _ 5E
        mov     word [ecx], dx                          ; 100229F9 _ 66: 89. 11
        pop     ebx                                     ; 100229FC _ 5B
        leave                                           ; 100229FD _ C9
        ret                                             ; 100229FE _ C3

?_4710:                                                 ; switch/case jump table
        dd ?_4631                                       ; 100229FF _ 100225C8 (d)
        dd ?_4638                                       ; 10022A03 _ 10022617 (d)
        dd ?_4643                                       ; 10022A07 _ 1002266E (d)
        dd ?_4646                                       ; 10022A0B _ 10022698 (d)
        dd ?_4654                                       ; 10022A0F _ 100226F3 (d)
        dd ?_4661                                       ; 10022A13 _ 1002276A (d)
        dd ?_4664                                       ; 10022A17 _ 100227A0 (d)
        dd ?_4670                                       ; 10022A1B _ 100227EA (d)
        dd ?_4667                                       ; 10022A1F _ 100227C9 (d)
        dd ?_4682                                       ; 10022A23 _ 1002284E (d)
        dd ?_4680                                       ; 10022A27 _ 10022838 (d)
        dd ?_4675                                       ; 10022A2B _ 10022804 (d)
?_4711: push    ebp                                     ; 10022A2F _ 55
        mov     ebp, esp                                ; 10022A30 _ 8B. EC
        sub     esp, 28                                 ; 10022A32 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 10022A35 _ 8B. 45, 10
        push    ebx                                     ; 10022A38 _ 53
        mov     ebx, dword [ebp+1CH]                    ; 10022A39 _ 8B. 5D, 1C
        push    esi                                     ; 10022A3C _ 56
        mov     ecx, eax                                ; 10022A3D _ 8B. C8
        mov     esi, 32767                              ; 10022A3F _ BE, 00007FFF
        and     ecx, 8000H                              ; 10022A44 _ 81. E1, 00008000
        and     eax, esi                                ; 10022A4A _ 23. C6
        test    cx, cx                                  ; 10022A4C _ 66: 85. C9
        push    edi                                     ; 10022A4F _ 57
        mov     byte [ebp-1CH], -52                     ; 10022A50 _ C6. 45, E4, CC
        mov     byte [ebp-1BH], -52                     ; 10022A54 _ C6. 45, E5, CC
        mov     byte [ebp-1AH], -52                     ; 10022A58 _ C6. 45, E6, CC
        mov     byte [ebp-19H], -52                     ; 10022A5C _ C6. 45, E7, CC
        mov     byte [ebp-18H], -52                     ; 10022A60 _ C6. 45, E8, CC
        mov     byte [ebp-17H], -52                     ; 10022A64 _ C6. 45, E9, CC
        mov     byte [ebp-16H], -52                     ; 10022A68 _ C6. 45, EA, CC
        mov     byte [ebp-15H], -52                     ; 10022A6C _ C6. 45, EB, CC
        mov     byte [ebp-14H], -52                     ; 10022A70 _ C6. 45, EC, CC
        mov     byte [ebp-13H], -52                     ; 10022A74 _ C6. 45, ED, CC
        mov     byte [ebp-12H], -5                      ; 10022A78 _ C6. 45, EE, FB
        mov     byte [ebp-11H], 63                      ; 10022A7C _ C6. 45, EF, 3F
        mov     dword [ebp-4H], 1                       ; 10022A80 _ C7. 45, FC, 00000001
        mov     edx, eax                                ; 10022A87 _ 8B. D0
        jz      ?_4712                                  ; 10022A89 _ 74, 06
        mov     byte [ebx+2H], 45                       ; 10022A8B _ C6. 43, 02, 2D
        jmp     ?_4713                                  ; 10022A8F _ EB, 04

?_4712: mov     byte [ebx+2H], 32                       ; 10022A91 _ C6. 43, 02, 20
?_4713: mov     edi, dword [ebp+0CH]                    ; 10022A95 _ 8B. 7D, 0C
        test    dx, dx                                  ; 10022A98 _ 66: 85. D2
        jnz     ?_4715                                  ; 10022A9B _ 75, 1E
        test    edi, edi                                ; 10022A9D _ 85. FF
        jnz     ?_4715                                  ; 10022A9F _ 75, 1A
        cmp     dword [ebp+8H], edi                     ; 10022AA1 _ 39. 7D, 08
        jnz     ?_4715                                  ; 10022AA4 _ 75, 15
?_4714: and     word [ebx], 00H                         ; 10022AA6 _ 66: 83. 23, 00
        mov     byte [ebx+2H], 32                       ; 10022AAA _ C6. 43, 02, 20
        mov     byte [ebx+3H], 1                        ; 10022AAE _ C6. 43, 03, 01
        mov     byte [ebx+4H], 48                       ; 10022AB2 _ C6. 43, 04, 30
        jmp     ?_4743                                  ; 10022AB6 _ E9, 000001FE

?_4715: cmp     dx, si                                  ; 10022ABB _ 66: 3B. D6
        jnz     ?_4723                                  ; 10022ABE _ 75, 7A
        mov     eax, 2147483648                         ; 10022AC0 _ B8, 80000000
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [ebx], 1                           ; 10022AC5 _ 66: C7. 03, 0001
        cmp     edi, eax                                ; 10022ACA _ 3B. F8
        jnz     ?_4716                                  ; 10022ACC _ 75, 06
        cmp     dword [ebp+8H], 0                       ; 10022ACE _ 83. 7D, 08, 00
        jz      ?_4717                                  ; 10022AD2 _ 74, 0F
?_4716: test    edi, 40000000H                          ; 10022AD4 _ F7. C7, 40000000
        jnz     ?_4717                                  ; 10022ADA _ 75, 07
        push    ?_5003                                  ; 10022ADC _ 68, 100264C0(d)
        jmp     ?_4722                                  ; 10022AE1 _ EB, 46

?_4717: test    cx, cx                                  ; 10022AE3 _ 66: 85. C9
        jz      ?_4718                                  ; 10022AE6 _ 74, 15
        cmp     edi, -1073741824                        ; 10022AE8 _ 81. FF, C0000000
        jnz     ?_4718                                  ; 10022AEE _ 75, 0D
        cmp     dword [ebp+8H], 0                       ; 10022AF0 _ 83. 7D, 08, 00
        jnz     ?_4721                                  ; 10022AF4 _ 75, 2E
        push    ?_5002                                  ; 10022AF6 _ 68, 100264B8(d)
        jmp     ?_4719                                  ; 10022AFB _ EB, 0F

?_4718: cmp     edi, eax                                ; 10022AFD _ 3B. F8
        jnz     ?_4721                                  ; 10022AFF _ 75, 23
        cmp     dword [ebp+8H], 0                       ; 10022B01 _ 83. 7D, 08, 00
        jnz     ?_4721                                  ; 10022B05 _ 75, 1D
        push    ?_5001                                  ; 10022B07 _ 68, 100264B0(d)
?_4719: lea     eax, [ebx+4H]                           ; 10022B0C _ 8D. 43, 04
        push    eax                                     ; 10022B0F _ 50
        call    ?_4074                                  ; 10022B10 _ E8, FFFFCDBB
        pop     ecx                                     ; 10022B15 _ 59
        mov     byte [ebx+3H], 5                        ; 10022B16 _ C6. 43, 03, 05
        pop     ecx                                     ; 10022B1A _ 59
?_4720: and     dword [ebp-4H], 00H                     ; 10022B1B _ 83. 65, FC, 00
        jmp     ?_4738                                  ; 10022B1F _ E9, 0000016E

?_4721: push    ?_5000                                  ; 10022B24 _ 68, 100264A8(d)
?_4722: lea     eax, [ebx+4H]                           ; 10022B29 _ 8D. 43, 04
        push    eax                                     ; 10022B2C _ 50
        call    ?_4074                                  ; 10022B2D _ E8, FFFFCD9E
        pop     ecx                                     ; 10022B32 _ 59
        mov     byte [ebx+3H], 6                        ; 10022B33 _ C6. 43, 03, 06
        pop     ecx                                     ; 10022B37 _ 59
        jmp     ?_4720                                  ; 10022B38 _ EB, E1

?_4723: movzx   eax, dx                                 ; 10022B3A _ 0F B7. C2
        mov     ecx, edi                                ; 10022B3D _ 8B. CF
        mov     esi, eax                                ; 10022B3F _ 8B. F0
        shr     ecx, 24                                 ; 10022B41 _ C1. E9, 18
        imul    eax, eax, 19728                         ; 10022B44 _ 69. C0, 00004D10
        shr     esi, 8                                  ; 10022B4A _ C1. EE, 08
        and     word [ebp-10H], 00H                     ; 10022B4D _ 66: 83. 65, F0, 00
        push    1                                       ; 10022B52 _ 6A, 01
        lea     ecx, [esi+ecx*2]                        ; 10022B54 _ 8D. 0C 4E
        mov     word [ebp-6H], dx                       ; 10022B57 _ 66: 89. 55, FA
        imul    ecx, ecx, 77                            ; 10022B5B _ 6B. C9, 4D
        mov     dword [ebp-0AH], edi                    ; 10022B5E _ 89. 7D, F6
        lea     esi, [ecx+eax-134312F4H]                ; 10022B61 _ 8D. B4 01, ECBCED0C
        mov     eax, dword [ebp+8H]                     ; 10022B68 _ 8B. 45, 08
        sar     esi, 16                                 ; 10022B6B _ C1. FE, 10
        mov     dword [ebp-0EH], eax                    ; 10022B6E _ 89. 45, F2
        movsx   eax, si                                 ; 10022B71 _ 0F BF. C6
        neg     eax                                     ; 10022B74 _ F7. D8
        push    eax                                     ; 10022B76 _ 50
        lea     eax, [ebp-10H]                          ; 10022B77 _ 8D. 45, F0
        push    eax                                     ; 10022B7A _ 50
        call    ?_4805                                  ; 10022B7B _ E8, 00000691
        add     esp, 12                                 ; 10022B80 _ 83. C4, 0C
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [ebp-6H], 16383                    ; 10022B83 _ 66: 81. 7D, FA, 3FFF
        jc      ?_4724                                  ; 10022B89 _ 72, 10
        lea     eax, [ebp-1CH]                          ; 10022B8B _ 8D. 45, E4
        inc     esi                                     ; 10022B8E _ 46
        push    eax                                     ; 10022B8F _ 50
        lea     eax, [ebp-10H]                          ; 10022B90 _ 8D. 45, F0
        push    eax                                     ; 10022B93 _ 50
        call    ?_4781                                  ; 10022B94 _ E8, 00000458
        pop     ecx                                     ; 10022B99 _ 59
        pop     ecx                                     ; 10022B9A _ 59
?_4724: test    byte [ebp+18H], 01H                     ; 10022B9B _ F6. 45, 18, 01
        mov     word [ebx], si                          ; 10022B9F _ 66: 89. 33
        jz      ?_4725                                  ; 10022BA2 _ 74, 11
        mov     edi, dword [ebp+14H]                    ; 10022BA4 _ 8B. 7D, 14
        movsx   eax, si                                 ; 10022BA7 _ 0F BF. C6
        add     edi, eax                                ; 10022BAA _ 03. F8
        test    edi, edi                                ; 10022BAC _ 85. FF
        jg      ?_4726                                  ; 10022BAE _ 7F, 08
        jmp     ?_4714                                  ; 10022BB0 _ E9, FFFFFEF1

?_4725: mov     edi, dword [ebp+14H]                    ; 10022BB5 _ 8B. 7D, 14
?_4726: cmp     edi, 21                                 ; 10022BB8 _ 83. FF, 15
        jle     ?_4727                                  ; 10022BBB _ 7E, 03
        push    21                                      ; 10022BBD _ 6A, 15
        pop     edi                                     ; 10022BBF _ 5F
?_4727: movzx   esi, word [ebp-6H]                      ; 10022BC0 _ 0F B7. 75, FA
        sub     esi, 16382                              ; 10022BC4 _ 81. EE, 00003FFE
        and     word [ebp-6H], 00H                      ; 10022BCA _ 66: 83. 65, FA, 00
        mov     dword [ebp+1CH], 8                      ; 10022BCF _ C7. 45, 1C, 00000008
?_4728: lea     eax, [ebp-10H]                          ; 10022BD6 _ 8D. 45, F0
        push    eax                                     ; 10022BD9 _ 50
        call    ?_4618                                  ; 10022BDA _ E8, FFFFF85D
        dec     dword [ebp+1CH]                         ; 10022BDF _ FF. 4D, 1C
        pop     ecx                                     ; 10022BE2 _ 59
        jnz     ?_4728                                  ; 10022BE3 _ 75, F1
        test    esi, esi                                ; 10022BE5 _ 85. F6
        jge     ?_4730                                  ; 10022BE7 _ 7D, 17
        neg     esi                                     ; 10022BE9 _ F7. DE
        and     esi, 0FFH                               ; 10022BEB _ 81. E6, 000000FF
        jle     ?_4730                                  ; 10022BF1 _ 7E, 0D
?_4729: lea     eax, [ebp-10H]                          ; 10022BF3 _ 8D. 45, F0
        push    eax                                     ; 10022BF6 _ 50
        call    ?_4619                                  ; 10022BF7 _ E8, FFFFF86E
        dec     esi                                     ; 10022BFC _ 4E
        pop     ecx                                     ; 10022BFD _ 59
        jnz     ?_4729                                  ; 10022BFE _ 75, F3
?_4730: lea     ecx, [edi+1H]                           ; 10022C00 _ 8D. 4F, 01
        lea     eax, [ebx+4H]                           ; 10022C03 _ 8D. 43, 04
        test    ecx, ecx                                ; 10022C06 _ 85. C9
        mov     dword [ebp+1CH], eax                    ; 10022C08 _ 89. 45, 1C
        jle     ?_4732                                  ; 10022C0B _ 7E, 50
        mov     dword [ebp+14H], ecx                    ; 10022C0D _ 89. 4D, 14
?_4731: lea     esi, [ebp-10H]                          ; 10022C10 _ 8D. 75, F0
        lea     edi, [ebp+8H]                           ; 10022C13 _ 8D. 7D, 08
        movsd                                           ; 10022C16 _ A5
        movsd                                           ; 10022C17 _ A5
        lea     eax, [ebp-10H]                          ; 10022C18 _ 8D. 45, F0
        push    eax                                     ; 10022C1B _ 50
        movsd                                           ; 10022C1C _ A5
        call    ?_4618                                  ; 10022C1D _ E8, FFFFF81A
        lea     eax, [ebp-10H]                          ; 10022C22 _ 8D. 45, F0
        push    eax                                     ; 10022C25 _ 50
        call    ?_4618                                  ; 10022C26 _ E8, FFFFF811
        lea     eax, [ebp+8H]                           ; 10022C2B _ 8D. 45, 08
        push    eax                                     ; 10022C2E _ 50
        lea     eax, [ebp-10H]                          ; 10022C2F _ 8D. 45, F0
        push    eax                                     ; 10022C32 _ 50
        call    ?_4615                                  ; 10022C33 _ E8, FFFFF7A6
        lea     eax, [ebp-10H]                          ; 10022C38 _ 8D. 45, F0
        push    eax                                     ; 10022C3B _ 50
        call    ?_4618                                  ; 10022C3C _ E8, FFFFF7FB
        mov     al, byte [ebp-5H]                       ; 10022C41 _ 8A. 45, FB
        mov     ecx, dword [ebp+1CH]                    ; 10022C44 _ 8B. 4D, 1C
        and     byte [ebp-5H], 00H                      ; 10022C47 _ 80. 65, FB, 00
        add     esp, 20                                 ; 10022C4B _ 83. C4, 14
        add     al, 48                                  ; 10022C4E _ 04, 30
        inc     dword [ebp+1CH]                         ; 10022C50 _ FF. 45, 1C
        dec     dword [ebp+14H]                         ; 10022C53 _ FF. 4D, 14
        mov     byte [ecx], al                          ; 10022C56 _ 88. 01
        jnz     ?_4731                                  ; 10022C58 _ 75, B6
        mov     eax, dword [ebp+1CH]                    ; 10022C5A _ 8B. 45, 1C
?_4732: mov     cl, byte [eax-1H]                       ; 10022C5D _ 8A. 48, FF
        dec     eax                                     ; 10022C60 _ 48
        dec     eax                                     ; 10022C61 _ 48
        cmp     cl, 53                                  ; 10022C62 _ 80. F9, 35
        lea     ecx, [ebx+4H]                           ; 10022C65 _ 8D. 4B, 04
        jl      ?_4740                                  ; 10022C68 _ 7C, 30
?_4733: cmp     eax, ecx                                ; 10022C6A _ 3B. C1
        jc      ?_4735                                  ; 10022C6C _ 72, 0F
        cmp     byte [eax], 57                          ; 10022C6E _ 80. 38, 39
        jnz     ?_4734                                  ; 10022C71 _ 75, 06
        mov     byte [eax], 48                          ; 10022C73 _ C6. 00, 30
        dec     eax                                     ; 10022C76 _ 48
        jmp     ?_4733                                  ; 10022C77 _ EB, F1

?_4734: cmp     eax, ecx                                ; 10022C79 _ 3B. C1
        jnc     ?_4736                                  ; 10022C7B _ 73, 04
?_4735: inc     eax                                     ; 10022C7D _ 40
        inc     word [ebx]                              ; 10022C7E _ 66: FF. 03
?_4736: inc     byte [eax]                              ; 10022C81 _ FE. 00
?_4737: sub     al, bl                                  ; 10022C83 _ 2A. C3
        sub     al, 3                                   ; 10022C85 _ 2C, 03
        mov     byte [ebx+3H], al                       ; 10022C87 _ 88. 43, 03
        movsx   eax, al                                 ; 10022C8A _ 0F BE. C0
        and     byte [eax+ebx+4H], 00H                  ; 10022C8D _ 80. 64 18, 04, 00
?_4738: mov     eax, dword [ebp-4H]                     ; 10022C92 _ 8B. 45, FC
?_4739: pop     edi                                     ; 10022C95 _ 5F
        pop     esi                                     ; 10022C96 _ 5E
        pop     ebx                                     ; 10022C97 _ 5B
        leave                                           ; 10022C98 _ C9
        ret                                             ; 10022C99 _ C3

?_4740: cmp     eax, ecx                                ; 10022C9A _ 3B. C1
        jc      ?_4742                                  ; 10022C9C _ 72, 0C
        cmp     byte [eax], 48                          ; 10022C9E _ 80. 38, 30
        jnz     ?_4741                                  ; 10022CA1 _ 75, 03
        dec     eax                                     ; 10022CA3 _ 48
        jmp     ?_4740                                  ; 10022CA4 _ EB, F4

?_4741: cmp     eax, ecx                                ; 10022CA6 _ 3B. C1
        jnc     ?_4737                                  ; 10022CA8 _ 73, D9
?_4742: and     word [ebx], 00H                         ; 10022CAA _ 66: 83. 23, 00
        mov     byte [ebx+2H], 32                       ; 10022CAE _ C6. 43, 02, 20
        mov     byte [ebx+3H], 1                        ; 10022CB2 _ C6. 43, 03, 01
        mov     byte [ecx], 48                          ; 10022CB6 _ C6. 01, 30
?_4743: and     byte [ebx+5H], 00H                      ; 10022CB9 _ 80. 63, 05, 00
        push    1                                       ; 10022CBD _ 6A, 01
        pop     eax                                     ; 10022CBF _ 58
        jmp     ?_4739                                  ; 10022CC0 _ EB, D3

        int 3    ; breakpoint or filler                 ; 10022CC2 _ CC
        int 3    ; breakpoint or filler                 ; 10022CC3 _ CC
        int 3    ; breakpoint or filler                 ; 10022CC4 _ CC
        int 3    ; breakpoint or filler                 ; 10022CC5 _ CC
        int 3    ; breakpoint or filler                 ; 10022CC6 _ CC
        int 3    ; breakpoint or filler                 ; 10022CC7 _ CC
        int 3    ; breakpoint or filler                 ; 10022CC8 _ CC
        int 3    ; breakpoint or filler                 ; 10022CC9 _ CC
        int 3    ; breakpoint or filler                 ; 10022CCA _ CC
        int 3    ; breakpoint or filler                 ; 10022CCB _ CC
        int 3    ; breakpoint or filler                 ; 10022CCC _ CC
        int 3    ; breakpoint or filler                 ; 10022CCD _ CC
        int 3    ; breakpoint or filler                 ; 10022CCE _ CC
        int 3    ; breakpoint or filler                 ; 10022CCF _ CC
        push    ebp                                     ; 10022CD0 _ 55
        mov     ebp, esp                                ; 10022CD1 _ 8B. EC
        push    edi                                     ; 10022CD3 _ 57
        push    esi                                     ; 10022CD4 _ 56
        push    ebx                                     ; 10022CD5 _ 53
        mov     esi, dword [ebp+0CH]                    ; 10022CD6 _ 8B. 75, 0C
        mov     edi, dword [ebp+8H]                     ; 10022CD9 _ 8B. 7D, 08
        lea     eax, [?_5588]                           ; 10022CDC _ 8D. 05, 100355B4(d)
        cmp     dword [eax+8H], 0                       ; 10022CE2 _ 83. 78, 08, 00
        jnz     ?_4746                                  ; 10022CE6 _ 75, 3B
        mov     al, -1                                  ; 10022CE8 _ B0, FF
; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   4
?_4744: or      al, al                                  ; 10022CEC _ 0A. C0
        jz      ?_4745                                  ; 10022CEE _ 74, 2E
        mov     al, byte [esi]                          ; 10022CF0 _ 8A. 06
        inc     esi                                     ; 10022CF2 _ 46
        mov     ah, byte [edi]                          ; 10022CF3 _ 8A. 27
        inc     edi                                     ; 10022CF5 _ 47
        cmp     ah, al                                  ; 10022CF6 _ 38. C4
        jz      ?_4744                                  ; 10022CF8 _ 74, F2
        sub     al, 65                                  ; 10022CFA _ 2C, 41
        cmp     al, 26                                  ; 10022CFC _ 3C, 1A
        sbb     cl, cl                                  ; 10022CFE _ 1A. C9
        and     cl, 20H                                 ; 10022D00 _ 80. E1, 20
        add     al, cl                                  ; 10022D03 _ 02. C1
        add     al, 65                                  ; 10022D05 _ 04, 41
        xchg    al, ah                                  ; 10022D07 _ 86. E0
        sub     al, 65                                  ; 10022D09 _ 2C, 41
        cmp     al, 26                                  ; 10022D0B _ 3C, 1A
        sbb     cl, cl                                  ; 10022D0D _ 1A. C9
        and     cl, 20H                                 ; 10022D0F _ 80. E1, 20
        add     al, cl                                  ; 10022D12 _ 02. C1
        add     al, 65                                  ; 10022D14 _ 04, 41
        cmp     al, ah                                  ; 10022D16 _ 38. E0
        jz      ?_4744                                  ; 10022D18 _ 74, D2
        sbb     al, al                                  ; 10022D1A _ 1A. C0
        sbb     al, -1                                  ; 10022D1C _ 1C, FF
?_4745: movsx   eax, al                                 ; 10022D1E _ 0F BE. C0
        jmp     ?_4753                                  ; 10022D21 _ EB, 78

?_4746: lock inc dword [?_5799]                         ; 10022D23 _ F0: FF. 05, 1176642C(d)
        cmp     dword [?_5798], 0                       ; 10022D2A _ 83. 3D, 11766428(d), 00
        jg      ?_4747                                  ; 10022D31 _ 7F, 04
        push    0                                       ; 10022D33 _ 6A, 00
        jmp     ?_4748                                  ; 10022D35 _ EB, 15

?_4747: lock dec dword [?_5799]                         ; 10022D37 _ F0: FF. 0D, 1176642C(d)
        push    19                                      ; 10022D3E _ 6A, 13
        call    ?_3610                                  ; 10022D40 _ E8, FFFFA2F1
        mov     dword [esp], 1                          ; 10022D45 _ C7. 04 24, 00000001
?_4748: mov     eax, 255                                ; 10022D4C _ B8, 000000FF
        xor     ebx, ebx                                ; 10022D51 _ 33. DB
        nop                                             ; 10022D53 _ 90
?_4749: or      al, al                                  ; 10022D54 _ 0A. C0
        jz      ?_4750                                  ; 10022D56 _ 74, 27
        mov     al, byte [esi]                          ; 10022D58 _ 8A. 06
        inc     esi                                     ; 10022D5A _ 46
        mov     bl, byte [edi]                          ; 10022D5B _ 8A. 1F
        inc     edi                                     ; 10022D5D _ 47
        cmp     al, bl                                  ; 10022D5E _ 38. D8
        jz      ?_4749                                  ; 10022D60 _ 74, F2
        push    eax                                     ; 10022D62 _ 50
        push    ebx                                     ; 10022D63 _ 53
        call    ?_4432                                  ; 10022D64 _ E8, FFFFE704
        mov     ebx, eax                                ; 10022D69 _ 8B. D8
        add     esp, 4                                  ; 10022D6B _ 83. C4, 04
        call    ?_4432                                  ; 10022D6E _ E8, FFFFE6FA
        add     esp, 4                                  ; 10022D73 _ 83. C4, 04
        cmp     bl, al                                  ; 10022D76 _ 38. C3
        jz      ?_4749                                  ; 10022D78 _ 74, DA
        sbb     eax, eax                                ; 10022D7A _ 1B. C0
        sbb     eax, -1                                 ; 10022D7C _ 83. D8, FF
?_4750: mov     ebx, eax                                ; 10022D7F _ 8B. D8
        pop     eax                                     ; 10022D81 _ 58
        or      eax, eax                                ; 10022D82 _ 0B. C0
        jnz     ?_4751                                  ; 10022D84 _ 75, 09
        lock dec dword [?_5799]                         ; 10022D86 _ F0: FF. 0D, 1176642C(d)
        jmp     ?_4752                                  ; 10022D8D _ EB, 0A

?_4751: push    19                                      ; 10022D8F _ 6A, 13
        call    ?_3615                                  ; 10022D91 _ E8, FFFFA301
        add     esp, 4                                  ; 10022D96 _ 83. C4, 04
?_4752: mov     eax, ebx                                ; 10022D99 _ 8B. C3
?_4753: pop     ebx                                     ; 10022D9B _ 5B
        pop     esi                                     ; 10022D9C _ 5E
        pop     edi                                     ; 10022D9D _ 5F
        leave                                           ; 10022D9E _ C9
        ret                                             ; 10022D9F _ C3

        push    ebp                                     ; 10022DA0 _ 55
        mov     ebp, esp                                ; 10022DA1 _ 8B. EC
        push    edi                                     ; 10022DA3 _ 57
        push    esi                                     ; 10022DA4 _ 56
        push    ebx                                     ; 10022DA5 _ 53
        mov     ecx, dword [ebp+10H]                    ; 10022DA6 _ 8B. 4D, 10
        or      ecx, ecx                                ; 10022DA9 _ 0B. C9
        je      ?_4767                                  ; 10022DAB _ 0F 84, 000000E9
        mov     esi, dword [ebp+8H]                     ; 10022DB1 _ 8B. 75, 08
        mov     edi, dword [ebp+0CH]                    ; 10022DB4 _ 8B. 7D, 0C
        lea     eax, [?_5588]                           ; 10022DB7 _ 8D. 05, 100355B4(d)
        cmp     dword [eax+8H], 0                       ; 10022DBD _ 83. 78, 08, 00
        jnz     ?_4759                                  ; 10022DC1 _ 75, 4E
        mov     bh, 65                                  ; 10022DC3 _ B7, 41
        mov     bl, 90                                  ; 10022DC5 _ B3, 5A
        mov     dh, 32                                  ; 10022DC7 _ B6, 20
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4
?_4754: mov     ah, byte [esi]                          ; 10022DCC _ 8A. 26
        or      ah, ah                                  ; 10022DCE _ 0A. E4
        mov     al, byte [edi]                          ; 10022DD0 _ 8A. 07
        jz      ?_4757                                  ; 10022DD2 _ 74, 21
        or      al, al                                  ; 10022DD4 _ 0A. C0
        jz      ?_4757                                  ; 10022DD6 _ 74, 1D
        inc     esi                                     ; 10022DD8 _ 46
        inc     edi                                     ; 10022DD9 _ 47
        cmp     ah, bh                                  ; 10022DDA _ 38. FC
        jc      ?_4755                                  ; 10022DDC _ 72, 06
        cmp     ah, bl                                  ; 10022DDE _ 38. DC
        ja      ?_4755                                  ; 10022DE0 _ 77, 02
        add     ah, dh                                  ; 10022DE2 _ 02. E6
?_4755: cmp     al, bh                                  ; 10022DE4 _ 38. F8
        jc      ?_4756                                  ; 10022DE6 _ 72, 06
        cmp     al, bl                                  ; 10022DE8 _ 38. D8
        ja      ?_4756                                  ; 10022DEA _ 77, 02
        add     al, dh                                  ; 10022DEC _ 02. C6
?_4756: cmp     ah, al                                  ; 10022DEE _ 38. C4
        jnz     ?_4758                                  ; 10022DF0 _ 75, 0D
        dec     ecx                                     ; 10022DF2 _ 49
        jnz     ?_4754                                  ; 10022DF3 _ 75, D7
?_4757: xor     ecx, ecx                                ; 10022DF5 _ 33. C9
        cmp     ah, al                                  ; 10022DF7 _ 38. C4
        je      ?_4767                                  ; 10022DF9 _ 0F 84, 0000009B
?_4758: mov     ecx, 4294967295                         ; 10022DFF _ B9, FFFFFFFF
        jc      ?_4767                                  ; 10022E04 _ 0F 82, 00000090
        neg     ecx                                     ; 10022E0A _ F7. D9
        jmp     ?_4767                                  ; 10022E0C _ E9, 00000089

?_4759: lock inc dword [?_5799]                         ; 10022E11 _ F0: FF. 05, 1176642C(d)
        cmp     dword [?_5798], 0                       ; 10022E18 _ 83. 3D, 11766428(d), 00
        jg      ?_4760                                  ; 10022E1F _ 7F, 04
        push    0                                       ; 10022E21 _ 6A, 00
        jmp     ?_4761                                  ; 10022E23 _ EB, 19

?_4760: lock dec dword [?_5799]                         ; 10022E25 _ F0: FF. 0D, 1176642C(d)
        mov     ebx, ecx                                ; 10022E2C _ 8B. D9
        push    19                                      ; 10022E2E _ 6A, 13
        call    ?_3610                                  ; 10022E30 _ E8, FFFFA201
        mov     dword [esp], 1                          ; 10022E35 _ C7. 04 24, 00000001
        mov     ecx, ebx                                ; 10022E3C _ 8B. CB
?_4761: xor     eax, eax                                ; 10022E3E _ 33. C0
        xor     ebx, ebx                                ; 10022E40 _ 33. DB
; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   4
?_4762: mov     al, byte [esi]                          ; 10022E44 _ 8A. 06
        or      eax, eax                                ; 10022E46 _ 0B. C0
        mov     bl, byte [edi]                          ; 10022E48 _ 8A. 1F
        jz      ?_4763                                  ; 10022E4A _ 74, 23
        or      ebx, ebx                                ; 10022E4C _ 0B. DB
        jz      ?_4763                                  ; 10022E4E _ 74, 1F
        inc     esi                                     ; 10022E50 _ 46
        inc     edi                                     ; 10022E51 _ 47
        push    ecx                                     ; 10022E52 _ 51
        push    eax                                     ; 10022E53 _ 50
        push    ebx                                     ; 10022E54 _ 53
        call    ?_4432                                  ; 10022E55 _ E8, FFFFE613
        mov     ebx, eax                                ; 10022E5A _ 8B. D8
        add     esp, 4                                  ; 10022E5C _ 83. C4, 04
        call    ?_4432                                  ; 10022E5F _ E8, FFFFE609
        add     esp, 4                                  ; 10022E64 _ 83. C4, 04
        pop     ecx                                     ; 10022E67 _ 59
        cmp     eax, ebx                                ; 10022E68 _ 3B. C3
        jnz     ?_4764                                  ; 10022E6A _ 75, 09
        dec     ecx                                     ; 10022E6C _ 49
        jnz     ?_4762                                  ; 10022E6D _ 75, D5
?_4763: xor     ecx, ecx                                ; 10022E6F _ 33. C9
        cmp     eax, ebx                                ; 10022E71 _ 3B. C3
        jz      ?_4765                                  ; 10022E73 _ 74, 09
?_4764: mov     ecx, 4294967295                         ; 10022E75 _ B9, FFFFFFFF
        jc      ?_4765                                  ; 10022E7A _ 72, 02
        neg     ecx                                     ; 10022E7C _ F7. D9
?_4765: pop     eax                                     ; 10022E7E _ 58
        or      eax, eax                                ; 10022E7F _ 0B. C0
        jnz     ?_4766                                  ; 10022E81 _ 75, 09
        lock dec dword [?_5799]                         ; 10022E83 _ F0: FF. 0D, 1176642C(d)
        jmp     ?_4767                                  ; 10022E8A _ EB, 0E

?_4766: mov     ebx, ecx                                ; 10022E8C _ 8B. D9
        push    19                                      ; 10022E8E _ 6A, 13
        call    ?_3615                                  ; 10022E90 _ E8, FFFFA202
        add     esp, 4                                  ; 10022E95 _ 83. C4, 04
        mov     ecx, ebx                                ; 10022E98 _ 8B. CB
?_4767: mov     eax, ecx                                ; 10022E9A _ 8B. C1
        pop     ebx                                     ; 10022E9C _ 5B
        pop     esi                                     ; 10022E9D _ 5E
        pop     edi                                     ; 10022E9E _ 5F
        leave                                           ; 10022E9F _ C9
        ret                                             ; 10022EA0 _ C3

