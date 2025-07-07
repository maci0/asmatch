; ---- 1001A135 ----
?_3026: ; Local function
        fld     dword [?_4910]                          ; 1001A135 _ D9. 05, 100256A0(d)
        fmul    st(0), st1                              ; 1001A13B _ D8. C9
        fmulp   st1, st(0)                              ; 1001A13D _ DE. C9
        ret                                             ; 1001A13F _ C3

