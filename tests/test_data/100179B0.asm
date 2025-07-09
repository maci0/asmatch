; ---- 100179B0 ----
?_2693: ; Local function
        mov     ecx, dword [esp+4H]                     ; 100179B0 _ 8B. 4C 24, 04
        mov     edx, dword [?_5668]                     ; 100179B4 _ 8B. 15, 100A8C30(d)
        add     edx, ecx                                ; 100179BA _ 03. D1
        lea     eax, [ecx+ecx*2]                        ; 100179BC _ 8D. 04 49
        shl     eax, 4                                  ; 100179BF _ C1. E0, 04
        add     eax, ecx                                ; 100179C2 _ 03. C1
        xor     ecx, ecx                                ; 100179C4 _ 33. C9
        lea     eax, [eax+eax*2]                        ; 100179C6 _ 8D. 04 40
        mov     cl, byte [edx+eax*4]                    ; 100179C9 _ 8A. 0C 82
        mov     eax, ecx                                ; 100179CC _ 8B. C1
        dec     eax                                     ; 100179CE _ 48
        cmp     eax, 32                                 ; 100179CF _ 83. F8, 20
        ja      ?_2703                                  ; 100179D2 _ 77, 45
        xor     edx, edx                                ; 100179D4 _ 33. D2
        mov     dl, byte [?_2705+eax]                   ; 100179D6 _ 8A. 90, 10017A44(d)
        jmp     near [?_2704+edx*4]                     ; 100179DC _ FF. 24 95, 10017A1C(d)

?_2694: mov     eax, 2                                  ; 100179E3 _ B8, 00000002
        ret                                             ; 100179E8 _ C3

?_2695: mov     eax, 7                                  ; 100179E9 _ B8, 00000007
        ret                                             ; 100179EE _ C3

?_2696: mov     eax, 8                                  ; 100179EF _ B8, 00000008
        ret                                             ; 100179F4 _ C3

?_2697: mov     eax, 1                                  ; 100179F5 _ B8, 00000001
        ret                                             ; 100179FA _ C3

?_2698: mov     eax, 3                                  ; 100179FB _ B8, 00000003
        ret                                             ; 10017A00 _ C3

?_2699: mov     eax, 4                                  ; 10017A01 _ B8, 00000004
        ret                                             ; 10017A06 _ C3

?_2700: mov     eax, 5                                  ; 10017A07 _ B8, 00000005
        ret                                             ; 10017A0C _ C3

?_2701: mov     eax, 6                                  ; 10017A0D _ B8, 00000006
        ret                                             ; 10017A12 _ C3

?_2702: mov     eax, 9                                  ; 10017A13 _ B8, 00000009
        ret                                             ; 10017A18 _ C3
