; ---- 100088F0 ----
?_0869: ; Local function
        cmp     ecx, 8                                  ; 100088F0 _ 83. F9, 08
        jl      ?_0870                                  ; 100088F3 _ 7C, 34
        mov     ecx, dword [eax+8H]                     ; 100088F5 _ 8B. 48, 08
        mov     edx, dword [eax+14H]                    ; 100088F8 _ 8B. 50, 14
        mov     bl, byte [eax+16B0H]                    ; 100088FB _ 8A. 98, 000016B0
        mov     byte [ecx+edx], bl                      ; 10008901 _ 88. 1C 11
        mov     edx, dword [eax+14H]                    ; 10008904 _ 8B. 50, 14
        xor     ecx, ecx                                ; 10008907 _ 33. C9
        inc     edx                                     ; 10008909 _ 42
        mov     cl, byte [eax+16B1H]                    ; 1000890A _ 8A. 88, 000016B1
        mov     dword [eax+14H], edx                    ; 10008910 _ 89. 50, 14
        mov     word [eax+16B0H], cx                    ; 10008913 _ 66: 89. 88, 000016B0
        mov     ecx, dword [eax+16B4H]                  ; 1000891A _ 8B. 88, 000016B4
        add     ecx, -8                                 ; 10008920 _ 83. C1, F8
        mov     dword [eax+16B4H], ecx                  ; 10008923 _ 89. 88, 000016B4
?_0870: pop     ebx                                     ; 10008929 _ 5B
        ret                                             ; 1000892A _ C3

        nop                                             ; 1000892B _ 90
        nop                                             ; 1000892C _ 90
        nop                                             ; 1000892D _ 90
        nop                                             ; 1000892E _ 90
        nop                                             ; 1000892F _ 90

