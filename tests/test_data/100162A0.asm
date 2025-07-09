; ---- 100162A0 ----
?_2462: ; Local function
        mov     dl, byte [?_5540]                       ; 100162A0 _ 8A. 15, 10035454(d)
        push    ebp                                     ; 100162A6 _ 55
        push    esi                                     ; 100162A7 _ 56
        push    edi                                     ; 100162A8 _ 57
        test    dl, dl                                  ; 100162A9 _ 84. D2
        jz      ?_2463                                  ; 100162AB _ 74, 2E
        mov     dl, byte [?_5543]                       ; 100162AD _ 8A. 15, 1003545D(d)
        mov     byte [?_5540], 0                        ; 100162B3 _ C6. 05, 10035454(d), 00
        test    dl, dl                                  ; 100162BA _ 84. D2
        jz      ?_2463                                  ; 100162BC _ 74, 1D
        mov     edx, dword [eax+14H]                    ; 100162BE _ 8B. 50, 14
        test    edx, edx                                ; 100162C1 _ 85. D2
        jz      ?_2463                                  ; 100162C3 _ 74, 16
        mov     edi, dword [?_5670]                     ; 100162C5 _ 8B. 3D, 100A8C38(d)
        mov     dword [?_5689+edi*4], edx               ; 100162CB _ 89. 14 BD, 101398A0(d)
        inc     edi                                     ; 100162D2 _ 47
        mov     dword [?_5670], edi                     ; 100162D3 _ 89. 3D, 100A8C38(d)
        jmp     ?_2464                                  ; 100162D9 _ EB, 06

?_2463: mov     edi, dword [?_5670]                     ; 100162DB _ 8B. 3D, 100A8C38(d)
?_2464: mov     edx, dword [?_5541]                     ; 100162E1 _ 8B. 15, 10035458(d)
        mov     esi, dword [?_5539]                     ; 100162E7 _ 8B. 35, 10035450(d)
        cmp     edx, esi                                ; 100162ED _ 3B. D6
        jge     ?_2481                                  ; 100162EF _ 0F 8D, 00000164
        mov     bp, word [?_5389]                       ; 100162F5 _ 66: 8B. 2D, 10030B9C(d)
?_2465: test    eax, eax                                ; 100162FC _ 85. C0
        je      ?_2481                                  ; 100162FE _ 0F 84, 00000155
        test    cl, cl                                  ; 10016304 _ 84. C9
        jne     ?_2481                                  ; 10016306 _ 0F 85, 0000014D
        cmp     word [eax], 0                           ; 1001630C _ 66: 83. 38, 00
        jnz     ?_2467                                  ; 10016310 _ 75, 0E
?_2466: add     eax, 67                                 ; 10016312 _ 83. C0, 43
        mov     dword [?_5546], eax                     ; 10016315 _ A3, 10035468(d)
        cmp     word [eax], 0                           ; 1001631A _ 66: 83. 38, 00
        jz      ?_2466                                  ; 1001631E _ 74, F2
?_2467: mov     dl, byte [?_5544]                       ; 10016320 _ 8A. 15, 1003545E(d)
        test    dl, dl                                  ; 10016326 _ 84. D2
        jz      ?_2468                                  ; 10016328 _ 74, 02
        mov     cl, 1                                   ; 1001632A _ B1, 01
?_2468: mov     edx, dword [?_5387]                     ; 1001632C _ 8B. 15, 10030B94(d)
        cmp     edx, 32767                              ; 10016332 _ 81. FA, 00007FFF
        jz      ?_2469                                  ; 10016338 _ 74, 0B
        xor     ecx, ecx                                ; 1001633A _ 33. C9
        mov     cx, word [eax]                          ; 1001633C _ 66: 8B. 08
        cmp     ecx, edx                                ; 1001633F _ 3B. CA
        jnz     ?_2471                                  ; 10016341 _ 75, 3F
        mov     cl, 1                                   ; 10016343 _ B1, 01
?_2469: mov     edx, dword [?_5388]                     ; 10016345 _ 8B. 15, 10030B98(d)
        cmp     edx, -1                                 ; 1001634B _ 83. FA, FF
        jz      ?_2470                                  ; 1001634E _ 74, 07
        cmp     dword [eax+2H], edx                     ; 10016350 _ 39. 50, 02
        jnz     ?_2471                                  ; 10016353 _ 75, 2D
        mov     cl, 1                                   ; 10016355 _ B1, 01
?_2470:
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     bp, -1                                  ; 10016357 _ 66: 81. FD, FFFF
        jz      ?_2473                                  ; 1001635C _ 74, 37
        push    eax                                     ; 1001635E _ 50
        call    ?_2960                                  ; 1001635F _ E8, 000037DC
        mov     bp, word [?_5389]                       ; 10016364 _ 66: 8B. 2D, 10030B9C(d)
        add     esp, 4                                  ; 1001636B _ 83. C4, 04
        cmp     ax, bp                                  ; 1001636E _ 66: 3B. C5
        jnz     ?_2472                                  ; 10016371 _ 75, 13
        mov     eax, dword [?_5546]                     ; 10016373 _ A1, 10035468(d)
        mov     edi, dword [?_5670]                     ; 10016378 _ 8B. 3D, 100A8C38(d)
        mov     cl, 1                                   ; 1001637E _ B1, 01
        jmp     ?_2473                                  ; 10016380 _ EB, 13

?_2471: xor     cl, cl                                  ; 10016382 _ 32. C9
        jmp     ?_2474                                  ; 10016384 _ EB, 36

?_2472: mov     eax, dword [?_5546]                     ; 10016386 _ A1, 10035468(d)
        mov     edi, dword [?_5670]                     ; 1001638B _ 8B. 3D, 100A8C38(d)
        xor     cl, cl                                  ; 10016391 _ 32. C9
        jmp     ?_2474                                  ; 10016393 _ EB, 27

?_2473: cmp     byte [?_5390], -1                       ; 10016395 _ 80. 3D, 10030B9E(d), FF
        jz      ?_2474                                  ; 1001639C _ 74, 1E
        mov     esi, dword [?_5693]                     ; 1001639E _ 8B. 35, 101DE450(d)
        xor     ecx, ecx                                ; 100163A4 _ 33. C9
        mov     cx, word [eax]                          ; 100163A6 _ 66: 8B. 08
        mov     edx, ecx                                ; 100163A9 _ 8B. D1
        shl     edx, 6                                  ; 100163AB _ C1. E2, 06
        add     esi, edx                                ; 100163AE _ 03. F2
        mov     dl, byte [?_5390]                       ; 100163B0 _ 8A. 15, 10030B9E(d)
        cmp     byte [ecx+esi], dl                      ; 100163B6 _ 38. 14 31
        sete    cl                                      ; 100163B9 _ 0F 94. C1
?_2474: mov     dl, byte [?_5542]                       ; 100163BC _ 8A. 15, 1003545C(d)
        test    dl, dl                                  ; 100163C2 _ 84. D2
        jz      ?_2476                                  ; 100163C4 _ 74, 1D
        test    cl, cl                                  ; 100163C6 _ 84. C9
        jz      ?_2475                                  ; 100163C8 _ 74, 02
        mov     ebx, eax                                ; 100163CA _ 8B. D8
?_2475: mov     edx, dword [?_5541]                     ; 100163CC _ 8B. 15, 10035458(d)
        add     eax, 67                                 ; 100163D2 _ 83. C0, 43
        inc     edx                                     ; 100163D5 _ 42
        mov     dword [?_5546], eax                     ; 100163D6 _ A3, 10035468(d)
        mov     dword [?_5541], edx                     ; 100163DB _ 89. 15, 10035458(d)
        jmp     ?_2480                                  ; 100163E1 _ EB, 62

?_2476: test    cl, cl                                  ; 100163E3 _ 84. C9
        jz      ?_2477                                  ; 100163E5 _ 74, 02
        mov     ebx, eax                                ; 100163E7 _ 8B. D8
?_2477: mov     eax, dword [eax+3FH]                    ; 100163E9 _ 8B. 40, 3F
        test    eax, eax                                ; 100163EC _ 85. C0
        mov     dword [?_5546], eax                     ; 100163EE _ A3, 10035468(d)
        jz      ?_2478                                  ; 100163F3 _ 74, 1A
        mov     esi, dword [eax+14H]                    ; 100163F5 _ 8B. 70, 14
        test    esi, esi                                ; 100163F8 _ 85. F6
        jz      ?_2480                                  ; 100163FA _ 74, 49
        mov     dl, byte [?_5543]                       ; 100163FC _ 8A. 15, 1003545D(d)
        test    dl, dl                                  ; 10016402 _ 84. D2
        jz      ?_2480                                  ; 10016404 _ 74, 3F
        mov     dword [?_5689+edi*4], esi               ; 10016406 _ 89. 34 BD, 101398A0(d)
        jmp     ?_2479                                  ; 1001640D _ EB, 2F

?_2478: mov     dl, byte [?_5543]                       ; 1001640F _ 8A. 15, 1003545D(d)
        test    dl, dl                                  ; 10016415 _ 84. D2
        jz      ?_2480                                  ; 10016417 _ 74, 2C
        test    edi, edi                                ; 10016419 _ 85. FF
        jz      ?_2480                                  ; 1001641B _ 74, 28
        mov     eax, dword [?_5688+edi*4]               ; 1001641D _ 8B. 04 BD, 1013989C(d)
        dec     edi                                     ; 10016424 _ 4F
        mov     dword [?_5670], edi                     ; 10016425 _ 89. 3D, 100A8C38(d)
        mov     dword [?_5546], eax                     ; 1001642B _ A3, 10035468(d)
        mov     edx, dword [eax+14H]                    ; 10016430 _ 8B. 50, 14
        test    edx, edx                                ; 10016433 _ 85. D2
        jz      ?_2480                                  ; 10016435 _ 74, 0E
        mov     dword [?_5689+edi*4], edx               ; 10016437 _ 89. 14 BD, 101398A0(d)
?_2479: inc     edi                                     ; 1001643E _ 47
        mov     dword [?_5670], edi                     ; 1001643F _ 89. 3D, 100A8C38(d)
?_2480: mov     edx, dword [?_5539]                     ; 10016445 _ 8B. 15, 10035450(d)
        mov     esi, dword [?_5541]                     ; 1001644B _ 8B. 35, 10035458(d)
        cmp     esi, edx                                ; 10016451 _ 3B. F2
        jl      ?_2465                                  ; 10016453 _ 0F 8C, FFFFFEA3
?_2481: pop     edi                                     ; 10016459 _ 5F
        pop     esi                                     ; 1001645A _ 5E
        mov     eax, ebx                                ; 1001645B _ 8B. C3
        pop     ebp                                     ; 1001645D _ 5D
        pop     ebx                                     ; 1001645E _ 5B
        ret                                             ; 1001645F _ C3
