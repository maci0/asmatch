; ---- 1000F940 ----
?_1777: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000F940 _ 8B. 44 24, 04
        add     eax, 16                                 ; 1000F944 _ 83. C0, 10
        push    eax                                     ; 1000F947 _ 50
        call    ?_1168                                  ; 1000F948 _ E8, FFFFB943
        add     esp, 4                                  ; 1000F94D _ 83. C4, 04
        neg     eax                                     ; 1000F950 _ F7. D8
        sbb     eax, eax                                ; 1000F952 _ 1B. C0
        inc     eax                                     ; 1000F954 _ 40
        ret                                             ; 1000F955 _ C3

        nop                                             ; 1000F956 _ 90
        nop                                             ; 1000F957 _ 90
        nop                                             ; 1000F958 _ 90
        nop                                             ; 1000F959 _ 90
        nop                                             ; 1000F95A _ 90
        nop                                             ; 1000F95B _ 90
        nop                                             ; 1000F95C _ 90
        nop                                             ; 1000F95D _ 90
        nop                                             ; 1000F95E _ 90
        nop                                             ; 1000F95F _ 90

