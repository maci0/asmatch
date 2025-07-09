; ---- 1001ADD6 ----
?_3185: ; Local function
        push    esi                                     ; 1001ADD6 _ 56
        mov     esi, dword [esp+0CH]                    ; 1001ADD7 _ 8B. 74 24, 0C
        push    edi                                     ; 1001ADDB _ 57
        push    esi                                     ; 1001ADDC _ 56
        call    ?_3366                                  ; 1001ADDD _ E8, 00000D7E
        dec     dword [esi+4H]                          ; 1001ADE2 _ FF. 4E, 04
        pop     ecx                                     ; 1001ADE5 _ 59
        js      ?_3186                                  ; 1001ADE6 _ 78, 0F
        mov     ecx, dword [esi]                        ; 1001ADE8 _ 8B. 0E
        mov     al, byte [esp+0CH]                      ; 1001ADEA _ 8A. 44 24, 0C
        movzx   edi, al                                 ; 1001ADEE _ 0F B6. F8
        mov     byte [ecx], al                          ; 1001ADF1 _ 88. 01
        inc     dword [esi]                             ; 1001ADF3 _ FF. 06
        jmp     ?_3187                                  ; 1001ADF5 _ EB, 0E

?_3186: push    esi                                     ; 1001ADF7 _ 56
        push    dword [esp+10H]                         ; 1001ADF8 _ FF. 74 24, 10
        call    ?_3427                                  ; 1001ADFC _ E8, 00001282
        pop     ecx                                     ; 1001AE01 _ 59
        mov     edi, eax                                ; 1001AE02 _ 8B. F8
        pop     ecx                                     ; 1001AE04 _ 59
?_3187: push    esi                                     ; 1001AE05 _ 56
        call    ?_3370                                  ; 1001AE06 _ E8, 00000DA7
        pop     ecx                                     ; 1001AE0B _ 59
        mov     eax, edi                                ; 1001AE0C _ 8B. C7
        pop     edi                                     ; 1001AE0E _ 5F
        pop     esi                                     ; 1001AE0F _ 5E
        ret                                             ; 1001AE10 _ C3

        int 3    ; breakpoint or filler                 ; 1001AE11 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE12 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE13 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE14 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE15 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE16 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE17 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE18 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE19 _ CC
        int 3    ; breakpoint or filler                 ; 1001AE1A _ CC
        int 3    ; breakpoint or filler                 ; 1001AE1B _ CC
        int 3    ; breakpoint or filler                 ; 1001AE1C _ CC
        int 3    ; breakpoint or filler                 ; 1001AE1D _ CC
        int 3    ; breakpoint or filler                 ; 1001AE1E _ CC
        int 3    ; breakpoint or filler                 ; 1001AE1F _ CC
