; ---- 1000C402 ----
?_1306: ; Local function
        fstp    st0                                     ; 1000C402 _ DD. D8
        fld     dword [?_4910]                          ; 1000C404 _ D9. 05, 100256A0(d)
        mov     eax, 1                                  ; 1000C40A _ B8, 00000001
        fstp    dword [ecx+4H]                          ; 1000C40F _ D9. 59, 04
        ret                                             ; 1000C412 _ C3

        nop                                             ; 1000C413 _ 90
        nop                                             ; 1000C414 _ 90
        nop                                             ; 1000C415 _ 90
        nop                                             ; 1000C416 _ 90
        nop                                             ; 1000C417 _ 90
        nop                                             ; 1000C418 _ 90
        nop                                             ; 1000C419 _ 90
        nop                                             ; 1000C41A _ 90
        nop                                             ; 1000C41B _ 90
        nop                                             ; 1000C41C _ 90
        nop                                             ; 1000C41D _ 90
        nop                                             ; 1000C41E _ 90
        nop                                             ; 1000C41F _ 90
?_1307: push    ebx                                     ; 1000C420 _ 53
        push    esi                                     ; 1000C421 _ 56
        mov     esi, dword [esp+10H]                    ; 1000C422 _ 8B. 74 24, 10
        push    edi                                     ; 1000C426 _ 57
        mov     eax, dword [esi]                        ; 1000C427 _ 8B. 06
        push    eax                                     ; 1000C429 _ 50
        call    ?_2817                                  ; 1000C42A _ E8, 0000C071
        mov     ebx, eax                                ; 1000C42F _ 8B. D8
        xor     edi, edi                                ; 1000C431 _ 33. FF
        add     esp, 4                                  ; 1000C433 _ 83. C4, 04
        cmp     ebx, edi                                ; 1000C436 _ 3B. DF
        je      ?_1311                                  ; 1000C438 _ 0F 84, 00000082
        mov     ecx, dword [esp+18H]                    ; 1000C43E _ 8B. 4C 24, 18
        push    ebp                                     ; 1000C442 _ 55
        push    255                                     ; 1000C443 _ 68, 000000FF
        push    edi                                     ; 1000C448 _ 57
        mov     edx, dword [ecx+5DH]                    ; 1000C449 _ 8B. 51, 5D
        push    6                                       ; 1000C44C _ 6A, 06
        push    2                                       ; 1000C44E _ 6A, 02
        push    edx                                     ; 1000C450 _ 52
        call    ?_2482                                  ; 1000C451 _ E8, 0000A00A
        add     esp, 20                                 ; 1000C456 _ 83. C4, 14
        mov     dword [ebx+170H], edi                   ; 1000C459 _ 89. BB, 00000170
        mov     dword [ebx+16CH], edi                   ; 1000C45F _ 89. BB, 0000016C
        mov     ebp, eax                                ; 1000C465 _ 8B. E8
        add     esi, 12                                 ; 1000C467 _ 83. C6, 0C
        mov     edi, 6                                  ; 1000C46A _ BF, 00000006
?_1308: mov     eax, dword [esi]                        ; 1000C46F _ 8B. 06
        test    eax, eax                                ; 1000C471 _ 85. C0
        jz      ?_1310                                  ; 1000C473 _ 74, 1E
        test    ebp, ebp                                ; 1000C475 _ 85. ED
        jz      ?_1309                                  ; 1000C477 _ 74, 0D
        push    eax                                     ; 1000C479 _ 50
        lea     eax, [ebp+14H]                          ; 1000C47A _ 8D. 45, 14
        push    eax                                     ; 1000C47D _ 50
        call    ?_2502                                  ; 1000C47E _ E8, 0000A14D
        add     esp, 8                                  ; 1000C483 _ 83. C4, 08
?_1309: mov     dword [esi], 0                          ; 1000C486 _ C7. 06, 00000000
        mov     dword [esi+4H], 0                       ; 1000C48C _ C7. 46, 04, 00000000
?_1310: add     esi, 8                                  ; 1000C493 _ 83. C6, 08
        dec     edi                                     ; 1000C496 _ 4F
        jnz     ?_1308                                  ; 1000C497 _ 75, D6
        mov     edi, dword [esp+18H]                    ; 1000C499 _ 8B. 7C 24, 18
        mov     ecx, 15                                 ; 1000C49D _ B9, 0000000F
        xor     eax, eax                                ; 1000C4A2 _ 33. C0
        push    1                                       ; 1000C4A4 _ 6A, 01
        rep stosd                                       ; 1000C4A6 _ F3: AB
        xor     ecx, ecx                                ; 1000C4A8 _ 33. C9
        mov     cx, word [ebx]                          ; 1000C4AA _ 66: 8B. 0B
        push    ecx                                     ; 1000C4AD _ 51
        call    ?_2757                                  ; 1000C4AE _ E8, 0000BAFD
        add     esp, 8                                  ; 1000C4B3 _ 83. C4, 08
        mov     eax, 1                                  ; 1000C4B6 _ B8, 00000001
        pop     ebp                                     ; 1000C4BB _ 5D
        pop     edi                                     ; 1000C4BC _ 5F
        pop     esi                                     ; 1000C4BD _ 5E
        pop     ebx                                     ; 1000C4BE _ 5B
        ret                                             ; 1000C4BF _ C3
