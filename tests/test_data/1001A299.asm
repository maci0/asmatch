; ---- 1001A299 ----
?_3039: ; Local function
        push    ebp                                     ; 1001A299 _ 55
        mov     ebp, esp                                ; 1001A29A _ 8B. EC
        sub     esp, 32                                 ; 1001A29C _ 83. EC, 20
        mov     eax, dword [ebp+8H]                     ; 1001A29F _ 8B. 45, 08
        push    esi                                     ; 1001A2A2 _ 56
        mov     dword [ebp-18H], eax                    ; 1001A2A3 _ 89. 45, E8
        mov     dword [ebp-20H], eax                    ; 1001A2A6 _ 89. 45, E0
        lea     eax, [ebp+10H]                          ; 1001A2A9 _ 8D. 45, 10
        mov     dword [ebp-14H], 66                     ; 1001A2AC _ C7. 45, EC, 00000042
        push    eax                                     ; 1001A2B3 _ 50
        lea     eax, [ebp-20H]                          ; 1001A2B4 _ 8D. 45, E0
        push    dword [ebp+0CH]                         ; 1001A2B7 _ FF. 75, 0C
        mov     dword [ebp-1CH], 2147483647             ; 1001A2BA _ C7. 45, E4, 7FFFFFFF
        push    eax                                     ; 1001A2C1 _ 50
        call    ?_3442                                  ; 1001A2C2 _ E8, 00001ED4
        add     esp, 12                                 ; 1001A2C7 _ 83. C4, 0C
        dec     dword [ebp-1CH]                         ; 1001A2CA _ FF. 4D, E4
        mov     esi, eax                                ; 1001A2CD _ 8B. F0
        js      ?_3040                                  ; 1001A2CF _ 78, 08
        mov     eax, dword [ebp-20H]                    ; 1001A2D1 _ 8B. 45, E0
        and     byte [eax], 00H                         ; 1001A2D4 _ 80. 20, 00
        jmp     ?_3041                                  ; 1001A2D7 _ EB, 0D

?_3040: lea     eax, [ebp-20H]                          ; 1001A2D9 _ 8D. 45, E0
        push    eax                                     ; 1001A2DC _ 50
        push    0                                       ; 1001A2DD _ 6A, 00
        call    ?_3427                                  ; 1001A2DF _ E8, 00001D9F
        pop     ecx                                     ; 1001A2E4 _ 59
        pop     ecx                                     ; 1001A2E5 _ 59
?_3041: mov     eax, esi                                ; 1001A2E6 _ 8B. C6
        pop     esi                                     ; 1001A2E8 _ 5E
        leave                                           ; 1001A2E9 _ C9
        ret                                             ; 1001A2EA _ C3
