; ---- 100218F7 ----
?_4480: ; Local function
        push    ebp                                     ; 100218F7 _ 55
        mov     ebp, esp                                ; 100218F8 _ 8B. EC
        sub     esp, 12                                 ; 100218FA _ 83. EC, 0C
        xor     eax, eax                                ; 100218FD _ 33. C0
        push    eax                                     ; 100218FF _ 50
        push    eax                                     ; 10021900 _ 50
        push    eax                                     ; 10021901 _ 50
        push    eax                                     ; 10021902 _ 50
        push    dword [ebp+0CH]                         ; 10021903 _ FF. 75, 0C
        lea     eax, [ebp+0CH]                          ; 10021906 _ 8D. 45, 0C
        push    eax                                     ; 10021909 _ 50
        lea     eax, [ebp-0CH]                          ; 1002190A _ 8D. 45, F4
        push    eax                                     ; 1002190D _ 50
        call    ?_4626                                  ; 1002190E _ E8, 00000C4B
        push    dword [ebp+8H]                          ; 10021913 _ FF. 75, 08
        lea     eax, [ebp-0CH]                          ; 10021916 _ 8D. 45, F4
        push    eax                                     ; 10021919 _ 50
        call    ?_4478                                  ; 1002191A _ E8, FFFFFF95
        add     esp, 36                                 ; 1002191F _ 83. C4, 24
        leave                                           ; 10021922 _ C9
        ret                                             ; 10021923 _ C3
