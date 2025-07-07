; ---- 10015F70 ----
?_2440: ; Local function
        sub     esp, 40                                 ; 10015F70 _ 83. EC, 28
        push    esi                                     ; 10015F73 _ 56
        push    10                                      ; 10015F74 _ 6A, 0A
        push    5                                       ; 10015F76 _ 6A, 05
        push    1                                       ; 10015F78 _ 6A, 01
        mov     dword [esp+18H], 146                    ; 10015F7A _ C7. 44 24, 18, 00000092
        mov     dword [esp+1CH], 147                    ; 10015F82 _ C7. 44 24, 1C, 00000093
        mov     dword [esp+20H], 148                    ; 10015F8A _ C7. 44 24, 20, 00000094
        mov     dword [esp+24H], 149                    ; 10015F92 _ C7. 44 24, 24, 00000095
        mov     dword [esp+28H], 150                    ; 10015F9A _ C7. 44 24, 28, 00000096
        mov     dword [esp+2CH], 151                    ; 10015FA2 _ C7. 44 24, 2C, 00000097
        mov     dword [esp+30H], 731                    ; 10015FAA _ C7. 44 24, 30, 000002DB
        mov     dword [esp+34H], 0                      ; 10015FB2 _ C7. 44 24, 34, 00000000
        call    ?_2609                                  ; 10015FBA _ E8, 00001121
        add     esp, 12                                 ; 10015FBF _ 83. C4, 0C
        mov     dword [?_5533], eax                     ; 10015FC2 _ A3, 1003543C(d)
        test    eax, eax                                ; 10015FC7 _ 85. C0
        jnz     ?_2441                                  ; 10015FC9 _ 75, 1E
        push    1                                       ; 10015FCB _ 6A, 01
        push    ?_5416                                  ; 10015FCD _ 68, 1003122C(d)
        push    1999                                    ; 10015FD2 _ 68, 000007CF
        push    ?_5397                                  ; 10015FD7 _ 68, 10031004(d)
        call    ?_0267                                  ; 10015FDC _ E8, FFFED65F
        add     esp, 16                                 ; 10015FE1 _ 83. C4, 10
        pop     esi                                     ; 10015FE4 _ 5E
        add     esp, 40                                 ; 10015FE5 _ 83. C4, 28
        ret                                             ; 10015FE8 _ C3

