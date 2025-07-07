; ---- 1000D930 ----
?_1505: ; Local function
        sub     esp, 552                                ; 1000D930 _ 81. EC, 00000228
        mov     eax, dword [?_5380]                     ; 1000D936 _ A1, 10030B6C(d)
        push    ebx                                     ; 1000D93B _ 53
        push    ebp                                     ; 1000D93C _ 55
        push    esi                                     ; 1000D93D _ 56
        mov     esi, dword [esp+238H]                   ; 1000D93E _ 8B. B4 24, 00000238
        push    edi                                     ; 1000D945 _ 57
        xor     edi, edi                                ; 1000D946 _ 33. FF
        xor     ebp, ebp                                ; 1000D948 _ 33. ED
        mov     dword [esi+1AH], eax                    ; 1000D94A _ 89. 46, 1A
        mov     eax, dword [esi+14H]                    ; 1000D94D _ 8B. 46, 14
        xor     ebx, ebx                                ; 1000D950 _ 33. DB
        cmp     eax, -1                                 ; 1000D952 _ 83. F8, FF
        mov     dword [esp+10H], edi                    ; 1000D955 _ 89. 7C 24, 10
        mov     dword [esp+14H], edi                    ; 1000D959 _ 89. 7C 24, 14
        mov     dword [esp+2CH], edi                    ; 1000D95D _ 89. 7C 24, 2C
        mov     dword [esp+18H], edi                    ; 1000D961 _ 89. 7C 24, 18
        mov     dword [esp+20H], edi                    ; 1000D965 _ 89. 7C 24, 20
        mov     dword [esp+28H], edi                    ; 1000D969 _ 89. 7C 24, 28
        mov     dword [esp+30H], edi                    ; 1000D96D _ 89. 7C 24, 30
        mov     dword [esp+1CH], edi                    ; 1000D971 _ 89. 7C 24, 1C
        mov     dword [esp+24H], edi                    ; 1000D975 _ 89. 7C 24, 24
        je      ?_1517                                  ; 1000D979 _ 0F 84, 000001FA
        push    eax                                     ; 1000D97F _ 50
        push    esi                                     ; 1000D980 _ 56
        call    ?_1389                                  ; 1000D981 _ E8, FFFFF10A
        lea     ecx, [esp+2CH]                          ; 1000D986 _ 8D. 4C 24, 2C
        mov     dword [esi+14H], eax                    ; 1000D98A _ 89. 46, 14
        push    eax                                     ; 1000D98D _ 50
        lea     edx, [esp+20H]                          ; 1000D98E _ 8D. 54 24, 20
        push    ecx                                     ; 1000D992 _ 51
        lea     eax, [esp+40H]                          ; 1000D993 _ 8D. 44 24, 40
        push    edx                                     ; 1000D997 _ 52
        push    eax                                     ; 1000D998 _ 50
        call    ?_2425                                  ; 1000D999 _ E8, 000084F2
        add     esp, 24                                 ; 1000D99E _ 83. C4, 18
        test    eax, eax                                ; 1000D9A1 _ 85. C0
        jnz     ?_1506                                  ; 1000D9A3 _ 75, 11
        push    8                                       ; 1000D9A5 _ 6A, 08
        push    ?_5300                                  ; 1000D9A7 _ 68, 1002CEC4(d)
        push    11269                                   ; 1000D9AC _ 68, 00002C05
        jmp     ?_1546                                  ; 1000D9B1 _ E9, 00000658

?_1506: mov     eax, dword [esp+30H]                    ; 1000D9B6 _ 8B. 44 24, 30
        cmp     eax, edi                                ; 1000D9BA _ 3B. C7
        jz      ?_1508                                  ; 1000D9BC _ 74, 2C
        lea     ebx, [eax+5DH]                          ; 1000D9BE _ 8D. 58, 5D
        mov     ax, word [eax+27H]                      ; 1000D9C1 _ 66: 8B. 40, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 1000D9C5 _ 66: 3D, FFFF
        mov     dword [esp+28H], ebx                    ; 1000D9C9 _ 89. 5C 24, 28
        jz      ?_1507                                  ; 1000D9CD _ 74, 17
        and     eax, 0FFFFH                             ; 1000D9CF _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 1000D9D4 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 1000D9D7 _ 8D. 04 80
        lea     ecx, [eax+eax*8]                        ; 1000D9DA _ 8D. 0C C0
        lea     ebp, [?_5632+ecx*4]                     ; 1000D9DD _ 8D. 2C 8D, 100358A0(d)
        jmp     ?_1512                                  ; 1000D9E4 _ EB, 68

?_1507: xor     ebp, ebp                                ; 1000D9E6 _ 33. ED
        jmp     ?_1512                                  ; 1000D9E8 _ EB, 64

?_1508: mov     ecx, dword [esp+14H]                    ; 1000D9EA _ 8B. 4C 24, 14
        cmp     ecx, edi                                ; 1000D9EE _ 3B. CF
        jz      ?_1511                                  ; 1000D9F0 _ 74, 4C
        mov     ax, word [ecx]                          ; 1000D9F2 _ 66: 8B. 01
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 42                                  ; 1000D9F5 _ 66: 3D, 002A
        jz      ?_1509                                  ; 1000D9F9 _ 74, 18
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 475                                 ; 1000D9FB _ 66: 3D, 01DB
        jz      ?_1509                                  ; 1000D9FF _ 74, 12
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 476                                 ; 1000DA01 _ 66: 3D, 01DC
        jz      ?_1509                                  ; 1000DA05 _ 74, 0C
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 278                                 ; 1000DA07 _ 66: 3D, 0116
        jz      ?_1509                                  ; 1000DA0B _ 74, 06
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 477                                 ; 1000DA0D _ 66: 3D, 01DD
        jnz     ?_1510                                  ; 1000DA11 _ 75, 04
?_1509: mov     dword [esp+18H], ecx                    ; 1000DA13 _ 89. 4C 24, 18
?_1510: lea     ebx, [ecx+14H]                          ; 1000DA17 _ 8D. 59, 14
        push    ecx                                     ; 1000DA1A _ 51
        mov     dword [esp+2CH], ebx                    ; 1000DA1B _ 89. 5C 24, 2C
        call    ?_2957                                  ; 1000DA1F _ E8, 0000C0BC
        mov     ebp, eax                                ; 1000DA24 _ 8B. E8
        add     esp, 4                                  ; 1000DA26 _ 83. C4, 04
        cmp     ebp, edi                                ; 1000DA29 _ 3B. EF
        jnz     ?_1512                                  ; 1000DA2B _ 75, 21
        push    8                                       ; 1000DA2D _ 6A, 08
        push    ?_5299                                  ; 1000DA2F _ 68, 1002CE90(d)
        push    11311                                   ; 1000DA34 _ 68, 00002C2F
        jmp     ?_1546                                  ; 1000DA39 _ E9, 000005D0

?_1511: mov     eax, dword [esp+24H]                    ; 1000DA3E _ 8B. 44 24, 24
        mov     ebp, eax                                ; 1000DA42 _ 8B. E8
        lea     ebx, [eax+178H]                         ; 1000DA44 _ 8D. 98, 00000178
        mov     dword [esp+28H], ebx                    ; 1000DA4A _ 89. 5C 24, 28
?_1512: mov     eax, dword [ebx]                        ; 1000DA4E _ 8B. 03
        xor     edx, edx                                ; 1000DA50 _ 33. D2
        mov     dx, word [esi+18H]                      ; 1000DA52 _ 66: 8B. 56, 18
        push    edx                                     ; 1000DA56 _ 52
        push    edi                                     ; 1000DA57 _ 57
        push    1                                       ; 1000DA58 _ 6A, 01
        push    eax                                     ; 1000DA5A _ 50
        call    ?_2482                                  ; 1000DA5B _ E8, 00008A00
        mov     ebx, eax                                ; 1000DA60 _ 8B. D8
        add     esp, 16                                 ; 1000DA62 _ 83. C4, 10
        cmp     ebx, edi                                ; 1000DA65 _ 3B. DF
        jnz     ?_1513                                  ; 1000DA67 _ 75, 47
        mov     ecx, dword [esi+8H]                     ; 1000DA69 _ 8B. 4E, 08
        mov     edx, dword [esi+1FH]                    ; 1000DA6C _ 8B. 56, 1F
        xor     eax, eax                                ; 1000DA6F _ 33. C0
        push    ecx                                     ; 1000DA71 _ 51
        mov     ax, word [esi+18H]                      ; 1000DA72 _ 66: 8B. 46, 18
        push    edx                                     ; 1000DA76 _ 52
        push    eax                                     ; 1000DA77 _ 50
        lea     ecx, [esp+44H]                          ; 1000DA78 _ 8D. 4C 24, 44
        push    ?_5298                                  ; 1000DA7C _ 68, 1002CE4C(d)
        push    ecx                                     ; 1000DA81 _ 51
        call    ?_3039                                  ; 1000DA82 _ E8, 0000C812
        lea     edx, [esp+4CH]                          ; 1000DA87 _ 8D. 54 24, 4C
        push    8                                       ; 1000DA8B _ 6A, 08
        push    edx                                     ; 1000DA8D _ 52
        push    11347                                   ; 1000DA8E _ 68, 00002C53
        push    ?_5260                                  ; 1000DA93 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000DA98 _ E8, FFFF5BA3
        add     esp, 36                                 ; 1000DA9D _ 83. C4, 24
        mov     eax, 1                                  ; 1000DAA0 _ B8, 00000001
        pop     edi                                     ; 1000DAA5 _ 5F
        pop     esi                                     ; 1000DAA6 _ 5E
        pop     ebp                                     ; 1000DAA7 _ 5D
        pop     ebx                                     ; 1000DAA8 _ 5B
        add     esp, 552                                ; 1000DAA9 _ 81. C4, 00000228
        ret                                             ; 1000DAAF _ C3

?_1513: mov     eax, dword [esp+18H]                    ; 1000DAB0 _ 8B. 44 24, 18
        cmp     eax, edi                                ; 1000DAB4 _ 3B. C7
        jz      ?_1515                                  ; 1000DAB6 _ 74, 57
        mov     edi, dword [esi+1FH]                    ; 1000DAB8 _ 8B. 7E, 1F
        push    ebx                                     ; 1000DABB _ 53
        push    eax                                     ; 1000DABC _ 50
        call    ?_2978                                  ; 1000DABD _ E8, 0000C20E
        add     esp, 8                                  ; 1000DAC2 _ 83. C4, 08
        cmp     eax, edi                                ; 1000DAC5 _ 3B. C7
        jge     ?_1514                                  ; 1000DAC7 _ 7D, 44
        mov     ecx, dword [esi+8H]                     ; 1000DAC9 _ 8B. 4E, 08
        xor     edx, edx                                ; 1000DACC _ 33. D2
        mov     dx, word [esi+18H]                      ; 1000DACE _ 66: 8B. 56, 18
        push    ecx                                     ; 1000DAD2 _ 51
        push    edi                                     ; 1000DAD3 _ 57
        push    edx                                     ; 1000DAD4 _ 52
        lea     eax, [esp+44H]                          ; 1000DAD5 _ 8D. 44 24, 44
        push    ?_5297                                  ; 1000DAD9 _ 68, 1002CDFC(d)
        push    eax                                     ; 1000DADE _ 50
        call    ?_3039                                  ; 1000DADF _ E8, 0000C7B5
        lea     ecx, [esp+4CH]                          ; 1000DAE4 _ 8D. 4C 24, 4C
        push    8                                       ; 1000DAE8 _ 6A, 08
        push    ecx                                     ; 1000DAEA _ 51
        push    11381                                   ; 1000DAEB _ 68, 00002C75
        push    ?_5260                                  ; 1000DAF0 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000DAF5 _ E8, FFFF5B46
        add     esp, 36                                 ; 1000DAFA _ 83. C4, 24
        mov     eax, 1                                  ; 1000DAFD _ B8, 00000001
        pop     edi                                     ; 1000DB02 _ 5F
        pop     esi                                     ; 1000DB03 _ 5E
        pop     ebp                                     ; 1000DB04 _ 5D
        pop     ebx                                     ; 1000DB05 _ 5B
        add     esp, 552                                ; 1000DB06 _ 81. C4, 00000228
        ret                                             ; 1000DB0C _ C3

?_1514: xor     edi, edi                                ; 1000DB0D _ 33. FF
?_1515: mov     eax, dword [esi+1FH]                    ; 1000DB0F _ 8B. 46, 1F
        mov     ecx, dword [ebx+0EH]                    ; 1000DB12 _ 8B. 4B, 0E
        cmp     ecx, eax                                ; 1000DB15 _ 3B. C8
        jge     ?_1516                                  ; 1000DB17 _ 7D, 44
        mov     edx, dword [esi+8H]                     ; 1000DB19 _ 8B. 56, 08
        lea     ecx, [esp+38H]                          ; 1000DB1C _ 8D. 4C 24, 38
        push    edx                                     ; 1000DB20 _ 52
        push    eax                                     ; 1000DB21 _ 50
        xor     eax, eax                                ; 1000DB22 _ 33. C0
        mov     ax, word [esi+18H]                      ; 1000DB24 _ 66: 8B. 46, 18
        push    eax                                     ; 1000DB28 _ 50
        push    ?_5297                                  ; 1000DB29 _ 68, 1002CDFC(d)
        push    ecx                                     ; 1000DB2E _ 51
        call    ?_3039                                  ; 1000DB2F _ E8, 0000C765
        lea     edx, [esp+4CH]                          ; 1000DB34 _ 8D. 54 24, 4C
        push    8                                       ; 1000DB38 _ 6A, 08
        push    edx                                     ; 1000DB3A _ 52
        push    11415                                   ; 1000DB3B _ 68, 00002C97
        push    ?_5260                                  ; 1000DB40 _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000DB45 _ E8, FFFF5AF6
        add     esp, 36                                 ; 1000DB4A _ 83. C4, 24
        mov     eax, 1                                  ; 1000DB4D _ B8, 00000001
        pop     edi                                     ; 1000DB52 _ 5F
        pop     esi                                     ; 1000DB53 _ 5E
        pop     ebp                                     ; 1000DB54 _ 5D
        pop     ebx                                     ; 1000DB55 _ 5B
        add     esp, 552                                ; 1000DB56 _ 81. C4, 00000228
        ret                                             ; 1000DB5C _ C3

?_1516: cmp     dword [esi+23H], edi                    ; 1000DB5D _ 39. 7E, 23
        jz      ?_1517                                  ; 1000DB60 _ 74, 17
        cmp     ebp, edi                                ; 1000DB62 _ 3B. EF
        jz      ?_1517                                  ; 1000DB64 _ 74, 13
        mov     al, byte [esi+1EH]                      ; 1000DB66 _ 8A. 46, 1E
        mov     ecx, dword [ebp+178H]                   ; 1000DB69 _ 8B. 8D, 00000178
        push    eax                                     ; 1000DB6F _ 50
        push    ecx                                     ; 1000DB70 _ 51
        call    ?_2929                                  ; 1000DB71 _ E8, 0000BB4A
        add     esp, 8                                  ; 1000DB76 _ 83. C4, 08
?_1517: mov     eax, dword [esi+10H]                    ; 1000DB79 _ 8B. 46, 10
        cmp     eax, -1                                 ; 1000DB7C _ 83. F8, FF
        je      ?_1531                                  ; 1000DB7F _ 0F 84, 00000162
        push    eax                                     ; 1000DB85 _ 50
        push    esi                                     ; 1000DB86 _ 56
        call    ?_1389                                  ; 1000DB87 _ E8, FFFFEF04
        mov     dword [esi+10H], eax                    ; 1000DB8C _ 89. 46, 10
        push    eax                                     ; 1000DB8F _ 50
        lea     edx, [esp+30H]                          ; 1000DB90 _ 8D. 54 24, 30
        lea     eax, [esp+20H]                          ; 1000DB94 _ 8D. 44 24, 20
        push    edx                                     ; 1000DB98 _ 52
        lea     ecx, [esp+2CH]                          ; 1000DB99 _ 8D. 4C 24, 2C
        push    eax                                     ; 1000DB9D _ 50
        push    ecx                                     ; 1000DB9E _ 51
        call    ?_2425                                  ; 1000DB9F _ E8, 000082EC
        add     esp, 24                                 ; 1000DBA4 _ 83. C4, 18
        test    eax, eax                                ; 1000DBA7 _ 85. C0
        jnz     ?_1518                                  ; 1000DBA9 _ 75, 11
        push    8                                       ; 1000DBAB _ 6A, 08
        push    ?_5296                                  ; 1000DBAD _ 68, 1002CDCC(d)
        push    11485                                   ; 1000DBB2 _ 68, 00002CDD
        jmp     ?_1546                                  ; 1000DBB7 _ E9, 00000452

?_1518: mov     eax, dword [esp+1CH]                    ; 1000DBBC _ 8B. 44 24, 1C
        cmp     eax, edi                                ; 1000DBC0 _ 3B. C7
        jz      ?_1520                                  ; 1000DBC2 _ 74, 31
        lea     edi, [eax+5DH]                          ; 1000DBC4 _ 8D. 78, 5D
        mov     ax, word [eax+27H]                      ; 1000DBC7 _ 66: 8B. 40, 27
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 65535                               ; 1000DBCB _ 66: 3D, FFFF
        jz      ?_1519                                  ; 1000DBCF _ 74, 1A
        and     eax, 0FFFFH                             ; 1000DBD1 _ 25, 0000FFFF
        lea     eax, [eax+eax*2]                        ; 1000DBD6 _ 8D. 04 40
        lea     eax, [eax+eax*4]                        ; 1000DBD9 _ 8D. 04 80
        lea     edx, [eax+eax*8]                        ; 1000DBDC _ 8D. 14 C0
        lea     eax, [?_5632+edx*4]                     ; 1000DBDF _ 8D. 04 95, 100358A0(d)
        jmp     ?_1527                                  ; 1000DBE6 _ E9, 00000081

?_1519: mov     dword [esp+10H], 0                      ; 1000DBEB _ C7. 44 24, 10, 00000000
        jmp     ?_1528                                  ; 1000DBF3 _ EB, 7B

?_1520: mov     ecx, dword [esp+14H]                    ; 1000DBF5 _ 8B. 4C 24, 14
        cmp     ecx, edi                                ; 1000DBF9 _ 3B. CF
        jz      ?_1526                                  ; 1000DBFB _ 74, 65
        mov     ax, word [ecx]                          ; 1000DBFD _ 66: 8B. 01
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 42                                  ; 1000DC00 _ 66: 3D, 002A
        jz      ?_1521                                  ; 1000DC04 _ 74, 12
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 475                                 ; 1000DC06 _ 66: 3D, 01DB
        jz      ?_1521                                  ; 1000DC0A _ 74, 0C
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 476                                 ; 1000DC0C _ 66: 3D, 01DC
        jz      ?_1521                                  ; 1000DC10 _ 74, 06
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 278                                 ; 1000DC12 _ 66: 3D, 0116
        jnz     ?_1522                                  ; 1000DC16 _ 75, 06
?_1521: mov     dword [esp+20H], ecx                    ; 1000DC18 _ 89. 4C 24, 20
        jmp     ?_1523                                  ; 1000DC1C _ EB, 06

?_1522:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 477                                 ; 1000DC1E _ 66: 3D, 01DD
        jnz     ?_1525                                  ; 1000DC22 _ 75, 30
?_1523: mov     edx, dword [esi+1FH]                    ; 1000DC24 _ 8B. 56, 1F
        xor     eax, eax                                ; 1000DC27 _ 33. C0
        mov     ax, word [esi+18H]                      ; 1000DC29 _ 66: 8B. 46, 18
        push    edx                                     ; 1000DC2D _ 52
        push    eax                                     ; 1000DC2E _ 50
        push    ecx                                     ; 1000DC2F _ 51
        call    ?_2983                                  ; 1000DC30 _ E8, 0000C0FB
        mov     ecx, dword [esi+1FH]                    ; 1000DC35 _ 8B. 4E, 1F
        add     esp, 12                                 ; 1000DC38 _ 83. C4, 0C
        cmp     eax, ecx                                ; 1000DC3B _ 3B. C1
        jge     ?_1524                                  ; 1000DC3D _ 7D, 11
        push    8                                       ; 1000DC3F _ 6A, 08
        push    ?_5295                                  ; 1000DC41 _ 68, 1002CDAC(d)
        push    11547                                   ; 1000DC46 _ 68, 00002D1B
        jmp     ?_1546                                  ; 1000DC4B _ E9, 000003BE

?_1524: mov     ecx, dword [esp+14H]                    ; 1000DC50 _ 8B. 4C 24, 14
?_1525: push    ecx                                     ; 1000DC54 _ 51
        lea     edi, [ecx+14H]                          ; 1000DC55 _ 8D. 79, 14
        call    ?_2957                                  ; 1000DC58 _ E8, 0000BE83
        add     esp, 4                                  ; 1000DC5D _ 83. C4, 04
        jmp     ?_1527                                  ; 1000DC60 _ EB, 0A

?_1526: mov     eax, dword [esp+24H]                    ; 1000DC62 _ 8B. 44 24, 24
        lea     edi, [eax+178H]                         ; 1000DC66 _ 8D. B8, 00000178
?_1527: mov     dword [esp+10H], eax                    ; 1000DC6C _ 89. 44 24, 10
?_1528: mov     edx, dword [?_5693]                     ; 1000DC70 _ 8B. 15, 101DE450(d)
        xor     eax, eax                                ; 1000DC76 _ 33. C0
        mov     ax, word [esi+18H]                      ; 1000DC78 _ 66: 8B. 46, 18
        mov     ecx, eax                                ; 1000DC7C _ 8B. C8
        shl     ecx, 6                                  ; 1000DC7E _ C1. E1, 06
        add     edx, ecx                                ; 1000DC81 _ 03. D1
        cmp     byte [eax+edx], 29                      ; 1000DC83 _ 80. 3C 10, 1D
        jnz     ?_1529                                  ; 1000DC87 _ 75, 0A
        mov     dword [esp+2CH], 0                      ; 1000DC89 _ C7. 44 24, 2C, 00000000
        jmp     ?_1530                                  ; 1000DC91 _ EB, 14

?_1529: push    eax                                     ; 1000DC93 _ 50
        mov     eax, dword [edi]                        ; 1000DC94 _ 8B. 07
        push    0                                       ; 1000DC96 _ 6A, 00
        push    1                                       ; 1000DC98 _ 6A, 01
        push    eax                                     ; 1000DC9A _ 50
        call    ?_2482                                  ; 1000DC9B _ E8, 000087C0
        add     esp, 16                                 ; 1000DCA0 _ 83. C4, 10
        mov     dword [esp+2CH], eax                    ; 1000DCA3 _ 89. 44 24, 2C
?_1530: mov     eax, dword [esi+23H]                    ; 1000DCA7 _ 8B. 46, 23
        test    eax, eax                                ; 1000DCAA _ 85. C0
        jz      ?_1531                                  ; 1000DCAC _ 74, 39
        mov     eax, dword [esp+10H]                    ; 1000DCAE _ 8B. 44 24, 10
        test    eax, eax                                ; 1000DCB2 _ 85. C0
        jz      ?_1531                                  ; 1000DCB4 _ 74, 31
        mov     cl, byte [esi+1EH]                      ; 1000DCB6 _ 8A. 4E, 1E
        mov     edx, eax                                ; 1000DCB9 _ 8B. D0
        push    ecx                                     ; 1000DCBB _ 51
        mov     eax, dword [edx+178H]                   ; 1000DCBC _ 8B. 82, 00000178
        push    eax                                     ; 1000DCC2 _ 50
        call    ?_2929                                  ; 1000DCC3 _ E8, 0000B9F8
        mov     ecx, dword [esi+1FH]                    ; 1000DCC8 _ 8B. 4E, 1F
        add     esp, 8                                  ; 1000DCCB _ 83. C4, 08
        imul    ecx, dword [esi+23H]                    ; 1000DCCE _ 0F AF. 4E, 23
        cmp     eax, ecx                                ; 1000DCD2 _ 3B. C1
        jge     ?_1531                                  ; 1000DCD4 _ 7D, 11
        push    8                                       ; 1000DCD6 _ 6A, 08
        push    ?_5294                                  ; 1000DCD8 _ 68, 1002CD78(d)
        push    11599                                   ; 1000DCDD _ 68, 00002D4F
        jmp     ?_1546                                  ; 1000DCE2 _ E9, 00000327

?_1531: mov     edi, dword [esp+18H]                    ; 1000DCE7 _ 8B. 7C 24, 18
        test    edi, edi                                ; 1000DCEB _ 85. FF
        jz      ?_1533                                  ; 1000DCED _ 74, 69
        mov     eax, dword [esp+10H]                    ; 1000DCEF _ 8B. 44 24, 10
        test    eax, eax                                ; 1000DCF3 _ 85. C0
        je      ?_1534                                  ; 1000DCF5 _ 0F 84, 000000A0
        push    ebx                                     ; 1000DCFB _ 53
        call    ?_2957                                  ; 1000DCFC _ E8, 0000BDDF
        mov     ecx, dword [esp+14H]                    ; 1000DD01 _ 8B. 4C 24, 14
        add     esp, 4                                  ; 1000DD05 _ 83. C4, 04
        cmp     eax, ecx                                ; 1000DD08 _ 3B. C1
        jz      ?_1533                                  ; 1000DD0A _ 74, 4C
        mov     eax, dword [ebx+1CH]                    ; 1000DD0C _ 8B. 43, 1C
        test    eax, eax                                ; 1000DD0F _ 85. C0
        jz      ?_1533                                  ; 1000DD11 _ 74, 45
        xor     edx, edx                                ; 1000DD13 _ 33. D2
        mov     dx, word [ebx]                          ; 1000DD15 _ 66: 8B. 13
        push    edx                                     ; 1000DD18 _ 52
        push    edi                                     ; 1000DD19 _ 57
        call    ?_2980                                  ; 1000DD1A _ E8, 0000BFE1
        mov     edx, eax                                ; 1000DD1F _ 8B. D0
        push    ebx                                     ; 1000DD21 _ 53
        imul    edx, dword [ebx+1CH]                    ; 1000DD22 _ 0F AF. 53, 1C
        shr     edx, 2                                  ; 1000DD26 _ C1. EA, 02
        push    edi                                     ; 1000DD29 _ 57
        mov     dword [esp+44H], edx                    ; 1000DD2A _ 89. 54 24, 44
        call    ?_2978                                  ; 1000DD2E _ E8, 0000BF9D
        mov     ecx, dword [esp+44H]                    ; 1000DD33 _ 8B. 4C 24, 44
        add     esp, 16                                 ; 1000DD37 _ 83. C4, 10
        sub     eax, ecx                                ; 1000DD3A _ 2B. C1
        mov     ecx, dword [esi+1FH]                    ; 1000DD3C _ 8B. 4E, 1F
        cmp     eax, ecx                                ; 1000DD3F _ 3B. C1
        jnc     ?_1532                                  ; 1000DD41 _ 73, 11
        push    8                                       ; 1000DD43 _ 6A, 08
        push    ?_5293                                  ; 1000DD45 _ 68, 1002CD48(d)
        push    11641                                   ; 1000DD4A _ 68, 00002D79
        jmp     ?_1546                                  ; 1000DD4F _ E9, 000002BA

?_1532: mov     edi, dword [esp+18H]                    ; 1000DD54 _ 8B. 7C 24, 18
?_1533: mov     eax, dword [esp+10H]                    ; 1000DD58 _ 8B. 44 24, 10
        test    eax, eax                                ; 1000DD5C _ 85. C0
        jz      ?_1534                                  ; 1000DD5E _ 74, 3B
        mov     eax, dword [esp+1CH]                    ; 1000DD60 _ 8B. 44 24, 1C
        test    eax, eax                                ; 1000DD64 _ 85. C0
        jnz     ?_1534                                  ; 1000DD66 _ 75, 33
        mov     eax, dword [esp+20H]                    ; 1000DD68 _ 8B. 44 24, 20
        test    eax, eax                                ; 1000DD6C _ 85. C0
        jnz     ?_1534                                  ; 1000DD6E _ 75, 2B
        mov     eax, dword [esp+14H]                    ; 1000DD70 _ 8B. 44 24, 14
        test    eax, eax                                ; 1000DD74 _ 85. C0
        jnz     ?_1534                                  ; 1000DD76 _ 75, 23
        mov     edx, dword [esi+1FH]                    ; 1000DD78 _ 8B. 56, 1F
        mov     ecx, dword [esp+10H]                    ; 1000DD7B _ 8B. 4C 24, 10
        xor     eax, eax                                ; 1000DD7F _ 33. C0
        push    edx                                     ; 1000DD81 _ 52
        mov     ax, word [esi+18H]                      ; 1000DD82 _ 66: 8B. 46, 18
        push    eax                                     ; 1000DD86 _ 50
        push    ecx                                     ; 1000DD87 _ 51
        call    ?_3002                                  ; 1000DD88 _ E8, 0000C143
        add     esp, 12                                 ; 1000DD8D _ 83. C4, 0C
        mov     dword [esi+1FH], eax                    ; 1000DD90 _ 89. 46, 1F
        test    eax, eax                                ; 1000DD93 _ 85. C0
        je      ?_1547                                  ; 1000DD95 _ 0F 84, 00000280
?_1534: mov     eax, dword [esi+23H]                    ; 1000DD9B _ 8B. 46, 23
        test    eax, eax                                ; 1000DD9E _ 85. C0
        jz      ?_1536                                  ; 1000DDA0 _ 74, 6E
        mov     eax, dword [esp+20H]                    ; 1000DDA2 _ 8B. 44 24, 20
        test    eax, eax                                ; 1000DDA6 _ 85. C0
        jnz     ?_1535                                  ; 1000DDA8 _ 75, 35
        mov     eax, dword [esp+14H]                    ; 1000DDAA _ 8B. 44 24, 14
        test    eax, eax                                ; 1000DDAE _ 85. C0
        jz      ?_1535                                  ; 1000DDB0 _ 74, 2D
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [eax], 477                         ; 1000DDB2 _ 66: 81. 38, 01DD
        jnz     ?_1535                                  ; 1000DDB7 _ 75, 26
        xor     edx, edx                                ; 1000DDB9 _ 33. D2
        xor     eax, eax                                ; 1000DDBB _ 33. C0
        mov     dx, word [esi+18H]                      ; 1000DDBD _ 66: 8B. 56, 18
        mov     al, byte [?_5532]                       ; 1000DDC1 _ A0, 10035439(d)
        push    edx                                     ; 1000DDC6 _ 52
        push    eax                                     ; 1000DDC7 _ 50
        call    ?_2458                                  ; 1000DDC8 _ E8, 00008473
        add     esp, 8                                  ; 1000DDCD _ 83. C4, 08
        test    eax, eax                                ; 1000DDD0 _ 85. C0
        jz      ?_1535                                  ; 1000DDD2 _ 74, 0B
        mov     ecx, dword [esi+1FH]                    ; 1000DDD4 _ 8B. 4E, 1F
        mov     edx, dword [eax+18H]                    ; 1000DDD7 _ 8B. 50, 18
        add     edx, ecx                                ; 1000DDDA _ 03. D1
        mov     dword [eax+18H], edx                    ; 1000DDDC _ 89. 50, 18
?_1535: test    edi, edi                                ; 1000DDDF _ 85. FF
        jz      ?_1536                                  ; 1000DDE1 _ 74, 2D
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [edi], 477                         ; 1000DDE3 _ 66: 81. 3F, 01DD
        jnz     ?_1536                                  ; 1000DDE8 _ 75, 26
        xor     edx, edx                                ; 1000DDEA _ 33. D2
        xor     eax, eax                                ; 1000DDEC _ 33. C0
        mov     dx, word [esi+18H]                      ; 1000DDEE _ 66: 8B. 56, 18
        mov     al, byte [?_5532]                       ; 1000DDF2 _ A0, 10035439(d)
        push    edx                                     ; 1000DDF7 _ 52
        push    eax                                     ; 1000DDF8 _ 50
        call    ?_2458                                  ; 1000DDF9 _ E8, 00008442
        add     esp, 8                                  ; 1000DDFE _ 83. C4, 08
        test    eax, eax                                ; 1000DE01 _ 85. C0
        jz      ?_1536                                  ; 1000DE03 _ 74, 0B
        mov     ecx, dword [esi+1FH]                    ; 1000DE05 _ 8B. 4E, 1F
        mov     edx, dword [eax+1CH]                    ; 1000DE08 _ 8B. 50, 1C
        add     edx, ecx                                ; 1000DE0B _ 03. D1
        mov     dword [eax+1CH], edx                    ; 1000DE0D _ 89. 50, 1C
?_1536: cmp     dword [esi+14H], -1                     ; 1000DE10 _ 83. 7E, 14, FF
        je      ?_1543                                  ; 1000DE14 _ 0F 84, 000000ED
        mov     edx, dword [esi+1FH]                    ; 1000DE1A _ 8B. 56, 1F
        mov     ecx, dword [ebx+0EH]                    ; 1000DE1D _ 8B. 4B, 0E
        sub     ecx, edx                                ; 1000DE20 _ 2B. CA
        mov     eax, ecx                                ; 1000DE22 _ 8B. C1
        mov     dword [ebx+0EH], ecx                    ; 1000DE24 _ 89. 4B, 0E
        test    eax, eax                                ; 1000DE27 _ 85. C0
        jg      ?_1538                                  ; 1000DE29 _ 7F, 2E
        mov     edx, dword [?_5693]                     ; 1000DE2B _ 8B. 15, 101DE450(d)
        xor     eax, eax                                ; 1000DE31 _ 33. C0
        mov     ax, word [esi+18H]                      ; 1000DE33 _ 66: 8B. 46, 18
        mov     ecx, eax                                ; 1000DE37 _ 8B. C8
        shl     ecx, 6                                  ; 1000DE39 _ C1. E1, 06
        add     edx, ecx                                ; 1000DE3C _ 03. D1
        mov     cl, byte [eax+edx]                      ; 1000DE3E _ 8A. 0C 10
        cmp     cl, 2                                   ; 1000DE41 _ 80. F9, 02
        jz      ?_1539                                  ; 1000DE44 _ 74, 6D
        cmp     cl, 6                                   ; 1000DE46 _ 80. F9, 06
        jz      ?_1539                                  ; 1000DE49 _ 74, 68
        push    eax                                     ; 1000DE4B _ 50
        mov     eax, dword [esp+2CH]                    ; 1000DE4C _ 8B. 44 24, 2C
        push    eax                                     ; 1000DE50 _ 50
        call    ?_2502                                  ; 1000DE51 _ E8, 0000877A
?_1537: add     esp, 8                                  ; 1000DE56 _ 83. C4, 08
?_1538: mov     eax, dword [esi+23H]                    ; 1000DE59 _ 8B. 46, 23
        test    eax, eax                                ; 1000DE5C _ 85. C0
        je      ?_1543                                  ; 1000DE5E _ 0F 84, 000000A3
        imul    eax, dword [esi+1FH]                    ; 1000DE64 _ 0F AF. 46, 1F
        xor     ecx, ecx                                ; 1000DE68 _ 33. C9
        push    eax                                     ; 1000DE6A _ 50
        mov     cl, byte [esi+1EH]                      ; 1000DE6B _ 8A. 4E, 1E
        xor     edx, edx                                ; 1000DE6E _ 33. D2
        mov     eax, ecx                                ; 1000DE70 _ 8B. C1
        shl     eax, 6                                  ; 1000DE72 _ C1. E0, 06
        sub     eax, ecx                                ; 1000DE75 _ 2B. C1
        lea     ecx, [eax+eax*2]                        ; 1000DE77 _ 8D. 0C 40
        mov     eax, dword [ebp+4H]                     ; 1000DE7A _ 8B. 45, 04
        mov     dx, word [?_5672+ecx*4]                 ; 1000DE7D _ 66: 8B. 14 8D, 100A8C94(d)
        push    edx                                     ; 1000DE85 _ 52
        push    eax                                     ; 1000DE86 _ 50
        call    ?_2564                                  ; 1000DE87 _ E8, 00008E44
        add     esp, 12                                 ; 1000DE8C _ 83. C4, 0C
        test    edi, edi                                ; 1000DE8F _ 85. FF
        jz      ?_1542                                  ; 1000DE91 _ 74, 5F
        mov     ax, word [edi]                          ; 1000DE93 _ 66: 8B. 07
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 475                                 ; 1000DE96 _ 66: 3D, 01DB
        jnz     ?_1541                                  ; 1000DE9A _ 75, 39
        mov     ecx, dword [esi+23H]                    ; 1000DE9C _ 8B. 4E, 23
        mov     eax, dword [ebp+1A4H]                   ; 1000DE9F _ 8B. 85, 000001A4
        imul    ecx, dword [esi+1FH]                    ; 1000DEA5 _ 0F AF. 4E, 1F
        add     eax, ecx                                ; 1000DEA9 _ 03. C1
        mov     dword [ebp+1A4H], eax                   ; 1000DEAB _ 89. 85, 000001A4
        jmp     ?_1543                                  ; 1000DEB1 _ EB, 54

?_1539: mov     ecx, dword [esp+30H]                    ; 1000DEB3 _ 8B. 4C 24, 30
        test    ecx, ecx                                ; 1000DEB7 _ 85. C9
        jz      ?_1540                                  ; 1000DEB9 _ 74, 09
        push    eax                                     ; 1000DEBB _ 50
        push    ecx                                     ; 1000DEBC _ 51
        call    ?_2752                                  ; 1000DEBD _ E8, 0000A06E
        jmp     ?_1537                                  ; 1000DEC2 _ EB, 92

?_1540: push    8                                       ; 1000DEC4 _ 6A, 08
        push    ?_5292                                  ; 1000DEC6 _ 68, 1002CD14(d)
        push    11759                                   ; 1000DECB _ 68, 00002DEF
        jmp     ?_1546                                  ; 1000DED0 _ E9, 00000139

?_1541:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 476                                 ; 1000DED5 _ 66: 3D, 01DC
        jnz     ?_1542                                  ; 1000DED9 _ 75, 17
        mov     edx, dword [esi+23H]                    ; 1000DEDB _ 8B. 56, 23
        mov     eax, dword [ebp+1A0H]                   ; 1000DEDE _ 8B. 85, 000001A0
        imul    edx, dword [esi+1FH]                    ; 1000DEE4 _ 0F AF. 56, 1F
        add     eax, edx                                ; 1000DEE8 _ 03. C2
        mov     dword [ebp+1A0H], eax                   ; 1000DEEA _ 89. 85, 000001A0
        jmp     ?_1543                                  ; 1000DEF0 _ EB, 15

?_1542: mov     eax, dword [esi+23H]                    ; 1000DEF2 _ 8B. 46, 23
        mov     ecx, dword [ebp+19CH]                   ; 1000DEF5 _ 8B. 8D, 0000019C
        imul    eax, dword [esi+1FH]                    ; 1000DEFB _ 0F AF. 46, 1F
        add     ecx, eax                                ; 1000DEFF _ 03. C8
        mov     dword [ebp+19CH], ecx                   ; 1000DF01 _ 89. 8D, 0000019C
?_1543: mov     edx, dword [esi+10H]                    ; 1000DF07 _ 8B. 56, 10
        mov     ebx, dword [esp+2CH]                    ; 1000DF0A _ 8B. 5C 24, 2C
        cmp     edx, -1                                 ; 1000DF0E _ 83. FA, FF
        je      ?_1554                                  ; 1000DF11 _ 0F 84, 000001D0
        test    ebx, ebx                                ; 1000DF17 _ 85. DB
        je      ?_1545                                  ; 1000DF19 _ 0F 84, 000000A7
        mov     ecx, dword [esi+1FH]                    ; 1000DF1F _ 8B. 4E, 1F
        mov     eax, dword [ebx+0EH]                    ; 1000DF22 _ 8B. 43, 0E
        add     eax, ecx                                ; 1000DF25 _ 03. C1
        mov     dword [ebx+0EH], eax                    ; 1000DF27 _ 89. 43, 0E
?_1544: xor     ecx, ecx                                ; 1000DF2A _ 33. C9
        mov     cl, byte [esi+3H]                       ; 1000DF2C _ 8A. 4E, 03
        mov     eax, ecx                                ; 1000DF2F _ 8B. C1
        shl     eax, 4                                  ; 1000DF31 _ C1. E0, 04
        add     eax, ecx                                ; 1000DF34 _ 03. C1
        shl     eax, 8                                  ; 1000DF36 _ C1. E0, 08
        add     eax, ecx                                ; 1000DF39 _ 03. C1
        shl     eax, 4                                  ; 1000DF3B _ C1. E0, 04
        add     eax, ecx                                ; 1000DF3E _ 03. C1
        mov     ecx, dword [ebx+2H]                     ; 1000DF40 _ 8B. 4B, 02
        lea     eax, [eax+eax*8]                        ; 1000DF43 _ 8D. 04 C0
        mov     dword [?_5768+eax*4], ecx               ; 1000DF46 _ 89. 0C 85, 10442D08(d)
        mov     eax, dword [esi+23H]                    ; 1000DF4D _ 8B. 46, 23
        test    eax, eax                                ; 1000DF50 _ 85. C0
        je      ?_1554                                  ; 1000DF52 _ 0F 84, 0000018F
        mov     ecx, dword [esp+10H]                    ; 1000DF58 _ 8B. 4C 24, 10
        test    ecx, ecx                                ; 1000DF5C _ 85. C9
        je      ?_1554                                  ; 1000DF5E _ 0F 84, 00000183
        imul    eax, dword [esi+1FH]                    ; 1000DF64 _ 0F AF. 46, 1F
        xor     ecx, ecx                                ; 1000DF68 _ 33. C9
        push    eax                                     ; 1000DF6A _ 50
        mov     cl, byte [esi+1EH]                      ; 1000DF6B _ 8A. 4E, 1E
        mov     edi, dword [esp+14H]                    ; 1000DF6E _ 8B. 7C 24, 14
        mov     eax, ecx                                ; 1000DF72 _ 8B. C1
        shl     eax, 6                                  ; 1000DF74 _ C1. E0, 06
        sub     eax, ecx                                ; 1000DF77 _ 2B. C1
        mov     ecx, dword [edi+4H]                     ; 1000DF79 _ 8B. 4F, 04
        lea     edx, [eax+eax*2]                        ; 1000DF7C _ 8D. 14 40
        xor     eax, eax                                ; 1000DF7F _ 33. C0
        mov     ax, word [?_5672+edx*4]                 ; 1000DF81 _ 66: 8B. 04 95, 100A8C94(d)
        push    eax                                     ; 1000DF89 _ 50
        push    ecx                                     ; 1000DF8A _ 51
        call    ?_2572                                  ; 1000DF8B _ E8, 00008E50
        mov     eax, dword [esp+2CH]                    ; 1000DF90 _ 8B. 44 24, 2C
        add     esp, 12                                 ; 1000DF94 _ 83. C4, 0C
        test    eax, eax                                ; 1000DF97 _ 85. C0
        je      ?_1556                                  ; 1000DF99 _ 0F 84, 00000172
        mov     ax, word [eax]                          ; 1000DF9F _ 66: 8B. 00
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 475                                 ; 1000DFA2 _ 66: 3D, 01DB
        jne     ?_1553                                  ; 1000DFA6 _ 0F 85, 00000120
        mov     edx, dword [esi+23H]                    ; 1000DFAC _ 8B. 56, 23
        mov     eax, dword [edi+1A0H]                   ; 1000DFAF _ 8B. 87, 000001A0
        imul    edx, dword [esi+1FH]                    ; 1000DFB5 _ 0F AF. 56, 1F
        add     eax, edx                                ; 1000DFB9 _ 03. C2
        mov     dword [edi+1A0H], eax                   ; 1000DFBB _ 89. 87, 000001A0
        jmp     ?_1554                                  ; 1000DFC1 _ E9, 00000121

?_1545: mov     ecx, dword [?_5693]                     ; 1000DFC6 _ 8B. 0D, 101DE450(d)
        xor     eax, eax                                ; 1000DFCC _ 33. C0
        mov     ax, word [esi+18H]                      ; 1000DFCE _ 66: 8B. 46, 18
        mov     edi, eax                                ; 1000DFD2 _ 8B. F8
        shl     edi, 6                                  ; 1000DFD4 _ C1. E7, 06
        add     ecx, edi                                ; 1000DFD7 _ 03. CF
        mov     cl, byte [eax+ecx]                      ; 1000DFD9 _ 8A. 0C 08
        cmp     cl, 2                                   ; 1000DFDC _ 80. F9, 02
        je      ?_1552                                  ; 1000DFDF _ 0F 84, 000000B6
        cmp     cl, 6                                   ; 1000DFE5 _ 80. F9, 06
        je      ?_1552                                  ; 1000DFE8 _ 0F 84, 000000AD
        mov     ecx, dword [esi+1FH]                    ; 1000DFEE _ 8B. 4E, 1F
        push    ecx                                     ; 1000DFF1 _ 51
        push    eax                                     ; 1000DFF2 _ 50
        push    edx                                     ; 1000DFF3 _ 52
        call    ?_2524                                  ; 1000DFF4 _ E8, 00008767
        mov     ebx, eax                                ; 1000DFF9 _ 8B. D8
        add     esp, 12                                 ; 1000DFFB _ 83. C4, 0C
        test    ebx, ebx                                ; 1000DFFE _ 85. DB
        jnz     ?_1548                                  ; 1000E000 _ 75, 29
        push    8                                       ; 1000E002 _ 6A, 08
        push    ?_5291                                  ; 1000E004 _ 68, 1002CCE8(d)
        push    11869                                   ; 1000E009 _ 68, 00002E5D
?_1546: push    ?_5260                                  ; 1000E00E _ 68, 1002C748(d)
        call    ?_0267                                  ; 1000E013 _ E8, FFFF5628
        add     esp, 16                                 ; 1000E018 _ 83. C4, 10
?_1547: pop     edi                                     ; 1000E01B _ 5F
        pop     esi                                     ; 1000E01C _ 5E
        pop     ebp                                     ; 1000E01D _ 5D
        mov     eax, 1                                  ; 1000E01E _ B8, 00000001
        pop     ebx                                     ; 1000E023 _ 5B
        add     esp, 552                                ; 1000E024 _ 81. C4, 00000228
        ret                                             ; 1000E02A _ C3

?_1548: mov     ecx, dword [esp+20H]                    ; 1000E02B _ 8B. 4C 24, 20
        test    ecx, ecx                                ; 1000E02F _ 85. C9
        je      ?_1544                                  ; 1000E031 _ 0F 84, FFFFFEF3
        mov     edi, dword [?_5693]                     ; 1000E037 _ 8B. 3D, 101DE450(d)
        xor     eax, eax                                ; 1000E03D _ 33. C0
        mov     ax, word [esi+18H]                      ; 1000E03F _ 66: 8B. 46, 18
        mov     edx, eax                                ; 1000E043 _ 8B. D0
        shl     edx, 6                                  ; 1000E045 _ C1. E2, 06
        add     edi, edx                                ; 1000E048 _ 03. FA
        add     eax, edi                                ; 1000E04A _ 03. C7
        mov     edi, dword [ebx+0EH]                    ; 1000E04C _ 8B. 7B, 0E
        inc     edi                                     ; 1000E04F _ 47
        mov     dword [ebx+0EH], edi                    ; 1000E050 _ 89. 7B, 0E
        mov     al, byte [eax]                          ; 1000E053 _ 8A. 00
        cmp     al, 23                                  ; 1000E055 _ 3C, 17
        jz      ?_1549                                  ; 1000E057 _ 74, 08
        cmp     al, 37                                  ; 1000E059 _ 3C, 25
        jne     ?_1544                                  ; 1000E05B _ 0F 85, FFFFFEC9
?_1549: mov     ax, word [ecx]                          ; 1000E061 _ 66: 8B. 01
; Note: Immediate operand could be made smaller by sign extension
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 42                                  ; 1000E064 _ 66: 3D, 002A
        jz      ?_1550                                  ; 1000E068 _ 74, 0A
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 278                                 ; 1000E06A _ 66: 3D, 0116
        jne     ?_1544                                  ; 1000E06E _ 0F 85, FFFFFEB6
?_1550: mov     eax, dword [esp+10H]                    ; 1000E074 _ 8B. 44 24, 10
        test    eax, eax                                ; 1000E078 _ 85. C0
        je      ?_1544                                  ; 1000E07A _ 0F 84, FFFFFEAA
        mov     al, byte [eax+2H]                       ; 1000E080 _ 8A. 40, 02
        cmp     al, 6                                   ; 1000E083 _ 3C, 06
        jz      ?_1551                                  ; 1000E085 _ 74, 08
        cmp     al, 7                                   ; 1000E087 _ 3C, 07
        jne     ?_1544                                  ; 1000E089 _ 0F 85, FFFFFE9B
?_1551: mov     dword [ebx+1CH], 4                      ; 1000E08F _ C7. 43, 1C, 00000004
        jmp     ?_1544                                  ; 1000E096 _ E9, FFFFFE8F

?_1552: mov     ecx, dword [esp+1CH]                    ; 1000E09B _ 8B. 4C 24, 1C
        test    ecx, ecx                                ; 1000E09F _ 85. C9
        je      ?_1557                                  ; 1000E0A1 _ 0F 84, 00000081
        push    eax                                     ; 1000E0A7 _ 50
        push    ecx                                     ; 1000E0A8 _ 51
        call    ?_2723                                  ; 1000E0A9 _ E8, 00009B92
        mov     ebx, eax                                ; 1000E0AE _ 8B. D8
        add     esp, 8                                  ; 1000E0B0 _ 83. C4, 08
        test    ebx, ebx                                ; 1000E0B3 _ 85. DB
        jne     ?_1544                                  ; 1000E0B5 _ 0F 85, FFFFFE6F
        push    8                                       ; 1000E0BB _ 6A, 08
        push    ?_5290                                  ; 1000E0BD _ 68, 1002CCC0(d)
        push    11833                                   ; 1000E0C2 _ 68, 00002E39
        jmp     ?_1546                                  ; 1000E0C7 _ E9, FFFFFF42

?_1553:
; Note: Length-changing prefix causes delay on Intel processors
        cmp     ax, 476                                 ; 1000E0CC _ 66: 3D, 01DC
        jnz     ?_1556                                  ; 1000E0D0 _ 75, 3F
        mov     eax, dword [esi+23H]                    ; 1000E0D2 _ 8B. 46, 23
        mov     ecx, dword [edi+1A4H]                   ; 1000E0D5 _ 8B. 8F, 000001A4
        imul    eax, dword [esi+1FH]                    ; 1000E0DB _ 0F AF. 46, 1F
        add     ecx, eax                                ; 1000E0DF _ 03. C8
        mov     dword [edi+1A4H], ecx                   ; 1000E0E1 _ 89. 8F, 000001A4
?_1554: mov     eax, dword [esp+240H]                   ; 1000E0E7 _ 8B. 84 24, 00000240
        test    eax, eax                                ; 1000E0EE _ 85. C0
        jz      ?_1555                                  ; 1000E0F0 _ 74, 12
        mov     byte [eax], 1                           ; 1000E0F2 _ C6. 00, 01
        mov     ecx, dword [esi+10H]                    ; 1000E0F5 _ 8B. 4E, 10
        cmp     ecx, -1                                 ; 1000E0F8 _ 83. F9, FF
        jz      ?_1555                                  ; 1000E0FB _ 74, 07
        mov     byte [eax+1H], 3                        ; 1000E0FD _ C6. 40, 01, 03
        mov     dword [eax+6H], ebx                     ; 1000E101 _ 89. 58, 06
?_1555: pop     edi                                     ; 1000E104 _ 5F
        pop     esi                                     ; 1000E105 _ 5E
        pop     ebp                                     ; 1000E106 _ 5D
        xor     eax, eax                                ; 1000E107 _ 33. C0
        pop     ebx                                     ; 1000E109 _ 5B
        add     esp, 552                                ; 1000E10A _ 81. C4, 00000228
        ret                                             ; 1000E110 _ C3

?_1556: mov     ecx, dword [esi+23H]                    ; 1000E111 _ 8B. 4E, 23
        mov     eax, dword [edi+198H]                   ; 1000E114 _ 8B. 87, 00000198
        imul    ecx, dword [esi+1FH]                    ; 1000E11A _ 0F AF. 4E, 1F
        add     eax, ecx                                ; 1000E11E _ 03. C1
        mov     dword [edi+198H], eax                   ; 1000E120 _ 89. 87, 00000198
        jmp     ?_1554                                  ; 1000E126 _ EB, BF

