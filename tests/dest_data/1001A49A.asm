; ---- 1001A49A ----
?_3064: ; Local function
        push    esi                                     ; 1001A49A _ 56
        mov     esi, dword [esp+8H]                     ; 1001A49B _ 8B. 74 24, 08
        push    edi                                     ; 1001A49F _ 57
        mov     eax, dword [esi+0CH]                    ; 1001A4A0 _ 8B. 46, 0C
        test    al, 0FFFFFF83H                          ; 1001A4A3 _ A8, 83
        jz      ?_3069                                  ; 1001A4A5 _ 74, 6F
        mov     edi, dword [esp+14H]                    ; 1001A4A7 _ 8B. 7C 24, 14
        test    edi, edi                                ; 1001A4AB _ 85. FF
        jz      ?_3065                                  ; 1001A4AD _ 74, 0A
        cmp     edi, 1                                  ; 1001A4AF _ 83. FF, 01
        jz      ?_3065                                  ; 1001A4B2 _ 74, 05
        cmp     edi, 2                                  ; 1001A4B4 _ 83. FF, 02
        jnz     ?_3069                                  ; 1001A4B7 _ 75, 5D
?_3065: and     al, 0FFFFFFEFH                          ; 1001A4B9 _ 24, EF
        cmp     edi, 1                                  ; 1001A4BB _ 83. FF, 01
        mov     dword [esi+0CH], eax                    ; 1001A4BE _ 89. 46, 0C
        jnz     ?_3066                                  ; 1001A4C1 _ 75, 0D
        push    esi                                     ; 1001A4C3 _ 56
        call    ?_3043                                  ; 1001A4C4 _ E8, FFFFFE44
        add     dword [esp+14H], eax                    ; 1001A4C9 _ 01. 44 24, 14
        pop     ecx                                     ; 1001A4CD _ 59
        xor     edi, edi                                ; 1001A4CE _ 33. FF
?_3066: push    esi                                     ; 1001A4D0 _ 56
        call    ?_3174                                  ; 1001A4D1 _ E8, 000007F7
        mov     eax, dword [esi+0CH]                    ; 1001A4D6 _ 8B. 46, 0C
        pop     ecx                                     ; 1001A4D9 _ 59
        test    al, 0FFFFFF80H                          ; 1001A4DA _ A8, 80
        jz      ?_3067                                  ; 1001A4DC _ 74, 07
        and     al, 0FFFFFFFCH                          ; 1001A4DE _ 24, FC
        mov     dword [esi+0CH], eax                    ; 1001A4E0 _ 89. 46, 0C
        jmp     ?_3068                                  ; 1001A4E3 _ EB, 14

?_3067: test    al, 01H                                 ; 1001A4E5 _ A8, 01
        jz      ?_3068                                  ; 1001A4E7 _ 74, 10
        test    al, 08H                                 ; 1001A4E9 _ A8, 08
        jz      ?_3068                                  ; 1001A4EB _ 74, 0C
        test    ah, 04H                                 ; 1001A4ED _ F6. C4, 04
        jnz     ?_3068                                  ; 1001A4F0 _ 75, 07
        mov     dword [esi+18H], 512                    ; 1001A4F2 _ C7. 46, 18, 00000200
?_3068: push    edi                                     ; 1001A4F9 _ 57
        push    dword [esp+14H]                         ; 1001A4FA _ FF. 74 24, 14
        push    dword [esi+10H]                         ; 1001A4FE _ FF. 76, 10
        call    ?_3575                                  ; 1001A501 _ E8, 000026AF
        add     esp, 12                                 ; 1001A506 _ 83. C4, 0C
        xor     ecx, ecx                                ; 1001A509 _ 33. C9
        cmp     eax, -1                                 ; 1001A50B _ 83. F8, FF
        setne   cl                                      ; 1001A50E _ 0F 95. C1
        dec     ecx                                     ; 1001A511 _ 49
        mov     eax, ecx                                ; 1001A512 _ 8B. C1
        jmp     ?_3070                                  ; 1001A514 _ EB, 0E

?_3069: call    ?_3107                                  ; 1001A516 _ E8, 000002CA
        mov     dword [eax], 22                         ; 1001A51B _ C7. 00, 00000016
        or      eax, 0FFFFFFFFH                         ; 1001A521 _ 83. C8, FF
?_3070: pop     edi                                     ; 1001A524 _ 5F
        pop     esi                                     ; 1001A525 _ 5E
        ret                                             ; 1001A526 _ C3

