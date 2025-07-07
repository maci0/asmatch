; ---- 10015AB7 ----
?_2396: ; Local function
        mov     ecx, dword [?_5668]                     ; 10015AB7 _ 8B. 0D, 100A8C30(d)
        push    esi                                     ; 10015ABD _ 56
        push    88                                      ; 10015ABE _ 6A, 58
        push    589                                     ; 10015AC0 _ 68, 0000024D
        push    ecx                                     ; 10015AC5 _ 51
        call    ?_3143                                  ; 10015AC6 _ E8, 00004F9F
        push    esi                                     ; 10015ACB _ 56
        call    ?_3029                                  ; 10015ACC _ E8, 000046B9
        push    ?_5406                                  ; 10015AD1 _ 68, 10031140(d)
        push    47580                                   ; 10015AD6 _ 68, 0000B9DC
        call    ?_0640                                  ; 10015ADB _ E8, FFFF0AA0
        add     esp, 28                                 ; 10015AE0 _ 83. C4, 1C
        mov     dword [?_5693], eax                     ; 10015AE3 _ A3, 101DE450(d)
        test    eax, eax                                ; 10015AE8 _ 85. C0
        jnz     ?_2397                                  ; 10015AEA _ 75, 0F
        pop     edi                                     ; 10015AEC _ 5F
        pop     esi                                     ; 10015AED _ 5E
        mov     eax, 4294967292                         ; 10015AEE _ B8, FFFFFFFC
        pop     ebx                                     ; 10015AF3 _ 5B
        add     esp, 520                                ; 10015AF4 _ 81. C4, 00000208
        ret                                             ; 10015AFA _ C3

