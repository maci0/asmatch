; ---- 10017AB9 ----
?_2711: ; Local function
        xor     ecx, ecx                                ; 10017AB9 _ 33. C9
        mov     edx, dword [?_5668]                     ; 10017ABB _ 8B. 15, 100A8C30(d)
        mov     cl, byte [eax]                          ; 10017AC1 _ 8A. 08
        add     edx, ecx                                ; 10017AC3 _ 03. D1
        lea     eax, [ecx+ecx*2]                        ; 10017AC5 _ 8D. 04 49
        shl     eax, 4                                  ; 10017AC8 _ C1. E0, 04
        add     eax, ecx                                ; 10017ACB _ 03. C1
        lea     eax, [eax+eax*2]                        ; 10017ACD _ 8D. 04 40
        lea     eax, [edx+eax*4]                        ; 10017AD0 _ 8D. 04 82
        mov     al, byte [eax]                          ; 10017AD3 _ 8A. 00
        cmp     al, 11                                  ; 10017AD5 _ 3C, 0B
        jz      ?_2712                                  ; 10017AD7 _ 74, 1B
        cmp     al, 13                                  ; 10017AD9 _ 3C, 0D
        jz      ?_2712                                  ; 10017ADB _ 74, 17
        cmp     al, 12                                  ; 10017ADD _ 3C, 0C
        jz      ?_2712                                  ; 10017ADF _ 74, 13
        cmp     al, 16                                  ; 10017AE1 _ 3C, 10
        jz      ?_2712                                  ; 10017AE3 _ 74, 0F
        cmp     al, 28                                  ; 10017AE5 _ 3C, 1C
        jz      ?_2712                                  ; 10017AE7 _ 74, 0B
        cmp     al, 29                                  ; 10017AE9 _ 3C, 1D
        jz      ?_2712                                  ; 10017AEB _ 74, 07
        cmp     al, 31                                  ; 10017AED _ 3C, 1F
        jz      ?_2712                                  ; 10017AEF _ 74, 03
        xor     eax, eax                                ; 10017AF1 _ 33. C0
        ret                                             ; 10017AF3 _ C3

