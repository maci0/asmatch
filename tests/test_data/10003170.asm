; ---- 10003170 ----
?_0233: ; Local function
        sub     esp, 28                                 ; 10003170 _ 83. EC, 1C
; Note: Zero displacement could be omitted
        lea     eax, [esp]                              ; 10003173 _ 8D. 44 24, 00
        push    28                                      ; 10003177 _ 6A, 1C
        push    eax                                     ; 10003179 _ 50
        push    ?_0233                                  ; 1000317A _ 68, 10003170(d)
        call    near [imp_VirtualQuery]                 ; 1000317F _ FF. 15, 10024018(d)
        mov     ecx, dword [esp+20H]                    ; 10003185 _ 8B. 4C 24, 20
        and     ecx, 0FFH                               ; 10003189 _ 81. E1, 000000FF
        lea     eax, [ecx-2H]                           ; 1000318F _ 8D. 41, FE
        cmp     eax, 126                                ; 10003192 _ 83. F8, 7E
        ja      ?_0237                                  ; 10003195 _ 77, 32
        xor     edx, edx                                ; 10003197 _ 33. D2
        mov     dl, byte [?_0239+eax]                   ; 10003199 _ 8A. 90, 100031DC(d)
        jmp     near [?_0238+edx*4]                     ; 1000319F _ FF. 24 95, 100031D0(d)

?_0234: mov     eax, dword [esp+14H]                    ; 100031A6 _ 8B. 44 24, 14
        cmp     eax, 2                                  ; 100031AA _ 83. F8, 02
        jz      ?_0235                                  ; 100031AD _ 74, 0B
        cmp     eax, 4                                  ; 100031AF _ 83. F8, 04
        jz      ?_0235                                  ; 100031B2 _ 74, 06
        xor     eax, eax                                ; 100031B4 _ 33. C0
        add     esp, 28                                 ; 100031B6 _ 83. C4, 1C
        ret                                             ; 100031B9 _ C3

?_0235: mov     eax, 1                                  ; 100031BA _ B8, 00000001
        add     esp, 28                                 ; 100031BF _ 83. C4, 1C
        ret                                             ; 100031C2 _ C3

?_0236: mov     al, 1                                   ; 100031C3 _ B0, 01
        add     esp, 28                                 ; 100031C5 _ 83. C4, 1C
        ret                                             ; 100031C8 _ C3
