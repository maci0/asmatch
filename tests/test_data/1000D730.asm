; ---- 1000D730 ----
?_1490: ; Local function
        sub     esp, 8                                  ; 1000D730 _ 83. EC, 08
        xor     eax, eax                                ; 1000D733 _ 33. C0
        push    esi                                     ; 1000D735 _ 56
        mov     esi, dword [esp+10H]                    ; 1000D736 _ 8B. 74 24, 10
        mov     ax, word [esi+10H]                      ; 1000D73A _ 66: 8B. 46, 10
        push    eax                                     ; 1000D73E _ 50
        push    esi                                     ; 1000D73F _ 56
        call    ?_1389                                  ; 1000D740 _ E8, FFFFF34B
        mov     word [esi+10H], ax                      ; 1000D745 _ 66: 89. 46, 10
        and     eax, 0FFFFH                             ; 1000D749 _ 25, 0000FFFF
        lea     ecx, [esp+10H]                          ; 1000D74E _ 8D. 4C 24, 10
        push    eax                                     ; 1000D752 _ 50
        lea     edx, [esp+10H]                          ; 1000D753 _ 8D. 54 24, 10
        push    ecx                                     ; 1000D757 _ 51
        lea     eax, [esp+20H]                          ; 1000D758 _ 8D. 44 24, 20
        push    edx                                     ; 1000D75C _ 52
        push    eax                                     ; 1000D75D _ 50
        call    ?_2425                                  ; 1000D75E _ E8, 0000872D
        add     esp, 24                                 ; 1000D763 _ 83. C4, 18
        test    eax, eax                                ; 1000D766 _ 85. C0
        pop     esi                                     ; 1000D768 _ 5E
        jnz     ?_1491                                  ; 1000D769 _ 75, 0E
        push    1                                       ; 1000D76B _ 6A, 01
        push    ?_5288                                  ; 1000D76D _ 68, 1002CC5C(d)
        push    10761                                   ; 1000D772 _ 68, 00002A09
        jmp     ?_1493                                  ; 1000D777 _ EB, 32

?_1491: mov     eax, dword [esp+0CH]                    ; 1000D779 _ 8B. 44 24, 0C
        test    eax, eax                                ; 1000D77D _ 85. C0
        jz      ?_1492                                  ; 1000D77F _ 74, 16
        push    eax                                     ; 1000D781 _ 50
        call    ?_2627                                  ; 1000D782 _ E8, 00009AB9
        add     esp, 4                                  ; 1000D787 _ 83. C4, 04
        test    eax, eax                                ; 1000D78A _ 85. C0
        jz      ?_1495                                  ; 1000D78C _ 74, 45
        mov     eax, 1                                  ; 1000D78E _ B8, 00000001
        add     esp, 8                                  ; 1000D793 _ 83. C4, 08
        ret                                             ; 1000D796 _ C3

?_1492:
; Note: Zero displacement could be omitted
        mov     eax, dword [esp]                        ; 1000D797 _ 8B. 44 24, 00
        push    1                                       ; 1000D79B _ 6A, 01
        test    eax, eax                                ; 1000D79D _ 85. C0
        jz      ?_1494                                  ; 1000D79F _ 74, 20
        push    ?_5287                                  ; 1000D7A1 _ 68, 1002CC3C(d)
        push    10785                                   ; 1000D7A6 _ 68, 00002A21
?_1493: push    ?_5260                                  ; 1000D7AB _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000D7B0 _ E8, FFFF5E8B
        add     esp, 16                                 ; 1000D7B5 _ 83. C4, 10
        mov     eax, 1                                  ; 1000D7B8 _ B8, 00000001
        add     esp, 8                                  ; 1000D7BD _ 83. C4, 08
        ret                                             ; 1000D7C0 _ C3

?_1494: mov     edx, dword [esp+8H]                     ; 1000D7C1 _ 8B. 54 24, 08
        xor     ecx, ecx                                ; 1000D7C5 _ 33. C9
        mov     cx, word [edx]                          ; 1000D7C7 _ 66: 8B. 0A
        push    ecx                                     ; 1000D7CA _ 51
        call    ?_2757                                  ; 1000D7CB _ E8, 0000A7E0
        add     esp, 8                                  ; 1000D7D0 _ 83. C4, 08
?_1495: mov     eax, dword [esp+10H]                    ; 1000D7D3 _ 8B. 44 24, 10
        test    eax, eax                                ; 1000D7D7 _ 85. C0
        jz      ?_1496                                  ; 1000D7D9 _ 74, 03
        mov     byte [eax], 1                           ; 1000D7DB _ C6. 00, 01
?_1496: xor     eax, eax                                ; 1000D7DE _ 33. C0
        add     esp, 8                                  ; 1000D7E0 _ 83. C4, 08
        ret                                             ; 1000D7E3 _ C3

        nop                                             ; 1000D7E4 _ 90
        nop                                             ; 1000D7E5 _ 90
        nop                                             ; 1000D7E6 _ 90
        nop                                             ; 1000D7E7 _ 90
        nop                                             ; 1000D7E8 _ 90
        nop                                             ; 1000D7E9 _ 90
        nop                                             ; 1000D7EA _ 90
        nop                                             ; 1000D7EB _ 90
        nop                                             ; 1000D7EC _ 90
        nop                                             ; 1000D7ED _ 90
        nop                                             ; 1000D7EE _ 90
        nop                                             ; 1000D7EF _ 90
