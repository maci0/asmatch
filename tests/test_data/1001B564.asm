; ---- 1001B564 ----
?_3298: ; Local function
        push    ebp                                     ; 1001B564 _ 55
        mov     ebp, esp                                ; 1001B565 _ 8B. EC
        add     esp, -12                                ; 1001B567 _ 83. C4, F4
        fwait                                           ; 1001B56A _ 9B
        fnstcw  word [ebp-2H]                           ; 1001B56B _ D9. 7D, FE
        fwait                                           ; 1001B56E _ 9B
        mov     ax, word [ebp-2H]                       ; 1001B56F _ 66: 8B. 45, FE
        or      ah, 0CH                                 ; 1001B573 _ 80. CC, 0C
        mov     word [ebp-4H], ax                       ; 1001B576 _ 66: 89. 45, FC
        fldcw   word [ebp-4H]                           ; 1001B57A _ D9. 6D, FC
        fistp   qword [ebp-0CH]                         ; 1001B57D _ DF. 7D, F4
        fldcw   word [ebp-2H]                           ; 1001B580 _ D9. 6D, FE
        mov     eax, dword [ebp-0CH]                    ; 1001B583 _ 8B. 45, F4
        mov     edx, dword [ebp-8H]                     ; 1001B586 _ 8B. 55, F8
        leave                                           ; 1001B589 _ C9
        ret                                             ; 1001B58A _ C3
