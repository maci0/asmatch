; ---- 10008880 ----
?_0866: ; Local function
        mov     edx, dword [esp+8H]                     ; 10008880 _ 8B. 54 24, 08
        mov     ecx, dword [esp+4H]                     ; 10008884 _ 8B. 4C 24, 04
        push    esi                                     ; 10008888 _ 56
        xor     eax, eax                                ; 10008889 _ 33. C0
?_0867: mov     esi, ecx                                ; 1000888B _ 8B. F1
        and     esi, 01H                                ; 1000888D _ 83. E6, 01
        or      eax, esi                                ; 10008890 _ 0B. C6
        shr     ecx, 1                                  ; 10008892 _ D1. E9
        shl     eax, 1                                  ; 10008894 _ D1. E0
        dec     edx                                     ; 10008896 _ 4A
        test    edx, edx                                ; 10008897 _ 85. D2
        jg      ?_0867                                  ; 10008899 _ 7F, F0
        shr     eax, 1                                  ; 1000889B _ D1. E8
        pop     esi                                     ; 1000889D _ 5E
        ret                                             ; 1000889E _ C3

        nop                                             ; 1000889F _ 90

