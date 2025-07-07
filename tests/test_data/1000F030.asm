; ---- 1000F030 ----
?_1704: ; Local function
        push    esi                                     ; 1000F030 _ 56
        mov     esi, dword [esp+8H]                     ; 1000F031 _ 8B. 74 24, 08
        mov     eax, dword [esi+10H]                    ; 1000F035 _ 8B. 46, 10
        push    eax                                     ; 1000F038 _ 50
        call    ?_2817                                  ; 1000F039 _ E8, 00009462
        add     esp, 4                                  ; 1000F03E _ 83. C4, 04
        test    eax, eax                                ; 1000F041 _ 85. C0
        jz      ?_1705                                  ; 1000F043 _ 74, 16
        mov     ecx, dword [esi+14H]                    ; 1000F045 _ 8B. 4E, 14
        xor     edx, edx                                ; 1000F048 _ 33. D2
        mov     dx, word [eax]                          ; 1000F04A _ 66: 8B. 10
        push    ecx                                     ; 1000F04D _ 51
        push    edx                                     ; 1000F04E _ 52
        call    ?_2757                                  ; 1000F04F _ E8, 00008F5C
        add     esp, 8                                  ; 1000F054 _ 83. C4, 08
        xor     eax, eax                                ; 1000F057 _ 33. C0
        pop     esi                                     ; 1000F059 _ 5E
        ret                                             ; 1000F05A _ C3

