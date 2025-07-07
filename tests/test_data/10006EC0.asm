; ---- 10006EC0 ----
?_0712: ; Local function
        call    ?_0713                                  ; 10006EC0 _ E8, 0000006B
        mov     eax, dword [esp+4H]                     ; 10006EC5 _ 8B. 44 24, 04
        push    eax                                     ; 10006EC9 _ 50
        lea     ecx, [eax+8CH]                          ; 10006ECA _ 8D. 88, 0000008C
        lea     edx, [eax+980H]                         ; 10006ED0 _ 8D. 90, 00000980
        mov     dword [eax+0B10H], ecx                  ; 10006ED6 _ 89. 88, 00000B10
        lea     ecx, [eax+0A74H]                        ; 10006EDC _ 8D. 88, 00000A74
        mov     dword [eax+0B28H], ecx                  ; 10006EE2 _ 89. 88, 00000B28
        xor     ecx, ecx                                ; 10006EE8 _ 33. C9
        mov     dword [eax+0B18H], ?_5179               ; 10006EEA _ C7. 80, 00000B18, 10029408(d)
        mov     dword [eax+0B1CH], edx                  ; 10006EF4 _ 89. 90, 00000B1C
        mov     dword [eax+0B24H], ?_5180               ; 10006EFA _ C7. 80, 00000B24, 10029420(d)
        mov     dword [eax+0B30H], ?_5181               ; 10006F04 _ C7. 80, 00000B30, 10029438(d)
        mov     word [eax+16B0H], cx                    ; 10006F0E _ 66: 89. 88, 000016B0
        mov     dword [eax+16B4H], ecx                  ; 10006F15 _ 89. 88, 000016B4
        mov     dword [eax+16ACH], 8                    ; 10006F1B _ C7. 80, 000016AC, 00000008
        call    ?_0714                                  ; 10006F25 _ E8, 00000016
        pop     ecx                                     ; 10006F2A _ 59
        ret                                             ; 10006F2B _ C3

        nop                                             ; 10006F2C _ 90
        nop                                             ; 10006F2D _ 90
        nop                                             ; 10006F2E _ 90
        nop                                             ; 10006F2F _ 90

