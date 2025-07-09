; ---- 10021581 ----
?_4446: ; Local function
        mov     eax, dword [esp+8H]                     ; 10021581 _ 8B. 44 24, 08
        push    ebx                                     ; 10021585 _ 53
        push    esi                                     ; 10021586 _ 56
        push    edi                                     ; 10021587 _ 57
        push    32                                      ; 10021588 _ 6A, 20
        mov     ebx, dword [esp+14H]                    ; 1002158A _ 8B. 5C 24, 14
        cdq                                             ; 1002158E _ 99
        pop     ecx                                     ; 1002158F _ 59
        idiv    ecx                                     ; 10021590 _ F7. F9
        mov     esi, eax                                ; 10021592 _ 8B. F0
        mov     eax, dword [esp+14H]                    ; 10021594 _ 8B. 44 24, 14
        cdq                                             ; 10021598 _ 99
        idiv    ecx                                     ; 10021599 _ F7. F9
        lea     edi, [ebx+esi*4]                        ; 1002159B _ 8D. 3C B3
        push    edi                                     ; 1002159E _ 57
        push    31                                      ; 1002159F _ 6A, 1F
        pop     ecx                                     ; 100215A1 _ 59
        push    1                                       ; 100215A2 _ 6A, 01
        pop     eax                                     ; 100215A4 _ 58
        sub     ecx, edx                                ; 100215A5 _ 2B. CA
        shl     eax, cl                                 ; 100215A7 _ D3. E0
        push    eax                                     ; 100215A9 _ 50
        push    dword [edi]                             ; 100215AA _ FF. 37
        call    ?_4612                                  ; 100215AC _ E8, 00000E0C
        add     esp, 12                                 ; 100215B1 _ 83. C4, 0C
        dec     esi                                     ; 100215B4 _ 4E
        js      ?_4448                                  ; 100215B5 _ 78, 1C
        lea     edi, [ebx+esi*4]                        ; 100215B7 _ 8D. 3C B3
?_4447: test    eax, eax                                ; 100215BA _ 85. C0
        jz      ?_4448                                  ; 100215BC _ 74, 15
        push    edi                                     ; 100215BE _ 57
        push    1                                       ; 100215BF _ 6A, 01
        push    dword [edi]                             ; 100215C1 _ FF. 37
        call    ?_4612                                  ; 100215C3 _ E8, 00000DF5
        add     esp, 12                                 ; 100215C8 _ 83. C4, 0C
        dec     esi                                     ; 100215CB _ 4E
        sub     edi, 4                                  ; 100215CC _ 83. EF, 04
        test    esi, esi                                ; 100215CF _ 85. F6
        jge     ?_4447                                  ; 100215D1 _ 7D, E7
?_4448: pop     edi                                     ; 100215D3 _ 5F
        pop     esi                                     ; 100215D4 _ 5E
        pop     ebx                                     ; 100215D5 _ 5B
        ret                                             ; 100215D6 _ C3
