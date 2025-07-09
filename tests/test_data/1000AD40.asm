; ---- 1000AD40 ----
?_1138: ; Local function
        mov     ecx, dword [esp+4H]                     ; 1000AD40 _ 8B. 4C 24, 04
        sub     esp, 256                                ; 1000AD44 _ 81. EC, 00000100
        lea     eax, [ecx-2714H]                        ; 1000AD4A _ 8D. 81, FFFFD8EC
        cmp     eax, 89                                 ; 1000AD50 _ 83. F8, 59
        ja      ?_1155                                  ; 1000AD53 _ 0F 87, 0000020F
        xor     edx, edx                                ; 1000AD59 _ 33. D2
        mov     dl, byte [?_1157+eax]                   ; 1000AD5B _ 8A. 90, 1000AFDC(d)
        jmp     near [?_1156+edx*4]                     ; 1000AD61 _ FF. 24 95, 1000AF98(d)

?_1139: push    1                                       ; 1000AD68 _ 6A, 01
        push    ?_5176                                  ; 1000AD6A _ 68, 100293B0(d)
        push    1897                                    ; 1000AD6F _ 68, 00000769
        push    ?_5209                                  ; 1000AD74 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AD79 _ E8, FFFF88C2
        add     esp, 16                                 ; 1000AD7E _ 83. C4, 10
        add     esp, 256                                ; 1000AD81 _ 81. C4, 00000100
        ret                                             ; 1000AD87 _ C3

?_1140: push    1                                       ; 1000AD88 _ 6A, 01
        push    ?_5175                                  ; 1000AD8A _ 68, 10029380(d)
        push    1899                                    ; 1000AD8F _ 68, 0000076B
        push    ?_5209                                  ; 1000AD94 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AD99 _ E8, FFFF88A2
        add     esp, 16                                 ; 1000AD9E _ 83. C4, 10
        add     esp, 256                                ; 1000ADA1 _ 81. C4, 00000100
        ret                                             ; 1000ADA7 _ C3

?_1141: push    1                                       ; 1000ADA8 _ 6A, 01
        push    ?_5174                                  ; 1000ADAA _ 68, 1002931C(d)
        push    1901                                    ; 1000ADAF _ 68, 0000076D
        push    ?_5209                                  ; 1000ADB4 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000ADB9 _ E8, FFFF8882
        add     esp, 16                                 ; 1000ADBE _ 83. C4, 10
        add     esp, 256                                ; 1000ADC1 _ 81. C4, 00000100
        ret                                             ; 1000ADC7 _ C3

?_1142: push    1                                       ; 1000ADC8 _ 6A, 01
        push    ?_5173                                  ; 1000ADCA _ 68, 100292F0(d)
        push    1903                                    ; 1000ADCF _ 68, 0000076F
        push    ?_5209                                  ; 1000ADD4 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000ADD9 _ E8, FFFF8862
        add     esp, 16                                 ; 1000ADDE _ 83. C4, 10
        add     esp, 256                                ; 1000ADE1 _ 81. C4, 00000100
        ret                                             ; 1000ADE7 _ C3

?_1143: push    1                                       ; 1000ADE8 _ 6A, 01
        push    ?_5172                                  ; 1000ADEA _ 68, 100292A4(d)
        push    1905                                    ; 1000ADEF _ 68, 00000771
        push    ?_5209                                  ; 1000ADF4 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000ADF9 _ E8, FFFF8842
        add     esp, 16                                 ; 1000ADFE _ 83. C4, 10
        add     esp, 256                                ; 1000AE01 _ 81. C4, 00000100
        ret                                             ; 1000AE07 _ C3

?_1144: push    1                                       ; 1000AE08 _ 6A, 01
        push    ?_5171                                  ; 1000AE0A _ 68, 1002921C(d)
        push    1907                                    ; 1000AE0F _ 68, 00000773
        push    ?_5209                                  ; 1000AE14 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AE19 _ E8, FFFF8822
        add     esp, 16                                 ; 1000AE1E _ 83. C4, 10
        add     esp, 256                                ; 1000AE21 _ 81. C4, 00000100
        ret                                             ; 1000AE27 _ C3

?_1145: push    1                                       ; 1000AE28 _ 6A, 01
        push    ?_5170                                  ; 1000AE2A _ 68, 10029194(d)
        push    1909                                    ; 1000AE2F _ 68, 00000775
        push    ?_5209                                  ; 1000AE34 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AE39 _ E8, FFFF8802
        add     esp, 16                                 ; 1000AE3E _ 83. C4, 10
        add     esp, 256                                ; 1000AE41 _ 81. C4, 00000100
        ret                                             ; 1000AE47 _ C3

?_1146: push    1                                       ; 1000AE48 _ 6A, 01
        push    ?_5169                                  ; 1000AE4A _ 68, 10029164(d)
        push    1911                                    ; 1000AE4F _ 68, 00000777
        push    ?_5209                                  ; 1000AE54 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AE59 _ E8, FFFF87E2
        add     esp, 16                                 ; 1000AE5E _ 83. C4, 10
        add     esp, 256                                ; 1000AE61 _ 81. C4, 00000100
        ret                                             ; 1000AE67 _ C3

?_1147: push    1                                       ; 1000AE68 _ 6A, 01
        push    ?_5168                                  ; 1000AE6A _ 68, 10029068(d)
        push    1913                                    ; 1000AE6F _ 68, 00000779
        push    ?_5209                                  ; 1000AE74 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AE79 _ E8, FFFF87C2
        add     esp, 16                                 ; 1000AE7E _ 83. C4, 10
        add     esp, 256                                ; 1000AE81 _ 81. C4, 00000100
        ret                                             ; 1000AE87 _ C3

?_1148: push    1                                       ; 1000AE88 _ 6A, 01
        push    ?_5167                                  ; 1000AE8A _ 68, 10028FC8(d)
        push    1915                                    ; 1000AE8F _ 68, 0000077B
        push    ?_5209                                  ; 1000AE94 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AE99 _ E8, FFFF87A2
        add     esp, 16                                 ; 1000AE9E _ 83. C4, 10
        add     esp, 256                                ; 1000AEA1 _ 81. C4, 00000100
        ret                                             ; 1000AEA7 _ C3

?_1149: push    1                                       ; 1000AEA8 _ 6A, 01
        push    ?_5166                                  ; 1000AEAA _ 68, 10028F6C(d)
        push    1917                                    ; 1000AEAF _ 68, 0000077D
        push    ?_5209                                  ; 1000AEB4 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AEB9 _ E8, FFFF8782
        add     esp, 16                                 ; 1000AEBE _ 83. C4, 10
        add     esp, 256                                ; 1000AEC1 _ 81. C4, 00000100
        ret                                             ; 1000AEC7 _ C3

?_1150: push    1                                       ; 1000AEC8 _ 6A, 01
        push    ?_5165                                  ; 1000AECA _ 68, 10028F10(d)
        push    1919                                    ; 1000AECF _ 68, 0000077F
        push    ?_5209                                  ; 1000AED4 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AED9 _ E8, FFFF8762
        add     esp, 16                                 ; 1000AEDE _ 83. C4, 10
        add     esp, 256                                ; 1000AEE1 _ 81. C4, 00000100
        ret                                             ; 1000AEE7 _ C3

?_1151: push    1                                       ; 1000AEE8 _ 6A, 01
        push    ?_5164                                  ; 1000AEEA _ 68, 10028E3C(d)
        push    1921                                    ; 1000AEEF _ 68, 00000781
        push    ?_5209                                  ; 1000AEF4 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AEF9 _ E8, FFFF8742
        add     esp, 16                                 ; 1000AEFE _ 83. C4, 10
        add     esp, 256                                ; 1000AF01 _ 81. C4, 00000100
        ret                                             ; 1000AF07 _ C3

?_1152: push    1                                       ; 1000AF08 _ 6A, 01
        push    ?_5163                                  ; 1000AF0A _ 68, 10028DA0(d)
        push    1923                                    ; 1000AF0F _ 68, 00000783
        push    ?_5209                                  ; 1000AF14 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AF19 _ E8, FFFF8722
        add     esp, 16                                 ; 1000AF1E _ 83. C4, 10
        add     esp, 256                                ; 1000AF21 _ 81. C4, 00000100
        ret                                             ; 1000AF27 _ C3

?_1153: push    1                                       ; 1000AF28 _ 6A, 01
        push    ?_5162                                  ; 1000AF2A _ 68, 10028D24(d)
        push    1925                                    ; 1000AF2F _ 68, 00000785
        push    ?_5209                                  ; 1000AF34 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AF39 _ E8, FFFF8702
        add     esp, 16                                 ; 1000AF3E _ 83. C4, 10
        add     esp, 256                                ; 1000AF41 _ 81. C4, 00000100
        ret                                             ; 1000AF47 _ C3

?_1154: push    1                                       ; 1000AF48 _ 6A, 01
        push    ?_5161                                  ; 1000AF4A _ 68, 10028BF8(d)
        push    1927                                    ; 1000AF4F _ 68, 00000787
        push    ?_5209                                  ; 1000AF54 _ 68, 100298B0(d)
        call    ?_0267                                  ; 1000AF59 _ E8, FFFF86E2
        add     esp, 16                                 ; 1000AF5E _ 83. C4, 10
        add     esp, 256                                ; 1000AF61 _ 81. C4, 00000100
        ret                                             ; 1000AF67 _ C3
