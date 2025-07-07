; ---- 1000BBAC ----
?_1256: ; Local function
        xor     ebx, ebx                                ; 1000BBAC _ 33. DB
        test    ebp, ebp                                ; 1000BBAE _ 85. ED
        jbe     ?_1258                                  ; 1000BBB0 _ 0F 86, 000000A4
        mov     esi, ?_5701                             ; 1000BBB6 _ BE, 101DE5A4(d)
?_1257: push    edi                                     ; 1000BBBB _ 57
        push    1                                       ; 1000BBBC _ 6A, 01
        lea     ecx, [esi-4H]                           ; 1000BBBE _ 8D. 4E, FC
        push    1                                       ; 1000BBC1 _ 6A, 01
        push    ecx                                     ; 1000BBC3 _ 51
        call    ?_2085                                  ; 1000BBC4 _ E8, 00006877
        add     esp, 16                                 ; 1000BBC9 _ 83. C4, 10
        test    eax, eax                                ; 1000BBCC _ 85. C0
        je      ?_1259                                  ; 1000BBCE _ 0F 84, 00000096
        push    edi                                     ; 1000BBD4 _ 57
        push    1                                       ; 1000BBD5 _ 6A, 01
        push    4                                       ; 1000BBD7 _ 6A, 04
        push    esi                                     ; 1000BBD9 _ 56
        call    ?_2085                                  ; 1000BBDA _ E8, 00006861
        add     esp, 16                                 ; 1000BBDF _ 83. C4, 10
        test    eax, eax                                ; 1000BBE2 _ 85. C0
        je      ?_1260                                  ; 1000BBE4 _ 0F 84, 000000A6
        push    edi                                     ; 1000BBEA _ 57
        push    1                                       ; 1000BBEB _ 6A, 01
        lea     edx, [esi+4H]                           ; 1000BBED _ 8D. 56, 04
        push    1                                       ; 1000BBF0 _ 6A, 01
        push    edx                                     ; 1000BBF2 _ 52
        call    ?_2085                                  ; 1000BBF3 _ E8, 00006848
        add     esp, 16                                 ; 1000BBF8 _ 83. C4, 10
        test    eax, eax                                ; 1000BBFB _ 85. C0
        je      ?_1261                                  ; 1000BBFD _ 0F 84, 000000B3
        push    edi                                     ; 1000BC03 _ 57
        push    1                                       ; 1000BC04 _ 6A, 01
        lea     eax, [esi+8H]                           ; 1000BC06 _ 8D. 46, 08
        push    4                                       ; 1000BC09 _ 6A, 04
        push    eax                                     ; 1000BC0B _ 50
        call    ?_2085                                  ; 1000BC0C _ E8, 0000682F
        add     esp, 16                                 ; 1000BC11 _ 83. C4, 10
        test    eax, eax                                ; 1000BC14 _ 85. C0
        je      ?_1262                                  ; 1000BC16 _ 0F 84, 000000C0
        push    edi                                     ; 1000BC1C _ 57
        push    1                                       ; 1000BC1D _ 6A, 01
        lea     ecx, [esi+0CH]                          ; 1000BC1F _ 8D. 4E, 0C
        push    1                                       ; 1000BC22 _ 6A, 01
        push    ecx                                     ; 1000BC24 _ 51
        call    ?_2085                                  ; 1000BC25 _ E8, 00006816
        add     esp, 16                                 ; 1000BC2A _ 83. C4, 10
        test    eax, eax                                ; 1000BC2D _ 85. C0
        je      ?_1263                                  ; 1000BC2F _ 0F 84, 000000CD
        push    edi                                     ; 1000BC35 _ 57
        push    1                                       ; 1000BC36 _ 6A, 01
        lea     edx, [esi+10H]                          ; 1000BC38 _ 8D. 56, 10
        push    4                                       ; 1000BC3B _ 6A, 04
        push    edx                                     ; 1000BC3D _ 52
        call    ?_2085                                  ; 1000BC3E _ E8, 000067FD
        add     esp, 16                                 ; 1000BC43 _ 83. C4, 10
        test    eax, eax                                ; 1000BC46 _ 85. C0
        je      ?_1264                                  ; 1000BC48 _ 0F 84, 000000DA
        inc     ebx                                     ; 1000BC4E _ 43
        add     esi, 24                                 ; 1000BC4F _ 83. C6, 18
        cmp     ebx, ebp                                ; 1000BC52 _ 3B. DD
        jc      ?_1257                                  ; 1000BC54 _ 0F 82, FFFFFF61
?_1258: pop     edi                                     ; 1000BC5A _ 5F
        pop     esi                                     ; 1000BC5B _ 5E
        pop     ebp                                     ; 1000BC5C _ 5D
        mov     eax, 1                                  ; 1000BC5D _ B8, 00000001
        pop     ebx                                     ; 1000BC62 _ 5B
        add     esp, 260                                ; 1000BC63 _ 81. C4, 00000104
        ret                                             ; 1000BC69 _ C3

?_1259: push    1                                       ; 1000BC6A _ 6A, 01
        push    ?_5242                                  ; 1000BC6C _ 68, 1002A048(d)
        push    3714                                    ; 1000BC71 _ 68, 00000E82
        push    ?_5244                                  ; 1000BC76 _ 68, 1002A0A0(d)
        call    ?_0267                                  ; 1000BC7B _ E8, FFFF79C0
        add     esp, 16                                 ; 1000BC80 _ 83. C4, 10
        xor     eax, eax                                ; 1000BC83 _ 33. C0
        pop     edi                                     ; 1000BC85 _ 5F
        pop     esi                                     ; 1000BC86 _ 5E
        pop     ebp                                     ; 1000BC87 _ 5D
        pop     ebx                                     ; 1000BC88 _ 5B
        add     esp, 260                                ; 1000BC89 _ 81. C4, 00000104
        ret                                             ; 1000BC8F _ C3

?_1260: push    1                                       ; 1000BC90 _ 6A, 01
        push    ?_5241                                  ; 1000BC92 _ 68, 1002A01C(d)
        push    3715                                    ; 1000BC97 _ 68, 00000E83
        push    ?_5244                                  ; 1000BC9C _ 68, 1002A0A0(d)
        call    ?_0267                                  ; 1000BCA1 _ E8, FFFF799A
        add     esp, 16                                 ; 1000BCA6 _ 83. C4, 10
        xor     eax, eax                                ; 1000BCA9 _ 33. C0
        pop     edi                                     ; 1000BCAB _ 5F
        pop     esi                                     ; 1000BCAC _ 5E
        pop     ebp                                     ; 1000BCAD _ 5D
        pop     ebx                                     ; 1000BCAE _ 5B
        add     esp, 260                                ; 1000BCAF _ 81. C4, 00000104
        ret                                             ; 1000BCB5 _ C3

?_1261: push    1                                       ; 1000BCB6 _ 6A, 01
        push    ?_5240                                  ; 1000BCB8 _ 68, 10029FF4(d)
        push    3716                                    ; 1000BCBD _ 68, 00000E84
        push    ?_5244                                  ; 1000BCC2 _ 68, 1002A0A0(d)
        call    ?_0267                                  ; 1000BCC7 _ E8, FFFF7974
        add     esp, 16                                 ; 1000BCCC _ 83. C4, 10
        xor     eax, eax                                ; 1000BCCF _ 33. C0
        pop     edi                                     ; 1000BCD1 _ 5F
        pop     esi                                     ; 1000BCD2 _ 5E
        pop     ebp                                     ; 1000BCD3 _ 5D
        pop     ebx                                     ; 1000BCD4 _ 5B
        add     esp, 260                                ; 1000BCD5 _ 81. C4, 00000104
        ret                                             ; 1000BCDB _ C3

?_1262: push    1                                       ; 1000BCDC _ 6A, 01
        push    ?_5239                                  ; 1000BCDE _ 68, 10029FCC(d)
        push    3717                                    ; 1000BCE3 _ 68, 00000E85
        push    ?_5244                                  ; 1000BCE8 _ 68, 1002A0A0(d)
        call    ?_0267                                  ; 1000BCED _ E8, FFFF794E
        add     esp, 16                                 ; 1000BCF2 _ 83. C4, 10
        xor     eax, eax                                ; 1000BCF5 _ 33. C0
        pop     edi                                     ; 1000BCF7 _ 5F
        pop     esi                                     ; 1000BCF8 _ 5E
        pop     ebp                                     ; 1000BCF9 _ 5D
        pop     ebx                                     ; 1000BCFA _ 5B
        add     esp, 260                                ; 1000BCFB _ 81. C4, 00000104
        ret                                             ; 1000BD01 _ C3

?_1263: push    1                                       ; 1000BD02 _ 6A, 01
        push    ?_5238                                  ; 1000BD04 _ 68, 10029FA4(d)
        push    3718                                    ; 1000BD09 _ 68, 00000E86
        push    ?_5244                                  ; 1000BD0E _ 68, 1002A0A0(d)
        call    ?_0267                                  ; 1000BD13 _ E8, FFFF7928
        add     esp, 16                                 ; 1000BD18 _ 83. C4, 10
        xor     eax, eax                                ; 1000BD1B _ 33. C0
        pop     edi                                     ; 1000BD1D _ 5F
        pop     esi                                     ; 1000BD1E _ 5E
        pop     ebp                                     ; 1000BD1F _ 5D
        pop     ebx                                     ; 1000BD20 _ 5B
        add     esp, 260                                ; 1000BD21 _ 81. C4, 00000104
        ret                                             ; 1000BD27 _ C3

