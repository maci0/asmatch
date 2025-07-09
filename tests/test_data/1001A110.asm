; ---- 1001A110 ----
?_3025: ; Local function
        call    ?_3024                                  ; 1001A110 _ E8, FFFFFFDB
        fadd    st0, st(0)                              ; 1001A115 _ DC. C0
        fsub    dword [?_4910]                          ; 1001A117 _ D8. 25, 100256A0(d)
        fcom    dword [?_4921]                          ; 1001A11D _ D8. 15, 100256CC(d)
        fnstsw  ax                                      ; 1001A123 _ DF. E0
        test    ah, 01H                                 ; 1001A125 _ F6. C4, 01
        jz      ?_3026                                  ; 1001A128 _ 74, 0B
        fld     dword [?_4912]                          ; 1001A12A _ D9. 05, 100256A8(d)
        fmul    st(0), st1                              ; 1001A130 _ D8. C9
        fmulp   st1, st(0)                              ; 1001A132 _ DE. C9
        ret                                             ; 1001A134 _ C3
