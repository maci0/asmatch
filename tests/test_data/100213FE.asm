; ---- 100213FE ----
?_4426: ; Local function
        push    ebx                                     ; 100213FE _ 53
        xor     ebx, ebx                                ; 100213FF _ 33. DB
        cmp     dword [?_5589], ebx                     ; 10021401 _ 39. 1D, 100355BC(d)
        jnz     ?_4427                                  ; 10021407 _ 75, 13
        mov     eax, dword [esp+8H]                     ; 10021409 _ 8B. 44 24, 08
        cmp     eax, 65                                 ; 1002140D _ 83. F8, 41
        jl      ?_4431                                  ; 10021410 _ 7C, 59
        cmp     eax, 90                                 ; 10021412 _ 83. F8, 5A
        jg      ?_4431                                  ; 10021415 _ 7F, 54
        add     eax, 32                                 ; 10021417 _ 83. C0, 20
        pop     ebx                                     ; 1002141A _ 5B
        ret                                             ; 1002141B _ C3

?_4427: push    esi                                     ; 1002141C _ 56
        mov     esi, ?_5799                             ; 1002141D _ BE, 1176642C(d)
        push    edi                                     ; 10021422 _ 57
        push    esi                                     ; 10021423 _ 56
        call    near [imp_InterlockedIncrement]         ; 10021424 _ FF. 15, 100240D8(d)
        cmp     dword [?_5798], ebx                     ; 1002142A _ 39. 1D, 11766428(d)
        mov     edi, dword [imp_InterlockedDecrement]   ; 10021430 _ 8B. 3D, 100240D4(d)
        jz      ?_4428                                  ; 10021436 _ 74, 0E
        push    esi                                     ; 10021438 _ 56
        call    edi                                     ; 10021439 _ FF. D7
        push    19                                      ; 1002143B _ 6A, 13
        call    ?_3610                                  ; 1002143D _ E8, FFFFBBF4
        pop     ecx                                     ; 10021442 _ 59
        push    1                                       ; 10021443 _ 6A, 01
        pop     ebx                                     ; 10021445 _ 5B
?_4428: push    dword [esp+10H]                         ; 10021446 _ FF. 74 24, 10
        call    ?_4432                                  ; 1002144A _ E8, 0000001E
        test    ebx, ebx                                ; 1002144F _ 85. DB
        pop     ecx                                     ; 10021451 _ 59
        mov     dword [esp+10H], eax                    ; 10021452 _ 89. 44 24, 10
        jz      ?_4429                                  ; 10021456 _ 74, 0A
        push    19                                      ; 10021458 _ 6A, 13
        call    ?_3615                                  ; 1002145A _ E8, FFFFBC38
        pop     ecx                                     ; 1002145F _ 59
        jmp     ?_4430                                  ; 10021460 _ EB, 03

?_4429: push    esi                                     ; 10021462 _ 56
        call    edi                                     ; 10021463 _ FF. D7
?_4430: mov     eax, dword [esp+10H]                    ; 10021465 _ 8B. 44 24, 10
        pop     edi                                     ; 10021469 _ 5F
        pop     esi                                     ; 1002146A _ 5E
?_4431: pop     ebx                                     ; 1002146B _ 5B
        ret                                             ; 1002146C _ C3
