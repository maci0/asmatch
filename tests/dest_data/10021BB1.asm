; ---- 10021BB1 ----
?_4512: ; Local function
        mov     esi, dword [ebp+8H]                     ; 10021BB1 _ 8B. 75, 08
?_4513: mov     al, byte [esi]                          ; 10021BB4 _ 8A. 06
        or      al, al                                  ; 10021BB6 _ 0A. C0
        jz      ?_4514                                  ; 10021BB8 _ 74, 0A
        inc     esi                                     ; 10021BBA _ 46
        bt      dword [esp], eax                        ; 10021BBB _ 0F A3. 04 24
        jnc     ?_4513                                  ; 10021BBF _ 73, F3
        lea     eax, [esi-1H]                           ; 10021BC1 _ 8D. 46, FF
?_4514: add     esp, 32                                 ; 10021BC4 _ 83. C4, 20
        pop     esi                                     ; 10021BC7 _ 5E
        leave                                           ; 10021BC8 _ C9
        ret                                             ; 10021BC9 _ C3

