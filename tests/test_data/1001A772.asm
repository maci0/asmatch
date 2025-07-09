; ---- 1001A772 ----
?_3102: ; Local function
        push    esi                                     ; 1001A772 _ 56
        call    ?_3108                                  ; 1001A773 _ E8, 00000076
        mov     ecx, dword [esp+8H]                     ; 1001A778 _ 8B. 4C 24, 08
        xor     esi, esi                                ; 1001A77C _ 33. F6
        mov     dword [eax], ecx                        ; 1001A77E _ 89. 08
        mov     eax, ?_5441                             ; 1001A780 _ B8, 10031660(d)
?_3103: cmp     ecx, dword [eax]                        ; 1001A785 _ 3B. 08
        jz      ?_3104                                  ; 1001A787 _ 74, 22
        add     eax, 8                                  ; 1001A789 _ 83. C0, 08
        inc     esi                                     ; 1001A78C _ 46
        cmp     eax, ?_5443                             ; 1001A78D _ 3D, 100317C8(d)
        jl      ?_3103                                  ; 1001A792 _ 7C, F1
        cmp     ecx, 19                                 ; 1001A794 _ 83. F9, 13
        jc      ?_3105                                  ; 1001A797 _ 72, 22
        cmp     ecx, 36                                 ; 1001A799 _ 83. F9, 24
        ja      ?_3105                                  ; 1001A79C _ 77, 1D
        call    ?_3107                                  ; 1001A79E _ E8, 00000042
        mov     dword [eax], 13                         ; 1001A7A3 _ C7. 00, 0000000D
        pop     esi                                     ; 1001A7A9 _ 5E
        ret                                             ; 1001A7AA _ C3

?_3104: call    ?_3107                                  ; 1001A7AB _ E8, 00000035
        mov     ecx, dword [?_5442+esi*8]               ; 1001A7B0 _ 8B. 0C F5, 10031664(d)
        pop     esi                                     ; 1001A7B7 _ 5E
        mov     dword [eax], ecx                        ; 1001A7B8 _ 89. 08
        ret                                             ; 1001A7BA _ C3
