; ---- 10022538 ----
?_4623: ; Local function
        mov     esi, 32768                              ; 10022538 _ BE, 00008000
?_4624: test    dword [ebx+8H], esi                     ; 1002253D _ 85. 73, 08
        jnz     ?_4625                                  ; 10022540 _ 75, 10
        push    ebx                                     ; 10022542 _ 53
        call    ?_4618                                  ; 10022543 _ E8, FFFFFEF4
        add     dword [ebp-4H], 65535                   ; 10022548 _ 81. 45, FC, 0000FFFF
        pop     ecx                                     ; 1002254F _ 59
        jmp     ?_4624                                  ; 10022550 _ EB, EB
