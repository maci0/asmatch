; ---- 1000C636 ----
?_1324: ; Local function
        lea     ecx, [eax+eax*2]                        ; 1000C636 _ 8D. 0C 40
        lea     edx, [ecx+ecx*4]                        ; 1000C639 _ 8D. 14 89
        lea     ecx, [eax+edx*4]                        ; 1000C63C _ 8D. 0C 90
        mov     edx, 14                                 ; 1000C63F _ BA, 0000000E
        shl     ecx, 2                                  ; 1000C644 _ C1. E1, 02
        lea     eax, [?_5252+ecx]                       ; 1000C647 _ 8D. 81, 1002A200(d)
?_1325: fld     dword [eax-4H]                          ; 1000C64D _ D9. 40, FC
        fmul    qword [?_4922]                          ; 1000C650 _ DC. 0D, 100256D0(d)
        fstp    dword [eax]                             ; 1000C656 _ D9. 18
        add     eax, 12                                 ; 1000C658 _ 83. C0, 0C
        dec     edx                                     ; 1000C65B _ 4A
        jnz     ?_1325                                  ; 1000C65C _ 75, EF
        mov     byte [?_5253+ecx], 1                    ; 1000C65E _ C6. 81, 1002A2C2(d), 01
        lea     eax, [?_5251+ecx]                       ; 1000C665 _ 8D. 81, 1002A1D0(d)
        pop     ebx                                     ; 1000C66B _ 5B
        ret                                             ; 1000C66C _ C3

        nop                                             ; 1000C66D _ 90
        nop                                             ; 1000C66E _ 90
        nop                                             ; 1000C66F _ 90
?_1326: mov     edx, dword [esp+4H]                     ; 1000C670 _ 8B. 54 24, 04
        xor     ecx, ecx                                ; 1000C674 _ 33. C9
        mov     eax, ?_5254                             ; 1000C676 _ B8, 1002C050(d)
?_1327: cmp     dword [eax], edx                        ; 1000C67B _ 39. 10
        jz      ?_1328                                  ; 1000C67D _ 74, 0E
        add     eax, 92                                 ; 1000C67F _ 83. C0, 5C
        inc     ecx                                     ; 1000C682 _ 41
        cmp     eax, ?_5255                             ; 1000C683 _ 3D, 1002C3E8(d)
        jl      ?_1327                                  ; 1000C688 _ 7C, F1
        xor     eax, eax                                ; 1000C68A _ 33. C0
        ret                                             ; 1000C68C _ C3
