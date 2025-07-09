; ---- 1001A931 ----
?_3126: ; Local function
        push    ebp                                     ; 1001A931 _ 55
        mov     ebp, esp                                ; 1001A932 _ 8B. EC
        push    esi                                     ; 1001A934 _ 56
        push    dword [ebp+14H]                         ; 1001A935 _ FF. 75, 14
        call    ?_3366                                  ; 1001A938 _ E8, 00001223
        push    dword [ebp+14H]                         ; 1001A93D _ FF. 75, 14
        push    dword [ebp+10H]                         ; 1001A940 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 1001A943 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 1001A946 _ FF. 75, 08
        call    ?_3127                                  ; 1001A949 _ E8, 00000012
        push    dword [ebp+14H]                         ; 1001A94E _ FF. 75, 14
        mov     esi, eax                                ; 1001A951 _ 8B. F0
        call    ?_3370                                  ; 1001A953 _ E8, 0000125A
        add     esp, 24                                 ; 1001A958 _ 83. C4, 18
        mov     eax, esi                                ; 1001A95B _ 8B. C6
        pop     esi                                     ; 1001A95D _ 5E
        pop     ebp                                     ; 1001A95E _ 5D
        ret                                             ; 1001A95F _ C3
