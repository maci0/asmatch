; ---- 10017A19 ----
?_2703: ; Local function
        xor     eax, eax                                ; 10017A19 _ 33. C0
        ret                                             ; 10017A1B _ C3

?_2704:                                                 ; switch/case jump table
        dd ?_2698                                       ; 10017A1C _ 100179FB (d)
        dd ?_2701                                       ; 10017A20 _ 10017A0D (d)
        dd ?_2696                                       ; 10017A24 _ 100179EF (d)
        dd ?_2699                                       ; 10017A28 _ 10017A01 (d)
        dd ?_2697                                       ; 10017A2C _ 100179F5 (d)
        dd ?_2694                                       ; 10017A30 _ 100179E3 (d)
        dd ?_2695                                       ; 10017A34 _ 100179E9 (d)
        dd ?_2700                                       ; 10017A38 _ 10017A07 (d)
        dd ?_2702                                       ; 10017A3C _ 10017A13 (d)
        dd ?_2703                                       ; 10017A40 _ 10017A19 (d)

?_2705: db 00H, 01H, 00H, 02H, 02H, 00H, 03H, 04H       ; 10017A44 _ ........
        db 02H, 09H, 05H, 05H, 05H, 04H, 00H, 09H       ; 10017A4C _ ........
        db 09H, 04H, 06H, 04H, 04H, 04H, 07H, 07H       ; 10017A54 _ ........
        db 07H, 07H, 09H, 09H, 04H, 01H, 04H, 04H       ; 10017A5C _ ........
        db 08H, 90H, 90H, 90H, 90H, 90H, 90H, 90H       ; 10017A64 _ ........
        db 90H, 90H, 90H, 90H                           ; 10017A6C _ ....
?_2706: mov     edx, dword [esp+4H]                     ; 10017A70 _ 8B. 54 24, 04
        push    esi                                     ; 10017A74 _ 56
        mov     esi, dword [?_5690]                     ; 10017A75 _ 8B. 35, 1014D8C0(d)
        xor     eax, eax                                ; 10017A7B _ 33. C0
        mov     ecx, esi                                ; 10017A7D _ 8B. CE
?_2707: cmp     byte [ecx], 0                           ; 10017A7F _ 80. 39, 00
        jz      ?_2708                                  ; 10017A82 _ 74, 05
        cmp     dword [ecx+1H], edx                     ; 10017A84 _ 39. 51, 01
        jz      ?_2709                                  ; 10017A87 _ 74, 12
?_2708: inc     eax                                     ; 10017A89 _ 40
        add     ecx, 169                                ; 10017A8A _ 81. C1, 000000A9
        cmp     eax, 256                                ; 10017A90 _ 3D, 00000100
        jl      ?_2707                                  ; 10017A95 _ 7C, E8
        pop     esi                                     ; 10017A97 _ 5E
        xor     eax, eax                                ; 10017A98 _ 33. C0
        ret                                             ; 10017A9A _ C3
