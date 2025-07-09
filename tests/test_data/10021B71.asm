; ---- 10021B71 ----
?_4508: ; Local function
        mov     esi, dword [ebp+8H]                     ; 10021B71 _ 8B. 75, 08
        or      ecx, 0FFFFFFFFH                         ; 10021B74 _ 83. C9, FF
        nop                                             ; 10021B77 _ 90
?_4509: inc     ecx                                     ; 10021B78 _ 41
        mov     al, byte [esi]                          ; 10021B79 _ 8A. 06
        or      al, al                                  ; 10021B7B _ 0A. C0
        jz      ?_4510                                  ; 10021B7D _ 74, 07
        inc     esi                                     ; 10021B7F _ 46
        bt      dword [esp], eax                        ; 10021B80 _ 0F A3. 04 24
        jnc     ?_4509                                  ; 10021B84 _ 73, F2
?_4510: mov     eax, ecx                                ; 10021B86 _ 8B. C1
        add     esp, 32                                 ; 10021B88 _ 83. C4, 20
        pop     esi                                     ; 10021B8B _ 5E
        leave                                           ; 10021B8C _ C9
        ret                                             ; 10021B8D _ C3

        int 3    ; breakpoint or filler                 ; 10021B8E _ CC
        int 3    ; breakpoint or filler                 ; 10021B8F _ CC
        push    ebp                                     ; 10021B90 _ 55
        mov     ebp, esp                                ; 10021B91 _ 8B. EC
        push    esi                                     ; 10021B93 _ 56
        xor     eax, eax                                ; 10021B94 _ 33. C0
        push    eax                                     ; 10021B96 _ 50
        push    eax                                     ; 10021B97 _ 50
        push    eax                                     ; 10021B98 _ 50
        push    eax                                     ; 10021B99 _ 50
        push    eax                                     ; 10021B9A _ 50
        push    eax                                     ; 10021B9B _ 50
        push    eax                                     ; 10021B9C _ 50
        push    eax                                     ; 10021B9D _ 50
        mov     edx, dword [ebp+0CH]                    ; 10021B9E _ 8B. 55, 0C
; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4
?_4511: mov     al, byte [edx]                          ; 10021BA4 _ 8A. 02
        or      al, al                                  ; 10021BA6 _ 0A. C0
        jz      ?_4512                                  ; 10021BA8 _ 74, 07
        inc     edx                                     ; 10021BAA _ 42
        bts     dword [esp], eax                        ; 10021BAB _ 0F AB. 04 24
        jmp     ?_4511                                  ; 10021BAF _ EB, F3
