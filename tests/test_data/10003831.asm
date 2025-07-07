; ---- 10003831 ----
?_0288: ; Local function
        mov     eax, dword [esi+4H]                     ; 10003831 _ 8B. 46, 04
        test    eax, eax                                ; 10003834 _ 85. C0
        jnz     ?_0290                                  ; 10003836 _ 75, 46
        call    ?_3107                                  ; 10003838 _ E8, 00016FA8
        mov     dword [eax], 0                          ; 1000383D _ C7. 00, 00000000
        mov     eax, dword [esi+40H]                    ; 10003843 _ 8B. 46, 40
        mov     ecx, dword [esi+44H]                    ; 10003846 _ 8B. 4E, 44
        push    eax                                     ; 10003849 _ 50
        push    16384                                   ; 1000384A _ 68, 00004000
        push    1                                       ; 1000384F _ 6A, 01
        push    ecx                                     ; 10003851 _ 51
        call    ?_3143                                  ; 10003852 _ E8, 00017213
        add     esp, 16                                 ; 10003857 _ 83. C4, 10
        mov     dword [esi+4H], eax                     ; 1000385A _ 89. 46, 04
        test    eax, eax                                ; 1000385D _ 85. C0
        jnz     ?_0289                                  ; 1000385F _ 75, 18
        mov     edx, dword [esi+40H]                    ; 10003861 _ 8B. 56, 40
        mov     dword [esi+3CH], 1                      ; 10003864 _ C7. 46, 3C, 00000001
        or      eax, 0FFFFFFFFH                         ; 1000386B _ 83. C8, FF
        test    byte [edx+0CH], 20H                     ; 1000386E _ F6. 42, 0C, 20
        jz      ?_0291                                  ; 10003872 _ 74, 1C
        mov     dword [esi+38H], eax                    ; 10003874 _ 89. 46, 38
        pop     esi                                     ; 10003877 _ 5E
        ret                                             ; 10003878 _ C3

?_0289: mov     eax, dword [esi+44H]                    ; 10003879 _ 8B. 46, 44
        mov     dword [esi], eax                        ; 1000387C _ 89. 06
?_0290: mov     eax, dword [esi+4H]                     ; 1000387E _ 8B. 46, 04
        xor     ecx, ecx                                ; 10003881 _ 33. C9
        dec     eax                                     ; 10003883 _ 48
        mov     dword [esi+4H], eax                     ; 10003884 _ 89. 46, 04
        mov     eax, dword [esi]                        ; 10003887 _ 8B. 06
        mov     cl, byte [eax]                          ; 10003889 _ 8A. 08
        inc     eax                                     ; 1000388B _ 40
        mov     dword [esi], eax                        ; 1000388C _ 89. 06
        mov     eax, ecx                                ; 1000388E _ 8B. C1
?_0291: pop     esi                                     ; 10003890 _ 5E
        ret                                             ; 10003891 _ C3

        nop                                             ; 10003892 _ 90
        nop                                             ; 10003893 _ 90
        nop                                             ; 10003894 _ 90
        nop                                             ; 10003895 _ 90
        nop                                             ; 10003896 _ 90
        nop                                             ; 10003897 _ 90
        nop                                             ; 10003898 _ 90
        nop                                             ; 10003899 _ 90
        nop                                             ; 1000389A _ 90
        nop                                             ; 1000389B _ 90
        nop                                             ; 1000389C _ 90
        nop                                             ; 1000389D _ 90
        nop                                             ; 1000389E _ 90
        nop                                             ; 1000389F _ 90
?_0292: push    esi                                     ; 100038A0 _ 56
        mov     esi, dword [esp+8H]                     ; 100038A1 _ 8B. 74 24, 08
        push    edi                                     ; 100038A5 _ 57
        xor     edi, edi                                ; 100038A6 _ 33. FF
        test    esi, esi                                ; 100038A8 _ 85. F6
        jnz     ?_0293                                  ; 100038AA _ 75, 08
        pop     edi                                     ; 100038AC _ 5F
        mov     eax, 4294967294                         ; 100038AD _ B8, FFFFFFFE
        pop     esi                                     ; 100038B2 _ 5E
        ret                                             ; 100038B3 _ C3

