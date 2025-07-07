; ---- 1000C25F ----
?_1291: ; Local function
        xor     eax, eax                                ; 1000C25F _ 33. C0
        ret                                             ; 1000C261 _ C3

; Filling space: 2H
; Filler type: mov with same source and destination
;       db 8BH, 0FFH

ALIGN   4

?_1292:                                                 ; switch/case jump table
        dd ?_1287                                       ; 1000C264 _ 1000C1F3 (d)
        dd ?_1288                                       ; 1000C268 _ 1000C20E (d)
        dd ?_1289                                       ; 1000C26C _ 1000C229 (d)
        dd ?_1290                                       ; 1000C270 _ 1000C244 (d)

; Filling space: 0CH
; Filler type: NOP
;       db 90H, 90H, 90H, 90H, 90H, 90H, 90H, 90H
;       db 90H, 90H, 90H, 90H

ALIGN   16
?_1293: push    esi                                     ; 1000C280 _ 56
        push    edi                                     ; 1000C281 _ 57
        mov     edi, dword [esp+10H]                    ; 1000C282 _ 8B. 7C 24, 10
        xor     esi, esi                                ; 1000C286 _ 33. F6
        lea     eax, [edi+0CH]                          ; 1000C288 _ 8D. 47, 0C
?_1294: cmp     dword [eax], 0                          ; 1000C28B _ 83. 38, 00
        jz      ?_1295                                  ; 1000C28E _ 74, 0E
        inc     esi                                     ; 1000C290 _ 46
        add     eax, 8                                  ; 1000C291 _ 83. C0, 08
        cmp     esi, 6                                  ; 1000C294 _ 83. FE, 06
        jl      ?_1294                                  ; 1000C297 _ 7C, F2
        pop     edi                                     ; 1000C299 _ 5F
        xor     eax, eax                                ; 1000C29A _ 33. C0
        pop     esi                                     ; 1000C29C _ 5E
        ret                                             ; 1000C29D _ C3

