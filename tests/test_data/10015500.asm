; ---- 10015500 ----
?_2368: ; Local function
        push    ebx                                     ; 10015500 _ 53
        mov     bl, byte [esp+8H]                       ; 10015501 _ 8A. 5C 24, 08
        test    bl, 01H                                 ; 10015505 _ F6. C3, 01
        jz      ?_2369                                  ; 10015508 _ 74, 40
        mov     eax, dword [esp+10H]                    ; 1001550A _ 8B. 44 24, 10
        push    eax                                     ; 1001550E _ 50
        call    ?_2343                                  ; 1001550F _ E8, FFFFFCCC
        and     eax, 0FFFFH                             ; 10015514 _ 25, 0000FFFF
        add     esp, 4                                  ; 10015519 _ 83. C4, 04
        cmp     eax, 65535                              ; 1001551C _ 3D, 0000FFFF
        jz      ?_2371                                  ; 10015521 _ 74, 62
        test    bl, 02H                                 ; 10015523 _ F6. C3, 02
        jz      ?_2370                                  ; 10015526 _ 74, 56
        lea     ecx, [eax+eax*2]                        ; 10015528 _ 8D. 0C 40
        mov     dl, byte [esp+18H]                      ; 1001552B _ 8A. 54 24, 18
        lea     ecx, [ecx+ecx*4]                        ; 1001552F _ 8D. 0C 89
        lea     ecx, [ecx+ecx*8]                        ; 10015532 _ 8D. 0C C9
        shl     ecx, 2                                  ; 10015535 _ C1. E1, 02
        mov     byte [?_5647+ecx], dl                   ; 10015538 _ 88. 91, 10035A05(d)
        mov     dl, byte [esp+14H]                      ; 1001553E _ 8A. 54 24, 14
        mov     byte [?_5646+ecx], dl                   ; 10015542 _ 88. 91, 10035A04(d)
        jmp     ?_2370                                  ; 10015548 _ EB, 34

?_2369: mov     eax, dword [esp+18H]                    ; 1001554A _ 8B. 44 24, 18
        mov     ecx, dword [esp+14H]                    ; 1001554E _ 8B. 4C 24, 14
        mov     edx, dword [esp+10H]                    ; 10015552 _ 8B. 54 24, 10
        and     eax, 0FFH                               ; 10015556 _ 25, 000000FF
        push    2                                       ; 1001555B _ 6A, 02
        and     ecx, 0FFH                               ; 1001555D _ 81. E1, 000000FF
        push    eax                                     ; 10015563 _ 50
        mov     eax, dword [esp+14H]                    ; 10015564 _ 8B. 44 24, 14
        push    ecx                                     ; 10015568 _ 51
        push    0                                       ; 10015569 _ 6A, 00
        push    edx                                     ; 1001556B _ 52
        push    -1                                      ; 1001556C _ 6A, FF
        push    -1                                      ; 1001556E _ 6A, FF
        push    eax                                     ; 10015570 _ 50
        call    ?_2844                                  ; 10015571 _ E8, 000032DA
        add     esp, 32                                 ; 10015576 _ 83. C4, 20
        and     eax, 0FFFFH                             ; 10015579 _ 25, 0000FFFF
?_2370: cmp     eax, 65535                              ; 1001557E _ 3D, 0000FFFF
        jnz     ?_2372                                  ; 10015583 _ 75, 1D
?_2371: push    1                                       ; 10015585 _ 6A, 01
        push    ?_5375                                  ; 10015587 _ 68, 1002DD18(d)
        push    4733                                    ; 1001558C _ 68, 0000127D
        push    ?_5374                                  ; 10015591 _ 68, 1002DCF4(d)
        call    ?_0267                                  ; 10015596 _ E8, FFFEE0A5
        add     esp, 16                                 ; 1001559B _ 83. C4, 10
        xor     eax, eax                                ; 1001559E _ 33. C0
        pop     ebx                                     ; 100155A0 _ 5B
        ret                                             ; 100155A1 _ C3
