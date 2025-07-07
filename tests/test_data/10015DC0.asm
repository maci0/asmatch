; ---- 10015DC0 ----
?_2414: ; Local function
        mov     edx, dword [esp+4H]                     ; 10015DC0 _ 8B. 54 24, 04
        push    esi                                     ; 10015DC4 _ 56
        mov     esi, dword [?_5669]                     ; 10015DC5 _ 8B. 35, 100A8C34(d)
        xor     eax, eax                                ; 10015DCB _ 33. C0
        mov     ecx, esi                                ; 10015DCD _ 8B. CE
?_2415: cmp     word [ecx], 0                           ; 10015DCF _ 66: 83. 39, 00
        jz      ?_2416                                  ; 10015DD3 _ 74, 05
        cmp     dword [ecx+2H], edx                     ; 10015DD5 _ 39. 51, 02
        jz      ?_2417                                  ; 10015DD8 _ 74, 0F
?_2416: inc     eax                                     ; 10015DDA _ 40
        add     ecx, 67                                 ; 10015DDB _ 83. C1, 43
        cmp     eax, 20488                              ; 10015DDE _ 3D, 00005008
        jl      ?_2415                                  ; 10015DE3 _ 7C, EA
        xor     eax, eax                                ; 10015DE5 _ 33. C0
        pop     esi                                     ; 10015DE7 _ 5E
        ret                                             ; 10015DE8 _ C3

