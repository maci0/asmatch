; ---- 100174D0 ----
?_2657: ; Local function
        push    ebp                                     ; 100174D0 _ 55
        mov     ebp, esp                                ; 100174D1 _ 8B. EC
        sub     esp, 1040                               ; 100174D3 _ 81. EC, 00000410
        mov     eax, dword [?_5668]                     ; 100174D9 _ A1, 100A8C30(d)
        push    ebx                                     ; 100174DE _ 53
        xor     ebx, ebx                                ; 100174DF _ 33. DB
        push    esi                                     ; 100174E1 _ 56
        cmp     eax, ebx                                ; 100174E2 _ 3B. C3
        jnz     ?_2658                                  ; 100174E4 _ 75, 08
        pop     esi                                     ; 100174E6 _ 5E
        xor     eax, eax                                ; 100174E7 _ 33. C0
        pop     ebx                                     ; 100174E9 _ 5B
        mov     esp, ebp                                ; 100174EA _ 8B. E5
        pop     ebp                                     ; 100174EC _ 5D
        ret                                             ; 100174ED _ C3
