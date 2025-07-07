; ---- 10020401 ----
?_4223: ; Local function
        mov     eax, dword [esp+4H]                     ; 10020401 _ 8B. 44 24, 04
        mov     ecx, eax                                ; 10020405 _ 8B. C8
        and     eax, 1FH                                ; 10020407 _ 83. E0, 1F
        sar     ecx, 5                                  ; 1002040A _ C1. F9, 05
        lea     eax, [eax+eax*8]                        ; 1002040D _ 8D. 04 C0
        mov     ecx, dword [?_5809+ecx*4]               ; 10020410 _ 8B. 0C 8D, 11766460(d)
        lea     eax, [ecx+eax*4+0CH]                    ; 10020417 _ 8D. 44 81, 0C
        push    eax                                     ; 1002041B _ 50
        call    near [imp_LeaveCriticalSection]         ; 1002041C _ FF. 15, 100240F0(d)
        ret                                             ; 10020422 _ C3

