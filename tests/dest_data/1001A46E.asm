; ---- 1001A46E ----
?_3063: ; Local function
        push    ebp                                     ; 1001A46E _ 55
        mov     ebp, esp                                ; 1001A46F _ 8B. EC
        push    esi                                     ; 1001A471 _ 56
        push    dword [ebp+8H]                          ; 1001A472 _ FF. 75, 08
        call    ?_3366                                  ; 1001A475 _ E8, 000016E6
        push    dword [ebp+10H]                         ; 1001A47A _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1001A47D _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001A480 _ FF. 75, 08
        call    ?_3064                                  ; 1001A483 _ E8, 00000012
        push    dword [ebp+8H]                          ; 1001A488 _ FF. 75, 08
        mov     esi, eax                                ; 1001A48B _ 8B. F0
        call    ?_3370                                  ; 1001A48D _ E8, 00001720
        add     esp, 20                                 ; 1001A492 _ 83. C4, 14
        mov     eax, esi                                ; 1001A495 _ 8B. C6
        pop     esi                                     ; 1001A497 _ 5E
        pop     ebp                                     ; 1001A498 _ 5D
        ret                                             ; 1001A499 _ C3

