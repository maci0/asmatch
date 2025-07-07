; ---- 10023211 ----
?_4805: ; Local function
        push    ebp                                     ; 10023211 _ 55
        mov     ebp, esp                                ; 10023212 _ 8B. EC
        sub     esp, 12                                 ; 10023214 _ 83. EC, 0C
        push    ebx                                     ; 10023217 _ 53
        mov     ebx, ?_5508                             ; 10023218 _ BB, 10034350(d)
        xor     ecx, ecx                                ; 1002321D _ 33. C9
        sub     ebx, 96                                 ; 1002321F _ 83. EB, 60
        cmp     dword [ebp+0CH], ecx                    ; 10023222 _ 39. 4D, 0C
        jz      ?_4811                                  ; 10023225 _ 74, 63
        jge     ?_4806                                  ; 10023227 _ 7D, 10
        mov     eax, dword [ebp+0CH]                    ; 10023229 _ 8B. 45, 0C
        mov     ebx, ?_5509                             ; 1002322C _ BB, 100344B0(d)
        neg     eax                                     ; 10023231 _ F7. D8
        mov     dword [ebp+0CH], eax                    ; 10023233 _ 89. 45, 0C
        sub     ebx, 96                                 ; 10023236 _ 83. EB, 60
?_4806: cmp     dword [ebp+10H], ecx                    ; 10023239 _ 39. 4D, 10
        jnz     ?_4807                                  ; 1002323C _ 75, 06
        mov     eax, dword [ebp+8H]                     ; 1002323E _ 8B. 45, 08
        mov     word [eax], cx                          ; 10023241 _ 66: 89. 08
?_4807: cmp     dword [ebp+0CH], ecx                    ; 10023244 _ 39. 4D, 0C
        jz      ?_4811                                  ; 10023247 _ 74, 41
        push    esi                                     ; 10023249 _ 56
        push    edi                                     ; 1002324A _ 57
?_4808: mov     eax, dword [ebp+0CH]                    ; 1002324B _ 8B. 45, 0C
        add     ebx, 84                                 ; 1002324E _ 83. C3, 54
        sar     dword [ebp+0CH], 3                      ; 10023251 _ C1. 7D, 0C, 03
        and     eax, 07H                                ; 10023255 _ 83. E0, 07
        cmp     eax, ecx                                ; 10023258 _ 3B. C1
        jz      ?_4810                                  ; 1002325A _ 74, 27
        lea     eax, [eax+eax*2]                        ; 1002325C _ 8D. 04 40
; Note: Length-changing prefix causes delay on Intel processors
        cmp     word [ebx+eax*4], -32768                ; 1002325F _ 66: 81. 3C 83, 8000
        lea     esi, [ebx+eax*4]                        ; 10023265 _ 8D. 34 83
        jc      ?_4809                                  ; 10023268 _ 72, 0C
        lea     edi, [ebp-0CH]                          ; 1002326A _ 8D. 7D, F4
        movsd                                           ; 1002326D _ A5
        movsd                                           ; 1002326E _ A5
        movsd                                           ; 1002326F _ A5
        dec     dword [ebp-0AH]                         ; 10023270 _ FF. 4D, F6
        lea     esi, [ebp-0CH]                          ; 10023273 _ 8D. 75, F4
?_4809: push    esi                                     ; 10023276 _ 56
        push    dword [ebp+8H]                          ; 10023277 _ FF. 75, 08
        call    ?_4781                                  ; 1002327A _ E8, FFFFFD72
        pop     ecx                                     ; 1002327F _ 59
        pop     ecx                                     ; 10023280 _ 59
        xor     ecx, ecx                                ; 10023281 _ 33. C9
?_4810: cmp     dword [ebp+0CH], ecx                    ; 10023283 _ 39. 4D, 0C
        jnz     ?_4808                                  ; 10023286 _ 75, C3
        pop     edi                                     ; 10023288 _ 5F
        pop     esi                                     ; 10023289 _ 5E
?_4811: pop     ebx                                     ; 1002328A _ 5B
        leave                                           ; 1002328B _ C9
        ret                                             ; 1002328C _ C3

