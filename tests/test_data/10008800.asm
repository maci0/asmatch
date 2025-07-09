; ---- 10008800 ----
?_0861: ; Local function
        push    ebx                                     ; 10008800 _ 53
        mov     ebx, dword [esp+8H]                     ; 10008801 _ 8B. 5C 24, 08
        push    esi                                     ; 10008805 _ 56
        push    edi                                     ; 10008806 _ 57
        xor     edi, edi                                ; 10008807 _ 33. FF
        xor     edx, edx                                ; 10008809 _ 33. D2
        lea     eax, [ebx+8CH]                          ; 1000880B _ 8D. 83, 0000008C
        mov     ecx, 7                                  ; 10008811 _ B9, 00000007
?_0862: xor     esi, esi                                ; 10008816 _ 33. F6
        mov     si, word [eax]                          ; 10008818 _ 66: 8B. 30
        add     eax, 4                                  ; 1000881B _ 83. C0, 04
        add     edx, esi                                ; 1000881E _ 03. D6
        dec     ecx                                     ; 10008820 _ 49
        jnz     ?_0862                                  ; 10008821 _ 75, F3
        push    ebp                                     ; 10008823 _ 55
        lea     eax, [ebx+0A8H]                         ; 10008824 _ 8D. 83, 000000A8
        mov     ecx, 121                                ; 1000882A _ B9, 00000079
        mov     esi, 128                                ; 1000882F _ BE, 00000080
?_0863: xor     ebp, ebp                                ; 10008834 _ 33. ED
        mov     bp, word [eax]                          ; 10008836 _ 66: 8B. 28
        add     eax, 4                                  ; 10008839 _ 83. C0, 04
        add     edi, ebp                                ; 1000883C _ 03. FD
        dec     ecx                                     ; 1000883E _ 49
        jnz     ?_0863                                  ; 1000883F _ 75, F3
        cmp     esi, 256                                ; 10008841 _ 81. FE, 00000100
        pop     ebp                                     ; 10008847 _ 5D
        jge     ?_0865                                  ; 10008848 _ 7D, 1B
        mov     eax, 256                                ; 1000884A _ B8, 00000100
        lea     ecx, [ebx+esi*4+8CH]                    ; 1000884F _ 8D. 8C B3, 0000008C
        sub     eax, esi                                ; 10008856 _ 2B. C6
?_0864: xor     esi, esi                                ; 10008858 _ 33. F6
        mov     si, word [ecx]                          ; 1000885A _ 66: 8B. 31
        add     ecx, 4                                  ; 1000885D _ 83. C1, 04
        add     edx, esi                                ; 10008860 _ 03. D6
        dec     eax                                     ; 10008862 _ 48
        jnz     ?_0864                                  ; 10008863 _ 75, F3
?_0865: shr     edi, 2                                  ; 10008865 _ C1. EF, 02
        cmp     edx, edi                                ; 10008868 _ 3B. D7
        pop     edi                                     ; 1000886A _ 5F
        setbe   al                                      ; 1000886B _ 0F 96. C0
        mov     byte [ebx+1CH], al                      ; 1000886E _ 88. 43, 1C
        pop     esi                                     ; 10008871 _ 5E
        pop     ebx                                     ; 10008872 _ 5B
        ret                                             ; 10008873 _ C3

        nop                                             ; 10008874 _ 90
        nop                                             ; 10008875 _ 90
        nop                                             ; 10008876 _ 90
        nop                                             ; 10008877 _ 90
        nop                                             ; 10008878 _ 90
        nop                                             ; 10008879 _ 90
        nop                                             ; 1000887A _ 90
        nop                                             ; 1000887B _ 90
        nop                                             ; 1000887C _ 90
        nop                                             ; 1000887D _ 90
        nop                                             ; 1000887E _ 90
        nop                                             ; 1000887F _ 90
