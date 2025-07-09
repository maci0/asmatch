; ---- 1000D570 ----
?_1483: ; Local function
        mov     eax, dword [?_5380]                     ; 1000D570 _ A1, 10030B6C(d)
        push    ebx                                     ; 1000D575 _ 53
        push    esi                                     ; 1000D576 _ 56
        push    edi                                     ; 1000D577 _ 57
        mov     edi, dword [esp+10H]                    ; 1000D578 _ 8B. 7C 24, 10
        mov     dword [edi+10H], eax                    ; 1000D57C _ 89. 47, 10
        call    ?_3297                                  ; 1000D57F _ E8, 0000DFBE
        mov     ecx, dword [edi+22H]                    ; 1000D584 _ 8B. 4F, 22
        mov     dword [edi+45H], eax                    ; 1000D587 _ 89. 47, 45
        push    ecx                                     ; 1000D58A _ 51
        call    ?_3028                                  ; 1000D58B _ E8, 0000CBC0
        mov     ebx, dword [esp+18H]                    ; 1000D590 _ 8B. 5C 24, 18
        mov     eax, ebx                                ; 1000D594 _ 8B. C3
        neg     eax                                     ; 1000D596 _ F7. D8
        sbb     eax, eax                                ; 1000D598 _ 1B. C0
        xor     edx, edx                                ; 1000D59A _ 33. D2
        mov     dl, byte [edi+23H]                      ; 1000D59C _ 8A. 57, 23
        xor     ecx, ecx                                ; 1000D59F _ 33. C9
        mov     cl, byte [edi+1EH]                      ; 1000D5A1 _ 8A. 4F, 1E
        push    edx                                     ; 1000D5A4 _ 52
        mov     dx, word [edi+1CH]                      ; 1000D5A5 _ 66: 8B. 57, 1C
        push    0                                       ; 1000D5A9 _ 6A, 00
        push    ecx                                     ; 1000D5AB _ 51
        mov     ecx, dword [edi+18H]                    ; 1000D5AC _ 8B. 4F, 18
        push    0                                       ; 1000D5AF _ 6A, 00
        push    edx                                     ; 1000D5B1 _ 52
        mov     edx, dword [edi+14H]                    ; 1000D5B2 _ 8B. 57, 14
        add     eax, 7                                  ; 1000D5B5 _ 83. C0, 07
        push    ecx                                     ; 1000D5B8 _ 51
        push    edx                                     ; 1000D5B9 _ 52
        push    eax                                     ; 1000D5BA _ 50
        call    ?_2844                                  ; 1000D5BB _ E8, 0000B290
        mov     si, ax                                  ; 1000D5C0 _ 66: 8B. F0
        add     esp, 36                                 ; 1000D5C3 _ 83. C4, 24
        and     esi, 0FFFFH                             ; 1000D5C6 _ 81. E6, 0000FFFF
        cmp     esi, 65535                              ; 1000D5CC _ 81. FE, 0000FFFF
        jnz     ?_1484                                  ; 1000D5D2 _ 75, 22
        push    1                                       ; 1000D5D4 _ 6A, 01
        push    ?_5284                                  ; 1000D5D6 _ 68, 1002CBD4(d)
        push    10511                                   ; 1000D5DB _ 68, 0000290F
        push    ?_5260                                  ; 1000D5E0 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000D5E5 _ E8, FFFF6056
        add     esp, 16                                 ; 1000D5EA _ 83. C4, 10
        mov     eax, 1                                  ; 1000D5ED _ B8, 00000001
        pop     edi                                     ; 1000D5F2 _ 5F
        pop     esi                                     ; 1000D5F3 _ 5E
        pop     ebx                                     ; 1000D5F4 _ 5B
        ret                                             ; 1000D5F5 _ C3
