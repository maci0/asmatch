; ---- 100093A0 ----
?_0955: ; Local function
        sub     esp, 484                                ; 100093A0 _ 81. EC, 000001E4
        push    ebx                                     ; 100093A6 _ 53
        push    ebp                                     ; 100093A7 _ 55
        push    esi                                     ; 100093A8 _ 56
        push    edi                                     ; 100093A9 _ 57
        push    260                                     ; 100093AA _ 68, 00000104
        push    ?_5753                                  ; 100093AF _ 68, 101DE9A0(d)
        push    0                                       ; 100093B4 _ 6A, 00
        call    near [imp_GetModuleFileNameA]           ; 100093B6 _ FF. 15, 1002403C(d)
        push    92                                      ; 100093BC _ 6A, 5C
        push    ?_5753                                  ; 100093BE _ 68, 101DE9A0(d)
        call    ?_3073                                  ; 100093C3 _ E8, 00011178
        mov     ecx, dword [?_5216]                     ; 100093C8 _ 8B. 0D, 1002993C(d)
        add     esp, 8                                  ; 100093CE _ 83. C4, 08
        mov     dword [eax], ecx                        ; 100093D1 _ 89. 08
        mov     edx, dword [?_5217]                     ; 100093D3 _ 8B. 15, 10029940(d)
        push    ?_5753                                  ; 100093D9 _ 68, 101DE9A0(d)
        mov     dword [eax+4H], edx                     ; 100093DE _ 89. 50, 04
        mov     cx, word [?_5218]                       ; 100093E1 _ 66: 8B. 0D, 10029944(d)
        push    7531                                    ; 100093E8 _ 68, 00001D6B
        push    ?_5215                                  ; 100093ED _ 68, 10029934(d)
        push    ?_5214                                  ; 100093F2 _ 68, 1002992C(d)
        mov     word [eax+8H], cx                       ; 100093F7 _ 66: 89. 48, 08
        call    near [imp_GetPrivateProfileIntA]        ; 100093FB _ FF. 15, 10024064(d)
        push    ?_5753                                  ; 10009401 _ 68, 101DE9A0(d)
        push    260                                     ; 10009406 _ 68, 00000104
        push    ?_5198                                  ; 1000940B _ 68, 10029594(d)
        push    ?_5213                                  ; 10009410 _ 68, 1002990C(d)
        push    ?_5212                                  ; 10009415 _ 68, 10029900(d)
        push    ?_5211                                  ; 1000941A _ 68, 100298F8(d)
        mov     dword [?_5775], eax                     ; 1000941F _ A3, 11764088(d)
        mov     dword [?_5774], 2                       ; 10009424 _ C7. 05, 11764084(d), 00000002
        call    near [imp_GetPrivateProfileStringA]     ; 1000942E _ FF. 15, 10024060(d)
        mov     ecx, 26                                 ; 10009434 _ B9, 0000001A
        lea     edi, [esp+148H]                         ; 10009439 _ 8D. BC 24, 00000148
        mov     esi, dword [esp+1F8H]                   ; 10009440 _ 8B. B4 24, 000001F8
        rep movsd                                       ; 10009447 _ F3: A5
        movsw                                           ; 10009449 _ 66: A5
        mov     ax, word [esp+14AH]                     ; 1000944B _ 66: 8B. 84 24, 0000014A
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 1                                   ; 10009453 _ 66: 3D, 0001
        jnz     ?_0956                                  ; 10009457 _ 75, 1D
        mov     byte [esp+16FH], 0                      ; 10009459 _ C6. 84 24, 0000016F, 00
        mov     edx, dword [esp+16EH]                   ; 10009461 _ 8B. 94 24, 0000016E
        and     edx, 0FFH                               ; 10009468 _ 81. E2, 000000FF
        mov     dword [?_5774], edx                     ; 1000946E _ 89. 15, 11764084(d)
        jmp     ?_0957                                  ; 10009474 _ EB, 1F

?_0956:
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 4                                   ; 10009476 _ 66: 3D, 0004
        jnz     ?_0957                                  ; 1000947A _ 75, 19
        mov     byte [esp+16FH], 0                      ; 1000947C _ C6. 84 24, 0000016F, 00
        mov     eax, dword [esp+16EH]                   ; 10009484 _ 8B. 84 24, 0000016E
        and     eax, 0FFH                               ; 1000948B _ 25, 000000FF
        mov     dword [?_5774], eax                     ; 10009490 _ A3, 11764084(d)
?_0957: call    ?_1037                                  ; 10009495 _ E8, 00000896
        mov     ecx, dword [?_5774]                     ; 1000949A _ 8B. 0D, 11764084(d)
        lea     edx, [esp+1B4H]                         ; 100094A0 _ 8D. 94 24, 000001B4
        push    ecx                                     ; 100094A7 _ 51
        push    ?_5210                                  ; 100094A8 _ 68, 100298D8(d)
        push    edx                                     ; 100094AD _ 52
        call    ?_3039                                  ; 100094AE _ E8, 00010DE6
        lea     eax, [esp+1C0H]                         ; 100094B3 _ 8D. 84 24, 000001C0
        push    1                                       ; 100094BA _ 6A, 01
        push    eax                                     ; 100094BC _ 50
        push    305                                     ; 100094BD _ 68, 00000131
        push    ?_5209                                  ; 100094C2 _ 68, 100298B0(d)
        call    ?_0267                                  ; 100094C7 _ E8, FFFFA174
        add     esp, 28                                 ; 100094CC _ 83. C4, 1C
        call    near [imp_timeGetTime]                  ; 100094CF _ FF. 15, 10024154(d)
        push    eax                                     ; 100094D5 _ 50
        call    ?_3296                                  ; 100094D6 _ E8, 0001205A
        add     esp, 4                                  ; 100094DB _ 83. C4, 04
        xor     ebp, ebp                                ; 100094DE _ 33. ED
        xor     edi, edi                                ; 100094E0 _ 33. FF
?_0958: mov     eax, dword [?_5526]                     ; 100094E2 _ A1, 10034680(d)
        test    eax, eax                                ; 100094E7 _ 85. C0
        jne     ?_0972                                  ; 100094E9 _ 0F 85, 00000121
        xor     ebx, ebx                                ; 100094EF _ 33. DB
        mov     eax, ?_5761                             ; 100094F1 _ B8, 101DEB00(d)
?_0959: cmp     dword [eax], 0                          ; 100094F6 _ 83. 38, 00
        jz      ?_0960                                  ; 100094F9 _ 74, 01
        inc     ebx                                     ; 100094FB _ 43
?_0960: add     eax, 2507364                            ; 100094FC _ 05, 00264264
        cmp     eax, ?_5770                             ; 10009501 _ 3D, 114FFE20(d)
        jl      ?_0959                                  ; 10009506 _ 7C, EE
        call    ?_1050                                  ; 10009508 _ E8, 00000B73
        cmp     ebx, dword [?_5774]                     ; 1000950D _ 3B. 1D, 11764084(d)
        jnz     ?_0963                                  ; 10009513 _ 75, 3E
        mov     edi, 1                                  ; 10009515 _ BF, 00000001
        mov     eax, ?_5761                             ; 1000951A _ B8, 101DEB00(d)
?_0961: mov     ecx, dword [eax]                        ; 1000951F _ 8B. 08
        test    ecx, ecx                                ; 10009521 _ 85. C9
        jz      ?_0962                                  ; 10009523 _ 74, 09
        test    ch, 08H                                 ; 10009525 _ F6. C5, 08
        je      ?_0968                                  ; 10009528 _ 0F 84, 000000A8
?_0962: add     eax, 2507364                            ; 1000952E _ 05, 00264264
        cmp     eax, ?_5770                             ; 10009533 _ 3D, 114FFE20(d)
        jl      ?_0961                                  ; 10009538 _ 7C, E5
        push    1                                       ; 1000953A _ 6A, 01
        push    ?_5208                                  ; 1000953C _ 68, 10029890(d)
        push    334                                     ; 10009541 _ 68, 0000014E
        push    ?_5209                                  ; 10009546 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000954B _ E8, FFFFA0F0
        add     esp, 16                                 ; 10009550 _ 83. C4, 10
?_0963: mov     esi, dword [imp_timeGetTime]            ; 10009553 _ 8B. 35, 10024154(d)
        call    esi                                     ; 10009559 _ FF. D6
        sub     eax, ebp                                ; 1000955B _ 2B. C5
        cmp     eax, 3000                               ; 1000955D _ 3D, 00000BB8
        ja      ?_0964                                  ; 10009562 _ 77, 04
        test    edi, edi                                ; 10009564 _ 85. FF
        jz      ?_0965                                  ; 10009566 _ 74, 20
?_0964: lea     ecx, [esp+148H]                         ; 10009568 _ 8D. 8C 24, 00000148
        mov     byte [esp+16FH], bl                     ; 1000956F _ 88. 9C 24, 0000016F
        push    ecx                                     ; 10009576 _ 51
        push    12345                                   ; 10009577 _ 68, 00003039
        call    ?_0010                                  ; 1000957C _ E8, FFFF7BAF
        add     esp, 8                                  ; 10009581 _ 83. C4, 08
        call    esi                                     ; 10009584 _ FF. D6
        mov     ebp, eax                                ; 10009586 _ 8B. E8
?_0965: call    ?_1077                                  ; 10009588 _ E8, 00000FE3
        cmp     eax, -1                                 ; 1000958D _ 83. F8, FF
        jz      ?_0969                                  ; 10009590 _ 74, 4B
        call    ?_1098                                  ; 10009592 _ E8, 000012C9
        cmp     eax, -1                                 ; 10009597 _ 83. F8, FF
        jz      ?_0970                                  ; 1000959A _ 74, 52
        mov     esi, ?_5761                             ; 1000959C _ BE, 101DEB00(d)
?_0966: mov     eax, dword [esi]                        ; 100095A1 _ 8B. 06
        test    ah, 10H                                 ; 100095A3 _ F6. C4, 10
        jz      ?_0967                                  ; 100095A6 _ 74, 0E
        test    ah, 04H                                 ; 100095A8 _ F6. C4, 04
        jnz     ?_0971                                  ; 100095AB _ 75, 52
        push    esi                                     ; 100095AD _ 56
        call    ?_1064                                  ; 100095AE _ E8, 00000D2D
        add     esp, 4                                  ; 100095B3 _ 83. C4, 04
?_0967: add     esi, 2507364                            ; 100095B6 _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 100095BC _ 81. FE, 114FFE20(d)
        jl      ?_0966                                  ; 100095C2 _ 7C, DD
        push    30                                      ; 100095C4 _ 6A, 1E
        call    near [imp_Sleep]                        ; 100095C6 _ FF. 15, 10024058(d)
        test    edi, edi                                ; 100095CC _ 85. FF
        je      ?_0958                                  ; 100095CE _ 0F 84, FFFFFF0E
        jmp     ?_0972                                  ; 100095D4 _ EB, 3A

?_0968: xor     edi, edi                                ; 100095D6 _ 33. FF
        jmp     ?_0963                                  ; 100095D8 _ E9, FFFFFF76

?_0969: push    1                                       ; 100095DD _ 6A, 01
        push    ?_5207                                  ; 100095DF _ 68, 1002986C(d)
        push    351                                     ; 100095E4 _ 68, 0000015F
        jmp     ?_1035                                  ; 100095E9 _ E9, 00000713

?_0970: push    1                                       ; 100095EE _ 6A, 01
        push    ?_5207                                  ; 100095F0 _ 68, 1002986C(d)
        push    362                                     ; 100095F5 _ 68, 0000016A
        jmp     ?_1035                                  ; 100095FA _ E9, 00000702

?_0971: push    1                                       ; 100095FF _ 6A, 01
        push    ?_5206                                  ; 10009601 _ 68, 10029834(d)
        push    374                                     ; 10009606 _ 68, 00000176
        jmp     ?_1035                                  ; 1000960B _ E9, 000006F1

?_0972: mov     ecx, ?_5761                             ; 10009610 _ B9, 101DEB00(d)
?_0973: mov     eax, dword [ecx]                        ; 10009615 _ 8B. 01
        test    al, 01H                                 ; 10009617 _ A8, 01
        jz      ?_0974                                  ; 10009619 _ 74, 0A
        and     ah, 0FFFFFFFDH                          ; 1000961B _ 80. E4, FD
        or      eax, 4004H                              ; 1000961E _ 0D, 00004004
        mov     dword [ecx], eax                        ; 10009623 _ 89. 01
?_0974: add     ecx, 2507364                            ; 10009625 _ 81. C1, 00264264
        cmp     ecx, ?_5770                             ; 1000962B _ 81. F9, 114FFE20(d)
        jl      ?_0973                                  ; 10009631 _ 7C, E2
        xor     ecx, ecx                                ; 10009633 _ 33. C9
        mov     eax, ?_5761                             ; 10009635 _ B8, 101DEB00(d)
?_0975: mov     edx, dword [eax]                        ; 1000963A _ 8B. 10
        test    dh, 04H                                 ; 1000963C _ F6. C6, 04
        jne     ?_0981                                  ; 1000963F _ 0F 85, 000000F5
        add     eax, 2507364                            ; 10009645 _ 05, 00264264
        inc     ecx                                     ; 1000964A _ 41
        cmp     eax, ?_5770                             ; 1000964B _ 3D, 114FFE20(d)
        jl      ?_0975                                  ; 10009650 _ 7C, E8
        call    ?_1047                                  ; 10009652 _ E8, 000009B9
?_0976: push    2000                                    ; 10009657 _ 68, 000007D0
        call    near [imp_Sleep]                        ; 1000965C _ FF. 15, 10024058(d)
        xor     edi, edi                                ; 10009662 _ 33. FF
        mov     esi, ?_5761                             ; 10009664 _ BE, 101DEB00(d)
        mov     bl, 7                                   ; 10009669 _ B3, 07
        xor     ebp, ebp                                ; 1000966B _ 33. ED
?_0977: mov     eax, dword [esi]                        ; 1000966D _ 8B. 06
        cmp     eax, ebp                                ; 1000966F _ 3B. C5
        jz      ?_0978                                  ; 10009671 _ 74, 71
        and     al, 08H                                 ; 10009673 _ 24, 08
        lea     edx, [esp+10H]                          ; 10009675 _ 8D. 54 24, 10
        neg     al                                      ; 10009679 _ F6. D8
        sbb     al, al                                  ; 1000967B _ 1A. C0
        push    edx                                     ; 1000967D _ 52
        and     al, bl                                  ; 1000967E _ 22. C3
        push    esi                                     ; 10009680 _ 56
        add     al, 2                                   ; 10009681 _ 04, 02
        mov     byte [esp+18H], 4                       ; 10009683 _ C6. 44 24, 18, 04
        mov     byte [esp+1BH], -1                      ; 10009688 _ C6. 44 24, 1B, FF
        mov     dword [esp+1CH], -1                     ; 1000968D _ C7. 44 24, 1C, FFFFFFFF
        mov     dword [esp+24H], ebp                    ; 10009695 _ 89. 6C 24, 24
        mov     byte [esp+28H], al                      ; 10009699 _ 88. 44 24, 28
        call    ?_1110                                  ; 1000969D _ E8, 000012FE
        add     esp, 8                                  ; 100096A2 _ 83. C4, 08
        cmp     eax, -1                                 ; 100096A5 _ 83. F8, FF
        je      ?_1036                                  ; 100096A8 _ 0F 84, 00000660
        lea     eax, [esp+10H]                          ; 100096AE _ 8D. 44 24, 10
        mov     dword [esp+21H], edi                    ; 100096B2 _ 89. 7C 24, 21
        push    eax                                     ; 100096B6 _ 50
        push    esi                                     ; 100096B7 _ 56
        mov     byte [esp+18H], 32                      ; 100096B8 _ C6. 44 24, 18, 20
        mov     byte [esp+1BH], -1                      ; 100096BD _ C6. 44 24, 1B, FF
        mov     dword [esp+1CH], -1                     ; 100096C2 _ C7. 44 24, 1C, FFFFFFFF
        mov     dword [esp+24H], ebp                    ; 100096CA _ 89. 6C 24, 24
        mov     byte [esp+28H], bl                      ; 100096CE _ 88. 5C 24, 28
        inc     edi                                     ; 100096D2 _ 47
        call    ?_1110                                  ; 100096D3 _ E8, 000012C8
        add     esp, 8                                  ; 100096D8 _ 83. C4, 08
        cmp     eax, -1                                 ; 100096DB _ 83. F8, FF
        je      ?_1036                                  ; 100096DE _ 0F 84, 0000062A
?_0978: add     esi, 2507364                            ; 100096E4 _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 100096EA _ 81. FE, 114FFE20(d)
        jl      ?_0977                                  ; 100096F0 _ 0F 8C, FFFFFF77
        push    1                                       ; 100096F6 _ 6A, 01
        push    ?_5205                                  ; 100096F8 _ 68, 10029824(d)
        push    458                                     ; 100096FD _ 68, 000001CA
        push    ?_5209                                  ; 10009702 _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009707 _ E8, FFFF9F34
        mov     edi, dword [imp_Sleep]                  ; 1000970C _ 8B. 3D, 10024058(d)
        add     esp, 16                                 ; 10009712 _ 83. C4, 10
?_0979: cmp     dword [?_5526], ebp                     ; 10009715 _ 39. 2D, 10034680(d)
        jnz     ?_0984                                  ; 1000971B _ 75, 64
        mov     esi, 1                                  ; 1000971D _ BE, 00000001
        mov     eax, ?_5761                             ; 10009722 _ B8, 101DEB00(d)
?_0980: test    byte [eax], 08H                         ; 10009727 _ F6. 00, 08
        jnz     ?_0982                                  ; 1000972A _ 75, 2F
        add     eax, 2507364                            ; 1000972C _ 05, 00264264
        cmp     eax, ?_5770                             ; 10009731 _ 3D, 114FFE20(d)
        jl      ?_0980                                  ; 10009736 _ 7C, EF
        jmp     ?_0983                                  ; 10009738 _ EB, 23

?_0981: mov     eax, ecx                                ; 1000973A _ 8B. C1
        shl     eax, 4                                  ; 1000973C _ C1. E0, 04
        add     eax, ecx                                ; 1000973F _ 03. C1
        shl     eax, 8                                  ; 10009741 _ C1. E0, 08
        add     eax, ecx                                ; 10009744 _ 03. C1
        shl     eax, 4                                  ; 10009746 _ C1. E0, 04
        add     eax, ecx                                ; 10009749 _ 03. C1
        lea     eax, [eax+eax*8]                        ; 1000974B _ 8D. 04 C0
        or      dword [?_5761+eax*4], 08H               ; 1000974E _ 83. 0C 85, 101DEB00(d), 08
        jmp     ?_0976                                  ; 10009756 _ E9, FFFFFEFC

?_0982: xor     esi, esi                                ; 1000975B _ 33. F6
?_0983: call    ?_1077                                  ; 1000975D _ E8, 00000E0E
        cmp     eax, -1                                 ; 10009762 _ 83. F8, FF
        je      ?_0987                                  ; 10009765 _ 0F 84, 000000BC
        call    ?_1098                                  ; 1000976B _ E8, 000010F0
        cmp     eax, -1                                 ; 10009770 _ 83. F8, FF
        je      ?_0987                                  ; 10009773 _ 0F 84, 000000AE
        push    30                                      ; 10009779 _ 6A, 1E
        call    edi                                     ; 1000977B _ FF. D7
        cmp     esi, ebp                                ; 1000977D _ 3B. F5
        jz      ?_0979                                  ; 1000977F _ 74, 94
?_0984: call    ?_2215                                  ; 10009781 _ E8, 0000AADA
        push    1                                       ; 10009786 _ 6A, 01
        push    ?_5204                                  ; 10009788 _ 68, 1002980C(d)
        push    505                                     ; 1000978D _ 68, 000001F9
        push    ?_5209                                  ; 10009792 _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009797 _ E8, FFFF9EA4
        mov     al, byte [?_5696]                       ; 1000979C _ A0, 101DE464(d)
        add     esp, 16                                 ; 100097A1 _ 83. C4, 10
        test    al, 04H                                 ; 100097A4 _ A8, 04
        jne     ?_0994                                  ; 100097A6 _ 0F 85, 00000150
        push    1                                       ; 100097AC _ 6A, 01
        push    ?_5203                                  ; 100097AE _ 68, 100297FC(d)
        push    511                                     ; 100097B3 _ 68, 000001FF
        push    ?_5209                                  ; 100097B8 _ 68, 100298B0(d)
        call    ?_0267                                  ; 100097BD _ E8, FFFF9E7E
        add     esp, 16                                 ; 100097C2 _ 83. C4, 10
?_0985: mov     esi, 1                                  ; 100097C5 _ BE, 00000001
        mov     ebp, ?_5761                             ; 100097CA _ BD, 101DEB00(d)
        mov     ebx, ?_5757                             ; 100097CF _ BB, 101DEAC8(d)
?_0986: test    byte [ebp], 04H                         ; 100097D4 _ F6. 45, 00, 04
        je      ?_0992                                  ; 100097D8 _ 0F 84, 000000D2
        mov     eax, dword [ebx]                        ; 100097DE _ 8B. 03
        cmp     eax, -1                                 ; 100097E0 _ 83. F8, FF
        jnz     ?_0988                                  ; 100097E3 _ 75, 53
        mov     ecx, dword [?_5755]                     ; 100097E5 _ 8B. 0D, 101DEAC0(d)
        lea     edx, [esp+10H]                          ; 100097EB _ 8D. 54 24, 10
        push    edx                                     ; 100097EF _ 52
        push    ebp                                     ; 100097F0 _ 55
        mov     byte [esp+18H], 8                       ; 100097F1 _ C6. 44 24, 18, 08
        mov     byte [esp+1BH], -1                      ; 100097F6 _ C6. 44 24, 1B, FF
        mov     dword [esp+1CH], eax                    ; 100097FB _ 89. 44 24, 1C
        mov     dword [esp+24H], 0                      ; 100097FF _ C7. 44 24, 24, 00000000
        mov     dword [esp+28H], ecx                    ; 10009807 _ 89. 4C 24, 28
        call    ?_1110                                  ; 1000980B _ E8, 00001190
        add     esp, 8                                  ; 10009810 _ 83. C4, 08
        cmp     eax, -1                                 ; 10009813 _ 83. F8, FF
        je      ?_1036                                  ; 10009816 _ 0F 84, 000004F2
        mov     dword [ebx], 0                          ; 1000981C _ C7. 03, 00000000
        jmp     ?_0991                                  ; 10009822 _ E9, 00000087

?_0987: push    1                                       ; 10009827 _ 6A, 01
        push    ?_5207                                  ; 10009829 _ 68, 1002986C(d)
        push    479                                     ; 1000982E _ 68, 000001DF
        jmp     ?_1035                                  ; 10009833 _ E9, 000004C9

?_0988: mov     ecx, dword [?_5758]                     ; 10009838 _ 8B. 0D, 101DEAE8(d)
        lea     edx, [esp+10H]                          ; 1000983E _ 8D. 54 24, 10
        lea     edi, [esp+20H]                          ; 10009842 _ 8D. 7C 24, 20
        mov     byte [esp+10H], 9                       ; 10009846 _ C6. 44 24, 10, 09
        lea     esi, [eax+ecx]                          ; 1000984B _ 8D. 34 08
        mov     ecx, 32                                 ; 1000984E _ B9, 00000020
        mov     byte [esp+13H], -1                      ; 10009853 _ C6. 44 24, 13, FF
        mov     dword [esp+14H], -1                     ; 10009858 _ C7. 44 24, 14, FFFFFFFF
        mov     dword [esp+1CH], 0                      ; 10009860 _ C7. 44 24, 1C, 00000000
        push    edx                                     ; 10009868 _ 52
        rep movsd                                       ; 10009869 _ F3: A5
        push    ebp                                     ; 1000986B _ 55
        call    ?_1110                                  ; 1000986C _ E8, 0000112F
        add     esp, 8                                  ; 10009871 _ 83. C4, 08
        cmp     eax, -1                                 ; 10009874 _ 83. F8, FF
        jz      ?_0989                                  ; 10009877 _ 74, 08
        add     dword [ebx], 128                        ; 10009879 _ 81. 03, 00000080
        jmp     ?_0990                                  ; 1000987F _ EB, 19

?_0989: push    1                                       ; 10009881 _ 6A, 01
        push    ?_5202                                  ; 10009883 _ 68, 100297E4(d)
        push    552                                     ; 10009888 _ 68, 00000228
        push    ?_5209                                  ; 1000988D _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009892 _ E8, FFFF9DA9
        add     esp, 16                                 ; 10009897 _ 83. C4, 10
?_0990: mov     eax, dword [ebx]                        ; 1000989A _ 8B. 03
        mov     ecx, dword [?_5755]                     ; 1000989C _ 8B. 0D, 101DEAC0(d)
        cmp     eax, ecx                                ; 100098A2 _ 3B. C1
        jc      ?_0991                                  ; 100098A4 _ 72, 08
        mov     eax, dword [ebp]                        ; 100098A6 _ 8B. 45, 00
        and     al, 0FFFFFFFBH                          ; 100098A9 _ 24, FB
        mov     dword [ebp], eax                        ; 100098AB _ 89. 45, 00
?_0991: xor     esi, esi                                ; 100098AE _ 33. F6
?_0992: add     ebx, 4                                  ; 100098B0 _ 83. C3, 04
        add     ebp, 2507364                            ; 100098B3 _ 81. C5, 00264264
        cmp     ebx, ?_5758                             ; 100098B9 _ 81. FB, 101DEAE8(d)
        jl      ?_0986                                  ; 100098BF _ 0F 8C, FFFFFF0F
        call    ?_1077                                  ; 100098C5 _ E8, 00000CA6
        cmp     eax, -1                                 ; 100098CA _ 83. F8, FF
        jz      ?_0993                                  ; 100098CD _ 74, 1C
        call    ?_1098                                  ; 100098CF _ E8, 00000F8C
        cmp     eax, -1                                 ; 100098D4 _ 83. F8, FF
        jz      ?_0993                                  ; 100098D7 _ 74, 12
        push    30                                      ; 100098D9 _ 6A, 1E
        call    near [imp_Sleep]                        ; 100098DB _ FF. 15, 10024058(d)
        test    esi, esi                                ; 100098E1 _ 85. F6
        je      ?_0985                                  ; 100098E3 _ 0F 84, FFFFFEDC
        jmp     ?_0997                                  ; 100098E9 _ EB, 2E

?_0993: push    1                                       ; 100098EB _ 6A, 01
        push    ?_5207                                  ; 100098ED _ 68, 1002986C(d)
        push    570                                     ; 100098F2 _ 68, 0000023A
        jmp     ?_1035                                  ; 100098F7 _ E9, 00000405

?_0994: mov     ecx, ?_5761                             ; 100098FC _ B9, 101DEB00(d)
?_0995: mov     eax, dword [ecx]                        ; 10009901 _ 8B. 01
        test    al, 04H                                 ; 10009903 _ A8, 04
        jz      ?_0996                                  ; 10009905 _ 74, 04
        and     al, 0FFFFFFFBH                          ; 10009907 _ 24, FB
        mov     dword [ecx], eax                        ; 10009909 _ 89. 01
?_0996: add     ecx, 2507364                            ; 1000990B _ 81. C1, 00264264
        cmp     ecx, ?_5770                             ; 10009911 _ 81. F9, 114FFE20(d)
        jl      ?_0995                                  ; 10009917 _ 7C, E8
?_0997: mov     ecx, dword [?_5758]                     ; 10009919 _ 8B. 0D, 101DEAE8(d)
        push    ecx                                     ; 1000991F _ 51
        call    ?_0663                                  ; 10009920 _ E8, FFFFCEFB
        mov     al, byte [?_5696]                       ; 10009925 _ A0, 101DE464(d)
        add     esp, 4                                  ; 1000992A _ 83. C4, 04
        xor     ebp, ebp                                ; 1000992D _ 33. ED
        test    al, 04H                                 ; 1000992F _ A8, 04
        mov     dword [?_5758], ebp                     ; 10009931 _ 89. 2D, 101DEAE8(d)
        mov     dword [?_5755], ebp                     ; 10009937 _ 89. 2D, 101DEAC0(d)
        jne     ?_1004                                  ; 1000993D _ 0F 85, 00000081
        push    1                                       ; 10009943 _ 6A, 01
        push    ?_5201                                  ; 10009945 _ 68, 100297BC(d)
        push    610                                     ; 1000994A _ 68, 00000262
        push    ?_5209                                  ; 1000994F _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009954 _ E8, FFFF9CE7
        add     esp, 16                                 ; 10009959 _ 83. C4, 10
        mov     ecx, ?_5761                             ; 1000995C _ B9, 101DEB00(d)
?_0998: mov     eax, dword [ecx]                        ; 10009961 _ 8B. 01
        test    al, 01H                                 ; 10009963 _ A8, 01
        jz      ?_0999                                  ; 10009965 _ 74, 04
        or      al, 10H                                 ; 10009967 _ 0C, 10
        mov     dword [ecx], eax                        ; 10009969 _ 89. 01
?_0999: add     ecx, 2507364                            ; 1000996B _ 81. C1, 00264264
        cmp     ecx, ?_5770                             ; 10009971 _ 81. F9, 114FFE20(d)
        jl      ?_0998                                  ; 10009977 _ 7C, E8
        mov     edi, dword [imp_Sleep]                  ; 10009979 _ 8B. 3D, 10024058(d)
?_1000: mov     esi, 1                                  ; 1000997F _ BE, 00000001
        mov     eax, ?_5761                             ; 10009984 _ B8, 101DEB00(d)
?_1001: cmp     eax, ?_5770                             ; 10009989 _ 3D, 114FFE20(d)
        jge     ?_1003                                  ; 1000998E _ 7D, 10
        test    byte [eax], 10H                         ; 10009990 _ F6. 00, 10
        jz      ?_1002                                  ; 10009993 _ 74, 02
        xor     esi, esi                                ; 10009995 _ 33. F6
?_1002: add     eax, 2507364                            ; 10009997 _ 05, 00264264
        cmp     esi, ebp                                ; 1000999C _ 3B. F5
        jnz     ?_1001                                  ; 1000999E _ 75, E9
?_1003: call    ?_1077                                  ; 100099A0 _ E8, 00000BCB
        cmp     eax, -1                                 ; 100099A5 _ 83. F8, FF
        je      ?_1010                                  ; 100099A8 _ 0F 84, 000000C6
        call    ?_1098                                  ; 100099AE _ E8, 00000EAD
        cmp     eax, -1                                 ; 100099B3 _ 83. F8, FF
        je      ?_1010                                  ; 100099B6 _ 0F 84, 000000B8
        push    30                                      ; 100099BC _ 6A, 1E
        call    edi                                     ; 100099BE _ FF. D7
        cmp     esi, ebp                                ; 100099C0 _ 3B. F5
        jz      ?_1000                                  ; 100099C2 _ 74, BB
?_1004: mov     esi, ?_5761                             ; 100099C4 _ BE, 101DEB00(d)
        or      edi, 0FFFFFFFFH                         ; 100099C9 _ 83. CF, FF
?_1005: test    byte [esi], 01H                         ; 100099CC _ F6. 06, 01
        jz      ?_1006                                  ; 100099CF _ 74, 3F
        lea     edx, [esp+0ACH]                         ; 100099D1 _ 8D. 94 24, 000000AC
        mov     byte [esp+0ACH], 4                      ; 100099D8 _ C6. 84 24, 000000AC, 04
        push    edx                                     ; 100099E0 _ 52
        push    esi                                     ; 100099E1 _ 56
        mov     byte [esp+0B7H], -1                     ; 100099E2 _ C6. 84 24, 000000B7, FF
        mov     dword [esp+0B8H], edi                   ; 100099EA _ 89. BC 24, 000000B8
        mov     dword [esp+0C0H], ebp                   ; 100099F1 _ 89. AC 24, 000000C0
        mov     byte [esp+0C4H], 4                      ; 100099F8 _ C6. 84 24, 000000C4, 04
        call    ?_1110                                  ; 10009A00 _ E8, 00000F9B
        add     esp, 8                                  ; 10009A05 _ 83. C4, 08
        cmp     eax, edi                                ; 10009A08 _ 3B. C7
        je      ?_1036                                  ; 10009A0A _ 0F 84, 000002FE
?_1006: add     esi, 2507364                            ; 10009A10 _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 10009A16 _ 81. FE, 114FFE20(d)
        jl      ?_1005                                  ; 10009A1C _ 7C, AE
        push    1                                       ; 10009A1E _ 6A, 01
        push    ?_5200                                  ; 10009A20 _ 68, 100297B0(d)
        push    680                                     ; 10009A25 _ 68, 000002A8
        push    ?_5209                                  ; 10009A2A _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009A2F _ E8, FFFF9C0C
        mov     eax, dword [?_5526]                     ; 10009A34 _ A1, 10034680(d)
        add     esp, 16                                 ; 10009A39 _ 83. C4, 10
        cmp     eax, ebp                                ; 10009A3C _ 3B. C5
        jne     ?_1033                                  ; 10009A3E _ 0F 85, 0000029C
?_1007: push    30                                      ; 10009A44 _ 6A, 1E
        call    near [imp_Sleep]                        ; 10009A46 _ FF. 15, 10024058(d)
        call    near [imp_GetTickCount]                 ; 10009A4C _ FF. 15, 1002405C(d)
        mov     ebx, eax                                ; 10009A52 _ 8B. D8
        xor     edi, edi                                ; 10009A54 _ 33. FF
        mov     eax, ?_5761                             ; 10009A56 _ B8, 101DEB00(d)
?_1008: mov     ecx, dword [eax]                        ; 10009A5B _ 8B. 08
        cmp     ecx, ebp                                ; 10009A5D _ 3B. CD
        jz      ?_1009                                  ; 10009A5F _ 74, 05
        test    cl, 40H                                 ; 10009A61 _ F6. C1, 40
        jnz     ?_1011                                  ; 10009A64 _ 75, 1F
?_1009: add     eax, 2507364                            ; 10009A66 _ 05, 00264264
        cmp     eax, ?_5770                             ; 10009A6B _ 3D, 114FFE20(d)
        jl      ?_1008                                  ; 10009A70 _ 7C, E9
        jmp     ?_1014                                  ; 10009A72 _ EB, 33

?_1010: push    1                                       ; 10009A74 _ 6A, 01
        push    ?_5207                                  ; 10009A76 _ 68, 1002986C(d)
        push    632                                     ; 10009A7B _ 68, 00000278
        jmp     ?_1035                                  ; 10009A80 _ E9, 0000027C

?_1011: xor     edi, edi                                ; 10009A85 _ 33. FF
        mov     eax, ?_5761                             ; 10009A87 _ B8, 101DEB00(d)
?_1012: mov     ecx, dword [eax]                        ; 10009A8C _ 8B. 08
        cmp     ecx, ebp                                ; 10009A8E _ 3B. CD
        jz      ?_1013                                  ; 10009A90 _ 74, 09
        test    cl, 40H                                 ; 10009A92 _ F6. C1, 40
        je      ?_1022                                  ; 10009A95 _ 0F 84, 000000CB
?_1013: add     eax, 2507364                            ; 10009A9B _ 05, 00264264
        cmp     eax, ?_5770                             ; 10009AA0 _ 3D, 114FFE20(d)
        jl      ?_1012                                  ; 10009AA5 _ 7C, E5
?_1014: mov     esi, ?_5761                             ; 10009AA7 _ BE, 101DEB00(d)
?_1015: mov     eax, dword [esi]                        ; 10009AAC _ 8B. 06
        cmp     eax, ebp                                ; 10009AAE _ 3B. C5
        jz      ?_1016                                  ; 10009AB0 _ 74, 3A
        test    al, 40H                                 ; 10009AB2 _ A8, 40
        jz      ?_1016                                  ; 10009AB4 _ 74, 36
        push    1                                       ; 10009AB6 _ 6A, 01
        push    ?_5199                                  ; 10009AB8 _ 68, 100297A0(d)
        push    718                                     ; 10009ABD _ 68, 000002CE
        push    ?_5209                                  ; 10009AC2 _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009AC7 _ E8, FFFF9B74
        mov     edx, dword [esi]                        ; 10009ACC _ 8B. 16
        lea     eax, [esi+264154H]                      ; 10009ACE _ 8D. 86, 00264154
        and     edx, 0FFFFFFBFH                         ; 10009AD4 _ 83. E2, BF
        push    eax                                     ; 10009AD7 _ 50
        push    esi                                     ; 10009AD8 _ 56
        mov     dword [esi], edx                        ; 10009AD9 _ 89. 16
        call    ?_1110                                  ; 10009ADB _ E8, 00000EC0
        add     esp, 24                                 ; 10009AE0 _ 83. C4, 18
        cmp     eax, -1                                 ; 10009AE3 _ 83. F8, FF
        je      ?_1036                                  ; 10009AE6 _ 0F 84, 00000222
?_1016: add     esi, 2507364                            ; 10009AEC _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 10009AF2 _ 81. FE, 114FFE20(d)
        jl      ?_1015                                  ; 10009AF8 _ 7C, B2
?_1017: cmp     dword [?_5777], ebp                     ; 10009AFA _ 39. 2D, 11764090(d)
        jnz     ?_1023                                  ; 10009B00 _ 75, 6B
        cmp     edi, ebp                                ; 10009B02 _ 3B. FD
        jne     ?_1032                                  ; 10009B04 _ 0F 85, 000001AC
        mov     edx, 1                                  ; 10009B0A _ BA, 00000001
        mov     eax, ?_5761                             ; 10009B0F _ B8, 101DEB00(d)
        mov     dword [?_5777], edx                     ; 10009B14 _ 89. 15, 11764090(d)
?_1018: mov     ecx, dword [eax]                        ; 10009B1A _ 8B. 08
        cmp     ecx, ebp                                ; 10009B1C _ 3B. CD
        jz      ?_1019                                  ; 10009B1E _ 74, 07
        test    cl, 20H                                 ; 10009B20 _ F6. C1, 20
        jnz     ?_1019                                  ; 10009B23 _ 75, 02
        xor     edx, edx                                ; 10009B25 _ 33. D2
?_1019: add     eax, 2507364                            ; 10009B27 _ 05, 00264264
        cmp     eax, ?_5770                             ; 10009B2C _ 3D, 114FFE20(d)
        jl      ?_1018                                  ; 10009B31 _ 7C, E7
        cmp     edx, ebp                                ; 10009B33 _ 3B. D5
        mov     dword [?_5777], edx                     ; 10009B35 _ 89. 15, 11764090(d)
        je      ?_1032                                  ; 10009B3B _ 0F 84, 00000175
        mov     ecx, ?_5761                             ; 10009B41 _ B9, 101DEB00(d)
?_1020: mov     eax, dword [ecx]                        ; 10009B46 _ 8B. 01
        cmp     eax, ebp                                ; 10009B48 _ 3B. C5
        jz      ?_1021                                  ; 10009B4A _ 74, 04
        and     al, 0FFFFFFDFH                          ; 10009B4C _ 24, DF
        mov     dword [ecx], eax                        ; 10009B4E _ 89. 01
?_1021: add     ecx, 2507364                            ; 10009B50 _ 81. C1, 00264264
        cmp     ecx, ?_5770                             ; 10009B56 _ 81. F9, 114FFE20(d)
        jl      ?_1020                                  ; 10009B5C _ 7C, E8
        mov     dword [?_5760], ebx                     ; 10009B5E _ 89. 1D, 101DEAF0(d)
        jmp     ?_1024                                  ; 10009B64 _ EB, 1B

?_1022: mov     edi, 1                                  ; 10009B66 _ BF, 00000001
        jmp     ?_1017                                  ; 10009B6B _ EB, 8D

?_1023: cmp     edi, ebp                                ; 10009B6D _ 3B. FD
        jne     ?_1032                                  ; 10009B6F _ 0F 85, 00000141
        cmp     dword [?_5760], ebx                     ; 10009B75 _ 39. 1D, 101DEAF0(d)
        ja      ?_1032                                  ; 10009B7B _ 0F 87, 00000135
?_1024: push    ebp                                     ; 10009B81 _ 55
        push    1                                       ; 10009B82 _ 6A, 01
        push    ebp                                     ; 10009B84 _ 55
        push    ?_5628                                  ; 10009B85 _ 68, 10035880(d)
        call    ?_2373                                  ; 10009B8A _ E8, 0000BA31
        add     esp, 16                                 ; 10009B8F _ 83. C4, 10
        mov     esi, ?_5761                             ; 10009B92 _ BE, 101DEB00(d)
        or      ebx, 0FFFFFFFFH                         ; 10009B97 _ 83. CB, FF
?_1025: cmp     dword [esi], ebp                        ; 10009B9A _ 39. 2E
        jz      ?_1026                                  ; 10009B9C _ 74, 51
        mov     edx, dword [?_5629]                     ; 10009B9E _ 8B. 15, 10035884(d)
        mov     ecx, dword [?_5628]                     ; 10009BA4 _ 8B. 0D, 10035880(d)
        mov     eax, dword [?_5630]                     ; 10009BAA _ A1, 10035888(d)
        mov     dword [esp+24H], edx                    ; 10009BAF _ 89. 54 24, 24
        lea     edx, [esp+10H]                          ; 10009BB3 _ 8D. 54 24, 10
        mov     dword [esp+20H], ecx                    ; 10009BB7 _ 89. 4C 24, 20
        mov     cx, word [?_5631]                       ; 10009BBB _ 66: 8B. 0D, 1003588C(d)
        push    edx                                     ; 10009BC2 _ 52
        push    esi                                     ; 10009BC3 _ 56
        mov     byte [esp+18H], 30                      ; 10009BC4 _ C6. 44 24, 18, 1E
        mov     byte [esp+1BH], -1                      ; 10009BC9 _ C6. 44 24, 1B, FF
        mov     dword [esp+1CH], ebx                    ; 10009BCE _ 89. 5C 24, 1C
        mov     dword [esp+24H], ebp                    ; 10009BD2 _ 89. 6C 24, 24
        mov     dword [esp+30H], eax                    ; 10009BD6 _ 89. 44 24, 30
        mov     word [esp+34H], cx                      ; 10009BDA _ 66: 89. 4C 24, 34
        call    ?_1110                                  ; 10009BDF _ E8, 00000DBC
        add     esp, 8                                  ; 10009BE4 _ 83. C4, 08
        cmp     eax, ebx                                ; 10009BE7 _ 3B. C3
        je      ?_1036                                  ; 10009BE9 _ 0F 84, 0000011F
?_1026: add     esi, 2507364                            ; 10009BEF _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 10009BF5 _ 81. FE, 114FFE20(d)
        jl      ?_1025                                  ; 10009BFB _ 7C, 9D
        cmp     word [?_5629], 23                       ; 10009BFD _ 66: 83. 3D, 10035884(d), 17
        jc      ?_1031                                  ; 10009C05 _ 0F 82, 00000099
        mov     edi, 1                                  ; 10009C0B _ BF, 00000001
        mov     esi, ?_5761                             ; 10009C10 _ BE, 101DEB00(d)
?_1027: cmp     dword [esi], ebp                        ; 10009C15 _ 39. 2E
        jz      ?_1030                                  ; 10009C17 _ 74, 5F
        cmp     edi, ebp                                ; 10009C19 _ 3B. FD
        mov     byte [esp+0ACH], 32                     ; 10009C1B _ C6. 84 24, 000000AC, 20
        mov     byte [esp+0AFH], -1                     ; 10009C23 _ C6. 84 24, 000000AF, FF
        mov     dword [esp+0B0H], ebx                   ; 10009C2B _ 89. 9C 24, 000000B0
        mov     dword [esp+0B8H], ebp                   ; 10009C32 _ 89. AC 24, 000000B8
        mov     byte [esp+0BCH], 2                      ; 10009C39 _ C6. 84 24, 000000BC, 02
        jz      ?_1028                                  ; 10009C41 _ 74, 0F
        mov     dword [esp+0BDH], 1                     ; 10009C43 _ C7. 84 24, 000000BD, 00000001
        xor     edi, edi                                ; 10009C4E _ 33. FF
        jmp     ?_1029                                  ; 10009C50 _ EB, 07

?_1028: mov     dword [esp+0BDH], ebp                   ; 10009C52 _ 89. AC 24, 000000BD
?_1029: lea     eax, [esp+0ACH]                         ; 10009C59 _ 8D. 84 24, 000000AC
        push    eax                                     ; 10009C60 _ 50
        push    esi                                     ; 10009C61 _ 56
        call    ?_1110                                  ; 10009C62 _ E8, 00000D39
        add     esp, 8                                  ; 10009C67 _ 83. C4, 08
        cmp     eax, ebx                                ; 10009C6A _ 3B. C3
        je      ?_1036                                  ; 10009C6C _ 0F 84, 0000009C
        mov     dword [?_5777], ebp                     ; 10009C72 _ 89. 2D, 11764090(d)
?_1030: add     esi, 2507364                            ; 10009C78 _ 81. C6, 00264264
        cmp     esi, ?_5770                             ; 10009C7E _ 81. FE, 114FFE20(d)
        jl      ?_1027                                  ; 10009C84 _ 7C, 8F
        mov     ebx, dword [?_5628]                     ; 10009C86 _ 8B. 1D, 10035880(d)
        push    ebp                                     ; 10009C8C _ 55
        push    ebp                                     ; 10009C8D _ 55
        inc     ebx                                     ; 10009C8E _ 43
        push    6                                       ; 10009C8F _ 6A, 06
        push    ?_5628                                  ; 10009C91 _ 68, 10035880(d)
        mov     dword [?_5628], ebx                     ; 10009C96 _ 89. 1D, 10035880(d)
        call    ?_2378                                  ; 10009C9C _ E8, 0000B9EF
        add     esp, 16                                 ; 10009CA1 _ 83. C4, 10
?_1031: mov     ecx, dword [?_5256]                     ; 10009CA4 _ 8B. 0D, 1002C3F0(d)
        mov     eax, dword [?_5760]                     ; 10009CAA _ A1, 101DEAF0(d)
        add     eax, ecx                                ; 10009CAF _ 03. C1
        mov     dword [?_5760], eax                     ; 10009CB1 _ A3, 101DEAF0(d)
?_1032: call    ?_1077                                  ; 10009CB6 _ E8, 000008B5
        cmp     eax, -1                                 ; 10009CBB _ 83. F8, FF
        jz      ?_1034                                  ; 10009CBE _ 74, 35
        call    ?_1098                                  ; 10009CC0 _ E8, 00000B9B
        cmp     eax, -1                                 ; 10009CC5 _ 83. F8, FF
        jz      ?_1034                                  ; 10009CC8 _ 74, 2B
        call    ?_1119                                  ; 10009CCA _ E8, 00000DF1
        cmp     eax, -1                                 ; 10009CCF _ 83. F8, FF
        jz      ?_1036                                  ; 10009CD2 _ 74, 3A
        cmp     dword [?_5526], ebp                     ; 10009CD4 _ 39. 2D, 10034680(d)
        je      ?_1007                                  ; 10009CDA _ 0F 84, FFFFFD64
?_1033: pop     edi                                     ; 10009CE0 _ 5F
        mov     dword [?_5526], ebp                     ; 10009CE1 _ 89. 2D, 10034680(d)
        pop     esi                                     ; 10009CE7 _ 5E
        pop     ebp                                     ; 10009CE8 _ 5D
        xor     eax, eax                                ; 10009CE9 _ 33. C0
        pop     ebx                                     ; 10009CEB _ 5B
        add     esp, 484                                ; 10009CEC _ 81. C4, 000001E4
        ret     4                                       ; 10009CF2 _ C2, 0004

?_1034: push    1                                       ; 10009CF5 _ 6A, 01
        push    ?_5207                                  ; 10009CF7 _ 68, 1002986C(d)
        push    840                                     ; 10009CFC _ 68, 00000348
?_1035: push    ?_5209                                  ; 10009D01 _ 68, 100298B0(d)
        call    ?_0267                                  ; 10009D06 _ E8, FFFF9935
        add     esp, 16                                 ; 10009D0B _ 83. C4, 10
?_1036: call    ?_1047                                  ; 10009D0E _ E8, 000002FD
        pop     edi                                     ; 10009D13 _ 5F
        pop     esi                                     ; 10009D14 _ 5E
        pop     ebp                                     ; 10009D15 _ 5D
        xor     eax, eax                                ; 10009D16 _ 33. C0
        pop     ebx                                     ; 10009D18 _ 5B
        add     esp, 484                                ; 10009D19 _ 81. C4, 000001E4
        ret     4                                       ; 10009D1F _ C2, 0004

        nop                                             ; 10009D22 _ 90
        nop                                             ; 10009D23 _ 90
        nop                                             ; 10009D24 _ 90
        nop                                             ; 10009D25 _ 90
        nop                                             ; 10009D26 _ 90
        nop                                             ; 10009D27 _ 90
        nop                                             ; 10009D28 _ 90
        nop                                             ; 10009D29 _ 90
        nop                                             ; 10009D2A _ 90
        nop                                             ; 10009D2B _ 90
        nop                                             ; 10009D2C _ 90
        nop                                             ; 10009D2D _ 90
        nop                                             ; 10009D2E _ 90
        nop                                             ; 10009D2F _ 90

