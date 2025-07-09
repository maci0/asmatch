; ---- 100174EE ----
?_2658: ; Local function
        mov     dword [ebp-4H], ebx                     ; 100174EE _ 89. 5D, FC
        call    ?_2622                                  ; 100174F1 _ E8, FFFFFD1A
        mov     esi, eax                                ; 100174F6 _ 8B. F0
        cmp     esi, ebx                                ; 100174F8 _ 3B. F3
        jnz     ?_2659                                  ; 100174FA _ 75, 21
        push    1                                       ; 100174FC _ 6A, 01
        push    ?_5430                                  ; 100174FE _ 68, 10031454(d)
        push    4299                                    ; 10017503 _ 68, 000010CB
        push    ?_5397                                  ; 10017508 _ 68, 10031004(d)
        call    ?_0267                                  ; 1001750D _ E8, FFFEC12E
        add     esp, 16                                 ; 10017512 _ 83. C4, 10
        xor     eax, eax                                ; 10017515 _ 33. C0
        pop     esi                                     ; 10017517 _ 5E
        pop     ebx                                     ; 10017518 _ 5B
        mov     esp, ebp                                ; 10017519 _ 8B. E5
        pop     ebp                                     ; 1001751B _ 5D
        ret                                             ; 1001751C _ C3
