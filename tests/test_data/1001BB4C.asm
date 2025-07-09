; ---- 1001BB4C ----
?_3364: ; Local function
        call    ?_3177                                  ; 1001BB4C _ E8, FFFFF1D8
        cmp     byte [?_5569], 0                        ; 1001BB51 _ 80. 3D, 100354E8(d), 00
        jz      ?_3365                                  ; 1001BB58 _ 74, 05
        jmp     ?_4187                                  ; 1001BB5A _ E9, 00004562

?_3365: ret                                             ; 1001BB5F _ C3

?_3366: mov     eax, dword [esp+4H]                     ; 1001BB60 _ 8B. 44 24, 04
        mov     ecx, ?_5446                             ; 1001BB64 _ B9, 100317F8(d)
        cmp     eax, ecx                                ; 1001BB69 _ 3B. C1
        jc      ?_3367                                  ; 1001BB6B _ 72, 17
        cmp     eax, ?_5451                             ; 1001BB6D _ 3D, 10031A58(d)
        ja      ?_3367                                  ; 1001BB72 _ 77, 10
        sub     eax, ecx                                ; 1001BB74 _ 2B. C1
        sar     eax, 5                                  ; 1001BB76 _ C1. F8, 05
        add     eax, 28                                 ; 1001BB79 _ 83. C0, 1C
        push    eax                                     ; 1001BB7C _ 50
        call    ?_3610                                  ; 1001BB7D _ E8, 000014B4
        pop     ecx                                     ; 1001BB82 _ 59
        ret                                             ; 1001BB83 _ C3

?_3367: add     eax, 32                                 ; 1001BB84 _ 83. C0, 20
        push    eax                                     ; 1001BB87 _ 50
        call    near [imp_EnterCriticalSection]         ; 1001BB88 _ FF. 15, 100240EC(d)
        ret                                             ; 1001BB8E _ C3

?_3368: mov     eax, dword [esp+4H]                     ; 1001BB8F _ 8B. 44 24, 04
        cmp     eax, 20                                 ; 1001BB93 _ 83. F8, 14
        jge     ?_3369                                  ; 1001BB96 _ 7D, 0B
        add     eax, 28                                 ; 1001BB98 _ 83. C0, 1C
        push    eax                                     ; 1001BB9B _ 50
        call    ?_3610                                  ; 1001BB9C _ E8, 00001495
        pop     ecx                                     ; 1001BBA1 _ 59
        ret                                             ; 1001BBA2 _ C3

?_3369: mov     eax, dword [esp+8H]                     ; 1001BBA3 _ 8B. 44 24, 08
        add     eax, 32                                 ; 1001BBA7 _ 83. C0, 20
        push    eax                                     ; 1001BBAA _ 50
        call    near [imp_EnterCriticalSection]         ; 1001BBAB _ FF. 15, 100240EC(d)
        ret                                             ; 1001BBB1 _ C3

?_3370: mov     eax, dword [esp+4H]                     ; 1001BBB2 _ 8B. 44 24, 04
        mov     ecx, ?_5446                             ; 1001BBB6 _ B9, 100317F8(d)
        cmp     eax, ecx                                ; 1001BBBB _ 3B. C1
        jc      ?_3371                                  ; 1001BBBD _ 72, 17
        cmp     eax, ?_5451                             ; 1001BBBF _ 3D, 10031A58(d)
        ja      ?_3371                                  ; 1001BBC4 _ 77, 10
        sub     eax, ecx                                ; 1001BBC6 _ 2B. C1
        sar     eax, 5                                  ; 1001BBC8 _ C1. F8, 05
        add     eax, 28                                 ; 1001BBCB _ 83. C0, 1C
        push    eax                                     ; 1001BBCE _ 50
        call    ?_3615                                  ; 1001BBCF _ E8, 000014C3
        pop     ecx                                     ; 1001BBD4 _ 59
        ret                                             ; 1001BBD5 _ C3

?_3371: add     eax, 32                                 ; 1001BBD6 _ 83. C0, 20
        push    eax                                     ; 1001BBD9 _ 50
        call    near [imp_LeaveCriticalSection]         ; 1001BBDA _ FF. 15, 100240F0(d)
        ret                                             ; 1001BBE0 _ C3

?_3372: mov     eax, dword [esp+4H]                     ; 1001BBE1 _ 8B. 44 24, 04
        cmp     eax, 20                                 ; 1001BBE5 _ 83. F8, 14
        jge     ?_3373                                  ; 1001BBE8 _ 7D, 0B
        add     eax, 28                                 ; 1001BBEA _ 83. C0, 1C
        push    eax                                     ; 1001BBED _ 50
        call    ?_3615                                  ; 1001BBEE _ E8, 000014A4
        pop     ecx                                     ; 1001BBF3 _ 59
        ret                                             ; 1001BBF4 _ C3

?_3373: mov     eax, dword [esp+8H]                     ; 1001BBF5 _ 8B. 44 24, 08
        add     eax, 32                                 ; 1001BBF9 _ 83. C0, 20
        push    eax                                     ; 1001BBFC _ 50
        call    near [imp_LeaveCriticalSection]         ; 1001BBFD _ FF. 15, 100240F0(d)
        ret                                             ; 1001BC03 _ C3

?_3374: push    esi                                     ; 1001BC04 _ 56
        mov     esi, dword [esp+8H]                     ; 1001BC05 _ 8B. 74 24, 08
        cmp     esi, dword [?_5811]                     ; 1001BC09 _ 3B. 35, 11766560(d)
        jnc     ?_3375                                  ; 1001BC0F _ 73, 38
        mov     ecx, esi                                ; 1001BC11 _ 8B. CE
        mov     eax, esi                                ; 1001BC13 _ 8B. C6
        sar     ecx, 5                                  ; 1001BC15 _ C1. F9, 05
        and     eax, 1FH                                ; 1001BC18 _ 83. E0, 1F
        mov     ecx, dword [?_5809+ecx*4]               ; 1001BC1B _ 8B. 0C 8D, 11766460(d)
        lea     eax, [eax+eax*8]                        ; 1001BC22 _ 8D. 04 C0
        test    byte [ecx+eax*4+4H], 01H                ; 1001BC25 _ F6. 44 81, 04, 01
        jz      ?_3375                                  ; 1001BC2A _ 74, 1D
        push    edi                                     ; 1001BC2C _ 57
        push    esi                                     ; 1001BC2D _ 56
        call    ?_4220                                  ; 1001BC2E _ E8, 0000476F
        push    esi                                     ; 1001BC33 _ 56
        call    ?_3376                                  ; 1001BC34 _ E8, 00000028
        push    esi                                     ; 1001BC39 _ 56
        mov     edi, eax                                ; 1001BC3A _ 8B. F8
        call    ?_4223                                  ; 1001BC3C _ E8, 000047C0
        add     esp, 12                                 ; 1001BC41 _ 83. C4, 0C
        mov     eax, edi                                ; 1001BC44 _ 8B. C7
        pop     edi                                     ; 1001BC46 _ 5F
        pop     esi                                     ; 1001BC47 _ 5E
        ret                                             ; 1001BC48 _ C3

?_3375: call    ?_3107                                  ; 1001BC49 _ E8, FFFFEB97
        mov     dword [eax], 9                          ; 1001BC4E _ C7. 00, 00000009
        call    ?_3108                                  ; 1001BC54 _ E8, FFFFEB95
        and     dword [eax], 00H                        ; 1001BC59 _ 83. 20, 00
        or      eax, 0FFFFFFFFH                         ; 1001BC5C _ 83. C8, FF
        pop     esi                                     ; 1001BC5F _ 5E
        ret                                             ; 1001BC60 _ C3

?_3376: push    esi                                     ; 1001BC61 _ 56
        mov     esi, dword [esp+8H]                     ; 1001BC62 _ 8B. 74 24, 08
        push    edi                                     ; 1001BC66 _ 57
        push    esi                                     ; 1001BC67 _ 56
        call    ?_4218                                  ; 1001BC68 _ E8, 000046F3
        cmp     eax, -1                                 ; 1001BC6D _ 83. F8, FF
        pop     ecx                                     ; 1001BC70 _ 59
        jz      ?_3379                                  ; 1001BC71 _ 74, 3C
        cmp     esi, 1                                  ; 1001BC73 _ 83. FE, 01
        jz      ?_3377                                  ; 1001BC76 _ 74, 05
        cmp     esi, 2                                  ; 1001BC78 _ 83. FE, 02
        jnz     ?_3378                                  ; 1001BC7B _ 75, 16
?_3377: push    2                                       ; 1001BC7D _ 6A, 02
        call    ?_4218                                  ; 1001BC7F _ E8, 000046DC
        push    1                                       ; 1001BC84 _ 6A, 01
        mov     edi, eax                                ; 1001BC86 _ 8B. F8
        call    ?_4218                                  ; 1001BC88 _ E8, 000046D3
        pop     ecx                                     ; 1001BC8D _ 59
        cmp     eax, edi                                ; 1001BC8E _ 3B. C7
        pop     ecx                                     ; 1001BC90 _ 59
        jz      ?_3379                                  ; 1001BC91 _ 74, 1C
?_3378: push    esi                                     ; 1001BC93 _ 56
        call    ?_4218                                  ; 1001BC94 _ E8, 000046C7
        pop     ecx                                     ; 1001BC99 _ 59
        push    eax                                     ; 1001BC9A _ 50
        call    near [imp_CloseHandle]                  ; 1001BC9B _ FF. 15, 10024010(d)
        test    eax, eax                                ; 1001BCA1 _ 85. C0
        jnz     ?_3379                                  ; 1001BCA3 _ 75, 0A
        call    near [imp_GetLastError]                 ; 1001BCA5 _ FF. 15, 100240DC(d)
        mov     edi, eax                                ; 1001BCAB _ 8B. F8
        jmp     ?_3380                                  ; 1001BCAD _ EB, 02

?_3379: xor     edi, edi                                ; 1001BCAF _ 33. FF
?_3380: push    esi                                     ; 1001BCB1 _ 56
        call    ?_4211                                  ; 1001BCB2 _ E8, 0000462A
        mov     eax, esi                                ; 1001BCB7 _ 8B. C6
        and     esi, 1FH                                ; 1001BCB9 _ 83. E6, 1F
        sar     eax, 5                                  ; 1001BCBC _ C1. F8, 05
        pop     ecx                                     ; 1001BCBF _ 59
        mov     eax, dword [?_5809+eax*4]               ; 1001BCC0 _ 8B. 04 85, 11766460(d)
        lea     ecx, [esi+esi*8]                        ; 1001BCC7 _ 8D. 0C F6
        and     byte [eax+ecx*4+4H], 00H                ; 1001BCCA _ 80. 64 88, 04, 00
        test    edi, edi                                ; 1001BCCF _ 85. FF
        jz      ?_3381                                  ; 1001BCD1 _ 74, 0C
        push    edi                                     ; 1001BCD3 _ 57
        call    ?_3102                                  ; 1001BCD4 _ E8, FFFFEA99
        pop     ecx                                     ; 1001BCD9 _ 59
        or      eax, 0FFFFFFFFH                         ; 1001BCDA _ 83. C8, FF
        jmp     ?_3382                                  ; 1001BCDD _ EB, 02

?_3381: xor     eax, eax                                ; 1001BCDF _ 33. C0
?_3382: pop     edi                                     ; 1001BCE1 _ 5F
        pop     esi                                     ; 1001BCE2 _ 5E
        ret                                             ; 1001BCE3 _ C3

?_3383: push    esi                                     ; 1001BCE4 _ 56
        mov     esi, dword [esp+8H]                     ; 1001BCE5 _ 8B. 74 24, 08
        mov     eax, dword [esi+0CH]                    ; 1001BCE9 _ 8B. 46, 0C
        test    al, 0FFFFFF83H                          ; 1001BCEC _ A8, 83
        jz      ?_3384                                  ; 1001BCEE _ 74, 1D
        test    al, 08H                                 ; 1001BCF0 _ A8, 08
        jz      ?_3384                                  ; 1001BCF2 _ 74, 19
        push    dword [esi+8H]                          ; 1001BCF4 _ FF. 76, 08
        call    ?_3158                                  ; 1001BCF7 _ E8, FFFFEE85
; Note: Length-changing prefix causes delay on Intel processors
        and     word [esi+0CH], 0FBF7H                  ; 1001BCFC _ 66: 81. 66, 0C, FBF7
        xor     eax, eax                                ; 1001BD02 _ 33. C0
        pop     ecx                                     ; 1001BD04 _ 59
        mov     dword [esi], eax                        ; 1001BD05 _ 89. 06
        mov     dword [esi+8H], eax                     ; 1001BD07 _ 89. 46, 08
        mov     dword [esi+4H], eax                     ; 1001BD0A _ 89. 46, 04
?_3384: pop     esi                                     ; 1001BD0D _ 5E
        ret                                             ; 1001BD0E _ C3

?_3385: push    esi                                     ; 1001BD0F _ 56
        mov     esi, dword [esp+8H]                     ; 1001BD10 _ 8B. 74 24, 08
        push    dword [esi+10H]                         ; 1001BD14 _ FF. 76, 10
        call    ?_4224                                  ; 1001BD17 _ E8, 00004707
        test    eax, eax                                ; 1001BD1C _ 85. C0
        pop     ecx                                     ; 1001BD1E _ 59
        jz      ?_3390                                  ; 1001BD1F _ 74, 77
        cmp     esi, ?_5448                             ; 1001BD21 _ 81. FE, 10031818(d)
        jnz     ?_3386                                  ; 1001BD27 _ 75, 04
        xor     eax, eax                                ; 1001BD29 _ 33. C0
        jmp     ?_3387                                  ; 1001BD2B _ EB, 0B

?_3386: cmp     esi, ?_5449                             ; 1001BD2D _ 81. FE, 10031838(d)
        jnz     ?_3390                                  ; 1001BD33 _ 75, 63
        push    1                                       ; 1001BD35 _ 6A, 01
        pop     eax                                     ; 1001BD37 _ 58
?_3387: inc     dword [?_5577]                          ; 1001BD38 _ FF. 05, 10035510(d)
; Note: Length-changing prefix causes delay on Intel processors
        test    word [esi+0CH], 10CH                    ; 1001BD3E _ 66: F7. 46, 0C, 010C
        jnz     ?_3390                                  ; 1001BD44 _ 75, 52
        cmp     dword [?_5578+eax*4], 0                 ; 1001BD46 _ 83. 3C 85, 10035514(d), 00
        push    ebx                                     ; 1001BD4E _ 53
        push    edi                                     ; 1001BD4F _ 57
        lea     edi, [?_5578+eax*4]                     ; 1001BD50 _ 8D. 3C 85, 10035514(d)
        mov     ebx, 4096                               ; 1001BD57 _ BB, 00001000
        jnz     ?_3388                                  ; 1001BD5C _ 75, 20
        push    ebx                                     ; 1001BD5E _ 53
        call    ?_3109                                  ; 1001BD5F _ E8, FFFFEA93
        test    eax, eax                                ; 1001BD64 _ 85. C0
        pop     ecx                                     ; 1001BD66 _ 59
        mov     dword [edi], eax                        ; 1001BD67 _ 89. 07
        jnz     ?_3388                                  ; 1001BD69 _ 75, 13
        lea     eax, [esi+14H]                          ; 1001BD6B _ 8D. 46, 14
        push    2                                       ; 1001BD6E _ 6A, 02
        mov     dword [esi+8H], eax                     ; 1001BD70 _ 89. 46, 08
        mov     dword [esi], eax                        ; 1001BD73 _ 89. 06
        pop     eax                                     ; 1001BD75 _ 58
        mov     dword [esi+18H], eax                    ; 1001BD76 _ 89. 46, 18
        mov     dword [esi+4H], eax                     ; 1001BD79 _ 89. 46, 04
        jmp     ?_3389                                  ; 1001BD7C _ EB, 0D

?_3388: mov     edi, dword [edi]                        ; 1001BD7E _ 8B. 3F
        mov     dword [esi+18H], ebx                    ; 1001BD80 _ 89. 5E, 18
        mov     dword [esi+8H], edi                     ; 1001BD83 _ 89. 7E, 08
        mov     dword [esi], edi                        ; 1001BD86 _ 89. 3E
        mov     dword [esi+4H], ebx                     ; 1001BD88 _ 89. 5E, 04
?_3389:
; Note: Length-changing prefix causes delay on Intel processors
        or      word [esi+0CH], 1102H                   ; 1001BD8B _ 66: 81. 4E, 0C, 1102
        push    1                                       ; 1001BD91 _ 6A, 01
        pop     eax                                     ; 1001BD93 _ 58
        pop     edi                                     ; 1001BD94 _ 5F
        pop     ebx                                     ; 1001BD95 _ 5B
        pop     esi                                     ; 1001BD96 _ 5E
        ret                                             ; 1001BD97 _ C3

?_3390: xor     eax, eax                                ; 1001BD98 _ 33. C0
        pop     esi                                     ; 1001BD9A _ 5E
        ret                                             ; 1001BD9B _ C3

?_3391: cmp     dword [esp+4H], 0                       ; 1001BD9C _ 83. 7C 24, 04, 00
        push    esi                                     ; 1001BDA1 _ 56
        jz      ?_3392                                  ; 1001BDA2 _ 74, 20
        mov     esi, dword [esp+0CH]                    ; 1001BDA4 _ 8B. 74 24, 0C
        test    byte [esi+0DH], 10H                     ; 1001BDA8 _ F6. 46, 0D, 10
        jz      ?_3392                                  ; 1001BDAC _ 74, 16
        push    esi                                     ; 1001BDAE _ 56
        call    ?_3174                                  ; 1001BDAF _ E8, FFFFEF19
        and     byte [esi+0DH], 0FFFFFFEEH              ; 1001BDB4 _ 80. 66, 0D, EE
        and     dword [esi+18H], 00H                    ; 1001BDB8 _ 83. 66, 18, 00
        and     dword [esi], 00H                        ; 1001BDBC _ 83. 26, 00
        and     dword [esi+8H], 00H                     ; 1001BDBF _ 83. 66, 08, 00
        pop     ecx                                     ; 1001BDC3 _ 59
?_3392: pop     esi                                     ; 1001BDC4 _ 5E
        ret                                             ; 1001BDC5 _ C3

; Filling space: 0AH
; Filler type: INT 3 Debug breakpoint
;       db 0CCH, 0CCH, 0CCH, 0CCH, 0CCH, 0CCH, 0CCH, 0CCH
;       db 0CCH, 0CCH

ALIGN   16
?_3393: mov     ecx, dword [esp+4H]                     ; 1001BDD0 _ 8B. 4C 24, 04
        test    ecx, 3H                                 ; 1001BDD4 _ F7. C1, 00000003
        jz      ?_3395                                  ; 1001BDDA _ 74, 14
?_3394: mov     al, byte [ecx]                          ; 1001BDDC _ 8A. 01
        inc     ecx                                     ; 1001BDDE _ 41
        test    al, al                                  ; 1001BDDF _ 84. C0
        jz      ?_3396                                  ; 1001BDE1 _ 74, 40
        test    ecx, 3H                                 ; 1001BDE3 _ F7. C1, 00000003
        jnz     ?_3394                                  ; 1001BDE9 _ 75, F1
; Note: Immediate operand could be made smaller by sign extension
        add     eax, 0                                  ; 1001BDEB _ 05, 00000000
?_3395: mov     eax, dword [ecx]                        ; 1001BDF0 _ 8B. 01
        mov     edx, 2130640639                         ; 1001BDF2 _ BA, 7EFEFEFF
        add     edx, eax                                ; 1001BDF7 _ 03. D0
        xor     eax, 0FFFFFFFFH                         ; 1001BDF9 _ 83. F0, FF
        xor     eax, edx                                ; 1001BDFC _ 33. C2
        add     ecx, 4                                  ; 1001BDFE _ 83. C1, 04
        test    eax, 81010100H                          ; 1001BE01 _ A9, 81010100
        jz      ?_3395                                  ; 1001BE06 _ 74, E8
        mov     eax, dword [ecx-4H]                     ; 1001BE08 _ 8B. 41, FC
        test    al, al                                  ; 1001BE0B _ 84. C0
        jz      ?_3399                                  ; 1001BE0D _ 74, 32
        test    ah, ah                                  ; 1001BE0F _ 84. E4
        jz      ?_3398                                  ; 1001BE11 _ 74, 24
        test    eax, 0FF0000H                           ; 1001BE13 _ A9, 00FF0000
        jz      ?_3397                                  ; 1001BE18 _ 74, 13
        test    eax, 0FF000000H                         ; 1001BE1A _ A9, FF000000
        jz      ?_3396                                  ; 1001BE1F _ 74, 02
        jmp     ?_3395                                  ; 1001BE21 _ EB, CD

?_3396: lea     eax, [ecx-1H]                           ; 1001BE23 _ 8D. 41, FF
        mov     ecx, dword [esp+4H]                     ; 1001BE26 _ 8B. 4C 24, 04
        sub     eax, ecx                                ; 1001BE2A _ 2B. C1
        ret                                             ; 1001BE2C _ C3

?_3397: lea     eax, [ecx-2H]                           ; 1001BE2D _ 8D. 41, FE
        mov     ecx, dword [esp+4H]                     ; 1001BE30 _ 8B. 4C 24, 04
        sub     eax, ecx                                ; 1001BE34 _ 2B. C1
        ret                                             ; 1001BE36 _ C3

?_3398: lea     eax, [ecx-3H]                           ; 1001BE37 _ 8D. 41, FD
        mov     ecx, dword [esp+4H]                     ; 1001BE3A _ 8B. 4C 24, 04
        sub     eax, ecx                                ; 1001BE3E _ 2B. C1
        ret                                             ; 1001BE40 _ C3

?_3399: lea     eax, [ecx-4H]                           ; 1001BE41 _ 8D. 41, FC
        mov     ecx, dword [esp+4H]                     ; 1001BE44 _ 8B. 4C 24, 04
        sub     eax, ecx                                ; 1001BE48 _ 2B. C1
        ret                                             ; 1001BE4A _ C3

?_3400: push    ebp                                     ; 1001BE4B _ 55
        mov     ebp, esp                                ; 1001BE4C _ 8B. EC
        push    ecx                                     ; 1001BE4E _ 51
        push    ecx                                     ; 1001BE4F _ 51
        push    ebx                                     ; 1001BE50 _ 53
        push    esi                                     ; 1001BE51 _ 56
        mov     esi, dword [?_5584]                     ; 1001BE52 _ 8B. 35, 10035598(d)
        push    edi                                     ; 1001BE58 _ 57
        mov     edi, dword [ebp+0CH]                    ; 1001BE59 _ 8B. 7D, 0C
        xor     ebx, ebx                                ; 1001BE5C _ 33. DB
        mov     dword [ebp-8H], ebx                     ; 1001BE5E _ 89. 5D, F8
        mov     dword [ebp-4H], ebx                     ; 1001BE61 _ 89. 5D, FC
        mov     al, byte [edi]                          ; 1001BE64 _ 8A. 07
        cmp     al, 97                                  ; 1001BE66 _ 3C, 61
        jz      ?_3402                                  ; 1001BE68 _ 74, 1A
        cmp     al, 114                                 ; 1001BE6A _ 3C, 72
        jz      ?_3401                                  ; 1001BE6C _ 74, 0F
        cmp     al, 119                                 ; 1001BE6E _ 3C, 77
        jne     ?_3417                                  ; 1001BE70 _ 0F 85, 00000122
        mov     ecx, 769                                ; 1001BE76 _ B9, 00000301
        jmp     ?_3403                                  ; 1001BE7B _ EB, 0C

?_3401: xor     ecx, ecx                                ; 1001BE7D _ 33. C9
        or      esi, 01H                                ; 1001BE7F _ 83. CE, 01
        jmp     ?_3404                                  ; 1001BE82 _ EB, 08

?_3402: mov     ecx, 265                                ; 1001BE84 _ B9, 00000109
?_3403: or      esi, 02H                                ; 1001BE89 _ 83. CE, 02
?_3404: push    1                                       ; 1001BE8C _ 6A, 01
        pop     edx                                     ; 1001BE8E _ 5A
?_3405: mov     al, byte [edi+1H]                       ; 1001BE8F _ 8A. 47, 01
        inc     edi                                     ; 1001BE92 _ 47
        cmp     al, bl                                  ; 1001BE93 _ 3A. C3
        je      ?_3416                                  ; 1001BE95 _ 0F 84, 000000E3
        cmp     edx, ebx                                ; 1001BE9B _ 3B. D3
        je      ?_3416                                  ; 1001BE9D _ 0F 84, 000000DB
        movsx   eax, al                                 ; 1001BEA3 _ 0F BE. C0
        cmp     eax, 84                                 ; 1001BEA6 _ 83. F8, 54
        jg      ?_3410                                  ; 1001BEA9 _ 7F, 72
        jz      ?_3409                                  ; 1001BEAB _ 74, 60
        sub     eax, 43                                 ; 1001BEAD _ 83. E8, 2B
        jz      ?_3408                                  ; 1001BEB0 _ 74, 45
        sub     eax, 25                                 ; 1001BEB2 _ 83. E8, 19
        jz      ?_3407                                  ; 1001BEB5 _ 74, 36
        sub     eax, 14                                 ; 1001BEB7 _ 83. E8, 0E
        jz      ?_3406                                  ; 1001BEBA _ 74, 1C
        dec     eax                                     ; 1001BEBC _ 48
        jne     ?_3414                                  ; 1001BEBD _ 0F 85, 000000AC
        cmp     dword [ebp-4H], ebx                     ; 1001BEC3 _ 39. 5D, FC
        jne     ?_3414                                  ; 1001BEC6 _ 0F 85, 000000A3
        mov     dword [ebp-4H], 1                       ; 1001BECC _ C7. 45, FC, 00000001
        or      ecx, 20H                                ; 1001BED3 _ 83. C9, 20
        jmp     ?_3405                                  ; 1001BED6 _ EB, B7

?_3406: cmp     dword [ebp-4H], ebx                     ; 1001BED8 _ 39. 5D, FC
        jne     ?_3414                                  ; 1001BEDB _ 0F 85, 0000008E
        mov     dword [ebp-4H], 1                       ; 1001BEE1 _ C7. 45, FC, 00000001
        or      ecx, 10H                                ; 1001BEE8 _ 83. C9, 10
        jmp     ?_3405                                  ; 1001BEEB _ EB, A2

?_3407: test    cl, 40H                                 ; 1001BEED _ F6. C1, 40
        jnz     ?_3414                                  ; 1001BEF0 _ 75, 7D
        or      ecx, 40H                                ; 1001BEF2 _ 83. C9, 40
        jmp     ?_3405                                  ; 1001BEF5 _ EB, 98

?_3408: test    cl, 02H                                 ; 1001BEF7 _ F6. C1, 02
        jnz     ?_3414                                  ; 1001BEFA _ 75, 73
        and     ecx, 0FFFFFFFEH                         ; 1001BEFC _ 83. E1, FE
        and     esi, 0FFFFFFFCH                         ; 1001BEFF _ 83. E6, FC
        or      ecx, 02H                                ; 1001BF02 _ 83. C9, 02
        or      esi, 80H                                ; 1001BF05 _ 81. CE, 00000080
        jmp     ?_3405                                  ; 1001BF0B _ EB, 82

?_3409: mov     eax, 4096                               ; 1001BF0D _ B8, 00001000
        test    eax, ecx                                ; 1001BF12 _ 85. C8
        jnz     ?_3414                                  ; 1001BF14 _ 75, 59
        or      ecx, eax                                ; 1001BF16 _ 0B. C8
        jmp     ?_3405                                  ; 1001BF18 _ E9, FFFFFF72

?_3410: sub     eax, 98                                 ; 1001BF1D _ 83. E8, 62
        jz      ?_3413                                  ; 1001BF20 _ 74, 48
        dec     eax                                     ; 1001BF22 _ 48
        jz      ?_3412                                  ; 1001BF23 _ 74, 2E
        sub     eax, 11                                 ; 1001BF25 _ 83. E8, 0B
        jz      ?_3411                                  ; 1001BF28 _ 74, 12
        sub     eax, 6                                  ; 1001BF2A _ 83. E8, 06
        jnz     ?_3414                                  ; 1001BF2D _ 75, 40
        test    ch, 0FFFFFFC0H                          ; 1001BF2F _ F6. C5, C0
        jnz     ?_3414                                  ; 1001BF32 _ 75, 3B
        or      ch, 40H                                 ; 1001BF34 _ 80. CD, 40
        jmp     ?_3405                                  ; 1001BF37 _ E9, FFFFFF53

?_3411: cmp     dword [ebp-8H], ebx                     ; 1001BF3C _ 39. 5D, F8
        jnz     ?_3414                                  ; 1001BF3F _ 75, 2E
        mov     dword [ebp-8H], 1                       ; 1001BF41 _ C7. 45, F8, 00000001
        and     esi, 0FFFFBFFFH                         ; 1001BF48 _ 81. E6, FFFFBFFF
        jmp     ?_3405                                  ; 1001BF4E _ E9, FFFFFF3C

?_3412: cmp     dword [ebp-8H], ebx                     ; 1001BF53 _ 39. 5D, F8
        jnz     ?_3414                                  ; 1001BF56 _ 75, 17
        mov     dword [ebp-8H], 1                       ; 1001BF58 _ C7. 45, F8, 00000001
        or      esi, 4000H                              ; 1001BF5F _ 81. CE, 00004000
        jmp     ?_3405                                  ; 1001BF65 _ E9, FFFFFF25

?_3413: test    ch, 0FFFFFFC0H                          ; 1001BF6A _ F6. C5, C0
        jz      ?_3415                                  ; 1001BF6D _ 74, 07
?_3414: xor     edx, edx                                ; 1001BF6F _ 33. D2
        jmp     ?_3405                                  ; 1001BF71 _ E9, FFFFFF19

?_3415: or      ch, 0FFFFFF80H                          ; 1001BF76 _ 80. CD, 80
        jmp     ?_3405                                  ; 1001BF79 _ E9, FFFFFF11

?_3416: push    420                                     ; 1001BF7E _ 68, 000001A4
        push    dword [ebp+10H]                         ; 1001BF83 _ FF. 75, 10
        push    ecx                                     ; 1001BF86 _ 51
        push    dword [ebp+8H]                          ; 1001BF87 _ FF. 75, 08
        call    ?_4226                                  ; 1001BF8A _ E8, 000044BD
        mov     ecx, eax                                ; 1001BF8F _ 8B. C8
        add     esp, 16                                 ; 1001BF91 _ 83. C4, 10
        cmp     ecx, ebx                                ; 1001BF94 _ 3B. CB
        jge     ?_3418                                  ; 1001BF96 _ 7D, 04
?_3417: xor     eax, eax                                ; 1001BF98 _ 33. C0
        jmp     ?_3419                                  ; 1001BF9A _ EB, 1A

?_3418: mov     eax, dword [ebp+14H]                    ; 1001BF9C _ 8B. 45, 14
        inc     dword [?_5577]                          ; 1001BF9F _ FF. 05, 10035510(d)
        mov     dword [eax+0CH], esi                    ; 1001BFA5 _ 89. 70, 0C
        mov     dword [eax+4H], ebx                     ; 1001BFA8 _ 89. 58, 04
        mov     dword [eax], ebx                        ; 1001BFAB _ 89. 18
        mov     dword [eax+8H], ebx                     ; 1001BFAD _ 89. 58, 08
        mov     dword [eax+1CH], ebx                    ; 1001BFB0 _ 89. 58, 1C
        mov     dword [eax+10H], ecx                    ; 1001BFB3 _ 89. 48, 10
?_3419: pop     edi                                     ; 1001BFB6 _ 5F
        pop     esi                                     ; 1001BFB7 _ 5E
        pop     ebx                                     ; 1001BFB8 _ 5B
        leave                                           ; 1001BFB9 _ C9
        ret                                             ; 1001BFBA _ C3

?_3420: push    ebx                                     ; 1001BFBB _ 53
        push    esi                                     ; 1001BFBC _ 56
        push    edi                                     ; 1001BFBD _ 57
        push    2                                       ; 1001BFBE _ 6A, 02
        xor     ebx, ebx                                ; 1001BFC0 _ 33. DB
        xor     edi, edi                                ; 1001BFC2 _ 33. FF
        call    ?_3610                                  ; 1001BFC4 _ E8, 0000106D
        xor     esi, esi                                ; 1001BFC9 _ 33. F6
        cmp     dword [?_5814], ebx                     ; 1001BFCB _ 39. 1D, 11767580(d)
        pop     ecx                                     ; 1001BFD1 _ 59
        jle     ?_3426                                  ; 1001BFD2 _ 0F 8E, 0000009D
?_3421: mov     eax, dword [?_5812]                     ; 1001BFD8 _ A1, 11766564(d)
        mov     eax, dword [eax+esi*4]                  ; 1001BFDD _ 8B. 04 B0
        cmp     eax, ebx                                ; 1001BFE0 _ 3B. C3
        jz      ?_3424                                  ; 1001BFE2 _ 74, 37
        test    byte [eax+0CH], 0FFFFFF83H              ; 1001BFE4 _ F6. 40, 0C, 83
        jnz     ?_3422                                  ; 1001BFE8 _ 75, 21
        push    eax                                     ; 1001BFEA _ 50
        push    esi                                     ; 1001BFEB _ 56
        call    ?_3368                                  ; 1001BFEC _ E8, FFFFFB9E
        pop     ecx                                     ; 1001BFF1 _ 59
        pop     ecx                                     ; 1001BFF2 _ 59
        mov     ecx, dword [?_5812]                     ; 1001BFF3 _ 8B. 0D, 11766564(d)
        mov     eax, dword [ecx+esi*4]                  ; 1001BFF9 _ 8B. 04 B1
        test    byte [eax+0CH], 0FFFFFF83H              ; 1001BFFC _ F6. 40, 0C, 83
        jz      ?_3423                                  ; 1001C000 _ 74, 14
        push    eax                                     ; 1001C002 _ 50
        push    esi                                     ; 1001C003 _ 56
        call    ?_3372                                  ; 1001C004 _ E8, FFFFFBD8
        pop     ecx                                     ; 1001C009 _ 59
        pop     ecx                                     ; 1001C00A _ 59
?_3422: inc     esi                                     ; 1001C00B _ 46
        cmp     esi, dword [?_5814]                     ; 1001C00C _ 3B. 35, 11767580(d)
        jl      ?_3421                                  ; 1001C012 _ 7C, C4
        jmp     ?_3426                                  ; 1001C014 _ EB, 5F

?_3423: mov     edi, dword [ecx+esi*4]                  ; 1001C016 _ 8B. 3C B1
        jmp     ?_3425                                  ; 1001C019 _ EB, 44

?_3424: push    56                                      ; 1001C01B _ 6A, 38
        shl     esi, 2                                  ; 1001C01D _ C1. E6, 02
        call    ?_3109                                  ; 1001C020 _ E8, FFFFE7D2
        pop     ecx                                     ; 1001C025 _ 59
        mov     ecx, dword [?_5812]                     ; 1001C026 _ 8B. 0D, 11766564(d)
        mov     dword [esi+ecx], eax                    ; 1001C02C _ 89. 04 0E
        mov     eax, dword [?_5812]                     ; 1001C02F _ A1, 11766564(d)
        mov     eax, dword [esi+eax]                    ; 1001C034 _ 8B. 04 06
        cmp     eax, ebx                                ; 1001C037 _ 3B. C3
        jz      ?_3426                                  ; 1001C039 _ 74, 3A
        add     eax, 32                                 ; 1001C03B _ 83. C0, 20
        push    eax                                     ; 1001C03E _ 50
        call    near [imp_InitializeCriticalSection]    ; 1001C03F _ FF. 15, 100240F4(d)
        mov     eax, dword [?_5812]                     ; 1001C045 _ A1, 11766564(d)
        mov     eax, dword [esi+eax]                    ; 1001C04A _ 8B. 04 06
        add     eax, 32                                 ; 1001C04D _ 83. C0, 20
        push    eax                                     ; 1001C050 _ 50
        call    near [imp_EnterCriticalSection]         ; 1001C051 _ FF. 15, 100240EC(d)
        mov     eax, dword [?_5812]                     ; 1001C057 _ A1, 11766564(d)
        mov     edi, dword [esi+eax]                    ; 1001C05C _ 8B. 3C 06
?_3425: cmp     edi, ebx                                ; 1001C05F _ 3B. FB
        jz      ?_3426                                  ; 1001C061 _ 74, 12
        or      dword [edi+10H], 0FFFFFFFFH             ; 1001C063 _ 83. 4F, 10, FF
        mov     dword [edi+4H], ebx                     ; 1001C067 _ 89. 5F, 04
        mov     dword [edi+0CH], ebx                    ; 1001C06A _ 89. 5F, 0C
        mov     dword [edi+8H], ebx                     ; 1001C06D _ 89. 5F, 08
        mov     dword [edi], ebx                        ; 1001C070 _ 89. 1F
        mov     dword [edi+1CH], ebx                    ; 1001C072 _ 89. 5F, 1C
?_3426: push    2                                       ; 1001C075 _ 6A, 02
        call    ?_3615                                  ; 1001C077 _ E8, 0000101B
        pop     ecx                                     ; 1001C07C _ 59
        mov     eax, edi                                ; 1001C07D _ 8B. C7
        pop     edi                                     ; 1001C07F _ 5F
        pop     esi                                     ; 1001C080 _ 5E
        pop     ebx                                     ; 1001C081 _ 5B
        ret                                             ; 1001C082 _ C3

?_3427: push    ebp                                     ; 1001C083 _ 55
        mov     ebp, esp                                ; 1001C084 _ 8B. EC
        push    ebx                                     ; 1001C086 _ 53
        push    esi                                     ; 1001C087 _ 56
        mov     esi, dword [ebp+0CH]                    ; 1001C088 _ 8B. 75, 0C
        mov     eax, dword [esi+0CH]                    ; 1001C08B _ 8B. 46, 0C
        mov     ebx, dword [esi+10H]                    ; 1001C08E _ 8B. 5E, 10
        test    al, 0FFFFFF82H                          ; 1001C091 _ A8, 82
        je      ?_3439                                  ; 1001C093 _ 0F 84, 000000F6
        test    al, 40H                                 ; 1001C099 _ A8, 40
        jne     ?_3439                                  ; 1001C09B _ 0F 85, 000000EE
        test    al, 01H                                 ; 1001C0A1 _ A8, 01
        jz      ?_3428                                  ; 1001C0A3 _ 74, 16
        and     dword [esi+4H], 00H                     ; 1001C0A5 _ 83. 66, 04, 00
        test    al, 10H                                 ; 1001C0A9 _ A8, 10
        je      ?_3439                                  ; 1001C0AB _ 0F 84, 000000DE
        mov     ecx, dword [esi+8H]                     ; 1001C0B1 _ 8B. 4E, 08
        and     al, 0FFFFFFFEH                          ; 1001C0B4 _ 24, FE
        mov     dword [esi], ecx                        ; 1001C0B6 _ 89. 0E
        mov     dword [esi+0CH], eax                    ; 1001C0B8 _ 89. 46, 0C
?_3428: mov     eax, dword [esi+0CH]                    ; 1001C0BB _ 8B. 46, 0C
        and     dword [esi+4H], 00H                     ; 1001C0BE _ 83. 66, 04, 00
        and     dword [ebp+0CH], 00H                    ; 1001C0C2 _ 83. 65, 0C, 00
        and     al, 0FFFFFFEFH                          ; 1001C0C6 _ 24, EF
        or      al, 02H                                 ; 1001C0C8 _ 0C, 02
; Note: Length-changing prefix causes delay on Intel processors
        test    ax, 10CH                                ; 1001C0CA _ 66: A9, 010C
        mov     dword [esi+0CH], eax                    ; 1001C0CE _ 89. 46, 0C
        jnz     ?_3431                                  ; 1001C0D1 _ 75, 22
        cmp     esi, ?_5448                             ; 1001C0D3 _ 81. FE, 10031818(d)
        jz      ?_3429                                  ; 1001C0D9 _ 74, 08
        cmp     esi, ?_5449                             ; 1001C0DB _ 81. FE, 10031838(d)
        jnz     ?_3430                                  ; 1001C0E1 _ 75, 0B
?_3429: push    ebx                                     ; 1001C0E3 _ 53
        call    ?_4224                                  ; 1001C0E4 _ E8, 0000433A
        test    eax, eax                                ; 1001C0E9 _ 85. C0
        pop     ecx                                     ; 1001C0EB _ 59
        jnz     ?_3431                                  ; 1001C0EC _ 75, 07
?_3430: push    esi                                     ; 1001C0EE _ 56
        call    ?_4263                                  ; 1001C0EF _ E8, 00004627
        pop     ecx                                     ; 1001C0F4 _ 59
?_3431:
; Note: Length-changing prefix causes delay on Intel processors
        test    word [esi+0CH], 108H                    ; 1001C0F5 _ 66: F7. 46, 0C, 0108
        push    edi                                     ; 1001C0FB _ 57
        jz      ?_3436                                  ; 1001C0FC _ 74, 67
        mov     eax, dword [esi+8H]                     ; 1001C0FE _ 8B. 46, 08
        mov     edi, dword [esi]                        ; 1001C101 _ 8B. 3E
        sub     edi, eax                                ; 1001C103 _ 2B. F8
        lea     ecx, [eax+1H]                           ; 1001C105 _ 8D. 48, 01
        mov     dword [esi], ecx                        ; 1001C108 _ 89. 0E
        mov     ecx, dword [esi+18H]                    ; 1001C10A _ 8B. 4E, 18
        dec     ecx                                     ; 1001C10D _ 49
        test    edi, edi                                ; 1001C10E _ 85. FF
        mov     dword [esi+4H], ecx                     ; 1001C110 _ 89. 4E, 04
        jle     ?_3432                                  ; 1001C113 _ 7E, 10
        push    edi                                     ; 1001C115 _ 57
        push    eax                                     ; 1001C116 _ 50
        push    ebx                                     ; 1001C117 _ 53
        call    ?_3888                                  ; 1001C118 _ E8, 00002797
        add     esp, 12                                 ; 1001C11D _ 83. C4, 0C
        mov     dword [ebp+0CH], eax                    ; 1001C120 _ 89. 45, 0C
        jmp     ?_3435                                  ; 1001C123 _ EB, 36

?_3432: cmp     ebx, -1                                 ; 1001C125 _ 83. FB, FF
        jz      ?_3433                                  ; 1001C128 _ 74, 19
        mov     ecx, ebx                                ; 1001C12A _ 8B. CB
        mov     eax, ebx                                ; 1001C12C _ 8B. C3
        sar     ecx, 5                                  ; 1001C12E _ C1. F9, 05
        and     eax, 1FH                                ; 1001C131 _ 83. E0, 1F
        mov     ecx, dword [?_5809+ecx*4]               ; 1001C134 _ 8B. 0C 8D, 11766460(d)
        lea     eax, [eax+eax*8]                        ; 1001C13B _ 8D. 04 C0
        lea     eax, [ecx+eax*4]                        ; 1001C13E _ 8D. 04 81
        jmp     ?_3434                                  ; 1001C141 _ EB, 05

?_3433: mov     eax, ?_5455                             ; 1001C143 _ B8, 10031A88(d)
?_3434: test    byte [eax+4H], 20H                      ; 1001C148 _ F6. 40, 04, 20
        jz      ?_3435                                  ; 1001C14C _ 74, 0D
        push    2                                       ; 1001C14E _ 6A, 02
        push    0                                       ; 1001C150 _ 6A, 00
        push    ebx                                     ; 1001C152 _ 53
        call    ?_3575                                  ; 1001C153 _ E8, 00000A5D
        add     esp, 12                                 ; 1001C158 _ 83. C4, 0C
?_3435: mov     eax, dword [esi+8H]                     ; 1001C15B _ 8B. 46, 08
        mov     cl, byte [ebp+8H]                       ; 1001C15E _ 8A. 4D, 08
        mov     byte [eax], cl                          ; 1001C161 _ 88. 08
        jmp     ?_3437                                  ; 1001C163 _ EB, 14

?_3436: push    1                                       ; 1001C165 _ 6A, 01
        lea     eax, [ebp+8H]                           ; 1001C167 _ 8D. 45, 08
        pop     edi                                     ; 1001C16A _ 5F
        push    edi                                     ; 1001C16B _ 57
        push    eax                                     ; 1001C16C _ 50
        push    ebx                                     ; 1001C16D _ 53
        call    ?_3888                                  ; 1001C16E _ E8, 00002741
        add     esp, 12                                 ; 1001C173 _ 83. C4, 0C
        mov     dword [ebp+0CH], eax                    ; 1001C176 _ 89. 45, 0C
?_3437: cmp     dword [ebp+0CH], edi                    ; 1001C179 _ 39. 7D, 0C
        pop     edi                                     ; 1001C17C _ 5F
        jz      ?_3438                                  ; 1001C17D _ 74, 06
        or      dword [esi+0CH], 20H                    ; 1001C17F _ 83. 4E, 0C, 20
        jmp     ?_3440                                  ; 1001C183 _ EB, 0F

?_3438: mov     eax, dword [ebp+8H]                     ; 1001C185 _ 8B. 45, 08
        and     eax, 0FFH                               ; 1001C188 _ 25, 000000FF
        jmp     ?_3441                                  ; 1001C18D _ EB, 08

?_3439: or      al, 20H                                 ; 1001C18F _ 0C, 20
        mov     dword [esi+0CH], eax                    ; 1001C191 _ 89. 46, 0C
?_3440: or      eax, 0FFFFFFFFH                         ; 1001C194 _ 83. C8, FF
?_3441: pop     esi                                     ; 1001C197 _ 5E
        pop     ebx                                     ; 1001C198 _ 5B
        pop     ebp                                     ; 1001C199 _ 5D
        ret                                             ; 1001C19A _ C3

?_3442: push    ebp                                     ; 1001C19B _ 55
        mov     ebp, esp                                ; 1001C19C _ 8B. EC
        sub     esp, 584                                ; 1001C19E _ 81. EC, 00000248
        push    ebx                                     ; 1001C1A4 _ 53
        push    esi                                     ; 1001C1A5 _ 56
        push    edi                                     ; 1001C1A6 _ 57
        mov     edi, dword [ebp+0CH]                    ; 1001C1A7 _ 8B. 7D, 0C
        xor     esi, esi                                ; 1001C1AA _ 33. F6
        mov     bl, byte [edi]                          ; 1001C1AC _ 8A. 1F
        inc     edi                                     ; 1001C1AE _ 47
        test    bl, bl                                  ; 1001C1AF _ 84. DB
        mov     dword [ebp-0CH], esi                    ; 1001C1B1 _ 89. 75, F4
        mov     dword [ebp-14H], esi                    ; 1001C1B4 _ 89. 75, EC
        mov     dword [ebp+0CH], edi                    ; 1001C1B7 _ 89. 7D, 0C
        je      ?_3533                                  ; 1001C1BA _ 0F 84, 000006F4
        mov     ecx, dword [ebp-10H]                    ; 1001C1C0 _ 8B. 4D, F0
        xor     edx, edx                                ; 1001C1C3 _ 33. D2
        jmp     ?_3444                                  ; 1001C1C5 _ EB, 08

?_3443: mov     ecx, dword [ebp-10H]                    ; 1001C1C7 _ 8B. 4D, F0
        mov     esi, dword [ebp-30H]                    ; 1001C1CA _ 8B. 75, D0
        xor     edx, edx                                ; 1001C1CD _ 33. D2
?_3444: cmp     dword [ebp-14H], edx                    ; 1001C1CF _ 39. 55, EC
        jl      ?_3533                                  ; 1001C1D2 _ 0F 8C, 000006DC
        cmp     bl, 32                                  ; 1001C1D8 _ 80. FB, 20
        jl      ?_3445                                  ; 1001C1DB _ 7C, 13
        cmp     bl, 120                                 ; 1001C1DD _ 80. FB, 78
        jg      ?_3445                                  ; 1001C1E0 _ 7F, 0E
        movsx   eax, bl                                 ; 1001C1E2 _ 0F BE. C3
        mov     al, byte [?_4954+eax]                   ; 1001C1E5 _ 8A. 80, 10025FE8(d)
        and     eax, 0FH                                ; 1001C1EB _ 83. E0, 0F
        jmp     ?_3446                                  ; 1001C1EE _ EB, 02

?_3445: xor     eax, eax                                ; 1001C1F0 _ 33. C0
?_3446: movsx   eax, byte [?_4956+esi+eax*8]            ; 1001C1F2 _ 0F BE. 84 C6, 10026008(d)
        sar     eax, 4                                  ; 1001C1FA _ C1. F8, 04
        cmp     eax, 7                                  ; 1001C1FD _ 83. F8, 07
        mov     dword [ebp-30H], eax                    ; 1001C200 _ 89. 45, D0
        ja      ?_3532                                  ; 1001C203 _ 0F 87, 0000069A
        jmp     near [?_3534+eax*4]                     ; 1001C209 _ FF. 24 85, 1001C8BC(d)

?_3447: or      dword [ebp-10H], 0FFFFFFFFH             ; 1001C210 _ 83. 4D, F0, FF
        mov     dword [ebp-34H], edx                    ; 1001C214 _ 89. 55, CC
        mov     dword [ebp-28H], edx                    ; 1001C217 _ 89. 55, D8
        mov     dword [ebp-20H], edx                    ; 1001C21A _ 89. 55, E0
        mov     dword [ebp-1CH], edx                    ; 1001C21D _ 89. 55, E4
        mov     dword [ebp-4H], edx                     ; 1001C220 _ 89. 55, FC
        mov     dword [ebp-24H], edx                    ; 1001C223 _ 89. 55, DC
        jmp     ?_3532                                  ; 1001C226 _ E9, 00000678

?_3448: movsx   eax, bl                                 ; 1001C22B _ 0F BE. C3
        sub     eax, 32                                 ; 1001C22E _ 83. E8, 20
        jz      ?_3452                                  ; 1001C231 _ 74, 3B
        sub     eax, 3                                  ; 1001C233 _ 83. E8, 03
        jz      ?_3451                                  ; 1001C236 _ 74, 2D
        sub     eax, 8                                  ; 1001C238 _ 83. E8, 08
        jz      ?_3450                                  ; 1001C23B _ 74, 1F
        dec     eax                                     ; 1001C23D _ 48
        dec     eax                                     ; 1001C23E _ 48
        jz      ?_3449                                  ; 1001C23F _ 74, 12
        sub     eax, 3                                  ; 1001C241 _ 83. E8, 03
        jne     ?_3532                                  ; 1001C244 _ 0F 85, 00000659
        or      dword [ebp-4H], 08H                     ; 1001C24A _ 83. 4D, FC, 08
        jmp     ?_3532                                  ; 1001C24E _ E9, 00000650

?_3449: or      dword [ebp-4H], 04H                     ; 1001C253 _ 83. 4D, FC, 04
        jmp     ?_3532                                  ; 1001C257 _ E9, 00000647

?_3450: or      dword [ebp-4H], 01H                     ; 1001C25C _ 83. 4D, FC, 01
        jmp     ?_3532                                  ; 1001C260 _ E9, 0000063E

?_3451: or      byte [ebp-4H], 0FFFFFF80H               ; 1001C265 _ 80. 4D, FC, 80
        jmp     ?_3532                                  ; 1001C269 _ E9, 00000635

?_3452: or      dword [ebp-4H], 02H                     ; 1001C26E _ 83. 4D, FC, 02
        jmp     ?_3532                                  ; 1001C272 _ E9, 0000062C

?_3453: cmp     bl, 42                                  ; 1001C277 _ 80. FB, 2A
        jnz     ?_3455                                  ; 1001C27A _ 75, 23
        lea     eax, [ebp+10H]                          ; 1001C27C _ 8D. 45, 10
        push    eax                                     ; 1001C27F _ 50
        call    ?_3545                                  ; 1001C280 _ E8, 000006F5
        test    eax, eax                                ; 1001C285 _ 85. C0
        pop     ecx                                     ; 1001C287 _ 59
        mov     dword [ebp-20H], eax                    ; 1001C288 _ 89. 45, E0
        jge     ?_3532                                  ; 1001C28B _ 0F 8D, 00000612
        or      dword [ebp-4H], 04H                     ; 1001C291 _ 83. 4D, FC, 04
        neg     eax                                     ; 1001C295 _ F7. D8
?_3454: mov     dword [ebp-20H], eax                    ; 1001C297 _ 89. 45, E0
        jmp     ?_3532                                  ; 1001C29A _ E9, 00000604

?_3455: mov     eax, dword [ebp-20H]                    ; 1001C29F _ 8B. 45, E0
        movsx   ecx, bl                                 ; 1001C2A2 _ 0F BE. CB
        lea     eax, [eax+eax*4]                        ; 1001C2A5 _ 8D. 04 80
        lea     eax, [ecx+eax*2-30H]                    ; 1001C2A8 _ 8D. 44 41, D0
        jmp     ?_3454                                  ; 1001C2AC _ EB, E9

?_3456: mov     dword [ebp-10H], edx                    ; 1001C2AE _ 89. 55, F0
        jmp     ?_3532                                  ; 1001C2B1 _ E9, 000005ED

?_3457: cmp     bl, 42                                  ; 1001C2B6 _ 80. FB, 2A
        jnz     ?_3458                                  ; 1001C2B9 _ 75, 1E
        lea     eax, [ebp+10H]                          ; 1001C2BB _ 8D. 45, 10
        push    eax                                     ; 1001C2BE _ 50
        call    ?_3545                                  ; 1001C2BF _ E8, 000006B6
        test    eax, eax                                ; 1001C2C4 _ 85. C0
        pop     ecx                                     ; 1001C2C6 _ 59
        mov     dword [ebp-10H], eax                    ; 1001C2C7 _ 89. 45, F0
        jge     ?_3532                                  ; 1001C2CA _ 0F 8D, 000005D3
        or      dword [ebp-10H], 0FFFFFFFFH             ; 1001C2D0 _ 83. 4D, F0, FF
        jmp     ?_3532                                  ; 1001C2D4 _ E9, 000005CA

?_3458: lea     eax, [ecx+ecx*4]                        ; 1001C2D9 _ 8D. 04 89
        movsx   ecx, bl                                 ; 1001C2DC _ 0F BE. CB
        lea     eax, [ecx+eax*2-30H]                    ; 1001C2DF _ 8D. 44 41, D0
        mov     dword [ebp-10H], eax                    ; 1001C2E3 _ 89. 45, F0
        jmp     ?_3532                                  ; 1001C2E6 _ E9, 000005B8

?_3459: cmp     bl, 73                                  ; 1001C2EB _ 80. FB, 49
        jz      ?_3462                                  ; 1001C2EE _ 74, 2E
        cmp     bl, 104                                 ; 1001C2F0 _ 80. FB, 68
        jz      ?_3461                                  ; 1001C2F3 _ 74, 20
        cmp     bl, 108                                 ; 1001C2F5 _ 80. FB, 6C
        jz      ?_3460                                  ; 1001C2F8 _ 74, 12
        cmp     bl, 119                                 ; 1001C2FA _ 80. FB, 77
        jne     ?_3532                                  ; 1001C2FD _ 0F 85, 000005A0
        or      byte [ebp-3H], 08H                      ; 1001C303 _ 80. 4D, FD, 08
        jmp     ?_3532                                  ; 1001C307 _ E9, 00000597

?_3460: or      dword [ebp-4H], 10H                     ; 1001C30C _ 83. 4D, FC, 10
        jmp     ?_3532                                  ; 1001C310 _ E9, 0000058E

?_3461: or      dword [ebp-4H], 20H                     ; 1001C315 _ 83. 4D, FC, 20
        jmp     ?_3532                                  ; 1001C319 _ E9, 00000585

?_3462: cmp     byte [edi], 54                          ; 1001C31E _ 80. 3F, 36
        jnz     ?_3463                                  ; 1001C321 _ 75, 14
        cmp     byte [edi+1H], 52                       ; 1001C323 _ 80. 7F, 01, 34
        jnz     ?_3463                                  ; 1001C327 _ 75, 0E
        inc     edi                                     ; 1001C329 _ 47
        inc     edi                                     ; 1001C32A _ 47
        or      byte [ebp-3H], 0FFFFFF80H               ; 1001C32B _ 80. 4D, FD, 80
        mov     dword [ebp+0CH], edi                    ; 1001C32F _ 89. 7D, 0C
        jmp     ?_3532                                  ; 1001C332 _ E9, 0000056C

?_3463: mov     dword [ebp-30H], edx                    ; 1001C337 _ 89. 55, D0
?_3464: mov     ecx, dword [?_5475]                     ; 1001C33A _ 8B. 0D, 10033CD4(d)
        mov     dword [ebp-24H], edx                    ; 1001C340 _ 89. 55, DC
        movzx   eax, bl                                 ; 1001C343 _ 0F B6. C3
        test    byte [ecx+eax*2+1H], 0FFFFFF80H         ; 1001C346 _ F6. 44 41, 01, 80
        jz      ?_3465                                  ; 1001C34B _ 74, 19
        lea     eax, [ebp-14H]                          ; 1001C34D _ 8D. 45, EC
        push    eax                                     ; 1001C350 _ 50
        push    dword [ebp+8H]                          ; 1001C351 _ FF. 75, 08
        movsx   eax, bl                                 ; 1001C354 _ 0F BE. C3
        push    eax                                     ; 1001C357 _ 50
        call    ?_3535                                  ; 1001C358 _ E8, 0000057F
        mov     bl, byte [edi]                          ; 1001C35D _ 8A. 1F
        add     esp, 12                                 ; 1001C35F _ 83. C4, 0C
        inc     edi                                     ; 1001C362 _ 47
        mov     dword [ebp+0CH], edi                    ; 1001C363 _ 89. 7D, 0C
?_3465: lea     eax, [ebp-14H]                          ; 1001C366 _ 8D. 45, EC
        push    eax                                     ; 1001C369 _ 50
        push    dword [ebp+8H]                          ; 1001C36A _ FF. 75, 08
        movsx   eax, bl                                 ; 1001C36D _ 0F BE. C3
        push    eax                                     ; 1001C370 _ 50
        call    ?_3535                                  ; 1001C371 _ E8, 00000566
        add     esp, 12                                 ; 1001C376 _ 83. C4, 0C
        jmp     ?_3532                                  ; 1001C379 _ E9, 00000525

?_3466: movsx   eax, bl                                 ; 1001C37E _ 0F BE. C3
        cmp     eax, 103                                ; 1001C381 _ 83. F8, 67
        jg      ?_3487                                  ; 1001C384 _ 0F 8F, 0000021C
        cmp     eax, 101                                ; 1001C38A _ 83. F8, 65
        jge     ?_3472                                  ; 1001C38D _ 0F 8D, 00000096
        cmp     eax, 88                                 ; 1001C393 _ 83. F8, 58
        jg      ?_3475                                  ; 1001C396 _ 0F 8F, 000000EB
        je      ?_3494                                  ; 1001C39C _ 0F 84, 00000278
        sub     eax, 67                                 ; 1001C3A2 _ 83. E8, 43
        je      ?_3473                                  ; 1001C3A5 _ 0F 84, 0000009F
        dec     eax                                     ; 1001C3AB _ 48
        dec     eax                                     ; 1001C3AC _ 48
        jz      ?_3471                                  ; 1001C3AD _ 74, 70
        dec     eax                                     ; 1001C3AF _ 48
        dec     eax                                     ; 1001C3B0 _ 48
        jz      ?_3471                                  ; 1001C3B1 _ 74, 6C
        sub     eax, 12                                 ; 1001C3B3 _ 83. E8, 0C
        jne     ?_3522                                  ; 1001C3B6 _ 0F 85, 000003E9
; Note: Length-changing prefix causes delay on Intel processors
        test    word [ebp-4H], 830H                     ; 1001C3BC _ 66: F7. 45, FC, 0830
        jnz     ?_3467                                  ; 1001C3C2 _ 75, 04
        or      byte [ebp-3H], 08H                      ; 1001C3C4 _ 80. 4D, FD, 08
?_3467: mov     esi, dword [ebp-10H]                    ; 1001C3C8 _ 8B. 75, F0
        cmp     esi, -1                                 ; 1001C3CB _ 83. FE, FF
        jnz     ?_3468                                  ; 1001C3CE _ 75, 05
        mov     esi, 2147483647                         ; 1001C3D0 _ BE, 7FFFFFFF
?_3468: lea     eax, [ebp+10H]                          ; 1001C3D5 _ 8D. 45, 10
        push    eax                                     ; 1001C3D8 _ 50
        call    ?_3545                                  ; 1001C3D9 _ E8, 0000059C
; Note: Length-changing prefix causes delay on Intel processors
        test    word [ebp-4H], 810H                     ; 1001C3DE _ 66: F7. 45, FC, 0810
        pop     ecx                                     ; 1001C3E4 _ 59
        mov     ecx, eax                                ; 1001C3E5 _ 8B. C8
        mov     dword [ebp-8H], ecx                     ; 1001C3E7 _ 89. 4D, F8
        je      ?_3489                                  ; 1001C3EA _ 0F 84, 000001FE
        test    ecx, ecx                                ; 1001C3F0 _ 85. C9
        jnz     ?_3469                                  ; 1001C3F2 _ 75, 09
        mov     ecx, dword [?_5454]                     ; 1001C3F4 _ 8B. 0D, 10031A84(d)
        mov     dword [ebp-8H], ecx                     ; 1001C3FA _ 89. 4D, F8
?_3469: mov     dword [ebp-24H], 1                      ; 1001C3FD _ C7. 45, DC, 00000001
        mov     eax, ecx                                ; 1001C404 _ 8B. C1
?_3470: mov     edx, esi                                ; 1001C406 _ 8B. D6
        dec     esi                                     ; 1001C408 _ 4E
        test    edx, edx                                ; 1001C409 _ 85. D2
        je      ?_3488                                  ; 1001C40B _ 0F 84, 000001D4
        cmp     word [eax], 0                           ; 1001C411 _ 66: 83. 38, 00
        je      ?_3488                                  ; 1001C415 _ 0F 84, 000001CA
        inc     eax                                     ; 1001C41B _ 40
        inc     eax                                     ; 1001C41C _ 40
        jmp     ?_3470                                  ; 1001C41D _ EB, E7

?_3471: mov     dword [ebp-34H], 1                      ; 1001C41F _ C7. 45, CC, 00000001
        add     bl, 32                                  ; 1001C426 _ 80. C3, 20
?_3472: or      dword [ebp-4H], 40H                     ; 1001C429 _ 83. 4D, FC, 40
        lea     edi, [ebp-248H]                         ; 1001C42D _ 8D. BD, FFFFFDB8
        cmp     ecx, edx                                ; 1001C433 _ 3B. CA
        mov     dword [ebp-8H], edi                     ; 1001C435 _ 89. 7D, F8
        jge     ?_3481                                  ; 1001C438 _ 0F 8D, 000000CF
        mov     dword [ebp-10H], 6                      ; 1001C43E _ C7. 45, F0, 00000006
        jmp     ?_3482                                  ; 1001C445 _ E9, 000000D1

?_3473:
; Note: Length-changing prefix causes delay on Intel processors
        test    word [ebp-4H], 830H                     ; 1001C44A _ 66: F7. 45, FC, 0830
        jnz     ?_3474                                  ; 1001C450 _ 75, 04
        or      byte [ebp-3H], 08H                      ; 1001C452 _ 80. 4D, FD, 08
?_3474:
; Note: Length-changing prefix causes delay on Intel processors
        test    word [ebp-4H], 810H                     ; 1001C456 _ 66: F7. 45, FC, 0810
        lea     eax, [ebp+10H]                          ; 1001C45C _ 8D. 45, 10
        push    eax                                     ; 1001C45F _ 50
        jz      ?_3476                                  ; 1001C460 _ 74, 3B
        call    ?_3547                                  ; 1001C462 _ E8, 00000530
        push    eax                                     ; 1001C467 _ 50
        lea     eax, [ebp-248H]                         ; 1001C468 _ 8D. 85, FFFFFDB8
        push    eax                                     ; 1001C46E _ 50
        call    ?_4266                                  ; 1001C46F _ E8, 000042EB
        add     esp, 12                                 ; 1001C474 _ 83. C4, 0C
        mov     dword [ebp-0CH], eax                    ; 1001C477 _ 89. 45, F4
        test    eax, eax                                ; 1001C47A _ 85. C0
        jge     ?_3477                                  ; 1001C47C _ 7D, 32
        mov     dword [ebp-28H], 1                      ; 1001C47E _ C7. 45, D8, 00000001
        jmp     ?_3477                                  ; 1001C485 _ EB, 29

?_3475: sub     eax, 90                                 ; 1001C487 _ 83. E8, 5A
        jz      ?_3478                                  ; 1001C48A _ 74, 32
        sub     eax, 9                                  ; 1001C48C _ 83. E8, 09
        jz      ?_3474                                  ; 1001C48F _ 74, C5
        dec     eax                                     ; 1001C491 _ 48
        je      ?_3500                                  ; 1001C492 _ 0F 84, 000001E8
        jmp     ?_3522                                  ; 1001C498 _ E9, 00000308

?_3476: call    ?_3545                                  ; 1001C49D _ E8, 000004D8
        pop     ecx                                     ; 1001C4A2 _ 59
        mov     byte [ebp-248H], al                     ; 1001C4A3 _ 88. 85, FFFFFDB8
        mov     dword [ebp-0CH], 1                      ; 1001C4A9 _ C7. 45, F4, 00000001
?_3477: lea     eax, [ebp-248H]                         ; 1001C4B0 _ 8D. 85, FFFFFDB8
        mov     dword [ebp-8H], eax                     ; 1001C4B6 _ 89. 45, F8
        jmp     ?_3522                                  ; 1001C4B9 _ E9, 000002E7

?_3478: lea     eax, [ebp+10H]                          ; 1001C4BE _ 8D. 45, 10
        push    eax                                     ; 1001C4C1 _ 50
        call    ?_3545                                  ; 1001C4C2 _ E8, 000004B3
        test    eax, eax                                ; 1001C4C7 _ 85. C0
        pop     ecx                                     ; 1001C4C9 _ 59
        jz      ?_3480                                  ; 1001C4CA _ 74, 33
        mov     ecx, dword [eax+4H]                     ; 1001C4CC _ 8B. 48, 04
        test    ecx, ecx                                ; 1001C4CF _ 85. C9
        jz      ?_3480                                  ; 1001C4D1 _ 74, 2C
        test    byte [ebp-3H], 08H                      ; 1001C4D3 _ F6. 45, FD, 08
        jz      ?_3479                                  ; 1001C4D7 _ 74, 17
        movsx   eax, word [eax]                         ; 1001C4D9 _ 0F BF. 00
        shr     eax, 1                                  ; 1001C4DC _ D1. E8
        mov     dword [ebp-8H], ecx                     ; 1001C4DE _ 89. 4D, F8
        mov     dword [ebp-0CH], eax                    ; 1001C4E1 _ 89. 45, F4
        mov     dword [ebp-24H], 1                      ; 1001C4E4 _ C7. 45, DC, 00000001
        jmp     ?_3522                                  ; 1001C4EB _ E9, 000002B5

?_3479: and     dword [ebp-24H], 00H                    ; 1001C4F0 _ 83. 65, DC, 00
        mov     dword [ebp-8H], ecx                     ; 1001C4F4 _ 89. 4D, F8
        movsx   eax, word [eax]                         ; 1001C4F7 _ 0F BF. 00
        jmp     ?_3521                                  ; 1001C4FA _ E9, 000002A3

?_3480: mov     eax, dword [?_5453]                     ; 1001C4FF _ A1, 10031A80(d)
        mov     dword [ebp-8H], eax                     ; 1001C504 _ 89. 45, F8
        push    eax                                     ; 1001C507 _ 50
        jmp     ?_3486                                  ; 1001C508 _ E9, 0000008E

?_3481: jnz     ?_3482                                  ; 1001C50D _ 75, 0C
        cmp     bl, 103                                 ; 1001C50F _ 80. FB, 67
        jnz     ?_3482                                  ; 1001C512 _ 75, 07
        mov     dword [ebp-10H], 1                      ; 1001C514 _ C7. 45, F0, 00000001
?_3482: mov     eax, dword [ebp+10H]                    ; 1001C51B _ 8B. 45, 10
        push    dword [ebp-34H]                         ; 1001C51E _ FF. 75, CC
        add     eax, 8                                  ; 1001C521 _ 83. C0, 08
        mov     dword [ebp+10H], eax                    ; 1001C524 _ 89. 45, 10
        push    dword [ebp-10H]                         ; 1001C527 _ FF. 75, F0
        mov     ecx, dword [eax-8H]                     ; 1001C52A _ 8B. 48, F8
        mov     dword [ebp-48H], ecx                    ; 1001C52D _ 89. 4D, B8
        mov     eax, dword [eax-4H]                     ; 1001C530 _ 8B. 40, FC
        mov     dword [ebp-44H], eax                    ; 1001C533 _ 89. 45, BC
        movsx   eax, bl                                 ; 1001C536 _ 0F BE. C3
        push    eax                                     ; 1001C539 _ 50
        lea     eax, [ebp-248H]                         ; 1001C53A _ 8D. 85, FFFFFDB8
        push    eax                                     ; 1001C540 _ 50
        lea     eax, [ebp-48H]                          ; 1001C541 _ 8D. 45, B8
        push    eax                                     ; 1001C544 _ 50
        call    near [?_5469]                           ; 1001C545 _ FF. 15, 10033BB0(d)
        mov     esi, dword [ebp-4H]                     ; 1001C54B _ 8B. 75, FC
        add     esp, 20                                 ; 1001C54E _ 83. C4, 14
        and     esi, 80H                                ; 1001C551 _ 81. E6, 00000080
        jz      ?_3483                                  ; 1001C557 _ 74, 14
        cmp     dword [ebp-10H], 0                      ; 1001C559 _ 83. 7D, F0, 00
        jnz     ?_3483                                  ; 1001C55D _ 75, 0E
        lea     eax, [ebp-248H]                         ; 1001C55F _ 8D. 85, FFFFFDB8
        push    eax                                     ; 1001C565 _ 50
        call    near [?_5472]                           ; 1001C566 _ FF. 15, 10033BBC(d)
        pop     ecx                                     ; 1001C56C _ 59
?_3483: cmp     bl, 103                                 ; 1001C56D _ 80. FB, 67
        jnz     ?_3484                                  ; 1001C570 _ 75, 12
        test    esi, esi                                ; 1001C572 _ 85. F6
        jnz     ?_3484                                  ; 1001C574 _ 75, 0E
        lea     eax, [ebp-248H]                         ; 1001C576 _ 8D. 85, FFFFFDB8
        push    eax                                     ; 1001C57C _ 50
        call    near [?_5470]                           ; 1001C57D _ FF. 15, 10033BB4(d)
        pop     ecx                                     ; 1001C583 _ 59
?_3484: cmp     byte [ebp-248H], 45                     ; 1001C584 _ 80. BD, FFFFFDB8, 2D
        jnz     ?_3485                                  ; 1001C58B _ 75, 0D
        or      byte [ebp-3H], 01H                      ; 1001C58D _ 80. 4D, FD, 01
        lea     edi, [ebp-247H]                         ; 1001C591 _ 8D. BD, FFFFFDB9
        mov     dword [ebp-8H], edi                     ; 1001C597 _ 89. 7D, F8
?_3485: push    edi                                     ; 1001C59A _ 57
?_3486: call    ?_3393                                  ; 1001C59B _ E8, FFFFF830
        pop     ecx                                     ; 1001C5A0 _ 59
        jmp     ?_3521                                  ; 1001C5A1 _ E9, 000001FC

?_3487: sub     eax, 105                                ; 1001C5A6 _ 83. E8, 69
        je      ?_3500                                  ; 1001C5A9 _ 0F 84, 000000D1
        sub     eax, 5                                  ; 1001C5AF _ 83. E8, 05
        je      ?_3497                                  ; 1001C5B2 _ 0F 84, 0000009E
        dec     eax                                     ; 1001C5B8 _ 48
        je      ?_3496                                  ; 1001C5B9 _ 0F 84, 00000084
        dec     eax                                     ; 1001C5BF _ 48
        jz      ?_3493                                  ; 1001C5C0 _ 74, 51
        sub     eax, 3                                  ; 1001C5C2 _ 83. E8, 03
        je      ?_3467                                  ; 1001C5C5 _ 0F 84, FFFFFDFD
        dec     eax                                     ; 1001C5CB _ 48
        dec     eax                                     ; 1001C5CC _ 48
        je      ?_3501                                  ; 1001C5CD _ 0F 84, 000000B1
        sub     eax, 3                                  ; 1001C5D3 _ 83. E8, 03
        jne     ?_3522                                  ; 1001C5D6 _ 0F 85, 000001C9
        mov     dword [ebp-2CH], 39                     ; 1001C5DC _ C7. 45, D4, 00000027
        jmp     ?_3495                                  ; 1001C5E3 _ EB, 3C

?_3488: sub     eax, ecx                                ; 1001C5E5 _ 2B. C1
        sar     eax, 1                                  ; 1001C5E7 _ D1. F8
        jmp     ?_3521                                  ; 1001C5E9 _ E9, 000001B4

?_3489: test    ecx, ecx                                ; 1001C5EE _ 85. C9
        jnz     ?_3490                                  ; 1001C5F0 _ 75, 09
        mov     ecx, dword [?_5453]                     ; 1001C5F2 _ 8B. 0D, 10031A80(d)
        mov     dword [ebp-8H], ecx                     ; 1001C5F8 _ 89. 4D, F8
?_3490: mov     eax, ecx                                ; 1001C5FB _ 8B. C1
?_3491: mov     edx, esi                                ; 1001C5FD _ 8B. D6
        dec     esi                                     ; 1001C5FF _ 4E
        test    edx, edx                                ; 1001C600 _ 85. D2
        jz      ?_3492                                  ; 1001C602 _ 74, 08
        cmp     byte [eax], 0                           ; 1001C604 _ 80. 38, 00
        jz      ?_3492                                  ; 1001C607 _ 74, 03
        inc     eax                                     ; 1001C609 _ 40
        jmp     ?_3491                                  ; 1001C60A _ EB, F1

?_3492: sub     eax, ecx                                ; 1001C60C _ 2B. C1
        jmp     ?_3521                                  ; 1001C60E _ E9, 0000018F

?_3493: mov     dword [ebp-10H], 8                      ; 1001C613 _ C7. 45, F0, 00000008
?_3494: mov     dword [ebp-2CH], 7                      ; 1001C61A _ C7. 45, D4, 00000007
?_3495: test    byte [ebp-4H], 0FFFFFF80H               ; 1001C621 _ F6. 45, FC, 80
        mov     dword [ebp-0CH], 16                     ; 1001C625 _ C7. 45, F4, 00000010
        jz      ?_3502                                  ; 1001C62C _ 74, 5D
        mov     al, byte [ebp-2CH]                      ; 1001C62E _ 8A. 45, D4
        mov     byte [ebp-16H], 48                      ; 1001C631 _ C6. 45, EA, 30
        add     al, 81                                  ; 1001C635 _ 04, 51
        mov     dword [ebp-1CH], 2                      ; 1001C637 _ C7. 45, E4, 00000002
        mov     byte [ebp-15H], al                      ; 1001C63E _ 88. 45, EB
        jmp     ?_3502                                  ; 1001C641 _ EB, 48

?_3496: test    byte [ebp-4H], 0FFFFFF80H               ; 1001C643 _ F6. 45, FC, 80
        mov     dword [ebp-0CH], 8                      ; 1001C647 _ C7. 45, F4, 00000008
        jz      ?_3502                                  ; 1001C64E _ 74, 3B
        or      byte [ebp-3H], 02H                      ; 1001C650 _ 80. 4D, FD, 02
        jmp     ?_3502                                  ; 1001C654 _ EB, 35

?_3497: lea     eax, [ebp+10H]                          ; 1001C656 _ 8D. 45, 10
        push    eax                                     ; 1001C659 _ 50
        call    ?_3545                                  ; 1001C65A _ E8, 0000031B
        test    byte [ebp-4H], 20H                      ; 1001C65F _ F6. 45, FC, 20
        pop     ecx                                     ; 1001C663 _ 59
        jz      ?_3498                                  ; 1001C664 _ 74, 09
        mov     cx, word [ebp-14H]                      ; 1001C666 _ 66: 8B. 4D, EC
        mov     word [eax], cx                          ; 1001C66A _ 66: 89. 08
        jmp     ?_3499                                  ; 1001C66D _ EB, 05

?_3498: mov     ecx, dword [ebp-14H]                    ; 1001C66F _ 8B. 4D, EC
        mov     dword [eax], ecx                        ; 1001C672 _ 89. 08
?_3499: mov     dword [ebp-28H], 1                      ; 1001C674 _ C7. 45, D8, 00000001
        jmp     ?_3532                                  ; 1001C67B _ E9, 00000223

?_3500: or      dword [ebp-4H], 40H                     ; 1001C680 _ 83. 4D, FC, 40
?_3501: mov     dword [ebp-0CH], 10                     ; 1001C684 _ C7. 45, F4, 0000000A
?_3502: test    byte [ebp-3H], 0FFFFFF80H               ; 1001C68B _ F6. 45, FD, 80
        jz      ?_3503                                  ; 1001C68F _ 74, 0C
        lea     eax, [ebp+10H]                          ; 1001C691 _ 8D. 45, 10
        push    eax                                     ; 1001C694 _ 50
        call    ?_3546                                  ; 1001C695 _ E8, 000002ED
        pop     ecx                                     ; 1001C69A _ 59
        jmp     ?_3508                                  ; 1001C69B _ EB, 41

?_3503: test    byte [ebp-4H], 20H                      ; 1001C69D _ F6. 45, FC, 20
        jz      ?_3506                                  ; 1001C6A1 _ 74, 21
        test    byte [ebp-4H], 40H                      ; 1001C6A3 _ F6. 45, FC, 40
        lea     eax, [ebp+10H]                          ; 1001C6A7 _ 8D. 45, 10
        push    eax                                     ; 1001C6AA _ 50
        jz      ?_3505                                  ; 1001C6AB _ 74, 0C
        call    ?_3545                                  ; 1001C6AD _ E8, 000002C8
        pop     ecx                                     ; 1001C6B2 _ 59
        movsx   eax, ax                                 ; 1001C6B3 _ 0F BF. C0
?_3504: cdq                                             ; 1001C6B6 _ 99
        jmp     ?_3508                                  ; 1001C6B7 _ EB, 25

?_3505: call    ?_3545                                  ; 1001C6B9 _ E8, 000002BC
        pop     ecx                                     ; 1001C6BE _ 59
        movzx   eax, ax                                 ; 1001C6BF _ 0F B7. C0
        jmp     ?_3504                                  ; 1001C6C2 _ EB, F2

?_3506: test    byte [ebp-4H], 40H                      ; 1001C6C4 _ F6. 45, FC, 40
        lea     eax, [ebp+10H]                          ; 1001C6C8 _ 8D. 45, 10
        push    eax                                     ; 1001C6CB _ 50
        jz      ?_3507                                  ; 1001C6CC _ 74, 08
        call    ?_3545                                  ; 1001C6CE _ E8, 000002A7
        pop     ecx                                     ; 1001C6D3 _ 59
        jmp     ?_3504                                  ; 1001C6D4 _ EB, E0

?_3507: call    ?_3545                                  ; 1001C6D6 _ E8, 0000029F
        pop     ecx                                     ; 1001C6DB _ 59
        xor     edx, edx                                ; 1001C6DC _ 33. D2
?_3508: test    byte [ebp-4H], 40H                      ; 1001C6DE _ F6. 45, FC, 40
        jz      ?_3510                                  ; 1001C6E2 _ 74, 1B
        test    edx, edx                                ; 1001C6E4 _ 85. D2
        jg      ?_3510                                  ; 1001C6E6 _ 7F, 17
        jl      ?_3509                                  ; 1001C6E8 _ 7C, 04
        test    eax, eax                                ; 1001C6EA _ 85. C0
        jnc     ?_3510                                  ; 1001C6EC _ 73, 11
?_3509: neg     eax                                     ; 1001C6EE _ F7. D8
        adc     edx, 0                                  ; 1001C6F0 _ 83. D2, 00
        mov     esi, eax                                ; 1001C6F3 _ 8B. F0
        neg     edx                                     ; 1001C6F5 _ F7. DA
        or      byte [ebp-3H], 01H                      ; 1001C6F7 _ 80. 4D, FD, 01
        mov     edi, edx                                ; 1001C6FB _ 8B. FA
        jmp     ?_3511                                  ; 1001C6FD _ EB, 04

?_3510: mov     esi, eax                                ; 1001C6FF _ 8B. F0
        mov     edi, edx                                ; 1001C701 _ 8B. FA
?_3511: test    byte [ebp-3H], 0FFFFFF80H               ; 1001C703 _ F6. 45, FD, 80
        jnz     ?_3512                                  ; 1001C707 _ 75, 03
        and     edi, 00H                                ; 1001C709 _ 83. E7, 00
?_3512: cmp     dword [ebp-10H], 0                      ; 1001C70C _ 83. 7D, F0, 00
        jge     ?_3513                                  ; 1001C710 _ 7D, 09
        mov     dword [ebp-10H], 1                      ; 1001C712 _ C7. 45, F0, 00000001
        jmp     ?_3514                                  ; 1001C719 _ EB, 04

?_3513: and     dword [ebp-4H], 0FFFFFFF7H              ; 1001C71B _ 83. 65, FC, F7
?_3514: mov     eax, esi                                ; 1001C71F _ 8B. C6
        or      eax, edi                                ; 1001C721 _ 0B. C7
        jnz     ?_3515                                  ; 1001C723 _ 75, 04
        and     dword [ebp-1CH], 00H                    ; 1001C725 _ 83. 65, E4, 00
?_3515: lea     eax, [ebp-49H]                          ; 1001C729 _ 8D. 45, B7
        mov     dword [ebp-8H], eax                     ; 1001C72C _ 89. 45, F8
?_3516: mov     eax, dword [ebp-10H]                    ; 1001C72F _ 8B. 45, F0
        dec     dword [ebp-10H]                         ; 1001C732 _ FF. 4D, F0
        test    eax, eax                                ; 1001C735 _ 85. C0
        jg      ?_3517                                  ; 1001C737 _ 7F, 06
        mov     eax, esi                                ; 1001C739 _ 8B. C6
        or      eax, edi                                ; 1001C73B _ 0B. C7
        jz      ?_3519                                  ; 1001C73D _ 74, 3B
?_3517: mov     eax, dword [ebp-0CH]                    ; 1001C73F _ 8B. 45, F4
        cdq                                             ; 1001C742 _ 99
        push    edx                                     ; 1001C743 _ 52
        push    eax                                     ; 1001C744 _ 50
        push    edi                                     ; 1001C745 _ 57
        push    esi                                     ; 1001C746 _ 56
        mov     dword [ebp-40H], eax                    ; 1001C747 _ 89. 45, C0
        mov     dword [ebp-3CH], edx                    ; 1001C74A _ 89. 55, C4
        call    ?_4281                                  ; 1001C74D _ E8, 0000414E
        push    dword [ebp-3CH]                         ; 1001C752 _ FF. 75, C4
        mov     ebx, eax                                ; 1001C755 _ 8B. D8
        add     ebx, 48                                 ; 1001C757 _ 83. C3, 30
        push    dword [ebp-40H]                         ; 1001C75A _ FF. 75, C0
        push    edi                                     ; 1001C75D _ 57
        push    esi                                     ; 1001C75E _ 56
        call    ?_4275                                  ; 1001C75F _ E8, 000040CC
        cmp     ebx, 57                                 ; 1001C764 _ 83. FB, 39
        mov     esi, eax                                ; 1001C767 _ 8B. F0
        mov     edi, edx                                ; 1001C769 _ 8B. FA
        jle     ?_3518                                  ; 1001C76B _ 7E, 03
        add     ebx, dword [ebp-2CH]                    ; 1001C76D _ 03. 5D, D4
?_3518: mov     eax, dword [ebp-8H]                     ; 1001C770 _ 8B. 45, F8
        dec     dword [ebp-8H]                          ; 1001C773 _ FF. 4D, F8
        mov     byte [eax], bl                          ; 1001C776 _ 88. 18
        jmp     ?_3516                                  ; 1001C778 _ EB, B5

?_3519: lea     eax, [ebp-49H]                          ; 1001C77A _ 8D. 45, B7
        sub     eax, dword [ebp-8H]                     ; 1001C77D _ 2B. 45, F8
        inc     dword [ebp-8H]                          ; 1001C780 _ FF. 45, F8
        test    byte [ebp-3H], 02H                      ; 1001C783 _ F6. 45, FD, 02
        mov     dword [ebp-0CH], eax                    ; 1001C787 _ 89. 45, F4
        jz      ?_3522                                  ; 1001C78A _ 74, 19
        mov     ecx, dword [ebp-8H]                     ; 1001C78C _ 8B. 4D, F8
        cmp     byte [ecx], 48                          ; 1001C78F _ 80. 39, 30
        jnz     ?_3520                                  ; 1001C792 _ 75, 04
        test    eax, eax                                ; 1001C794 _ 85. C0
        jnz     ?_3522                                  ; 1001C796 _ 75, 0D
?_3520: dec     dword [ebp-8H]                          ; 1001C798 _ FF. 4D, F8
        inc     eax                                     ; 1001C79B _ 40
        mov     ecx, dword [ebp-8H]                     ; 1001C79C _ 8B. 4D, F8
        mov     byte [ecx], 48                          ; 1001C79F _ C6. 01, 30
?_3521: mov     dword [ebp-0CH], eax                    ; 1001C7A2 _ 89. 45, F4
?_3522: cmp     dword [ebp-28H], 0                      ; 1001C7A5 _ 83. 7D, D8, 00
        jne     ?_3532                                  ; 1001C7A9 _ 0F 85, 000000F4
        mov     ebx, dword [ebp-4H]                     ; 1001C7AF _ 8B. 5D, FC
        test    bl, 40H                                 ; 1001C7B2 _ F6. C3, 40
        jz      ?_3526                                  ; 1001C7B5 _ 74, 26
        test    bh, 01H                                 ; 1001C7B7 _ F6. C7, 01
        jz      ?_3523                                  ; 1001C7BA _ 74, 06
        mov     byte [ebp-16H], 45                      ; 1001C7BC _ C6. 45, EA, 2D
        jmp     ?_3525                                  ; 1001C7C0 _ EB, 14

?_3523: test    bl, 01H                                 ; 1001C7C2 _ F6. C3, 01
        jz      ?_3524                                  ; 1001C7C5 _ 74, 06
        mov     byte [ebp-16H], 43                      ; 1001C7C7 _ C6. 45, EA, 2B
        jmp     ?_3525                                  ; 1001C7CB _ EB, 09

?_3524: test    bl, 02H                                 ; 1001C7CD _ F6. C3, 02
        jz      ?_3526                                  ; 1001C7D0 _ 74, 0B
        mov     byte [ebp-16H], 32                      ; 1001C7D2 _ C6. 45, EA, 20
?_3525: mov     dword [ebp-1CH], 1                      ; 1001C7D6 _ C7. 45, E4, 00000001
?_3526: mov     esi, dword [ebp-20H]                    ; 1001C7DD _ 8B. 75, E0
        sub     esi, dword [ebp-1CH]                    ; 1001C7E0 _ 2B. 75, E4
        sub     esi, dword [ebp-0CH]                    ; 1001C7E3 _ 2B. 75, F4
        test    bl, 0CH                                 ; 1001C7E6 _ F6. C3, 0C
        jnz     ?_3527                                  ; 1001C7E9 _ 75, 12
        lea     eax, [ebp-14H]                          ; 1001C7EB _ 8D. 45, EC
        push    eax                                     ; 1001C7EE _ 50
        push    dword [ebp+8H]                          ; 1001C7EF _ FF. 75, 08
        push    esi                                     ; 1001C7F2 _ 56
        push    32                                      ; 1001C7F3 _ 6A, 20
        call    ?_3539                                  ; 1001C7F5 _ E8, 00000117
        add     esp, 16                                 ; 1001C7FA _ 83. C4, 10
?_3527: lea     eax, [ebp-14H]                          ; 1001C7FD _ 8D. 45, EC
        push    eax                                     ; 1001C800 _ 50
        lea     eax, [ebp-16H]                          ; 1001C801 _ 8D. 45, EA
        push    dword [ebp+8H]                          ; 1001C804 _ FF. 75, 08
        push    dword [ebp-1CH]                         ; 1001C807 _ FF. 75, E4
        push    eax                                     ; 1001C80A _ 50
        call    ?_3542                                  ; 1001C80B _ E8, 00000132
        add     esp, 16                                 ; 1001C810 _ 83. C4, 10
        test    bl, 08H                                 ; 1001C813 _ F6. C3, 08
        jz      ?_3528                                  ; 1001C816 _ 74, 17
        test    bl, 04H                                 ; 1001C818 _ F6. C3, 04
        jnz     ?_3528                                  ; 1001C81B _ 75, 12
        lea     eax, [ebp-14H]                          ; 1001C81D _ 8D. 45, EC
        push    eax                                     ; 1001C820 _ 50
        push    dword [ebp+8H]                          ; 1001C821 _ FF. 75, 08
        push    esi                                     ; 1001C824 _ 56
        push    48                                      ; 1001C825 _ 6A, 30
        call    ?_3539                                  ; 1001C827 _ E8, 000000E5
        add     esp, 16                                 ; 1001C82C _ 83. C4, 10
?_3528: cmp     dword [ebp-24H], 0                      ; 1001C82F _ 83. 7D, DC, 00
        jz      ?_3530                                  ; 1001C833 _ 74, 41
        cmp     dword [ebp-0CH], 0                      ; 1001C835 _ 83. 7D, F4, 00
        jle     ?_3530                                  ; 1001C839 _ 7E, 3B
        mov     eax, dword [ebp-0CH]                    ; 1001C83B _ 8B. 45, F4
        mov     ebx, dword [ebp-8H]                     ; 1001C83E _ 8B. 5D, F8
        lea     edi, [eax-1H]                           ; 1001C841 _ 8D. 78, FF
?_3529: mov     ax, word [ebx]                          ; 1001C844 _ 66: 8B. 03
        inc     ebx                                     ; 1001C847 _ 43
        push    eax                                     ; 1001C848 _ 50
        lea     eax, [ebp-38H]                          ; 1001C849 _ 8D. 45, C8
        push    eax                                     ; 1001C84C _ 50
        inc     ebx                                     ; 1001C84D _ 43
        call    ?_4266                                  ; 1001C84E _ E8, 00003F0C
        pop     ecx                                     ; 1001C853 _ 59
        test    eax, eax                                ; 1001C854 _ 85. C0
        pop     ecx                                     ; 1001C856 _ 59
        jle     ?_3531                                  ; 1001C857 _ 7E, 32
        lea     ecx, [ebp-14H]                          ; 1001C859 _ 8D. 4D, EC
        push    ecx                                     ; 1001C85C _ 51
        push    dword [ebp+8H]                          ; 1001C85D _ FF. 75, 08
        push    eax                                     ; 1001C860 _ 50
        lea     eax, [ebp-38H]                          ; 1001C861 _ 8D. 45, C8
        push    eax                                     ; 1001C864 _ 50
        call    ?_3542                                  ; 1001C865 _ E8, 000000D8
        add     esp, 16                                 ; 1001C86A _ 83. C4, 10
        mov     eax, edi                                ; 1001C86D _ 8B. C7
        dec     edi                                     ; 1001C86F _ 4F
        test    eax, eax                                ; 1001C870 _ 85. C0
        jnz     ?_3529                                  ; 1001C872 _ 75, D0
        jmp     ?_3531                                  ; 1001C874 _ EB, 15

?_3530: lea     eax, [ebp-14H]                          ; 1001C876 _ 8D. 45, EC
        push    eax                                     ; 1001C879 _ 50
        push    dword [ebp+8H]                          ; 1001C87A _ FF. 75, 08
        push    dword [ebp-0CH]                         ; 1001C87D _ FF. 75, F4
        push    dword [ebp-8H]                          ; 1001C880 _ FF. 75, F8
        call    ?_3542                                  ; 1001C883 _ E8, 000000BA
        add     esp, 16                                 ; 1001C888 _ 83. C4, 10
?_3531: test    byte [ebp-4H], 04H                      ; 1001C88B _ F6. 45, FC, 04
        jz      ?_3532                                  ; 1001C88F _ 74, 12
        lea     eax, [ebp-14H]                          ; 1001C891 _ 8D. 45, EC
        push    eax                                     ; 1001C894 _ 50
        push    dword [ebp+8H]                          ; 1001C895 _ FF. 75, 08
        push    esi                                     ; 1001C898 _ 56
        push    32                                      ; 1001C899 _ 6A, 20
        call    ?_3539                                  ; 1001C89B _ E8, 00000071
        add     esp, 16                                 ; 1001C8A0 _ 83. C4, 10
?_3532: mov     edi, dword [ebp+0CH]                    ; 1001C8A3 _ 8B. 7D, 0C
        mov     bl, byte [edi]                          ; 1001C8A6 _ 8A. 1F
        inc     edi                                     ; 1001C8A8 _ 47
        test    bl, bl                                  ; 1001C8A9 _ 84. DB
        mov     dword [ebp+0CH], edi                    ; 1001C8AB _ 89. 7D, 0C
        jne     ?_3443                                  ; 1001C8AE _ 0F 85, FFFFF913
?_3533: mov     eax, dword [ebp-14H]                    ; 1001C8B4 _ 8B. 45, EC
        pop     edi                                     ; 1001C8B7 _ 5F
        pop     esi                                     ; 1001C8B8 _ 5E
        pop     ebx                                     ; 1001C8B9 _ 5B
        leave                                           ; 1001C8BA _ C9
        ret                                             ; 1001C8BB _ C3

?_3534:                                                 ; switch/case jump table
        dd ?_3464                                       ; 1001C8BC _ 1001C33A (d)
        dd ?_3447                                       ; 1001C8C0 _ 1001C210 (d)
        dd ?_3448                                       ; 1001C8C4 _ 1001C22B (d)
        dd ?_3453                                       ; 1001C8C8 _ 1001C277 (d)
        dd ?_3456                                       ; 1001C8CC _ 1001C2AE (d)
        dd ?_3457                                       ; 1001C8D0 _ 1001C2B6 (d)
        dd ?_3459                                       ; 1001C8D4 _ 1001C2EB (d)
        dd ?_3466                                       ; 1001C8D8 _ 1001C37E (d)
?_3535: push    ebp                                     ; 1001C8DC _ 55
        mov     ebp, esp                                ; 1001C8DD _ 8B. EC
        mov     ecx, dword [ebp+0CH]                    ; 1001C8DF _ 8B. 4D, 0C
        dec     dword [ecx+4H]                          ; 1001C8E2 _ FF. 49, 04
        js      ?_3536                                  ; 1001C8E5 _ 78, 0E
        mov     edx, dword [ecx]                        ; 1001C8E7 _ 8B. 11
        mov     al, byte [ebp+8H]                       ; 1001C8E9 _ 8A. 45, 08
        mov     byte [edx], al                          ; 1001C8EC _ 88. 02
        inc     dword [ecx]                             ; 1001C8EE _ FF. 01
        movzx   eax, al                                 ; 1001C8F0 _ 0F B6. C0
        jmp     ?_3537                                  ; 1001C8F3 _ EB, 0B

?_3536: push    ecx                                     ; 1001C8F5 _ 51
        push    dword [ebp+8H]                          ; 1001C8F6 _ FF. 75, 08
        call    ?_3427                                  ; 1001C8F9 _ E8, FFFFF785
        pop     ecx                                     ; 1001C8FE _ 59
        pop     ecx                                     ; 1001C8FF _ 59
?_3537: cmp     eax, -1                                 ; 1001C900 _ 83. F8, FF
        mov     eax, dword [ebp+10H]                    ; 1001C903 _ 8B. 45, 10
        jnz     ?_3538                                  ; 1001C906 _ 75, 05
        or      dword [eax], 0FFFFFFFFH                 ; 1001C908 _ 83. 08, FF
        pop     ebp                                     ; 1001C90B _ 5D
        ret                                             ; 1001C90C _ C3

?_3538: inc     dword [eax]                             ; 1001C90D _ FF. 00
        pop     ebp                                     ; 1001C90F _ 5D
        ret                                             ; 1001C910 _ C3

?_3539: push    esi                                     ; 1001C911 _ 56
        push    edi                                     ; 1001C912 _ 57
        mov     edi, dword [esp+10H]                    ; 1001C913 _ 8B. 7C 24, 10
        mov     eax, edi                                ; 1001C917 _ 8B. C7
        dec     edi                                     ; 1001C919 _ 4F
        test    eax, eax                                ; 1001C91A _ 85. C0
        jle     ?_3541                                  ; 1001C91C _ 7E, 21
        mov     esi, dword [esp+18H]                    ; 1001C91E _ 8B. 74 24, 18
?_3540: push    esi                                     ; 1001C922 _ 56
        push    dword [esp+18H]                         ; 1001C923 _ FF. 74 24, 18
        push    dword [esp+14H]                         ; 1001C927 _ FF. 74 24, 14
        call    ?_3535                                  ; 1001C92B _ E8, FFFFFFAC
        add     esp, 12                                 ; 1001C930 _ 83. C4, 0C
        cmp     dword [esi], -1                         ; 1001C933 _ 83. 3E, FF
        jz      ?_3541                                  ; 1001C936 _ 74, 07
        mov     eax, edi                                ; 1001C938 _ 8B. C7
        dec     edi                                     ; 1001C93A _ 4F
        test    eax, eax                                ; 1001C93B _ 85. C0
        jg      ?_3540                                  ; 1001C93D _ 7F, E3
?_3541: pop     edi                                     ; 1001C93F _ 5F
        pop     esi                                     ; 1001C940 _ 5E
        ret                                             ; 1001C941 _ C3

?_3542: push    ebx                                     ; 1001C942 _ 53
        mov     ebx, dword [esp+0CH]                    ; 1001C943 _ 8B. 5C 24, 0C
        mov     eax, ebx                                ; 1001C947 _ 8B. C3
        dec     ebx                                     ; 1001C949 _ 4B
        push    esi                                     ; 1001C94A _ 56
        push    edi                                     ; 1001C94B _ 57
        test    eax, eax                                ; 1001C94C _ 85. C0
        jle     ?_3544                                  ; 1001C94E _ 7E, 26
        mov     edi, dword [esp+1CH]                    ; 1001C950 _ 8B. 7C 24, 1C
        mov     esi, dword [esp+10H]                    ; 1001C954 _ 8B. 74 24, 10
?_3543: movsx   eax, byte [esi]                         ; 1001C958 _ 0F BE. 06
        push    edi                                     ; 1001C95B _ 57
        inc     esi                                     ; 1001C95C _ 46
        push    dword [esp+1CH]                         ; 1001C95D _ FF. 74 24, 1C
        push    eax                                     ; 1001C961 _ 50
        call    ?_3535                                  ; 1001C962 _ E8, FFFFFF75
        add     esp, 12                                 ; 1001C967 _ 83. C4, 0C
        cmp     dword [edi], -1                         ; 1001C96A _ 83. 3F, FF
        jz      ?_3544                                  ; 1001C96D _ 74, 07
        mov     eax, ebx                                ; 1001C96F _ 8B. C3
        dec     ebx                                     ; 1001C971 _ 4B
        test    eax, eax                                ; 1001C972 _ 85. C0
        jg      ?_3543                                  ; 1001C974 _ 7F, E2
?_3544: pop     edi                                     ; 1001C976 _ 5F
        pop     esi                                     ; 1001C977 _ 5E
        pop     ebx                                     ; 1001C978 _ 5B
        ret                                             ; 1001C979 _ C3

?_3545: mov     eax, dword [esp+4H]                     ; 1001C97A _ 8B. 44 24, 04
        add     dword [eax], 4                          ; 1001C97E _ 83. 00, 04
        mov     eax, dword [eax]                        ; 1001C981 _ 8B. 00
        mov     eax, dword [eax-4H]                     ; 1001C983 _ 8B. 40, FC
        ret                                             ; 1001C986 _ C3

?_3546: mov     eax, dword [esp+4H]                     ; 1001C987 _ 8B. 44 24, 04
        add     dword [eax], 8                          ; 1001C98B _ 83. 00, 08
        mov     ecx, dword [eax]                        ; 1001C98E _ 8B. 08
        mov     eax, dword [ecx-8H]                     ; 1001C990 _ 8B. 41, F8
        mov     edx, dword [ecx-4H]                     ; 1001C993 _ 8B. 51, FC
        ret                                             ; 1001C996 _ C3

?_3547: mov     eax, dword [esp+4H]                     ; 1001C997 _ 8B. 44 24, 04
        add     dword [eax], 4                          ; 1001C99B _ 83. 00, 04
        mov     eax, dword [eax]                        ; 1001C99E _ 8B. 00
        mov     ax, word [eax-4H]                       ; 1001C9A0 _ 66: 8B. 40, FC
        ret                                             ; 1001C9A4 _ C3

?_3548: push    ebp                                     ; 1001C9A5 _ 55
        mov     ebp, esp                                ; 1001C9A6 _ 8B. EC
        sub     esp, 72                                 ; 1001C9A8 _ 83. EC, 48
        push    ebx                                     ; 1001C9AB _ 53
        push    esi                                     ; 1001C9AC _ 56
        push    edi                                     ; 1001C9AD _ 57
        push    1152                                    ; 1001C9AE _ 68, 00000480
        call    ?_3109                                  ; 1001C9B3 _ E8, FFFFDE3F
        mov     esi, eax                                ; 1001C9B8 _ 8B. F0
        pop     ecx                                     ; 1001C9BA _ 59
        test    esi, esi                                ; 1001C9BB _ 85. F6
        jnz     ?_3549                                  ; 1001C9BD _ 75, 08
        push    27                                      ; 1001C9BF _ 6A, 1B
        call    ?_3352                                  ; 1001C9C1 _ E8, FFFFF0AB
        pop     ecx                                     ; 1001C9C6 _ 59
?_3549: mov     dword [?_5809], esi                     ; 1001C9C7 _ 89. 35, 11766460(d)
        mov     dword [?_5811], 32                      ; 1001C9CD _ C7. 05, 11766560(d), 00000020
        lea     eax, [esi+480H]                         ; 1001C9D7 _ 8D. 86, 00000480
?_3550: cmp     esi, eax                                ; 1001C9DD _ 3B. F0
        jnc     ?_3551                                  ; 1001C9DF _ 73, 1E
        and     byte [esi+4H], 00H                      ; 1001C9E1 _ 80. 66, 04, 00
        or      dword [esi], 0FFFFFFFFH                 ; 1001C9E5 _ 83. 0E, FF
        and     dword [esi+8H], 00H                     ; 1001C9E8 _ 83. 66, 08, 00
        mov     byte [esi+5H], 10                       ; 1001C9EC _ C6. 46, 05, 0A
        mov     eax, dword [?_5809]                     ; 1001C9F0 _ A1, 11766460(d)
        add     esi, 36                                 ; 1001C9F5 _ 83. C6, 24
        add     eax, 1152                               ; 1001C9F8 _ 05, 00000480
        jmp     ?_3550                                  ; 1001C9FD _ EB, DE

?_3551: lea     eax, [ebp-48H]                          ; 1001C9FF _ 8D. 45, B8
        push    eax                                     ; 1001CA02 _ 50
        call    near [imp_GetStartupInfoA]              ; 1001CA03 _ FF. 15, 10024070(d)
        cmp     word [ebp-16H], 0                       ; 1001CA09 _ 66: 83. 7D, EA, 00
        je      ?_3561                                  ; 1001CA0E _ 0F 84, 000000D1
        mov     eax, dword [ebp-14H]                    ; 1001CA14 _ 8B. 45, EC
        test    eax, eax                                ; 1001CA17 _ 85. C0
        je      ?_3561                                  ; 1001CA19 _ 0F 84, 000000C6
        mov     edi, dword [eax]                        ; 1001CA1F _ 8B. 38
        lea     ebx, [eax+4H]                           ; 1001CA21 _ 8D. 58, 04
        lea     eax, [ebx+edi]                          ; 1001CA24 _ 8D. 04 3B
        mov     dword [ebp-4H], eax                     ; 1001CA27 _ 89. 45, FC
        mov     eax, 2048                               ; 1001CA2A _ B8, 00000800
        cmp     edi, eax                                ; 1001CA2F _ 3B. F8
        jl      ?_3552                                  ; 1001CA31 _ 7C, 02
        mov     edi, eax                                ; 1001CA33 _ 8B. F8
?_3552: cmp     dword [?_5811], edi                     ; 1001CA35 _ 39. 3D, 11766560(d)
        jge     ?_3557                                  ; 1001CA3B _ 7D, 56
        mov     esi, ?_5810                             ; 1001CA3D _ BE, 11766464(d)
?_3553: push    1152                                    ; 1001CA42 _ 68, 00000480
        call    ?_3109                                  ; 1001CA47 _ E8, FFFFDDAB
        test    eax, eax                                ; 1001CA4C _ 85. C0
        pop     ecx                                     ; 1001CA4E _ 59
        jz      ?_3556                                  ; 1001CA4F _ 74, 3C
        add     dword [?_5811], 32                      ; 1001CA51 _ 83. 05, 11766560(d), 20
        mov     dword [esi], eax                        ; 1001CA58 _ 89. 06
        lea     ecx, [eax+480H]                         ; 1001CA5A _ 8D. 88, 00000480
?_3554: cmp     eax, ecx                                ; 1001CA60 _ 3B. C1
        jnc     ?_3555                                  ; 1001CA62 _ 73, 1C
        and     byte [eax+4H], 00H                      ; 1001CA64 _ 80. 60, 04, 00
        or      dword [eax], 0FFFFFFFFH                 ; 1001CA68 _ 83. 08, FF
        and     dword [eax+8H], 00H                     ; 1001CA6B _ 83. 60, 08, 00
        mov     byte [eax+5H], 10                       ; 1001CA6F _ C6. 40, 05, 0A
        mov     ecx, dword [esi]                        ; 1001CA73 _ 8B. 0E
        add     eax, 36                                 ; 1001CA75 _ 83. C0, 24
        add     ecx, 1152                               ; 1001CA78 _ 81. C1, 00000480
        jmp     ?_3554                                  ; 1001CA7E _ EB, E0

?_3555: add     esi, 4                                  ; 1001CA80 _ 83. C6, 04
        cmp     dword [?_5811], edi                     ; 1001CA83 _ 39. 3D, 11766560(d)
        jl      ?_3553                                  ; 1001CA89 _ 7C, B7
        jmp     ?_3557                                  ; 1001CA8B _ EB, 06

?_3556: mov     edi, dword [?_5811]                     ; 1001CA8D _ 8B. 3D, 11766560(d)
?_3557: xor     esi, esi                                ; 1001CA93 _ 33. F6
        test    edi, edi                                ; 1001CA95 _ 85. FF
        jle     ?_3561                                  ; 1001CA97 _ 7E, 4C
?_3558: mov     eax, dword [ebp-4H]                     ; 1001CA99 _ 8B. 45, FC
        mov     ecx, dword [eax]                        ; 1001CA9C _ 8B. 08
        cmp     ecx, -1                                 ; 1001CA9E _ 83. F9, FF
        jz      ?_3560                                  ; 1001CAA1 _ 74, 38
        mov     al, byte [ebx]                          ; 1001CAA3 _ 8A. 03
        test    al, 01H                                 ; 1001CAA5 _ A8, 01
        jz      ?_3560                                  ; 1001CAA7 _ 74, 32
        test    al, 08H                                 ; 1001CAA9 _ A8, 08
        jnz     ?_3559                                  ; 1001CAAB _ 75, 0B
        push    ecx                                     ; 1001CAAD _ 51
        call    near [imp_GetFileType]                  ; 1001CAAE _ FF. 15, 100240FC(d)
        test    eax, eax                                ; 1001CAB4 _ 85. C0
        jz      ?_3560                                  ; 1001CAB6 _ 74, 23
?_3559: mov     ecx, esi                                ; 1001CAB8 _ 8B. CE
        mov     eax, esi                                ; 1001CABA _ 8B. C6
        sar     ecx, 5                                  ; 1001CABC _ C1. F9, 05
        and     eax, 1FH                                ; 1001CABF _ 83. E0, 1F
        mov     ecx, dword [?_5809+ecx*4]               ; 1001CAC2 _ 8B. 0C 8D, 11766460(d)
        lea     eax, [eax+eax*8]                        ; 1001CAC9 _ 8D. 04 C0
        lea     eax, [ecx+eax*4]                        ; 1001CACC _ 8D. 04 81
        mov     ecx, dword [ebp-4H]                     ; 1001CACF _ 8B. 4D, FC
        mov     ecx, dword [ecx]                        ; 1001CAD2 _ 8B. 09
        mov     dword [eax], ecx                        ; 1001CAD4 _ 89. 08
        mov     cl, byte [ebx]                          ; 1001CAD6 _ 8A. 0B
        mov     byte [eax+4H], cl                       ; 1001CAD8 _ 88. 48, 04
?_3560: add     dword [ebp-4H], 4                       ; 1001CADB _ 83. 45, FC, 04
        inc     esi                                     ; 1001CADF _ 46
        inc     ebx                                     ; 1001CAE0 _ 43
        cmp     esi, edi                                ; 1001CAE1 _ 3B. F7
        jl      ?_3558                                  ; 1001CAE3 _ 7C, B4
?_3561: xor     ebx, ebx                                ; 1001CAE5 _ 33. DB
?_3562: mov     ecx, dword [?_5809]                     ; 1001CAE7 _ 8B. 0D, 11766460(d)
        lea     eax, [ebx+ebx*8]                        ; 1001CAED _ 8D. 04 DB
        cmp     dword [ecx+eax*4], -1                   ; 1001CAF0 _ 83. 3C 81, FF
        lea     esi, [ecx+eax*4]                        ; 1001CAF4 _ 8D. 34 81
        jnz     ?_3567                                  ; 1001CAF7 _ 75, 4D
        test    ebx, ebx                                ; 1001CAF9 _ 85. DB
        mov     byte [esi+4H], -127                     ; 1001CAFB _ C6. 46, 04, 81
        jnz     ?_3563                                  ; 1001CAFF _ 75, 05
        push    -10                                     ; 1001CB01 _ 6A, F6
        pop     eax                                     ; 1001CB03 _ 58
        jmp     ?_3564                                  ; 1001CB04 _ EB, 0A

?_3563: mov     eax, ebx                                ; 1001CB06 _ 8B. C3
        dec     eax                                     ; 1001CB08 _ 48
        neg     eax                                     ; 1001CB09 _ F7. D8
        sbb     eax, eax                                ; 1001CB0B _ 1B. C0
        add     eax, -11                                ; 1001CB0D _ 83. C0, F5
?_3564: push    eax                                     ; 1001CB10 _ 50
        call    near [imp_GetStdHandle]                 ; 1001CB11 _ FF. 15, 10024044(d)
        mov     edi, eax                                ; 1001CB17 _ 8B. F8
        cmp     edi, -1                                 ; 1001CB19 _ 83. FF, FF
        jz      ?_3565                                  ; 1001CB1C _ 74, 17
        push    edi                                     ; 1001CB1E _ 57
        call    near [imp_GetFileType]                  ; 1001CB1F _ FF. 15, 100240FC(d)
        test    eax, eax                                ; 1001CB25 _ 85. C0
        jz      ?_3565                                  ; 1001CB27 _ 74, 0C
        and     eax, 0FFH                               ; 1001CB29 _ 25, 000000FF
        mov     dword [esi], edi                        ; 1001CB2E _ 89. 3E
        cmp     eax, 2                                  ; 1001CB30 _ 83. F8, 02
        jnz     ?_3566                                  ; 1001CB33 _ 75, 06
?_3565: or      byte [esi+4H], 40H                      ; 1001CB35 _ 80. 4E, 04, 40
        jmp     ?_3568                                  ; 1001CB39 _ EB, 0F

?_3566: cmp     eax, 3                                  ; 1001CB3B _ 83. F8, 03
        jnz     ?_3568                                  ; 1001CB3E _ 75, 0A
        or      byte [esi+4H], 08H                      ; 1001CB40 _ 80. 4E, 04, 08
        jmp     ?_3568                                  ; 1001CB44 _ EB, 04

?_3567: or      byte [esi+4H], 0FFFFFF80H               ; 1001CB46 _ 80. 4E, 04, 80
?_3568: inc     ebx                                     ; 1001CB4A _ 43
        cmp     ebx, 3                                  ; 1001CB4B _ 83. FB, 03
        jl      ?_3562                                  ; 1001CB4E _ 7C, 97
        push    dword [?_5811]                          ; 1001CB50 _ FF. 35, 11766560(d)
        call    near [imp_SetHandleCount]               ; 1001CB56 _ FF. 15, 100240F8(d)
        pop     edi                                     ; 1001CB5C _ 5F
        pop     esi                                     ; 1001CB5D _ 5E
        pop     ebx                                     ; 1001CB5E _ 5B
        leave                                           ; 1001CB5F _ C9
        ret                                             ; 1001CB60 _ C3

?_3569: push    ebx                                     ; 1001CB61 _ 53
        push    esi                                     ; 1001CB62 _ 56
        push    edi                                     ; 1001CB63 _ 57
        mov     esi, ?_5809                             ; 1001CB64 _ BE, 11766460(d)
?_3570: mov     eax, dword [esi]                        ; 1001CB69 _ 8B. 06
        test    eax, eax                                ; 1001CB6B _ 85. C0
        jz      ?_3574                                  ; 1001CB6D _ 74, 37
        mov     edi, eax                                ; 1001CB6F _ 8B. F8
        add     eax, 1152                               ; 1001CB71 _ 05, 00000480
        cmp     edi, eax                                ; 1001CB76 _ 3B. F8
        jnc     ?_3573                                  ; 1001CB78 _ 73, 21
        lea     ebx, [edi+0CH]                          ; 1001CB7A _ 8D. 5F, 0C
?_3571: cmp     dword [ebx-4H], 0                       ; 1001CB7D _ 83. 7B, FC, 00
        jz      ?_3572                                  ; 1001CB81 _ 74, 07
        push    ebx                                     ; 1001CB83 _ 53
        call    near [imp_DeleteCriticalSection]        ; 1001CB84 _ FF. 15, 10024104(d)
?_3572: mov     eax, dword [esi]                        ; 1001CB8A _ 8B. 06
        add     edi, 36                                 ; 1001CB8C _ 83. C7, 24
        add     eax, 1152                               ; 1001CB8F _ 05, 00000480
        add     ebx, 36                                 ; 1001CB94 _ 83. C3, 24
        cmp     edi, eax                                ; 1001CB97 _ 3B. F8
        jc      ?_3571                                  ; 1001CB99 _ 72, E2
?_3573: push    dword [esi]                             ; 1001CB9B _ FF. 36
        call    ?_3158                                  ; 1001CB9D _ E8, FFFFDFDF
        and     dword [esi], 00H                        ; 1001CBA2 _ 83. 26, 00
        pop     ecx                                     ; 1001CBA5 _ 59
?_3574: add     esi, 4                                  ; 1001CBA6 _ 83. C6, 04
        cmp     esi, ?_5811                             ; 1001CBA9 _ 81. FE, 11766560(d)
        jl      ?_3570                                  ; 1001CBAF _ 7C, B8
        pop     edi                                     ; 1001CBB1 _ 5F
        pop     esi                                     ; 1001CBB2 _ 5E
        pop     ebx                                     ; 1001CBB3 _ 5B
        ret                                             ; 1001CBB4 _ C3

?_3575: push    esi                                     ; 1001CBB5 _ 56
        mov     esi, dword [esp+8H]                     ; 1001CBB6 _ 8B. 74 24, 08
        cmp     esi, dword [?_5811]                     ; 1001CBBA _ 3B. 35, 11766560(d)
        jnc     ?_3576                                  ; 1001CBC0 _ 73, 40
        mov     ecx, esi                                ; 1001CBC2 _ 8B. CE
        mov     eax, esi                                ; 1001CBC4 _ 8B. C6
        sar     ecx, 5                                  ; 1001CBC6 _ C1. F9, 05
        and     eax, 1FH                                ; 1001CBC9 _ 83. E0, 1F
        mov     ecx, dword [?_5809+ecx*4]               ; 1001CBCC _ 8B. 0C 8D, 11766460(d)
        lea     eax, [eax+eax*8]                        ; 1001CBD3 _ 8D. 04 C0
        test    byte [ecx+eax*4+4H], 01H                ; 1001CBD6 _ F6. 44 81, 04, 01
        jz      ?_3576                                  ; 1001CBDB _ 74, 25
        push    edi                                     ; 1001CBDD _ 57
        push    esi                                     ; 1001CBDE _ 56
        call    ?_4220                                  ; 1001CBDF _ E8, 000037BE
        push    dword [esp+18H]                         ; 1001CBE4 _ FF. 74 24, 18
        push    dword [esp+18H]                         ; 1001CBE8 _ FF. 74 24, 18
        push    esi                                     ; 1001CBEC _ 56
        call    ?_3577                                  ; 1001CBED _ E8, 00000028
        push    esi                                     ; 1001CBF2 _ 56
        mov     edi, eax                                ; 1001CBF3 _ 8B. F8
        call    ?_4223                                  ; 1001CBF5 _ E8, 00003807
        add     esp, 20                                 ; 1001CBFA _ 83. C4, 14
        mov     eax, edi                                ; 1001CBFD _ 8B. C7
        pop     edi                                     ; 1001CBFF _ 5F
        pop     esi                                     ; 1001CC00 _ 5E
        ret                                             ; 1001CC01 _ C3

?_3576: call    ?_3107                                  ; 1001CC02 _ E8, FFFFDBDE
        mov     dword [eax], 9                          ; 1001CC07 _ C7. 00, 00000009
        call    ?_3108                                  ; 1001CC0D _ E8, FFFFDBDC
        and     dword [eax], 00H                        ; 1001CC12 _ 83. 20, 00
        or      eax, 0FFFFFFFFH                         ; 1001CC15 _ 83. C8, FF
        pop     esi                                     ; 1001CC18 _ 5E
        ret                                             ; 1001CC19 _ C3

?_3577: push    esi                                     ; 1001CC1A _ 56
        mov     esi, dword [esp+8H]                     ; 1001CC1B _ 8B. 74 24, 08
        push    edi                                     ; 1001CC1F _ 57
        push    esi                                     ; 1001CC20 _ 56
        call    ?_4218                                  ; 1001CC21 _ E8, 0000373A
        cmp     eax, -1                                 ; 1001CC26 _ 83. F8, FF
        pop     ecx                                     ; 1001CC29 _ 59
        jnz     ?_3578                                  ; 1001CC2A _ 75, 0D
        call    ?_3107                                  ; 1001CC2C _ E8, FFFFDBB4
        mov     dword [eax], 9                          ; 1001CC31 _ C7. 00, 00000009
        jmp     ?_3581                                  ; 1001CC37 _ EB, 2D

?_3578: push    dword [esp+14H]                         ; 1001CC39 _ FF. 74 24, 14
        push    0                                       ; 1001CC3D _ 6A, 00
        push    dword [esp+18H]                         ; 1001CC3F _ FF. 74 24, 18
        push    eax                                     ; 1001CC43 _ 50
        call    near [imp_SetFilePointer]               ; 1001CC44 _ FF. 15, 10024028(d)
        mov     edi, eax                                ; 1001CC4A _ 8B. F8
        cmp     edi, -1                                 ; 1001CC4C _ 83. FF, FF
        jnz     ?_3579                                  ; 1001CC4F _ 75, 08
        call    near [imp_GetLastError]                 ; 1001CC51 _ FF. 15, 100240DC(d)
        jmp     ?_3580                                  ; 1001CC57 _ EB, 02

?_3579: xor     eax, eax                                ; 1001CC59 _ 33. C0
?_3580: test    eax, eax                                ; 1001CC5B _ 85. C0
        jz      ?_3582                                  ; 1001CC5D _ 74, 0C
        push    eax                                     ; 1001CC5F _ 50
        call    ?_3102                                  ; 1001CC60 _ E8, FFFFDB0D
        pop     ecx                                     ; 1001CC65 _ 59
?_3581: or      eax, 0FFFFFFFFH                         ; 1001CC66 _ 83. C8, FF
        jmp     ?_3583                                  ; 1001CC69 _ EB, 1F

?_3582: mov     ecx, esi                                ; 1001CC6B _ 8B. CE
        and     esi, 1FH                                ; 1001CC6D _ 83. E6, 1F
        sar     ecx, 5                                  ; 1001CC70 _ C1. F9, 05
        mov     eax, esi                                ; 1001CC73 _ 8B. C6
        mov     ecx, dword [?_5809+ecx*4]               ; 1001CC75 _ 8B. 0C 8D, 11766460(d)
        lea     eax, [eax+eax*8]                        ; 1001CC7C _ 8D. 04 C0
        and     byte [ecx+eax*4+4H], 0FFFFFFFDH         ; 1001CC7F _ 80. 64 81, 04, FD
        lea     eax, [ecx+eax*4+4H]                     ; 1001CC84 _ 8D. 44 81, 04
        mov     eax, edi                                ; 1001CC88 _ 8B. C7
?_3583: pop     edi                                     ; 1001CC8A _ 5F
        pop     esi                                     ; 1001CC8B _ 5E
        ret                                             ; 1001CC8C _ C3

?_3584: push    ebx                                     ; 1001CC8D _ 53
        push    ebp                                     ; 1001CC8E _ 55
        push    esi                                     ; 1001CC8F _ 56
        push    edi                                     ; 1001CC90 _ 57
        call    ?_3621                                  ; 1001CC91 _ E8, 0000049B
        mov     esi, eax                                ; 1001CC96 _ 8B. F0
        cmp     dword [esi+38H], 0                      ; 1001CC98 _ 83. 7E, 38, 00
        jnz     ?_3585                                  ; 1001CC9C _ 75, 14
        push    26                                      ; 1001CC9E _ 6A, 1A
        call    ?_3109                                  ; 1001CCA0 _ E8, FFFFDB52
        mov     dword [esi+38H], eax                    ; 1001CCA5 _ 89. 46, 38
        pop     ecx                                     ; 1001CCA8 _ 59
        test    eax, eax                                ; 1001CCA9 _ 85. C0
        mov     eax, ?_5579                             ; 1001CCAB _ B8, 1003551C(d)
        jz      ?_3586                                  ; 1001CCB0 _ 74, 03
?_3585: mov     eax, dword [esi+38H]                    ; 1001CCB2 _ 8B. 46, 38
?_3586: mov     esi, dword [esp+14H]                    ; 1001CCB5 _ 8B. 74 24, 14
        mov     ebx, eax                                ; 1001CCB9 _ 8B. D8
        mov     ecx, dword [esi+18H]                    ; 1001CCBB _ 8B. 4E, 18
        lea     edi, [ecx+ecx*2]                        ; 1001CCBE _ 8D. 3C 49
        mov     ecx, dword [esi+10H]                    ; 1001CCC1 _ 8B. 4E, 10
        lea     ebp, [ecx+ecx*2]                        ; 1001CCC4 _ 8D. 2C 49
        xor     ecx, ecx                                ; 1001CCC7 _ 33. C9
?_3587: mov     dl, byte [?_4992+edi+ecx]               ; 1001CCC9 _ 8A. 94 0F, 10026418(d)
        inc     ecx                                     ; 1001CCD0 _ 41
        mov     byte [eax], dl                          ; 1001CCD1 _ 88. 10
        mov     dl, byte [?_4993+ecx+ebp]               ; 1001CCD3 _ 8A. 94 29, 1002642F(d)
        mov     byte [eax+4H], dl                       ; 1001CCDA _ 88. 50, 04
        inc     eax                                     ; 1001CCDD _ 40
        cmp     ecx, 3                                  ; 1001CCDE _ 83. F9, 03
        jl      ?_3587                                  ; 1001CCE1 _ 7C, E6
        mov     byte [eax], 32                          ; 1001CCE3 _ C6. 00, 20
        add     eax, 4                                  ; 1001CCE6 _ 83. C0, 04
        mov     byte [eax], 32                          ; 1001CCE9 _ C6. 00, 20
        push    dword [esi+0CH]                         ; 1001CCEC _ FF. 76, 0C
        inc     eax                                     ; 1001CCEF _ 40
        push    eax                                     ; 1001CCF0 _ 50
        call    ?_3588                                  ; 1001CCF1 _ E8, 00000061
        mov     byte [eax], 32                          ; 1001CCF6 _ C6. 00, 20
        push    dword [esi+8H]                          ; 1001CCF9 _ FF. 76, 08
        inc     eax                                     ; 1001CCFC _ 40
        push    eax                                     ; 1001CCFD _ 50
        call    ?_3588                                  ; 1001CCFE _ E8, 00000054
        mov     byte [eax], 58                          ; 1001CD03 _ C6. 00, 3A
        push    dword [esi+4H]                          ; 1001CD06 _ FF. 76, 04
        inc     eax                                     ; 1001CD09 _ 40
        push    eax                                     ; 1001CD0A _ 50
        call    ?_3588                                  ; 1001CD0B _ E8, 00000047
        mov     byte [eax], 58                          ; 1001CD10 _ C6. 00, 3A
        push    dword [esi]                             ; 1001CD13 _ FF. 36
        inc     eax                                     ; 1001CD15 _ 40
        push    eax                                     ; 1001CD16 _ 50
        call    ?_3588                                  ; 1001CD17 _ E8, 0000003B
        mov     ecx, eax                                ; 1001CD1C _ 8B. C8
        push    100                                     ; 1001CD1E _ 6A, 64
        pop     edi                                     ; 1001CD20 _ 5F
        mov     byte [ecx], 32                          ; 1001CD21 _ C6. 01, 20
        mov     eax, dword [esi+14H]                    ; 1001CD24 _ 8B. 46, 14
        cdq                                             ; 1001CD27 _ 99
        idiv    edi                                     ; 1001CD28 _ F7. FF
        add     eax, 19                                 ; 1001CD2A _ 83. C0, 13
        inc     ecx                                     ; 1001CD2D _ 41
        push    eax                                     ; 1001CD2E _ 50
        push    ecx                                     ; 1001CD2F _ 51
        call    ?_3588                                  ; 1001CD30 _ E8, 00000022
        mov     ecx, eax                                ; 1001CD35 _ 8B. C8
        mov     eax, dword [esi+14H]                    ; 1001CD37 _ 8B. 46, 14
        push    edi                                     ; 1001CD3A _ 57
        cdq                                             ; 1001CD3B _ 99
        pop     esi                                     ; 1001CD3C _ 5E
        idiv    esi                                     ; 1001CD3D _ F7. FE
        push    edx                                     ; 1001CD3F _ 52
        push    ecx                                     ; 1001CD40 _ 51
        call    ?_3588                                  ; 1001CD41 _ E8, 00000011
        add     esp, 48                                 ; 1001CD46 _ 83. C4, 30
        mov     byte [eax], 10                          ; 1001CD49 _ C6. 00, 0A
        and     byte [eax+1H], 00H                      ; 1001CD4C _ 80. 60, 01, 00
        mov     eax, ebx                                ; 1001CD50 _ 8B. C3
        pop     edi                                     ; 1001CD52 _ 5F
        pop     esi                                     ; 1001CD53 _ 5E
        pop     ebp                                     ; 1001CD54 _ 5D
        pop     ebx                                     ; 1001CD55 _ 5B
        ret                                             ; 1001CD56 _ C3

?_3588: mov     eax, dword [esp+8H]                     ; 1001CD57 _ 8B. 44 24, 08
        push    esi                                     ; 1001CD5B _ 56
        push    10                                      ; 1001CD5C _ 6A, 0A
        cdq                                             ; 1001CD5E _ 99
        pop     ecx                                     ; 1001CD5F _ 59
        idiv    ecx                                     ; 1001CD60 _ F7. F9
        mov     ecx, dword [esp+8H]                     ; 1001CD62 _ 8B. 4C 24, 08
        push    10                                      ; 1001CD66 _ 6A, 0A
        pop     esi                                     ; 1001CD68 _ 5E
        add     al, 48                                  ; 1001CD69 _ 04, 30
        mov     byte [ecx], al                          ; 1001CD6B _ 88. 01
        mov     eax, dword [esp+0CH]                    ; 1001CD6D _ 8B. 44 24, 0C
        cdq                                             ; 1001CD71 _ 99
        idiv    esi                                     ; 1001CD72 _ F7. FE
        inc     ecx                                     ; 1001CD74 _ 41
        pop     esi                                     ; 1001CD75 _ 5E
        lea     eax, [ecx+1H]                           ; 1001CD76 _ 8D. 41, 01
        add     dl, 48                                  ; 1001CD79 _ 80. C2, 30
        mov     byte [ecx], dl                          ; 1001CD7C _ 88. 11
        ret                                             ; 1001CD7E _ C3

?_3589: push    ebp                                     ; 1001CD7F _ 55
        mov     ebp, esp                                ; 1001CD80 _ 8B. EC
        push    esi                                     ; 1001CD82 _ 56
        mov     esi, dword [ebp+8H]                     ; 1001CD83 _ 8B. 75, 08
        cmp     dword [esi], 0                          ; 1001CD86 _ 83. 3E, 00
        jge     ?_3590                                  ; 1001CD89 _ 7D, 07
        xor     eax, eax                                ; 1001CD8B _ 33. C0
        jmp     ?_3598                                  ; 1001CD8D _ E9, 00000112

?_3590: call    ?_4287                                  ; 1001CD92 _ E8, 00003B7E
        mov     eax, dword [esi]                        ; 1001CD97 _ 8B. 06
        cmp     eax, 259200                             ; 1001CD99 _ 3D, 0003F480
        jle     ?_3591                                  ; 1001CD9E _ 7E, 58
        cmp     eax, 2147224447                         ; 1001CDA0 _ 3D, 7FFC0B7F
        jge     ?_3591                                  ; 1001CDA5 _ 7D, 51
        sub     eax, dword [?_5481]                     ; 1001CDA7 _ 2B. 05, 10033F80(d)
        mov     dword [ebp+8H], eax                     ; 1001CDAD _ 89. 45, 08
        lea     eax, [ebp+8H]                           ; 1001CDB0 _ 8D. 45, 08
        push    eax                                     ; 1001CDB3 _ 50
        call    ?_4343                                  ; 1001CDB4 _ E8, 0000411E
        cmp     dword [?_5482], 0                       ; 1001CDB9 _ 83. 3D, 10033F84(d), 00
        pop     ecx                                     ; 1001CDC0 _ 59
        mov     esi, eax                                ; 1001CDC1 _ 8B. F0
        je      ?_3597                                  ; 1001CDC3 _ 0F 84, 000000D9
        push    esi                                     ; 1001CDC9 _ 56
        call    ?_4310                                  ; 1001CDCA _ E8, 00003DFB
        test    eax, eax                                ; 1001CDCF _ 85. C0
        pop     ecx                                     ; 1001CDD1 _ 59
        je      ?_3597                                  ; 1001CDD2 _ 0F 84, 000000CA
        mov     eax, dword [?_5483]                     ; 1001CDD8 _ A1, 10033F88(d)
        sub     dword [ebp+8H], eax                     ; 1001CDDD _ 29. 45, 08
        lea     eax, [ebp+8H]                           ; 1001CDE0 _ 8D. 45, 08
        push    eax                                     ; 1001CDE3 _ 50
        call    ?_4343                                  ; 1001CDE4 _ E8, 000040EE
        mov     esi, eax                                ; 1001CDE9 _ 8B. F0
        pop     ecx                                     ; 1001CDEB _ 59
        mov     dword [esi+20H], 1                      ; 1001CDEC _ C7. 46, 20, 00000001
        jmp     ?_3597                                  ; 1001CDF3 _ E9, 000000AA

?_3591: push    esi                                     ; 1001CDF8 _ 56
        call    ?_4343                                  ; 1001CDF9 _ E8, 000040D9
        mov     esi, eax                                ; 1001CDFE _ 8B. F0
        push    esi                                     ; 1001CE00 _ 56
        call    ?_4310                                  ; 1001CE01 _ E8, 00003DC4
        pop     ecx                                     ; 1001CE06 _ 59
        test    eax, eax                                ; 1001CE07 _ 85. C0
        mov     eax, dword [esi]                        ; 1001CE09 _ 8B. 06
        pop     ecx                                     ; 1001CE0B _ 59
        jz      ?_3592                                  ; 1001CE0C _ 74, 06
        sub     eax, dword [?_5483]                     ; 1001CE0E _ 2B. 05, 10033F88(d)
?_3592: sub     eax, dword [?_5481]                     ; 1001CE14 _ 2B. 05, 10033F80(d)
        push    edi                                     ; 1001CE1A _ 57
        push    60                                      ; 1001CE1B _ 6A, 3C
        mov     dword [ebp+8H], eax                     ; 1001CE1D _ 89. 45, 08
        pop     ecx                                     ; 1001CE20 _ 59
        cdq                                             ; 1001CE21 _ 99
        mov     edi, ecx                                ; 1001CE22 _ 8B. F9
        idiv    edi                                     ; 1001CE24 _ F7. FF
        test    edx, edx                                ; 1001CE26 _ 85. D2
        mov     dword [esi], edx                        ; 1001CE28 _ 89. 16
        jge     ?_3593                                  ; 1001CE2A _ 7D, 07
        add     edx, ecx                                ; 1001CE2C _ 03. D1
        mov     dword [esi], edx                        ; 1001CE2E _ 89. 16
        sub     dword [ebp+8H], ecx                     ; 1001CE30 _ 29. 4D, 08
?_3593: mov     eax, dword [ebp+8H]                     ; 1001CE33 _ 8B. 45, 08
        mov     edi, ecx                                ; 1001CE36 _ 8B. F9
        cdq                                             ; 1001CE38 _ 99
        idiv    edi                                     ; 1001CE39 _ F7. FF
        add     eax, dword [esi+4H]                     ; 1001CE3B _ 03. 46, 04
        mov     dword [ebp+8H], eax                     ; 1001CE3E _ 89. 45, 08
        cdq                                             ; 1001CE41 _ 99
        idiv    edi                                     ; 1001CE42 _ F7. FF
        pop     edi                                     ; 1001CE44 _ 5F
        test    edx, edx                                ; 1001CE45 _ 85. D2
        mov     dword [esi+4H], edx                     ; 1001CE47 _ 89. 56, 04
        jge     ?_3594                                  ; 1001CE4A _ 7D, 09
        add     edx, 60                                 ; 1001CE4C _ 83. C2, 3C
        mov     dword [esi+4H], edx                     ; 1001CE4F _ 89. 56, 04
        sub     dword [ebp+8H], ecx                     ; 1001CE52 _ 29. 4D, 08
?_3594: mov     eax, dword [ebp+8H]                     ; 1001CE55 _ 8B. 45, 08
        push    24                                      ; 1001CE58 _ 6A, 18
        cdq                                             ; 1001CE5A _ 99
        idiv    ecx                                     ; 1001CE5B _ F7. F9
        pop     ecx                                     ; 1001CE5D _ 59
        add     eax, dword [esi+8H]                     ; 1001CE5E _ 03. 46, 08
        mov     dword [ebp+8H], eax                     ; 1001CE61 _ 89. 45, 08
        cdq                                             ; 1001CE64 _ 99
        idiv    ecx                                     ; 1001CE65 _ F7. F9
        test    edx, edx                                ; 1001CE67 _ 85. D2
        mov     dword [esi+8H], edx                     ; 1001CE69 _ 89. 56, 08
        jge     ?_3595                                  ; 1001CE6C _ 7D, 08
        add     edx, ecx                                ; 1001CE6E _ 03. D1
        mov     dword [esi+8H], edx                     ; 1001CE70 _ 89. 56, 08
        sub     dword [ebp+8H], ecx                     ; 1001CE73 _ 29. 4D, 08
?_3595: mov     eax, dword [ebp+8H]                     ; 1001CE76 _ 8B. 45, 08
        push    24                                      ; 1001CE79 _ 6A, 18
        cdq                                             ; 1001CE7B _ 99
        pop     ecx                                     ; 1001CE7C _ 59
        idiv    ecx                                     ; 1001CE7D _ F7. F9
        mov     ecx, eax                                ; 1001CE7F _ 8B. C8
        test    ecx, ecx                                ; 1001CE81 _ 85. C9
        mov     dword [ebp+8H], ecx                     ; 1001CE83 _ 89. 4D, 08
        jle     ?_3599                                  ; 1001CE86 _ 7E, 1F
        mov     eax, dword [esi+18H]                    ; 1001CE88 _ 8B. 46, 18
        push    7                                       ; 1001CE8B _ 6A, 07
        add     eax, ecx                                ; 1001CE8D _ 03. C1
        pop     ecx                                     ; 1001CE8F _ 59
        cdq                                             ; 1001CE90 _ 99
        idiv    ecx                                     ; 1001CE91 _ F7. F9
        mov     dword [esi+18H], edx                    ; 1001CE93 _ 89. 56, 18
        mov     eax, dword [ebp+8H]                     ; 1001CE96 _ 8B. 45, 08
        add     dword [esi+0CH], eax                    ; 1001CE99 _ 01. 46, 0C
?_3596: mov     eax, dword [ebp+8H]                     ; 1001CE9C _ 8B. 45, 08
        add     dword [esi+1CH], eax                    ; 1001CE9F _ 01. 46, 1C
?_3597: mov     eax, esi                                ; 1001CEA2 _ 8B. C6
?_3598: pop     esi                                     ; 1001CEA4 _ 5E
        pop     ebp                                     ; 1001CEA5 _ 5D
        ret                                             ; 1001CEA6 _ C3

?_3599: jge     ?_3597                                  ; 1001CEA7 _ 7D, F9
        mov     eax, dword [esi+18H]                    ; 1001CEA9 _ 8B. 46, 18
        push    7                                       ; 1001CEAC _ 6A, 07
        lea     eax, [eax+ecx+7H]                       ; 1001CEAE _ 8D. 44 08, 07
        pop     ecx                                     ; 1001CEB2 _ 59
        cdq                                             ; 1001CEB3 _ 99
        idiv    ecx                                     ; 1001CEB4 _ F7. F9
        mov     dword [esi+18H], edx                    ; 1001CEB6 _ 89. 56, 18
        mov     eax, dword [ebp+8H]                     ; 1001CEB9 _ 8B. 45, 08
        add     dword [esi+0CH], eax                    ; 1001CEBC _ 01. 46, 0C
        mov     eax, dword [esi+0CH]                    ; 1001CEBF _ 8B. 46, 0C
        test    eax, eax                                ; 1001CEC2 _ 85. C0
        jg      ?_3596                                  ; 1001CEC4 _ 7F, D6
        add     eax, 31                                 ; 1001CEC6 _ 83. C0, 1F
        dec     dword [esi+14H]                         ; 1001CEC9 _ FF. 4E, 14
        mov     dword [esi+0CH], eax                    ; 1001CECC _ 89. 46, 0C
        mov     dword [esi+1CH], 364                    ; 1001CECF _ C7. 46, 1C, 0000016C
        mov     dword [esi+10H], 11                     ; 1001CED6 _ C7. 46, 10, 0000000B
        jmp     ?_3597                                  ; 1001CEDD _ EB, C3

?_3600: push    ebp                                     ; 1001CEDF _ 55
        mov     ebp, esp                                ; 1001CEE0 _ 8B. EC
        sub     esp, 36                                 ; 1001CEE2 _ 83. EC, 24
        push    ebx                                     ; 1001CEE5 _ 53
        mov     ebx, dword [ebp+8H]                     ; 1001CEE6 _ 8B. 5D, 08
        sub     ebx, 1900                               ; 1001CEE9 _ 81. EB, 0000076C
        cmp     ebx, 70                                 ; 1001CEEF _ 83. FB, 46
        jl      ?_3604                                  ; 1001CEF2 _ 0F 8C, 000000A3
        cmp     ebx, 138                                ; 1001CEF8 _ 81. FB, 0000008A
        jg      ?_3604                                  ; 1001CEFE _ 0F 8F, 00000097
        push    esi                                     ; 1001CF04 _ 56
        push    edi                                     ; 1001CF05 _ 57
        mov     edi, dword [ebp+0CH]                    ; 1001CF06 _ 8B. 7D, 0C
        mov     esi, dword [?_5495+edi*4]               ; 1001CF09 _ 8B. 34 BD, 10034064(d)
        add     esi, dword [ebp+10H]                    ; 1001CF10 _ 03. 75, 10
        test    bl, 03H                                 ; 1001CF13 _ F6. C3, 03
        jnz     ?_3601                                  ; 1001CF16 _ 75, 06
        cmp     edi, 2                                  ; 1001CF18 _ 83. FF, 02
        jle     ?_3601                                  ; 1001CF1B _ 7E, 01
        inc     esi                                     ; 1001CF1D _ 46
?_3601: call    ?_4287                                  ; 1001CF1E _ E8, 000039F2
        mov     eax, ebx                                ; 1001CF23 _ 8B. C3
        lea     ecx, [ebx-1H]                           ; 1001CF25 _ 8D. 4B, FF
        imul    eax, eax, 365                           ; 1001CF28 _ 69. C0, 0000016D
        sar     ecx, 2                                  ; 1001CF2E _ C1. F9, 02
        mov     edx, esi                                ; 1001CF31 _ 8B. D6
        mov     dword [ebp-8H], esi                     ; 1001CF33 _ 89. 75, F8
        add     edx, ecx                                ; 1001CF36 _ 03. D1
        mov     dword [ebp-10H], ebx                    ; 1001CF38 _ 89. 5D, F0
        add     eax, edx                                ; 1001CF3B _ 03. C2
        mov     edx, dword [ebp+1CH]                    ; 1001CF3D _ 8B. 55, 1C
        lea     ecx, [eax+eax*2]                        ; 1001CF40 _ 8D. 0C 40
        mov     eax, dword [ebp+14H]                    ; 1001CF43 _ 8B. 45, 14
        mov     dword [ebp-1CH], eax                    ; 1001CF46 _ 89. 45, E4
        lea     ecx, [eax+ecx*8]                        ; 1001CF49 _ 8D. 0C C8
        imul    ecx, ecx, 60                            ; 1001CF4C _ 6B. C9, 3C
        add     ecx, dword [ebp+18H]                    ; 1001CF4F _ 03. 4D, 18
        imul    ecx, ecx, 60                            ; 1001CF52 _ 6B. C9, 3C
        add     ecx, dword [?_5481]                     ; 1001CF55 _ 03. 0D, 10033F80(d)
        dec     edi                                     ; 1001CF5B _ 4F
        cmp     dword [ebp+20H], 1                      ; 1001CF5C _ 83. 7D, 20, 01
        mov     dword [ebp-14H], edi                    ; 1001CF60 _ 89. 7D, EC
        pop     edi                                     ; 1001CF63 _ 5F
        pop     esi                                     ; 1001CF64 _ 5E
        lea     ecx, [ecx+edx+7C558180H]                ; 1001CF65 _ 8D. 8C 11, 7C558180
        mov     dword [ebp+8H], ecx                     ; 1001CF6C _ 89. 4D, 08
        jz      ?_3602                                  ; 1001CF6F _ 74, 20
        cmp     dword [ebp+20H], -1                     ; 1001CF71 _ 83. 7D, 20, FF
        jnz     ?_3603                                  ; 1001CF75 _ 75, 20
        cmp     dword [?_5482], 0                       ; 1001CF77 _ 83. 3D, 10033F84(d), 00
        jz      ?_3603                                  ; 1001CF7E _ 74, 17
        lea     eax, [ebp-24H]                          ; 1001CF80 _ 8D. 45, DC
        push    eax                                     ; 1001CF83 _ 50
        call    ?_4310                                  ; 1001CF84 _ E8, 00003C41
        pop     ecx                                     ; 1001CF89 _ 59
        mov     ecx, dword [ebp+8H]                     ; 1001CF8A _ 8B. 4D, 08
        test    eax, eax                                ; 1001CF8D _ 85. C0
        jz      ?_3603                                  ; 1001CF8F _ 74, 06
?_3602: add     ecx, dword [?_5483]                     ; 1001CF91 _ 03. 0D, 10033F88(d)
?_3603: mov     eax, ecx                                ; 1001CF97 _ 8B. C1
        jmp     ?_3605                                  ; 1001CF99 _ EB, 03

?_3604: or      eax, 0FFFFFFFFH                         ; 1001CF9B _ 83. C8, FF
?_3605: pop     ebx                                     ; 1001CF9E _ 5B
        leave                                           ; 1001CF9F _ C9
        ret                                             ; 1001CFA0 _ C3

?_3606: push    esi                                     ; 1001CFA1 _ 56
        mov     esi, dword [imp_InitializeCriticalSection]; 1001CFA2 _ 8B. 35, 100240F4(d)
        push    dword [?_5460]                          ; 1001CFA8 _ FF. 35, 10031AF0(d)
        call    esi                                     ; 1001CFAE _ FF. D6
        push    dword [?_5459]                          ; 1001CFB0 _ FF. 35, 10031AE0(d)
        call    esi                                     ; 1001CFB6 _ FF. D6
        push    dword [?_5458]                          ; 1001CFB8 _ FF. 35, 10031AD0(d)
        call    esi                                     ; 1001CFBE _ FF. D6
        push    dword [?_5457]                          ; 1001CFC0 _ FF. 35, 10031AB0(d)
        call    esi                                     ; 1001CFC6 _ FF. D6
        pop     esi                                     ; 1001CFC8 _ 5E
        ret                                             ; 1001CFC9 _ C3

?_3607: push    esi                                     ; 1001CFCA _ 56
        push    edi                                     ; 1001CFCB _ 57
        mov     edi, dword [imp_DeleteCriticalSection]  ; 1001CFCC _ 8B. 3D, 10024104(d)
        mov     esi, ?_5456                             ; 1001CFD2 _ BE, 10031AAC(d)
?_3608: mov     eax, dword [esi]                        ; 1001CFD7 _ 8B. 06
        test    eax, eax                                ; 1001CFD9 _ 85. C0
        jz      ?_3609                                  ; 1001CFDB _ 74, 2B
        cmp     esi, ?_5460                             ; 1001CFDD _ 81. FE, 10031AF0(d)
        jz      ?_3609                                  ; 1001CFE3 _ 74, 23
        cmp     esi, ?_5459                             ; 1001CFE5 _ 81. FE, 10031AE0(d)
        jz      ?_3609                                  ; 1001CFEB _ 74, 1B
        cmp     esi, ?_5458                             ; 1001CFED _ 81. FE, 10031AD0(d)
        jz      ?_3609                                  ; 1001CFF3 _ 74, 13
        cmp     esi, ?_5457                             ; 1001CFF5 _ 81. FE, 10031AB0(d)
        jz      ?_3609                                  ; 1001CFFB _ 74, 0B
        push    eax                                     ; 1001CFFD _ 50
        call    edi                                     ; 1001CFFE _ FF. D7
        push    dword [esi]                             ; 1001D000 _ FF. 36
        call    ?_3158                                  ; 1001D002 _ E8, FFFFDB7A
        pop     ecx                                     ; 1001D007 _ 59
?_3609: add     esi, 4                                  ; 1001D008 _ 83. C6, 04
        cmp     esi, ?_5461                             ; 1001D00B _ 81. FE, 10031B6C(d)
        jl      ?_3608                                  ; 1001D011 _ 7C, C4
        push    dword [?_5458]                          ; 1001D013 _ FF. 35, 10031AD0(d)
        call    edi                                     ; 1001D019 _ FF. D7
        push    dword [?_5459]                          ; 1001D01B _ FF. 35, 10031AE0(d)
        call    edi                                     ; 1001D021 _ FF. D7
        push    dword [?_5460]                          ; 1001D023 _ FF. 35, 10031AF0(d)
        call    edi                                     ; 1001D029 _ FF. D7
        push    dword [?_5457]                          ; 1001D02B _ FF. 35, 10031AB0(d)
        call    edi                                     ; 1001D031 _ FF. D7
        pop     edi                                     ; 1001D033 _ 5F
        pop     esi                                     ; 1001D034 _ 5E
        ret                                             ; 1001D035 _ C3

?_3610: push    ebp                                     ; 1001D036 _ 55
        mov     ebp, esp                                ; 1001D037 _ 8B. EC
        mov     eax, dword [ebp+8H]                     ; 1001D039 _ 8B. 45, 08
        push    esi                                     ; 1001D03C _ 56
        cmp     dword [?_5456+eax*4], 0                 ; 1001D03D _ 83. 3C 85, 10031AAC(d), 00
        lea     esi, [?_5456+eax*4]                     ; 1001D045 _ 8D. 34 85, 10031AAC(d)
        jnz     ?_3614                                  ; 1001D04C _ 75, 3E
        push    edi                                     ; 1001D04E _ 57
        push    24                                      ; 1001D04F _ 6A, 18
        call    ?_3109                                  ; 1001D051 _ E8, FFFFD7A1
        mov     edi, eax                                ; 1001D056 _ 8B. F8
        pop     ecx                                     ; 1001D058 _ 59
        test    edi, edi                                ; 1001D059 _ 85. FF
        jnz     ?_3611                                  ; 1001D05B _ 75, 08
        push    17                                      ; 1001D05D _ 6A, 11
        call    ?_3352                                  ; 1001D05F _ E8, FFFFEA0D
        pop     ecx                                     ; 1001D064 _ 59
?_3611: push    17                                      ; 1001D065 _ 6A, 11
        call    ?_3610                                  ; 1001D067 _ E8, FFFFFFCA
        cmp     dword [esi], 0                          ; 1001D06C _ 83. 3E, 00
        pop     ecx                                     ; 1001D06F _ 59
        push    edi                                     ; 1001D070 _ 57
        jnz     ?_3612                                  ; 1001D071 _ 75, 0A
        call    near [imp_InitializeCriticalSection]    ; 1001D073 _ FF. 15, 100240F4(d)
        mov     dword [esi], edi                        ; 1001D079 _ 89. 3E
        jmp     ?_3613                                  ; 1001D07B _ EB, 06

?_3612: call    ?_3158                                  ; 1001D07D _ E8, FFFFDAFF
        pop     ecx                                     ; 1001D082 _ 59
?_3613: push    17                                      ; 1001D083 _ 6A, 11
        call    ?_3615                                  ; 1001D085 _ E8, 0000000D
        pop     ecx                                     ; 1001D08A _ 59
        pop     edi                                     ; 1001D08B _ 5F
?_3614: push    dword [esi]                             ; 1001D08C _ FF. 36
        call    near [imp_EnterCriticalSection]         ; 1001D08E _ FF. 15, 100240EC(d)
        pop     esi                                     ; 1001D094 _ 5E
        pop     ebp                                     ; 1001D095 _ 5D
        ret                                             ; 1001D096 _ C3

?_3615: push    ebp                                     ; 1001D097 _ 55
        mov     ebp, esp                                ; 1001D098 _ 8B. EC
        mov     eax, dword [ebp+8H]                     ; 1001D09A _ 8B. 45, 08
        push    dword [?_5456+eax*4]                    ; 1001D09D _ FF. 34 85, 10031AAC(d)
        call    near [imp_LeaveCriticalSection]         ; 1001D0A4 _ FF. 15, 100240F0(d)
        pop     ebp                                     ; 1001D0AA _ 5D
        ret                                             ; 1001D0AB _ C3

?_3616: push    esi                                     ; 1001D0AC _ 56
        call    ?_3606                                  ; 1001D0AD _ E8, FFFFFEEF
        call    near [imp_TlsAlloc]                     ; 1001D0B2 _ FF. 15, 10024110(d)
        cmp     eax, -1                                 ; 1001D0B8 _ 83. F8, FF
        mov     dword [?_5461], eax                     ; 1001D0BB _ A3, 10031B6C(d)
        jz      ?_3617                                  ; 1001D0C0 _ 74, 3A
        push    116                                     ; 1001D0C2 _ 6A, 74
        push    1                                       ; 1001D0C4 _ 6A, 01
        call    ?_4172                                  ; 1001D0C6 _ E8, 00002EB9
        mov     esi, eax                                ; 1001D0CB _ 8B. F0
        pop     ecx                                     ; 1001D0CD _ 59
        test    esi, esi                                ; 1001D0CE _ 85. F6
        pop     ecx                                     ; 1001D0D0 _ 59
        jz      ?_3617                                  ; 1001D0D1 _ 74, 29
        push    esi                                     ; 1001D0D3 _ 56
        push    dword [?_5461]                          ; 1001D0D4 _ FF. 35, 10031B6C(d)
        call    near [imp_TlsSetValue]                  ; 1001D0DA _ FF. 15, 100240D0(d)
        test    eax, eax                                ; 1001D0E0 _ 85. C0
        jz      ?_3617                                  ; 1001D0E2 _ 74, 18
        push    esi                                     ; 1001D0E4 _ 56
        call    ?_3620                                  ; 1001D0E5 _ E8, 00000034
        pop     ecx                                     ; 1001D0EA _ 59
        call    near [imp_GetCurrentThreadId]           ; 1001D0EB _ FF. 15, 10024108(d)
        or      dword [esi+4H], 0FFFFFFFFH              ; 1001D0F1 _ 83. 4E, 04, FF
        push    1                                       ; 1001D0F5 _ 6A, 01
        mov     dword [esi], eax                        ; 1001D0F7 _ 89. 06
        pop     eax                                     ; 1001D0F9 _ 58
        pop     esi                                     ; 1001D0FA _ 5E
        ret                                             ; 1001D0FB _ C3

?_3617: xor     eax, eax                                ; 1001D0FC _ 33. C0
        pop     esi                                     ; 1001D0FE _ 5E
        ret                                             ; 1001D0FF _ C3

?_3618: call    ?_3607                                  ; 1001D100 _ E8, FFFFFEC5
        mov     eax, dword [?_5461]                     ; 1001D105 _ A1, 10031B6C(d)
        cmp     eax, -1                                 ; 1001D10A _ 83. F8, FF
        jz      ?_3619                                  ; 1001D10D _ 74, 0E
        push    eax                                     ; 1001D10F _ 50
        call    near [imp_TlsFree]                      ; 1001D110 _ FF. 15, 10024114(d)
        or      dword [?_5461], 0FFFFFFFFH              ; 1001D116 _ 83. 0D, 10031B6C(d), FF
?_3619: ret                                             ; 1001D11D _ C3

?_3620: mov     eax, dword [esp+4H]                     ; 1001D11E _ 8B. 44 24, 04
        mov     dword [eax+50H], ?_5497                 ; 1001D122 _ C7. 40, 50, 100340A0(d)
        mov     dword [eax+14H], 1                      ; 1001D129 _ C7. 40, 14, 00000001
        ret                                             ; 1001D130 _ C3

?_3621: push    esi                                     ; 1001D131 _ 56
        push    edi                                     ; 1001D132 _ 57
        call    near [imp_GetLastError]                 ; 1001D133 _ FF. 15, 100240DC(d)
        push    dword [?_5461]                          ; 1001D139 _ FF. 35, 10031B6C(d)
        mov     edi, eax                                ; 1001D13F _ 8B. F8
        call    near [imp_TlsGetValue]                  ; 1001D141 _ FF. 15, 1002411C(d)
        mov     esi, eax                                ; 1001D147 _ 8B. F0
        test    esi, esi                                ; 1001D149 _ 85. F6
        jnz     ?_3623                                  ; 1001D14B _ 75, 3F
        push    116                                     ; 1001D14D _ 6A, 74
        push    1                                       ; 1001D14F _ 6A, 01
        call    ?_4172                                  ; 1001D151 _ E8, 00002E2E
        mov     esi, eax                                ; 1001D156 _ 8B. F0
        pop     ecx                                     ; 1001D158 _ 59
        test    esi, esi                                ; 1001D159 _ 85. F6
        pop     ecx                                     ; 1001D15B _ 59
        jz      ?_3622                                  ; 1001D15C _ 74, 26
        push    esi                                     ; 1001D15E _ 56
        push    dword [?_5461]                          ; 1001D15F _ FF. 35, 10031B6C(d)
        call    near [imp_TlsSetValue]                  ; 1001D165 _ FF. 15, 100240D0(d)
        test    eax, eax                                ; 1001D16B _ 85. C0
        jz      ?_3622                                  ; 1001D16D _ 74, 15
        push    esi                                     ; 1001D16F _ 56
        call    ?_3620                                  ; 1001D170 _ E8, FFFFFFA9
        pop     ecx                                     ; 1001D175 _ 59
        call    near [imp_GetCurrentThreadId]           ; 1001D176 _ FF. 15, 10024108(d)
        or      dword [esi+4H], 0FFFFFFFFH              ; 1001D17C _ 83. 4E, 04, FF
        mov     dword [esi], eax                        ; 1001D180 _ 89. 06
        jmp     ?_3623                                  ; 1001D182 _ EB, 08

?_3622: push    16                                      ; 1001D184 _ 6A, 10
        call    ?_3352                                  ; 1001D186 _ E8, FFFFE8E6
        pop     ecx                                     ; 1001D18B _ 59
?_3623: push    edi                                     ; 1001D18C _ 57
        call    near [imp_SetLastError]                 ; 1001D18D _ FF. 15, 10024118(d)
        mov     eax, esi                                ; 1001D193 _ 8B. C6
        pop     edi                                     ; 1001D195 _ 5F
        pop     esi                                     ; 1001D196 _ 5E
        ret                                             ; 1001D197 _ C3

?_3624: mov     eax, dword [?_5461]                     ; 1001D198 _ A1, 10031B6C(d)
        cmp     eax, -1                                 ; 1001D19D _ 83. F8, FF
        je      ?_3634                                  ; 1001D1A0 _ 0F 84, 00000091
        push    esi                                     ; 1001D1A6 _ 56
        mov     esi, dword [esp+8H]                     ; 1001D1A7 _ 8B. 74 24, 08
        test    esi, esi                                ; 1001D1AB _ 85. F6
        jnz     ?_3625                                  ; 1001D1AD _ 75, 0D
        push    eax                                     ; 1001D1AF _ 50
        call    near [imp_TlsGetValue]                  ; 1001D1B0 _ FF. 15, 1002411C(d)
        mov     esi, eax                                ; 1001D1B6 _ 8B. F0
        test    esi, esi                                ; 1001D1B8 _ 85. F6
        jz      ?_3633                                  ; 1001D1BA _ 74, 6C
?_3625: mov     eax, dword [esi+24H]                    ; 1001D1BC _ 8B. 46, 24
        test    eax, eax                                ; 1001D1BF _ 85. C0
        jz      ?_3626                                  ; 1001D1C1 _ 74, 07
        push    eax                                     ; 1001D1C3 _ 50
        call    ?_3158                                  ; 1001D1C4 _ E8, FFFFD9B8
        pop     ecx                                     ; 1001D1C9 _ 59
?_3626: mov     eax, dword [esi+28H]                    ; 1001D1CA _ 8B. 46, 28
        test    eax, eax                                ; 1001D1CD _ 85. C0
        jz      ?_3627                                  ; 1001D1CF _ 74, 07
        push    eax                                     ; 1001D1D1 _ 50
        call    ?_3158                                  ; 1001D1D2 _ E8, FFFFD9AA
        pop     ecx                                     ; 1001D1D7 _ 59
?_3627: mov     eax, dword [esi+30H]                    ; 1001D1D8 _ 8B. 46, 30
        test    eax, eax                                ; 1001D1DB _ 85. C0
        jz      ?_3628                                  ; 1001D1DD _ 74, 07
        push    eax                                     ; 1001D1DF _ 50
        call    ?_3158                                  ; 1001D1E0 _ E8, FFFFD99C
        pop     ecx                                     ; 1001D1E5 _ 59
?_3628: mov     eax, dword [esi+38H]                    ; 1001D1E6 _ 8B. 46, 38
        test    eax, eax                                ; 1001D1E9 _ 85. C0
        jz      ?_3629                                  ; 1001D1EB _ 74, 07
        push    eax                                     ; 1001D1ED _ 50
        call    ?_3158                                  ; 1001D1EE _ E8, FFFFD98E
        pop     ecx                                     ; 1001D1F3 _ 59
?_3629: mov     eax, dword [esi+40H]                    ; 1001D1F4 _ 8B. 46, 40
        test    eax, eax                                ; 1001D1F7 _ 85. C0
        jz      ?_3630                                  ; 1001D1F9 _ 74, 07
        push    eax                                     ; 1001D1FB _ 50
        call    ?_3158                                  ; 1001D1FC _ E8, FFFFD980
        pop     ecx                                     ; 1001D201 _ 59
?_3630: mov     eax, dword [esi+44H]                    ; 1001D202 _ 8B. 46, 44
        test    eax, eax                                ; 1001D205 _ 85. C0
        jz      ?_3631                                  ; 1001D207 _ 74, 07
        push    eax                                     ; 1001D209 _ 50
        call    ?_3158                                  ; 1001D20A _ E8, FFFFD972
        pop     ecx                                     ; 1001D20F _ 59
?_3631: mov     eax, dword [esi+50H]                    ; 1001D210 _ 8B. 46, 50
        cmp     eax, ?_5497                             ; 1001D213 _ 3D, 100340A0(d)
        jz      ?_3632                                  ; 1001D218 _ 74, 07
        push    eax                                     ; 1001D21A _ 50
        call    ?_3158                                  ; 1001D21B _ E8, FFFFD961
        pop     ecx                                     ; 1001D220 _ 59
?_3632: push    esi                                     ; 1001D221 _ 56
        call    ?_3158                                  ; 1001D222 _ E8, FFFFD95A
        pop     ecx                                     ; 1001D227 _ 59
?_3633: push    0                                       ; 1001D228 _ 6A, 00
        push    dword [?_5461]                          ; 1001D22A _ FF. 35, 10031B6C(d)
        call    near [imp_TlsSetValue]                  ; 1001D230 _ FF. 15, 100240D0(d)
        pop     esi                                     ; 1001D236 _ 5E
?_3634: ret                                             ; 1001D237 _ C3

?_3635: mov     eax, dword [?_5586]                     ; 1001D238 _ A1, 100355A0(d)
        test    eax, eax                                ; 1001D23D _ 85. C0
        jz      ?_3636                                  ; 1001D23F _ 74, 0F
        push    dword [esp+4H]                          ; 1001D241 _ FF. 74 24, 04
        call    eax                                     ; 1001D245 _ FF. D0
        test    eax, eax                                ; 1001D247 _ 85. C0
        pop     ecx                                     ; 1001D249 _ 59
        jz      ?_3636                                  ; 1001D24A _ 74, 04
        push    1                                       ; 1001D24C _ 6A, 01
        pop     eax                                     ; 1001D24E _ 58
        ret                                             ; 1001D24F _ C3

?_3636: xor     eax, eax                                ; 1001D250 _ 33. C0
        ret                                             ; 1001D252 _ C3

?_3637: push    esi                                     ; 1001D253 _ 56
        mov     esi, dword [esp+8H]                     ; 1001D254 _ 8B. 74 24, 08
        push    0                                       ; 1001D258 _ 6A, 00
        and     dword [esi], 00H                        ; 1001D25A _ 83. 26, 00
        call    near [imp_GetModuleHandleA]             ; 1001D25D _ FF. 15, 10024120(d)
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], 23117                       ; 1001D263 _ 66: 81. 38, 5A4D
        jnz     ?_3638                                  ; 1001D268 _ 75, 14
        mov     ecx, dword [eax+3CH]                    ; 1001D26A _ 8B. 48, 3C
        test    ecx, ecx                                ; 1001D26D _ 85. C9
        jz      ?_3638                                  ; 1001D26F _ 74, 0D
        add     eax, ecx                                ; 1001D271 _ 03. C1
        mov     cl, byte [eax+1AH]                      ; 1001D273 _ 8A. 48, 1A
        mov     byte [esi], cl                          ; 1001D276 _ 88. 0E
        mov     al, byte [eax+1BH]                      ; 1001D278 _ 8A. 40, 1B
        mov     byte [esi+1H], al                       ; 1001D27B _ 88. 46, 01
?_3638: pop     esi                                     ; 1001D27E _ 5E
        ret                                             ; 1001D27F _ C3

?_3639: push    ebp                                     ; 1001D280 _ 55
        mov     ebp, esp                                ; 1001D281 _ 8B. EC
        mov     eax, 4652                               ; 1001D283 _ B8, 0000122C
        call    ?_3168                                  ; 1001D288 _ E8, FFFFD9E3
        lea     eax, [ebp-98H]                          ; 1001D28D _ 8D. 85, FFFFFF68
        push    ebx                                     ; 1001D293 _ 53
        push    eax                                     ; 1001D294 _ 50
        mov     dword [ebp-98H], 148                    ; 1001D295 _ C7. 85, FFFFFF68, 00000094
        call    near [imp_GetVersionExA]                ; 1001D29F _ FF. 15, 10024128(d)
        test    eax, eax                                ; 1001D2A5 _ 85. C0
        jz      ?_3640                                  ; 1001D2A7 _ 74, 1A
        cmp     dword [ebp-88H], 2                      ; 1001D2A9 _ 83. BD, FFFFFF78, 02
        jnz     ?_3640                                  ; 1001D2B0 _ 75, 11
        cmp     dword [ebp-94H], 5                      ; 1001D2B2 _ 83. BD, FFFFFF6C, 05
        jc      ?_3640                                  ; 1001D2B9 _ 72, 08
        push    1                                       ; 1001D2BB _ 6A, 01
        pop     eax                                     ; 1001D2BD _ 58
        jmp     ?_3654                                  ; 1001D2BE _ E9, 00000102

?_3640: lea     eax, [ebp-122CH]                        ; 1001D2C3 _ 8D. 85, FFFFEDD4
        push    4240                                    ; 1001D2C9 _ 68, 00001090
        push    eax                                     ; 1001D2CE _ 50
        push    ?_4960                                  ; 1001D2CF _ 68, 10026094(d)
        call    near [imp_GetEnvironmentVariableA]      ; 1001D2D4 _ FF. 15, 10024100(d)
        test    eax, eax                                ; 1001D2DA _ 85. C0
        je      ?_3653                                  ; 1001D2DC _ 0F 84, 000000D0
        xor     ebx, ebx                                ; 1001D2E2 _ 33. DB
        lea     ecx, [ebp-122CH]                        ; 1001D2E4 _ 8D. 8D, FFFFEDD4
        cmp     byte [ebp-122CH], bl                    ; 1001D2EA _ 38. 9D, FFFFEDD4
        jz      ?_3643                                  ; 1001D2F0 _ 74, 13
?_3641: mov     al, byte [ecx]                          ; 1001D2F2 _ 8A. 01
        cmp     al, 97                                  ; 1001D2F4 _ 3C, 61
        jl      ?_3642                                  ; 1001D2F6 _ 7C, 08
        cmp     al, 122                                 ; 1001D2F8 _ 3C, 7A
        jg      ?_3642                                  ; 1001D2FA _ 7F, 04
        sub     al, 32                                  ; 1001D2FC _ 2C, 20
        mov     byte [ecx], al                          ; 1001D2FE _ 88. 01
?_3642: inc     ecx                                     ; 1001D300 _ 41
        cmp     byte [ecx], bl                          ; 1001D301 _ 38. 19
        jnz     ?_3641                                  ; 1001D303 _ 75, ED
?_3643: lea     eax, [ebp-122CH]                        ; 1001D305 _ 8D. 85, FFFFEDD4
        push    22                                      ; 1001D30B _ 6A, 16
        push    eax                                     ; 1001D30D _ 50
        push    ?_4959                                  ; 1001D30E _ 68, 1002607C(d)
        call    ?_4389                                  ; 1001D313 _ E8, 00003EE8
        add     esp, 12                                 ; 1001D318 _ 83. C4, 0C
        test    eax, eax                                ; 1001D31B _ 85. C0
        jnz     ?_3644                                  ; 1001D31D _ 75, 08
        lea     eax, [ebp-122CH]                        ; 1001D31F _ 8D. 85, FFFFEDD4
        jmp     ?_3648                                  ; 1001D325 _ EB, 49

?_3644: lea     eax, [ebp-19CH]                         ; 1001D327 _ 8D. 85, FFFFFE64
        push    260                                     ; 1001D32D _ 68, 00000104
        push    eax                                     ; 1001D332 _ 50
        push    ebx                                     ; 1001D333 _ 53
        call    near [imp_GetModuleFileNameA]           ; 1001D334 _ FF. 15, 1002403C(d)
        cmp     byte [ebp-19CH], bl                     ; 1001D33A _ 38. 9D, FFFFFE64
        lea     ecx, [ebp-19CH]                         ; 1001D340 _ 8D. 8D, FFFFFE64
        jz      ?_3647                                  ; 1001D346 _ 74, 13
?_3645: mov     al, byte [ecx]                          ; 1001D348 _ 8A. 01
        cmp     al, 97                                  ; 1001D34A _ 3C, 61
        jl      ?_3646                                  ; 1001D34C _ 7C, 08
        cmp     al, 122                                 ; 1001D34E _ 3C, 7A
        jg      ?_3646                                  ; 1001D350 _ 7F, 04
        sub     al, 32                                  ; 1001D352 _ 2C, 20
        mov     byte [ecx], al                          ; 1001D354 _ 88. 01
?_3646: inc     ecx                                     ; 1001D356 _ 41
        cmp     byte [ecx], bl                          ; 1001D357 _ 38. 19
        jnz     ?_3645                                  ; 1001D359 _ 75, ED
?_3647: lea     eax, [ebp-19CH]                         ; 1001D35B _ 8D. 85, FFFFFE64
        push    eax                                     ; 1001D361 _ 50
        lea     eax, [ebp-122CH]                        ; 1001D362 _ 8D. 85, FFFFEDD4
        push    eax                                     ; 1001D368 _ 50
        call    ?_3222                                  ; 1001D369 _ E8, FFFFDC82
        pop     ecx                                     ; 1001D36E _ 59
        pop     ecx                                     ; 1001D36F _ 59
?_3648: cmp     eax, ebx                                ; 1001D370 _ 3B. C3
        jz      ?_3653                                  ; 1001D372 _ 74, 3E
        push    44                                      ; 1001D374 _ 6A, 2C
        push    eax                                     ; 1001D376 _ 50
        call    ?_3210                                  ; 1001D377 _ E8, FFFFDBB4
        pop     ecx                                     ; 1001D37C _ 59
        cmp     eax, ebx                                ; 1001D37D _ 3B. C3
        pop     ecx                                     ; 1001D37F _ 59
        jz      ?_3653                                  ; 1001D380 _ 74, 30
        inc     eax                                     ; 1001D382 _ 40
        mov     ecx, eax                                ; 1001D383 _ 8B. C8
        cmp     byte [eax], bl                          ; 1001D385 _ 38. 18
        jz      ?_3652                                  ; 1001D387 _ 74, 0E
?_3649: cmp     byte [ecx], 59                          ; 1001D389 _ 80. 39, 3B
        jnz     ?_3650                                  ; 1001D38C _ 75, 04
        mov     byte [ecx], bl                          ; 1001D38E _ 88. 19
        jmp     ?_3651                                  ; 1001D390 _ EB, 01

?_3650: inc     ecx                                     ; 1001D392 _ 41
?_3651: cmp     byte [ecx], bl                          ; 1001D393 _ 38. 19
        jnz     ?_3649                                  ; 1001D395 _ 75, F2
?_3652: push    10                                      ; 1001D397 _ 6A, 0A
        push    ebx                                     ; 1001D399 _ 53
        push    eax                                     ; 1001D39A _ 50
        call    ?_4353                                  ; 1001D39B _ E8, 00003C41
        add     esp, 12                                 ; 1001D3A0 _ 83. C4, 0C
        cmp     eax, 2                                  ; 1001D3A3 _ 83. F8, 02
        jz      ?_3654                                  ; 1001D3A6 _ 74, 1D
        cmp     eax, 3                                  ; 1001D3A8 _ 83. F8, 03
        jz      ?_3654                                  ; 1001D3AB _ 74, 18
        cmp     eax, 1                                  ; 1001D3AD _ 83. F8, 01
        jz      ?_3654                                  ; 1001D3B0 _ 74, 13
?_3653: lea     eax, [ebp-4H]                           ; 1001D3B2 _ 8D. 45, FC
        push    eax                                     ; 1001D3B5 _ 50
        call    ?_3637                                  ; 1001D3B6 _ E8, FFFFFE98
        cmp     byte [ebp-4H], 6                        ; 1001D3BB _ 80. 7D, FC, 06
        pop     ecx                                     ; 1001D3BF _ 59
        sbb     eax, eax                                ; 1001D3C0 _ 1B. C0
        add     eax, 3                                  ; 1001D3C2 _ 83. C0, 03
?_3654: pop     ebx                                     ; 1001D3C5 _ 5B
        leave                                           ; 1001D3C6 _ C9
        ret                                             ; 1001D3C7 _ C3

?_3655: xor     eax, eax                                ; 1001D3C8 _ 33. C0
        push    0                                       ; 1001D3CA _ 6A, 00
        cmp     dword [esp+8H], eax                     ; 1001D3CC _ 39. 44 24, 08
        push    4096                                    ; 1001D3D0 _ 68, 00001000
        sete    al                                      ; 1001D3D5 _ 0F 94. C0
        push    eax                                     ; 1001D3D8 _ 50
        call    near [imp_HeapCreate]                   ; 1001D3D9 _ FF. 15, 10024130(d)
        test    eax, eax                                ; 1001D3DF _ 85. C0
        mov     dword [?_5807], eax                     ; 1001D3E1 _ A3, 1176644C(d)
        jz      ?_3658                                  ; 1001D3E6 _ 74, 36
        call    ?_3639                                  ; 1001D3E8 _ E8, FFFFFE93
        cmp     eax, 3                                  ; 1001D3ED _ 83. F8, 03
        mov     dword [?_5808], eax                     ; 1001D3F0 _ A3, 11766450(d)
        jnz     ?_3656                                  ; 1001D3F5 _ 75, 0D
        push    1016                                    ; 1001D3F7 _ 68, 000003F8
        call    ?_3667                                  ; 1001D3FC _ E8, 000000CC
        pop     ecx                                     ; 1001D401 _ 59
        jmp     ?_3657                                  ; 1001D402 _ EB, 0A

?_3656: cmp     eax, 2                                  ; 1001D404 _ 83. F8, 02
        jnz     ?_3659                                  ; 1001D407 _ 75, 18
        call    ?_3774                                  ; 1001D409 _ E8, 00000C06
?_3657: test    eax, eax                                ; 1001D40E _ 85. C0
        jnz     ?_3659                                  ; 1001D410 _ 75, 0F
        push    dword [?_5807]                          ; 1001D412 _ FF. 35, 1176644C(d)
        call    near [imp_HeapDestroy]                  ; 1001D418 _ FF. 15, 1002410C(d)
?_3658: xor     eax, eax                                ; 1001D41E _ 33. C0
        ret                                             ; 1001D420 _ C3

?_3659: push    1                                       ; 1001D421 _ 6A, 01
        pop     eax                                     ; 1001D423 _ 58
        ret                                             ; 1001D424 _ C3

?_3660: mov     eax, dword [?_5808]                     ; 1001D425 _ A1, 11766450(d)
        push    esi                                     ; 1001D42A _ 56
        cmp     eax, 3                                  ; 1001D42B _ 83. F8, 03
        push    edi                                     ; 1001D42E _ 57
        jnz     ?_3663                                  ; 1001D42F _ 75, 66
        push    ebx                                     ; 1001D431 _ 53
        xor     ebx, ebx                                ; 1001D432 _ 33. DB
        cmp     dword [?_5804], ebx                     ; 1001D434 _ 39. 1D, 11766440(d)
        push    ebp                                     ; 1001D43A _ 55
        mov     ebp, dword [imp_HeapFree]               ; 1001D43B _ 8B. 2D, 10024074(d)
        jle     ?_3662                                  ; 1001D441 _ 7E, 40
        mov     eax, dword [?_5805]                     ; 1001D443 _ A1, 11766444(d)
        mov     edi, dword [imp_VirtualFree]            ; 1001D448 _ 8B. 3D, 1002400C(d)
        lea     esi, [eax+0CH]                          ; 1001D44E _ 8D. 70, 0C
?_3661: push    16384                                   ; 1001D451 _ 68, 00004000
        push    1048576                                 ; 1001D456 _ 68, 00100000
        push    dword [esi]                             ; 1001D45B _ FF. 36
        call    edi                                     ; 1001D45D _ FF. D7
        push    32768                                   ; 1001D45F _ 68, 00008000
        push    0                                       ; 1001D464 _ 6A, 00
        push    dword [esi]                             ; 1001D466 _ FF. 36
        call    edi                                     ; 1001D468 _ FF. D7
        push    dword [esi+4H]                          ; 1001D46A _ FF. 76, 04
        push    0                                       ; 1001D46D _ 6A, 00
        push    dword [?_5807]                          ; 1001D46F _ FF. 35, 1176644C(d)
        call    ebp                                     ; 1001D475 _ FF. D5
        add     esi, 20                                 ; 1001D477 _ 83. C6, 14
        inc     ebx                                     ; 1001D47A _ 43
        cmp     ebx, dword [?_5804]                     ; 1001D47B _ 3B. 1D, 11766440(d)
        jl      ?_3661                                  ; 1001D481 _ 7C, CE
?_3662: push    dword [?_5805]                          ; 1001D483 _ FF. 35, 11766444(d)
        push    0                                       ; 1001D489 _ 6A, 00
        push    dword [?_5807]                          ; 1001D48B _ FF. 35, 1176644C(d)
        call    ebp                                     ; 1001D491 _ FF. D5
        pop     ebp                                     ; 1001D493 _ 5D
        pop     ebx                                     ; 1001D494 _ 5B
        jmp     ?_3666                                  ; 1001D495 _ EB, 27

?_3663: cmp     eax, 2                                  ; 1001D497 _ 83. F8, 02
        jnz     ?_3666                                  ; 1001D49A _ 75, 22
        mov     edi, ?_5462                             ; 1001D49C _ BF, 10031B78(d)
        mov     esi, edi                                ; 1001D4A1 _ 8B. F7
?_3664: mov     eax, dword [esi+10H]                    ; 1001D4A3 _ 8B. 46, 10
        test    eax, eax                                ; 1001D4A6 _ 85. C0
        jz      ?_3665                                  ; 1001D4A8 _ 74, 0E
        push    32768                                   ; 1001D4AA _ 68, 00008000
        push    0                                       ; 1001D4AF _ 6A, 00
        push    eax                                     ; 1001D4B1 _ 50
        call    near [imp_VirtualFree]                  ; 1001D4B2 _ FF. 15, 1002400C(d)
?_3665: mov     esi, dword [esi]                        ; 1001D4B8 _ 8B. 36
        cmp     esi, edi                                ; 1001D4BA _ 3B. F7
        jnz     ?_3664                                  ; 1001D4BC _ 75, E5
?_3666: push    dword [?_5807]                          ; 1001D4BE _ FF. 35, 1176644C(d)
        call    near [imp_HeapDestroy]                  ; 1001D4C4 _ FF. 15, 1002410C(d)
        pop     edi                                     ; 1001D4CA _ 5F
        pop     esi                                     ; 1001D4CB _ 5E
        ret                                             ; 1001D4CC _ C3

?_3667: push    320                                     ; 1001D4CD _ 68, 00000140
        push    0                                       ; 1001D4D2 _ 6A, 00
        push    dword [?_5807]                          ; 1001D4D4 _ FF. 35, 1176644C(d)
        call    near [imp_HeapAlloc]                    ; 1001D4DA _ FF. 15, 100240CC(d)
        test    eax, eax                                ; 1001D4E0 _ 85. C0
        mov     dword [?_5805], eax                     ; 1001D4E2 _ A3, 11766444(d)
        jnz     ?_3668                                  ; 1001D4E7 _ 75, 01
        ret                                             ; 1001D4E9 _ C3

?_3668: mov     ecx, dword [esp+4H]                     ; 1001D4EA _ 8B. 4C 24, 04
        and     dword [?_5803], 00H                     ; 1001D4EE _ 83. 25, 1176643C(d), 00
        and     dword [?_5804], 00H                     ; 1001D4F5 _ 83. 25, 11766440(d), 00
        push    1                                       ; 1001D4FC _ 6A, 01
        mov     dword [?_5802], eax                     ; 1001D4FE _ A3, 11766438(d)
        mov     dword [?_5806], ecx                     ; 1001D503 _ 89. 0D, 11766448(d)
        mov     dword [?_5800], 16                      ; 1001D509 _ C7. 05, 11766430(d), 00000010
        pop     eax                                     ; 1001D513 _ 58
        ret                                             ; 1001D514 _ C3

?_3669: mov     eax, dword [?_5804]                     ; 1001D515 _ A1, 11766440(d)
        lea     ecx, [eax+eax*4]                        ; 1001D51A _ 8D. 0C 80
        mov     eax, dword [?_5805]                     ; 1001D51D _ A1, 11766444(d)
        lea     ecx, [eax+ecx*4]                        ; 1001D522 _ 8D. 0C 88
?_3670: cmp     eax, ecx                                ; 1001D525 _ 3B. C1
        jnc     ?_3671                                  ; 1001D527 _ 73, 14
        mov     edx, dword [esp+4H]                     ; 1001D529 _ 8B. 54 24, 04
        sub     edx, dword [eax+0CH]                    ; 1001D52D _ 2B. 50, 0C
        cmp     edx, 1048576                            ; 1001D530 _ 81. FA, 00100000
        jc      ?_3672                                  ; 1001D536 _ 72, 07
        add     eax, 20                                 ; 1001D538 _ 83. C0, 14
        jmp     ?_3670                                  ; 1001D53B _ EB, E8

?_3671: xor     eax, eax                                ; 1001D53D _ 33. C0
?_3672: ret                                             ; 1001D53F _ C3

?_3673: push    ebp                                     ; 1001D540 _ 55
        mov     ebp, esp                                ; 1001D541 _ 8B. EC
        sub     esp, 16                                 ; 1001D543 _ 83. EC, 10
        mov     ecx, dword [ebp+8H]                     ; 1001D546 _ 8B. 4D, 08
        push    ebx                                     ; 1001D549 _ 53
        push    esi                                     ; 1001D54A _ 56
        mov     esi, dword [ebp+0CH]                    ; 1001D54B _ 8B. 75, 0C
        mov     eax, dword [ecx+10H]                    ; 1001D54E _ 8B. 41, 10
        push    edi                                     ; 1001D551 _ 57
        mov     edi, esi                                ; 1001D552 _ 8B. FE
        add     esi, -4                                 ; 1001D554 _ 83. C6, FC
        sub     edi, dword [ecx+0CH]                    ; 1001D557 _ 2B. 79, 0C
        shr     edi, 15                                 ; 1001D55A _ C1. EF, 0F
        mov     ecx, edi                                ; 1001D55D _ 8B. CF
        imul    ecx, ecx, 516                           ; 1001D55F _ 69. C9, 00000204
        lea     ecx, [ecx+eax+144H]                     ; 1001D565 _ 8D. 8C 01, 00000144
        mov     dword [ebp-10H], ecx                    ; 1001D56C _ 89. 4D, F0
        mov     ecx, dword [esi]                        ; 1001D56F _ 8B. 0E
        dec     ecx                                     ; 1001D571 _ 49
        test    cl, 01H                                 ; 1001D572 _ F6. C1, 01
        mov     dword [ebp-4H], ecx                     ; 1001D575 _ 89. 4D, FC
        jne     ?_3696                                  ; 1001D578 _ 0F 85, 000002E6
        mov     edx, dword [ecx+esi]                    ; 1001D57E _ 8B. 14 31
        lea     ebx, [ecx+esi]                          ; 1001D581 _ 8D. 1C 31
        mov     dword [ebp-0CH], edx                    ; 1001D584 _ 89. 55, F4
        mov     edx, dword [esi-4H]                     ; 1001D587 _ 8B. 56, FC
        mov     dword [ebp-8H], edx                     ; 1001D58A _ 89. 55, F8
        mov     edx, dword [ebp-0CH]                    ; 1001D58D _ 8B. 55, F4
        test    dl, 01H                                 ; 1001D590 _ F6. C2, 01
        mov     dword [ebp+0CH], ebx                    ; 1001D593 _ 89. 5D, 0C
        jnz     ?_3679                                  ; 1001D596 _ 75, 7E
        sar     edx, 4                                  ; 1001D598 _ C1. FA, 04
        dec     edx                                     ; 1001D59B _ 4A
        cmp     edx, 63                                 ; 1001D59C _ 83. FA, 3F
        jbe     ?_3674                                  ; 1001D59F _ 76, 03
        push    63                                      ; 1001D5A1 _ 6A, 3F
        pop     edx                                     ; 1001D5A3 _ 5A
?_3674: mov     ecx, dword [ebx+4H]                     ; 1001D5A4 _ 8B. 4B, 04
        cmp     ecx, dword [ebx+8H]                     ; 1001D5A7 _ 3B. 4B, 08
        jnz     ?_3677                                  ; 1001D5AA _ 75, 4C
        cmp     edx, 32                                 ; 1001D5AC _ 83. FA, 20
        jnc     ?_3675                                  ; 1001D5AF _ 73, 1E
        mov     ebx, 2147483648                         ; 1001D5B1 _ BB, 80000000
        mov     ecx, edx                                ; 1001D5B6 _ 8B. CA
        shr     ebx, cl                                 ; 1001D5B8 _ D3. EB
        lea     ecx, [edx+eax+4H]                       ; 1001D5BA _ 8D. 4C 02, 04
        not     ebx                                     ; 1001D5BE _ F7. D3
        and     dword [eax+edi*4+44H], ebx              ; 1001D5C0 _ 21. 5C B8, 44
        dec     byte [ecx]                              ; 1001D5C4 _ FE. 09
        jnz     ?_3676                                  ; 1001D5C6 _ 75, 28
        mov     ecx, dword [ebp+8H]                     ; 1001D5C8 _ 8B. 4D, 08
        and     dword [ecx], ebx                        ; 1001D5CB _ 21. 19
        jmp     ?_3676                                  ; 1001D5CD _ EB, 21

?_3675: lea     ecx, [edx-20H]                          ; 1001D5CF _ 8D. 4A, E0
        mov     ebx, 2147483648                         ; 1001D5D2 _ BB, 80000000
        shr     ebx, cl                                 ; 1001D5D7 _ D3. EB
        lea     ecx, [edx+eax+4H]                       ; 1001D5D9 _ 8D. 4C 02, 04
        not     ebx                                     ; 1001D5DD _ F7. D3
        and     dword [eax+edi*4+0C4H], ebx             ; 1001D5DF _ 21. 9C B8, 000000C4
        dec     byte [ecx]                              ; 1001D5E6 _ FE. 09
        jnz     ?_3676                                  ; 1001D5E8 _ 75, 06
        mov     ecx, dword [ebp+8H]                     ; 1001D5EA _ 8B. 4D, 08
        and     dword [ecx+4H], ebx                     ; 1001D5ED _ 21. 59, 04
?_3676: mov     ecx, dword [ebp-4H]                     ; 1001D5F0 _ 8B. 4D, FC
        mov     ebx, dword [ebp+0CH]                    ; 1001D5F3 _ 8B. 5D, 0C
        jmp     ?_3678                                  ; 1001D5F6 _ EB, 03

?_3677: mov     ecx, dword [ebp-4H]                     ; 1001D5F8 _ 8B. 4D, FC
?_3678: mov     edx, dword [ebx+8H]                     ; 1001D5FB _ 8B. 53, 08
        mov     ebx, dword [ebx+4H]                     ; 1001D5FE _ 8B. 5B, 04
        add     ecx, dword [ebp-0CH]                    ; 1001D601 _ 03. 4D, F4
        mov     dword [edx+4H], ebx                     ; 1001D604 _ 89. 5A, 04
        mov     edx, dword [ebp+0CH]                    ; 1001D607 _ 8B. 55, 0C
        mov     dword [ebp-4H], ecx                     ; 1001D60A _ 89. 4D, FC
        mov     ebx, dword [edx+4H]                     ; 1001D60D _ 8B. 5A, 04
        mov     edx, dword [edx+8H]                     ; 1001D610 _ 8B. 52, 08
        mov     dword [ebx+8H], edx                     ; 1001D613 _ 89. 53, 08
?_3679: mov     edx, ecx                                ; 1001D616 _ 8B. D1
        sar     edx, 4                                  ; 1001D618 _ C1. FA, 04
        dec     edx                                     ; 1001D61B _ 4A
        cmp     edx, 63                                 ; 1001D61C _ 83. FA, 3F
        jbe     ?_3680                                  ; 1001D61F _ 76, 03
        push    63                                      ; 1001D621 _ 6A, 3F
        pop     edx                                     ; 1001D623 _ 5A
?_3680: mov     ebx, dword [ebp-8H]                     ; 1001D624 _ 8B. 5D, F8
        and     ebx, 01H                                ; 1001D627 _ 83. E3, 01
        mov     dword [ebp-0CH], ebx                    ; 1001D62A _ 89. 5D, F4
        jne     ?_3686                                  ; 1001D62D _ 0F 85, 00000094
        sub     esi, dword [ebp-8H]                     ; 1001D633 _ 2B. 75, F8
        mov     ebx, dword [ebp-8H]                     ; 1001D636 _ 8B. 5D, F8
        sar     ebx, 4                                  ; 1001D639 _ C1. FB, 04
        push    63                                      ; 1001D63C _ 6A, 3F
        mov     dword [ebp+0CH], esi                    ; 1001D63E _ 89. 75, 0C
        dec     ebx                                     ; 1001D641 _ 4B
        pop     esi                                     ; 1001D642 _ 5E
        cmp     ebx, esi                                ; 1001D643 _ 3B. DE
        jbe     ?_3681                                  ; 1001D645 _ 76, 02
        mov     ebx, esi                                ; 1001D647 _ 8B. DE
?_3681: add     ecx, dword [ebp-8H]                     ; 1001D649 _ 03. 4D, F8
        mov     edx, ecx                                ; 1001D64C _ 8B. D1
        mov     dword [ebp-4H], ecx                     ; 1001D64E _ 89. 4D, FC
        sar     edx, 4                                  ; 1001D651 _ C1. FA, 04
        dec     edx                                     ; 1001D654 _ 4A
        cmp     edx, esi                                ; 1001D655 _ 3B. D6
        jbe     ?_3682                                  ; 1001D657 _ 76, 02
        mov     edx, esi                                ; 1001D659 _ 8B. D6
?_3682: cmp     ebx, edx                                ; 1001D65B _ 3B. DA
        jz      ?_3685                                  ; 1001D65D _ 74, 63
        mov     ecx, dword [ebp+0CH]                    ; 1001D65F _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 1001D662 _ 8B. 71, 04
        cmp     esi, dword [ecx+8H]                     ; 1001D665 _ 3B. 71, 08
        jnz     ?_3684                                  ; 1001D668 _ 75, 40
        cmp     ebx, 32                                 ; 1001D66A _ 83. FB, 20
        jnc     ?_3683                                  ; 1001D66D _ 73, 1C
        mov     esi, 2147483648                         ; 1001D66F _ BE, 80000000
        mov     ecx, ebx                                ; 1001D674 _ 8B. CB
        shr     esi, cl                                 ; 1001D676 _ D3. EE
        not     esi                                     ; 1001D678 _ F7. D6
        and     dword [eax+edi*4+44H], esi              ; 1001D67A _ 21. 74 B8, 44
        dec     byte [ebx+eax+4H]                       ; 1001D67E _ FE. 4C 03, 04
        jnz     ?_3684                                  ; 1001D682 _ 75, 26
        mov     ecx, dword [ebp+8H]                     ; 1001D684 _ 8B. 4D, 08
        and     dword [ecx], esi                        ; 1001D687 _ 21. 31
        jmp     ?_3684                                  ; 1001D689 _ EB, 1F

?_3683: lea     ecx, [ebx-20H]                          ; 1001D68B _ 8D. 4B, E0
        mov     esi, 2147483648                         ; 1001D68E _ BE, 80000000
        shr     esi, cl                                 ; 1001D693 _ D3. EE
        not     esi                                     ; 1001D695 _ F7. D6
        and     dword [eax+edi*4+0C4H], esi             ; 1001D697 _ 21. B4 B8, 000000C4
        dec     byte [ebx+eax+4H]                       ; 1001D69E _ FE. 4C 03, 04
        jnz     ?_3684                                  ; 1001D6A2 _ 75, 06
        mov     ecx, dword [ebp+8H]                     ; 1001D6A4 _ 8B. 4D, 08
        and     dword [ecx+4H], esi                     ; 1001D6A7 _ 21. 71, 04
?_3684: mov     ecx, dword [ebp+0CH]                    ; 1001D6AA _ 8B. 4D, 0C
        mov     esi, dword [ecx+8H]                     ; 1001D6AD _ 8B. 71, 08
        mov     ecx, dword [ecx+4H]                     ; 1001D6B0 _ 8B. 49, 04
        mov     dword [esi+4H], ecx                     ; 1001D6B3 _ 89. 4E, 04
        mov     ecx, dword [ebp+0CH]                    ; 1001D6B6 _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 1001D6B9 _ 8B. 71, 04
        mov     ecx, dword [ecx+8H]                     ; 1001D6BC _ 8B. 49, 08
        mov     dword [esi+8H], ecx                     ; 1001D6BF _ 89. 4E, 08
?_3685: mov     esi, dword [ebp+0CH]                    ; 1001D6C2 _ 8B. 75, 0C
        jmp     ?_3687                                  ; 1001D6C5 _ EB, 03

?_3686: mov     ebx, dword [ebp+8H]                     ; 1001D6C7 _ 8B. 5D, 08
?_3687: cmp     dword [ebp-0CH], 0                      ; 1001D6CA _ 83. 7D, F4, 00
        jnz     ?_3688                                  ; 1001D6CE _ 75, 08
        cmp     ebx, edx                                ; 1001D6D0 _ 3B. DA
        je      ?_3692                                  ; 1001D6D2 _ 0F 84, 00000081
?_3688: mov     ecx, dword [ebp-10H]                    ; 1001D6D8 _ 8B. 4D, F0
        mov     ebx, dword [ecx+edx*8+4H]               ; 1001D6DB _ 8B. 5C D1, 04
        lea     ecx, [ecx+edx*8]                        ; 1001D6DF _ 8D. 0C D1
        mov     dword [esi+4H], ebx                     ; 1001D6E2 _ 89. 5E, 04
        mov     dword [esi+8H], ecx                     ; 1001D6E5 _ 89. 4E, 08
        mov     dword [ecx+4H], esi                     ; 1001D6E8 _ 89. 71, 04
        mov     ecx, dword [esi+4H]                     ; 1001D6EB _ 8B. 4E, 04
        mov     dword [ecx+8H], esi                     ; 1001D6EE _ 89. 71, 08
        mov     ecx, dword [esi+4H]                     ; 1001D6F1 _ 8B. 4E, 04
        cmp     ecx, dword [esi+8H]                     ; 1001D6F4 _ 3B. 4E, 08
        jnz     ?_3692                                  ; 1001D6F7 _ 75, 60
        mov     cl, byte [edx+eax+4H]                   ; 1001D6F9 _ 8A. 4C 02, 04
        cmp     edx, 32                                 ; 1001D6FD _ 83. FA, 20
        mov     byte [ebp+0FH], cl                      ; 1001D700 _ 88. 4D, 0F
        inc     cl                                      ; 1001D703 _ FE. C1
        mov     byte [edx+eax+4H], cl                   ; 1001D705 _ 88. 4C 02, 04
        jnc     ?_3690                                  ; 1001D709 _ 73, 25
        cmp     byte [ebp+0FH], 0                       ; 1001D70B _ 80. 7D, 0F, 00
        jnz     ?_3689                                  ; 1001D70F _ 75, 0E
        mov     ebx, 2147483648                         ; 1001D711 _ BB, 80000000
        mov     ecx, edx                                ; 1001D716 _ 8B. CA
        shr     ebx, cl                                 ; 1001D718 _ D3. EB
        mov     ecx, dword [ebp+8H]                     ; 1001D71A _ 8B. 4D, 08
        or      dword [ecx], ebx                        ; 1001D71D _ 09. 19
?_3689: mov     ebx, 2147483648                         ; 1001D71F _ BB, 80000000
        mov     ecx, edx                                ; 1001D724 _ 8B. CA
        shr     ebx, cl                                 ; 1001D726 _ D3. EB
        lea     eax, [eax+edi*4+44H]                    ; 1001D728 _ 8D. 44 B8, 44
        or      dword [eax], ebx                        ; 1001D72C _ 09. 18
        jmp     ?_3692                                  ; 1001D72E _ EB, 29

?_3690: cmp     byte [ebp+0FH], 0                       ; 1001D730 _ 80. 7D, 0F, 00
        jnz     ?_3691                                  ; 1001D734 _ 75, 10
        lea     ecx, [edx-20H]                          ; 1001D736 _ 8D. 4A, E0
        mov     ebx, 2147483648                         ; 1001D739 _ BB, 80000000
        shr     ebx, cl                                 ; 1001D73E _ D3. EB
        mov     ecx, dword [ebp+8H]                     ; 1001D740 _ 8B. 4D, 08
        or      dword [ecx+4H], ebx                     ; 1001D743 _ 09. 59, 04
?_3691: lea     ecx, [edx-20H]                          ; 1001D746 _ 8D. 4A, E0
        mov     edx, 2147483648                         ; 1001D749 _ BA, 80000000
        shr     edx, cl                                 ; 1001D74E _ D3. EA
        lea     eax, [eax+edi*4+0C4H]                   ; 1001D750 _ 8D. 84 B8, 000000C4
        or      dword [eax], edx                        ; 1001D757 _ 09. 10
?_3692: mov     eax, dword [ebp-4H]                     ; 1001D759 _ 8B. 45, FC
        mov     dword [esi], eax                        ; 1001D75C _ 89. 06
        mov     dword [eax+esi-4H], eax                 ; 1001D75E _ 89. 44 30, FC
        mov     eax, dword [ebp-10H]                    ; 1001D762 _ 8B. 45, F0
        dec     dword [eax]                             ; 1001D765 _ FF. 08
        jne     ?_3696                                  ; 1001D767 _ 0F 85, 000000F7
        mov     eax, dword [?_5803]                     ; 1001D76D _ A1, 1176643C(d)
        test    eax, eax                                ; 1001D772 _ 85. C0
        je      ?_3695                                  ; 1001D774 _ 0F 84, 000000DC
        mov     ecx, dword [?_5801]                     ; 1001D77A _ 8B. 0D, 11766434(d)
        mov     esi, dword [imp_VirtualFree]            ; 1001D780 _ 8B. 35, 1002400C(d)
        shl     ecx, 15                                 ; 1001D786 _ C1. E1, 0F
        add     ecx, dword [eax+0CH]                    ; 1001D789 _ 03. 48, 0C
        mov     ebx, 32768                              ; 1001D78C _ BB, 00008000
        push    16384                                   ; 1001D791 _ 68, 00004000
        push    ebx                                     ; 1001D796 _ 53
        push    ecx                                     ; 1001D797 _ 51
        call    esi                                     ; 1001D798 _ FF. D6
        mov     ecx, dword [?_5801]                     ; 1001D79A _ 8B. 0D, 11766434(d)
        mov     eax, dword [?_5803]                     ; 1001D7A0 _ A1, 1176643C(d)
        mov     edx, 2147483648                         ; 1001D7A5 _ BA, 80000000
        shr     edx, cl                                 ; 1001D7AA _ D3. EA
        or      dword [eax+8H], edx                     ; 1001D7AC _ 09. 50, 08
        mov     eax, dword [?_5803]                     ; 1001D7AF _ A1, 1176643C(d)
        mov     ecx, dword [?_5801]                     ; 1001D7B4 _ 8B. 0D, 11766434(d)
        mov     eax, dword [eax+10H]                    ; 1001D7BA _ 8B. 40, 10
        and     dword [eax+ecx*4+0C4H], 00H             ; 1001D7BD _ 83. A4 88, 000000C4, 00
        mov     eax, dword [?_5803]                     ; 1001D7C5 _ A1, 1176643C(d)
        mov     eax, dword [eax+10H]                    ; 1001D7CA _ 8B. 40, 10
        dec     byte [eax+43H]                          ; 1001D7CD _ FE. 48, 43
        mov     eax, dword [?_5803]                     ; 1001D7D0 _ A1, 1176643C(d)
        mov     ecx, dword [eax+10H]                    ; 1001D7D5 _ 8B. 48, 10
        cmp     byte [ecx+43H], 0                       ; 1001D7D8 _ 80. 79, 43, 00
        jnz     ?_3693                                  ; 1001D7DC _ 75, 09
        and     dword [eax+4H], 0FFFFFFFEH              ; 1001D7DE _ 83. 60, 04, FE
        mov     eax, dword [?_5803]                     ; 1001D7E2 _ A1, 1176643C(d)
?_3693: cmp     dword [eax+8H], -1                      ; 1001D7E7 _ 83. 78, 08, FF
        jnz     ?_3695                                  ; 1001D7EB _ 75, 69
        push    ebx                                     ; 1001D7ED _ 53
        push    0                                       ; 1001D7EE _ 6A, 00
        push    dword [eax+0CH]                         ; 1001D7F0 _ FF. 70, 0C
        call    esi                                     ; 1001D7F3 _ FF. D6
        mov     eax, dword [?_5803]                     ; 1001D7F5 _ A1, 1176643C(d)
        push    dword [eax+10H]                         ; 1001D7FA _ FF. 70, 10
        push    0                                       ; 1001D7FD _ 6A, 00
        push    dword [?_5807]                          ; 1001D7FF _ FF. 35, 1176644C(d)
        call    near [imp_HeapFree]                     ; 1001D805 _ FF. 15, 10024074(d)
        mov     eax, dword [?_5804]                     ; 1001D80B _ A1, 11766440(d)
        mov     edx, dword [?_5805]                     ; 1001D810 _ 8B. 15, 11766444(d)
        lea     eax, [eax+eax*4]                        ; 1001D816 _ 8D. 04 80
        shl     eax, 2                                  ; 1001D819 _ C1. E0, 02
        mov     ecx, eax                                ; 1001D81C _ 8B. C8
        mov     eax, dword [?_5803]                     ; 1001D81E _ A1, 1176643C(d)
        sub     ecx, eax                                ; 1001D823 _ 2B. C8
        lea     ecx, [ecx+edx-14H]                      ; 1001D825 _ 8D. 4C 11, EC
        push    ecx                                     ; 1001D829 _ 51
        lea     ecx, [eax+14H]                          ; 1001D82A _ 8D. 48, 14
        push    ecx                                     ; 1001D82D _ 51
        push    eax                                     ; 1001D82E _ 50
        call    ?_3251                                  ; 1001D82F _ E8, FFFFD9CC
        mov     eax, dword [ebp+8H]                     ; 1001D834 _ 8B. 45, 08
        add     esp, 12                                 ; 1001D837 _ 83. C4, 0C
        dec     dword [?_5804]                          ; 1001D83A _ FF. 0D, 11766440(d)
        cmp     eax, dword [?_5803]                     ; 1001D840 _ 3B. 05, 1176643C(d)
        jbe     ?_3694                                  ; 1001D846 _ 76, 04
        sub     dword [ebp+8H], 20                      ; 1001D848 _ 83. 6D, 08, 14
?_3694: mov     eax, dword [?_5805]                     ; 1001D84C _ A1, 11766444(d)
        mov     dword [?_5802], eax                     ; 1001D851 _ A3, 11766438(d)
?_3695: mov     eax, dword [ebp+8H]                     ; 1001D856 _ 8B. 45, 08
        mov     dword [?_5801], edi                     ; 1001D859 _ 89. 3D, 11766434(d)
        mov     dword [?_5803], eax                     ; 1001D85F _ A3, 1176643C(d)
?_3696: pop     edi                                     ; 1001D864 _ 5F
        pop     esi                                     ; 1001D865 _ 5E
        pop     ebx                                     ; 1001D866 _ 5B
        leave                                           ; 1001D867 _ C9
        ret                                             ; 1001D868 _ C3

?_3697: push    ebp                                     ; 1001D869 _ 55
        mov     ebp, esp                                ; 1001D86A _ 8B. EC
        sub     esp, 20                                 ; 1001D86C _ 83. EC, 14
        mov     eax, dword [?_5804]                     ; 1001D86F _ A1, 11766440(d)
        mov     edx, dword [?_5805]                     ; 1001D874 _ 8B. 15, 11766444(d)
        push    ebx                                     ; 1001D87A _ 53
        push    esi                                     ; 1001D87B _ 56
        lea     eax, [eax+eax*4]                        ; 1001D87C _ 8D. 04 80
        push    edi                                     ; 1001D87F _ 57
        lea     edi, [edx+eax*4]                        ; 1001D880 _ 8D. 3C 82
        mov     eax, dword [ebp+8H]                     ; 1001D883 _ 8B. 45, 08
        mov     dword [ebp-4H], edi                     ; 1001D886 _ 89. 7D, FC
        lea     ecx, [eax+17H]                          ; 1001D889 _ 8D. 48, 17
        and     ecx, 0FFFFFFF0H                         ; 1001D88C _ 83. E1, F0
        mov     dword [ebp-10H], ecx                    ; 1001D88F _ 89. 4D, F0
        sar     ecx, 4                                  ; 1001D892 _ C1. F9, 04
        dec     ecx                                     ; 1001D895 _ 49
        cmp     ecx, 32                                 ; 1001D896 _ 83. F9, 20
        jge     ?_3698                                  ; 1001D899 _ 7D, 0E
        or      esi, 0FFFFFFFFH                         ; 1001D89B _ 83. CE, FF
        shr     esi, cl                                 ; 1001D89E _ D3. EE
        or      dword [ebp-8H], 0FFFFFFFFH              ; 1001D8A0 _ 83. 4D, F8, FF
        mov     dword [ebp-0CH], esi                    ; 1001D8A4 _ 89. 75, F4
        jmp     ?_3699                                  ; 1001D8A7 _ EB, 10

?_3698: add     ecx, -32                                ; 1001D8A9 _ 83. C1, E0
        or      eax, 0FFFFFFFFH                         ; 1001D8AC _ 83. C8, FF
        xor     esi, esi                                ; 1001D8AF _ 33. F6
        shr     eax, cl                                 ; 1001D8B1 _ D3. E8
        mov     dword [ebp-0CH], esi                    ; 1001D8B3 _ 89. 75, F4
        mov     dword [ebp-8H], eax                     ; 1001D8B6 _ 89. 45, F8
?_3699: mov     eax, dword [?_5802]                     ; 1001D8B9 _ A1, 11766438(d)
        mov     ebx, eax                                ; 1001D8BE _ 8B. D8
        cmp     ebx, edi                                ; 1001D8C0 _ 3B. DF
        mov     dword [ebp+8H], ebx                     ; 1001D8C2 _ 89. 5D, 08
        jnc     ?_3701                                  ; 1001D8C5 _ 73, 19
?_3700: mov     ecx, dword [ebx+4H]                     ; 1001D8C7 _ 8B. 4B, 04
        mov     edi, dword [ebx]                        ; 1001D8CA _ 8B. 3B
        and     ecx, dword [ebp-8H]                     ; 1001D8CC _ 23. 4D, F8
        and     edi, esi                                ; 1001D8CF _ 23. FE
        or      ecx, edi                                ; 1001D8D1 _ 0B. CF
        jnz     ?_3701                                  ; 1001D8D3 _ 75, 0B
        add     ebx, 20                                 ; 1001D8D5 _ 83. C3, 14
        cmp     ebx, dword [ebp-4H]                     ; 1001D8D8 _ 3B. 5D, FC
        mov     dword [ebp+8H], ebx                     ; 1001D8DB _ 89. 5D, 08
        jc      ?_3700                                  ; 1001D8DE _ 72, E7
?_3701: cmp     ebx, dword [ebp-4H]                     ; 1001D8E0 _ 3B. 5D, FC
        jnz     ?_3713                                  ; 1001D8E3 _ 75, 79
        mov     ebx, edx                                ; 1001D8E5 _ 8B. DA
?_3702: cmp     ebx, eax                                ; 1001D8E7 _ 3B. D8
        mov     dword [ebp+8H], ebx                     ; 1001D8E9 _ 89. 5D, 08
        jnc     ?_3704                                  ; 1001D8EC _ 73, 15
        mov     ecx, dword [ebx+4H]                     ; 1001D8EE _ 8B. 4B, 04
        mov     edi, dword [ebx]                        ; 1001D8F1 _ 8B. 3B
        and     ecx, dword [ebp-8H]                     ; 1001D8F3 _ 23. 4D, F8
        and     edi, esi                                ; 1001D8F6 _ 23. FE
        or      ecx, edi                                ; 1001D8F8 _ 0B. CF
        jnz     ?_3703                                  ; 1001D8FA _ 75, 05
        add     ebx, 20                                 ; 1001D8FC _ 83. C3, 14
        jmp     ?_3702                                  ; 1001D8FF _ EB, E6

?_3703: cmp     ebx, eax                                ; 1001D901 _ 3B. D8
?_3704: jnz     ?_3713                                  ; 1001D903 _ 75, 59
?_3705: cmp     ebx, dword [ebp-4H]                     ; 1001D905 _ 3B. 5D, FC
        jnc     ?_3707                                  ; 1001D908 _ 73, 11
        cmp     dword [ebx+8H], 0                       ; 1001D90A _ 83. 7B, 08, 00
        jnz     ?_3706                                  ; 1001D90E _ 75, 08
        add     ebx, 20                                 ; 1001D910 _ 83. C3, 14
        mov     dword [ebp+8H], ebx                     ; 1001D913 _ 89. 5D, 08
        jmp     ?_3705                                  ; 1001D916 _ EB, ED

?_3706: cmp     ebx, dword [ebp-4H]                     ; 1001D918 _ 3B. 5D, FC
?_3707: jnz     ?_3711                                  ; 1001D91B _ 75, 26
        mov     ebx, edx                                ; 1001D91D _ 8B. DA
?_3708: cmp     ebx, eax                                ; 1001D91F _ 3B. D8
        mov     dword [ebp+8H], ebx                     ; 1001D921 _ 89. 5D, 08
        jnc     ?_3710                                  ; 1001D924 _ 73, 0D
        cmp     dword [ebx+8H], 0                       ; 1001D926 _ 83. 7B, 08, 00
        jnz     ?_3709                                  ; 1001D92A _ 75, 05
        add     ebx, 20                                 ; 1001D92C _ 83. C3, 14
        jmp     ?_3708                                  ; 1001D92F _ EB, EE

?_3709: cmp     ebx, eax                                ; 1001D931 _ 3B. D8
?_3710: jnz     ?_3711                                  ; 1001D933 _ 75, 0E
        call    ?_3733                                  ; 1001D935 _ E8, 00000238
        mov     ebx, eax                                ; 1001D93A _ 8B. D8
        test    ebx, ebx                                ; 1001D93C _ 85. DB
        mov     dword [ebp+8H], ebx                     ; 1001D93E _ 89. 5D, 08
        jz      ?_3712                                  ; 1001D941 _ 74, 14
?_3711: push    ebx                                     ; 1001D943 _ 53
        call    ?_3738                                  ; 1001D944 _ E8, 000002DA
        pop     ecx                                     ; 1001D949 _ 59
        mov     ecx, dword [ebx+10H]                    ; 1001D94A _ 8B. 4B, 10
        mov     dword [ecx], eax                        ; 1001D94D _ 89. 01
        mov     eax, dword [ebx+10H]                    ; 1001D94F _ 8B. 43, 10
        cmp     dword [eax], -1                         ; 1001D952 _ 83. 38, FF
        jnz     ?_3713                                  ; 1001D955 _ 75, 07
?_3712: xor     eax, eax                                ; 1001D957 _ 33. C0
        jmp     ?_3732                                  ; 1001D959 _ E9, 0000020F

?_3713: mov     dword [?_5802], ebx                     ; 1001D95E _ 89. 1D, 11766438(d)
        mov     eax, dword [ebx+10H]                    ; 1001D964 _ 8B. 43, 10
        mov     edx, dword [eax]                        ; 1001D967 _ 8B. 10
        cmp     edx, -1                                 ; 1001D969 _ 83. FA, FF
        mov     dword [ebp-4H], edx                     ; 1001D96C _ 89. 55, FC
        jz      ?_3714                                  ; 1001D96F _ 74, 14
        mov     ecx, dword [eax+edx*4+0C4H]             ; 1001D971 _ 8B. 8C 90, 000000C4
        mov     edi, dword [eax+edx*4+44H]              ; 1001D978 _ 8B. 7C 90, 44
        and     ecx, dword [ebp-8H]                     ; 1001D97C _ 23. 4D, F8
        and     edi, esi                                ; 1001D97F _ 23. FE
        or      ecx, edi                                ; 1001D981 _ 0B. CF
        jnz     ?_3717                                  ; 1001D983 _ 75, 37
?_3714: mov     edx, dword [eax+0C4H]                   ; 1001D985 _ 8B. 90, 000000C4
        mov     esi, dword [eax+44H]                    ; 1001D98B _ 8B. 70, 44
        and     edx, dword [ebp-8H]                     ; 1001D98E _ 23. 55, F8
        and     esi, dword [ebp-0CH]                    ; 1001D991 _ 23. 75, F4
        and     dword [ebp-4H], 00H                     ; 1001D994 _ 83. 65, FC, 00
        lea     ecx, [eax+44H]                          ; 1001D998 _ 8D. 48, 44
        or      edx, esi                                ; 1001D99B _ 0B. D6
        mov     esi, dword [ebp-0CH]                    ; 1001D99D _ 8B. 75, F4
        jnz     ?_3716                                  ; 1001D9A0 _ 75, 17
?_3715: mov     edx, dword [ecx+84H]                    ; 1001D9A2 _ 8B. 91, 00000084
        inc     dword [ebp-4H]                          ; 1001D9A8 _ FF. 45, FC
        and     edx, dword [ebp-8H]                     ; 1001D9AB _ 23. 55, F8
        add     ecx, 4                                  ; 1001D9AE _ 83. C1, 04
        mov     edi, esi                                ; 1001D9B1 _ 8B. FE
        and     edi, dword [ecx]                        ; 1001D9B3 _ 23. 39
        or      edx, edi                                ; 1001D9B5 _ 0B. D7
        jz      ?_3715                                  ; 1001D9B7 _ 74, E9
?_3716: mov     edx, dword [ebp-4H]                     ; 1001D9B9 _ 8B. 55, FC
?_3717: mov     ecx, edx                                ; 1001D9BC _ 8B. CA
        xor     edi, edi                                ; 1001D9BE _ 33. FF
        imul    ecx, ecx, 516                           ; 1001D9C0 _ 69. C9, 00000204
        lea     ecx, [ecx+eax+144H]                     ; 1001D9C6 _ 8D. 8C 01, 00000144
        mov     dword [ebp-0CH], ecx                    ; 1001D9CD _ 89. 4D, F4
        mov     ecx, dword [eax+edx*4+44H]              ; 1001D9D0 _ 8B. 4C 90, 44
        and     ecx, esi                                ; 1001D9D4 _ 23. CE
        jnz     ?_3718                                  ; 1001D9D6 _ 75, 0D
        mov     ecx, dword [eax+edx*4+0C4H]             ; 1001D9D8 _ 8B. 8C 90, 000000C4
        push    32                                      ; 1001D9DF _ 6A, 20
        and     ecx, dword [ebp-8H]                     ; 1001D9E1 _ 23. 4D, F8
        pop     edi                                     ; 1001D9E4 _ 5F
?_3718: test    ecx, ecx                                ; 1001D9E5 _ 85. C9
        jl      ?_3719                                  ; 1001D9E7 _ 7C, 05
        shl     ecx, 1                                  ; 1001D9E9 _ D1. E1
        inc     edi                                     ; 1001D9EB _ 47
        jmp     ?_3718                                  ; 1001D9EC _ EB, F7

?_3719: mov     ecx, dword [ebp-0CH]                    ; 1001D9EE _ 8B. 4D, F4
        mov     edx, dword [ecx+edi*8+4H]               ; 1001D9F1 _ 8B. 54 F9, 04
        mov     ecx, dword [edx]                        ; 1001D9F5 _ 8B. 0A
        sub     ecx, dword [ebp-10H]                    ; 1001D9F7 _ 2B. 4D, F0
        mov     esi, ecx                                ; 1001D9FA _ 8B. F1
        mov     dword [ebp-8H], ecx                     ; 1001D9FC _ 89. 4D, F8
        sar     esi, 4                                  ; 1001D9FF _ C1. FE, 04
        dec     esi                                     ; 1001DA02 _ 4E
        cmp     esi, 63                                 ; 1001DA03 _ 83. FE, 3F
        jle     ?_3720                                  ; 1001DA06 _ 7E, 03
        push    63                                      ; 1001DA08 _ 6A, 3F
        pop     esi                                     ; 1001DA0A _ 5E
?_3720: cmp     esi, edi                                ; 1001DA0B _ 3B. F7
        je      ?_3728                                  ; 1001DA0D _ 0F 84, 0000010D
        mov     ecx, dword [edx+4H]                     ; 1001DA13 _ 8B. 4A, 04
        cmp     ecx, dword [edx+8H]                     ; 1001DA16 _ 3B. 4A, 08
        jnz     ?_3723                                  ; 1001DA19 _ 75, 61
        cmp     edi, 32                                 ; 1001DA1B _ 83. FF, 20
        jge     ?_3721                                  ; 1001DA1E _ 7D, 2B
        mov     ebx, 2147483648                         ; 1001DA20 _ BB, 80000000
        mov     ecx, edi                                ; 1001DA25 _ 8B. CF
        shr     ebx, cl                                 ; 1001DA27 _ D3. EB
        mov     ecx, dword [ebp-4H]                     ; 1001DA29 _ 8B. 4D, FC
        lea     edi, [eax+edi+4H]                       ; 1001DA2C _ 8D. 7C 38, 04
        not     ebx                                     ; 1001DA30 _ F7. D3
        mov     dword [ebp-14H], ebx                    ; 1001DA32 _ 89. 5D, EC
        and     ebx, dword [eax+ecx*4+44H]              ; 1001DA35 _ 23. 5C 88, 44
        mov     dword [eax+ecx*4+44H], ebx              ; 1001DA39 _ 89. 5C 88, 44
        dec     byte [edi]                              ; 1001DA3D _ FE. 0F
        jnz     ?_3722                                  ; 1001DA3F _ 75, 38
        mov     ebx, dword [ebp+8H]                     ; 1001DA41 _ 8B. 5D, 08
        mov     ecx, dword [ebp-14H]                    ; 1001DA44 _ 8B. 4D, EC
        and     dword [ebx], ecx                        ; 1001DA47 _ 21. 0B
        jmp     ?_3723                                  ; 1001DA49 _ EB, 31

?_3721: lea     ecx, [edi-20H]                          ; 1001DA4B _ 8D. 4F, E0
        mov     ebx, 2147483648                         ; 1001DA4E _ BB, 80000000
        shr     ebx, cl                                 ; 1001DA53 _ D3. EB
        mov     ecx, dword [ebp-4H]                     ; 1001DA55 _ 8B. 4D, FC
        lea     edi, [eax+edi+4H]                       ; 1001DA58 _ 8D. 7C 38, 04
        lea     ecx, [eax+ecx*4+0C4H]                   ; 1001DA5C _ 8D. 8C 88, 000000C4
        not     ebx                                     ; 1001DA63 _ F7. D3
        and     dword [ecx], ebx                        ; 1001DA65 _ 21. 19
        dec     byte [edi]                              ; 1001DA67 _ FE. 0F
        mov     dword [ebp-14H], ebx                    ; 1001DA69 _ 89. 5D, EC
        jnz     ?_3722                                  ; 1001DA6C _ 75, 0B
        mov     ebx, dword [ebp+8H]                     ; 1001DA6E _ 8B. 5D, 08
        mov     ecx, dword [ebp-14H]                    ; 1001DA71 _ 8B. 4D, EC
        and     dword [ebx+4H], ecx                     ; 1001DA74 _ 21. 4B, 04
        jmp     ?_3723                                  ; 1001DA77 _ EB, 03

?_3722: mov     ebx, dword [ebp+8H]                     ; 1001DA79 _ 8B. 5D, 08
?_3723: mov     ecx, dword [edx+8H]                     ; 1001DA7C _ 8B. 4A, 08
        mov     edi, dword [edx+4H]                     ; 1001DA7F _ 8B. 7A, 04
        cmp     dword [ebp-8H], 0                       ; 1001DA82 _ 83. 7D, F8, 00
        mov     dword [ecx+4H], edi                     ; 1001DA86 _ 89. 79, 04
        mov     ecx, dword [edx+4H]                     ; 1001DA89 _ 8B. 4A, 04
        mov     edi, dword [edx+8H]                     ; 1001DA8C _ 8B. 7A, 08
        mov     dword [ecx+8H], edi                     ; 1001DA8F _ 89. 79, 08
        je      ?_3729                                  ; 1001DA92 _ 0F 84, 00000094
        mov     ecx, dword [ebp-0CH]                    ; 1001DA98 _ 8B. 4D, F4
        mov     edi, dword [ecx+esi*8+4H]               ; 1001DA9B _ 8B. 7C F1, 04
        lea     ecx, [ecx+esi*8]                        ; 1001DA9F _ 8D. 0C F1
        mov     dword [edx+4H], edi                     ; 1001DAA2 _ 89. 7A, 04
        mov     dword [edx+8H], ecx                     ; 1001DAA5 _ 89. 4A, 08
        mov     dword [ecx+4H], edx                     ; 1001DAA8 _ 89. 51, 04
        mov     ecx, dword [edx+4H]                     ; 1001DAAB _ 8B. 4A, 04
        mov     dword [ecx+8H], edx                     ; 1001DAAE _ 89. 51, 08
        mov     ecx, dword [edx+4H]                     ; 1001DAB1 _ 8B. 4A, 04
        cmp     ecx, dword [edx+8H]                     ; 1001DAB4 _ 3B. 4A, 08
        jnz     ?_3727                                  ; 1001DAB7 _ 75, 64
        mov     cl, byte [esi+eax+4H]                   ; 1001DAB9 _ 8A. 4C 06, 04
        cmp     esi, 32                                 ; 1001DABD _ 83. FE, 20
        mov     byte [ebp+0BH], cl                      ; 1001DAC0 _ 88. 4D, 0B
        jge     ?_3725                                  ; 1001DAC3 _ 7D, 29
        inc     cl                                      ; 1001DAC5 _ FE. C1
        cmp     byte [ebp+0BH], 0                       ; 1001DAC7 _ 80. 7D, 0B, 00
        mov     byte [esi+eax+4H], cl                   ; 1001DACB _ 88. 4C 06, 04
        jnz     ?_3724                                  ; 1001DACF _ 75, 0B
        mov     edi, 2147483648                         ; 1001DAD1 _ BF, 80000000
        mov     ecx, esi                                ; 1001DAD6 _ 8B. CE
        shr     edi, cl                                 ; 1001DAD8 _ D3. EF
        or      dword [ebx], edi                        ; 1001DADA _ 09. 3B
?_3724: mov     edi, 2147483648                         ; 1001DADC _ BF, 80000000
        mov     ecx, esi                                ; 1001DAE1 _ 8B. CE
        shr     edi, cl                                 ; 1001DAE3 _ D3. EF
        mov     ecx, dword [ebp-4H]                     ; 1001DAE5 _ 8B. 4D, FC
        or      dword [eax+ecx*4+44H], edi              ; 1001DAE8 _ 09. 7C 88, 44
        jmp     ?_3727                                  ; 1001DAEC _ EB, 2F

?_3725: inc     cl                                      ; 1001DAEE _ FE. C1
        cmp     byte [ebp+0BH], 0                       ; 1001DAF0 _ 80. 7D, 0B, 00
        mov     byte [esi+eax+4H], cl                   ; 1001DAF4 _ 88. 4C 06, 04
        jnz     ?_3726                                  ; 1001DAF8 _ 75, 0D
        lea     ecx, [esi-20H]                          ; 1001DAFA _ 8D. 4E, E0
        mov     edi, 2147483648                         ; 1001DAFD _ BF, 80000000
        shr     edi, cl                                 ; 1001DB02 _ D3. EF
        or      dword [ebx+4H], edi                     ; 1001DB04 _ 09. 7B, 04
?_3726: mov     ecx, dword [ebp-4H]                     ; 1001DB07 _ 8B. 4D, FC
        lea     edi, [eax+ecx*4+0C4H]                   ; 1001DB0A _ 8D. BC 88, 000000C4
        lea     ecx, [esi-20H]                          ; 1001DB11 _ 8D. 4E, E0
        mov     esi, 2147483648                         ; 1001DB14 _ BE, 80000000
        shr     esi, cl                                 ; 1001DB19 _ D3. EE
        or      dword [edi], esi                        ; 1001DB1B _ 09. 37
?_3727: mov     ecx, dword [ebp-8H]                     ; 1001DB1D _ 8B. 4D, F8
?_3728: test    ecx, ecx                                ; 1001DB20 _ 85. C9
        jz      ?_3730                                  ; 1001DB22 _ 74, 0B
        mov     dword [edx], ecx                        ; 1001DB24 _ 89. 0A
        mov     dword [ecx+edx-4H], ecx                 ; 1001DB26 _ 89. 4C 11, FC
        jmp     ?_3730                                  ; 1001DB2A _ EB, 03

?_3729: mov     ecx, dword [ebp-8H]                     ; 1001DB2C _ 8B. 4D, F8
?_3730: mov     esi, dword [ebp-10H]                    ; 1001DB2F _ 8B. 75, F0
        add     edx, ecx                                ; 1001DB32 _ 03. D1
        lea     ecx, [esi+1H]                           ; 1001DB34 _ 8D. 4E, 01
        mov     dword [edx], ecx                        ; 1001DB37 _ 89. 0A
        mov     dword [edx+esi-4H], ecx                 ; 1001DB39 _ 89. 4C 32, FC
        mov     esi, dword [ebp-0CH]                    ; 1001DB3D _ 8B. 75, F4
        mov     ecx, dword [esi]                        ; 1001DB40 _ 8B. 0E
        test    ecx, ecx                                ; 1001DB42 _ 85. C9
        lea     edi, [ecx+1H]                           ; 1001DB44 _ 8D. 79, 01
        mov     dword [esi], edi                        ; 1001DB47 _ 89. 3E
        jnz     ?_3731                                  ; 1001DB49 _ 75, 1A
        cmp     ebx, dword [?_5803]                     ; 1001DB4B _ 3B. 1D, 1176643C(d)
        jnz     ?_3731                                  ; 1001DB51 _ 75, 12
        mov     ecx, dword [ebp-4H]                     ; 1001DB53 _ 8B. 4D, FC
        cmp     ecx, dword [?_5801]                     ; 1001DB56 _ 3B. 0D, 11766434(d)
        jnz     ?_3731                                  ; 1001DB5C _ 75, 07
        and     dword [?_5803], 00H                     ; 1001DB5E _ 83. 25, 1176643C(d), 00
?_3731: mov     ecx, dword [ebp-4H]                     ; 1001DB65 _ 8B. 4D, FC
        mov     dword [eax], ecx                        ; 1001DB68 _ 89. 08
        lea     eax, [edx+4H]                           ; 1001DB6A _ 8D. 42, 04
?_3732: pop     edi                                     ; 1001DB6D _ 5F
        pop     esi                                     ; 1001DB6E _ 5E
        pop     ebx                                     ; 1001DB6F _ 5B
        leave                                           ; 1001DB70 _ C9
        ret                                             ; 1001DB71 _ C3

?_3733: mov     eax, dword [?_5804]                     ; 1001DB72 _ A1, 11766440(d)
        mov     ecx, dword [?_5800]                     ; 1001DB77 _ 8B. 0D, 11766430(d)
        push    esi                                     ; 1001DB7D _ 56
        push    edi                                     ; 1001DB7E _ 57
        xor     edi, edi                                ; 1001DB7F _ 33. FF
        cmp     eax, ecx                                ; 1001DB81 _ 3B. C1
        jnz     ?_3734                                  ; 1001DB83 _ 75, 30
        lea     eax, [ecx+ecx*4+50H]                    ; 1001DB85 _ 8D. 44 89, 50
        shl     eax, 2                                  ; 1001DB89 _ C1. E0, 02
        push    eax                                     ; 1001DB8C _ 50
        push    dword [?_5805]                          ; 1001DB8D _ FF. 35, 11766444(d)
        push    edi                                     ; 1001DB93 _ 57
        push    dword [?_5807]                          ; 1001DB94 _ FF. 35, 1176644C(d)
        call    near [imp_HeapReAlloc]                  ; 1001DB9A _ FF. 15, 100240E0(d)
        cmp     eax, edi                                ; 1001DBA0 _ 3B. C7
        jz      ?_3735                                  ; 1001DBA2 _ 74, 61
        add     dword [?_5800], 16                      ; 1001DBA4 _ 83. 05, 11766430(d), 10
        mov     dword [?_5805], eax                     ; 1001DBAB _ A3, 11766444(d)
        mov     eax, dword [?_5804]                     ; 1001DBB0 _ A1, 11766440(d)
?_3734: mov     ecx, dword [?_5805]                     ; 1001DBB5 _ 8B. 0D, 11766444(d)
        push    16836                                   ; 1001DBBB _ 68, 000041C4
        push    8                                       ; 1001DBC0 _ 6A, 08
        lea     eax, [eax+eax*4]                        ; 1001DBC2 _ 8D. 04 80
        push    dword [?_5807]                          ; 1001DBC5 _ FF. 35, 1176644C(d)
        lea     esi, [ecx+eax*4]                        ; 1001DBCB _ 8D. 34 81
        call    near [imp_HeapAlloc]                    ; 1001DBCE _ FF. 15, 100240CC(d)
        cmp     eax, edi                                ; 1001DBD4 _ 3B. C7
        mov     dword [esi+10H], eax                    ; 1001DBD6 _ 89. 46, 10
        jz      ?_3735                                  ; 1001DBD9 _ 74, 2A
        push    4                                       ; 1001DBDB _ 6A, 04
        push    8192                                    ; 1001DBDD _ 68, 00002000
        push    1048576                                 ; 1001DBE2 _ 68, 00100000
        push    edi                                     ; 1001DBE7 _ 57
        call    near [imp_VirtualAlloc]                 ; 1001DBE8 _ FF. 15, 10024030(d)
        cmp     eax, edi                                ; 1001DBEE _ 3B. C7
        mov     dword [esi+0CH], eax                    ; 1001DBF0 _ 89. 46, 0C
        jnz     ?_3736                                  ; 1001DBF3 _ 75, 14
        push    dword [esi+10H]                         ; 1001DBF5 _ FF. 76, 10
        push    edi                                     ; 1001DBF8 _ 57
        push    dword [?_5807]                          ; 1001DBF9 _ FF. 35, 1176644C(d)
        call    near [imp_HeapFree]                     ; 1001DBFF _ FF. 15, 10024074(d)
?_3735: xor     eax, eax                                ; 1001DC05 _ 33. C0
        jmp     ?_3737                                  ; 1001DC07 _ EB, 17

?_3736: or      dword [esi+8H], 0FFFFFFFFH              ; 1001DC09 _ 83. 4E, 08, FF
        mov     dword [esi], edi                        ; 1001DC0D _ 89. 3E
        mov     dword [esi+4H], edi                     ; 1001DC0F _ 89. 7E, 04
        inc     dword [?_5804]                          ; 1001DC12 _ FF. 05, 11766440(d)
        mov     eax, dword [esi+10H]                    ; 1001DC18 _ 8B. 46, 10
        or      dword [eax], 0FFFFFFFFH                 ; 1001DC1B _ 83. 08, FF
        mov     eax, esi                                ; 1001DC1E _ 8B. C6
?_3737: pop     edi                                     ; 1001DC20 _ 5F
        pop     esi                                     ; 1001DC21 _ 5E
        ret                                             ; 1001DC22 _ C3

?_3738: push    ebp                                     ; 1001DC23 _ 55
        mov     ebp, esp                                ; 1001DC24 _ 8B. EC
        push    ecx                                     ; 1001DC26 _ 51
        mov     ecx, dword [ebp+8H]                     ; 1001DC27 _ 8B. 4D, 08
        push    ebx                                     ; 1001DC2A _ 53
        push    esi                                     ; 1001DC2B _ 56
        push    edi                                     ; 1001DC2C _ 57
        mov     esi, dword [ecx+10H]                    ; 1001DC2D _ 8B. 71, 10
        mov     eax, dword [ecx+8H]                     ; 1001DC30 _ 8B. 41, 08
        xor     ebx, ebx                                ; 1001DC33 _ 33. DB
?_3739: test    eax, eax                                ; 1001DC35 _ 85. C0
        jl      ?_3740                                  ; 1001DC37 _ 7C, 05
        shl     eax, 1                                  ; 1001DC39 _ D1. E0
        inc     ebx                                     ; 1001DC3B _ 43
        jmp     ?_3739                                  ; 1001DC3C _ EB, F7

?_3740: mov     eax, ebx                                ; 1001DC3E _ 8B. C3
        push    63                                      ; 1001DC40 _ 6A, 3F
        imul    eax, eax, 516                           ; 1001DC42 _ 69. C0, 00000204
        pop     edx                                     ; 1001DC48 _ 5A
        lea     eax, [eax+esi+144H]                     ; 1001DC49 _ 8D. 84 30, 00000144
        mov     dword [ebp-4H], eax                     ; 1001DC50 _ 89. 45, FC
?_3741: mov     dword [eax+8H], eax                     ; 1001DC53 _ 89. 40, 08
        mov     dword [eax+4H], eax                     ; 1001DC56 _ 89. 40, 04
        add     eax, 8                                  ; 1001DC59 _ 83. C0, 08
        dec     edx                                     ; 1001DC5C _ 4A
        jnz     ?_3741                                  ; 1001DC5D _ 75, F4
        mov     edi, ebx                                ; 1001DC5F _ 8B. FB
        push    4                                       ; 1001DC61 _ 6A, 04
        shl     edi, 15                                 ; 1001DC63 _ C1. E7, 0F
        add     edi, dword [ecx+0CH]                    ; 1001DC66 _ 03. 79, 0C
        push    4096                                    ; 1001DC69 _ 68, 00001000
        push    32768                                   ; 1001DC6E _ 68, 00008000
        push    edi                                     ; 1001DC73 _ 57
        call    near [imp_VirtualAlloc]                 ; 1001DC74 _ FF. 15, 10024030(d)
        test    eax, eax                                ; 1001DC7A _ 85. C0
        jnz     ?_3742                                  ; 1001DC7C _ 75, 08
        or      eax, 0FFFFFFFFH                         ; 1001DC7E _ 83. C8, FF
        jmp     ?_3746                                  ; 1001DC81 _ E9, 00000093

?_3742: lea     edx, [edi+7000H]                        ; 1001DC86 _ 8D. 97, 00007000
        cmp     edi, edx                                ; 1001DC8C _ 3B. FA
        ja      ?_3744                                  ; 1001DC8E _ 77, 3C
        lea     eax, [edi+10H]                          ; 1001DC90 _ 8D. 47, 10
?_3743: or      dword [eax-8H], 0FFFFFFFFH              ; 1001DC93 _ 83. 48, F8, FF
        or      dword [eax+0FECH], 0FFFFFFFFH           ; 1001DC97 _ 83. 88, 00000FEC, FF
        lea     ecx, [eax+0FFCH]                        ; 1001DC9E _ 8D. 88, 00000FFC
        mov     dword [eax-4H], 4080                    ; 1001DCA4 _ C7. 40, FC, 00000FF0
        mov     dword [eax], ecx                        ; 1001DCAB _ 89. 08
        lea     ecx, [eax-1004H]                        ; 1001DCAD _ 8D. 88, FFFFEFFC
        mov     dword [eax+4H], ecx                     ; 1001DCB3 _ 89. 48, 04
        mov     dword [eax+0FE8H], 4080                 ; 1001DCB6 _ C7. 80, 00000FE8, 00000FF0
        add     eax, 4096                               ; 1001DCC0 _ 05, 00001000
        lea     ecx, [eax-10H]                          ; 1001DCC5 _ 8D. 48, F0
        cmp     ecx, edx                                ; 1001DCC8 _ 3B. CA
        jbe     ?_3743                                  ; 1001DCCA _ 76, C7
?_3744: mov     eax, dword [ebp-4H]                     ; 1001DCCC _ 8B. 45, FC
        lea     ecx, [edi+0CH]                          ; 1001DCCF _ 8D. 4F, 0C
        add     eax, 504                                ; 1001DCD2 _ 05, 000001F8
        push    1                                       ; 1001DCD7 _ 6A, 01
        pop     edi                                     ; 1001DCD9 _ 5F
        mov     dword [eax+4H], ecx                     ; 1001DCDA _ 89. 48, 04
        mov     dword [ecx+8H], eax                     ; 1001DCDD _ 89. 41, 08
        lea     ecx, [edx+0CH]                          ; 1001DCE0 _ 8D. 4A, 0C
        mov     dword [eax+8H], ecx                     ; 1001DCE3 _ 89. 48, 08
        mov     dword [ecx+4H], eax                     ; 1001DCE6 _ 89. 41, 04
        and     dword [esi+ebx*4+44H], 00H              ; 1001DCE9 _ 83. 64 9E, 44, 00
        mov     dword [esi+ebx*4+0C4H], edi             ; 1001DCEE _ 89. BC 9E, 000000C4
        mov     al, byte [esi+43H]                      ; 1001DCF5 _ 8A. 46, 43
        mov     cl, al                                  ; 1001DCF8 _ 8A. C8
        inc     cl                                      ; 1001DCFA _ FE. C1
        test    al, al                                  ; 1001DCFC _ 84. C0
        mov     eax, dword [ebp+8H]                     ; 1001DCFE _ 8B. 45, 08
        mov     byte [esi+43H], cl                      ; 1001DD01 _ 88. 4E, 43
        jnz     ?_3745                                  ; 1001DD04 _ 75, 03
        or      dword [eax+4H], edi                     ; 1001DD06 _ 09. 78, 04
?_3745: mov     edx, 2147483648                         ; 1001DD09 _ BA, 80000000
        mov     ecx, ebx                                ; 1001DD0E _ 8B. CB
        shr     edx, cl                                 ; 1001DD10 _ D3. EA
        not     edx                                     ; 1001DD12 _ F7. D2
        and     dword [eax+8H], edx                     ; 1001DD14 _ 21. 50, 08
        mov     eax, ebx                                ; 1001DD17 _ 8B. C3
?_3746: pop     edi                                     ; 1001DD19 _ 5F
        pop     esi                                     ; 1001DD1A _ 5E
        pop     ebx                                     ; 1001DD1B _ 5B
        leave                                           ; 1001DD1C _ C9
        ret                                             ; 1001DD1D _ C3

?_3747: push    ebp                                     ; 1001DD1E _ 55
        mov     ebp, esp                                ; 1001DD1F _ 8B. EC
        sub     esp, 12                                 ; 1001DD21 _ 83. EC, 0C
        mov     ecx, dword [ebp+8H]                     ; 1001DD24 _ 8B. 4D, 08
        mov     eax, dword [ebp+10H]                    ; 1001DD27 _ 8B. 45, 10
        push    ebx                                     ; 1001DD2A _ 53
        push    esi                                     ; 1001DD2B _ 56
        push    edi                                     ; 1001DD2C _ 57
        mov     edi, dword [ebp+0CH]                    ; 1001DD2D _ 8B. 7D, 0C
        mov     edx, edi                                ; 1001DD30 _ 8B. D7
        lea     esi, [eax+17H]                          ; 1001DD32 _ 8D. 70, 17
        sub     edx, dword [ecx+0CH]                    ; 1001DD35 _ 2B. 51, 0C
        mov     eax, dword [ecx+10H]                    ; 1001DD38 _ 8B. 41, 10
        and     esi, 0FFFFFFF0H                         ; 1001DD3B _ 83. E6, F0
        shr     edx, 15                                 ; 1001DD3E _ C1. EA, 0F
        mov     ecx, edx                                ; 1001DD41 _ 8B. CA
        imul    ecx, ecx, 516                           ; 1001DD43 _ 69. C9, 00000204
        lea     ecx, [ecx+eax+144H]                     ; 1001DD49 _ 8D. 8C 01, 00000144
        mov     dword [ebp-0CH], ecx                    ; 1001DD50 _ 89. 4D, F4
        mov     ecx, dword [edi-4H]                     ; 1001DD53 _ 8B. 4F, FC
        dec     ecx                                     ; 1001DD56 _ 49
        cmp     esi, ecx                                ; 1001DD57 _ 3B. F1
        mov     dword [ebp+10H], ecx                    ; 1001DD59 _ 89. 4D, 10
        mov     ebx, dword [ecx+edi-4H]                 ; 1001DD5C _ 8B. 5C 39, FC
        lea     edi, [ecx+edi-4H]                       ; 1001DD60 _ 8D. 7C 39, FC
        mov     dword [ebp-4H], ebx                     ; 1001DD64 _ 89. 5D, FC
        jle     ?_3760                                  ; 1001DD67 _ 0F 8E, 0000015F
        test    bl, 01H                                 ; 1001DD6D _ F6. C3, 01
        jne     ?_3759                                  ; 1001DD70 _ 0F 85, 0000014F
        add     ebx, ecx                                ; 1001DD76 _ 03. D9
        cmp     esi, ebx                                ; 1001DD78 _ 3B. F3
        jg      ?_3759                                  ; 1001DD7A _ 0F 8F, 00000145
        mov     ecx, dword [ebp-4H]                     ; 1001DD80 _ 8B. 4D, FC
        sar     ecx, 4                                  ; 1001DD83 _ C1. F9, 04
        dec     ecx                                     ; 1001DD86 _ 49
        cmp     ecx, 63                                 ; 1001DD87 _ 83. F9, 3F
        mov     dword [ebp-8H], ecx                     ; 1001DD8A _ 89. 4D, F8
        jbe     ?_3748                                  ; 1001DD8D _ 76, 06
        push    63                                      ; 1001DD8F _ 6A, 3F
        pop     ecx                                     ; 1001DD91 _ 59
        mov     dword [ebp-8H], ecx                     ; 1001DD92 _ 89. 4D, F8
?_3748: mov     ebx, dword [edi+4H]                     ; 1001DD95 _ 8B. 5F, 04
        cmp     ebx, dword [edi+8H]                     ; 1001DD98 _ 3B. 5F, 08
        jnz     ?_3750                                  ; 1001DD9B _ 75, 48
        cmp     ecx, 32                                 ; 1001DD9D _ 83. F9, 20
        jnc     ?_3749                                  ; 1001DDA0 _ 73, 1F
        mov     ebx, 2147483648                         ; 1001DDA2 _ BB, 80000000
        shr     ebx, cl                                 ; 1001DDA7 _ D3. EB
        mov     ecx, dword [ebp-8H]                     ; 1001DDA9 _ 8B. 4D, F8
        lea     ecx, [ecx+eax+4H]                       ; 1001DDAC _ 8D. 4C 01, 04
        not     ebx                                     ; 1001DDB0 _ F7. D3
        and     dword [eax+edx*4+44H], ebx              ; 1001DDB2 _ 21. 5C 90, 44
        dec     byte [ecx]                              ; 1001DDB6 _ FE. 09
        jnz     ?_3750                                  ; 1001DDB8 _ 75, 2B
        mov     ecx, dword [ebp+8H]                     ; 1001DDBA _ 8B. 4D, 08
        and     dword [ecx], ebx                        ; 1001DDBD _ 21. 19
        jmp     ?_3750                                  ; 1001DDBF _ EB, 24

?_3749: add     ecx, -32                                ; 1001DDC1 _ 83. C1, E0
        mov     ebx, 2147483648                         ; 1001DDC4 _ BB, 80000000
        shr     ebx, cl                                 ; 1001DDC9 _ D3. EB
        mov     ecx, dword [ebp-8H]                     ; 1001DDCB _ 8B. 4D, F8
        lea     ecx, [ecx+eax+4H]                       ; 1001DDCE _ 8D. 4C 01, 04
        not     ebx                                     ; 1001DDD2 _ F7. D3
        and     dword [eax+edx*4+0C4H], ebx             ; 1001DDD4 _ 21. 9C 90, 000000C4
        dec     byte [ecx]                              ; 1001DDDB _ FE. 09
        jnz     ?_3750                                  ; 1001DDDD _ 75, 06
        mov     ecx, dword [ebp+8H]                     ; 1001DDDF _ 8B. 4D, 08
        and     dword [ecx+4H], ebx                     ; 1001DDE2 _ 21. 59, 04
?_3750: mov     ecx, dword [edi+8H]                     ; 1001DDE5 _ 8B. 4F, 08
        mov     ebx, dword [edi+4H]                     ; 1001DDE8 _ 8B. 5F, 04
        mov     dword [ecx+4H], ebx                     ; 1001DDEB _ 89. 59, 04
        mov     ecx, dword [edi+4H]                     ; 1001DDEE _ 8B. 4F, 04
        mov     edi, dword [edi+8H]                     ; 1001DDF1 _ 8B. 7F, 08
        mov     dword [ecx+8H], edi                     ; 1001DDF4 _ 89. 79, 08
        mov     ecx, dword [ebp+10H]                    ; 1001DDF7 _ 8B. 4D, 10
        sub     ecx, esi                                ; 1001DDFA _ 2B. CE
        add     dword [ebp-4H], ecx                     ; 1001DDFC _ 01. 4D, FC
        cmp     dword [ebp-4H], 0                       ; 1001DDFF _ 83. 7D, FC, 00
        jle     ?_3757                                  ; 1001DE03 _ 0F 8E, 000000AA
        mov     edi, dword [ebp-4H]                     ; 1001DE09 _ 8B. 7D, FC
        mov     ecx, dword [ebp+0CH]                    ; 1001DE0C _ 8B. 4D, 0C
        sar     edi, 4                                  ; 1001DE0F _ C1. FF, 04
        dec     edi                                     ; 1001DE12 _ 4F
        lea     ecx, [ecx+esi-4H]                       ; 1001DE13 _ 8D. 4C 31, FC
        cmp     edi, 63                                 ; 1001DE17 _ 83. FF, 3F
        jbe     ?_3751                                  ; 1001DE1A _ 76, 03
        push    63                                      ; 1001DE1C _ 6A, 3F
        pop     edi                                     ; 1001DE1E _ 5F
?_3751: mov     ebx, dword [ebp-0CH]                    ; 1001DE1F _ 8B. 5D, F4
        lea     ebx, [ebx+edi*8]                        ; 1001DE22 _ 8D. 1C FB
        mov     dword [ebp+10H], ebx                    ; 1001DE25 _ 89. 5D, 10
        mov     ebx, dword [ebx+4H]                     ; 1001DE28 _ 8B. 5B, 04
        mov     dword [ecx+4H], ebx                     ; 1001DE2B _ 89. 59, 04
        mov     ebx, dword [ebp+10H]                    ; 1001DE2E _ 8B. 5D, 10
        mov     dword [ecx+8H], ebx                     ; 1001DE31 _ 89. 59, 08
        mov     dword [ebx+4H], ecx                     ; 1001DE34 _ 89. 4B, 04
        mov     ebx, dword [ecx+4H]                     ; 1001DE37 _ 8B. 59, 04
        mov     dword [ebx+8H], ecx                     ; 1001DE3A _ 89. 4B, 08
        mov     ebx, dword [ecx+4H]                     ; 1001DE3D _ 8B. 59, 04
        cmp     ebx, dword [ecx+8H]                     ; 1001DE40 _ 3B. 59, 08
        jnz     ?_3756                                  ; 1001DE43 _ 75, 5C
        mov     cl, byte [edi+eax+4H]                   ; 1001DE45 _ 8A. 4C 07, 04
        cmp     edi, 32                                 ; 1001DE49 _ 83. FF, 20
        mov     byte [ebp+13H], cl                      ; 1001DE4C _ 88. 4D, 13
        inc     cl                                      ; 1001DE4F _ FE. C1
        mov     byte [edi+eax+4H], cl                   ; 1001DE51 _ 88. 4C 07, 04
        jnc     ?_3753                                  ; 1001DE55 _ 73, 21
        cmp     byte [ebp+13H], 0                       ; 1001DE57 _ 80. 7D, 13, 00
        jnz     ?_3752                                  ; 1001DE5B _ 75, 0E
        mov     ebx, 2147483648                         ; 1001DE5D _ BB, 80000000
        mov     ecx, edi                                ; 1001DE62 _ 8B. CF
        shr     ebx, cl                                 ; 1001DE64 _ D3. EB
        mov     ecx, dword [ebp+8H]                     ; 1001DE66 _ 8B. 4D, 08
        or      dword [ecx], ebx                        ; 1001DE69 _ 09. 19
?_3752: lea     eax, [eax+edx*4+44H]                    ; 1001DE6B _ 8D. 44 90, 44
        mov     edx, 2147483648                         ; 1001DE6F _ BA, 80000000
        mov     ecx, edi                                ; 1001DE74 _ 8B. CF
        jmp     ?_3755                                  ; 1001DE76 _ EB, 25

?_3753: cmp     byte [ebp+13H], 0                       ; 1001DE78 _ 80. 7D, 13, 00
        jnz     ?_3754                                  ; 1001DE7C _ 75, 10
        lea     ecx, [edi-20H]                          ; 1001DE7E _ 8D. 4F, E0
        mov     ebx, 2147483648                         ; 1001DE81 _ BB, 80000000
        shr     ebx, cl                                 ; 1001DE86 _ D3. EB
        mov     ecx, dword [ebp+8H]                     ; 1001DE88 _ 8B. 4D, 08
        or      dword [ecx+4H], ebx                     ; 1001DE8B _ 09. 59, 04
?_3754: lea     eax, [eax+edx*4+0C4H]                   ; 1001DE8E _ 8D. 84 90, 000000C4
        lea     ecx, [edi-20H]                          ; 1001DE95 _ 8D. 4F, E0
        mov     edx, 2147483648                         ; 1001DE98 _ BA, 80000000
?_3755: shr     edx, cl                                 ; 1001DE9D _ D3. EA
        or      dword [eax], edx                        ; 1001DE9F _ 09. 10
?_3756: mov     edx, dword [ebp+0CH]                    ; 1001DEA1 _ 8B. 55, 0C
        mov     ecx, dword [ebp-4H]                     ; 1001DEA4 _ 8B. 4D, FC
        lea     eax, [edx+esi-4H]                       ; 1001DEA7 _ 8D. 44 32, FC
        mov     dword [eax], ecx                        ; 1001DEAB _ 89. 08
        mov     dword [ecx+eax-4H], ecx                 ; 1001DEAD _ 89. 4C 01, FC
        jmp     ?_3758                                  ; 1001DEB1 _ EB, 03

?_3757: mov     edx, dword [ebp+0CH]                    ; 1001DEB3 _ 8B. 55, 0C
?_3758: lea     eax, [esi+1H]                           ; 1001DEB6 _ 8D. 46, 01
        mov     dword [edx-4H], eax                     ; 1001DEB9 _ 89. 42, FC
        mov     dword [edx+esi-8H], eax                 ; 1001DEBC _ 89. 44 32, F8
        jmp     ?_3772                                  ; 1001DEC0 _ E9, 00000147

?_3759: xor     eax, eax                                ; 1001DEC5 _ 33. C0
        jmp     ?_3773                                  ; 1001DEC7 _ E9, 00000143

?_3760: jge     ?_3772                                  ; 1001DECC _ 0F 8D, 0000013A
        mov     ebx, dword [ebp+0CH]                    ; 1001DED2 _ 8B. 5D, 0C
        sub     dword [ebp+10H], esi                    ; 1001DED5 _ 29. 75, 10
        lea     ecx, [esi+1H]                           ; 1001DED8 _ 8D. 4E, 01
        mov     dword [ebx-4H], ecx                     ; 1001DEDB _ 89. 4B, FC
        lea     ebx, [ebx+esi-4H]                       ; 1001DEDE _ 8D. 5C 33, FC
        mov     esi, dword [ebp+10H]                    ; 1001DEE2 _ 8B. 75, 10
        mov     dword [ebp+0CH], ebx                    ; 1001DEE5 _ 89. 5D, 0C
        sar     esi, 4                                  ; 1001DEE8 _ C1. FE, 04
        dec     esi                                     ; 1001DEEB _ 4E
        mov     dword [ebx-4H], ecx                     ; 1001DEEC _ 89. 4B, FC
        cmp     esi, 63                                 ; 1001DEEF _ 83. FE, 3F
        jbe     ?_3761                                  ; 1001DEF2 _ 76, 03
        push    63                                      ; 1001DEF4 _ 6A, 3F
        pop     esi                                     ; 1001DEF6 _ 5E
?_3761: test    byte [ebp-4H], 01H                      ; 1001DEF7 _ F6. 45, FC, 01
        jne     ?_3766                                  ; 1001DEFB _ 0F 85, 00000085
        mov     esi, dword [ebp-4H]                     ; 1001DF01 _ 8B. 75, FC
        sar     esi, 4                                  ; 1001DF04 _ C1. FE, 04
        dec     esi                                     ; 1001DF07 _ 4E
        cmp     esi, 63                                 ; 1001DF08 _ 83. FE, 3F
        jbe     ?_3762                                  ; 1001DF0B _ 76, 03
        push    63                                      ; 1001DF0D _ 6A, 3F
        pop     esi                                     ; 1001DF0F _ 5E
?_3762: mov     ecx, dword [edi+4H]                     ; 1001DF10 _ 8B. 4F, 04
        cmp     ecx, dword [edi+8H]                     ; 1001DF13 _ 3B. 4F, 08
        jnz     ?_3765                                  ; 1001DF16 _ 75, 47
        cmp     esi, 32                                 ; 1001DF18 _ 83. FE, 20
        jnc     ?_3763                                  ; 1001DF1B _ 73, 1E
        mov     ebx, 2147483648                         ; 1001DF1D _ BB, 80000000
        mov     ecx, esi                                ; 1001DF22 _ 8B. CE
        shr     ebx, cl                                 ; 1001DF24 _ D3. EB
        lea     esi, [esi+eax+4H]                       ; 1001DF26 _ 8D. 74 06, 04
        not     ebx                                     ; 1001DF2A _ F7. D3
        and     dword [eax+edx*4+44H], ebx              ; 1001DF2C _ 21. 5C 90, 44
        dec     byte [esi]                              ; 1001DF30 _ FE. 0E
        jnz     ?_3764                                  ; 1001DF32 _ 75, 28
        mov     ecx, dword [ebp+8H]                     ; 1001DF34 _ 8B. 4D, 08
        and     dword [ecx], ebx                        ; 1001DF37 _ 21. 19
        jmp     ?_3764                                  ; 1001DF39 _ EB, 21

?_3763: lea     ecx, [esi-20H]                          ; 1001DF3B _ 8D. 4E, E0
        mov     ebx, 2147483648                         ; 1001DF3E _ BB, 80000000
        shr     ebx, cl                                 ; 1001DF43 _ D3. EB
        lea     ecx, [esi+eax+4H]                       ; 1001DF45 _ 8D. 4C 06, 04
        not     ebx                                     ; 1001DF49 _ F7. D3
        and     dword [eax+edx*4+0C4H], ebx             ; 1001DF4B _ 21. 9C 90, 000000C4
        dec     byte [ecx]                              ; 1001DF52 _ FE. 09
        jnz     ?_3764                                  ; 1001DF54 _ 75, 06
        mov     ecx, dword [ebp+8H]                     ; 1001DF56 _ 8B. 4D, 08
        and     dword [ecx+4H], ebx                     ; 1001DF59 _ 21. 59, 04
?_3764: mov     ebx, dword [ebp+0CH]                    ; 1001DF5C _ 8B. 5D, 0C
?_3765: mov     ecx, dword [edi+8H]                     ; 1001DF5F _ 8B. 4F, 08
        mov     esi, dword [edi+4H]                     ; 1001DF62 _ 8B. 77, 04
        mov     dword [ecx+4H], esi                     ; 1001DF65 _ 89. 71, 04
        mov     ecx, dword [edi+4H]                     ; 1001DF68 _ 8B. 4F, 04
        mov     esi, dword [edi+8H]                     ; 1001DF6B _ 8B. 77, 08
        mov     dword [ecx+8H], esi                     ; 1001DF6E _ 89. 71, 08
        mov     esi, dword [ebp+10H]                    ; 1001DF71 _ 8B. 75, 10
        add     esi, dword [ebp-4H]                     ; 1001DF74 _ 03. 75, FC
        mov     dword [ebp+10H], esi                    ; 1001DF77 _ 89. 75, 10
        sar     esi, 4                                  ; 1001DF7A _ C1. FE, 04
        dec     esi                                     ; 1001DF7D _ 4E
        cmp     esi, 63                                 ; 1001DF7E _ 83. FE, 3F
        jbe     ?_3766                                  ; 1001DF81 _ 76, 03
        push    63                                      ; 1001DF83 _ 6A, 3F
        pop     esi                                     ; 1001DF85 _ 5E
?_3766: mov     ecx, dword [ebp-0CH]                    ; 1001DF86 _ 8B. 4D, F4
        mov     edi, dword [ecx+esi*8+4H]               ; 1001DF89 _ 8B. 7C F1, 04
        lea     ecx, [ecx+esi*8]                        ; 1001DF8D _ 8D. 0C F1
        mov     dword [ebx+4H], edi                     ; 1001DF90 _ 89. 7B, 04
        mov     dword [ebx+8H], ecx                     ; 1001DF93 _ 89. 4B, 08
        mov     dword [ecx+4H], ebx                     ; 1001DF96 _ 89. 59, 04
        mov     ecx, dword [ebx+4H]                     ; 1001DF99 _ 8B. 4B, 04
        mov     dword [ecx+8H], ebx                     ; 1001DF9C _ 89. 59, 08
        mov     ecx, dword [ebx+4H]                     ; 1001DF9F _ 8B. 4B, 04
        cmp     ecx, dword [ebx+8H]                     ; 1001DFA2 _ 3B. 4B, 08
        jnz     ?_3771                                  ; 1001DFA5 _ 75, 5C
        mov     cl, byte [esi+eax+4H]                   ; 1001DFA7 _ 8A. 4C 06, 04
        cmp     esi, 32                                 ; 1001DFAB _ 83. FE, 20
        mov     byte [ebp+0FH], cl                      ; 1001DFAE _ 88. 4D, 0F
        inc     cl                                      ; 1001DFB1 _ FE. C1
        mov     byte [esi+eax+4H], cl                   ; 1001DFB3 _ 88. 4C 06, 04
        jnc     ?_3768                                  ; 1001DFB7 _ 73, 21
        cmp     byte [ebp+0FH], 0                       ; 1001DFB9 _ 80. 7D, 0F, 00
        jnz     ?_3767                                  ; 1001DFBD _ 75, 0E
        mov     edi, 2147483648                         ; 1001DFBF _ BF, 80000000
        mov     ecx, esi                                ; 1001DFC4 _ 8B. CE
        shr     edi, cl                                 ; 1001DFC6 _ D3. EF
        mov     ecx, dword [ebp+8H]                     ; 1001DFC8 _ 8B. 4D, 08
        or      dword [ecx], edi                        ; 1001DFCB _ 09. 39
?_3767: lea     eax, [eax+edx*4+44H]                    ; 1001DFCD _ 8D. 44 90, 44
        mov     edx, 2147483648                         ; 1001DFD1 _ BA, 80000000
        mov     ecx, esi                                ; 1001DFD6 _ 8B. CE
        jmp     ?_3770                                  ; 1001DFD8 _ EB, 25

?_3768: cmp     byte [ebp+0FH], 0                       ; 1001DFDA _ 80. 7D, 0F, 00
        jnz     ?_3769                                  ; 1001DFDE _ 75, 10
        lea     ecx, [esi-20H]                          ; 1001DFE0 _ 8D. 4E, E0
        mov     edi, 2147483648                         ; 1001DFE3 _ BF, 80000000
        shr     edi, cl                                 ; 1001DFE8 _ D3. EF
        mov     ecx, dword [ebp+8H]                     ; 1001DFEA _ 8B. 4D, 08
        or      dword [ecx+4H], edi                     ; 1001DFED _ 09. 79, 04
?_3769: lea     eax, [eax+edx*4+0C4H]                   ; 1001DFF0 _ 8D. 84 90, 000000C4
        lea     ecx, [esi-20H]                          ; 1001DFF7 _ 8D. 4E, E0
        mov     edx, 2147483648                         ; 1001DFFA _ BA, 80000000
?_3770: shr     edx, cl                                 ; 1001DFFF _ D3. EA
        or      dword [eax], edx                        ; 1001E001 _ 09. 10
?_3771: mov     eax, dword [ebp+10H]                    ; 1001E003 _ 8B. 45, 10
        mov     dword [ebx], eax                        ; 1001E006 _ 89. 03
        mov     dword [eax+ebx-4H], eax                 ; 1001E008 _ 89. 44 18, FC
?_3772: push    1                                       ; 1001E00C _ 6A, 01
        pop     eax                                     ; 1001E00E _ 58
?_3773: pop     edi                                     ; 1001E00F _ 5F
        pop     esi                                     ; 1001E010 _ 5E
        pop     ebx                                     ; 1001E011 _ 5B
        leave                                           ; 1001E012 _ C9
        ret                                             ; 1001E013 _ C3

?_3774: cmp     dword [?_5464], -1                      ; 1001E014 _ 83. 3D, 10031B88(d), FF
        push    ebx                                     ; 1001E01B _ 53
        push    ebp                                     ; 1001E01C _ 55
        push    esi                                     ; 1001E01D _ 56
        push    edi                                     ; 1001E01E _ 57
        jnz     ?_3775                                  ; 1001E01F _ 75, 07
        mov     esi, ?_5462                             ; 1001E021 _ BE, 10031B78(d)
        jmp     ?_3776                                  ; 1001E026 _ EB, 1D

?_3775: push    8224                                    ; 1001E028 _ 68, 00002020
        push    0                                       ; 1001E02D _ 6A, 00
        push    dword [?_5807]                          ; 1001E02F _ FF. 35, 1176644C(d)
        call    near [imp_HeapAlloc]                    ; 1001E035 _ FF. 15, 100240CC(d)
        mov     esi, eax                                ; 1001E03B _ 8B. F0
        test    esi, esi                                ; 1001E03D _ 85. F6
        je      ?_3785                                  ; 1001E03F _ 0F 84, 0000010C
?_3776: mov     ebp, dword [imp_VirtualAlloc]           ; 1001E045 _ 8B. 2D, 10024030(d)
        push    4                                       ; 1001E04B _ 6A, 04
        push    8192                                    ; 1001E04D _ 68, 00002000
        push    4194304                                 ; 1001E052 _ 68, 00400000
        push    0                                       ; 1001E057 _ 6A, 00
        call    ebp                                     ; 1001E059 _ FF. D5
        mov     edi, eax                                ; 1001E05B _ 8B. F8
        test    edi, edi                                ; 1001E05D _ 85. FF
        je      ?_3784                                  ; 1001E05F _ 0F 84, 000000D5
        push    4                                       ; 1001E065 _ 6A, 04
        mov     ebx, 65536                              ; 1001E067 _ BB, 00010000
        push    4096                                    ; 1001E06C _ 68, 00001000
        push    ebx                                     ; 1001E071 _ 53
        push    edi                                     ; 1001E072 _ 57
        call    ebp                                     ; 1001E073 _ FF. D5
        test    eax, eax                                ; 1001E075 _ 85. C0
        je      ?_3783                                  ; 1001E077 _ 0F 84, 000000AF
        mov     eax, ?_5462                             ; 1001E07D _ B8, 10031B78(d)
        cmp     esi, eax                                ; 1001E082 _ 3B. F0
        jnz     ?_3778                                  ; 1001E084 _ 75, 1E
        cmp     dword [?_5462], 0                       ; 1001E086 _ 83. 3D, 10031B78(d), 00
        jnz     ?_3777                                  ; 1001E08D _ 75, 05
        mov     dword [?_5462], eax                     ; 1001E08F _ A3, 10031B78(d)
?_3777: cmp     dword [?_5463], 0                       ; 1001E094 _ 83. 3D, 10031B7C(d), 00
        jnz     ?_3779                                  ; 1001E09B _ 75, 1C
        mov     dword [?_5463], eax                     ; 1001E09D _ A3, 10031B7C(d)
        jmp     ?_3779                                  ; 1001E0A2 _ EB, 15

?_3778: mov     dword [esi], eax                        ; 1001E0A4 _ 89. 06
        mov     eax, dword [?_5463]                     ; 1001E0A6 _ A1, 10031B7C(d)
        mov     dword [esi+4H], eax                     ; 1001E0AB _ 89. 46, 04
        mov     dword [?_5463], esi                     ; 1001E0AE _ 89. 35, 10031B7C(d)
        mov     eax, dword [esi+4H]                     ; 1001E0B4 _ 8B. 46, 04
        mov     dword [eax], esi                        ; 1001E0B7 _ 89. 30
?_3779: lea     eax, [edi+400000H]                      ; 1001E0B9 _ 8D. 87, 00400000
        lea     ecx, [esi+98H]                          ; 1001E0BF _ 8D. 8E, 00000098
        mov     dword [esi+14H], eax                    ; 1001E0C5 _ 89. 46, 14
        lea     eax, [esi+18H]                          ; 1001E0C8 _ 8D. 46, 18
        mov     dword [esi+0CH], ecx                    ; 1001E0CB _ 89. 4E, 0C
        mov     dword [esi+10H], edi                    ; 1001E0CE _ 89. 7E, 10
        mov     dword [esi+8H], eax                     ; 1001E0D1 _ 89. 46, 08
        xor     ebp, ebp                                ; 1001E0D4 _ 33. ED
        mov     ecx, 241                                ; 1001E0D6 _ B9, 000000F1
?_3780: xor     edx, edx                                ; 1001E0DB _ 33. D2
        cmp     ebp, 16                                 ; 1001E0DD _ 83. FD, 10
        setge   dl                                      ; 1001E0E0 _ 0F 9D. C2
        dec     edx                                     ; 1001E0E3 _ 4A
        and     edx, ecx                                ; 1001E0E4 _ 23. D1
        dec     edx                                     ; 1001E0E6 _ 4A
        inc     ebp                                     ; 1001E0E7 _ 45
        mov     dword [eax], edx                        ; 1001E0E8 _ 89. 10
        mov     dword [eax+4H], ecx                     ; 1001E0EA _ 89. 48, 04
        add     eax, 8                                  ; 1001E0ED _ 83. C0, 08
        cmp     ebp, 1024                               ; 1001E0F0 _ 81. FD, 00000400
        jl      ?_3780                                  ; 1001E0F6 _ 7C, E3
        push    ebx                                     ; 1001E0F8 _ 53
        push    0                                       ; 1001E0F9 _ 6A, 00
        push    edi                                     ; 1001E0FB _ 57
        call    ?_4392                                  ; 1001E0FC _ E8, 0000313F
        add     esp, 12                                 ; 1001E101 _ 83. C4, 0C
?_3781: mov     eax, dword [esi+10H]                    ; 1001E104 _ 8B. 46, 10
        add     eax, ebx                                ; 1001E107 _ 03. C3
        cmp     edi, eax                                ; 1001E109 _ 3B. F8
        jnc     ?_3782                                  ; 1001E10B _ 73, 1B
        or      byte [edi+0F8H], 0FFFFFFFFH             ; 1001E10D _ 80. 8F, 000000F8, FF
        lea     eax, [edi+8H]                           ; 1001E114 _ 8D. 47, 08
        mov     dword [edi], eax                        ; 1001E117 _ 89. 07
        mov     dword [edi+4H], 240                     ; 1001E119 _ C7. 47, 04, 000000F0
        add     edi, 4096                               ; 1001E120 _ 81. C7, 00001000
        jmp     ?_3781                                  ; 1001E126 _ EB, DC

?_3782: mov     eax, esi                                ; 1001E128 _ 8B. C6
        jmp     ?_3786                                  ; 1001E12A _ EB, 27

?_3783: push    32768                                   ; 1001E12C _ 68, 00008000
        push    0                                       ; 1001E131 _ 6A, 00
        push    edi                                     ; 1001E133 _ 57
        call    near [imp_VirtualFree]                  ; 1001E134 _ FF. 15, 1002400C(d)
?_3784: cmp     esi, ?_5462                             ; 1001E13A _ 81. FE, 10031B78(d)
        jz      ?_3785                                  ; 1001E140 _ 74, 0F
        push    esi                                     ; 1001E142 _ 56
        push    0                                       ; 1001E143 _ 6A, 00
        push    dword [?_5807]                          ; 1001E145 _ FF. 35, 1176644C(d)
        call    near [imp_HeapFree]                     ; 1001E14B _ FF. 15, 10024074(d)
?_3785: xor     eax, eax                                ; 1001E151 _ 33. C0
?_3786: pop     edi                                     ; 1001E153 _ 5F
        pop     esi                                     ; 1001E154 _ 5E
        pop     ebp                                     ; 1001E155 _ 5D
        pop     ebx                                     ; 1001E156 _ 5B
        ret                                             ; 1001E157 _ C3

?_3787: push    esi                                     ; 1001E158 _ 56
        mov     esi, dword [esp+8H]                     ; 1001E159 _ 8B. 74 24, 08
        push    32768                                   ; 1001E15D _ 68, 00008000
        push    0                                       ; 1001E162 _ 6A, 00
        push    dword [esi+10H]                         ; 1001E164 _ FF. 76, 10
        call    near [imp_VirtualFree]                  ; 1001E167 _ FF. 15, 1002400C(d)
        cmp     dword [?_5466], esi                     ; 1001E16D _ 39. 35, 10033B98(d)
        jnz     ?_3788                                  ; 1001E173 _ 75, 08
        mov     eax, dword [esi+4H]                     ; 1001E175 _ 8B. 46, 04
        mov     dword [?_5466], eax                     ; 1001E178 _ A3, 10033B98(d)
?_3788: cmp     esi, ?_5462                             ; 1001E17D _ 81. FE, 10031B78(d)
        jz      ?_3789                                  ; 1001E183 _ 74, 20
        mov     eax, dword [esi+4H]                     ; 1001E185 _ 8B. 46, 04
        mov     ecx, dword [esi]                        ; 1001E188 _ 8B. 0E
        push    esi                                     ; 1001E18A _ 56
        push    0                                       ; 1001E18B _ 6A, 00
        mov     dword [eax], ecx                        ; 1001E18D _ 89. 08
        mov     eax, dword [esi]                        ; 1001E18F _ 8B. 06
        mov     ecx, dword [esi+4H]                     ; 1001E191 _ 8B. 4E, 04
        mov     dword [eax+4H], ecx                     ; 1001E194 _ 89. 48, 04
        push    dword [?_5807]                          ; 1001E197 _ FF. 35, 1176644C(d)
        call    near [imp_HeapFree]                     ; 1001E19D _ FF. 15, 10024074(d)
        pop     esi                                     ; 1001E1A3 _ 5E
        ret                                             ; 1001E1A4 _ C3

?_3789: or      dword [?_5464], 0FFFFFFFFH              ; 1001E1A5 _ 83. 0D, 10031B88(d), FF
        pop     esi                                     ; 1001E1AC _ 5E
        ret                                             ; 1001E1AD _ C3

?_3790: push    ebp                                     ; 1001E1AE _ 55
        mov     ebp, esp                                ; 1001E1AF _ 8B. EC
        push    ecx                                     ; 1001E1B1 _ 51
        push    ebx                                     ; 1001E1B2 _ 53
        push    esi                                     ; 1001E1B3 _ 56
        mov     esi, dword [?_5463]                     ; 1001E1B4 _ 8B. 35, 10031B7C(d)
        push    edi                                     ; 1001E1BA _ 57
?_3791: cmp     dword [esi+10H], -1                     ; 1001E1BB _ 83. 7E, 10, FF
        je      ?_3799                                  ; 1001E1BF _ 0F 84, 00000094
        and     dword [ebp-4H], 00H                     ; 1001E1C5 _ 83. 65, FC, 00
        lea     edi, [esi+2010H]                        ; 1001E1C9 _ 8D. BE, 00002010
        mov     ebx, 4190208                            ; 1001E1CF _ BB, 003FF000
?_3792: cmp     dword [edi], 240                        ; 1001E1D4 _ 81. 3F, 000000F0
        jnz     ?_3795                                  ; 1001E1DA _ 75, 39
        mov     eax, ebx                                ; 1001E1DC _ 8B. C3
        push    16384                                   ; 1001E1DE _ 68, 00004000
        add     eax, dword [esi+10H]                    ; 1001E1E3 _ 03. 46, 10
        push    4096                                    ; 1001E1E6 _ 68, 00001000
        push    eax                                     ; 1001E1EB _ 50
        call    near [imp_VirtualFree]                  ; 1001E1EC _ FF. 15, 1002400C(d)
        test    eax, eax                                ; 1001E1F2 _ 85. C0
        jz      ?_3795                                  ; 1001E1F4 _ 74, 1F
        or      dword [edi], 0FFFFFFFFH                 ; 1001E1F6 _ 83. 0F, FF
        dec     dword [?_5587]                          ; 1001E1F9 _ FF. 0D, 100355A4(d)
        mov     eax, dword [esi+0CH]                    ; 1001E1FF _ 8B. 46, 0C
        test    eax, eax                                ; 1001E202 _ 85. C0
        jz      ?_3793                                  ; 1001E204 _ 74, 04
        cmp     eax, edi                                ; 1001E206 _ 3B. C7
        jbe     ?_3794                                  ; 1001E208 _ 76, 03
?_3793: mov     dword [esi+0CH], edi                    ; 1001E20A _ 89. 7E, 0C
?_3794: inc     dword [ebp-4H]                          ; 1001E20D _ FF. 45, FC
        dec     dword [ebp+8H]                          ; 1001E210 _ FF. 4D, 08
        jz      ?_3796                                  ; 1001E213 _ 74, 0D
?_3795: sub     ebx, 4096                               ; 1001E215 _ 81. EB, 00001000
        sub     edi, 8                                  ; 1001E21B _ 83. EF, 08
        test    ebx, ebx                                ; 1001E21E _ 85. DB
        jge     ?_3792                                  ; 1001E220 _ 7D, B2
?_3796: cmp     dword [ebp-4H], 0                       ; 1001E222 _ 83. 7D, FC, 00
        mov     ecx, esi                                ; 1001E226 _ 8B. CE
        mov     esi, dword [esi+4H]                     ; 1001E228 _ 8B. 76, 04
        jz      ?_3799                                  ; 1001E22B _ 74, 2C
        cmp     dword [ecx+18H], -1                     ; 1001E22D _ 83. 79, 18, FF
        jnz     ?_3799                                  ; 1001E231 _ 75, 26
        push    1                                       ; 1001E233 _ 6A, 01
        lea     eax, [ecx+20H]                          ; 1001E235 _ 8D. 41, 20
        pop     edx                                     ; 1001E238 _ 5A
?_3797: cmp     dword [eax], -1                         ; 1001E239 _ 83. 38, FF
        jnz     ?_3798                                  ; 1001E23C _ 75, 0C
        inc     edx                                     ; 1001E23E _ 42
        add     eax, 8                                  ; 1001E23F _ 83. C0, 08
        cmp     edx, 1024                               ; 1001E242 _ 81. FA, 00000400
        jl      ?_3797                                  ; 1001E248 _ 7C, EF
?_3798: cmp     edx, 1024                               ; 1001E24A _ 81. FA, 00000400
        jnz     ?_3799                                  ; 1001E250 _ 75, 07
        push    ecx                                     ; 1001E252 _ 51
        call    ?_3787                                  ; 1001E253 _ E8, FFFFFF00
        pop     ecx                                     ; 1001E258 _ 59
?_3799: cmp     esi, dword [?_5463]                     ; 1001E259 _ 3B. 35, 10031B7C(d)
        jz      ?_3800                                  ; 1001E25F _ 74, 0A
        cmp     dword [ebp+8H], 0                       ; 1001E261 _ 83. 7D, 08, 00
        jg      ?_3791                                  ; 1001E265 _ 0F 8F, FFFFFF50
?_3800: pop     edi                                     ; 1001E26B _ 5F
        pop     esi                                     ; 1001E26C _ 5E
        pop     ebx                                     ; 1001E26D _ 5B
        leave                                           ; 1001E26E _ C9
        ret                                             ; 1001E26F _ C3

?_3801: mov     eax, dword [esp+4H]                     ; 1001E270 _ 8B. 44 24, 04
        mov     edx, ?_5462                             ; 1001E274 _ BA, 10031B78(d)
        push    esi                                     ; 1001E279 _ 56
        mov     ecx, edx                                ; 1001E27A _ 8B. CA
?_3802: cmp     eax, dword [ecx+10H]                    ; 1001E27C _ 3B. 41, 10
        jbe     ?_3803                                  ; 1001E27F _ 76, 05
        cmp     eax, dword [ecx+14H]                    ; 1001E281 _ 3B. 41, 14
        jc      ?_3804                                  ; 1001E284 _ 72, 08
?_3803: mov     ecx, dword [ecx]                        ; 1001E286 _ 8B. 09
        cmp     ecx, edx                                ; 1001E288 _ 3B. CA
        jz      ?_3805                                  ; 1001E28A _ 74, 37
        jmp     ?_3802                                  ; 1001E28C _ EB, EE

?_3804: test    al, 0FH                                 ; 1001E28E _ A8, 0F
        jnz     ?_3805                                  ; 1001E290 _ 75, 31
        mov     esi, eax                                ; 1001E292 _ 8B. F0
        mov     edx, 256                                ; 1001E294 _ BA, 00000100
        and     esi, 0FFFH                              ; 1001E299 _ 81. E6, 00000FFF
        cmp     esi, edx                                ; 1001E29F _ 3B. F2
        jc      ?_3805                                  ; 1001E2A1 _ 72, 20
        mov     esi, dword [esp+0CH]                    ; 1001E2A3 _ 8B. 74 24, 0C
        mov     dword [esi], ecx                        ; 1001E2A7 _ 89. 0E
        mov     esi, dword [esp+10H]                    ; 1001E2A9 _ 8B. 74 24, 10
        mov     ecx, eax                                ; 1001E2AD _ 8B. C8
; Note: Length-changing prefix causes delay on Intel processors
        and     cx, 0F000H                              ; 1001E2AF _ 66: 81. E1, F000
        sub     eax, ecx                                ; 1001E2B4 _ 2B. C1
        mov     dword [esi], ecx                        ; 1001E2B6 _ 89. 0E
        sub     eax, edx                                ; 1001E2B8 _ 2B. C2
        pop     esi                                     ; 1001E2BA _ 5E
        sar     eax, 4                                  ; 1001E2BB _ C1. F8, 04
        lea     eax, [eax+ecx+8H]                       ; 1001E2BE _ 8D. 44 08, 08
        ret                                             ; 1001E2C2 _ C3

?_3805: xor     eax, eax                                ; 1001E2C3 _ 33. C0
        pop     esi                                     ; 1001E2C5 _ 5E
        ret                                             ; 1001E2C6 _ C3

?_3806: mov     eax, dword [esp+4H]                     ; 1001E2C7 _ 8B. 44 24, 04
        mov     ecx, dword [esp+8H]                     ; 1001E2CB _ 8B. 4C 24, 08
        sub     ecx, dword [eax+10H]                    ; 1001E2CF _ 2B. 48, 10
        sar     ecx, 12                                 ; 1001E2D2 _ C1. F9, 0C
        lea     eax, [eax+ecx*8+18H]                    ; 1001E2D5 _ 8D. 44 C8, 18
        mov     ecx, dword [esp+0CH]                    ; 1001E2D9 _ 8B. 4C 24, 0C
        movzx   edx, byte [ecx]                         ; 1001E2DD _ 0F B6. 11
        add     dword [eax], edx                        ; 1001E2E0 _ 01. 10
        and     byte [ecx], 00H                         ; 1001E2E2 _ 80. 21, 00
        cmp     dword [eax], 240                        ; 1001E2E5 _ 81. 38, 000000F0
        mov     dword [eax+4H], 241                     ; 1001E2EB _ C7. 40, 04, 000000F1
        jnz     ?_3807                                  ; 1001E2F2 _ 75, 17
        inc     dword [?_5587]                          ; 1001E2F4 _ FF. 05, 100355A4(d)
        cmp     dword [?_5587], 32                      ; 1001E2FA _ 83. 3D, 100355A4(d), 20
        jnz     ?_3807                                  ; 1001E301 _ 75, 08
        push    16                                      ; 1001E303 _ 6A, 10
        call    ?_3790                                  ; 1001E305 _ E8, FFFFFEA4
        pop     ecx                                     ; 1001E30A _ 59
?_3807: ret                                             ; 1001E30B _ C3

?_3808: push    ebp                                     ; 1001E30C _ 55
        mov     ebp, esp                                ; 1001E30D _ 8B. EC
        push    ecx                                     ; 1001E30F _ 51
        push    ecx                                     ; 1001E310 _ 51
        push    ebx                                     ; 1001E311 _ 53
        push    esi                                     ; 1001E312 _ 56
        mov     esi, dword [?_5466]                     ; 1001E313 _ 8B. 35, 10033B98(d)
        push    edi                                     ; 1001E319 _ 57
?_3809: mov     edx, dword [esi+10H]                    ; 1001E31A _ 8B. 56, 10
        cmp     edx, -1                                 ; 1001E31D _ 83. FA, FF
        je      ?_3816                                  ; 1001E320 _ 0F 84, 0000009F
        mov     edi, dword [esi+8H]                     ; 1001E326 _ 8B. 7E, 08
        lea     ecx, [esi+2018H]                        ; 1001E329 _ 8D. 8E, 00002018
        mov     eax, edi                                ; 1001E32F _ 8B. C7
        sub     eax, esi                                ; 1001E331 _ 2B. C6
        sub     eax, 24                                 ; 1001E333 _ 83. E8, 18
        sar     eax, 3                                  ; 1001E336 _ C1. F8, 03
        shl     eax, 12                                 ; 1001E339 _ C1. E0, 0C
        add     eax, edx                                ; 1001E33C _ 03. C2
        cmp     edi, ecx                                ; 1001E33E _ 3B. F9
        mov     dword [ebp-4H], eax                     ; 1001E340 _ 89. 45, FC
        jnc     ?_3812                                  ; 1001E343 _ 73, 3A
?_3810: mov     ecx, dword [edi]                        ; 1001E345 _ 8B. 0F
        mov     ebx, dword [ebp+8H]                     ; 1001E347 _ 8B. 5D, 08
        cmp     ecx, ebx                                ; 1001E34A _ 3B. CB
        jl      ?_3811                                  ; 1001E34C _ 7C, 1A
        cmp     dword [edi+4H], ebx                     ; 1001E34E _ 39. 5F, 04
        jbe     ?_3811                                  ; 1001E351 _ 76, 15
        push    ebx                                     ; 1001E353 _ 53
        push    ecx                                     ; 1001E354 _ 51
        push    eax                                     ; 1001E355 _ 50
        call    ?_3833                                  ; 1001E356 _ E8, 000001B9
        add     esp, 12                                 ; 1001E35B _ 83. C4, 0C
        test    eax, eax                                ; 1001E35E _ 85. C0
        jnz     ?_3818                                  ; 1001E360 _ 75, 75
        mov     eax, dword [ebp-4H]                     ; 1001E362 _ 8B. 45, FC
        mov     dword [edi+4H], ebx                     ; 1001E365 _ 89. 5F, 04
?_3811: add     edi, 8                                  ; 1001E368 _ 83. C7, 08
        lea     ecx, [esi+2018H]                        ; 1001E36B _ 8D. 8E, 00002018
        add     eax, 4096                               ; 1001E371 _ 05, 00001000
        cmp     edi, ecx                                ; 1001E376 _ 3B. F9
        mov     dword [ebp-4H], eax                     ; 1001E378 _ 89. 45, FC
        jc      ?_3810                                  ; 1001E37B _ 72, C8
        jmp     ?_3813                                  ; 1001E37D _ EB, 03

?_3812: mov     ebx, dword [ebp+8H]                     ; 1001E37F _ 8B. 5D, 08
?_3813: mov     eax, dword [esi+8H]                     ; 1001E382 _ 8B. 46, 08
        mov     ecx, dword [esi+10H]                    ; 1001E385 _ 8B. 4E, 10
        lea     edi, [esi+18H]                          ; 1001E388 _ 8D. 7E, 18
        mov     dword [ebp-8H], eax                     ; 1001E38B _ 89. 45, F8
        cmp     edi, eax                                ; 1001E38E _ 3B. F8
        mov     dword [ebp-4H], ecx                     ; 1001E390 _ 89. 4D, FC
        jnc     ?_3817                                  ; 1001E393 _ 73, 33
?_3814: mov     eax, dword [edi]                        ; 1001E395 _ 8B. 07
        cmp     eax, ebx                                ; 1001E397 _ 3B. C3
        jl      ?_3815                                  ; 1001E399 _ 7C, 19
        cmp     dword [edi+4H], ebx                     ; 1001E39B _ 39. 5F, 04
        jbe     ?_3815                                  ; 1001E39E _ 76, 14
        push    ebx                                     ; 1001E3A0 _ 53
        push    eax                                     ; 1001E3A1 _ 50
        push    dword [ebp-4H]                          ; 1001E3A2 _ FF. 75, FC
        call    ?_3833                                  ; 1001E3A5 _ E8, 0000016A
        add     esp, 12                                 ; 1001E3AA _ 83. C4, 0C
        test    eax, eax                                ; 1001E3AD _ 85. C0
        jnz     ?_3818                                  ; 1001E3AF _ 75, 26
        mov     dword [edi+4H], ebx                     ; 1001E3B1 _ 89. 5F, 04
?_3815: add     dword [ebp-4H], 4096                    ; 1001E3B4 _ 81. 45, FC, 00001000
        add     edi, 8                                  ; 1001E3BB _ 83. C7, 08
        cmp     edi, dword [ebp-8H]                     ; 1001E3BE _ 3B. 7D, F8
        jc      ?_3814                                  ; 1001E3C1 _ 72, D2
        jmp     ?_3817                                  ; 1001E3C3 _ EB, 03

?_3816: mov     ebx, dword [ebp+8H]                     ; 1001E3C5 _ 8B. 5D, 08
?_3817: mov     esi, dword [esi]                        ; 1001E3C8 _ 8B. 36
        cmp     esi, dword [?_5466]                     ; 1001E3CA _ 3B. 35, 10033B98(d)
        jz      ?_3819                                  ; 1001E3D0 _ 74, 15
        jmp     ?_3809                                  ; 1001E3D2 _ E9, FFFFFF43

?_3818: mov     dword [?_5466], esi                     ; 1001E3D7 _ 89. 35, 10033B98(d)
        sub     dword [edi], ebx                        ; 1001E3DD _ 29. 1F
        mov     dword [esi+8H], edi                     ; 1001E3DF _ 89. 7E, 08
        jmp     ?_3832                                  ; 1001E3E2 _ E9, 00000128

?_3819: mov     eax, ?_5462                             ; 1001E3E7 _ B8, 10031B78(d)
        mov     edi, eax                                ; 1001E3EC _ 8B. F8
?_3820: cmp     dword [edi+10H], -1                     ; 1001E3EE _ 83. 7F, 10, FF
        jz      ?_3821                                  ; 1001E3F2 _ 74, 06
        cmp     dword [edi+0CH], 0                      ; 1001E3F4 _ 83. 7F, 0C, 00
        jnz     ?_3822                                  ; 1001E3F8 _ 75, 0C
?_3821: mov     edi, dword [edi]                        ; 1001E3FA _ 8B. 3F
        cmp     edi, eax                                ; 1001E3FC _ 3B. F8
        je      ?_3830                                  ; 1001E3FE _ 0F 84, 000000D7
        jmp     ?_3820                                  ; 1001E404 _ EB, E8

?_3822: mov     ebx, dword [edi+0CH]                    ; 1001E406 _ 8B. 5F, 0C
        and     dword [ebp-4H], 00H                     ; 1001E409 _ 83. 65, FC, 00
        mov     esi, ebx                                ; 1001E40D _ 8B. F3
        mov     eax, ebx                                ; 1001E40F _ 8B. C3
        sub     esi, edi                                ; 1001E411 _ 2B. F7
        sub     esi, 24                                 ; 1001E413 _ 83. EE, 18
        sar     esi, 3                                  ; 1001E416 _ C1. FE, 03
        shl     esi, 12                                 ; 1001E419 _ C1. E6, 0C
        add     esi, dword [edi+10H]                    ; 1001E41C _ 03. 77, 10
        cmp     dword [ebx], -1                         ; 1001E41F _ 83. 3B, FF
        jnz     ?_3824                                  ; 1001E422 _ 75, 11
?_3823: cmp     dword [ebp-4H], 16                      ; 1001E424 _ 83. 7D, FC, 10
        jge     ?_3824                                  ; 1001E428 _ 7D, 0B
        add     eax, 8                                  ; 1001E42A _ 83. C0, 08
        inc     dword [ebp-4H]                          ; 1001E42D _ FF. 45, FC
        cmp     dword [eax], -1                         ; 1001E430 _ 83. 38, FF
        jz      ?_3823                                  ; 1001E433 _ 74, EF
?_3824: mov     eax, dword [ebp-4H]                     ; 1001E435 _ 8B. 45, FC
        push    4                                       ; 1001E438 _ 6A, 04
        shl     eax, 12                                 ; 1001E43A _ C1. E0, 0C
        push    4096                                    ; 1001E43D _ 68, 00001000
        push    eax                                     ; 1001E442 _ 50
        push    esi                                     ; 1001E443 _ 56
        mov     dword [ebp-8H], eax                     ; 1001E444 _ 89. 45, F8
        call    near [imp_VirtualAlloc]                 ; 1001E447 _ FF. 15, 10024030(d)
        cmp     eax, esi                                ; 1001E44D _ 3B. C6
        jne     ?_3831                                  ; 1001E44F _ 0F 85, 000000B8
        push    0                                       ; 1001E455 _ 6A, 00
        push    dword [ebp-8H]                          ; 1001E457 _ FF. 75, F8
        push    esi                                     ; 1001E45A _ 56
        call    ?_4392                                  ; 1001E45B _ E8, 00002DE0
        mov     edx, dword [ebp-4H]                     ; 1001E460 _ 8B. 55, FC
        add     esp, 12                                 ; 1001E463 _ 83. C4, 0C
        test    edx, edx                                ; 1001E466 _ 85. D2
        mov     ecx, ebx                                ; 1001E468 _ 8B. CB
        jle     ?_3826                                  ; 1001E46A _ 7E, 30
        lea     eax, [esi+4H]                           ; 1001E46C _ 8D. 46, 04
        mov     dword [ebp-4H], edx                     ; 1001E46F _ 89. 55, FC
?_3825: or      byte [eax+0F4H], 0FFFFFFFFH             ; 1001E472 _ 80. 88, 000000F4, FF
        lea     edx, [eax+4H]                           ; 1001E479 _ 8D. 50, 04
        mov     dword [eax-4H], edx                     ; 1001E47C _ 89. 50, FC
        mov     edx, 240                                ; 1001E47F _ BA, 000000F0
        mov     dword [eax], edx                        ; 1001E484 _ 89. 10
        mov     dword [ecx], edx                        ; 1001E486 _ 89. 11
        mov     dword [ecx+4H], 241                     ; 1001E488 _ C7. 41, 04, 000000F1
        add     eax, 4096                               ; 1001E48F _ 05, 00001000
        add     ecx, 8                                  ; 1001E494 _ 83. C1, 08
        dec     dword [ebp-4H]                          ; 1001E497 _ FF. 4D, FC
        jnz     ?_3825                                  ; 1001E49A _ 75, D6
?_3826: mov     dword [?_5466], edi                     ; 1001E49C _ 89. 3D, 10033B98(d)
        lea     eax, [edi+2018H]                        ; 1001E4A2 _ 8D. 87, 00002018
?_3827: cmp     ecx, eax                                ; 1001E4A8 _ 3B. C8
        jnc     ?_3829                                  ; 1001E4AA _ 73, 0C
        cmp     dword [ecx], -1                         ; 1001E4AC _ 83. 39, FF
        jz      ?_3828                                  ; 1001E4AF _ 74, 05
        add     ecx, 8                                  ; 1001E4B1 _ 83. C1, 08
        jmp     ?_3827                                  ; 1001E4B4 _ EB, F2

?_3828: cmp     ecx, eax                                ; 1001E4B6 _ 3B. C8
?_3829: sbb     eax, eax                                ; 1001E4B8 _ 1B. C0
        and     eax, ecx                                ; 1001E4BA _ 23. C1
        mov     dword [edi+0CH], eax                    ; 1001E4BC _ 89. 47, 0C
        mov     eax, dword [ebp+8H]                     ; 1001E4BF _ 8B. 45, 08
        mov     byte [esi+8H], al                       ; 1001E4C2 _ 88. 46, 08
        mov     dword [edi+8H], ebx                     ; 1001E4C5 _ 89. 5F, 08
        sub     dword [ebx], eax                        ; 1001E4C8 _ 29. 03
        sub     dword [esi+4H], eax                     ; 1001E4CA _ 29. 46, 04
        lea     ecx, [esi+eax+8H]                       ; 1001E4CD _ 8D. 4C 06, 08
        lea     eax, [esi+100H]                         ; 1001E4D1 _ 8D. 86, 00000100
        mov     dword [esi], ecx                        ; 1001E4D7 _ 89. 0E
        jmp     ?_3832                                  ; 1001E4D9 _ EB, 34

?_3830: call    ?_3774                                  ; 1001E4DB _ E8, FFFFFB34
        test    eax, eax                                ; 1001E4E0 _ 85. C0
        jz      ?_3831                                  ; 1001E4E2 _ 74, 29
        mov     ecx, dword [eax+10H]                    ; 1001E4E4 _ 8B. 48, 10
        mov     byte [ecx+8H], bl                       ; 1001E4E7 _ 88. 59, 08
        lea     edx, [ecx+ebx+8H]                       ; 1001E4EA _ 8D. 54 19, 08
        mov     dword [?_5466], eax                     ; 1001E4EE _ A3, 10033B98(d)
        mov     dword [ecx], edx                        ; 1001E4F3 _ 89. 11
        mov     edx, 240                                ; 1001E4F5 _ BA, 000000F0
        sub     edx, ebx                                ; 1001E4FA _ 2B. D3
        mov     dword [ecx+4H], edx                     ; 1001E4FC _ 89. 51, 04
        movzx   edx, bl                                 ; 1001E4FF _ 0F B6. D3
        sub     dword [eax+18H], edx                    ; 1001E502 _ 29. 50, 18
        lea     eax, [ecx+100H]                         ; 1001E505 _ 8D. 81, 00000100
        jmp     ?_3832                                  ; 1001E50B _ EB, 02

?_3831: xor     eax, eax                                ; 1001E50D _ 33. C0
?_3832: pop     edi                                     ; 1001E50F _ 5F
        pop     esi                                     ; 1001E510 _ 5E
        pop     ebx                                     ; 1001E511 _ 5B
        leave                                           ; 1001E512 _ C9
        ret                                             ; 1001E513 _ C3

?_3833: push    ebp                                     ; 1001E514 _ 55
        mov     ebp, esp                                ; 1001E515 _ 8B. EC
        push    ecx                                     ; 1001E517 _ 51
        mov     ecx, dword [ebp+8H]                     ; 1001E518 _ 8B. 4D, 08
        mov     edx, dword [ebp+10H]                    ; 1001E51B _ 8B. 55, 10
        push    ebx                                     ; 1001E51E _ 53
        push    esi                                     ; 1001E51F _ 56
        mov     esi, dword [ecx+4H]                     ; 1001E520 _ 8B. 71, 04
        push    edi                                     ; 1001E523 _ 57
        mov     edi, dword [ecx]                        ; 1001E524 _ 8B. 39
        lea     ebx, [ecx+0F8H]                         ; 1001E526 _ 8D. 99, 000000F8
        cmp     esi, edx                                ; 1001E52C _ 3B. F2
        mov     dword [ebp-4H], edi                     ; 1001E52E _ 89. 7D, FC
        mov     eax, edi                                ; 1001E531 _ 8B. C7
        mov     dword [ebp+8H], ebx                     ; 1001E533 _ 89. 5D, 08
        jc      ?_3836                                  ; 1001E536 _ 72, 21
        lea     eax, [edi+edx]                          ; 1001E538 _ 8D. 04 17
        mov     byte [edi], dl                          ; 1001E53B _ 88. 17
        cmp     eax, ebx                                ; 1001E53D _ 3B. C3
        jnc     ?_3834                                  ; 1001E53F _ 73, 07
        add     dword [ecx], edx                        ; 1001E541 _ 01. 11
        sub     dword [ecx+4H], edx                     ; 1001E543 _ 29. 51, 04
        jmp     ?_3835                                  ; 1001E546 _ EB, 09

?_3834: and     dword [ecx+4H], 00H                     ; 1001E548 _ 83. 61, 04, 00
        lea     eax, [ecx+8H]                           ; 1001E54C _ 8D. 41, 08
        mov     dword [ecx], eax                        ; 1001E54F _ 89. 01
?_3835: lea     eax, [edi+8H]                           ; 1001E551 _ 8D. 47, 08
        jmp     ?_3856                                  ; 1001E554 _ E9, 000000CE

?_3836: add     esi, edi                                ; 1001E559 _ 03. F7
        cmp     byte [esi], 0                           ; 1001E55B _ 80. 3E, 00
        jz      ?_3837                                  ; 1001E55E _ 74, 02
        mov     eax, esi                                ; 1001E560 _ 8B. C6
?_3837: lea     esi, [eax+edx]                          ; 1001E562 _ 8D. 34 10
        cmp     esi, ebx                                ; 1001E565 _ 3B. F3
        jnc     ?_3845                                  ; 1001E567 _ 73, 43
?_3838: mov     bl, byte [eax]                          ; 1001E569 _ 8A. 18
        test    bl, bl                                  ; 1001E56B _ 84. DB
        jnz     ?_3843                                  ; 1001E56D _ 75, 30
        push    1                                       ; 1001E56F _ 6A, 01
        lea     ebx, [eax+1H]                           ; 1001E571 _ 8D. 58, 01
        pop     esi                                     ; 1001E574 _ 5E
?_3839: cmp     byte [ebx], 0                           ; 1001E575 _ 80. 3B, 00
        jnz     ?_3840                                  ; 1001E578 _ 75, 04
        inc     ebx                                     ; 1001E57A _ 43
        inc     esi                                     ; 1001E57B _ 46
        jmp     ?_3839                                  ; 1001E57C _ EB, F7

?_3840: cmp     esi, edx                                ; 1001E57E _ 3B. F2
        jnc     ?_3848                                  ; 1001E580 _ 73, 4E
        cmp     eax, dword [ebp-4H]                     ; 1001E582 _ 3B. 45, FC
        jnz     ?_3841                                  ; 1001E585 _ 75, 05
        mov     dword [ecx+4H], esi                     ; 1001E587 _ 89. 71, 04
        jmp     ?_3842                                  ; 1001E58A _ EB, 0C

?_3841: sub     dword [ebp+0CH], esi                    ; 1001E58C _ 29. 75, 0C
        cmp     dword [ebp+0CH], edx                    ; 1001E58F _ 39. 55, 0C
        jc      ?_3857                                  ; 1001E592 _ 0F 82, 00000099
?_3842: mov     edi, dword [ebp-4H]                     ; 1001E598 _ 8B. 7D, FC
        mov     eax, ebx                                ; 1001E59B _ 8B. C3
        jmp     ?_3844                                  ; 1001E59D _ EB, 05

?_3843: movzx   esi, bl                                 ; 1001E59F _ 0F B6. F3
        add     eax, esi                                ; 1001E5A2 _ 03. C6
?_3844: lea     esi, [eax+edx]                          ; 1001E5A4 _ 8D. 34 10
        cmp     esi, dword [ebp+8H]                     ; 1001E5A7 _ 3B. 75, 08
        jc      ?_3838                                  ; 1001E5AA _ 72, BD
?_3845: lea     esi, [ecx+8H]                           ; 1001E5AC _ 8D. 71, 08
?_3846: cmp     esi, edi                                ; 1001E5AF _ 3B. F7
        jnc     ?_3857                                  ; 1001E5B1 _ 73, 7E
        lea     eax, [esi+edx]                          ; 1001E5B3 _ 8D. 04 16
        cmp     eax, dword [ebp+8H]                     ; 1001E5B6 _ 3B. 45, 08
        jnc     ?_3857                                  ; 1001E5B9 _ 73, 76
        mov     al, byte [esi]                          ; 1001E5BB _ 8A. 06
        test    al, al                                  ; 1001E5BD _ 84. C0
        jnz     ?_3852                                  ; 1001E5BF _ 75, 40
        push    1                                       ; 1001E5C1 _ 6A, 01
        lea     ebx, [esi+1H]                           ; 1001E5C3 _ 8D. 5E, 01
        pop     eax                                     ; 1001E5C6 _ 58
?_3847: cmp     byte [ebx], 0                           ; 1001E5C7 _ 80. 3B, 00
        jnz     ?_3851                                  ; 1001E5CA _ 75, 25
        inc     ebx                                     ; 1001E5CC _ 43
        inc     eax                                     ; 1001E5CD _ 40
        jmp     ?_3847                                  ; 1001E5CE _ EB, F7

?_3848: lea     ebx, [eax+edx]                          ; 1001E5D0 _ 8D. 1C 10
        cmp     ebx, dword [ebp+8H]                     ; 1001E5D3 _ 3B. 5D, 08
        jnc     ?_3849                                  ; 1001E5D6 _ 73, 09
        sub     esi, edx                                ; 1001E5D8 _ 2B. F2
        mov     dword [ecx], ebx                        ; 1001E5DA _ 89. 19
        mov     dword [ecx+4H], esi                     ; 1001E5DC _ 89. 71, 04
        jmp     ?_3850                                  ; 1001E5DF _ EB, 09

?_3849: and     dword [ecx+4H], 00H                     ; 1001E5E1 _ 83. 61, 04, 00
        lea     esi, [ecx+8H]                           ; 1001E5E5 _ 8D. 71, 08
        mov     dword [ecx], esi                        ; 1001E5E8 _ 89. 31
?_3850: mov     byte [eax], dl                          ; 1001E5EA _ 88. 10
        add     eax, 8                                  ; 1001E5EC _ 83. C0, 08
        jmp     ?_3856                                  ; 1001E5EF _ EB, 36

?_3851: cmp     eax, edx                                ; 1001E5F1 _ 3B. C2
        jnc     ?_3853                                  ; 1001E5F3 _ 73, 13
        sub     dword [ebp+0CH], eax                    ; 1001E5F5 _ 29. 45, 0C
        cmp     dword [ebp+0CH], edx                    ; 1001E5F8 _ 39. 55, 0C
        jc      ?_3857                                  ; 1001E5FB _ 72, 34
        mov     esi, ebx                                ; 1001E5FD _ 8B. F3
        jmp     ?_3846                                  ; 1001E5FF _ EB, AE

?_3852: movzx   eax, al                                 ; 1001E601 _ 0F B6. C0
        add     esi, eax                                ; 1001E604 _ 03. F0
        jmp     ?_3846                                  ; 1001E606 _ EB, A7

?_3853: lea     ebx, [esi+edx]                          ; 1001E608 _ 8D. 1C 16
        cmp     ebx, dword [ebp+8H]                     ; 1001E60B _ 3B. 5D, 08
        jnc     ?_3854                                  ; 1001E60E _ 73, 09
        sub     eax, edx                                ; 1001E610 _ 2B. C2
        mov     dword [ecx], ebx                        ; 1001E612 _ 89. 19
        mov     dword [ecx+4H], eax                     ; 1001E614 _ 89. 41, 04
        jmp     ?_3855                                  ; 1001E617 _ EB, 09

?_3854: and     dword [ecx+4H], 00H                     ; 1001E619 _ 83. 61, 04, 00
        lea     eax, [ecx+8H]                           ; 1001E61D _ 8D. 41, 08
        mov     dword [ecx], eax                        ; 1001E620 _ 89. 01
?_3855: mov     byte [esi], dl                          ; 1001E622 _ 88. 16
        lea     eax, [esi+8H]                           ; 1001E624 _ 8D. 46, 08
?_3856: imul    ecx, ecx, 15                            ; 1001E627 _ 6B. C9, 0F
        shl     eax, 4                                  ; 1001E62A _ C1. E0, 04
        sub     eax, ecx                                ; 1001E62D _ 2B. C1
        jmp     ?_3858                                  ; 1001E62F _ EB, 02

?_3857: xor     eax, eax                                ; 1001E631 _ 33. C0
?_3858: pop     edi                                     ; 1001E633 _ 5F
        pop     esi                                     ; 1001E634 _ 5E
        pop     ebx                                     ; 1001E635 _ 5B
        leave                                           ; 1001E636 _ C9
        ret                                             ; 1001E637 _ C3

?_3859: push    ebp                                     ; 1001E638 _ 55
        mov     ebp, esp                                ; 1001E639 _ 8B. EC
        push    ecx                                     ; 1001E63B _ 51
        mov     edx, dword [ebp+10H]                    ; 1001E63C _ 8B. 55, 10
        push    ebx                                     ; 1001E63F _ 53
        mov     ebx, dword [ebp+0CH]                    ; 1001E640 _ 8B. 5D, 0C
        push    esi                                     ; 1001E643 _ 56
        movzx   ecx, byte [edx]                         ; 1001E644 _ 0F B6. 0A
        push    edi                                     ; 1001E647 _ 57
        mov     edi, dword [ebp+8H]                     ; 1001E648 _ 8B. 7D, 08
        and     dword [ebp-4H], 00H                     ; 1001E64B _ 83. 65, FC, 00
        mov     eax, ebx                                ; 1001E64F _ 8B. C3
        sub     eax, dword [edi+10H]                    ; 1001E651 _ 2B. 47, 10
        sar     eax, 12                                 ; 1001E654 _ C1. F8, 0C
        cmp     ecx, dword [ebp+14H]                    ; 1001E657 _ 3B. 4D, 14
        lea     edi, [edi+eax*8+18H]                    ; 1001E65A _ 8D. 7C C7, 18
        jbe     ?_3860                                  ; 1001E65E _ 76, 12
        mov     eax, dword [ebp+14H]                    ; 1001E660 _ 8B. 45, 14
        sub     ecx, eax                                ; 1001E663 _ 2B. C8
        mov     byte [edx], al                          ; 1001E665 _ 88. 02
        add     dword [edi], ecx                        ; 1001E667 _ 01. 0F
        mov     dword [edi+4H], 241                     ; 1001E669 _ C7. 47, 04, 000000F1
        jmp     ?_3868                                  ; 1001E670 _ EB, 60

?_3860: jnc     ?_3869                                  ; 1001E672 _ 73, 65
        mov     eax, dword [ebp+14H]                    ; 1001E674 _ 8B. 45, 14
        lea     esi, [edx+eax]                          ; 1001E677 _ 8D. 34 02
        lea     eax, [ebx+0F8H]                         ; 1001E67A _ 8D. 83, 000000F8
        cmp     eax, esi                                ; 1001E680 _ 3B. C6
        jc      ?_3869                                  ; 1001E682 _ 72, 55
        lea     eax, [ecx+edx]                          ; 1001E684 _ 8D. 04 11
?_3861: cmp     eax, esi                                ; 1001E687 _ 3B. C6
        jnc     ?_3863                                  ; 1001E689 _ 73, 0A
        cmp     byte [eax], 0                           ; 1001E68B _ 80. 38, 00
        jnz     ?_3862                                  ; 1001E68E _ 75, 03
        inc     eax                                     ; 1001E690 _ 40
        jmp     ?_3861                                  ; 1001E691 _ EB, F4

?_3862: cmp     eax, esi                                ; 1001E693 _ 3B. C6
?_3863: jnz     ?_3869                                  ; 1001E695 _ 75, 42
        mov     al, byte [ebp+14H]                      ; 1001E697 _ 8A. 45, 14
        mov     byte [edx], al                          ; 1001E69A _ 88. 02
        mov     eax, dword [ebx]                        ; 1001E69C _ 8B. 03
        cmp     edx, eax                                ; 1001E69E _ 3B. D0
        ja      ?_3867                                  ; 1001E6A0 _ 77, 2B
        cmp     esi, eax                                ; 1001E6A2 _ 3B. F0
        jbe     ?_3867                                  ; 1001E6A4 _ 76, 27
        lea     eax, [ebx+0F8H]                         ; 1001E6A6 _ 8D. 83, 000000F8
        cmp     esi, eax                                ; 1001E6AC _ 3B. F0
        jnc     ?_3866                                  ; 1001E6AE _ 73, 14
        xor     eax, eax                                ; 1001E6B0 _ 33. C0
        mov     dword [ebx], esi                        ; 1001E6B2 _ 89. 33
        cmp     byte [esi], al                          ; 1001E6B4 _ 38. 06
        jnz     ?_3865                                  ; 1001E6B6 _ 75, 07
?_3864: inc     eax                                     ; 1001E6B8 _ 40
        cmp     byte [esi+eax], 0                       ; 1001E6B9 _ 80. 3C 06, 00
        jz      ?_3864                                  ; 1001E6BD _ 74, F9
?_3865: mov     dword [ebx+4H], eax                     ; 1001E6BF _ 89. 43, 04
        jmp     ?_3867                                  ; 1001E6C2 _ EB, 09

?_3866: and     dword [ebx+4H], 00H                     ; 1001E6C4 _ 83. 63, 04, 00
        lea     eax, [ebx+8H]                           ; 1001E6C8 _ 8D. 43, 08
        mov     dword [ebx], eax                        ; 1001E6CB _ 89. 03
?_3867: sub     ecx, dword [ebp+14H]                    ; 1001E6CD _ 2B. 4D, 14
        add     dword [edi], ecx                        ; 1001E6D0 _ 01. 0F
?_3868: mov     dword [ebp-4H], 1                       ; 1001E6D2 _ C7. 45, FC, 00000001
?_3869: mov     eax, dword [ebp-4H]                     ; 1001E6D9 _ 8B. 45, FC
        pop     edi                                     ; 1001E6DC _ 5F
        pop     esi                                     ; 1001E6DD _ 5E
        pop     ebx                                     ; 1001E6DE _ 5B
        leave                                           ; 1001E6DF _ C9
        ret                                             ; 1001E6E0 _ C3

; Filling space: 3H
; Filler type: INT 3 Debug breakpoint
;       db 0CCH, 0CCH, 0CCH

ALIGN   4
?_3870: push    ebp                                     ; 1001E6E4 _ 55
        mov     ebp, esp                                ; 1001E6E5 _ 8B. EC
        push    ebx                                     ; 1001E6E7 _ 53
        push    esi                                     ; 1001E6E8 _ 56
        push    edi                                     ; 1001E6E9 _ 57
        push    ebp                                     ; 1001E6EA _ 55
        push    0                                       ; 1001E6EB _ 6A, 00
        push    0                                       ; 1001E6ED _ 6A, 00
        push    ?_3871                                  ; 1001E6EF _ 68, 1001E6FC(d)
        push    dword [ebp+8H]                          ; 1001E6F4 _ FF. 75, 08
        call    RtlUnwind                               ; 1001E6F7 _ E8, 00005144
?_3871: pop     ebp                                     ; 1001E6FC _ 5D
        pop     edi                                     ; 1001E6FD _ 5F
        pop     esi                                     ; 1001E6FE _ 5E
        pop     ebx                                     ; 1001E6FF _ 5B
        mov     esp, ebp                                ; 1001E700 _ 8B. E5
        pop     ebp                                     ; 1001E702 _ 5D
        ret                                             ; 1001E703 _ C3

?_3872: mov     ecx, dword [esp+4H]                     ; 1001E704 _ 8B. 4C 24, 04
        test    dword [ecx+4H], 6H                      ; 1001E708 _ F7. 41, 04, 00000006
        mov     eax, 1                                  ; 1001E70F _ B8, 00000001
        jz      ?_3873                                  ; 1001E714 _ 74, 0F
        mov     eax, dword [esp+8H]                     ; 1001E716 _ 8B. 44 24, 08
        mov     edx, dword [esp+10H]                    ; 1001E71A _ 8B. 54 24, 10
        mov     dword [edx], eax                        ; 1001E71E _ 89. 02
        mov     eax, 3                                  ; 1001E720 _ B8, 00000003
?_3873: ret                                             ; 1001E725 _ C3

?_3874: push    ebx                                     ; 1001E726 _ 53
        push    esi                                     ; 1001E727 _ 56
        push    edi                                     ; 1001E728 _ 57
        mov     eax, dword [esp+10H]                    ; 1001E729 _ 8B. 44 24, 10
        push    eax                                     ; 1001E72D _ 50
        push    -2                                      ; 1001E72E _ 6A, FE
        push    ?_3872                                  ; 1001E730 _ 68, 1001E704(d)
; Note: Absolute memory address without relocation
        push    dword [fs:0H]                           ; 1001E735 _ 64: FF. 35, 00000000
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], esp                      ; 1001E73C _ 64: 89. 25, 00000000
?_3875: mov     eax, dword [esp+20H]                    ; 1001E743 _ 8B. 44 24, 20
        mov     ebx, dword [eax+8H]                     ; 1001E747 _ 8B. 58, 08
        mov     esi, dword [eax+0CH]                    ; 1001E74A _ 8B. 70, 0C
        cmp     esi, -1                                 ; 1001E74D _ 83. FE, FF
        jz      ?_3877                                  ; 1001E750 _ 74, 2E
        cmp     esi, dword [esp+24H]                    ; 1001E752 _ 3B. 74 24, 24
        jz      ?_3877                                  ; 1001E756 _ 74, 28
        lea     esi, [esi+esi*2]                        ; 1001E758 _ 8D. 34 76
        mov     ecx, dword [ebx+esi*4]                  ; 1001E75B _ 8B. 0C B3
        mov     dword [esp+8H], ecx                     ; 1001E75E _ 89. 4C 24, 08
        mov     dword [eax+0CH], ecx                    ; 1001E762 _ 89. 48, 0C
        cmp     dword [ebx+esi*4+4H], 0                 ; 1001E765 _ 83. 7C B3, 04, 00
        jnz     ?_3876                                  ; 1001E76A _ 75, 12
        push    257                                     ; 1001E76C _ 68, 00000101
        mov     eax, dword [ebx+esi*4+8H]               ; 1001E771 _ 8B. 44 B3, 08
        call    ?_3879                                  ; 1001E775 _ E8, 00000040
        call    near [ebx+esi*4+8H]                     ; 1001E77A _ FF. 54 B3, 08
?_3876: jmp     ?_3875                                  ; 1001E77E _ EB, C3

?_3877:
; Note: Absolute memory address without relocation
        pop     dword [fs:0H]                           ; 1001E780 _ 64: 8F. 05, 00000000
        add     esp, 12                                 ; 1001E787 _ 83. C4, 0C
        pop     edi                                     ; 1001E78A _ 5F
        pop     esi                                     ; 1001E78B _ 5E
        pop     ebx                                     ; 1001E78C _ 5B
        ret                                             ; 1001E78D _ C3

; Note: No jump seems to point here
        xor     eax, eax                                ; 1001E78E _ 33. C0
; Note: Absolute memory address without relocation
        mov     ecx, dword [fs:0H]                      ; 1001E790 _ 64: 8B. 0D, 00000000
        cmp     dword [ecx+4H], ?_3872                  ; 1001E797 _ 81. 79, 04, 1001E704(d)
        jnz     ?_3878                                  ; 1001E79E _ 75, 10
        mov     edx, dword [ecx+0CH]                    ; 1001E7A0 _ 8B. 51, 0C
        mov     edx, dword [edx+0CH]                    ; 1001E7A3 _ 8B. 52, 0C
        cmp     dword [ecx+8H], edx                     ; 1001E7A6 _ 39. 51, 08
        jnz     ?_3878                                  ; 1001E7A9 _ 75, 05
        mov     eax, 1                                  ; 1001E7AB _ B8, 00000001
?_3878: ret                                             ; 1001E7B0 _ C3

; Note: No jump seems to point here
        push    ebx                                     ; 1001E7B1 _ 53
        push    ecx                                     ; 1001E7B2 _ 51
        mov     ebx, ?_5468                             ; 1001E7B3 _ BB, 10033BA0(d)
        jmp     ?_3880                                  ; 1001E7B8 _ EB, 0A

?_3879: push    ebx                                     ; 1001E7BA _ 53
        push    ecx                                     ; 1001E7BB _ 51
        mov     ebx, ?_5468                             ; 1001E7BC _ BB, 10033BA0(d)
        mov     ecx, dword [ebp+8H]                     ; 1001E7C1 _ 8B. 4D, 08
?_3880: mov     dword [ebx+8H], ecx                     ; 1001E7C4 _ 89. 4B, 08
        mov     dword [ebx+4H], eax                     ; 1001E7C7 _ 89. 43, 04
        mov     dword [ebx+0CH], ebp                    ; 1001E7CA _ 89. 6B, 0C
        pop     ecx                                     ; 1001E7CD _ 59
        pop     ebx                                     ; 1001E7CE _ 5B
        ret     4                                       ; 1001E7CF _ C2, 0004

; Filling space: 2H
; Filler type: INT 3 Debug breakpoint
;       db 0CCH, 0CCH

ALIGN   4
; Note: No jump seems to point here
        push    esi                                     ; 1001E7D4 _ 56
        inc     ebx                                     ; 1001E7D5 _ 43
        xor     dh, byte [eax]                          ; 1001E7D6 _ 32. 30
        pop     eax                                     ; 1001E7D8 _ 58
        inc     ebx                                     ; 1001E7D9 _ 43
        xor     byte [eax], dh                          ; 1001E7DA _ 30. 30
?_3881: push    ebp                                     ; 1001E7DC _ 55
        mov     ebp, esp                                ; 1001E7DD _ 8B. EC
        sub     esp, 8                                  ; 1001E7DF _ 83. EC, 08
        push    ebx                                     ; 1001E7E2 _ 53
        push    esi                                     ; 1001E7E3 _ 56
        push    edi                                     ; 1001E7E4 _ 57
        push    ebp                                     ; 1001E7E5 _ 55
        cld                                             ; 1001E7E6 _ FC
        mov     ebx, dword [ebp+0CH]                    ; 1001E7E7 _ 8B. 5D, 0C
        mov     eax, dword [ebp+8H]                     ; 1001E7EA _ 8B. 45, 08
        test    dword [eax+4H], 6H                      ; 1001E7ED _ F7. 40, 04, 00000006
        jne     ?_3886                                  ; 1001E7F4 _ 0F 85, 00000082
        mov     dword [ebp-8H], eax                     ; 1001E7FA _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 1001E7FD _ 8B. 45, 10
        mov     dword [ebp-4H], eax                     ; 1001E800 _ 89. 45, FC
        lea     eax, [ebp-8H]                           ; 1001E803 _ 8D. 45, F8
        mov     dword [ebx-4H], eax                     ; 1001E806 _ 89. 43, FC
        mov     esi, dword [ebx+0CH]                    ; 1001E809 _ 8B. 73, 0C
        mov     edi, dword [ebx+8H]                     ; 1001E80C _ 8B. 7B, 08
?_3882: cmp     esi, -1                                 ; 1001E80F _ 83. FE, FF
        jz      ?_3885                                  ; 1001E812 _ 74, 61
        lea     ecx, [esi+esi*2]                        ; 1001E814 _ 8D. 0C 76
        cmp     dword [edi+ecx*4+4H], 0                 ; 1001E817 _ 83. 7C 8F, 04, 00
        jz      ?_3883                                  ; 1001E81C _ 74, 45
        push    esi                                     ; 1001E81E _ 56
        push    ebp                                     ; 1001E81F _ 55
        lea     ebp, [ebx+10H]                          ; 1001E820 _ 8D. 6B, 10
        call    near [edi+ecx*4+4H]                     ; 1001E823 _ FF. 54 8F, 04
        pop     ebp                                     ; 1001E827 _ 5D
        pop     esi                                     ; 1001E828 _ 5E
        mov     ebx, dword [ebp+0CH]                    ; 1001E829 _ 8B. 5D, 0C
        or      eax, eax                                ; 1001E82C _ 0B. C0
        jz      ?_3883                                  ; 1001E82E _ 74, 33
        js      ?_3884                                  ; 1001E830 _ 78, 3C
        mov     edi, dword [ebx+8H]                     ; 1001E832 _ 8B. 7B, 08
        push    ebx                                     ; 1001E835 _ 53
        call    ?_3870                                  ; 1001E836 _ E8, FFFFFEA9
        add     esp, 4                                  ; 1001E83B _ 83. C4, 04
        lea     ebp, [ebx+10H]                          ; 1001E83E _ 8D. 6B, 10
        push    esi                                     ; 1001E841 _ 56
        push    ebx                                     ; 1001E842 _ 53
        call    ?_3874                                  ; 1001E843 _ E8, FFFFFEDE
        add     esp, 8                                  ; 1001E848 _ 83. C4, 08
        lea     ecx, [esi+esi*2]                        ; 1001E84B _ 8D. 0C 76
        push    1                                       ; 1001E84E _ 6A, 01
        mov     eax, dword [edi+ecx*4+8H]               ; 1001E850 _ 8B. 44 8F, 08
        call    ?_3879                                  ; 1001E854 _ E8, FFFFFF61
        mov     eax, dword [edi+ecx*4]                  ; 1001E859 _ 8B. 04 8F
        mov     dword [ebx+0CH], eax                    ; 1001E85C _ 89. 43, 0C
        call    near [edi+ecx*4+8H]                     ; 1001E85F _ FF. 54 8F, 08
?_3883: mov     edi, dword [ebx+8H]                     ; 1001E863 _ 8B. 7B, 08
        lea     ecx, [esi+esi*2]                        ; 1001E866 _ 8D. 0C 76
        mov     esi, dword [edi+ecx*4]                  ; 1001E869 _ 8B. 34 8F
        jmp     ?_3882                                  ; 1001E86C _ EB, A1

?_3884: mov     eax, 0                                  ; 1001E86E _ B8, 00000000
        jmp     ?_3887                                  ; 1001E873 _ EB, 1C

?_3885: mov     eax, 1                                  ; 1001E875 _ B8, 00000001
        jmp     ?_3887                                  ; 1001E87A _ EB, 15

?_3886: push    ebp                                     ; 1001E87C _ 55
        lea     ebp, [ebx+10H]                          ; 1001E87D _ 8D. 6B, 10
        push    -1                                      ; 1001E880 _ 6A, FF
        push    ebx                                     ; 1001E882 _ 53
        call    ?_3874                                  ; 1001E883 _ E8, FFFFFE9E
        add     esp, 8                                  ; 1001E888 _ 83. C4, 08
        pop     ebp                                     ; 1001E88B _ 5D
        mov     eax, 1                                  ; 1001E88C _ B8, 00000001
?_3887: pop     ebp                                     ; 1001E891 _ 5D
        pop     edi                                     ; 1001E892 _ 5F
        pop     esi                                     ; 1001E893 _ 5E
        pop     ebx                                     ; 1001E894 _ 5B
        mov     esp, ebp                                ; 1001E895 _ 8B. E5
        pop     ebp                                     ; 1001E897 _ 5D
        ret                                             ; 1001E898 _ C3

; Note: No jump seems to point here
        push    ebp                                     ; 1001E899 _ 55
        mov     ecx, dword [esp+8H]                     ; 1001E89A _ 8B. 4C 24, 08
        mov     ebp, dword [ecx]                        ; 1001E89E _ 8B. 29
        mov     eax, dword [ecx+1CH]                    ; 1001E8A0 _ 8B. 41, 1C
        push    eax                                     ; 1001E8A3 _ 50
        mov     eax, dword [ecx+18H]                    ; 1001E8A4 _ 8B. 41, 18
        push    eax                                     ; 1001E8A7 _ 50
        call    ?_3874                                  ; 1001E8A8 _ E8, FFFFFE79
        add     esp, 8                                  ; 1001E8AD _ 83. C4, 08
        pop     ebp                                     ; 1001E8B0 _ 5D
        ret     4                                       ; 1001E8B1 _ C2, 0004

?_3888: push    esi                                     ; 1001E8B4 _ 56
        mov     esi, dword [esp+8H]                     ; 1001E8B5 _ 8B. 74 24, 08
        cmp     esi, dword [?_5811]                     ; 1001E8B9 _ 3B. 35, 11766560(d)
        jnc     ?_3889                                  ; 1001E8BF _ 73, 40
        mov     ecx, esi                                ; 1001E8C1 _ 8B. CE
        mov     eax, esi                                ; 1001E8C3 _ 8B. C6
        sar     ecx, 5                                  ; 1001E8C5 _ C1. F9, 05
        and     eax, 1FH                                ; 1001E8C8 _ 83. E0, 1F
        mov     ecx, dword [?_5809+ecx*4]               ; 1001E8CB _ 8B. 0C 8D, 11766460(d)
        lea     eax, [eax+eax*8]                        ; 1001E8D2 _ 8D. 04 C0
        test    byte [ecx+eax*4+4H], 01H                ; 1001E8D5 _ F6. 44 81, 04, 01
        jz      ?_3889                                  ; 1001E8DA _ 74, 25
        push    edi                                     ; 1001E8DC _ 57
        push    esi                                     ; 1001E8DD _ 56
        call    ?_4220                                  ; 1001E8DE _ E8, 00001ABF
        push    dword [esp+18H]                         ; 1001E8E3 _ FF. 74 24, 18
        push    dword [esp+18H]                         ; 1001E8E7 _ FF. 74 24, 18
        push    esi                                     ; 1001E8EB _ 56
        call    ?_3890                                  ; 1001E8EC _ E8, 00000028
        push    esi                                     ; 1001E8F1 _ 56
        mov     edi, eax                                ; 1001E8F2 _ 8B. F8
        call    ?_4223                                  ; 1001E8F4 _ E8, 00001B08
        add     esp, 20                                 ; 1001E8F9 _ 83. C4, 14
        mov     eax, edi                                ; 1001E8FC _ 8B. C7
        pop     edi                                     ; 1001E8FE _ 5F
        pop     esi                                     ; 1001E8FF _ 5E
        ret                                             ; 1001E900 _ C3

?_3889: call    ?_3107                                  ; 1001E901 _ E8, FFFFBEDF
        mov     dword [eax], 9                          ; 1001E906 _ C7. 00, 00000009
        call    ?_3108                                  ; 1001E90C _ E8, FFFFBEDD
        and     dword [eax], 00H                        ; 1001E911 _ 83. 20, 00
        or      eax, 0FFFFFFFFH                         ; 1001E914 _ 83. C8, FF
        pop     esi                                     ; 1001E917 _ 5E
        ret                                             ; 1001E918 _ C3

?_3890: push    ebp                                     ; 1001E919 _ 55
        mov     ebp, esp                                ; 1001E91A _ 8B. EC
        sub     esp, 1044                               ; 1001E91C _ 81. EC, 00000414
        push    ebx                                     ; 1001E922 _ 53
        push    esi                                     ; 1001E923 _ 56
        push    edi                                     ; 1001E924 _ 57
        xor     edi, edi                                ; 1001E925 _ 33. FF
        cmp     dword [ebp+10H], edi                    ; 1001E927 _ 39. 7D, 10
        mov     dword [ebp-8H], edi                     ; 1001E92A _ 89. 7D, F8
        mov     dword [ebp-10H], edi                    ; 1001E92D _ 89. 7D, F0
        jnz     ?_3892                                  ; 1001E930 _ 75, 07
?_3891: xor     eax, eax                                ; 1001E932 _ 33. C0
        jmp     ?_3908                                  ; 1001E934 _ E9, 00000166

?_3892: mov     eax, dword [ebp+8H]                     ; 1001E939 _ 8B. 45, 08
        sar     eax, 5                                  ; 1001E93C _ C1. F8, 05
        lea     ebx, [?_5809+eax*4]                     ; 1001E93F _ 8D. 1C 85, 11766460(d)
        mov     eax, dword [ebp+8H]                     ; 1001E946 _ 8B. 45, 08
        and     eax, 1FH                                ; 1001E949 _ 83. E0, 1F
        lea     esi, [eax+eax*8]                        ; 1001E94C _ 8D. 34 C0
        mov     eax, dword [ebx]                        ; 1001E94F _ 8B. 03
        shl     esi, 2                                  ; 1001E951 _ C1. E6, 02
        test    byte [eax+esi+4H], 20H                  ; 1001E954 _ F6. 44 30, 04, 20
        jz      ?_3893                                  ; 1001E959 _ 74, 0E
        push    2                                       ; 1001E95B _ 6A, 02
        push    edi                                     ; 1001E95D _ 57
        push    dword [ebp+8H]                          ; 1001E95E _ FF. 75, 08
        call    ?_3577                                  ; 1001E961 _ E8, FFFFE2B4
        add     esp, 12                                 ; 1001E966 _ 83. C4, 0C
?_3893: mov     eax, dword [ebx]                        ; 1001E969 _ 8B. 03
        add     eax, esi                                ; 1001E96B _ 03. C6
        test    byte [eax+4H], 0FFFFFF80H               ; 1001E96D _ F6. 40, 04, 80
        je      ?_3901                                  ; 1001E971 _ 0F 84, 000000C1
        mov     eax, dword [ebp+0CH]                    ; 1001E977 _ 8B. 45, 0C
        cmp     dword [ebp+10H], edi                    ; 1001E97A _ 39. 7D, 10
        mov     dword [ebp-4H], eax                     ; 1001E97D _ 89. 45, FC
        mov     dword [ebp+8H], edi                     ; 1001E980 _ 89. 7D, 08
        jbe     ?_3905                                  ; 1001E983 _ 0F 86, 000000EA
?_3894: lea     eax, [ebp-414H]                         ; 1001E989 _ 8D. 85, FFFFFBEC
?_3895: mov     ecx, dword [ebp-4H]                     ; 1001E98F _ 8B. 4D, FC
        sub     ecx, dword [ebp+0CH]                    ; 1001E992 _ 2B. 4D, 0C
        cmp     ecx, dword [ebp+10H]                    ; 1001E995 _ 3B. 4D, 10
        jnc     ?_3897                                  ; 1001E998 _ 73, 29
        mov     ecx, dword [ebp-4H]                     ; 1001E99A _ 8B. 4D, FC
        inc     dword [ebp-4H]                          ; 1001E99D _ FF. 45, FC
        mov     cl, byte [ecx]                          ; 1001E9A0 _ 8A. 09
        cmp     cl, 10                                  ; 1001E9A2 _ 80. F9, 0A
        jnz     ?_3896                                  ; 1001E9A5 _ 75, 07
        inc     dword [ebp-10H]                         ; 1001E9A7 _ FF. 45, F0
        mov     byte [eax], 13                          ; 1001E9AA _ C6. 00, 0D
        inc     eax                                     ; 1001E9AD _ 40
?_3896: mov     byte [eax], cl                          ; 1001E9AE _ 88. 08
        inc     eax                                     ; 1001E9B0 _ 40
        mov     ecx, eax                                ; 1001E9B1 _ 8B. C8
        lea     edx, [ebp-414H]                         ; 1001E9B3 _ 8D. 95, FFFFFBEC
        sub     ecx, edx                                ; 1001E9B9 _ 2B. CA
        cmp     ecx, 1024                               ; 1001E9BB _ 81. F9, 00000400
        jl      ?_3895                                  ; 1001E9C1 _ 7C, CC
?_3897: mov     edi, eax                                ; 1001E9C3 _ 8B. F8
        lea     eax, [ebp-414H]                         ; 1001E9C5 _ 8D. 85, FFFFFBEC
        sub     edi, eax                                ; 1001E9CB _ 2B. F8
        lea     eax, [ebp-0CH]                          ; 1001E9CD _ 8D. 45, F4
        push    0                                       ; 1001E9D0 _ 6A, 00
        push    eax                                     ; 1001E9D2 _ 50
        lea     eax, [ebp-414H]                         ; 1001E9D3 _ 8D. 85, FFFFFBEC
        push    edi                                     ; 1001E9D9 _ 57
        push    eax                                     ; 1001E9DA _ 50
        mov     eax, dword [ebx]                        ; 1001E9DB _ 8B. 03
        push    dword [eax+esi]                         ; 1001E9DD _ FF. 34 30
        call    near [imp_WriteFile]                    ; 1001E9E0 _ FF. 15, 10024024(d)
        test    eax, eax                                ; 1001E9E6 _ 85. C0
        jz      ?_3900                                  ; 1001E9E8 _ 74, 43
        mov     eax, dword [ebp-0CH]                    ; 1001E9EA _ 8B. 45, F4
        add     dword [ebp-8H], eax                     ; 1001E9ED _ 01. 45, F8
        cmp     eax, edi                                ; 1001E9F0 _ 3B. C7
        jl      ?_3898                                  ; 1001E9F2 _ 7C, 0B
        mov     eax, dword [ebp-4H]                     ; 1001E9F4 _ 8B. 45, FC
        sub     eax, dword [ebp+0CH]                    ; 1001E9F7 _ 2B. 45, 0C
        cmp     eax, dword [ebp+10H]                    ; 1001E9FA _ 3B. 45, 10
        jc      ?_3894                                  ; 1001E9FD _ 72, 8A
?_3898: xor     edi, edi                                ; 1001E9FF _ 33. FF
?_3899: mov     eax, dword [ebp-8H]                     ; 1001EA01 _ 8B. 45, F8
        cmp     eax, edi                                ; 1001EA04 _ 3B. C7
        jne     ?_3907                                  ; 1001EA06 _ 0F 85, 00000090
        cmp     dword [ebp+8H], edi                     ; 1001EA0C _ 39. 7D, 08
        jz      ?_3905                                  ; 1001EA0F _ 74, 62
        push    5                                       ; 1001EA11 _ 6A, 05
        pop     esi                                     ; 1001EA13 _ 5E
        cmp     dword [ebp+8H], esi                     ; 1001EA14 _ 39. 75, 08
        jnz     ?_3903                                  ; 1001EA17 _ 75, 4C
        call    ?_3107                                  ; 1001EA19 _ E8, FFFFBDC7
        mov     dword [eax], 9                          ; 1001EA1E _ C7. 00, 00000009
        call    ?_3108                                  ; 1001EA24 _ E8, FFFFBDC5
        mov     dword [eax], esi                        ; 1001EA29 _ 89. 30
        jmp     ?_3904                                  ; 1001EA2B _ EB, 41

?_3900: call    near [imp_GetLastError]                 ; 1001EA2D _ FF. 15, 100240DC(d)
        mov     dword [ebp+8H], eax                     ; 1001EA33 _ 89. 45, 08
        jmp     ?_3898                                  ; 1001EA36 _ EB, C7

?_3901: lea     ecx, [ebp-0CH]                          ; 1001EA38 _ 8D. 4D, F4
        push    edi                                     ; 1001EA3B _ 57
        push    ecx                                     ; 1001EA3C _ 51
        push    dword [ebp+10H]                         ; 1001EA3D _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1001EA40 _ FF. 75, 0C
        push    dword [eax]                             ; 1001EA43 _ FF. 30
        call    near [imp_WriteFile]                    ; 1001EA45 _ FF. 15, 10024024(d)
        test    eax, eax                                ; 1001EA4B _ 85. C0
        jz      ?_3902                                  ; 1001EA4D _ 74, 0B
        mov     eax, dword [ebp-0CH]                    ; 1001EA4F _ 8B. 45, F4
        mov     dword [ebp+8H], edi                     ; 1001EA52 _ 89. 7D, 08
        mov     dword [ebp-8H], eax                     ; 1001EA55 _ 89. 45, F8
        jmp     ?_3899                                  ; 1001EA58 _ EB, A7

?_3902: call    near [imp_GetLastError]                 ; 1001EA5A _ FF. 15, 100240DC(d)
        mov     dword [ebp+8H], eax                     ; 1001EA60 _ 89. 45, 08
        jmp     ?_3899                                  ; 1001EA63 _ EB, 9C

?_3903: push    dword [ebp+8H]                          ; 1001EA65 _ FF. 75, 08
        call    ?_3102                                  ; 1001EA68 _ E8, FFFFBD05
        pop     ecx                                     ; 1001EA6D _ 59
?_3904: or      eax, 0FFFFFFFFH                         ; 1001EA6E _ 83. C8, FF
        jmp     ?_3908                                  ; 1001EA71 _ EB, 2C

?_3905: mov     eax, dword [ebx]                        ; 1001EA73 _ 8B. 03
        test    byte [eax+esi+4H], 40H                  ; 1001EA75 _ F6. 44 30, 04, 40
        jz      ?_3906                                  ; 1001EA7A _ 74, 0C
        mov     eax, dword [ebp+0CH]                    ; 1001EA7C _ 8B. 45, 0C
        cmp     byte [eax], 26                          ; 1001EA7F _ 80. 38, 1A
        je      ?_3891                                  ; 1001EA82 _ 0F 84, FFFFFEAA
?_3906: call    ?_3107                                  ; 1001EA88 _ E8, FFFFBD58
        mov     dword [eax], 28                         ; 1001EA8D _ C7. 00, 0000001C
        call    ?_3108                                  ; 1001EA93 _ E8, FFFFBD56
        mov     dword [eax], edi                        ; 1001EA98 _ 89. 38
        jmp     ?_3904                                  ; 1001EA9A _ EB, D2

?_3907: sub     eax, dword [ebp-10H]                    ; 1001EA9C _ 2B. 45, F0
?_3908: pop     edi                                     ; 1001EA9F _ 5F
        pop     esi                                     ; 1001EAA0 _ 5E
        pop     ebx                                     ; 1001EAA1 _ 5B
        leave                                           ; 1001EAA2 _ C9
        ret                                             ; 1001EAA3 _ C3

; Filling space: 0CH
; Filler type: INT 3 Debug breakpoint
;       db 0CCH, 0CCH, 0CCH, 0CCH, 0CCH, 0CCH, 0CCH, 0CCH
;       db 0CCH, 0CCH, 0CCH, 0CCH

ALIGN   16
?_3909: push    ebp                                     ; 1001EAB0 _ 55
        mov     ebp, esp                                ; 1001EAB1 _ 8B. EC
        push    edi                                     ; 1001EAB3 _ 57
        push    esi                                     ; 1001EAB4 _ 56
        mov     esi, dword [ebp+0CH]                    ; 1001EAB5 _ 8B. 75, 0C
        mov     ecx, dword [ebp+10H]                    ; 1001EAB8 _ 8B. 4D, 10
        mov     edi, dword [ebp+8H]                     ; 1001EABB _ 8B. 7D, 08
        mov     eax, ecx                                ; 1001EABE _ 8B. C1
        mov     edx, ecx                                ; 1001EAC0 _ 8B. D1
        add     eax, esi                                ; 1001EAC2 _ 03. C6
        cmp     edi, esi                                ; 1001EAC4 _ 3B. FE
        jbe     ?_3910                                  ; 1001EAC6 _ 76, 08
        cmp     edi, eax                                ; 1001EAC8 _ 3B. F8
        jc      ?_3932                                  ; 1001EACA _ 0F 82, 00000178
?_3910: test    edi, 3H                                 ; 1001EAD0 _ F7. C7, 00000003
        jnz     ?_3911                                  ; 1001EAD6 _ 75, 14
        shr     ecx, 2                                  ; 1001EAD8 _ C1. E9, 02
        and     edx, 03H                                ; 1001EADB _ 83. E2, 03
        cmp     ecx, 8                                  ; 1001EADE _ 83. F9, 08
        jc      ?_3913                                  ; 1001EAE1 _ 72, 29
        rep movsd                                       ; 1001EAE3 _ F3: A5
        jmp     near [?_3927+edx*4]                     ; 1001EAE5 _ FF. 24 95, 1001EBF8(d)

?_3911: mov     eax, edi                                ; 1001EAEC _ 8B. C7
        mov     edx, 3                                  ; 1001EAEE _ BA, 00000003
        sub     ecx, 4                                  ; 1001EAF3 _ 83. E9, 04
        jc      ?_3912                                  ; 1001EAF6 _ 72, 0C
        and     eax, 03H                                ; 1001EAF8 _ 83. E0, 03
        add     ecx, eax                                ; 1001EAFB _ 03. C8
        jmp     near [?_3914+eax*4]                     ; 1001EAFD _ FF. 24 85, 1001EB10(d)

?_3912: jmp     near [?_3928+ecx*4]                     ; 1001EB04 _ FF. 24 8D, 1001EC08(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
?_3913:
; Warning: Label out of phase with instruction. Possibly spurious
; ?_3914; Misplaced symbol at address 0001DB10
        jmp     near [?_3918+ecx*4]                     ; 1001EB0C _ FF. 24 8D, 1001EB8C(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
; Error: Relocation source does not match address or operand field
; Note: No jump seems to point here
;       and     bl, ch                                  ; 1001EB14 _ 20(d) Misplaced relocation.. EB
        dd ?_3915
; Error: Relocation source does not match address or operand field
;       dec     esp                                     ; 1001EB18 _ 4C(d) Misplaced relocation.
        dd ?_3916

; Error: Relocation source does not match address or operand field
; Note: No jump seems to point here
;       adc     byte [eax-15H], dh                      ; 1001EB1B _ 10. 70(d) Misplaced relocation., EB
        db 10H
        dd ?_3917
?_3915: and     edx, ecx                                ; 1001EB20 _ 23. D1
        mov     al, byte [esi]                          ; 1001EB22 _ 8A. 06
        mov     byte [edi], al                          ; 1001EB24 _ 88. 07
        mov     al, byte [esi+1H]                       ; 1001EB26 _ 8A. 46, 01
        mov     byte [edi+1H], al                       ; 1001EB29 _ 88. 47, 01
        mov     al, byte [esi+2H]                       ; 1001EB2C _ 8A. 46, 02
        shr     ecx, 2                                  ; 1001EB2F _ C1. E9, 02
        mov     byte [edi+2H], al                       ; 1001EB32 _ 88. 47, 02
        add     esi, 3                                  ; 1001EB35 _ 83. C6, 03
        add     edi, 3                                  ; 1001EB38 _ 83. C7, 03
        cmp     ecx, 8                                  ; 1001EB3B _ 83. F9, 08
        jc      ?_3913                                  ; 1001EB3E _ 72, CC
        rep movsd                                       ; 1001EB40 _ F3: A5
        jmp     near [?_3927+edx*4]                     ; 1001EB42 _ FF. 24 95, 1001EBF8(d)

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4
?_3916: and     edx, ecx                                ; 1001EB4C _ 23. D1
        mov     al, byte [esi]                          ; 1001EB4E _ 8A. 06
        mov     byte [edi], al                          ; 1001EB50 _ 88. 07
        mov     al, byte [esi+1H]                       ; 1001EB52 _ 8A. 46, 01
        shr     ecx, 2                                  ; 1001EB55 _ C1. E9, 02
        mov     byte [edi+1H], al                       ; 1001EB58 _ 88. 47, 01
        add     esi, 2                                  ; 1001EB5B _ 83. C6, 02
        add     edi, 2                                  ; 1001EB5E _ 83. C7, 02
        cmp     ecx, 8                                  ; 1001EB61 _ 83. F9, 08
        jc      ?_3913                                  ; 1001EB64 _ 72, A6
        rep movsd                                       ; 1001EB66 _ F3: A5
        jmp     near [?_3927+edx*4]                     ; 1001EB68 _ FF. 24 95, 1001EBF8(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3917: and     edx, ecx                                ; 1001EB70 _ 23. D1
        mov     al, byte [esi]                          ; 1001EB72 _ 8A. 06
        mov     byte [edi], al                          ; 1001EB74 _ 88. 07
        inc     esi                                     ; 1001EB76 _ 46
        shr     ecx, 2                                  ; 1001EB77 _ C1. E9, 02
        inc     edi                                     ; 1001EB7A _ 47
        cmp     ecx, 8                                  ; 1001EB7B _ 83. F9, 08
        jc      ?_3913                                  ; 1001EB7E _ 72, 8C
        rep movsd                                       ; 1001EB80 _ F3: A5
        jmp     near [?_3927+edx*4]                     ; 1001EB82 _ FF. 24 95, 1001EBF8(d)

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4

?_3918:                                                 ; switch/case jump table
        dd ?_3926                                       ; 1001EB8C _ 1001EBEF (d)
        dd ?_3925                                       ; 1001EB90 _ 1001EBDC (d)
        dd ?_3924                                       ; 1001EB94 _ 1001EBD4 (d)
        dd ?_3923                                       ; 1001EB98 _ 1001EBCC (d)
        dd ?_3922                                       ; 1001EB9C _ 1001EBC4 (d)
        dd ?_3921                                       ; 1001EBA0 _ 1001EBBC (d)
        dd ?_3920                                       ; 1001EBA4 _ 1001EBB4 (d)
        dd ?_3919                                       ; 1001EBA8 _ 1001EBAC (d)
?_3919: mov     eax, dword [esi+ecx*4-1CH]              ; 1001EBAC _ 8B. 44 8E, E4
        mov     dword [edi+ecx*4-1CH], eax              ; 1001EBB0 _ 89. 44 8F, E4
?_3920: mov     eax, dword [esi+ecx*4-18H]              ; 1001EBB4 _ 8B. 44 8E, E8
        mov     dword [edi+ecx*4-18H], eax              ; 1001EBB8 _ 89. 44 8F, E8
?_3921: mov     eax, dword [esi+ecx*4-14H]              ; 1001EBBC _ 8B. 44 8E, EC
        mov     dword [edi+ecx*4-14H], eax              ; 1001EBC0 _ 89. 44 8F, EC
?_3922: mov     eax, dword [esi+ecx*4-10H]              ; 1001EBC4 _ 8B. 44 8E, F0
        mov     dword [edi+ecx*4-10H], eax              ; 1001EBC8 _ 89. 44 8F, F0
?_3923: mov     eax, dword [esi+ecx*4-0CH]              ; 1001EBCC _ 8B. 44 8E, F4
        mov     dword [edi+ecx*4-0CH], eax              ; 1001EBD0 _ 89. 44 8F, F4
?_3924: mov     eax, dword [esi+ecx*4-8H]               ; 1001EBD4 _ 8B. 44 8E, F8
        mov     dword [edi+ecx*4-8H], eax               ; 1001EBD8 _ 89. 44 8F, F8
?_3925: mov     eax, dword [esi+ecx*4-4H]               ; 1001EBDC _ 8B. 44 8E, FC
        mov     dword [edi+ecx*4-4H], eax               ; 1001EBE0 _ 89. 44 8F, FC
        lea     eax, [ecx*4]                            ; 1001EBE4 _ 8D. 04 8D, 00000000
        add     esi, eax                                ; 1001EBEB _ 03. F0
        add     edi, eax                                ; 1001EBED _ 03. F8
?_3926: jmp     near [?_3927+edx*4]                     ; 1001EBEF _ FF. 24 95, 1001EBF8(d)

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   8

?_3927:                                                 ; switch/case jump table
        dd ?_3928                                       ; 1001EBF8 _ 1001EC08 (d)
        dd ?_3929                                       ; 1001EBFC _ 1001EC10 (d)
        dd ?_3930                                       ; 1001EC00 _ 1001EC1C (d)
        dd ?_3931                                       ; 1001EC04 _ 1001EC30 (d)
?_3928: mov     eax, dword [ebp+8H]                     ; 1001EC08 _ 8B. 45, 08
        pop     esi                                     ; 1001EC0B _ 5E
        pop     edi                                     ; 1001EC0C _ 5F
        leave                                           ; 1001EC0D _ C9
        ret                                             ; 1001EC0E _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3929: mov     al, byte [esi]                          ; 1001EC10 _ 8A. 06
        mov     byte [edi], al                          ; 1001EC12 _ 88. 07
        mov     eax, dword [ebp+8H]                     ; 1001EC14 _ 8B. 45, 08
        pop     esi                                     ; 1001EC17 _ 5E
        pop     edi                                     ; 1001EC18 _ 5F
        leave                                           ; 1001EC19 _ C9
        ret                                             ; 1001EC1A _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
?_3930: mov     al, byte [esi]                          ; 1001EC1C _ 8A. 06
        mov     byte [edi], al                          ; 1001EC1E _ 88. 07
        mov     al, byte [esi+1H]                       ; 1001EC20 _ 8A. 46, 01
        mov     byte [edi+1H], al                       ; 1001EC23 _ 88. 47, 01
        mov     eax, dword [ebp+8H]                     ; 1001EC26 _ 8B. 45, 08
        pop     esi                                     ; 1001EC29 _ 5E
        pop     edi                                     ; 1001EC2A _ 5F
        leave                                           ; 1001EC2B _ C9
        ret                                             ; 1001EC2C _ C3

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   8
?_3931: mov     al, byte [esi]                          ; 1001EC30 _ 8A. 06
        mov     byte [edi], al                          ; 1001EC32 _ 88. 07
        mov     al, byte [esi+1H]                       ; 1001EC34 _ 8A. 46, 01
        mov     byte [edi+1H], al                       ; 1001EC37 _ 88. 47, 01
        mov     al, byte [esi+2H]                       ; 1001EC3A _ 8A. 46, 02
        mov     byte [edi+2H], al                       ; 1001EC3D _ 88. 47, 02
        mov     eax, dword [ebp+8H]                     ; 1001EC40 _ 8B. 45, 08
        pop     esi                                     ; 1001EC43 _ 5E
        pop     edi                                     ; 1001EC44 _ 5F
        leave                                           ; 1001EC45 _ C9
        ret                                             ; 1001EC46 _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3932: lea     esi, [ecx+esi-4H]                       ; 1001EC48 _ 8D. 74 31, FC
        lea     edi, [ecx+edi-4H]                       ; 1001EC4C _ 8D. 7C 39, FC
        test    edi, 3H                                 ; 1001EC50 _ F7. C7, 00000003
        jnz     ?_3934                                  ; 1001EC56 _ 75, 24
        shr     ecx, 2                                  ; 1001EC58 _ C1. E9, 02
        and     edx, 03H                                ; 1001EC5B _ 83. E2, 03
        cmp     ecx, 8                                  ; 1001EC5E _ 83. F9, 08
        jc      ?_3933                                  ; 1001EC61 _ 72, 0D
        std                                             ; 1001EC63 _ FD
        rep movsd                                       ; 1001EC64 _ F3: A5
        cld                                             ; 1001EC66 _ FC
        jmp     near [?_3949+edx*4]                     ; 1001EC67 _ FF. 24 95, 1001ED90(d)

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   8
?_3933: neg     ecx                                     ; 1001EC70 _ F7. D9
        jmp     near [?_3940+ecx*4]                     ; 1001EC72 _ FF. 24 8D, 1001ED40(d)

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   4
?_3934: mov     eax, edi                                ; 1001EC7C _ 8B. C7
        mov     edx, 3                                  ; 1001EC7E _ BA, 00000003
        cmp     ecx, 4                                  ; 1001EC83 _ 83. F9, 04
        jc      ?_3935                                  ; 1001EC86 _ 72, 0C
        and     eax, 03H                                ; 1001EC88 _ 83. E0, 03
        sub     ecx, eax                                ; 1001EC8B _ 2B. C8
        jmp     near [?_3936+eax*4]                     ; 1001EC8D _ FF. 24 85, 1001EC98(d)

?_3935:
; Warning: Label out of phase with instruction. Possibly spurious
; ?_3936; Misplaced symbol at address 0001DC98
        jmp     near [?_3949+ecx*4]                     ; 1001EC94 _ FF. 24 8D, 1001ED90(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
; Error: Relocation source does not match address or operand field
; Note: No jump seems to point here
;       test    al, 0FFFFFFECH                          ; 1001EC9C _ A8(d) Misplaced relocation., EC
        dd ?_3937
; Error: Relocation source does not match address or operand field
;       enter   236, 16                                 ; 1001ECA0 _ C8(d) Misplaced relocation., 01EC, 10
        dd ?_3938
; Error: Lock prefix not allowed for this opcode
; Error: Relocation source does not match address or operand field
;       lock in al, dx                                  ; 1001ECA4 _ F0(d) Misplaced relocation.: EC
        dd ?_3939
?_3937: mov     al, byte [esi+3H]                       ; 1001ECA8 _ 8A. 46, 03
        and     edx, ecx                                ; 1001ECAB _ 23. D1
        mov     byte [edi+3H], al                       ; 1001ECAD _ 88. 47, 03
        dec     esi                                     ; 1001ECB0 _ 4E
        shr     ecx, 2                                  ; 1001ECB1 _ C1. E9, 02
        dec     edi                                     ; 1001ECB4 _ 4F
        cmp     ecx, 8                                  ; 1001ECB5 _ 83. F9, 08
        jc      ?_3933                                  ; 1001ECB8 _ 72, B6
        std                                             ; 1001ECBA _ FD
        rep movsd                                       ; 1001ECBB _ F3: A5
        cld                                             ; 1001ECBD _ FC
        jmp     near [?_3949+edx*4]                     ; 1001ECBE _ FF. 24 95, 1001ED90(d)

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   8
?_3938: mov     al, byte [esi+3H]                       ; 1001ECC8 _ 8A. 46, 03
        and     edx, ecx                                ; 1001ECCB _ 23. D1
        mov     byte [edi+3H], al                       ; 1001ECCD _ 88. 47, 03
        mov     al, byte [esi+2H]                       ; 1001ECD0 _ 8A. 46, 02
        shr     ecx, 2                                  ; 1001ECD3 _ C1. E9, 02
        mov     byte [edi+2H], al                       ; 1001ECD6 _ 88. 47, 02
        sub     esi, 2                                  ; 1001ECD9 _ 83. EE, 02
        sub     edi, 2                                  ; 1001ECDC _ 83. EF, 02
        cmp     ecx, 8                                  ; 1001ECDF _ 83. F9, 08
        jc      ?_3933                                  ; 1001ECE2 _ 72, 8C
        std                                             ; 1001ECE4 _ FD
        rep movsd                                       ; 1001ECE5 _ F3: A5
        cld                                             ; 1001ECE7 _ FC
        jmp     near [?_3949+edx*4]                     ; 1001ECE8 _ FF. 24 95, 1001ED90(d)

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3939: mov     al, byte [esi+3H]                       ; 1001ECF0 _ 8A. 46, 03
        and     edx, ecx                                ; 1001ECF3 _ 23. D1
        mov     byte [edi+3H], al                       ; 1001ECF5 _ 88. 47, 03
        mov     al, byte [esi+2H]                       ; 1001ECF8 _ 8A. 46, 02
        mov     byte [edi+2H], al                       ; 1001ECFB _ 88. 47, 02
        mov     al, byte [esi+1H]                       ; 1001ECFE _ 8A. 46, 01
        shr     ecx, 2                                  ; 1001ED01 _ C1. E9, 02
        mov     byte [edi+1H], al                       ; 1001ED04 _ 88. 47, 01
        sub     esi, 3                                  ; 1001ED07 _ 83. EE, 03
        sub     edi, 3                                  ; 1001ED0A _ 83. EF, 03
        cmp     ecx, 8                                  ; 1001ED0D _ 83. F9, 08
        jc      ?_3933                                  ; 1001ED10 _ 0F 82, FFFFFF5A
        std                                             ; 1001ED16 _ FD
        rep movsd                                       ; 1001ED17 _ F3: A5
        cld                                             ; 1001ED19 _ FC
        jmp     near [?_3949+edx*4]                     ; 1001ED1A _ FF. 24 95, 1001ED90(d)

        db 8DH, 49H, 00H                                ; 1001ED21 _ .I.
        dd ?_3941                                       ; 1001ED24 _ 1001ED44 (d)
        dd ?_3942                                       ; 1001ED28 _ 1001ED4C (d)
        dd ?_3943                                       ; 1001ED2C _ 1001ED54 (d)
        dd ?_3944                                       ; 1001ED30 _ 1001ED5C (d)
        dd ?_3945                                       ; 1001ED34 _ 1001ED64 (d)
        dd ?_3946                                       ; 1001ED38 _ 1001ED6C (d)
        dd ?_3947                                       ; 1001ED3C _ 1001ED74 (d)

?_3940:                                                 ; switch/case jump table
        dd ?_3948                                       ; 1001ED40 _ 1001ED87 (d)
?_3941: mov     eax, dword [esi+ecx*4+1CH]              ; 1001ED44 _ 8B. 44 8E, 1C
        mov     dword [edi+ecx*4+1CH], eax              ; 1001ED48 _ 89. 44 8F, 1C
?_3942: mov     eax, dword [esi+ecx*4+18H]              ; 1001ED4C _ 8B. 44 8E, 18
        mov     dword [edi+ecx*4+18H], eax              ; 1001ED50 _ 89. 44 8F, 18
?_3943: mov     eax, dword [esi+ecx*4+14H]              ; 1001ED54 _ 8B. 44 8E, 14
        mov     dword [edi+ecx*4+14H], eax              ; 1001ED58 _ 89. 44 8F, 14
?_3944: mov     eax, dword [esi+ecx*4+10H]              ; 1001ED5C _ 8B. 44 8E, 10
        mov     dword [edi+ecx*4+10H], eax              ; 1001ED60 _ 89. 44 8F, 10
?_3945: mov     eax, dword [esi+ecx*4+0CH]              ; 1001ED64 _ 8B. 44 8E, 0C
        mov     dword [edi+ecx*4+0CH], eax              ; 1001ED68 _ 89. 44 8F, 0C
?_3946: mov     eax, dword [esi+ecx*4+8H]               ; 1001ED6C _ 8B. 44 8E, 08
        mov     dword [edi+ecx*4+8H], eax               ; 1001ED70 _ 89. 44 8F, 08
?_3947: mov     eax, dword [esi+ecx*4+4H]               ; 1001ED74 _ 8B. 44 8E, 04
        mov     dword [edi+ecx*4+4H], eax               ; 1001ED78 _ 89. 44 8F, 04
        lea     eax, [ecx*4]                            ; 1001ED7C _ 8D. 04 8D, 00000000
        add     esi, eax                                ; 1001ED83 _ 03. F0
        add     edi, eax                                ; 1001ED85 _ 03. F8
?_3948: jmp     near [?_3949+edx*4]                     ; 1001ED87 _ FF. 24 95, 1001ED90(d)

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   8

?_3949:                                                 ; switch/case jump table
        dd ?_3950                                       ; 1001ED90 _ 1001EDA0 (d)
        dd ?_3951                                       ; 1001ED94 _ 1001EDA8 (d)
        dd ?_3952                                       ; 1001ED98 _ 1001EDB8 (d)
        dd ?_3953                                       ; 1001ED9C _ 1001EDCC (d)
?_3950: mov     eax, dword [ebp+8H]                     ; 1001EDA0 _ 8B. 45, 08
        pop     esi                                     ; 1001EDA3 _ 5E
        pop     edi                                     ; 1001EDA4 _ 5F
        leave                                           ; 1001EDA5 _ C9
        ret                                             ; 1001EDA6 _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_3951: mov     al, byte [esi+3H]                       ; 1001EDA8 _ 8A. 46, 03
        mov     byte [edi+3H], al                       ; 1001EDAB _ 88. 47, 03
        mov     eax, dword [ebp+8H]                     ; 1001EDAE _ 8B. 45, 08
        pop     esi                                     ; 1001EDB1 _ 5E
        pop     edi                                     ; 1001EDB2 _ 5F
        leave                                           ; 1001EDB3 _ C9
        ret                                             ; 1001EDB4 _ C3

; Filling space: 3H
; Filler type: lea with same source and destination
;       db 8DH, 49H, 00H

ALIGN   8
?_3952: mov     al, byte [esi+3H]                       ; 1001EDB8 _ 8A. 46, 03
        mov     byte [edi+3H], al                       ; 1001EDBB _ 88. 47, 03
        mov     al, byte [esi+2H]                       ; 1001EDBE _ 8A. 46, 02
        mov     byte [edi+2H], al                       ; 1001EDC1 _ 88. 47, 02
        mov     eax, dword [ebp+8H]                     ; 1001EDC4 _ 8B. 45, 08
        pop     esi                                     ; 1001EDC7 _ 5E
        pop     edi                                     ; 1001EDC8 _ 5F
        leave                                           ; 1001EDC9 _ C9
        ret                                             ; 1001EDCA _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   4
?_3953: mov     al, byte [esi+3H]                       ; 1001EDCC _ 8A. 46, 03
        mov     byte [edi+3H], al                       ; 1001EDCF _ 88. 47, 03
        mov     al, byte [esi+2H]                       ; 1001EDD2 _ 8A. 46, 02
        mov     byte [edi+2H], al                       ; 1001EDD5 _ 88. 47, 02
        mov     al, byte [esi+1H]                       ; 1001EDD8 _ 8A. 46, 01
        mov     byte [edi+1H], al                       ; 1001EDDB _ 88. 47, 01
        mov     eax, dword [ebp+8H]                     ; 1001EDDE _ 8B. 45, 08
        pop     esi                                     ; 1001EDE1 _ 5E
        pop     edi                                     ; 1001EDE2 _ 5F
        leave                                           ; 1001EDE3 _ C9
        ret                                             ; 1001EDE4 _ C3

?_3954: push    esi                                     ; 1001EDE5 _ 56
        mov     esi, dword [esp+8H]                     ; 1001EDE6 _ 8B. 74 24, 08
        mov     eax, dword [esi+0CH]                    ; 1001EDEA _ 8B. 46, 0C
        test    al, 0FFFFFF83H                          ; 1001EDED _ A8, 83
        je      ?_3963                                  ; 1001EDEF _ 0F 84, 000000C7
        test    al, 40H                                 ; 1001EDF5 _ A8, 40
        jne     ?_3963                                  ; 1001EDF7 _ 0F 85, 000000BF
        test    al, 02H                                 ; 1001EDFD _ A8, 02
        jz      ?_3955                                  ; 1001EDFF _ 74, 0A
        or      al, 20H                                 ; 1001EE01 _ 0C, 20
        mov     dword [esi+0CH], eax                    ; 1001EE03 _ 89. 46, 0C
        jmp     ?_3963                                  ; 1001EE06 _ E9, 000000B1

?_3955: or      al, 01H                                 ; 1001EE0B _ 0C, 01
; Note: Length-changing prefix causes delay on Intel processors
        test    ax, 10CH                                ; 1001EE0D _ 66: A9, 010C
        mov     dword [esi+0CH], eax                    ; 1001EE11 _ 89. 46, 0C
        jnz     ?_3956                                  ; 1001EE14 _ 75, 09
        push    esi                                     ; 1001EE16 _ 56
        call    ?_4263                                  ; 1001EE17 _ E8, 000018FF
        pop     ecx                                     ; 1001EE1C _ 59
        jmp     ?_3957                                  ; 1001EE1D _ EB, 05

?_3956: mov     eax, dword [esi+8H]                     ; 1001EE1F _ 8B. 46, 08
        mov     dword [esi], eax                        ; 1001EE22 _ 89. 06
?_3957: push    dword [esi+18H]                         ; 1001EE24 _ FF. 76, 18
        push    dword [esi+8H]                          ; 1001EE27 _ FF. 76, 08
        push    dword [esi+10H]                         ; 1001EE2A _ FF. 76, 10
        call    ?_3964                                  ; 1001EE2D _ E8, 0000008F
        add     esp, 12                                 ; 1001EE32 _ 83. C4, 0C
        mov     dword [esi+4H], eax                     ; 1001EE35 _ 89. 46, 04
        test    eax, eax                                ; 1001EE38 _ 85. C0
        jz      ?_3962                                  ; 1001EE3A _ 74, 6F
        cmp     eax, -1                                 ; 1001EE3C _ 83. F8, FF
        jz      ?_3962                                  ; 1001EE3F _ 74, 6A
        mov     edx, dword [esi+0CH]                    ; 1001EE41 _ 8B. 56, 0C
        test    dl, 0FFFFFF82H                          ; 1001EE44 _ F6. C2, 82
        jnz     ?_3960                                  ; 1001EE47 _ 75, 37
        mov     ecx, dword [esi+10H]                    ; 1001EE49 _ 8B. 4E, 10
        push    edi                                     ; 1001EE4C _ 57
        cmp     ecx, -1                                 ; 1001EE4D _ 83. F9, FF
        jz      ?_3958                                  ; 1001EE50 _ 74, 17
        mov     edi, ecx                                ; 1001EE52 _ 8B. F9
        sar     edi, 5                                  ; 1001EE54 _ C1. FF, 05
        and     ecx, 1FH                                ; 1001EE57 _ 83. E1, 1F
        mov     edi, dword [?_5809+edi*4]               ; 1001EE5A _ 8B. 3C BD, 11766460(d)
        lea     ecx, [ecx+ecx*8]                        ; 1001EE61 _ 8D. 0C C9
        lea     edi, [edi+ecx*4]                        ; 1001EE64 _ 8D. 3C 8F
        jmp     ?_3959                                  ; 1001EE67 _ EB, 05

?_3958: mov     edi, ?_5455                             ; 1001EE69 _ BF, 10031A88(d)
?_3959: mov     cl, byte [edi+4H]                       ; 1001EE6E _ 8A. 4F, 04
        pop     edi                                     ; 1001EE71 _ 5F
        and     cl, 0FFFFFF82H                          ; 1001EE72 _ 80. E1, 82
        cmp     cl, -126                                ; 1001EE75 _ 80. F9, 82
        jnz     ?_3960                                  ; 1001EE78 _ 75, 06
        or      dh, 20H                                 ; 1001EE7A _ 80. CE, 20
        mov     dword [esi+0CH], edx                    ; 1001EE7D _ 89. 56, 0C
?_3960: cmp     dword [esi+18H], 512                    ; 1001EE80 _ 81. 7E, 18, 00000200
        jnz     ?_3961                                  ; 1001EE87 _ 75, 14
        mov     ecx, dword [esi+0CH]                    ; 1001EE89 _ 8B. 4E, 0C
        test    cl, 08H                                 ; 1001EE8C _ F6. C1, 08
        jz      ?_3961                                  ; 1001EE8F _ 74, 0C
        test    ch, 04H                                 ; 1001EE91 _ F6. C5, 04
        jnz     ?_3961                                  ; 1001EE94 _ 75, 07
        mov     dword [esi+18H], 4096                   ; 1001EE96 _ C7. 46, 18, 00001000
?_3961: mov     ecx, dword [esi]                        ; 1001EE9D _ 8B. 0E
        dec     eax                                     ; 1001EE9F _ 48
        mov     dword [esi+4H], eax                     ; 1001EEA0 _ 89. 46, 04
        movzx   eax, byte [ecx]                         ; 1001EEA3 _ 0F B6. 01
        inc     ecx                                     ; 1001EEA6 _ 41
        mov     dword [esi], ecx                        ; 1001EEA7 _ 89. 0E
        pop     esi                                     ; 1001EEA9 _ 5E
        ret                                             ; 1001EEAA _ C3

?_3962: neg     eax                                     ; 1001EEAB _ F7. D8
        sbb     eax, eax                                ; 1001EEAD _ 1B. C0
        and     eax, 10H                                ; 1001EEAF _ 83. E0, 10
        add     eax, 16                                 ; 1001EEB2 _ 83. C0, 10
        or      dword [esi+0CH], eax                    ; 1001EEB5 _ 09. 46, 0C
        and     dword [esi+4H], 00H                     ; 1001EEB8 _ 83. 66, 04, 00
?_3963: or      eax, 0FFFFFFFFH                         ; 1001EEBC _ 83. C8, FF
        pop     esi                                     ; 1001EEBF _ 5E
        ret                                             ; 1001EEC0 _ C3

?_3964: push    esi                                     ; 1001EEC1 _ 56
        mov     esi, dword [esp+8H]                     ; 1001EEC2 _ 8B. 74 24, 08
        cmp     esi, dword [?_5811]                     ; 1001EEC6 _ 3B. 35, 11766560(d)
        jnc     ?_3965                                  ; 1001EECC _ 73, 40
        mov     ecx, esi                                ; 1001EECE _ 8B. CE
        mov     eax, esi                                ; 1001EED0 _ 8B. C6
        sar     ecx, 5                                  ; 1001EED2 _ C1. F9, 05
        and     eax, 1FH                                ; 1001EED5 _ 83. E0, 1F
        mov     ecx, dword [?_5809+ecx*4]               ; 1001EED8 _ 8B. 0C 8D, 11766460(d)
        lea     eax, [eax+eax*8]                        ; 1001EEDF _ 8D. 04 C0
        test    byte [ecx+eax*4+4H], 01H                ; 1001EEE2 _ F6. 44 81, 04, 01
        jz      ?_3965                                  ; 1001EEE7 _ 74, 25
        push    edi                                     ; 1001EEE9 _ 57
        push    esi                                     ; 1001EEEA _ 56
        call    ?_4220                                  ; 1001EEEB _ E8, 000014B2
        push    dword [esp+18H]                         ; 1001EEF0 _ FF. 74 24, 18
        push    dword [esp+18H]                         ; 1001EEF4 _ FF. 74 24, 18
        push    esi                                     ; 1001EEF8 _ 56
        call    ?_3966                                  ; 1001EEF9 _ E8, 00000028
        push    esi                                     ; 1001EEFE _ 56
        mov     edi, eax                                ; 1001EEFF _ 8B. F8
        call    ?_4223                                  ; 1001EF01 _ E8, 000014FB
        add     esp, 20                                 ; 1001EF06 _ 83. C4, 14
        mov     eax, edi                                ; 1001EF09 _ 8B. C7
        pop     edi                                     ; 1001EF0B _ 5F
        pop     esi                                     ; 1001EF0C _ 5E
        ret                                             ; 1001EF0D _ C3

?_3965: call    ?_3107                                  ; 1001EF0E _ E8, FFFFB8D2
        mov     dword [eax], 9                          ; 1001EF13 _ C7. 00, 00000009
        call    ?_3108                                  ; 1001EF19 _ E8, FFFFB8D0
        and     dword [eax], 00H                        ; 1001EF1E _ 83. 20, 00
        or      eax, 0FFFFFFFFH                         ; 1001EF21 _ 83. C8, FF
        pop     esi                                     ; 1001EF24 _ 5E
        ret                                             ; 1001EF25 _ C3

?_3966: push    ebp                                     ; 1001EF26 _ 55
        mov     ebp, esp                                ; 1001EF27 _ 8B. EC
        sub     esp, 12                                 ; 1001EF29 _ 83. EC, 0C
        and     dword [ebp-8H], 00H                     ; 1001EF2C _ 83. 65, F8, 00
        cmp     dword [ebp+10H], 0                      ; 1001EF30 _ 83. 7D, 10, 00
        push    ebx                                     ; 1001EF34 _ 53
        mov     ebx, dword [ebp+0CH]                    ; 1001EF35 _ 8B. 5D, 0C
        push    esi                                     ; 1001EF38 _ 56
        push    edi                                     ; 1001EF39 _ 57
        mov     edx, ebx                                ; 1001EF3A _ 8B. D3
        je      ?_3987                                  ; 1001EF3C _ 0F 84, 000001B6
        mov     eax, dword [ebp+8H]                     ; 1001EF42 _ 8B. 45, 08
        mov     ecx, eax                                ; 1001EF45 _ 8B. C8
        and     eax, 1FH                                ; 1001EF47 _ 83. E0, 1F
        sar     ecx, 5                                  ; 1001EF4A _ C1. F9, 05
        lea     esi, [eax+eax*8]                        ; 1001EF4D _ 8D. 34 C0
        mov     eax, dword [?_5809+ecx*4]               ; 1001EF50 _ 8B. 04 8D, 11766460(d)
        lea     edi, [?_5809+ecx*4]                     ; 1001EF57 _ 8D. 3C 8D, 11766460(d)
        shl     esi, 2                                  ; 1001EF5E _ C1. E6, 02
        add     eax, esi                                ; 1001EF61 _ 03. C6
        mov     cl, byte [eax+4H]                       ; 1001EF63 _ 8A. 48, 04
        test    cl, 02H                                 ; 1001EF66 _ F6. C1, 02
        jne     ?_3987                                  ; 1001EF69 _ 0F 85, 00000189
        test    cl, 48H                                 ; 1001EF6F _ F6. C1, 48
        jz      ?_3967                                  ; 1001EF72 _ 74, 1D
        mov     al, byte [eax+5H]                       ; 1001EF74 _ 8A. 40, 05
        cmp     al, 10                                  ; 1001EF77 _ 3C, 0A
        jz      ?_3967                                  ; 1001EF79 _ 74, 16
        dec     dword [ebp+10H]                         ; 1001EF7B _ FF. 4D, 10
        mov     byte [ebx], al                          ; 1001EF7E _ 88. 03
        mov     eax, dword [edi]                        ; 1001EF80 _ 8B. 07
        lea     edx, [ebx+1H]                           ; 1001EF82 _ 8D. 53, 01
        mov     dword [ebp-8H], 1                       ; 1001EF85 _ C7. 45, F8, 00000001
        mov     byte [eax+esi+5H], 10                   ; 1001EF8C _ C6. 44 30, 05, 0A
?_3967: lea     eax, [ebp-0CH]                          ; 1001EF91 _ 8D. 45, F4
        push    0                                       ; 1001EF94 _ 6A, 00
        push    eax                                     ; 1001EF96 _ 50
        mov     eax, dword [edi]                        ; 1001EF97 _ 8B. 07
        push    dword [ebp+10H]                         ; 1001EF99 _ FF. 75, 10
        push    edx                                     ; 1001EF9C _ 52
        push    dword [eax+esi]                         ; 1001EF9D _ FF. 34 30
        call    near [imp_ReadFile]                     ; 1001EFA0 _ FF. 15, 10024034(d)
        test    eax, eax                                ; 1001EFA6 _ 85. C0
        jnz     ?_3970                                  ; 1001EFA8 _ 75, 39
        call    near [imp_GetLastError]                 ; 1001EFAA _ FF. 15, 100240DC(d)
        push    5                                       ; 1001EFB0 _ 6A, 05
        pop     esi                                     ; 1001EFB2 _ 5E
        cmp     eax, esi                                ; 1001EFB3 _ 3B. C6
        jnz     ?_3968                                  ; 1001EFB5 _ 75, 14
        call    ?_3107                                  ; 1001EFB7 _ E8, FFFFB829
        mov     dword [eax], 9                          ; 1001EFBC _ C7. 00, 00000009
        call    ?_3108                                  ; 1001EFC2 _ E8, FFFFB827
        mov     dword [eax], esi                        ; 1001EFC7 _ 89. 30
        jmp     ?_3969                                  ; 1001EFC9 _ EB, 10

?_3968: cmp     eax, 109                                ; 1001EFCB _ 83. F8, 6D
        je      ?_3987                                  ; 1001EFCE _ 0F 84, 00000124
        push    eax                                     ; 1001EFD4 _ 50
        call    ?_3102                                  ; 1001EFD5 _ E8, FFFFB798
        pop     ecx                                     ; 1001EFDA _ 59
?_3969: or      eax, 0FFFFFFFFH                         ; 1001EFDB _ 83. C8, FF
        jmp     ?_3988                                  ; 1001EFDE _ E9, 00000117

?_3970: mov     eax, dword [edi]                        ; 1001EFE3 _ 8B. 07
        mov     edx, dword [ebp-0CH]                    ; 1001EFE5 _ 8B. 55, F4
        add     dword [ebp-8H], edx                     ; 1001EFE8 _ 01. 55, F8
        lea     ecx, [eax+esi+4H]                       ; 1001EFEB _ 8D. 4C 30, 04
        mov     al, byte [eax+esi+4H]                   ; 1001EFEF _ 8A. 44 30, 04
        test    al, 0FFFFFF80H                          ; 1001EFF3 _ A8, 80
        je      ?_3986                                  ; 1001EFF5 _ 0F 84, 000000F8
        test    edx, edx                                ; 1001EFFB _ 85. D2
        jz      ?_3971                                  ; 1001EFFD _ 74, 09
        cmp     byte [ebx], 10                          ; 1001EFFF _ 80. 3B, 0A
        jnz     ?_3971                                  ; 1001F002 _ 75, 04
        or      al, 04H                                 ; 1001F004 _ 0C, 04
        jmp     ?_3972                                  ; 1001F006 _ EB, 02

?_3971: and     al, 0FFFFFFFBH                          ; 1001F008 _ 24, FB
?_3972: mov     byte [ecx], al                          ; 1001F00A _ 88. 01
        mov     eax, dword [ebp+0CH]                    ; 1001F00C _ 8B. 45, 0C
        mov     ecx, dword [ebp-8H]                     ; 1001F00F _ 8B. 4D, F8
        mov     dword [ebp+10H], eax                    ; 1001F012 _ 89. 45, 10
        add     ecx, eax                                ; 1001F015 _ 03. C8
        cmp     eax, ecx                                ; 1001F017 _ 3B. C1
        mov     dword [ebp-8H], ecx                     ; 1001F019 _ 89. 4D, F8
        jnc     ?_3985                                  ; 1001F01C _ 0F 83, 000000CB
?_3973: mov     eax, dword [ebp+10H]                    ; 1001F022 _ 8B. 45, 10
        mov     al, byte [eax]                          ; 1001F025 _ 8A. 00
        cmp     al, 26                                  ; 1001F027 _ 3C, 1A
        je      ?_3984                                  ; 1001F029 _ 0F 84, 000000AE
        cmp     al, 13                                  ; 1001F02F _ 3C, 0D
        jz      ?_3974                                  ; 1001F031 _ 74, 0B
        mov     byte [ebx], al                          ; 1001F033 _ 88. 03
        inc     ebx                                     ; 1001F035 _ 43
        inc     dword [ebp+10H]                         ; 1001F036 _ FF. 45, 10
        jmp     ?_3983                                  ; 1001F039 _ E9, 00000091

?_3974: dec     ecx                                     ; 1001F03E _ 49
        cmp     dword [ebp+10H], ecx                    ; 1001F03F _ 39. 4D, 10
        jnc     ?_3976                                  ; 1001F042 _ 73, 18
        mov     eax, dword [ebp+10H]                    ; 1001F044 _ 8B. 45, 10
        inc     eax                                     ; 1001F047 _ 40
        cmp     byte [eax], 10                          ; 1001F048 _ 80. 38, 0A
        jnz     ?_3975                                  ; 1001F04B _ 75, 06
        add     dword [ebp+10H], 2                      ; 1001F04D _ 83. 45, 10, 02
        jmp     ?_3979                                  ; 1001F051 _ EB, 5E

?_3975: mov     byte [ebx], 13                          ; 1001F053 _ C6. 03, 0D
        inc     ebx                                     ; 1001F056 _ 43
        mov     dword [ebp+10H], eax                    ; 1001F057 _ 89. 45, 10
        jmp     ?_3983                                  ; 1001F05A _ EB, 73

?_3976: lea     eax, [ebp-0CH]                          ; 1001F05C _ 8D. 45, F4
        push    0                                       ; 1001F05F _ 6A, 00
        push    eax                                     ; 1001F061 _ 50
        inc     dword [ebp+10H]                         ; 1001F062 _ FF. 45, 10
        lea     eax, [ebp-1H]                           ; 1001F065 _ 8D. 45, FF
        push    1                                       ; 1001F068 _ 6A, 01
        push    eax                                     ; 1001F06A _ 50
        mov     eax, dword [edi]                        ; 1001F06B _ 8B. 07
        push    dword [eax+esi]                         ; 1001F06D _ FF. 34 30
        call    near [imp_ReadFile]                     ; 1001F070 _ FF. 15, 10024034(d)
        test    eax, eax                                ; 1001F076 _ 85. C0
        jnz     ?_3977                                  ; 1001F078 _ 75, 0A
        call    near [imp_GetLastError]                 ; 1001F07A _ FF. 15, 100240DC(d)
        test    eax, eax                                ; 1001F080 _ 85. C0
        jnz     ?_3981                                  ; 1001F082 _ 75, 47
?_3977: cmp     dword [ebp-0CH], 0                      ; 1001F084 _ 83. 7D, F4, 00
        jz      ?_3981                                  ; 1001F088 _ 74, 41
        mov     eax, dword [edi]                        ; 1001F08A _ 8B. 07
        test    byte [eax+esi+4H], 48H                  ; 1001F08C _ F6. 44 30, 04, 48
        jz      ?_3978                                  ; 1001F091 _ 74, 13
        mov     al, byte [ebp-1H]                       ; 1001F093 _ 8A. 45, FF
        cmp     al, 10                                  ; 1001F096 _ 3C, 0A
        jz      ?_3979                                  ; 1001F098 _ 74, 17
        mov     byte [ebx], 13                          ; 1001F09A _ C6. 03, 0D
        mov     ecx, dword [edi]                        ; 1001F09D _ 8B. 0F
        inc     ebx                                     ; 1001F09F _ 43
        mov     byte [ecx+esi+5H], al                   ; 1001F0A0 _ 88. 44 31, 05
        jmp     ?_3983                                  ; 1001F0A4 _ EB, 29

?_3978: cmp     ebx, dword [ebp+0CH]                    ; 1001F0A6 _ 3B. 5D, 0C
        jnz     ?_3980                                  ; 1001F0A9 _ 75, 0B
        cmp     byte [ebp-1H], 10                       ; 1001F0AB _ 80. 7D, FF, 0A
        jnz     ?_3980                                  ; 1001F0AF _ 75, 05
?_3979: mov     byte [ebx], 10                          ; 1001F0B1 _ C6. 03, 0A
        jmp     ?_3982                                  ; 1001F0B4 _ EB, 18

?_3980: push    1                                       ; 1001F0B6 _ 6A, 01
        push    -1                                      ; 1001F0B8 _ 6A, FF
        push    dword [ebp+8H]                          ; 1001F0BA _ FF. 75, 08
        call    ?_3577                                  ; 1001F0BD _ E8, FFFFDB58
        add     esp, 12                                 ; 1001F0C2 _ 83. C4, 0C
        cmp     byte [ebp-1H], 10                       ; 1001F0C5 _ 80. 7D, FF, 0A
        jz      ?_3983                                  ; 1001F0C9 _ 74, 04
?_3981: mov     byte [ebx], 13                          ; 1001F0CB _ C6. 03, 0D
?_3982: inc     ebx                                     ; 1001F0CE _ 43
?_3983: mov     ecx, dword [ebp-8H]                     ; 1001F0CF _ 8B. 4D, F8
        cmp     dword [ebp+10H], ecx                    ; 1001F0D2 _ 39. 4D, 10
        jc      ?_3973                                  ; 1001F0D5 _ 0F 82, FFFFFF47
        jmp     ?_3985                                  ; 1001F0DB _ EB, 10

?_3984: mov     eax, dword [edi]                        ; 1001F0DD _ 8B. 07
        lea     esi, [eax+esi+4H]                       ; 1001F0DF _ 8D. 74 30, 04
        mov     al, byte [esi]                          ; 1001F0E3 _ 8A. 06
        test    al, 40H                                 ; 1001F0E5 _ A8, 40
        jnz     ?_3985                                  ; 1001F0E7 _ 75, 04
        or      al, 02H                                 ; 1001F0E9 _ 0C, 02
        mov     byte [esi], al                          ; 1001F0EB _ 88. 06
?_3985: sub     ebx, dword [ebp+0CH]                    ; 1001F0ED _ 2B. 5D, 0C
        mov     dword [ebp-8H], ebx                     ; 1001F0F0 _ 89. 5D, F8
?_3986: mov     eax, dword [ebp-8H]                     ; 1001F0F3 _ 8B. 45, F8
        jmp     ?_3988                                  ; 1001F0F6 _ EB, 02

?_3987: xor     eax, eax                                ; 1001F0F8 _ 33. C0
?_3988: pop     edi                                     ; 1001F0FA _ 5F
        pop     esi                                     ; 1001F0FB _ 5E
        pop     ebx                                     ; 1001F0FC _ 5B
        leave                                           ; 1001F0FD _ C9
        ret                                             ; 1001F0FE _ C3

?_3989: push    ebx                                     ; 1001F0FF _ 53
        mov     ebx, dword [esp+8H]                     ; 1001F100 _ 8B. 5C 24, 08
        cmp     ebx, dword [?_5811]                     ; 1001F104 _ 3B. 1D, 11766560(d)
        push    esi                                     ; 1001F10A _ 56
        push    edi                                     ; 1001F10B _ 57
        jnc     ?_3994                                  ; 1001F10C _ 73, 72
        mov     eax, ebx                                ; 1001F10E _ 8B. C3
        sar     eax, 5                                  ; 1001F110 _ C1. F8, 05
        lea     edi, [?_5809+eax*4]                     ; 1001F113 _ 8D. 3C 85, 11766460(d)
        mov     eax, ebx                                ; 1001F11A _ 8B. C3
        and     eax, 1FH                                ; 1001F11C _ 83. E0, 1F
        lea     esi, [eax+eax*8]                        ; 1001F11F _ 8D. 34 C0
        mov     eax, dword [edi]                        ; 1001F122 _ 8B. 07
        shl     esi, 2                                  ; 1001F124 _ C1. E6, 02
        test    byte [eax+esi+4H], 01H                  ; 1001F127 _ F6. 44 30, 04, 01
        jz      ?_3994                                  ; 1001F12C _ 74, 52
        push    ebx                                     ; 1001F12E _ 53
        call    ?_4220                                  ; 1001F12F _ E8, 0000126E
        mov     eax, dword [edi]                        ; 1001F134 _ 8B. 07
        pop     ecx                                     ; 1001F136 _ 59
        test    byte [eax+esi+4H], 01H                  ; 1001F137 _ F6. 44 30, 04, 01
        jz      ?_3992                                  ; 1001F13C _ 74, 29
        push    ebx                                     ; 1001F13E _ 53
        call    ?_4218                                  ; 1001F13F _ E8, 0000121C
        pop     ecx                                     ; 1001F144 _ 59
        push    eax                                     ; 1001F145 _ 50
        call    near [imp_FlushFileBuffers]             ; 1001F146 _ FF. 15, 1002412C(d)
        test    eax, eax                                ; 1001F14C _ 85. C0
        jnz     ?_3990                                  ; 1001F14E _ 75, 0A
        call    near [imp_GetLastError]                 ; 1001F150 _ FF. 15, 100240DC(d)
        mov     esi, eax                                ; 1001F156 _ 8B. F0
        jmp     ?_3991                                  ; 1001F158 _ EB, 02

?_3990: xor     esi, esi                                ; 1001F15A _ 33. F6
?_3991: test    esi, esi                                ; 1001F15C _ 85. F6
        jz      ?_3993                                  ; 1001F15E _ 74, 15
        call    ?_3108                                  ; 1001F160 _ E8, FFFFB689
        mov     dword [eax], esi                        ; 1001F165 _ 89. 30
?_3992: call    ?_3107                                  ; 1001F167 _ E8, FFFFB679
        mov     dword [eax], 9                          ; 1001F16C _ C7. 00, 00000009
        or      esi, 0FFFFFFFFH                         ; 1001F172 _ 83. CE, FF
?_3993: push    ebx                                     ; 1001F175 _ 53
        call    ?_4223                                  ; 1001F176 _ E8, 00001286
        pop     ecx                                     ; 1001F17B _ 59
        mov     eax, esi                                ; 1001F17C _ 8B. C6
        jmp     ?_3995                                  ; 1001F17E _ EB, 0E

?_3994: call    ?_3107                                  ; 1001F180 _ E8, FFFFB660
        mov     dword [eax], 9                          ; 1001F185 _ C7. 00, 00000009
        or      eax, 0FFFFFFFFH                         ; 1001F18B _ 83. C8, FF
?_3995: pop     edi                                     ; 1001F18E _ 5F
        pop     esi                                     ; 1001F18F _ 5E
        pop     ebx                                     ; 1001F190 _ 5B
        ret                                             ; 1001F191 _ C3

?_3996: push    196608                                  ; 1001F192 _ 68, 00030000
        push    65536                                   ; 1001F197 _ 68, 00010000
        call    ?_4399                                  ; 1001F19C _ E8, 0000212C
        pop     ecx                                     ; 1001F1A1 _ 59
        pop     ecx                                     ; 1001F1A2 _ 59
        ret                                             ; 1001F1A3 _ C3

?_3997: push    ebp                                     ; 1001F1A4 _ 55
        mov     ebp, esp                                ; 1001F1A5 _ 8B. EC
        sub     esp, 24                                 ; 1001F1A7 _ 83. EC, 18
        fld     qword [?_4962]                          ; 1001F1AA _ DD. 05, 100260B8(d)
        fstp    qword [ebp-8H]                          ; 1001F1B0 _ DD. 5D, F8
        fld     qword [?_4961]                          ; 1001F1B3 _ DD. 05, 100260B0(d)
        fstp    qword [ebp-10H]                         ; 1001F1B9 _ DD. 5D, F0
        fld     qword [ebp-10H]                         ; 1001F1BC _ DD. 45, F0
        fdiv    qword [ebp-8H]                          ; 1001F1BF _ DC. 75, F8
        fmul    qword [ebp-8H]                          ; 1001F1C2 _ DC. 4D, F8
        fsubr   qword [ebp-10H]                         ; 1001F1C5 _ DC. 6D, F0
        fstp    qword [ebp-18H]                         ; 1001F1C8 _ DD. 5D, E8
        fld     qword [ebp-18H]                         ; 1001F1CB _ DD. 45, E8
        fcomp   qword [?_4938]                          ; 1001F1CE _ DC. 1D, 100257D8(d)
        fnstsw  ax                                      ; 1001F1D4 _ DF. E0
        sahf                                            ; 1001F1D6 _ 9E
        jbe     ?_3998                                  ; 1001F1D7 _ 76, 05
        push    1                                       ; 1001F1D9 _ 6A, 01
        pop     eax                                     ; 1001F1DB _ 58
        leave                                           ; 1001F1DC _ C9
        ret                                             ; 1001F1DD _ C3

?_3998: xor     eax, eax                                ; 1001F1DE _ 33. C0
        leave                                           ; 1001F1E0 _ C9
        ret                                             ; 1001F1E1 _ C3

?_3999: push    ?_4964                                  ; 1001F1E2 _ 68, 100260DC(d)
        call    near [imp_GetModuleHandleA]             ; 1001F1E7 _ FF. 15, 10024120(d)
        test    eax, eax                                ; 1001F1ED _ 85. C0
        jz      ?_4000                                  ; 1001F1EF _ 74, 15
        push    ?_4963                                  ; 1001F1F1 _ 68, 100260C0(d)
        push    eax                                     ; 1001F1F6 _ 50
        call    near [imp_GetProcAddress]               ; 1001F1F7 _ FF. 15, 10024138(d)
        test    eax, eax                                ; 1001F1FD _ 85. C0
        jz      ?_4000                                  ; 1001F1FF _ 74, 05
        push    0                                       ; 1001F201 _ 6A, 00
        call    eax                                     ; 1001F203 _ FF. D0
        ret                                             ; 1001F205 _ C3

?_4000:
; Note: Immediate operand could be made smaller by sign extension
        jmp     ?_3997                                  ; 1001F206 _ E9, FFFFFF99

?_4001: push    esi                                     ; 1001F20B _ 56
        mov     esi, dword [esp+8H]                     ; 1001F20C _ 8B. 74 24, 08
        movsx   eax, byte [esi]                         ; 1001F210 _ 0F BE. 06
        push    eax                                     ; 1001F213 _ 50
        call    ?_4426                                  ; 1001F214 _ E8, 000021E5
        cmp     eax, 101                                ; 1001F219 _ 83. F8, 65
        pop     ecx                                     ; 1001F21C _ 59
        jz      ?_4005                                  ; 1001F21D _ 74, 2C
?_4002: inc     esi                                     ; 1001F21F _ 46
        cmp     dword [?_5477], 1                       ; 1001F220 _ 83. 3D, 10033EE0(d), 01
        jle     ?_4003                                  ; 1001F227 _ 7E, 0F
        movsx   eax, byte [esi]                         ; 1001F229 _ 0F BE. 06
        push    4                                       ; 1001F22C _ 6A, 04
        push    eax                                     ; 1001F22E _ 50
        call    ?_4068                                  ; 1001F22F _ E8, 00000621
        pop     ecx                                     ; 1001F234 _ 59
        pop     ecx                                     ; 1001F235 _ 59
        jmp     ?_4004                                  ; 1001F236 _ EB, 0F

?_4003: movsx   eax, byte [esi]                         ; 1001F238 _ 0F BE. 06
        mov     ecx, dword [?_5475]                     ; 1001F23B _ 8B. 0D, 10033CD4(d)
        mov     al, byte [ecx+eax*2]                    ; 1001F241 _ 8A. 04 41
        and     eax, 04H                                ; 1001F244 _ 83. E0, 04
?_4004: test    eax, eax                                ; 1001F247 _ 85. C0
        jnz     ?_4002                                  ; 1001F249 _ 75, D4
?_4005: mov     cl, byte [?_5478]                       ; 1001F24B _ 8A. 0D, 10033EE4(d)
        mov     al, byte [esi]                          ; 1001F251 _ 8A. 06
        mov     byte [esi], cl                          ; 1001F253 _ 88. 0E
        inc     esi                                     ; 1001F255 _ 46
?_4006: mov     cl, byte [esi]                          ; 1001F256 _ 8A. 0E
        mov     byte [esi], al                          ; 1001F258 _ 88. 06
        mov     al, cl                                  ; 1001F25A _ 8A. C1
        mov     cl, byte [esi]                          ; 1001F25C _ 8A. 0E
        inc     esi                                     ; 1001F25E _ 46
        test    cl, cl                                  ; 1001F25F _ 84. C9
        jnz     ?_4006                                  ; 1001F261 _ 75, F3
        pop     esi                                     ; 1001F263 _ 5E
        ret                                             ; 1001F264 _ C3

?_4007: mov     eax, dword [esp+4H]                     ; 1001F265 _ 8B. 44 24, 04
        mov     dl, byte [?_5478]                       ; 1001F269 _ 8A. 15, 10033EE4(d)
        mov     cl, byte [eax]                          ; 1001F26F _ 8A. 08
        test    cl, cl                                  ; 1001F271 _ 84. C9
        jz      ?_4009                                  ; 1001F273 _ 74, 0C
?_4008: cmp     cl, dl                                  ; 1001F275 _ 3A. CA
        jz      ?_4009                                  ; 1001F277 _ 74, 08
        mov     cl, byte [eax+1H]                       ; 1001F279 _ 8A. 48, 01
        inc     eax                                     ; 1001F27C _ 40
        test    cl, cl                                  ; 1001F27D _ 84. C9
        jnz     ?_4008                                  ; 1001F27F _ 75, F4
?_4009: mov     cl, byte [eax]                          ; 1001F281 _ 8A. 08
        inc     eax                                     ; 1001F283 _ 40
        test    cl, cl                                  ; 1001F284 _ 84. C9
        jz      ?_4014                                  ; 1001F286 _ 74, 2A
?_4010: mov     cl, byte [eax]                          ; 1001F288 _ 8A. 08
        test    cl, cl                                  ; 1001F28A _ 84. C9
        jz      ?_4011                                  ; 1001F28C _ 74, 0D
        cmp     cl, 101                                 ; 1001F28E _ 80. F9, 65
        jz      ?_4011                                  ; 1001F291 _ 74, 08
        cmp     cl, 69                                  ; 1001F293 _ 80. F9, 45
        jz      ?_4011                                  ; 1001F296 _ 74, 03
        inc     eax                                     ; 1001F298 _ 40
        jmp     ?_4010                                  ; 1001F299 _ EB, ED

?_4011: mov     ecx, eax                                ; 1001F29B _ 8B. C8
?_4012: dec     eax                                     ; 1001F29D _ 48
        cmp     byte [eax], 48                          ; 1001F29E _ 80. 38, 30
        jz      ?_4012                                  ; 1001F2A1 _ 74, FA
        cmp     byte [eax], dl                          ; 1001F2A3 _ 38. 10
        jnz     ?_4013                                  ; 1001F2A5 _ 75, 01
        dec     eax                                     ; 1001F2A7 _ 48
?_4013: mov     dl, byte [ecx]                          ; 1001F2A8 _ 8A. 11
        inc     eax                                     ; 1001F2AA _ 40
        inc     ecx                                     ; 1001F2AB _ 41
        test    dl, dl                                  ; 1001F2AC _ 84. D2
        mov     byte [eax], dl                          ; 1001F2AE _ 88. 10
        jnz     ?_4013                                  ; 1001F2B0 _ 75, F6
?_4014: ret                                             ; 1001F2B2 _ C3

?_4015: mov     eax, dword [esp+4H]                     ; 1001F2B3 _ 8B. 44 24, 04
        fld     qword [eax]                             ; 1001F2B7 _ DD. 00
        fcomp   qword [?_4909]                          ; 1001F2B9 _ DC. 1D, 10025698(d)
        fnstsw  ax                                      ; 1001F2BF _ DF. E0
        sahf                                            ; 1001F2C1 _ 9E
        jc      ?_4016                                  ; 1001F2C2 _ 72, 04
        push    1                                       ; 1001F2C4 _ 6A, 01
        pop     eax                                     ; 1001F2C6 _ 58
        ret                                             ; 1001F2C7 _ C3

?_4016: xor     eax, eax                                ; 1001F2C8 _ 33. C0
        ret                                             ; 1001F2CA _ C3

?_4017: push    ebp                                     ; 1001F2CB _ 55
        mov     ebp, esp                                ; 1001F2CC _ 8B. EC
        push    ecx                                     ; 1001F2CE _ 51
        push    ecx                                     ; 1001F2CF _ 51
        cmp     dword [ebp+8H], 0                       ; 1001F2D0 _ 83. 7D, 08, 00
        push    dword [ebp+10H]                         ; 1001F2D4 _ FF. 75, 10
        jz      ?_4018                                  ; 1001F2D7 _ 74, 1B
        lea     eax, [ebp-8H]                           ; 1001F2D9 _ 8D. 45, F8
        push    eax                                     ; 1001F2DC _ 50
        call    ?_4479                                  ; 1001F2DD _ E8, 000025E8
        mov     eax, dword [ebp+0CH]                    ; 1001F2E2 _ 8B. 45, 0C
        pop     ecx                                     ; 1001F2E5 _ 59
        pop     ecx                                     ; 1001F2E6 _ 59
        mov     ecx, dword [ebp-8H]                     ; 1001F2E7 _ 8B. 4D, F8
        mov     dword [eax], ecx                        ; 1001F2EA _ 89. 08
        mov     ecx, dword [ebp-4H]                     ; 1001F2EC _ 8B. 4D, FC
        mov     dword [eax+4H], ecx                     ; 1001F2EF _ 89. 48, 04
        leave                                           ; 1001F2F2 _ C9
        ret                                             ; 1001F2F3 _ C3

?_4018: lea     eax, [ebp+10H]                          ; 1001F2F4 _ 8D. 45, 10
        push    eax                                     ; 1001F2F7 _ 50
        call    ?_4480                                  ; 1001F2F8 _ E8, 000025FA
        mov     eax, dword [ebp+0CH]                    ; 1001F2FD _ 8B. 45, 0C
        pop     ecx                                     ; 1001F300 _ 59
        pop     ecx                                     ; 1001F301 _ 59
        mov     ecx, dword [ebp+10H]                    ; 1001F302 _ 8B. 4D, 10
        mov     dword [eax], ecx                        ; 1001F305 _ 89. 08
        leave                                           ; 1001F307 _ C9
        ret                                             ; 1001F308 _ C3

?_4019: push    ebp                                     ; 1001F309 _ 55
        mov     ebp, esp                                ; 1001F30A _ 8B. EC
        sub     esp, 40                                 ; 1001F30C _ 83. EC, 28
        lea     eax, [ebp-28H]                          ; 1001F30F _ 8D. 45, D8
        push    esi                                     ; 1001F312 _ 56
        push    eax                                     ; 1001F313 _ 50
        lea     eax, [ebp-10H]                          ; 1001F314 _ 8D. 45, F0
        push    eax                                     ; 1001F317 _ 50
        mov     eax, dword [ebp+8H]                     ; 1001F318 _ 8B. 45, 08
        push    ecx                                     ; 1001F31B _ 51
        push    ecx                                     ; 1001F31C _ 51
        fld     qword [eax]                             ; 1001F31D _ DD. 00
        fstp    qword [esp]                             ; 1001F31F _ DD. 1C 24
        call    ?_4491                                  ; 1001F322 _ E8, 00002674
        mov     esi, dword [ebp+10H]                    ; 1001F327 _ 8B. 75, 10
        lea     eax, [ebp-10H]                          ; 1001F32A _ 8D. 45, F0
        push    eax                                     ; 1001F32D _ 50
        mov     edx, dword [ebp+0CH]                    ; 1001F32E _ 8B. 55, 0C
        lea     eax, [esi+1H]                           ; 1001F331 _ 8D. 46, 01
        push    eax                                     ; 1001F334 _ 50
        xor     eax, eax                                ; 1001F335 _ 33. C0
        cmp     dword [ebp-10H], 45                     ; 1001F337 _ 83. 7D, F0, 2D
        sete    al                                      ; 1001F33B _ 0F 94. C0
        xor     ecx, ecx                                ; 1001F33E _ 33. C9
        test    esi, esi                                ; 1001F340 _ 85. F6
        setg    cl                                      ; 1001F342 _ 0F 9F. C1
        add     edx, eax                                ; 1001F345 _ 03. D0
        add     ecx, edx                                ; 1001F347 _ 03. CA
        push    ecx                                     ; 1001F349 _ 51
        call    ?_4481                                  ; 1001F34A _ E8, 000025D5
        lea     eax, [ebp-10H]                          ; 1001F34F _ 8D. 45, F0
        push    0                                       ; 1001F352 _ 6A, 00
        push    eax                                     ; 1001F354 _ 50
        push    dword [ebp+14H]                         ; 1001F355 _ FF. 75, 14
        push    esi                                     ; 1001F358 _ 56
        push    dword [ebp+0CH]                         ; 1001F359 _ FF. 75, 0C
        call    ?_4020                                  ; 1001F35C _ E8, 00000009
        mov     eax, dword [ebp+0CH]                    ; 1001F361 _ 8B. 45, 0C
        add     esp, 48                                 ; 1001F364 _ 83. C4, 30
        pop     esi                                     ; 1001F367 _ 5E
        leave                                           ; 1001F368 _ C9
        ret                                             ; 1001F369 _ C3

?_4020: push    ebp                                     ; 1001F36A _ 55
        mov     ebp, esp                                ; 1001F36B _ 8B. EC
        push    ebx                                     ; 1001F36D _ 53
        xor     ebx, ebx                                ; 1001F36E _ 33. DB
        cmp     byte [ebp+18H], bl                      ; 1001F370 _ 38. 5D, 18
        push    esi                                     ; 1001F373 _ 56
        mov     esi, dword [ebp+14H]                    ; 1001F374 _ 8B. 75, 14
        push    edi                                     ; 1001F377 _ 57
        mov     edi, dword [ebp+8H]                     ; 1001F378 _ 8B. 7D, 08
        jz      ?_4021                                  ; 1001F37B _ 74, 1B
        xor     eax, eax                                ; 1001F37D _ 33. C0
        cmp     dword [ebp+0CH], ebx                    ; 1001F37F _ 39. 5D, 0C
        setg    al                                      ; 1001F382 _ 0F 9F. C0
        push    eax                                     ; 1001F385 _ 50
        xor     eax, eax                                ; 1001F386 _ 33. C0
        cmp     dword [esi], 45                         ; 1001F388 _ 83. 3E, 2D
        sete    al                                      ; 1001F38B _ 0F 94. C0
        add     eax, edi                                ; 1001F38E _ 03. C7
        push    eax                                     ; 1001F390 _ 50
        call    ?_4048                                  ; 1001F391 _ E8, 00000276
        pop     ecx                                     ; 1001F396 _ 59
        pop     ecx                                     ; 1001F397 _ 59
?_4021: cmp     dword [esi], 45                         ; 1001F398 _ 83. 3E, 2D
        mov     eax, edi                                ; 1001F39B _ 8B. C7
        jnz     ?_4022                                  ; 1001F39D _ 75, 06
        mov     byte [edi], 45                          ; 1001F39F _ C6. 07, 2D
        lea     eax, [edi+1H]                           ; 1001F3A2 _ 8D. 47, 01
?_4022: cmp     dword [ebp+0CH], ebx                    ; 1001F3A5 _ 39. 5D, 0C
        jle     ?_4023                                  ; 1001F3A8 _ 7E, 12
        mov     dl, byte [eax+1H]                       ; 1001F3AA _ 8A. 50, 01
        lea     ecx, [eax+1H]                           ; 1001F3AD _ 8D. 48, 01
        mov     byte [eax], dl                          ; 1001F3B0 _ 88. 10
        mov     eax, ecx                                ; 1001F3B2 _ 8B. C1
        mov     cl, byte [?_5478]                       ; 1001F3B4 _ 8A. 0D, 10033EE4(d)
        mov     byte [eax], cl                          ; 1001F3BA _ 88. 08
?_4023: xor     ecx, ecx                                ; 1001F3BC _ 33. C9
        cmp     byte [ebp+18H], bl                      ; 1001F3BE _ 38. 5D, 18
        push    ?_4965                                  ; 1001F3C1 _ 68, 100260E8(d)
        sete    cl                                      ; 1001F3C6 _ 0F 94. C1
        add     ecx, eax                                ; 1001F3C9 _ 03. C8
        add     ecx, dword [ebp+0CH]                    ; 1001F3CB _ 03. 4D, 0C
        push    ecx                                     ; 1001F3CE _ 51
        call    ?_4074                                  ; 1001F3CF _ E8, 000004FC
        cmp     dword [ebp+10H], ebx                    ; 1001F3D4 _ 39. 5D, 10
        pop     ecx                                     ; 1001F3D7 _ 59
        pop     ecx                                     ; 1001F3D8 _ 59
        mov     ecx, eax                                ; 1001F3D9 _ 8B. C8
        jz      ?_4024                                  ; 1001F3DB _ 74, 03
        mov     byte [ecx], 69                          ; 1001F3DD _ C6. 01, 45
?_4024: mov     eax, dword [esi+0CH]                    ; 1001F3E0 _ 8B. 46, 0C
        inc     ecx                                     ; 1001F3E3 _ 41
        cmp     byte [eax], 48                          ; 1001F3E4 _ 80. 38, 30
        jz      ?_4028                                  ; 1001F3E7 _ 74, 3C
        mov     ebx, dword [esi+4H]                     ; 1001F3E9 _ 8B. 5E, 04
        dec     ebx                                     ; 1001F3EC _ 4B
        jns     ?_4025                                  ; 1001F3ED _ 79, 05
        neg     ebx                                     ; 1001F3EF _ F7. DB
        mov     byte [ecx], 45                          ; 1001F3F1 _ C6. 01, 2D
?_4025: inc     ecx                                     ; 1001F3F4 _ 41
        cmp     ebx, 100                                ; 1001F3F5 _ 83. FB, 64
        jl      ?_4026                                  ; 1001F3F8 _ 7C, 11
        mov     eax, ebx                                ; 1001F3FA _ 8B. C3
        push    100                                     ; 1001F3FC _ 6A, 64
        cdq                                             ; 1001F3FE _ 99
        pop     esi                                     ; 1001F3FF _ 5E
        idiv    esi                                     ; 1001F400 _ F7. FE
        add     byte [ecx], al                          ; 1001F402 _ 00. 01
        mov     eax, ebx                                ; 1001F404 _ 8B. C3
        cdq                                             ; 1001F406 _ 99
        idiv    esi                                     ; 1001F407 _ F7. FE
        mov     ebx, edx                                ; 1001F409 _ 8B. DA
?_4026: inc     ecx                                     ; 1001F40B _ 41
        cmp     ebx, 10                                 ; 1001F40C _ 83. FB, 0A
        jl      ?_4027                                  ; 1001F40F _ 7C, 11
        mov     eax, ebx                                ; 1001F411 _ 8B. C3
        push    10                                      ; 1001F413 _ 6A, 0A
        cdq                                             ; 1001F415 _ 99
        pop     esi                                     ; 1001F416 _ 5E
        idiv    esi                                     ; 1001F417 _ F7. FE
        add     byte [ecx], al                          ; 1001F419 _ 00. 01
        mov     eax, ebx                                ; 1001F41B _ 8B. C3
        cdq                                             ; 1001F41D _ 99
        idiv    esi                                     ; 1001F41E _ F7. FE
        mov     ebx, edx                                ; 1001F420 _ 8B. DA
?_4027: add     byte [ecx+1H], bl                       ; 1001F422 _ 00. 59, 01
?_4028: mov     eax, edi                                ; 1001F425 _ 8B. C7
        pop     edi                                     ; 1001F427 _ 5F
        pop     esi                                     ; 1001F428 _ 5E
        pop     ebx                                     ; 1001F429 _ 5B
        pop     ebp                                     ; 1001F42A _ 5D
        ret                                             ; 1001F42B _ C3

?_4029: push    ebp                                     ; 1001F42C _ 55
        mov     ebp, esp                                ; 1001F42D _ 8B. EC
        sub     esp, 40                                 ; 1001F42F _ 83. EC, 28
        lea     eax, [ebp-28H]                          ; 1001F432 _ 8D. 45, D8
        push    esi                                     ; 1001F435 _ 56
        push    eax                                     ; 1001F436 _ 50
        lea     eax, [ebp-10H]                          ; 1001F437 _ 8D. 45, F0
        push    eax                                     ; 1001F43A _ 50
        mov     eax, dword [ebp+8H]                     ; 1001F43B _ 8B. 45, 08
        push    ecx                                     ; 1001F43E _ 51
        push    ecx                                     ; 1001F43F _ 51
        fld     qword [eax]                             ; 1001F440 _ DD. 00
        fstp    qword [esp]                             ; 1001F442 _ DD. 1C 24
        call    ?_4491                                  ; 1001F445 _ E8, 00002551
        mov     esi, dword [ebp+10H]                    ; 1001F44A _ 8B. 75, 10
        lea     eax, [ebp-10H]                          ; 1001F44D _ 8D. 45, F0
        push    eax                                     ; 1001F450 _ 50
        mov     eax, dword [ebp-0CH]                    ; 1001F451 _ 8B. 45, F4
        add     eax, esi                                ; 1001F454 _ 03. C6
        push    eax                                     ; 1001F456 _ 50
        xor     eax, eax                                ; 1001F457 _ 33. C0
        cmp     dword [ebp-10H], 45                     ; 1001F459 _ 83. 7D, F0, 2D
        sete    al                                      ; 1001F45D _ 0F 94. C0
        add     eax, dword [ebp+0CH]                    ; 1001F460 _ 03. 45, 0C
        push    eax                                     ; 1001F463 _ 50
        call    ?_4481                                  ; 1001F464 _ E8, 000024BB
        lea     eax, [ebp-10H]                          ; 1001F469 _ 8D. 45, F0
        push    0                                       ; 1001F46C _ 6A, 00
        push    eax                                     ; 1001F46E _ 50
        push    esi                                     ; 1001F46F _ 56
        push    dword [ebp+0CH]                         ; 1001F470 _ FF. 75, 0C
        call    ?_4030                                  ; 1001F473 _ E8, 00000009
        mov     eax, dword [ebp+0CH]                    ; 1001F478 _ 8B. 45, 0C
        add     esp, 44                                 ; 1001F47B _ 83. C4, 2C
        pop     esi                                     ; 1001F47E _ 5E
        leave                                           ; 1001F47F _ C9
        ret                                             ; 1001F480 _ C3

?_4030: push    ebp                                     ; 1001F481 _ 55
        mov     ebp, esp                                ; 1001F482 _ 8B. EC
        push    ebx                                     ; 1001F484 _ 53
        push    esi                                     ; 1001F485 _ 56
        mov     esi, dword [ebp+10H]                    ; 1001F486 _ 8B. 75, 10
        mov     ebx, dword [ebp+8H]                     ; 1001F489 _ 8B. 5D, 08
        push    edi                                     ; 1001F48C _ 57
        mov     eax, dword [esi+4H]                     ; 1001F48D _ 8B. 46, 04
        dec     eax                                     ; 1001F490 _ 48
        cmp     byte [ebp+14H], 0                       ; 1001F491 _ 80. 7D, 14, 00
        jz      ?_4031                                  ; 1001F495 _ 74, 1A
        cmp     eax, dword [ebp+0CH]                    ; 1001F497 _ 3B. 45, 0C
        jnz     ?_4031                                  ; 1001F49A _ 75, 15
        xor     ecx, ecx                                ; 1001F49C _ 33. C9
        cmp     dword [esi], 45                         ; 1001F49E _ 83. 3E, 2D
        sete    cl                                      ; 1001F4A1 _ 0F 94. C1
        add     ecx, eax                                ; 1001F4A4 _ 03. C8
        add     ecx, ebx                                ; 1001F4A6 _ 03. CB
        mov     eax, ecx                                ; 1001F4A8 _ 8B. C1
        mov     byte [eax], 48                          ; 1001F4AA _ C6. 00, 30
        and     byte [eax+1H], 00H                      ; 1001F4AD _ 80. 60, 01, 00
?_4031: cmp     dword [esi], 45                         ; 1001F4B1 _ 83. 3E, 2D
        mov     edi, ebx                                ; 1001F4B4 _ 8B. FB
        jnz     ?_4032                                  ; 1001F4B6 _ 75, 06
        mov     byte [ebx], 45                          ; 1001F4B8 _ C6. 03, 2D
        lea     edi, [ebx+1H]                           ; 1001F4BB _ 8D. 7B, 01
?_4032: mov     eax, dword [esi+4H]                     ; 1001F4BE _ 8B. 46, 04
        test    eax, eax                                ; 1001F4C1 _ 85. C0
        jg      ?_4033                                  ; 1001F4C3 _ 7F, 10
        push    1                                       ; 1001F4C5 _ 6A, 01
        push    edi                                     ; 1001F4C7 _ 57
        call    ?_4048                                  ; 1001F4C8 _ E8, 0000013F
        pop     ecx                                     ; 1001F4CD _ 59
        mov     byte [edi], 48                          ; 1001F4CE _ C6. 07, 30
        pop     ecx                                     ; 1001F4D1 _ 59
        inc     edi                                     ; 1001F4D2 _ 47
        jmp     ?_4034                                  ; 1001F4D3 _ EB, 02

?_4033: add     edi, eax                                ; 1001F4D5 _ 03. F8
?_4034: cmp     dword [ebp+0CH], 0                      ; 1001F4D7 _ 83. 7D, 0C, 00
        jle     ?_4038                                  ; 1001F4DB _ 7E, 44
        push    1                                       ; 1001F4DD _ 6A, 01
        push    edi                                     ; 1001F4DF _ 57
        call    ?_4048                                  ; 1001F4E0 _ E8, 00000127
        mov     al, byte [?_5478]                       ; 1001F4E5 _ A0, 10033EE4(d)
        pop     ecx                                     ; 1001F4EA _ 59
        mov     byte [edi], al                          ; 1001F4EB _ 88. 07
        mov     esi, dword [esi+4H]                     ; 1001F4ED _ 8B. 76, 04
        inc     edi                                     ; 1001F4F0 _ 47
        pop     ecx                                     ; 1001F4F1 _ 59
        test    esi, esi                                ; 1001F4F2 _ 85. F6
        jge     ?_4038                                  ; 1001F4F4 _ 7D, 2B
        cmp     byte [ebp+14H], 0                       ; 1001F4F6 _ 80. 7D, 14, 00
        jz      ?_4035                                  ; 1001F4FA _ 74, 04
        neg     esi                                     ; 1001F4FC _ F7. DE
        jmp     ?_4036                                  ; 1001F4FE _ EB, 07

?_4035: neg     esi                                     ; 1001F500 _ F7. DE
        cmp     dword [ebp+0CH], esi                    ; 1001F502 _ 39. 75, 0C
        jl      ?_4037                                  ; 1001F505 _ 7C, 03
?_4036: mov     dword [ebp+0CH], esi                    ; 1001F507 _ 89. 75, 0C
?_4037: push    dword [ebp+0CH]                         ; 1001F50A _ FF. 75, 0C
        push    edi                                     ; 1001F50D _ 57
        call    ?_4048                                  ; 1001F50E _ E8, 000000F9
        push    dword [ebp+0CH]                         ; 1001F513 _ FF. 75, 0C
        push    48                                      ; 1001F516 _ 6A, 30
        push    edi                                     ; 1001F518 _ 57
        call    ?_4392                                  ; 1001F519 _ E8, 00001D22
        add     esp, 20                                 ; 1001F51E _ 83. C4, 14
?_4038: pop     edi                                     ; 1001F521 _ 5F
        mov     eax, ebx                                ; 1001F522 _ 8B. C3
        pop     esi                                     ; 1001F524 _ 5E
        pop     ebx                                     ; 1001F525 _ 5B
        pop     ebp                                     ; 1001F526 _ 5D
        ret                                             ; 1001F527 _ C3

?_4039: push    ebp                                     ; 1001F528 _ 55
        mov     ebp, esp                                ; 1001F529 _ 8B. EC
        sub     esp, 40                                 ; 1001F52B _ 83. EC, 28
        push    ebx                                     ; 1001F52E _ 53
        push    esi                                     ; 1001F52F _ 56
        lea     eax, [ebp-28H]                          ; 1001F530 _ 8D. 45, D8
        push    edi                                     ; 1001F533 _ 57
        push    eax                                     ; 1001F534 _ 50
        lea     eax, [ebp-10H]                          ; 1001F535 _ 8D. 45, F0
        push    eax                                     ; 1001F538 _ 50
        mov     eax, dword [ebp+8H]                     ; 1001F539 _ 8B. 45, 08
        push    ecx                                     ; 1001F53C _ 51
        push    ecx                                     ; 1001F53D _ 51
        fld     qword [eax]                             ; 1001F53E _ DD. 00
        fstp    qword [esp]                             ; 1001F540 _ DD. 1C 24
        call    ?_4491                                  ; 1001F543 _ E8, 00002453
        mov     eax, dword [ebp-0CH]                    ; 1001F548 _ 8B. 45, F4
        mov     ebx, dword [ebp+10H]                    ; 1001F54B _ 8B. 5D, 10
        lea     esi, [eax-1H]                           ; 1001F54E _ 8D. 70, FF
        xor     eax, eax                                ; 1001F551 _ 33. C0
        cmp     dword [ebp-10H], 45                     ; 1001F553 _ 83. 7D, F0, 2D
        sete    al                                      ; 1001F557 _ 0F 94. C0
        add     eax, dword [ebp+0CH]                    ; 1001F55A _ 03. 45, 0C
        mov     edi, eax                                ; 1001F55D _ 8B. F8
        lea     eax, [ebp-10H]                          ; 1001F55F _ 8D. 45, F0
        push    eax                                     ; 1001F562 _ 50
        push    ebx                                     ; 1001F563 _ 53
        push    edi                                     ; 1001F564 _ 57
        call    ?_4481                                  ; 1001F565 _ E8, 000023BA
        mov     eax, dword [ebp-0CH]                    ; 1001F56A _ 8B. 45, F4
        add     esp, 28                                 ; 1001F56D _ 83. C4, 1C
        dec     eax                                     ; 1001F570 _ 48
        cmp     esi, eax                                ; 1001F571 _ 3B. F0
        setl    cl                                      ; 1001F573 _ 0F 9C. C1
        cmp     eax, -4                                 ; 1001F576 _ 83. F8, FC
        jl      ?_4042                                  ; 1001F579 _ 7C, 26
        cmp     eax, ebx                                ; 1001F57B _ 3B. C3
        jge     ?_4042                                  ; 1001F57D _ 7D, 22
        test    cl, cl                                  ; 1001F57F _ 84. C9
        jz      ?_4041                                  ; 1001F581 _ 74, 0A
?_4040: mov     al, byte [edi]                          ; 1001F583 _ 8A. 07
        inc     edi                                     ; 1001F585 _ 47
        test    al, al                                  ; 1001F586 _ 84. C0
        jnz     ?_4040                                  ; 1001F588 _ 75, F9
        and     byte [edi-2H], al                       ; 1001F58A _ 20. 47, FE
?_4041: lea     eax, [ebp-10H]                          ; 1001F58D _ 8D. 45, F0
        push    1                                       ; 1001F590 _ 6A, 01
        push    eax                                     ; 1001F592 _ 50
        push    ebx                                     ; 1001F593 _ 53
        push    dword [ebp+0CH]                         ; 1001F594 _ FF. 75, 0C
        call    ?_4030                                  ; 1001F597 _ E8, FFFFFEE5
        add     esp, 16                                 ; 1001F59C _ 83. C4, 10
        jmp     ?_4043                                  ; 1001F59F _ EB, 15

?_4042: lea     eax, [ebp-10H]                          ; 1001F5A1 _ 8D. 45, F0
        push    1                                       ; 1001F5A4 _ 6A, 01
        push    eax                                     ; 1001F5A6 _ 50
        push    dword [ebp+14H]                         ; 1001F5A7 _ FF. 75, 14
        push    ebx                                     ; 1001F5AA _ 53
        push    dword [ebp+0CH]                         ; 1001F5AB _ FF. 75, 0C
        call    ?_4020                                  ; 1001F5AE _ E8, FFFFFDB7
        add     esp, 20                                 ; 1001F5B3 _ 83. C4, 14
?_4043: pop     edi                                     ; 1001F5B6 _ 5F
        pop     esi                                     ; 1001F5B7 _ 5E
        pop     ebx                                     ; 1001F5B8 _ 5B
        leave                                           ; 1001F5B9 _ C9
        ret                                             ; 1001F5BA _ C3

?_4044: push    ebp                                     ; 1001F5BB _ 55
        mov     ebp, esp                                ; 1001F5BC _ 8B. EC
        cmp     dword [ebp+10H], 101                    ; 1001F5BE _ 83. 7D, 10, 65
        jz      ?_4046                                  ; 1001F5C2 _ 74, 32
        cmp     dword [ebp+10H], 69                     ; 1001F5C4 _ 83. 7D, 10, 45
        jz      ?_4046                                  ; 1001F5C8 _ 74, 2C
        cmp     dword [ebp+10H], 102                    ; 1001F5CA _ 83. 7D, 10, 66
        jnz     ?_4045                                  ; 1001F5CE _ 75, 13
        push    dword [ebp+14H]                         ; 1001F5D0 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1001F5D3 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001F5D6 _ FF. 75, 08
        call    ?_4029                                  ; 1001F5D9 _ E8, FFFFFE4E
        add     esp, 12                                 ; 1001F5DE _ 83. C4, 0C
        pop     ebp                                     ; 1001F5E1 _ 5D
        ret                                             ; 1001F5E2 _ C3

?_4045: push    dword [ebp+18H]                         ; 1001F5E3 _ FF. 75, 18
        push    dword [ebp+14H]                         ; 1001F5E6 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1001F5E9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001F5EC _ FF. 75, 08
        call    ?_4039                                  ; 1001F5EF _ E8, FFFFFF34
        jmp     ?_4047                                  ; 1001F5F4 _ EB, 11

?_4046: push    dword [ebp+18H]                         ; 1001F5F6 _ FF. 75, 18
        push    dword [ebp+14H]                         ; 1001F5F9 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1001F5FC _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001F5FF _ FF. 75, 08
        call    ?_4019                                  ; 1001F602 _ E8, FFFFFD02
?_4047: add     esp, 16                                 ; 1001F607 _ 83. C4, 10
        pop     ebp                                     ; 1001F60A _ 5D
        ret                                             ; 1001F60B _ C3

?_4048: push    edi                                     ; 1001F60C _ 57
        mov     edi, dword [esp+0CH]                    ; 1001F60D _ 8B. 7C 24, 0C
        test    edi, edi                                ; 1001F611 _ 85. FF
        jz      ?_4049                                  ; 1001F613 _ 74, 1A
        push    esi                                     ; 1001F615 _ 56
        mov     esi, dword [esp+0CH]                    ; 1001F616 _ 8B. 74 24, 0C
        push    esi                                     ; 1001F61A _ 56
        call    ?_3393                                  ; 1001F61B _ E8, FFFFC7B0
        inc     eax                                     ; 1001F620 _ 40
        push    eax                                     ; 1001F621 _ 50
        push    esi                                     ; 1001F622 _ 56
        add     esi, edi                                ; 1001F623 _ 03. F7
        push    esi                                     ; 1001F625 _ 56
        call    ?_3251                                  ; 1001F626 _ E8, FFFFBBD5
        add     esp, 16                                 ; 1001F62B _ 83. C4, 10
        pop     esi                                     ; 1001F62E _ 5E
?_4049: pop     edi                                     ; 1001F62F _ 5F
        ret                                             ; 1001F630 _ C3

?_4050: push    ebp                                     ; 1001F631 _ 55
        mov     ebp, esp                                ; 1001F632 _ 8B. EC
        push    -1                                      ; 1001F634 _ 6A, FF
        push    ?_4968                                  ; 1001F636 _ 68, 100260F8(d)
        push    ?_3881                                  ; 1001F63B _ 68, 1001E7DC(d)
; Note: Absolute memory address without relocation
        mov     eax, dword [fs:0H]                      ; 1001F640 _ 64: A1, 00000000
        push    eax                                     ; 1001F646 _ 50
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], esp                      ; 1001F647 _ 64: 89. 25, 00000000
        sub     esp, 28                                 ; 1001F64E _ 83. EC, 1C
        push    ebx                                     ; 1001F651 _ 53
        push    esi                                     ; 1001F652 _ 56
        push    edi                                     ; 1001F653 _ 57
        mov     dword [ebp-18H], esp                    ; 1001F654 _ 89. 65, E8
        xor     edi, edi                                ; 1001F657 _ 33. FF
        cmp     dword [?_5591], edi                     ; 1001F659 _ 39. 3D, 100355D4(d)
        jnz     ?_4052                                  ; 1001F65F _ 75, 46
        push    edi                                     ; 1001F661 _ 57
        push    edi                                     ; 1001F662 _ 57
        push    1                                       ; 1001F663 _ 6A, 01
        pop     ebx                                     ; 1001F665 _ 5B
        push    ebx                                     ; 1001F666 _ 53
        push    ?_4967                                  ; 1001F667 _ 68, 100260F4(d)
        mov     esi, 256                                ; 1001F66C _ BE, 00000100
        push    esi                                     ; 1001F671 _ 56
        push    edi                                     ; 1001F672 _ 57
        call    near [imp_LCMapStringW]                 ; 1001F673 _ FF. 15, 10024078(d)
        test    eax, eax                                ; 1001F679 _ 85. C0
        jz      ?_4051                                  ; 1001F67B _ 74, 08
        mov     dword [?_5591], ebx                     ; 1001F67D _ 89. 1D, 100355D4(d)
        jmp     ?_4052                                  ; 1001F683 _ EB, 22

?_4051: push    edi                                     ; 1001F685 _ 57
        push    edi                                     ; 1001F686 _ 57
        push    ebx                                     ; 1001F687 _ 53
        push    ?_4966                                  ; 1001F688 _ 68, 100260F0(d)
        push    esi                                     ; 1001F68D _ 56
        push    edi                                     ; 1001F68E _ 57
        call    near [imp_LCMapStringA]                 ; 1001F68F _ FF. 15, 10024140(d)
        test    eax, eax                                ; 1001F695 _ 85. C0
        je      ?_4059                                  ; 1001F697 _ 0F 84, 00000122
        mov     dword [?_5591], 2                       ; 1001F69D _ C7. 05, 100355D4(d), 00000002
?_4052: cmp     dword [ebp+14H], edi                    ; 1001F6A7 _ 39. 7D, 14
        jle     ?_4053                                  ; 1001F6AA _ 7E, 10
        push    dword [ebp+14H]                         ; 1001F6AC _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1001F6AF _ FF. 75, 10
        call    ?_4840                                  ; 1001F6B2 _ E8, 00003E53
        pop     ecx                                     ; 1001F6B7 _ 59
        pop     ecx                                     ; 1001F6B8 _ 59
        mov     dword [ebp+14H], eax                    ; 1001F6B9 _ 89. 45, 14
?_4053: mov     eax, dword [?_5591]                     ; 1001F6BC _ A1, 100355D4(d)
        cmp     eax, 2                                  ; 1001F6C1 _ 83. F8, 02
        jnz     ?_4054                                  ; 1001F6C4 _ 75, 1D
        push    dword [ebp+1CH]                         ; 1001F6C6 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1001F6C9 _ FF. 75, 18
        push    dword [ebp+14H]                         ; 1001F6CC _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1001F6CF _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1001F6D2 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001F6D5 _ FF. 75, 08
        call    near [imp_LCMapStringA]                 ; 1001F6D8 _ FF. 15, 10024140(d)
        jmp     ?_4060                                  ; 1001F6DE _ E9, 000000DE

?_4054: cmp     eax, 1                                  ; 1001F6E3 _ 83. F8, 01
        jne     ?_4059                                  ; 1001F6E6 _ 0F 85, 000000D3
        cmp     dword [ebp+20H], edi                    ; 1001F6EC _ 39. 7D, 20
        jnz     ?_4055                                  ; 1001F6EF _ 75, 08
        mov     eax, dword [?_5590]                     ; 1001F6F1 _ A1, 100355CC(d)
        mov     dword [ebp+20H], eax                    ; 1001F6F6 _ 89. 45, 20
?_4055: push    edi                                     ; 1001F6F9 _ 57
        push    edi                                     ; 1001F6FA _ 57
        push    dword [ebp+14H]                         ; 1001F6FB _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1001F6FE _ FF. 75, 10
        mov     eax, dword [ebp+24H]                    ; 1001F701 _ 8B. 45, 24
        neg     eax                                     ; 1001F704 _ F7. D8
        sbb     eax, eax                                ; 1001F706 _ 1B. C0
        and     eax, 08H                                ; 1001F708 _ 83. E0, 08
        inc     eax                                     ; 1001F70B _ 40
        push    eax                                     ; 1001F70C _ 50
        push    dword [ebp+20H]                         ; 1001F70D _ FF. 75, 20
        call    near [imp_MultiByteToWideChar]          ; 1001F710 _ FF. 15, 10024134(d)
        mov     ebx, eax                                ; 1001F716 _ 8B. D8
        mov     dword [ebp-1CH], ebx                    ; 1001F718 _ 89. 5D, E4
        cmp     ebx, edi                                ; 1001F71B _ 3B. DF
        je      ?_4059                                  ; 1001F71D _ 0F 84, 0000009C
        mov     dword [ebp-4H], edi                     ; 1001F723 _ 89. 7D, FC
        lea     eax, [ebx+ebx]                          ; 1001F726 _ 8D. 04 1B
        add     eax, 3                                  ; 1001F729 _ 83. C0, 03
        and     al, 0FFFFFFFCH                          ; 1001F72C _ 24, FC
        call    ?_3168                                  ; 1001F72E _ E8, FFFFB53D
        mov     dword [ebp-18H], esp                    ; 1001F733 _ 89. 65, E8
        mov     eax, esp                                ; 1001F736 _ 8B. C4
        mov     dword [ebp-24H], eax                    ; 1001F738 _ 89. 45, DC
        or      dword [ebp-4H], 0FFFFFFFFH              ; 1001F73B _ 83. 4D, FC, FF
        jmp     ?_4058                                  ; 1001F73F _ EB, 13

?_4056: push    1                                       ; 1001F741 _ 6A, 01
        pop     eax                                     ; 1001F743 _ 58
        ret                                             ; 1001F744 _ C3

?_4057: mov     esp, dword [ebp-18H]                    ; 1001F745 _ 8B. 65, E8
        xor     edi, edi                                ; 1001F748 _ 33. FF
        mov     dword [ebp-24H], edi                    ; 1001F74A _ 89. 7D, DC
        or      dword [ebp-4H], 0FFFFFFFFH              ; 1001F74D _ 83. 4D, FC, FF
        mov     ebx, dword [ebp-1CH]                    ; 1001F751 _ 8B. 5D, E4
?_4058: cmp     dword [ebp-24H], edi                    ; 1001F754 _ 39. 7D, DC
        jz      ?_4059                                  ; 1001F757 _ 74, 66
        push    ebx                                     ; 1001F759 _ 53
        push    dword [ebp-24H]                         ; 1001F75A _ FF. 75, DC
        push    dword [ebp+14H]                         ; 1001F75D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1001F760 _ FF. 75, 10
        push    1                                       ; 1001F763 _ 6A, 01
        push    dword [ebp+20H]                         ; 1001F765 _ FF. 75, 20
        call    near [imp_MultiByteToWideChar]          ; 1001F768 _ FF. 15, 10024134(d)
        test    eax, eax                                ; 1001F76E _ 85. C0
        jz      ?_4059                                  ; 1001F770 _ 74, 4D
        push    edi                                     ; 1001F772 _ 57
        push    edi                                     ; 1001F773 _ 57
        push    ebx                                     ; 1001F774 _ 53
        push    dword [ebp-24H]                         ; 1001F775 _ FF. 75, DC
        push    dword [ebp+0CH]                         ; 1001F778 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001F77B _ FF. 75, 08
        call    near [imp_LCMapStringW]                 ; 1001F77E _ FF. 15, 10024078(d)
        mov     esi, eax                                ; 1001F784 _ 8B. F0
        mov     dword [ebp-28H], esi                    ; 1001F786 _ 89. 75, D8
        cmp     esi, edi                                ; 1001F789 _ 3B. F7
        jz      ?_4059                                  ; 1001F78B _ 74, 32
        test    byte [ebp+0DH], 04H                     ; 1001F78D _ F6. 45, 0D, 04
        jz      ?_4061                                  ; 1001F791 _ 74, 40
        cmp     dword [ebp+1CH], edi                    ; 1001F793 _ 39. 7D, 1C
        je      ?_4067                                  ; 1001F796 _ 0F 84, 000000B2
        cmp     esi, dword [ebp+1CH]                    ; 1001F79C _ 3B. 75, 1C
        jg      ?_4059                                  ; 1001F79F _ 7F, 1E
        push    dword [ebp+1CH]                         ; 1001F7A1 _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1001F7A4 _ FF. 75, 18
        push    ebx                                     ; 1001F7A7 _ 53
        push    dword [ebp-24H]                         ; 1001F7A8 _ FF. 75, DC
        push    dword [ebp+0CH]                         ; 1001F7AB _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001F7AE _ FF. 75, 08
        call    near [imp_LCMapStringW]                 ; 1001F7B1 _ FF. 15, 10024078(d)
        test    eax, eax                                ; 1001F7B7 _ 85. C0
        jne     ?_4067                                  ; 1001F7B9 _ 0F 85, 0000008F
?_4059: xor     eax, eax                                ; 1001F7BF _ 33. C0
?_4060: lea     esp, [ebp-38H]                          ; 1001F7C1 _ 8D. 65, C8
        mov     ecx, dword [ebp-10H]                    ; 1001F7C4 _ 8B. 4D, F0
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], ecx                      ; 1001F7C7 _ 64: 89. 0D, 00000000
        pop     edi                                     ; 1001F7CE _ 5F
        pop     esi                                     ; 1001F7CF _ 5E
        pop     ebx                                     ; 1001F7D0 _ 5B
        leave                                           ; 1001F7D1 _ C9
        ret                                             ; 1001F7D2 _ C3

?_4061: mov     dword [ebp-4H], 1                       ; 1001F7D3 _ C7. 45, FC, 00000001
        lea     eax, [esi+esi]                          ; 1001F7DA _ 8D. 04 36
        add     eax, 3                                  ; 1001F7DD _ 83. C0, 03
        and     al, 0FFFFFFFCH                          ; 1001F7E0 _ 24, FC
        call    ?_3168                                  ; 1001F7E2 _ E8, FFFFB489
        mov     dword [ebp-18H], esp                    ; 1001F7E7 _ 89. 65, E8
        mov     ebx, esp                                ; 1001F7EA _ 8B. DC
        mov     dword [ebp-20H], ebx                    ; 1001F7EC _ 89. 5D, E0
        or      dword [ebp-4H], 0FFFFFFFFH              ; 1001F7EF _ 83. 4D, FC, FF
        jmp     ?_4064                                  ; 1001F7F3 _ EB, 12

?_4062: push    1                                       ; 1001F7F5 _ 6A, 01
        pop     eax                                     ; 1001F7F7 _ 58
        ret                                             ; 1001F7F8 _ C3

?_4063: mov     esp, dword [ebp-18H]                    ; 1001F7F9 _ 8B. 65, E8
        xor     edi, edi                                ; 1001F7FC _ 33. FF
        xor     ebx, ebx                                ; 1001F7FE _ 33. DB
        or      dword [ebp-4H], 0FFFFFFFFH              ; 1001F800 _ 83. 4D, FC, FF
        mov     esi, dword [ebp-28H]                    ; 1001F804 _ 8B. 75, D8
?_4064: cmp     ebx, edi                                ; 1001F807 _ 3B. DF
        jz      ?_4059                                  ; 1001F809 _ 74, B4
        push    esi                                     ; 1001F80B _ 56
        push    ebx                                     ; 1001F80C _ 53
        push    dword [ebp-1CH]                         ; 1001F80D _ FF. 75, E4
        push    dword [ebp-24H]                         ; 1001F810 _ FF. 75, DC
        push    dword [ebp+0CH]                         ; 1001F813 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001F816 _ FF. 75, 08
        call    near [imp_LCMapStringW]                 ; 1001F819 _ FF. 15, 10024078(d)
        test    eax, eax                                ; 1001F81F _ 85. C0
        jz      ?_4059                                  ; 1001F821 _ 74, 9C
        cmp     dword [ebp+1CH], edi                    ; 1001F823 _ 39. 7D, 1C
        push    edi                                     ; 1001F826 _ 57
        push    edi                                     ; 1001F827 _ 57
        jnz     ?_4065                                  ; 1001F828 _ 75, 04
        push    edi                                     ; 1001F82A _ 57
        push    edi                                     ; 1001F82B _ 57
        jmp     ?_4066                                  ; 1001F82C _ EB, 06

?_4065: push    dword [ebp+1CH]                         ; 1001F82E _ FF. 75, 1C
        push    dword [ebp+18H]                         ; 1001F831 _ FF. 75, 18
?_4066: push    esi                                     ; 1001F834 _ 56
        push    ebx                                     ; 1001F835 _ 53
        push    544                                     ; 1001F836 _ 68, 00000220
        push    dword [ebp+20H]                         ; 1001F83B _ FF. 75, 20
        call    near [imp_WideCharToMultiByte]          ; 1001F83E _ FF. 15, 1002413C(d)
        mov     esi, eax                                ; 1001F844 _ 8B. F0
        cmp     esi, edi                                ; 1001F846 _ 3B. F7
        je      ?_4059                                  ; 1001F848 _ 0F 84, FFFFFF71
?_4067: mov     eax, esi                                ; 1001F84E _ 8B. C6
        jmp     ?_4060                                  ; 1001F850 _ E9, FFFFFF6C

?_4068: push    ebp                                     ; 1001F855 _ 55
        mov     ebp, esp                                ; 1001F856 _ 8B. EC
        push    ecx                                     ; 1001F858 _ 51
        mov     eax, dword [ebp+8H]                     ; 1001F859 _ 8B. 45, 08
        lea     ecx, [eax+1H]                           ; 1001F85C _ 8D. 48, 01
        cmp     ecx, 256                                ; 1001F85F _ 81. F9, 00000100
        ja      ?_4069                                  ; 1001F865 _ 77, 0C
        mov     ecx, dword [?_5475]                     ; 1001F867 _ 8B. 0D, 10033CD4(d)
        movzx   eax, word [ecx+eax*2]                   ; 1001F86D _ 0F B7. 04 41
        jmp     ?_4073                                  ; 1001F871 _ EB, 52

?_4069: mov     ecx, eax                                ; 1001F873 _ 8B. C8
        push    esi                                     ; 1001F875 _ 56
        mov     esi, dword [?_5475]                     ; 1001F876 _ 8B. 35, 10033CD4(d)
        sar     ecx, 8                                  ; 1001F87C _ C1. F9, 08
        movzx   edx, cl                                 ; 1001F87F _ 0F B6. D1
        test    byte [esi+edx*2+1H], 0FFFFFF80H         ; 1001F882 _ F6. 44 56, 01, 80
        pop     esi                                     ; 1001F887 _ 5E
        jz      ?_4070                                  ; 1001F888 _ 74, 0E
        and     byte [ebp-2H], 00H                      ; 1001F88A _ 80. 65, FE, 00
        mov     byte [ebp-4H], cl                       ; 1001F88E _ 88. 4D, FC
        mov     byte [ebp-3H], al                       ; 1001F891 _ 88. 45, FD
        push    2                                       ; 1001F894 _ 6A, 02
        jmp     ?_4071                                  ; 1001F896 _ EB, 09

?_4070: and     byte [ebp-3H], 00H                      ; 1001F898 _ 80. 65, FD, 00
        mov     byte [ebp-4H], al                       ; 1001F89C _ 88. 45, FC
        push    1                                       ; 1001F89F _ 6A, 01
?_4071: pop     eax                                     ; 1001F8A1 _ 58
        lea     ecx, [ebp+0AH]                          ; 1001F8A2 _ 8D. 4D, 0A
        push    1                                       ; 1001F8A5 _ 6A, 01
        push    0                                       ; 1001F8A7 _ 6A, 00
        push    0                                       ; 1001F8A9 _ 6A, 00
        push    ecx                                     ; 1001F8AB _ 51
        push    eax                                     ; 1001F8AC _ 50
        lea     eax, [ebp-4H]                           ; 1001F8AD _ 8D. 45, FC
        push    eax                                     ; 1001F8B0 _ 50
        push    1                                       ; 1001F8B1 _ 6A, 01
        call    ?_4515                                  ; 1001F8B3 _ E8, 00002312
        add     esp, 28                                 ; 1001F8B8 _ 83. C4, 1C
        test    eax, eax                                ; 1001F8BB _ 85. C0
        jnz     ?_4072                                  ; 1001F8BD _ 75, 02
        leave                                           ; 1001F8BF _ C9
        ret                                             ; 1001F8C0 _ C3

?_4072: movzx   eax, word [ebp+0AH]                     ; 1001F8C1 _ 0F B7. 45, 0A
?_4073: and     eax, dword [ebp+0CH]                    ; 1001F8C5 _ 23. 45, 0C
        leave                                           ; 1001F8C8 _ C9
        ret                                             ; 1001F8C9 _ C3

; Filling space: 6H
; Filler type: INT 3 Debug breakpoint
;       db 0CCH, 0CCH, 0CCH, 0CCH, 0CCH, 0CCH

ALIGN   8
?_4074: push    edi                                     ; 1001F8D0 _ 57
        mov     edi, dword [esp+8H]                     ; 1001F8D1 _ 8B. 7C 24, 08
        jmp     ?_4082                                  ; 1001F8D5 _ EB, 6A

; Filling space: 9H
; Filler type: lea with same source and destination
;       db 8DH, 0A4H, 24H, 00H, 00H, 00H, 00H, 8BH
;       db 0FFH

ALIGN   16
?_4075: mov     ecx, dword [esp+4H]                     ; 1001F8E0 _ 8B. 4C 24, 04
        push    edi                                     ; 1001F8E4 _ 57
        test    ecx, 3H                                 ; 1001F8E5 _ F7. C1, 00000003
        jz      ?_4077                                  ; 1001F8EB _ 74, 0F
?_4076: mov     al, byte [ecx]                          ; 1001F8ED _ 8A. 01
        inc     ecx                                     ; 1001F8EF _ 41
        test    al, al                                  ; 1001F8F0 _ 84. C0
        jz      ?_4078                                  ; 1001F8F2 _ 74, 3B
        test    ecx, 3H                                 ; 1001F8F4 _ F7. C1, 00000003
        jnz     ?_4076                                  ; 1001F8FA _ 75, F1
?_4077: mov     eax, dword [ecx]                        ; 1001F8FC _ 8B. 01
        mov     edx, 2130640639                         ; 1001F8FE _ BA, 7EFEFEFF
        add     edx, eax                                ; 1001F903 _ 03. D0
        xor     eax, 0FFFFFFFFH                         ; 1001F905 _ 83. F0, FF
        xor     eax, edx                                ; 1001F908 _ 33. C2
        add     ecx, 4                                  ; 1001F90A _ 83. C1, 04
        test    eax, 81010100H                          ; 1001F90D _ A9, 81010100
        jz      ?_4077                                  ; 1001F912 _ 74, E8
        mov     eax, dword [ecx-4H]                     ; 1001F914 _ 8B. 41, FC
        test    al, al                                  ; 1001F917 _ 84. C0
        jz      ?_4081                                  ; 1001F919 _ 74, 23
        test    ah, ah                                  ; 1001F91B _ 84. E4
        jz      ?_4080                                  ; 1001F91D _ 74, 1A
        test    eax, 0FF0000H                           ; 1001F91F _ A9, 00FF0000
        jz      ?_4079                                  ; 1001F924 _ 74, 0E
        test    eax, 0FF000000H                         ; 1001F926 _ A9, FF000000
        jz      ?_4078                                  ; 1001F92B _ 74, 02
        jmp     ?_4077                                  ; 1001F92D _ EB, CD

?_4078: lea     edi, [ecx-1H]                           ; 1001F92F _ 8D. 79, FF
        jmp     ?_4082                                  ; 1001F932 _ EB, 0D

?_4079: lea     edi, [ecx-2H]                           ; 1001F934 _ 8D. 79, FE
        jmp     ?_4082                                  ; 1001F937 _ EB, 08

?_4080: lea     edi, [ecx-3H]                           ; 1001F939 _ 8D. 79, FD
        jmp     ?_4082                                  ; 1001F93C _ EB, 03

?_4081: lea     edi, [ecx-4H]                           ; 1001F93E _ 8D. 79, FC
?_4082: mov     ecx, dword [esp+0CH]                    ; 1001F941 _ 8B. 4C 24, 0C
        test    ecx, 3H                                 ; 1001F945 _ F7. C1, 00000003
        jz      ?_4085                                  ; 1001F94B _ 74, 19
?_4083: mov     dl, byte [ecx]                          ; 1001F94D _ 8A. 11
        inc     ecx                                     ; 1001F94F _ 41
        test    dl, dl                                  ; 1001F950 _ 84. D2
        jz      ?_4089                                  ; 1001F952 _ 74, 64
        mov     byte [edi], dl                          ; 1001F954 _ 88. 17
        inc     edi                                     ; 1001F956 _ 47
        test    ecx, 3H                                 ; 1001F957 _ F7. C1, 00000003
        jnz     ?_4083                                  ; 1001F95D _ 75, EE
        jmp     ?_4085                                  ; 1001F95F _ EB, 05

?_4084: mov     dword [edi], edx                        ; 1001F961 _ 89. 17
        add     edi, 4                                  ; 1001F963 _ 83. C7, 04
?_4085: mov     edx, 2130640639                         ; 1001F966 _ BA, 7EFEFEFF
        mov     eax, dword [ecx]                        ; 1001F96B _ 8B. 01
        add     edx, eax                                ; 1001F96D _ 03. D0
        xor     eax, 0FFFFFFFFH                         ; 1001F96F _ 83. F0, FF
        xor     eax, edx                                ; 1001F972 _ 33. C2
        mov     edx, dword [ecx]                        ; 1001F974 _ 8B. 11
        add     ecx, 4                                  ; 1001F976 _ 83. C1, 04
        test    eax, 81010100H                          ; 1001F979 _ A9, 81010100
        jz      ?_4084                                  ; 1001F97E _ 74, E1
        test    dl, dl                                  ; 1001F980 _ 84. D2
        jz      ?_4089                                  ; 1001F982 _ 74, 34
        test    dh, dh                                  ; 1001F984 _ 84. F6
        jz      ?_4088                                  ; 1001F986 _ 74, 27
        test    edx, 0FF0000H                           ; 1001F988 _ F7. C2, 00FF0000
        jz      ?_4087                                  ; 1001F98E _ 74, 12
        test    edx, 0FF000000H                         ; 1001F990 _ F7. C2, FF000000
        jz      ?_4086                                  ; 1001F996 _ 74, 02
        jmp     ?_4084                                  ; 1001F998 _ EB, C7

?_4086: mov     dword [edi], edx                        ; 1001F99A _ 89. 17
        mov     eax, dword [esp+8H]                     ; 1001F99C _ 8B. 44 24, 08
        pop     edi                                     ; 1001F9A0 _ 5F
        ret                                             ; 1001F9A1 _ C3

?_4087: mov     word [edi], dx                          ; 1001F9A2 _ 66: 89. 17
        mov     eax, dword [esp+8H]                     ; 1001F9A5 _ 8B. 44 24, 08
        mov     byte [edi+2H], 0                        ; 1001F9A9 _ C6. 47, 02, 00
        pop     edi                                     ; 1001F9AD _ 5F
        ret                                             ; 1001F9AE _ C3

?_4088: mov     word [edi], dx                          ; 1001F9AF _ 66: 89. 17
        mov     eax, dword [esp+8H]                     ; 1001F9B2 _ 8B. 44 24, 08
        pop     edi                                     ; 1001F9B6 _ 5F
        ret                                             ; 1001F9B7 _ C3

?_4089: mov     byte [edi], dl                          ; 1001F9B8 _ 88. 17
        mov     eax, dword [esp+8H]                     ; 1001F9BA _ 8B. 44 24, 08
        pop     edi                                     ; 1001F9BE _ 5F
        ret                                             ; 1001F9BF _ C3

?_4090: push    ebx                                     ; 1001F9C0 _ 53
        xor     ebx, ebx                                ; 1001F9C1 _ 33. DB
        cmp     dword [?_5818], ebx                     ; 1001F9C3 _ 39. 1D, 11767590(d)
        push    esi                                     ; 1001F9C9 _ 56
        push    edi                                     ; 1001F9CA _ 57
        jnz     ?_4091                                  ; 1001F9CB _ 75, 05
        call    ?_4576                                  ; 1001F9CD _ E8, 00002719
?_4091: mov     esi, dword [?_5574]                     ; 1001F9D2 _ 8B. 35, 10035500(d)
        xor     edi, edi                                ; 1001F9D8 _ 33. FF
?_4092: mov     al, byte [esi]                          ; 1001F9DA _ 8A. 06
        cmp     al, bl                                  ; 1001F9DC _ 3A. C3
        jz      ?_4094                                  ; 1001F9DE _ 74, 12
        cmp     al, 61                                  ; 1001F9E0 _ 3C, 3D
        jz      ?_4093                                  ; 1001F9E2 _ 74, 01
        inc     edi                                     ; 1001F9E4 _ 47
?_4093: push    esi                                     ; 1001F9E5 _ 56
        call    ?_3393                                  ; 1001F9E6 _ E8, FFFFC3E5
        pop     ecx                                     ; 1001F9EB _ 59
        lea     esi, [esi+eax+1H]                       ; 1001F9EC _ 8D. 74 06, 01
        jmp     ?_4092                                  ; 1001F9F0 _ EB, E8

?_4094: lea     eax, [edi*4+4H]                         ; 1001F9F2 _ 8D. 04 BD, 00000004
        push    eax                                     ; 1001F9F9 _ 50
        call    ?_3109                                  ; 1001F9FA _ E8, FFFFADF8
        mov     esi, eax                                ; 1001F9FF _ 8B. F0
        pop     ecx                                     ; 1001FA01 _ 59
        cmp     esi, ebx                                ; 1001FA02 _ 3B. F3
        mov     dword [?_5565], esi                     ; 1001FA04 _ 89. 35, 100354D0(d)
        jnz     ?_4095                                  ; 1001FA0A _ 75, 08
        push    9                                       ; 1001FA0C _ 6A, 09
        call    ?_3352                                  ; 1001FA0E _ E8, FFFFC05E
        pop     ecx                                     ; 1001FA13 _ 59
?_4095: mov     edi, dword [?_5574]                     ; 1001FA14 _ 8B. 3D, 10035500(d)
        cmp     byte [edi], bl                          ; 1001FA1A _ 38. 1F
        jz      ?_4099                                  ; 1001FA1C _ 74, 39
        push    ebp                                     ; 1001FA1E _ 55
?_4096: push    edi                                     ; 1001FA1F _ 57
        call    ?_3393                                  ; 1001FA20 _ E8, FFFFC3AB
        mov     ebp, eax                                ; 1001FA25 _ 8B. E8
        pop     ecx                                     ; 1001FA27 _ 59
        inc     ebp                                     ; 1001FA28 _ 45
        cmp     byte [edi], 61                          ; 1001FA29 _ 80. 3F, 3D
        jz      ?_4098                                  ; 1001FA2C _ 74, 22
        push    ebp                                     ; 1001FA2E _ 55
        call    ?_3109                                  ; 1001FA2F _ E8, FFFFADC3
        cmp     eax, ebx                                ; 1001FA34 _ 3B. C3
        pop     ecx                                     ; 1001FA36 _ 59
        mov     dword [esi], eax                        ; 1001FA37 _ 89. 06
        jnz     ?_4097                                  ; 1001FA39 _ 75, 08
        push    9                                       ; 1001FA3B _ 6A, 09
        call    ?_3352                                  ; 1001FA3D _ E8, FFFFC02F
        pop     ecx                                     ; 1001FA42 _ 59
?_4097: push    edi                                     ; 1001FA43 _ 57
        push    dword [esi]                             ; 1001FA44 _ FF. 36
        call    ?_4074                                  ; 1001FA46 _ E8, FFFFFE85
        pop     ecx                                     ; 1001FA4B _ 59
        add     esi, 4                                  ; 1001FA4C _ 83. C6, 04
        pop     ecx                                     ; 1001FA4F _ 59
?_4098: add     edi, ebp                                ; 1001FA50 _ 03. FD
        cmp     byte [edi], bl                          ; 1001FA52 _ 38. 1F
        jnz     ?_4096                                  ; 1001FA54 _ 75, C9
        pop     ebp                                     ; 1001FA56 _ 5D
?_4099: push    dword [?_5574]                          ; 1001FA57 _ FF. 35, 10035500(d)
        call    ?_3158                                  ; 1001FA5D _ E8, FFFFB11F
        pop     ecx                                     ; 1001FA62 _ 59
        mov     dword [?_5574], ebx                     ; 1001FA63 _ 89. 1D, 10035500(d)
        mov     dword [esi], ebx                        ; 1001FA69 _ 89. 1E
        pop     edi                                     ; 1001FA6B _ 5F
        pop     esi                                     ; 1001FA6C _ 5E
        mov     dword [?_5817], 1                       ; 1001FA6D _ C7. 05, 1176758C(d), 00000001
        pop     ebx                                     ; 1001FA77 _ 5B
        ret                                             ; 1001FA78 _ C3

?_4100: push    ebp                                     ; 1001FA79 _ 55
        mov     ebp, esp                                ; 1001FA7A _ 8B. EC
        push    ecx                                     ; 1001FA7C _ 51
        push    ecx                                     ; 1001FA7D _ 51
        push    ebx                                     ; 1001FA7E _ 53
        xor     ebx, ebx                                ; 1001FA7F _ 33. DB
        cmp     dword [?_5818], ebx                     ; 1001FA81 _ 39. 1D, 11767590(d)
        push    esi                                     ; 1001FA87 _ 56
        push    edi                                     ; 1001FA88 _ 57
        jnz     ?_4101                                  ; 1001FA89 _ 75, 05
        call    ?_4576                                  ; 1001FA8B _ E8, 0000265B
?_4101: mov     esi, ?_5592                             ; 1001FA90 _ BE, 100355D8(d)
        push    260                                     ; 1001FA95 _ 68, 00000104
        push    esi                                     ; 1001FA9A _ 56
        push    ebx                                     ; 1001FA9B _ 53
        call    near [imp_GetModuleFileNameA]           ; 1001FA9C _ FF. 15, 1002403C(d)
        mov     eax, dword [?_5815]                     ; 1001FAA2 _ A1, 11767584(d)
        mov     dword [?_5568], esi                     ; 1001FAA7 _ 89. 35, 100354E0(d)
        mov     edi, esi                                ; 1001FAAD _ 8B. FE
        cmp     byte [eax], bl                          ; 1001FAAF _ 38. 18
        jz      ?_4102                                  ; 1001FAB1 _ 74, 02
        mov     edi, eax                                ; 1001FAB3 _ 8B. F8
?_4102: lea     eax, [ebp-8H]                           ; 1001FAB5 _ 8D. 45, F8
        push    eax                                     ; 1001FAB8 _ 50
        lea     eax, [ebp-4H]                           ; 1001FAB9 _ 8D. 45, FC
        push    eax                                     ; 1001FABC _ 50
        push    ebx                                     ; 1001FABD _ 53
        push    ebx                                     ; 1001FABE _ 53
        push    edi                                     ; 1001FABF _ 57
        call    ?_4104                                  ; 1001FAC0 _ E8, 0000004D
        mov     eax, dword [ebp-8H]                     ; 1001FAC5 _ 8B. 45, F8
        mov     ecx, dword [ebp-4H]                     ; 1001FAC8 _ 8B. 4D, FC
        lea     eax, [eax+ecx*4]                        ; 1001FACB _ 8D. 04 88
        push    eax                                     ; 1001FACE _ 50
        call    ?_3109                                  ; 1001FACF _ E8, FFFFAD23
        mov     esi, eax                                ; 1001FAD4 _ 8B. F0
        add     esp, 24                                 ; 1001FAD6 _ 83. C4, 18
        cmp     esi, ebx                                ; 1001FAD9 _ 3B. F3
        jnz     ?_4103                                  ; 1001FADB _ 75, 08
        push    8                                       ; 1001FADD _ 6A, 08
        call    ?_3352                                  ; 1001FADF _ E8, FFFFBF8D
        pop     ecx                                     ; 1001FAE4 _ 59
?_4103: lea     eax, [ebp-8H]                           ; 1001FAE5 _ 8D. 45, F8
        push    eax                                     ; 1001FAE8 _ 50
        lea     eax, [ebp-4H]                           ; 1001FAE9 _ 8D. 45, FC
        push    eax                                     ; 1001FAEC _ 50
        mov     eax, dword [ebp-4H]                     ; 1001FAED _ 8B. 45, FC
        lea     eax, [esi+eax*4]                        ; 1001FAF0 _ 8D. 04 86
        push    eax                                     ; 1001FAF3 _ 50
        push    esi                                     ; 1001FAF4 _ 56
        push    edi                                     ; 1001FAF5 _ 57
        call    ?_4104                                  ; 1001FAF6 _ E8, 00000017
        mov     eax, dword [ebp-4H]                     ; 1001FAFB _ 8B. 45, FC
        add     esp, 20                                 ; 1001FAFE _ 83. C4, 14
        dec     eax                                     ; 1001FB01 _ 48
        mov     dword [?_5564], esi                     ; 1001FB02 _ 89. 35, 100354C8(d)
        pop     edi                                     ; 1001FB08 _ 5F
        pop     esi                                     ; 1001FB09 _ 5E
        mov     dword [?_5563], eax                     ; 1001FB0A _ A3, 100354C4(d)
        pop     ebx                                     ; 1001FB0F _ 5B
        leave                                           ; 1001FB10 _ C9
        ret                                             ; 1001FB11 _ C3

?_4104: push    ebp                                     ; 1001FB12 _ 55
        mov     ebp, esp                                ; 1001FB13 _ 8B. EC
        mov     ecx, dword [ebp+18H]                    ; 1001FB15 _ 8B. 4D, 18
        mov     eax, dword [ebp+14H]                    ; 1001FB18 _ 8B. 45, 14
        push    ebx                                     ; 1001FB1B _ 53
        push    esi                                     ; 1001FB1C _ 56
        and     dword [ecx], 00H                        ; 1001FB1D _ 83. 21, 00
        mov     esi, dword [ebp+10H]                    ; 1001FB20 _ 8B. 75, 10
        push    edi                                     ; 1001FB23 _ 57
        mov     edi, dword [ebp+0CH]                    ; 1001FB24 _ 8B. 7D, 0C
        mov     dword [eax], 1                          ; 1001FB27 _ C7. 00, 00000001
        mov     eax, dword [ebp+8H]                     ; 1001FB2D _ 8B. 45, 08
        test    edi, edi                                ; 1001FB30 _ 85. FF
        jz      ?_4105                                  ; 1001FB32 _ 74, 08
        mov     dword [edi], esi                        ; 1001FB34 _ 89. 37
        add     edi, 4                                  ; 1001FB36 _ 83. C7, 04
        mov     dword [ebp+0CH], edi                    ; 1001FB39 _ 89. 7D, 0C
?_4105: cmp     byte [eax], 34                          ; 1001FB3C _ 80. 38, 22
        jnz     ?_4110                                  ; 1001FB3F _ 75, 44
?_4106: mov     dl, byte [eax+1H]                       ; 1001FB41 _ 8A. 50, 01
        inc     eax                                     ; 1001FB44 _ 40
        cmp     dl, 34                                  ; 1001FB45 _ 80. FA, 22
        jz      ?_4108                                  ; 1001FB48 _ 74, 29
        test    dl, dl                                  ; 1001FB4A _ 84. D2
        jz      ?_4108                                  ; 1001FB4C _ 74, 25
        movzx   edx, dl                                 ; 1001FB4E _ 0F B6. D2
        test    byte [?_5796+edx], 04H                  ; 1001FB51 _ F6. 82, 11766321(d), 04
        jz      ?_4107                                  ; 1001FB58 _ 74, 0C
        inc     dword [ecx]                             ; 1001FB5A _ FF. 01
        test    esi, esi                                ; 1001FB5C _ 85. F6
        jz      ?_4107                                  ; 1001FB5E _ 74, 06
        mov     dl, byte [eax]                          ; 1001FB60 _ 8A. 10
        mov     byte [esi], dl                          ; 1001FB62 _ 88. 16
        inc     esi                                     ; 1001FB64 _ 46
        inc     eax                                     ; 1001FB65 _ 40
?_4107: inc     dword [ecx]                             ; 1001FB66 _ FF. 01
        test    esi, esi                                ; 1001FB68 _ 85. F6
        jz      ?_4106                                  ; 1001FB6A _ 74, D5
        mov     dl, byte [eax]                          ; 1001FB6C _ 8A. 10
        mov     byte [esi], dl                          ; 1001FB6E _ 88. 16
        inc     esi                                     ; 1001FB70 _ 46
        jmp     ?_4106                                  ; 1001FB71 _ EB, CE

?_4108: inc     dword [ecx]                             ; 1001FB73 _ FF. 01
        test    esi, esi                                ; 1001FB75 _ 85. F6
        jz      ?_4109                                  ; 1001FB77 _ 74, 04
        and     byte [esi], 00H                         ; 1001FB79 _ 80. 26, 00
        inc     esi                                     ; 1001FB7C _ 46
?_4109: cmp     byte [eax], 34                          ; 1001FB7D _ 80. 38, 22
        jnz     ?_4117                                  ; 1001FB80 _ 75, 46
        inc     eax                                     ; 1001FB82 _ 40
        jmp     ?_4117                                  ; 1001FB83 _ EB, 43

?_4110: inc     dword [ecx]                             ; 1001FB85 _ FF. 01
        test    esi, esi                                ; 1001FB87 _ 85. F6
        jz      ?_4111                                  ; 1001FB89 _ 74, 05
        mov     dl, byte [eax]                          ; 1001FB8B _ 8A. 10
        mov     byte [esi], dl                          ; 1001FB8D _ 88. 16
        inc     esi                                     ; 1001FB8F _ 46
?_4111: mov     dl, byte [eax]                          ; 1001FB90 _ 8A. 10
        inc     eax                                     ; 1001FB92 _ 40
        movzx   ebx, dl                                 ; 1001FB93 _ 0F B6. DA
        test    byte [?_5796+ebx], 04H                  ; 1001FB96 _ F6. 83, 11766321(d), 04
        jz      ?_4113                                  ; 1001FB9D _ 74, 0C
        inc     dword [ecx]                             ; 1001FB9F _ FF. 01
        test    esi, esi                                ; 1001FBA1 _ 85. F6
        jz      ?_4112                                  ; 1001FBA3 _ 74, 05
        mov     bl, byte [eax]                          ; 1001FBA5 _ 8A. 18
        mov     byte [esi], bl                          ; 1001FBA7 _ 88. 1E
        inc     esi                                     ; 1001FBA9 _ 46
?_4112: inc     eax                                     ; 1001FBAA _ 40
?_4113: cmp     dl, 32                                  ; 1001FBAB _ 80. FA, 20
        jz      ?_4114                                  ; 1001FBAE _ 74, 09
        test    dl, dl                                  ; 1001FBB0 _ 84. D2
        jz      ?_4115                                  ; 1001FBB2 _ 74, 09
        cmp     dl, 9                                   ; 1001FBB4 _ 80. FA, 09
        jnz     ?_4110                                  ; 1001FBB7 _ 75, CC
?_4114: test    dl, dl                                  ; 1001FBB9 _ 84. D2
        jnz     ?_4116                                  ; 1001FBBB _ 75, 03
?_4115: dec     eax                                     ; 1001FBBD _ 48
        jmp     ?_4117                                  ; 1001FBBE _ EB, 08

?_4116: test    esi, esi                                ; 1001FBC0 _ 85. F6
        jz      ?_4117                                  ; 1001FBC2 _ 74, 04
        and     byte [esi-1H], 00H                      ; 1001FBC4 _ 80. 66, FF, 00
?_4117: and     dword [ebp+18H], 00H                    ; 1001FBC8 _ 83. 65, 18, 00
?_4118: cmp     byte [eax], 0                           ; 1001FBCC _ 80. 38, 00
        je      ?_4140                                  ; 1001FBCF _ 0F 84, 000000E0
?_4119: mov     dl, byte [eax]                          ; 1001FBD5 _ 8A. 10
        cmp     dl, 32                                  ; 1001FBD7 _ 80. FA, 20
        jz      ?_4120                                  ; 1001FBDA _ 74, 05
        cmp     dl, 9                                   ; 1001FBDC _ 80. FA, 09
        jnz     ?_4121                                  ; 1001FBDF _ 75, 03
?_4120: inc     eax                                     ; 1001FBE1 _ 40
        jmp     ?_4119                                  ; 1001FBE2 _ EB, F1

?_4121: cmp     byte [eax], 0                           ; 1001FBE4 _ 80. 38, 00
        je      ?_4140                                  ; 1001FBE7 _ 0F 84, 000000C8
        test    edi, edi                                ; 1001FBED _ 85. FF
        jz      ?_4122                                  ; 1001FBEF _ 74, 08
        mov     dword [edi], esi                        ; 1001FBF1 _ 89. 37
        add     edi, 4                                  ; 1001FBF3 _ 83. C7, 04
        mov     dword [ebp+0CH], edi                    ; 1001FBF6 _ 89. 7D, 0C
?_4122: mov     edx, dword [ebp+14H]                    ; 1001FBF9 _ 8B. 55, 14
        inc     dword [edx]                             ; 1001FBFC _ FF. 02
?_4123: mov     dword [ebp+8H], 1                       ; 1001FBFE _ C7. 45, 08, 00000001
        xor     ebx, ebx                                ; 1001FC05 _ 33. DB
?_4124: cmp     byte [eax], 92                          ; 1001FC07 _ 80. 38, 5C
        jnz     ?_4125                                  ; 1001FC0A _ 75, 04
        inc     eax                                     ; 1001FC0C _ 40
        inc     ebx                                     ; 1001FC0D _ 43
        jmp     ?_4124                                  ; 1001FC0E _ EB, F7

?_4125: cmp     byte [eax], 34                          ; 1001FC10 _ 80. 38, 22
        jnz     ?_4129                                  ; 1001FC13 _ 75, 2C
        test    bl, 01H                                 ; 1001FC15 _ F6. C3, 01
        jnz     ?_4128                                  ; 1001FC18 _ 75, 25
        xor     edi, edi                                ; 1001FC1A _ 33. FF
        cmp     dword [ebp+18H], edi                    ; 1001FC1C _ 39. 7D, 18
        jz      ?_4126                                  ; 1001FC1F _ 74, 0D
        cmp     byte [eax+1H], 34                       ; 1001FC21 _ 80. 78, 01, 22
        lea     edx, [eax+1H]                           ; 1001FC25 _ 8D. 50, 01
        jnz     ?_4126                                  ; 1001FC28 _ 75, 04
        mov     eax, edx                                ; 1001FC2A _ 8B. C2
        jmp     ?_4127                                  ; 1001FC2C _ EB, 03

?_4126: mov     dword [ebp+8H], edi                     ; 1001FC2E _ 89. 7D, 08
?_4127: mov     edi, dword [ebp+0CH]                    ; 1001FC31 _ 8B. 7D, 0C
        xor     edx, edx                                ; 1001FC34 _ 33. D2
        cmp     dword [ebp+18H], edx                    ; 1001FC36 _ 39. 55, 18
        sete    dl                                      ; 1001FC39 _ 0F 94. C2
        mov     dword [ebp+18H], edx                    ; 1001FC3C _ 89. 55, 18
?_4128: shr     ebx, 1                                  ; 1001FC3F _ D1. EB
?_4129: mov     edx, ebx                                ; 1001FC41 _ 8B. D3
        dec     ebx                                     ; 1001FC43 _ 4B
        test    edx, edx                                ; 1001FC44 _ 85. D2
        jz      ?_4132                                  ; 1001FC46 _ 74, 0E
        inc     ebx                                     ; 1001FC48 _ 43
?_4130: test    esi, esi                                ; 1001FC49 _ 85. F6
        jz      ?_4131                                  ; 1001FC4B _ 74, 04
        mov     byte [esi], 92                          ; 1001FC4D _ C6. 06, 5C
        inc     esi                                     ; 1001FC50 _ 46
?_4131: inc     dword [ecx]                             ; 1001FC51 _ FF. 01
        dec     ebx                                     ; 1001FC53 _ 4B
        jnz     ?_4130                                  ; 1001FC54 _ 75, F3
?_4132: mov     dl, byte [eax]                          ; 1001FC56 _ 8A. 10
        test    dl, dl                                  ; 1001FC58 _ 84. D2
        jz      ?_4138                                  ; 1001FC5A _ 74, 4A
        cmp     dword [ebp+18H], 0                      ; 1001FC5C _ 83. 7D, 18, 00
        jnz     ?_4133                                  ; 1001FC60 _ 75, 0A
        cmp     dl, 32                                  ; 1001FC62 _ 80. FA, 20
        jz      ?_4138                                  ; 1001FC65 _ 74, 3F
        cmp     dl, 9                                   ; 1001FC67 _ 80. FA, 09
        jz      ?_4138                                  ; 1001FC6A _ 74, 3A
?_4133: cmp     dword [ebp+8H], 0                       ; 1001FC6C _ 83. 7D, 08, 00
        jz      ?_4137                                  ; 1001FC70 _ 74, 2E
        test    esi, esi                                ; 1001FC72 _ 85. F6
        jz      ?_4135                                  ; 1001FC74 _ 74, 19
        movzx   ebx, dl                                 ; 1001FC76 _ 0F B6. DA
        test    byte [?_5796+ebx], 04H                  ; 1001FC79 _ F6. 83, 11766321(d), 04
        jz      ?_4134                                  ; 1001FC80 _ 74, 06
        mov     byte [esi], dl                          ; 1001FC82 _ 88. 16
        inc     esi                                     ; 1001FC84 _ 46
        inc     eax                                     ; 1001FC85 _ 40
        inc     dword [ecx]                             ; 1001FC86 _ FF. 01
?_4134: mov     dl, byte [eax]                          ; 1001FC88 _ 8A. 10
        mov     byte [esi], dl                          ; 1001FC8A _ 88. 16
        inc     esi                                     ; 1001FC8C _ 46
        jmp     ?_4136                                  ; 1001FC8D _ EB, 0F

?_4135: movzx   edx, dl                                 ; 1001FC8F _ 0F B6. D2
        test    byte [?_5796+edx], 04H                  ; 1001FC92 _ F6. 82, 11766321(d), 04
        jz      ?_4136                                  ; 1001FC99 _ 74, 03
        inc     eax                                     ; 1001FC9B _ 40
        inc     dword [ecx]                             ; 1001FC9C _ FF. 01
?_4136: inc     dword [ecx]                             ; 1001FC9E _ FF. 01
?_4137: inc     eax                                     ; 1001FCA0 _ 40
        jmp     ?_4123                                  ; 1001FCA1 _ E9, FFFFFF58

?_4138: test    esi, esi                                ; 1001FCA6 _ 85. F6
        jz      ?_4139                                  ; 1001FCA8 _ 74, 04
        and     byte [esi], 00H                         ; 1001FCAA _ 80. 26, 00
        inc     esi                                     ; 1001FCAD _ 46
?_4139: inc     dword [ecx]                             ; 1001FCAE _ FF. 01
        jmp     ?_4118                                  ; 1001FCB0 _ E9, FFFFFF17

?_4140: test    edi, edi                                ; 1001FCB5 _ 85. FF
        jz      ?_4141                                  ; 1001FCB7 _ 74, 03
        and     dword [edi], 00H                        ; 1001FCB9 _ 83. 27, 00
?_4141: mov     eax, dword [ebp+14H]                    ; 1001FCBC _ 8B. 45, 14
        pop     edi                                     ; 1001FCBF _ 5F
        pop     esi                                     ; 1001FCC0 _ 5E
        pop     ebx                                     ; 1001FCC1 _ 5B
        inc     dword [eax]                             ; 1001FCC2 _ FF. 00
        pop     ebp                                     ; 1001FCC4 _ 5D
        ret                                             ; 1001FCC5 _ C3

?_4142: push    ecx                                     ; 1001FCC6 _ 51
        push    ecx                                     ; 1001FCC7 _ 51
        mov     eax, dword [?_5593]                     ; 1001FCC8 _ A1, 100356DC(d)
        push    ebx                                     ; 1001FCCD _ 53
        push    ebp                                     ; 1001FCCE _ 55
        mov     ebp, dword [imp_GetEnvironmentStringsW] ; 1001FCCF _ 8B. 2D, 100240A8(d)
        push    esi                                     ; 1001FCD5 _ 56
        push    edi                                     ; 1001FCD6 _ 57
        xor     ebx, ebx                                ; 1001FCD7 _ 33. DB
        xor     esi, esi                                ; 1001FCD9 _ 33. F6
        xor     edi, edi                                ; 1001FCDB _ 33. FF
        cmp     eax, ebx                                ; 1001FCDD _ 3B. C3
        jnz     ?_4144                                  ; 1001FCDF _ 75, 33
        call    ebp                                     ; 1001FCE1 _ FF. D5
        mov     esi, eax                                ; 1001FCE3 _ 8B. F0
        cmp     esi, ebx                                ; 1001FCE5 _ 3B. F3
        jz      ?_4143                                  ; 1001FCE7 _ 74, 0C
        mov     dword [?_5593], 1                       ; 1001FCE9 _ C7. 05, 100356DC(d), 00000001
        jmp     ?_4145                                  ; 1001FCF3 _ EB, 28

?_4143: call    near [imp_GetEnvironmentStrings]        ; 1001FCF5 _ FF. 15, 100240AC(d)
        mov     edi, eax                                ; 1001FCFB _ 8B. F8
        cmp     edi, ebx                                ; 1001FCFD _ 3B. FB
        je      ?_4158                                  ; 1001FCFF _ 0F 84, 000000EA
        mov     dword [?_5593], 2                       ; 1001FD05 _ C7. 05, 100356DC(d), 00000002
        jmp     ?_4152                                  ; 1001FD0F _ E9, 0000008F

?_4144: cmp     eax, 1                                  ; 1001FD14 _ 83. F8, 01
        jne     ?_4151                                  ; 1001FD17 _ 0F 85, 00000081
?_4145: cmp     esi, ebx                                ; 1001FD1D _ 3B. F3
        jnz     ?_4146                                  ; 1001FD1F _ 75, 0C
        call    ebp                                     ; 1001FD21 _ FF. D5
        mov     esi, eax                                ; 1001FD23 _ 8B. F0
        cmp     esi, ebx                                ; 1001FD25 _ 3B. F3
        je      ?_4158                                  ; 1001FD27 _ 0F 84, 000000C2
?_4146: cmp     word [esi], bx                          ; 1001FD2D _ 66: 39. 1E
        mov     eax, esi                                ; 1001FD30 _ 8B. C6
        jz      ?_4148                                  ; 1001FD32 _ 74, 0E
?_4147: inc     eax                                     ; 1001FD34 _ 40
        inc     eax                                     ; 1001FD35 _ 40
        cmp     word [eax], bx                          ; 1001FD36 _ 66: 39. 18
        jnz     ?_4147                                  ; 1001FD39 _ 75, F9
        inc     eax                                     ; 1001FD3B _ 40
        inc     eax                                     ; 1001FD3C _ 40
        cmp     word [eax], bx                          ; 1001FD3D _ 66: 39. 18
        jnz     ?_4147                                  ; 1001FD40 _ 75, F2
?_4148: sub     eax, esi                                ; 1001FD42 _ 2B. C6
        mov     edi, dword [imp_WideCharToMultiByte]    ; 1001FD44 _ 8B. 3D, 1002413C(d)
        sar     eax, 1                                  ; 1001FD4A _ D1. F8
        push    ebx                                     ; 1001FD4C _ 53
        push    ebx                                     ; 1001FD4D _ 53
        inc     eax                                     ; 1001FD4E _ 40
        push    ebx                                     ; 1001FD4F _ 53
        push    ebx                                     ; 1001FD50 _ 53
        push    eax                                     ; 1001FD51 _ 50
        push    esi                                     ; 1001FD52 _ 56
        push    ebx                                     ; 1001FD53 _ 53
        push    ebx                                     ; 1001FD54 _ 53
        mov     dword [esp+34H], eax                    ; 1001FD55 _ 89. 44 24, 34
        call    edi                                     ; 1001FD59 _ FF. D7
        mov     ebp, eax                                ; 1001FD5B _ 8B. E8
        cmp     ebp, ebx                                ; 1001FD5D _ 3B. EB
        jz      ?_4150                                  ; 1001FD5F _ 74, 32
        push    ebp                                     ; 1001FD61 _ 55
        call    ?_3109                                  ; 1001FD62 _ E8, FFFFAA90
        cmp     eax, ebx                                ; 1001FD67 _ 3B. C3
        pop     ecx                                     ; 1001FD69 _ 59
        mov     dword [esp+10H], eax                    ; 1001FD6A _ 89. 44 24, 10
        jz      ?_4150                                  ; 1001FD6E _ 74, 23
        push    ebx                                     ; 1001FD70 _ 53
        push    ebx                                     ; 1001FD71 _ 53
        push    ebp                                     ; 1001FD72 _ 55
        push    eax                                     ; 1001FD73 _ 50
        push    dword [esp+24H]                         ; 1001FD74 _ FF. 74 24, 24
        push    esi                                     ; 1001FD78 _ 56
        push    ebx                                     ; 1001FD79 _ 53
        push    ebx                                     ; 1001FD7A _ 53
        call    edi                                     ; 1001FD7B _ FF. D7
        test    eax, eax                                ; 1001FD7D _ 85. C0
        jnz     ?_4149                                  ; 1001FD7F _ 75, 0E
        push    dword [esp+10H]                         ; 1001FD81 _ FF. 74 24, 10
        call    ?_3158                                  ; 1001FD85 _ E8, FFFFADF7
        pop     ecx                                     ; 1001FD8A _ 59
        mov     dword [esp+10H], ebx                    ; 1001FD8B _ 89. 5C 24, 10
?_4149: mov     ebx, dword [esp+10H]                    ; 1001FD8F _ 8B. 5C 24, 10
?_4150: push    esi                                     ; 1001FD93 _ 56
        call    near [imp_FreeEnvironmentStringsW]      ; 1001FD94 _ FF. 15, 100240B0(d)
        mov     eax, ebx                                ; 1001FD9A _ 8B. C3
        jmp     ?_4159                                  ; 1001FD9C _ EB, 53

?_4151: cmp     eax, 2                                  ; 1001FD9E _ 83. F8, 02
        jnz     ?_4158                                  ; 1001FDA1 _ 75, 4C
?_4152: cmp     edi, ebx                                ; 1001FDA3 _ 3B. FB
        jnz     ?_4153                                  ; 1001FDA5 _ 75, 0C
        call    near [imp_GetEnvironmentStrings]        ; 1001FDA7 _ FF. 15, 100240AC(d)
        mov     edi, eax                                ; 1001FDAD _ 8B. F8
        cmp     edi, ebx                                ; 1001FDAF _ 3B. FB
        jz      ?_4158                                  ; 1001FDB1 _ 74, 3C
?_4153: cmp     byte [edi], bl                          ; 1001FDB3 _ 38. 1F
        mov     eax, edi                                ; 1001FDB5 _ 8B. C7
        jz      ?_4155                                  ; 1001FDB7 _ 74, 0A
?_4154: inc     eax                                     ; 1001FDB9 _ 40
        cmp     byte [eax], bl                          ; 1001FDBA _ 38. 18
        jnz     ?_4154                                  ; 1001FDBC _ 75, FB
        inc     eax                                     ; 1001FDBE _ 40
        cmp     byte [eax], bl                          ; 1001FDBF _ 38. 18
        jnz     ?_4154                                  ; 1001FDC1 _ 75, F6
?_4155: sub     eax, edi                                ; 1001FDC3 _ 2B. C7
        inc     eax                                     ; 1001FDC5 _ 40
        mov     ebp, eax                                ; 1001FDC6 _ 8B. E8
        push    ebp                                     ; 1001FDC8 _ 55
        call    ?_3109                                  ; 1001FDC9 _ E8, FFFFAA29
        mov     esi, eax                                ; 1001FDCE _ 8B. F0
        pop     ecx                                     ; 1001FDD0 _ 59
        cmp     esi, ebx                                ; 1001FDD1 _ 3B. F3
        jnz     ?_4156                                  ; 1001FDD3 _ 75, 04
        xor     esi, esi                                ; 1001FDD5 _ 33. F6
        jmp     ?_4157                                  ; 1001FDD7 _ EB, 0B

?_4156: push    ebp                                     ; 1001FDD9 _ 55
        push    edi                                     ; 1001FDDA _ 57
        push    esi                                     ; 1001FDDB _ 56
        call    ?_3909                                  ; 1001FDDC _ E8, FFFFECCF
        add     esp, 12                                 ; 1001FDE1 _ 83. C4, 0C
?_4157: push    edi                                     ; 1001FDE4 _ 57
        call    near [imp_FreeEnvironmentStringsA]      ; 1001FDE5 _ FF. 15, 100240B4(d)
        mov     eax, esi                                ; 1001FDEB _ 8B. C6
        jmp     ?_4159                                  ; 1001FDED _ EB, 02

?_4158: xor     eax, eax                                ; 1001FDEF _ 33. C0
?_4159: pop     edi                                     ; 1001FDF1 _ 5F
        pop     esi                                     ; 1001FDF2 _ 5E
        pop     ebp                                     ; 1001FDF3 _ 5D
        pop     ebx                                     ; 1001FDF4 _ 5B
        pop     ecx                                     ; 1001FDF5 _ 59
        pop     ecx                                     ; 1001FDF6 _ 59
        ret                                             ; 1001FDF7 _ C3

?_4160: mov     eax, dword [?_5575]                     ; 1001FDF8 _ A1, 10035508(d)
        cmp     eax, 1                                  ; 1001FDFD _ 83. F8, 01
        jz      ?_4161                                  ; 1001FE00 _ 74, 0D
        test    eax, eax                                ; 1001FE02 _ 85. C0
        jnz     ?_4163                                  ; 1001FE04 _ 75, 2A
        cmp     dword [?_5576], 1                       ; 1001FE06 _ 83. 3D, 1003550C(d), 01
        jnz     ?_4163                                  ; 1001FE0D _ 75, 21
?_4161: push    252                                     ; 1001FE0F _ 68, 000000FC
        call    ?_4164                                  ; 1001FE14 _ E8, 00000018
        mov     eax, dword [?_5594]                     ; 1001FE19 _ A1, 100356E0(d)
        pop     ecx                                     ; 1001FE1E _ 59
        test    eax, eax                                ; 1001FE1F _ 85. C0
        jz      ?_4162                                  ; 1001FE21 _ 74, 02
        call    eax                                     ; 1001FE23 _ FF. D0
?_4162: push    255                                     ; 1001FE25 _ 68, 000000FF
        call    ?_4164                                  ; 1001FE2A _ E8, 00000002
        pop     ecx                                     ; 1001FE2F _ 59
?_4163: ret                                             ; 1001FE30 _ C3

?_4164: push    ebp                                     ; 1001FE31 _ 55
        mov     ebp, esp                                ; 1001FE32 _ 8B. EC
        sub     esp, 420                                ; 1001FE34 _ 81. EC, 000001A4
        mov     edx, dword [ebp+8H]                     ; 1001FE3A _ 8B. 55, 08
        xor     ecx, ecx                                ; 1001FE3D _ 33. C9
        mov     eax, ?_5479                             ; 1001FE3F _ B8, 10033EF0(d)
?_4165: cmp     edx, dword [eax]                        ; 1001FE44 _ 3B. 10
        jz      ?_4166                                  ; 1001FE46 _ 74, 0B
        add     eax, 8                                  ; 1001FE48 _ 83. C0, 08
        inc     ecx                                     ; 1001FE4B _ 41
        cmp     eax, ?_5481                             ; 1001FE4C _ 3D, 10033F80(d)
        jl      ?_4165                                  ; 1001FE51 _ 7C, F1
?_4166: push    esi                                     ; 1001FE53 _ 56
        mov     esi, ecx                                ; 1001FE54 _ 8B. F1
        shl     esi, 3                                  ; 1001FE56 _ C1. E6, 03
        cmp     edx, dword [?_5479+esi]                 ; 1001FE59 _ 3B. 96, 10033EF0(d)
        jne     ?_4171                                  ; 1001FE5F _ 0F 85, 0000011C
        mov     eax, dword [?_5575]                     ; 1001FE65 _ A1, 10035508(d)
        cmp     eax, 1                                  ; 1001FE6A _ 83. F8, 01
        je      ?_4170                                  ; 1001FE6D _ 0F 84, 000000E8
        test    eax, eax                                ; 1001FE73 _ 85. C0
        jnz     ?_4167                                  ; 1001FE75 _ 75, 0D
        cmp     dword [?_5576], 1                       ; 1001FE77 _ 83. 3D, 1003550C(d), 01
        je      ?_4170                                  ; 1001FE7E _ 0F 84, 000000D7
?_4167: cmp     edx, 252                                ; 1001FE84 _ 81. FA, 000000FC
        je      ?_4171                                  ; 1001FE8A _ 0F 84, 000000F1
        lea     eax, [ebp-1A4H]                         ; 1001FE90 _ 8D. 85, FFFFFE5C
        push    260                                     ; 1001FE96 _ 68, 00000104
        push    eax                                     ; 1001FE9B _ 50
        push    0                                       ; 1001FE9C _ 6A, 00
        call    near [imp_GetModuleFileNameA]           ; 1001FE9E _ FF. 15, 1002403C(d)
        test    eax, eax                                ; 1001FEA4 _ 85. C0
        jnz     ?_4168                                  ; 1001FEA6 _ 75, 13
        lea     eax, [ebp-1A4H]                         ; 1001FEA8 _ 8D. 85, FFFFFE5C
        push    ?_4990                                  ; 1001FEAE _ 68, 100263E4(d)
        push    eax                                     ; 1001FEB3 _ 50
        call    ?_4074                                  ; 1001FEB4 _ E8, FFFFFA17
        pop     ecx                                     ; 1001FEB9 _ 59
        pop     ecx                                     ; 1001FEBA _ 59
?_4168: lea     eax, [ebp-1A4H]                         ; 1001FEBB _ 8D. 85, FFFFFE5C
        push    edi                                     ; 1001FEC1 _ 57
        push    eax                                     ; 1001FEC2 _ 50
        lea     edi, [ebp-1A4H]                         ; 1001FEC3 _ 8D. BD, FFFFFE5C
        call    ?_3393                                  ; 1001FEC9 _ E8, FFFFBF02
        inc     eax                                     ; 1001FECE _ 40
        pop     ecx                                     ; 1001FECF _ 59
        cmp     eax, 60                                 ; 1001FED0 _ 83. F8, 3C
        jbe     ?_4169                                  ; 1001FED3 _ 76, 29
        lea     eax, [ebp-1A4H]                         ; 1001FED5 _ 8D. 85, FFFFFE5C
        push    eax                                     ; 1001FEDB _ 50
        call    ?_3393                                  ; 1001FEDC _ E8, FFFFBEEF
        mov     edi, eax                                ; 1001FEE1 _ 8B. F8
        lea     eax, [ebp-1A4H]                         ; 1001FEE3 _ 8D. 85, FFFFFE5C
        sub     eax, 59                                 ; 1001FEE9 _ 83. E8, 3B
        push    3                                       ; 1001FEEC _ 6A, 03
        add     edi, eax                                ; 1001FEEE _ 03. F8
        push    ?_4989                                  ; 1001FEF0 _ 68, 100263E0(d)
        push    edi                                     ; 1001FEF5 _ 57
        call    ?_3188                                  ; 1001FEF6 _ E8, FFFFAF25
        add     esp, 16                                 ; 1001FEFB _ 83. C4, 10
?_4169: lea     eax, [ebp-0A0H]                         ; 1001FEFE _ 8D. 85, FFFFFF60
        push    ?_4988                                  ; 1001FF04 _ 68, 100263C4(d)
        push    eax                                     ; 1001FF09 _ 50
        call    ?_4074                                  ; 1001FF0A _ E8, FFFFF9C1
        lea     eax, [ebp-0A0H]                         ; 1001FF0F _ 8D. 85, FFFFFF60
        push    edi                                     ; 1001FF15 _ 57
        push    eax                                     ; 1001FF16 _ 50
        call    ?_4075                                  ; 1001FF17 _ E8, FFFFF9C4
        lea     eax, [ebp-0A0H]                         ; 1001FF1C _ 8D. 85, FFFFFF60
        push    ?_4987                                  ; 1001FF22 _ 68, 100263C0(d)
        push    eax                                     ; 1001FF27 _ 50
        call    ?_4075                                  ; 1001FF28 _ E8, FFFFF9B3
        push    dword [?_5480+esi]                      ; 1001FF2D _ FF. B6, 10033EF4(d)
        lea     eax, [ebp-0A0H]                         ; 1001FF33 _ 8D. 85, FFFFFF60
        push    eax                                     ; 1001FF39 _ 50
        call    ?_4075                                  ; 1001FF3A _ E8, FFFFF9A1
        push    73744                                   ; 1001FF3F _ 68, 00012010
        lea     eax, [ebp-0A0H]                         ; 1001FF44 _ 8D. 85, FFFFFF60
        push    ?_4986                                  ; 1001FF4A _ 68, 10026398(d)
        push    eax                                     ; 1001FF4F _ 50
        call    ?_4578                                  ; 1001FF50 _ E8, 000021B2
        add     esp, 44                                 ; 1001FF55 _ 83. C4, 2C
        pop     edi                                     ; 1001FF58 _ 5F
        jmp     ?_4171                                  ; 1001FF59 _ EB, 26

?_4170: lea     eax, [ebp+8H]                           ; 1001FF5B _ 8D. 45, 08
        lea     esi, [?_5480+esi]                       ; 1001FF5E _ 8D. B6, 10033EF4(d)
        push    0                                       ; 1001FF64 _ 6A, 00
        push    eax                                     ; 1001FF66 _ 50
        push    dword [esi]                             ; 1001FF67 _ FF. 36
        call    ?_3393                                  ; 1001FF69 _ E8, FFFFBE62
        pop     ecx                                     ; 1001FF6E _ 59
        push    eax                                     ; 1001FF6F _ 50
        push    dword [esi]                             ; 1001FF70 _ FF. 36
        push    -12                                     ; 1001FF72 _ 6A, F4
        call    near [imp_GetStdHandle]                 ; 1001FF74 _ FF. 15, 10024044(d)
        push    eax                                     ; 1001FF7A _ 50
        call    near [imp_WriteFile]                    ; 1001FF7B _ FF. 15, 10024024(d)
?_4171: pop     esi                                     ; 1001FF81 _ 5E
        leave                                           ; 1001FF82 _ C9
        ret                                             ; 1001FF83 _ C3

?_4172: push    ebp                                     ; 1001FF84 _ 55
        mov     ebp, esp                                ; 1001FF85 _ 8B. EC
        push    -1                                      ; 1001FF87 _ 6A, FF
        push    ?_4991                                  ; 1001FF89 _ 68, 10026400(d)
        push    ?_3881                                  ; 1001FF8E _ 68, 1001E7DC(d)
; Note: Absolute memory address without relocation
        mov     eax, dword [fs:0H]                      ; 1001FF93 _ 64: A1, 00000000
        push    eax                                     ; 1001FF99 _ 50
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], esp                      ; 1001FF9A _ 64: 89. 25, 00000000
        sub     esp, 24                                 ; 1001FFA1 _ 83. EC, 18
        push    ebx                                     ; 1001FFA4 _ 53
        push    esi                                     ; 1001FFA5 _ 56
        push    edi                                     ; 1001FFA6 _ 57
        mov     esi, dword [ebp+8H]                     ; 1001FFA7 _ 8B. 75, 08
        imul    esi, dword [ebp+0CH]                    ; 1001FFAA _ 0F AF. 75, 0C
        mov     dword [ebp+0CH], esi                    ; 1001FFAE _ 89. 75, 0C
        mov     dword [ebp-1CH], esi                    ; 1001FFB1 _ 89. 75, E4
        cmp     esi, -32                                ; 1001FFB4 _ 83. FE, E0
        ja      ?_4174                                  ; 1001FFB7 _ 77, 14
        xor     ebx, ebx                                ; 1001FFB9 _ 33. DB
        cmp     esi, ebx                                ; 1001FFBB _ 3B. F3
        jnz     ?_4173                                  ; 1001FFBD _ 75, 03
        push    1                                       ; 1001FFBF _ 6A, 01
        pop     esi                                     ; 1001FFC1 _ 5E
?_4173: add     esi, 15                                 ; 1001FFC2 _ 83. C6, 0F
        and     esi, 0FFFFFFF0H                         ; 1001FFC5 _ 83. E6, F0
        mov     dword [ebp+0CH], esi                    ; 1001FFC8 _ 89. 75, 0C
        jmp     ?_4175                                  ; 1001FFCB _ EB, 02

?_4174: xor     ebx, ebx                                ; 1001FFCD _ 33. DB
?_4175: mov     dword [ebp-20H], ebx                    ; 1001FFCF _ 89. 5D, E0
        cmp     esi, -32                                ; 1001FFD2 _ 83. FE, E0
        ja      ?_4182                                  ; 1001FFD5 _ 0F 87, 000000A8
        mov     eax, dword [?_5808]                     ; 1001FFDB _ A1, 11766450(d)
        cmp     eax, 3                                  ; 1001FFE0 _ 83. F8, 03
        jnz     ?_4178                                  ; 1001FFE3 _ 75, 41
        mov     edi, dword [ebp-1CH]                    ; 1001FFE5 _ 8B. 7D, E4
        cmp     edi, dword [?_5806]                     ; 1001FFE8 _ 3B. 3D, 11766448(d)
        ja      ?_4180                                  ; 1001FFEE _ 77, 7C
        push    9                                       ; 1001FFF0 _ 6A, 09
        call    ?_3610                                  ; 1001FFF2 _ E8, FFFFD03F
        pop     ecx                                     ; 1001FFF7 _ 59
        mov     dword [ebp-4H], ebx                     ; 1001FFF8 _ 89. 5D, FC
        push    edi                                     ; 1001FFFB _ 57
        call    ?_3697                                  ; 1001FFFC _ E8, FFFFD868
        pop     ecx                                     ; 10020001 _ 59
        mov     dword [ebp-20H], eax                    ; 10020002 _ 89. 45, E0
        or      dword [ebp-4H], 0FFFFFFFFH              ; 10020005 _ 83. 4D, FC, FF
        call    ?_4177                                  ; 10020009 _ E8, 0000000F
        cmp     dword [ebp-20H], ebx                    ; 1002000E _ 39. 5D, E0
        jz      ?_4181                                  ; 10020011 _ 74, 5E
        push    dword [ebp-1CH]                         ; 10020013 _ FF. 75, E4
        jmp     ?_4179                                  ; 10020016 _ EB, 48

?_4176: xor     ebx, ebx                                ; 10020018 _ 33. DB
        mov     esi, dword [ebp+0CH]                    ; 1002001A _ 8B. 75, 0C
?_4177: push    9                                       ; 1002001D _ 6A, 09
        call    ?_3615                                  ; 1002001F _ E8, FFFFD073
        pop     ecx                                     ; 10020024 _ 59
        ret                                             ; 10020025 _ C3

?_4178: cmp     eax, 2                                  ; 10020026 _ 83. F8, 02
        jnz     ?_4180                                  ; 10020029 _ 75, 41
        cmp     esi, dword [?_5467]                     ; 1002002B _ 3B. 35, 10033B9C(d)
        ja      ?_4180                                  ; 10020031 _ 77, 39
        push    9                                       ; 10020033 _ 6A, 09
        call    ?_3610                                  ; 10020035 _ E8, FFFFCFFC
        pop     ecx                                     ; 1002003A _ 59
        mov     dword [ebp-4H], 1                       ; 1002003B _ C7. 45, FC, 00000001
        mov     eax, esi                                ; 10020042 _ 8B. C6
        shr     eax, 4                                  ; 10020044 _ C1. E8, 04
        push    eax                                     ; 10020047 _ 50
        call    ?_3808                                  ; 10020048 _ E8, FFFFE2BF
        pop     ecx                                     ; 1002004D _ 59
        mov     dword [ebp-20H], eax                    ; 1002004E _ 89. 45, E0
        or      dword [ebp-4H], 0FFFFFFFFH              ; 10020051 _ 83. 4D, FC, FF
        call    ?_4184                                  ; 10020055 _ E8, 0000004C
        cmp     dword [ebp-20H], ebx                    ; 1002005A _ 39. 5D, E0
        jz      ?_4181                                  ; 1002005D _ 74, 12
        push    esi                                     ; 1002005F _ 56
?_4179: push    ebx                                     ; 10020060 _ 53
        push    dword [ebp-20H]                         ; 10020061 _ FF. 75, E0
        call    ?_4392                                  ; 10020064 _ E8, 000011D7
        add     esp, 12                                 ; 10020069 _ 83. C4, 0C
?_4180: cmp     dword [ebp-20H], ebx                    ; 1002006C _ 39. 5D, E0
        jnz     ?_4185                                  ; 1002006F _ 75, 3E
?_4181: push    esi                                     ; 10020071 _ 56
        push    8                                       ; 10020072 _ 6A, 08
        push    dword [?_5807]                          ; 10020074 _ FF. 35, 1176644C(d)
        call    near [imp_HeapAlloc]                    ; 1002007A _ FF. 15, 100240CC(d)
        mov     dword [ebp-20H], eax                    ; 10020080 _ 89. 45, E0
?_4182: cmp     dword [ebp-20H], ebx                    ; 10020083 _ 39. 5D, E0
        jnz     ?_4185                                  ; 10020086 _ 75, 27
        cmp     dword [?_5585], ebx                     ; 10020088 _ 39. 1D, 1003559C(d)
        jz      ?_4185                                  ; 1002008E _ 74, 1F
        push    esi                                     ; 10020090 _ 56
        call    ?_3635                                  ; 10020091 _ E8, FFFFD1A2
        pop     ecx                                     ; 10020096 _ 59
        test    eax, eax                                ; 10020097 _ 85. C0
        jne     ?_4175                                  ; 10020099 _ 0F 85, FFFFFF30
        jmp     ?_4186                                  ; 1002009F _ EB, 11

?_4183: xor     ebx, ebx                                ; 100200A1 _ 33. DB
        mov     esi, dword [ebp+0CH]                    ; 100200A3 _ 8B. 75, 0C
?_4184: push    9                                       ; 100200A6 _ 6A, 09
        call    ?_3615                                  ; 100200A8 _ E8, FFFFCFEA
        pop     ecx                                     ; 100200AD _ 59
        ret                                             ; 100200AE _ C3

?_4185: mov     eax, dword [ebp-20H]                    ; 100200AF _ 8B. 45, E0
?_4186: mov     ecx, dword [ebp-10H]                    ; 100200B2 _ 8B. 4D, F0
; Note: Absolute memory address without relocation
        mov     dword [fs:0H], ecx                      ; 100200B5 _ 64: 89. 0D, 00000000
        pop     edi                                     ; 100200BC _ 5F
        pop     esi                                     ; 100200BD _ 5E
        pop     ebx                                     ; 100200BE _ 5B
        leave                                           ; 100200BF _ C9
        ret                                             ; 100200C0 _ C3
