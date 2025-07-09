; ---- 1001A540 ----
?_3073: ; Local function
        push    ebp                                     ; 1001A540 _ 55
        mov     ebp, esp                                ; 1001A541 _ 8B. EC
        push    edi                                     ; 1001A543 _ 57
        mov     edi, dword [ebp+8H]                     ; 1001A544 _ 8B. 7D, 08
        xor     eax, eax                                ; 1001A547 _ 33. C0
        or      ecx, 0FFFFFFFFH                         ; 1001A549 _ 83. C9, FF
        repne scasb                                     ; 1001A54C _ F2: AE
        inc     ecx                                     ; 1001A54E _ 41
        neg     ecx                                     ; 1001A54F _ F7. D9
        dec     edi                                     ; 1001A551 _ 4F
        mov     al, byte [ebp+0CH]                      ; 1001A552 _ 8A. 45, 0C
        std                                             ; 1001A555 _ FD
        repne scasb                                     ; 1001A556 _ F2: AE
        inc     edi                                     ; 1001A558 _ 47
        cmp     byte [edi], al                          ; 1001A559 _ 38. 07
        jz      ?_3074                                  ; 1001A55B _ 74, 04
        xor     eax, eax                                ; 1001A55D _ 33. C0
        jmp     ?_3075                                  ; 1001A55F _ EB, 02

?_3074: mov     eax, edi                                ; 1001A561 _ 8B. C7
?_3075: cld                                             ; 1001A563 _ FC
        pop     edi                                     ; 1001A564 _ 5F
        leave                                           ; 1001A565 _ C9
        ret                                             ; 1001A566 _ C3
