; ---- 1000353E ----
?_0260: ; Local function
        mov     eax, dword [?_5512]                     ; 1000353E _ A1, 10034618(d)
        test    eax, eax                                ; 10003543 _ 85. C0
        jz      ?_0259                                  ; 10003545 _ 74, F6
        test    al, 0FH                                 ; 10003547 _ A8, 0F
        jz      ?_0261                                  ; 10003549 _ 74, 26
        mov     eax, dword [esp+0CH]                    ; 1000354B _ 8B. 44 24, 0C
        mov     ecx, dword [esp+8H]                     ; 1000354F _ 8B. 4C 24, 08
        mov     edx, dword [esp+4H]                     ; 10003553 _ 8B. 54 24, 04
        push    eax                                     ; 10003557 _ 50
        push    ecx                                     ; 10003558 _ 51
        push    edx                                     ; 10003559 _ 52
        push    ?_5107                                  ; 1000355A _ 68, 100273E0(d)
        push    ?_5787                                  ; 1000355F _ 68, 117640E0(d)
        call    ?_3039                                  ; 10003564 _ E8, 00016D30
        add     esp, 20                                 ; 10003569 _ 83. C4, 14
        mov     eax, dword [?_5512]                     ; 1000356C _ A1, 10034618(d)
?_0261: test    al, 0DH                                 ; 10003571 _ A8, 0D
        jz      ?_0262                                  ; 10003573 _ 74, 15
        push    1                                       ; 10003575 _ 6A, 01
        push    eax                                     ; 10003577 _ 50
        push    ?_5787                                  ; 10003578 _ 68, 117640E0(d)
        call    ?_0154                                  ; 1000357D _ E8, FFFFF0BE
        mov     eax, dword [?_5512]                     ; 10003582 _ A1, 10034618(d)
        add     esp, 12                                 ; 10003587 _ 83. C4, 0C
?_0262: test    al, 02H                                 ; 1000358A _ A8, 02
        jz      ?_0259                                  ; 1000358C _ 74, AF
        mov     eax, dword [?_5788]                     ; 1000358E _ A1, 117660E0(d)
        push    292                                     ; 10003593 _ 68, 00000124
        push    ?_5106                                  ; 10003598 _ 68, 100273C4(d)
        push    ?_5787                                  ; 1000359D _ 68, 117640E0(d)
        push    eax                                     ; 100035A2 _ 50
        call    near [imp_MessageBoxA]                  ; 100035A3 _ FF. 15, 10024148(d)
        cmp     eax, 6                                  ; 100035A9 _ 83. F8, 06
        jnz     ?_0259                                  ; 100035AC _ 75, 8F
        call    near [?_5510]                           ; 100035AE _ FF. 15, 10034610(d)
        push    15                                      ; 100035B4 _ 6A, 0F
        call    ?_3085                                  ; 100035B6 _ E8, 000170B5
        nop                                             ; 100035BB _ 90
        nop                                             ; 100035BC _ 90
        nop                                             ; 100035BD _ 90
        nop                                             ; 100035BE _ 90
        nop                                             ; 100035BF _ 90
?_0263: mov     eax, dword [?_5510]                     ; 100035C0 _ A1, 10034610(d)
        push    esi                                     ; 100035C5 _ 56
        test    eax, eax                                ; 100035C6 _ 85. C0
        jnz     ?_0264                                  ; 100035C8 _ 75, 19
        push    65584                                   ; 100035CA _ 68, 00010030
        push    ?_5109                                  ; 100035CF _ 68, 10027424(d)
        push    ?_5108                                  ; 100035D4 _ 68, 100273FC(d)
        push    0                                       ; 100035D9 _ 6A, 00
        call    near [imp_MessageBoxA]                  ; 100035DB _ FF. 15, 10024148(d)
        pop     esi                                     ; 100035E1 _ 5E
        ret                                             ; 100035E2 _ C3
