; ---- 1000C710 ----
?_1335: ; Local function
        mov     eax, dword [esp+4H]                     ; 1000C710 _ 8B. 44 24, 04
        mov     dl, byte [eax]                          ; 1000C714 _ 8A. 10
        mov     ecx, edx                                ; 1000C716 _ 8B. CA
        and     ecx, 0FFH                               ; 1000C718 _ 81. E1, 000000FF
        add     ecx, -3                                 ; 1000C71E _ 83. C1, FD
        cmp     ecx, 102                                ; 1000C721 _ 83. F9, 66
        ja      ?_1378                                  ; 1000C724 _ 0F 87, 00000134
        jmp     near [?_1379+ecx*4]                     ; 1000C72A _ FF. 24 8D, 1000C864(d)

?_1336: mov     eax, 28                                 ; 1000C731 _ B8, 0000001C
        ret                                             ; 1000C736 _ C3

?_1337: mov     eax, 17                                 ; 1000C737 _ B8, 00000011
        ret                                             ; 1000C73C _ C3

?_1338: mov     eax, 20                                 ; 1000C73D _ B8, 00000014
        ret                                             ; 1000C742 _ C3

?_1339: mov     eax, 80                                 ; 1000C743 _ B8, 00000050
        ret                                             ; 1000C748 _ C3

?_1340: mov     eax, 42                                 ; 1000C749 _ B8, 0000002A
        ret                                             ; 1000C74E _ C3

?_1341: mov     eax, 73                                 ; 1000C74F _ B8, 00000049
        ret                                             ; 1000C754 _ C3

?_1342: mov     eax, 33                                 ; 1000C755 _ B8, 00000021
        ret                                             ; 1000C75A _ C3

?_1343: mov     eax, 39                                 ; 1000C75B _ B8, 00000027
        ret                                             ; 1000C760 _ C3

?_1344: mov     eax, 30                                 ; 1000C761 _ B8, 0000001E
        ret                                             ; 1000C766 _ C3

?_1345: mov     eax, 22                                 ; 1000C767 _ B8, 00000016
        ret                                             ; 1000C76C _ C3

?_1346: mov     eax, 57                                 ; 1000C76D _ B8, 00000039
        ret                                             ; 1000C772 _ C3

?_1347: xor     ecx, ecx                                ; 1000C773 _ 33. C9
        push    esi                                     ; 1000C775 _ 56
        mov     cl, byte [eax+14H]                      ; 1000C776 _ 8A. 48, 14
        push    edi                                     ; 1000C779 _ 57
        mov     edi, ecx                                ; 1000C77A _ 8B. F9
        cmp     dl, 22                                  ; 1000C77C _ 80. FA, 16
        test    edi, edi                                ; 1000C77F _ 85. FF
        lea     edx, [eax+15H]                          ; 1000C781 _ 8D. 50, 15
        mov     esi, 21                                 ; 1000C784 _ BE, 00000015
        jle     ?_1349                                  ; 1000C789 _ 7E, 16
?_1348: xor     ecx, ecx                                ; 1000C78B _ 33. C9
        xor     eax, eax                                ; 1000C78D _ 33. C0
        mov     cl, byte [edx+1H]                       ; 1000C78F _ 8A. 4A, 01
        mov     al, byte [edx]                          ; 1000C792 _ 8A. 02
        imul    ecx, eax                                ; 1000C794 _ 0F AF. C8
        add     ecx, 4                                  ; 1000C797 _ 83. C1, 04
        add     esi, ecx                                ; 1000C79A _ 03. F1
        add     edx, ecx                                ; 1000C79C _ 03. D1
        dec     edi                                     ; 1000C79E _ 4F
        jnz     ?_1348                                  ; 1000C79F _ 75, EA
?_1349: mov     eax, esi                                ; 1000C7A1 _ 8B. C6
        pop     edi                                     ; 1000C7A3 _ 5F
        pop     esi                                     ; 1000C7A4 _ 5E
        ret                                             ; 1000C7A5 _ C3

?_1350: xor     ecx, ecx                                ; 1000C7A6 _ 33. C9
        mov     cl, byte [eax+14H]                      ; 1000C7A8 _ 8A. 48, 14
        mov     eax, ecx                                ; 1000C7AB _ 8B. C1
        lea     eax, [eax+eax*4+15H]                    ; 1000C7AD _ 8D. 44 80, 15
        ret                                             ; 1000C7B1 _ C3

?_1351: mov     eax, 36                                 ; 1000C7B2 _ B8, 00000024
        ret                                             ; 1000C7B7 _ C3

?_1352: mov     eax, 40                                 ; 1000C7B8 _ B8, 00000028
        ret                                             ; 1000C7BD _ C3

?_1353: mov     eax, 95                                 ; 1000C7BE _ B8, 0000005F
        ret                                             ; 1000C7C3 _ C3

?_1354: mov     al, byte [eax+10H]                      ; 1000C7C4 _ 8A. 40, 10
        sub     al, 14                                  ; 1000C7C7 _ 2C, 0E
        neg     al                                      ; 1000C7C9 _ F6. D8
        sbb     eax, eax                                ; 1000C7CB _ 1B. C0
        and     eax, 7CH                                ; 1000C7CD _ 83. E0, 7C
        add     eax, 17                                 ; 1000C7D0 _ 83. C0, 11
        ret                                             ; 1000C7D3 _ C3

?_1355: mov     eax, 61                                 ; 1000C7D4 _ B8, 0000003D
        ret                                             ; 1000C7D9 _ C3

?_1356: mov     eax, 24                                 ; 1000C7DA _ B8, 00000018
        ret                                             ; 1000C7DF _ C3

?_1357: mov     eax, 31                                 ; 1000C7E0 _ B8, 0000001F
        ret                                             ; 1000C7E5 _ C3

?_1358: mov     eax, 32                                 ; 1000C7E6 _ B8, 00000020
        ret                                             ; 1000C7EB _ C3

?_1359: mov     eax, 60                                 ; 1000C7EC _ B8, 0000003C
        ret                                             ; 1000C7F1 _ C3

?_1360: mov     eax, 93                                 ; 1000C7F2 _ B8, 0000005D
        ret                                             ; 1000C7F7 _ C3

?_1361: mov     eax, 69                                 ; 1000C7F8 _ B8, 00000045
        ret                                             ; 1000C7FD _ C3

?_1362: mov     eax, 52                                 ; 1000C7FE _ B8, 00000034
        ret                                             ; 1000C803 _ C3

?_1363: mov     eax, 47                                 ; 1000C804 _ B8, 0000002F
        ret                                             ; 1000C809 _ C3

?_1364: mov     eax, 74                                 ; 1000C80A _ B8, 0000004A
        ret                                             ; 1000C80F _ C3

?_1365: mov     eax, 23                                 ; 1000C810 _ B8, 00000017
        ret                                             ; 1000C815 _ C3

?_1366: mov     eax, 25                                 ; 1000C816 _ B8, 00000019
        ret                                             ; 1000C81B _ C3

?_1367: mov     eax, 21                                 ; 1000C81C _ B8, 00000015
        ret                                             ; 1000C821 _ C3

?_1368: mov     eax, 54                                 ; 1000C822 _ B8, 00000036
        ret                                             ; 1000C827 _ C3

?_1369: mov     eax, 144                                ; 1000C828 _ B8, 00000090
        ret                                             ; 1000C82D _ C3

?_1370: mov     eax, 53                                 ; 1000C82E _ B8, 00000035
        ret                                             ; 1000C833 _ C3

?_1371: mov     eax, 64                                 ; 1000C834 _ B8, 00000040
        ret                                             ; 1000C839 _ C3

?_1372: mov     eax, 68                                 ; 1000C83A _ B8, 00000044
        ret                                             ; 1000C83F _ C3

?_1373: mov     eax, 97                                 ; 1000C840 _ B8, 00000061
        ret                                             ; 1000C845 _ C3

?_1374: mov     eax, 56                                 ; 1000C846 _ B8, 00000038
        ret                                             ; 1000C84B _ C3

?_1375: mov     eax, 26                                 ; 1000C84C _ B8, 0000001A
        ret                                             ; 1000C851 _ C3

?_1376: mov     eax, 41                                 ; 1000C852 _ B8, 00000029
        ret                                             ; 1000C857 _ C3

?_1377: mov     eax, 128                                ; 1000C858 _ B8, 00000080
        ret                                             ; 1000C85D _ C3
