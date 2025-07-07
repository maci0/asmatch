; ---- 1000B83B ----
?_1222: ; Local function
        lea     eax, [ecx+ecx*2]                        ; 1000B83B _ 8D. 04 49
        mov     ecx, dword [esp+4H]                     ; 1000B83E _ 8B. 4C 24, 04
        mov     dword [?_5701+eax*8], ecx               ; 1000B842 _ 89. 0C C5, 101DE5A4(d)
        ret                                             ; 1000B849 _ C3

        nop                                             ; 1000B84A _ 90
        nop                                             ; 1000B84B _ 90
        nop                                             ; 1000B84C _ 90
        nop                                             ; 1000B84D _ 90
        nop                                             ; 1000B84E _ 90
        nop                                             ; 1000B84F _ 90
?_1223: mov     ecx, 41                                 ; 1000B850 _ B9, 00000029
        mov     eax, ?_5749                             ; 1000B855 _ B8, 101DE980(d)
?_1224: cmp     byte [eax], 39                          ; 1000B85A _ 80. 38, 27
        jz      ?_1225                                  ; 1000B85D _ 74, 0C
        sub     eax, 24                                 ; 1000B85F _ 83. E8, 18
        dec     ecx                                     ; 1000B862 _ 49
        cmp     eax, ?_5702                             ; 1000B863 _ 3D, 101DE5A8(d)
        jnz     ?_1224                                  ; 1000B868 _ 75, F0
        ret                                             ; 1000B86A _ C3

