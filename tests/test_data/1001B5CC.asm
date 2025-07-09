; ---- 1001B5CC ----
?_3300: ; Local function
        push    ebp                                     ; 1001B5CC _ 55
        mov     ebp, esp                                ; 1001B5CD _ 8B. EC
        push    -1                                      ; 1001B5CF _ 6A, FF
        push    ?_4955                                  ; 1001B5D1 _ 68, 10025FF0(d)
        push    ?_3881                                  ; 1001B5D6 _ 68, 1001E7DC(d)
; Note: Absolute memory address without relocation
        mov     eax, dword [fs:0H]                      ; 1001B5DB _ 64: A1, 00000000
        push    eax                                     ; 1001B5E1 _ 50
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], esp                      ; 1001B5E2 _ 64: 89. 25, 00000000
        sub     esp, 40                                 ; 1001B5E9 _ 83. EC, 28
        push    ebx                                     ; 1001B5EC _ 53
        push    esi                                     ; 1001B5ED _ 56
        push    edi                                     ; 1001B5EE _ 57
        mov     ebx, dword [ebp+8H]                     ; 1001B5EF _ 8B. 5D, 08
        xor     edi, edi                                ; 1001B5F2 _ 33. FF
        cmp     ebx, edi                                ; 1001B5F4 _ 3B. DF
        jnz     ?_3301                                  ; 1001B5F6 _ 75, 0E
        push    dword [ebp+0CH]                         ; 1001B5F8 _ FF. 75, 0C
        call    ?_3109                                  ; 1001B5FB _ E8, FFFFF1F7
        pop     ecx                                     ; 1001B600 _ 59
        jmp     ?_3332                                  ; 1001B601 _ E9, 000002E6

?_3301: mov     esi, dword [ebp+0CH]                    ; 1001B606 _ 8B. 75, 0C
        cmp     esi, edi                                ; 1001B609 _ 3B. F7
        jnz     ?_3302                                  ; 1001B60B _ 75, 0C
        push    ebx                                     ; 1001B60D _ 53
        call    ?_3158                                  ; 1001B60E _ E8, FFFFF56E
        pop     ecx                                     ; 1001B613 _ 59
        jmp     ?_3331                                  ; 1001B614 _ E9, 000002D1

?_3302: mov     eax, dword [?_5808]                     ; 1001B619 _ A1, 11766450(d)
        cmp     eax, 3                                  ; 1001B61E _ 83. F8, 03
        jne     ?_3314                                  ; 1001B621 _ 0F 85, 00000139
?_3303: mov     dword [ebp-24H], edi                    ; 1001B627 _ 89. 7D, DC
        cmp     esi, -32                                ; 1001B62A _ 83. FE, E0
        ja      ?_3311                                  ; 1001B62D _ 0F 87, 000000F1
        push    9                                       ; 1001B633 _ 6A, 09
        call    ?_3610                                  ; 1001B635 _ E8, 000019FC
        pop     ecx                                     ; 1001B63A _ 59
        mov     dword [ebp-4H], edi                     ; 1001B63B _ 89. 7D, FC
        push    ebx                                     ; 1001B63E _ 53
        call    ?_3669                                  ; 1001B63F _ E8, 00001ED1
        pop     ecx                                     ; 1001B644 _ 59
        mov     dword [ebp-28H], eax                    ; 1001B645 _ 89. 45, D8
        cmp     eax, edi                                ; 1001B648 _ 3B. C7
        je      ?_3309                                  ; 1001B64A _ 0F 84, 000000A4
        cmp     esi, dword [?_5806]                     ; 1001B650 _ 3B. 35, 11766448(d)
        ja      ?_3306                                  ; 1001B656 _ 77, 4C
        push    esi                                     ; 1001B658 _ 56
        push    ebx                                     ; 1001B659 _ 53
        push    eax                                     ; 1001B65A _ 50
        call    ?_3747                                  ; 1001B65B _ E8, 000026BE
        add     esp, 12                                 ; 1001B660 _ 83. C4, 0C
        test    eax, eax                                ; 1001B663 _ 85. C0
        jz      ?_3304                                  ; 1001B665 _ 74, 05
        mov     dword [ebp-24H], ebx                    ; 1001B667 _ 89. 5D, DC
        jmp     ?_3306                                  ; 1001B66A _ EB, 38

?_3304: push    esi                                     ; 1001B66C _ 56
        call    ?_3697                                  ; 1001B66D _ E8, 000021F7
        pop     ecx                                     ; 1001B672 _ 59
        mov     dword [ebp-24H], eax                    ; 1001B673 _ 89. 45, DC
        cmp     eax, edi                                ; 1001B676 _ 3B. C7
        jz      ?_3306                                  ; 1001B678 _ 74, 2A
        mov     eax, dword [ebx-4H]                     ; 1001B67A _ 8B. 43, FC
        dec     eax                                     ; 1001B67D _ 48
        mov     dword [ebp-20H], eax                    ; 1001B67E _ 89. 45, E0
        cmp     eax, esi                                ; 1001B681 _ 3B. C6
        jc      ?_3305                                  ; 1001B683 _ 72, 02
        mov     eax, esi                                ; 1001B685 _ 8B. C6
?_3305: push    eax                                     ; 1001B687 _ 50
        push    ebx                                     ; 1001B688 _ 53
        push    dword [ebp-24H]                         ; 1001B689 _ FF. 75, DC
        call    ?_3909                                  ; 1001B68C _ E8, 0000341F
        push    ebx                                     ; 1001B691 _ 53
        call    ?_3669                                  ; 1001B692 _ E8, 00001E7E
        mov     dword [ebp-28H], eax                    ; 1001B697 _ 89. 45, D8
        push    ebx                                     ; 1001B69A _ 53
        push    eax                                     ; 1001B69B _ 50
        call    ?_3673                                  ; 1001B69C _ E8, 00001E9F
        add     esp, 24                                 ; 1001B6A1 _ 83. C4, 18
?_3306: cmp     dword [ebp-24H], edi                    ; 1001B6A4 _ 39. 7D, DC
        jnz     ?_3309                                  ; 1001B6A7 _ 75, 4B
        cmp     esi, edi                                ; 1001B6A9 _ 3B. F7
        jnz     ?_3307                                  ; 1001B6AB _ 75, 06
        push    1                                       ; 1001B6AD _ 6A, 01
        pop     esi                                     ; 1001B6AF _ 5E
        mov     dword [ebp+0CH], esi                    ; 1001B6B0 _ 89. 75, 0C
?_3307: add     esi, 15                                 ; 1001B6B3 _ 83. C6, 0F
        and     esi, 0FFFFFFF0H                         ; 1001B6B6 _ 83. E6, F0
        mov     dword [ebp+0CH], esi                    ; 1001B6B9 _ 89. 75, 0C
        push    esi                                     ; 1001B6BC _ 56
        push    edi                                     ; 1001B6BD _ 57
        push    dword [?_5807]                          ; 1001B6BE _ FF. 35, 1176644C(d)
        call    near [imp_HeapAlloc]                    ; 1001B6C4 _ FF. 15, 100240CC(d)
        mov     dword [ebp-24H], eax                    ; 1001B6CA _ 89. 45, DC
        cmp     eax, edi                                ; 1001B6CD _ 3B. C7
        jz      ?_3309                                  ; 1001B6CF _ 74, 23
        mov     eax, dword [ebx-4H]                     ; 1001B6D1 _ 8B. 43, FC
        dec     eax                                     ; 1001B6D4 _ 48
        mov     dword [ebp-20H], eax                    ; 1001B6D5 _ 89. 45, E0
        cmp     eax, esi                                ; 1001B6D8 _ 3B. C6
        jc      ?_3308                                  ; 1001B6DA _ 72, 02
        mov     eax, esi                                ; 1001B6DC _ 8B. C6
?_3308: push    eax                                     ; 1001B6DE _ 50
        push    ebx                                     ; 1001B6DF _ 53
        push    dword [ebp-24H]                         ; 1001B6E0 _ FF. 75, DC
        call    ?_3909                                  ; 1001B6E3 _ E8, 000033C8
        push    ebx                                     ; 1001B6E8 _ 53
        push    dword [ebp-28H]                         ; 1001B6E9 _ FF. 75, D8
        call    ?_3673                                  ; 1001B6EC _ E8, 00001E4F
        add     esp, 20                                 ; 1001B6F1 _ 83. C4, 14
?_3309: or      dword [ebp-4H], 0FFFFFFFFH              ; 1001B6F4 _ 83. 4D, FC, FF
        call    ?_3313                                  ; 1001B6F8 _ E8, 0000005A
        cmp     dword [ebp-28H], edi                    ; 1001B6FD _ 39. 7D, D8
        jnz     ?_3311                                  ; 1001B700 _ 75, 22
        cmp     esi, edi                                ; 1001B702 _ 3B. F7
        jnz     ?_3310                                  ; 1001B704 _ 75, 03
        push    1                                       ; 1001B706 _ 6A, 01
        pop     esi                                     ; 1001B708 _ 5E
?_3310: add     esi, 15                                 ; 1001B709 _ 83. C6, 0F
        and     esi, 0FFFFFFF0H                         ; 1001B70C _ 83. E6, F0
        mov     dword [ebp+0CH], esi                    ; 1001B70F _ 89. 75, 0C
        push    esi                                     ; 1001B712 _ 56
        push    ebx                                     ; 1001B713 _ 53
        push    edi                                     ; 1001B714 _ 57
        push    dword [?_5807]                          ; 1001B715 _ FF. 35, 1176644C(d)
        call    near [imp_HeapReAlloc]                  ; 1001B71B _ FF. 15, 100240E0(d)
        mov     dword [ebp-24H], eax                    ; 1001B721 _ 89. 45, DC
?_3311: mov     eax, dword [ebp-24H]                    ; 1001B724 _ 8B. 45, DC
        cmp     eax, edi                                ; 1001B727 _ 3B. C7
        jne     ?_3332                                  ; 1001B729 _ 0F 85, 000001BD
        cmp     dword [?_5585], edi                     ; 1001B72F _ 39. 3D, 1003559C(d)
        je      ?_3332                                  ; 1001B735 _ 0F 84, 000001B1
        push    esi                                     ; 1001B73B _ 56
        call    ?_3635                                  ; 1001B73C _ E8, 00001AF7
        pop     ecx                                     ; 1001B741 _ 59
        test    eax, eax                                ; 1001B742 _ 85. C0
        jne     ?_3303                                  ; 1001B744 _ 0F 85, FFFFFEDD
        jmp     ?_3331                                  ; 1001B74A _ E9, 0000019B

?_3312: mov     esi, dword [ebp+0CH]                    ; 1001B74F _ 8B. 75, 0C
        mov     ebx, dword [ebp+8H]                     ; 1001B752 _ 8B. 5D, 08
        xor     edi, edi                                ; 1001B755 _ 33. FF
?_3313: push    9                                       ; 1001B757 _ 6A, 09
        call    ?_3615                                  ; 1001B759 _ E8, 00001939
        pop     ecx                                     ; 1001B75E _ 59
        ret                                             ; 1001B75F _ C3

?_3314: cmp     eax, 2                                  ; 1001B760 _ 83. F8, 02
        jne     ?_3328                                  ; 1001B763 _ 0F 85, 00000147
        cmp     esi, -32                                ; 1001B769 _ 83. FE, E0
        ja      ?_3317                                  ; 1001B76C _ 77, 12
        cmp     esi, edi                                ; 1001B76E _ 3B. F7
        jbe     ?_3315                                  ; 1001B770 _ 76, 08
        add     esi, 15                                 ; 1001B772 _ 83. C6, 0F
        and     esi, 0FFFFFFF0H                         ; 1001B775 _ 83. E6, F0
        jmp     ?_3316                                  ; 1001B778 _ EB, 03

?_3315: push    16                                      ; 1001B77A _ 6A, 10
        pop     esi                                     ; 1001B77C _ 5E
?_3316: mov     dword [ebp+0CH], esi                    ; 1001B77D _ 89. 75, 0C
?_3317: mov     dword [ebp-24H], edi                    ; 1001B780 _ 89. 7D, DC
        cmp     esi, -32                                ; 1001B783 _ 83. FE, E0
        ja      ?_3325                                  ; 1001B786 _ 0F 87, 000000F3
        push    9                                       ; 1001B78C _ 6A, 09
        call    ?_3610                                  ; 1001B78E _ E8, 000018A3
        pop     ecx                                     ; 1001B793 _ 59
        mov     dword [ebp-4H], 1                       ; 1001B794 _ C7. 45, FC, 00000001
        lea     eax, [ebp-2CH]                          ; 1001B79B _ 8D. 45, D4
        push    eax                                     ; 1001B79E _ 50
        lea     eax, [ebp-38H]                          ; 1001B79F _ 8D. 45, C8
        push    eax                                     ; 1001B7A2 _ 50
        push    ebx                                     ; 1001B7A3 _ 53
        call    ?_3801                                  ; 1001B7A4 _ E8, 00002AC7
        add     esp, 12                                 ; 1001B7A9 _ 83. C4, 0C
        mov     edi, eax                                ; 1001B7AC _ 8B. F8
        mov     dword [ebp-30H], edi                    ; 1001B7AE _ 89. 7D, D0
        test    edi, edi                                ; 1001B7B1 _ 85. FF
        je      ?_3323                                  ; 1001B7B3 _ 0F 84, 000000AA
        cmp     esi, dword [?_5467]                     ; 1001B7B9 _ 3B. 35, 10033B9C(d)
        jnc     ?_3321                                  ; 1001B7BF _ 73, 5C
        mov     ebx, esi                                ; 1001B7C1 _ 8B. DE
        shr     ebx, 4                                  ; 1001B7C3 _ C1. EB, 04
        push    ebx                                     ; 1001B7C6 _ 53
        push    edi                                     ; 1001B7C7 _ 57
        push    dword [ebp-2CH]                         ; 1001B7C8 _ FF. 75, D4
        push    dword [ebp-38H]                         ; 1001B7CB _ FF. 75, C8
        call    ?_3859                                  ; 1001B7CE _ E8, 00002E65
        add     esp, 16                                 ; 1001B7D3 _ 83. C4, 10
        test    eax, eax                                ; 1001B7D6 _ 85. C0
        jz      ?_3318                                  ; 1001B7D8 _ 74, 08
        mov     eax, dword [ebp+8H]                     ; 1001B7DA _ 8B. 45, 08
        mov     dword [ebp-24H], eax                    ; 1001B7DD _ 89. 45, DC
        jmp     ?_3320                                  ; 1001B7E0 _ EB, 38

?_3318: push    ebx                                     ; 1001B7E2 _ 53
        call    ?_3808                                  ; 1001B7E3 _ E8, 00002B24
        pop     ecx                                     ; 1001B7E8 _ 59
        mov     dword [ebp-24H], eax                    ; 1001B7E9 _ 89. 45, DC
        test    eax, eax                                ; 1001B7EC _ 85. C0
        jz      ?_3320                                  ; 1001B7EE _ 74, 2A
        movzx   eax, byte [edi]                         ; 1001B7F0 _ 0F B6. 07
        shl     eax, 4                                  ; 1001B7F3 _ C1. E0, 04
        mov     dword [ebp-34H], eax                    ; 1001B7F6 _ 89. 45, CC
        cmp     eax, esi                                ; 1001B7F9 _ 3B. C6
        jc      ?_3319                                  ; 1001B7FB _ 72, 02
        mov     eax, esi                                ; 1001B7FD _ 8B. C6
?_3319: push    eax                                     ; 1001B7FF _ 50
        push    dword [ebp+8H]                          ; 1001B800 _ FF. 75, 08
        push    dword [ebp-24H]                         ; 1001B803 _ FF. 75, DC
        call    ?_3909                                  ; 1001B806 _ E8, 000032A5
        push    edi                                     ; 1001B80B _ 57
        push    dword [ebp-2CH]                         ; 1001B80C _ FF. 75, D4
        push    dword [ebp-38H]                         ; 1001B80F _ FF. 75, C8
        call    ?_3806                                  ; 1001B812 _ E8, 00002AB0
        add     esp, 24                                 ; 1001B817 _ 83. C4, 18
?_3320: mov     ebx, dword [ebp+8H]                     ; 1001B81A _ 8B. 5D, 08
?_3321: cmp     dword [ebp-24H], 0                      ; 1001B81D _ 83. 7D, DC, 00
        jnz     ?_3324                                  ; 1001B821 _ 75, 53
        push    esi                                     ; 1001B823 _ 56
        push    0                                       ; 1001B824 _ 6A, 00
        push    dword [?_5807]                          ; 1001B826 _ FF. 35, 1176644C(d)
        call    near [imp_HeapAlloc]                    ; 1001B82C _ FF. 15, 100240CC(d)
        mov     dword [ebp-24H], eax                    ; 1001B832 _ 89. 45, DC
        test    eax, eax                                ; 1001B835 _ 85. C0
        jz      ?_3324                                  ; 1001B837 _ 74, 3D
        movzx   eax, byte [edi]                         ; 1001B839 _ 0F B6. 07
        shl     eax, 4                                  ; 1001B83C _ C1. E0, 04
        mov     dword [ebp-34H], eax                    ; 1001B83F _ 89. 45, CC
        cmp     eax, esi                                ; 1001B842 _ 3B. C6
        jc      ?_3322                                  ; 1001B844 _ 72, 02
        mov     eax, esi                                ; 1001B846 _ 8B. C6
?_3322: push    eax                                     ; 1001B848 _ 50
        push    ebx                                     ; 1001B849 _ 53
        push    dword [ebp-24H]                         ; 1001B84A _ FF. 75, DC
        call    ?_3909                                  ; 1001B84D _ E8, 0000325E
        push    edi                                     ; 1001B852 _ 57
        push    dword [ebp-2CH]                         ; 1001B853 _ FF. 75, D4
        push    dword [ebp-38H]                         ; 1001B856 _ FF. 75, C8
        call    ?_3806                                  ; 1001B859 _ E8, 00002A69
        add     esp, 24                                 ; 1001B85E _ 83. C4, 18
        jmp     ?_3324                                  ; 1001B861 _ EB, 13

?_3323: push    esi                                     ; 1001B863 _ 56
        push    ebx                                     ; 1001B864 _ 53
        push    0                                       ; 1001B865 _ 6A, 00
        push    dword [?_5807]                          ; 1001B867 _ FF. 35, 1176644C(d)
        call    near [imp_HeapReAlloc]                  ; 1001B86D _ FF. 15, 100240E0(d)
        mov     dword [ebp-24H], eax                    ; 1001B873 _ 89. 45, DC
?_3324: or      dword [ebp-4H], 0FFFFFFFFH              ; 1001B876 _ 83. 4D, FC, FF
        call    ?_3327                                  ; 1001B87A _ E8, 00000026
?_3325: mov     eax, dword [ebp-24H]                    ; 1001B87F _ 8B. 45, DC
        cmp     eax, edi                                ; 1001B882 _ 3B. C7
        jnz     ?_3332                                  ; 1001B884 _ 75, 66
        cmp     dword [?_5585], edi                     ; 1001B886 _ 39. 3D, 1003559C(d)
        jz      ?_3332                                  ; 1001B88C _ 74, 5E
        push    esi                                     ; 1001B88E _ 56
        call    ?_3635                                  ; 1001B88F _ E8, 000019A4
        pop     ecx                                     ; 1001B894 _ 59
        test    eax, eax                                ; 1001B895 _ 85. C0
        jne     ?_3317                                  ; 1001B897 _ 0F 85, FFFFFEE3
        jmp     ?_3331                                  ; 1001B89D _ EB, 4B

?_3326: mov     esi, dword [ebp+0CH]                    ; 1001B89F _ 8B. 75, 0C
        mov     ebx, dword [ebp+8H]                     ; 1001B8A2 _ 8B. 5D, 08
?_3327: push    9                                       ; 1001B8A5 _ 6A, 09
        call    ?_3615                                  ; 1001B8A7 _ E8, 000017EB
        pop     ecx                                     ; 1001B8AC _ 59
        xor     edi, edi                                ; 1001B8AD _ 33. FF
        ret                                             ; 1001B8AF _ C3

?_3328: xor     eax, eax                                ; 1001B8B0 _ 33. C0
        cmp     esi, -32                                ; 1001B8B2 _ 83. FE, E0
        ja      ?_3330                                  ; 1001B8B5 _ 77, 1C
        cmp     esi, edi                                ; 1001B8B7 _ 3B. F7
        jnz     ?_3329                                  ; 1001B8B9 _ 75, 03
        push    1                                       ; 1001B8BB _ 6A, 01
        pop     esi                                     ; 1001B8BD _ 5E
?_3329: add     esi, 15                                 ; 1001B8BE _ 83. C6, 0F
        and     esi, 0FFFFFFF0H                         ; 1001B8C1 _ 83. E6, F0
        push    esi                                     ; 1001B8C4 _ 56
        push    ebx                                     ; 1001B8C5 _ 53
        push    edi                                     ; 1001B8C6 _ 57
        push    dword [?_5807]                          ; 1001B8C7 _ FF. 35, 1176644C(d)
        call    near [imp_HeapReAlloc]                  ; 1001B8CD _ FF. 15, 100240E0(d)
?_3330: cmp     eax, edi                                ; 1001B8D3 _ 3B. C7
        jnz     ?_3332                                  ; 1001B8D5 _ 75, 15
        cmp     dword [?_5585], edi                     ; 1001B8D7 _ 39. 3D, 1003559C(d)
        jz      ?_3332                                  ; 1001B8DD _ 74, 0D
        push    esi                                     ; 1001B8DF _ 56
        call    ?_3635                                  ; 1001B8E0 _ E8, 00001953
        pop     ecx                                     ; 1001B8E5 _ 59
        test    eax, eax                                ; 1001B8E6 _ 85. C0
        jnz     ?_3328                                  ; 1001B8E8 _ 75, C6
?_3331: xor     eax, eax                                ; 1001B8EA _ 33. C0
?_3332: mov     ecx, dword [ebp-10H]                    ; 1001B8EC _ 8B. 4D, F0
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], ecx                      ; 1001B8EF _ 64: 89. 0D, 00000000
        pop     edi                                     ; 1001B8F6 _ 5F
        pop     esi                                     ; 1001B8F7 _ 5E
        pop     ebx                                     ; 1001B8F8 _ 5B
        leave                                           ; 1001B8F9 _ C9
        ret                                             ; 1001B8FA _ C3
