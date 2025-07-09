; ---- 10010350 ----
?_1873: ; Local function
        mov     eax, dword [?_5380]                     ; 10010350 _ A1, 10030B6C(d)
        push    esi                                     ; 10010355 _ 56
        mov     esi, dword [esp+8H]                     ; 10010356 _ 8B. 74 24, 08
        mov     dword [esi+14H], eax                    ; 1001035A _ 89. 46, 14
        call    ?_3297                                  ; 1001035D _ E8, 0000B1E0
        add     esi, 16                                 ; 10010362 _ 83. C6, 10
        push    eax                                     ; 10010365 _ 50
        mov     dword [esi], eax                        ; 10010366 _ 89. 06
        call    ?_3028                                  ; 10010368 _ E8, 00009DE3
        push    esi                                     ; 1001036D _ 56
        call    ?_1270                                  ; 1001036E _ E8, FFFFBA7D
        sub     eax, 65535                              ; 10010373 _ 2D, 0000FFFF
        add     esp, 8                                  ; 10010378 _ 83. C4, 08
        neg     eax                                     ; 1001037B _ F7. D8
        sbb     eax, eax                                ; 1001037D _ 1B. C0
        pop     esi                                     ; 1001037F _ 5E
        neg     eax                                     ; 10010380 _ F7. D8
        dec     eax                                     ; 10010382 _ 48
        ret                                             ; 10010383 _ C3

        nop                                             ; 10010384 _ 90
        nop                                             ; 10010385 _ 90
        nop                                             ; 10010386 _ 90
        nop                                             ; 10010387 _ 90
        nop                                             ; 10010388 _ 90
        nop                                             ; 10010389 _ 90
        nop                                             ; 1001038A _ 90
        nop                                             ; 1001038B _ 90
        nop                                             ; 1001038C _ 90
        nop                                             ; 1001038D _ 90
        nop                                             ; 1001038E _ 90
        nop                                             ; 1001038F _ 90
