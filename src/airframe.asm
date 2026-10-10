; AIRFRAME by PRIME (Assembly 1994) - reconstructed source
; Generated from the PKLITE-unpacked executable. Assemble with:
;   nasm -O0 -f bin -o airframe.img airframe.asm
; then tools/mkexe.py adds the MZ header and relocation table.
; Numbers like 0x0071 in far calls are segment paragraphs relative
; to the load address (fixed up by DOS via the relocation table).

bits 16
cpu 386


;======================================================================
; segment 0000  (image 0x00000-0x0027c)
; main: startup, DOS memory resize, effect sequencing, exit
;======================================================================
section seg_0000 start=0x0 vstart=0x0

start:
        cld                                     ; 0000:0000
        mov ax,0x2314                           ; 0000:0001
        mov ds,ax                               ; 0000:0004
        mov [0x849],sp                          ; 0000:0006
        push ax                                 ; 0000:000a
        push bx                                 ; 0000:000b
        mov bx,0x320c                           ; 0000:000c
        inc bx                                  ; 0000:000f
        mov ah,0x4a                             ; 0000:0010
        int 0x21                                ; 0000:0012
        pop bx                                  ; 0000:0014
        pop ax                                  ; 0000:0015
        call 0x0071:far_0071_000c               ; 0000:0016
        call 0x20c1:far_20c1_2452               ; 0000:001b
        call 0x02ca:far_02ca_000e               ; 0000:0020
        call 0x0027:far_0027_000c               ; 0000:0025
        call 0x0027:far_0027_0037               ; 0000:002a
        call 0x003d:far_003d_016b               ; 0000:002f
        mov ax,0xa22                            ; 0000:0034
        mov ds,ax                               ; 0000:0037
        mov esi,0x0                             ; 0000:0039
        call 0x20c1:far_20c1_1f0c               ; 0000:003f
        mov ax,0x2314                           ; 0000:0044
        mov ds,ax                               ; 0000:0047
        call 0x20c1:far_20c1_1e44               ; 0000:0049
        push ds                                 ; 0000:004e
        mov si,0x7ef                            ; 0000:004f
        mov ds,si                               ; 0000:0052
        mov si,0x0                              ; 0000:0054
        call 0x07cc:far_07cc_0010               ; 0000:0057
        pop ds                                  ; 0000:005c
        xor ax,ax                               ; 0000:005d
        call 0x07cc:far_07cc_0021               ; 0000:005f
        mov si,0x99                             ; 0000:0064
        mov bx,0xf00                            ; 0000:0067
        mov ah,0x3f                             ; 0000:006a
        call 0x0033:far_0033_0042               ; 0000:006c
        call 0x021d:far_021d_00aa               ; 0000:0071
        mov si,0x5e                             ; 0000:0076
        mov ax,0x31                             ; 0000:0079
        mov bx,0x50                             ; 0000:007c
        mov dl,0x0                              ; 0000:007f
        call 0x07cc:far_07cc_020b               ; 0000:0081
        mov si,0x71                             ; 0000:0086
        mov ax,0x3e                             ; 0000:0089
        mov bx,0x69                             ; 0000:008c
        call 0x07cc:far_07cc_020b               ; 0000:008f
        mov al,0x1                              ; 0000:0094
        call 0x20c1:far_20c1_2428               ; 0000:0096
        mov si,0x99                             ; 0000:009b
        mov bx,0xf00                            ; 0000:009e
        mov cl,0x3f                             ; 0000:00a1

l_0000_00a3:
        sub cl,0x1                              ; 0000:00a3
        jns short l_0000_00aa                   ; 0000:00a6
        xor cl,cl                               ; 0000:00a8

l_0000_00aa:
        call 0x003d:far_003d_0323               ; 0000:00aa
        mov ah,cl                               ; 0000:00af
        call 0x0033:far_0033_0042               ; 0000:00b1
        or cl,cl                                ; 0000:00b6
        jnz short l_0000_00a3                   ; 0000:00b8
        call 0x0113:far_0113_0006               ; 0000:00ba
        mov al,0x2                              ; 0000:00bf
        call 0x20c1:far_20c1_2428               ; 0000:00c1
        mov cl,0x0                              ; 0000:00c6

l_0000_00c8:
        add cl,0x1                              ; 0000:00c8
        cmp cl,0x3f                             ; 0000:00cb
        jna short l_0000_00d2                   ; 0000:00ce
        mov cl,0x3f                             ; 0000:00d0

l_0000_00d2:
        call 0x003d:far_003d_0323               ; 0000:00d2
        mov ah,cl                               ; 0000:00d7
        call 0x0033:far_0033_0042               ; 0000:00d9
        cmp cl,0x3f                             ; 0000:00de
        jnz short l_0000_00c8                   ; 0000:00e1
        call 0x0027:far_0027_0062               ; 0000:00e3
        mov si,0x82                             ; 0000:00e8
        mov ax,0x4d                             ; 0000:00eb
        mov bx,0x50                             ; 0000:00ee
        mov dl,0x0                              ; 0000:00f1
        call 0x07cc:far_07cc_020b               ; 0000:00f3
        mov si,0x92                             ; 0000:00f8
        mov ax,0x75                             ; 0000:00fb
        mov bx,0x69                             ; 0000:00fe
        call 0x07cc:far_07cc_020b               ; 0000:0101
        mov al,0x3                              ; 0000:0106
        call 0x20c1:far_20c1_2428               ; 0000:0108
        mov si,0x99                             ; 0000:010d
        mov bx,0xf00                            ; 0000:0110
        mov cl,0x3f                             ; 0000:0113

l_0000_0115:
        sub cl,0x1                              ; 0000:0115
        jns short l_0000_011c                   ; 0000:0118
        xor cl,cl                               ; 0000:011a

l_0000_011c:
        call 0x003d:far_003d_0323               ; 0000:011c
        mov ah,cl                               ; 0000:0121
        call 0x0033:far_0033_0042               ; 0000:0123
        or cl,cl                                ; 0000:0128
        jnz short l_0000_0115                   ; 0000:012a
        call 0x0113:far_0113_0030               ; 0000:012c
        call 0x0076:far_0076_0798               ; 0000:0131
        mov al,0x4                              ; 0000:0136
        call 0x20c1:far_20c1_2428               ; 0000:0138
        mov si,0x99                             ; 0000:013d
        mov bx,0xf00                            ; 0000:0140
        mov cl,0x0                              ; 0000:0143

l_0000_0145:
        add cl,0x1                              ; 0000:0145
        cmp cl,0x3f                             ; 0000:0148
        jna short l_0000_014f                   ; 0000:014b
        mov cl,0x3f                             ; 0000:014d

l_0000_014f:
        call 0x003d:far_003d_0323               ; 0000:014f
        mov ah,cl                               ; 0000:0154
        call 0x0033:far_0033_0042               ; 0000:0156
        cmp cl,0x3f                             ; 0000:015b
        jnz short l_0000_0145                   ; 0000:015e
        call 0x0113:far_0113_01c6               ; 0000:0160
        call 0x0113:far_0113_005b               ; 0000:0165
        mov al,0x7                              ; 0000:016a
        call 0x20c1:far_20c1_2428               ; 0000:016c
        call 0x021d:far_021d_0004               ; 0000:0171
        call 0x0076:far_0076_0006               ; 0000:0176
        call 0x0076:far_0076_03a8               ; 0000:017b
        push ds                                 ; 0000:0180
        pop es                                  ; 0000:0181
        mov di,0x549                            ; 0000:0182
        call 0x0033:far_0033_0026               ; 0000:0185
        mov si,di                               ; 0000:018a
        mov di,0xc9                             ; 0000:018c
        mov bx,0xff00                           ; 0000:018f
        mov cx,0x6                              ; 0000:0192
        xor ah,ah                               ; 0000:0195

l_0000_0197:
        push ax                                 ; 0000:0197
        call 0x003d:far_003d_0323               ; 0000:0198
        pop ax                                  ; 0000:019d
        add ah,0xa                              ; 0000:019e
        call 0x0033:far_0033_0069               ; 0000:01a1
        loop l_0000_0197                        ; 0000:01a6
        mov ah,0x3f                             ; 0000:01a8
        call 0x0033:far_0033_0069               ; 0000:01aa
        call 0x0076:far_0076_0021               ; 0000:01af
        call 0x0076:far_0076_081e               ; 0000:01b4
        call 0x0738:far_0738_001c               ; 0000:01b9
        mov al,0xd                              ; 0000:01be
        call 0x20c1:far_20c1_2428               ; 0000:01c0
        call 0x0738:far_0738_0174               ; 0000:01c5
        call 0x0738:far_0738_03e2               ; 0000:01ca
        call 0x003d:far_003d_0341               ; 0000:01cf
        call 0x0249:far_0249_0006               ; 0000:01d4
        call 0x0071:far_0071_0031               ; 0000:01d9
        call 0x0249:far_0249_004d               ; 0000:01de
        call 0x20c1:far_20c1_1ec0               ; 0000:01e3
        call 0x003d:far_003d_028a               ; 0000:01e8
        call 0x02ca:far_02ca_005b               ; 0000:01ed
        mov ax,0x3                              ; 0000:01f2
        int 0x10                                ; 0000:01f5
        mov ah,0x2                              ; 0000:01f7
        xor bh,bh                               ; 0000:01f9
        mov dx,0x1400                           ; 0000:01fb
        int 0x10                                ; 0000:01fe
        mov ax,0x7ef                            ; 0000:0200
        mov ds,ax                               ; 0000:0203
        mov si,0x1741                           ; 0000:0205
        mov ax,0xb800                           ; 0000:0208
        mov es,ax                               ; 0000:020b
        xor di,di                               ; 0000:020d
        mov cx,0x5f0                            ; 0000:020f
        rep movsw                               ; 0000:0212
        mov ax,0x4c00                           ; 0000:0214
        int 0x21                                ; 0000:0217

far_0000_0219:
        push ax                                 ; 0000:0219
        call 0x20c1:far_20c1_1ec0               ; 0000:021a
        call 0x003d:far_003d_028a               ; 0000:021f
        call 0x0071:far_0071_0031               ; 0000:0224
        mov ax,0x3                              ; 0000:0229
        int 0x10                                ; 0000:022c
        pop ax                                  ; 0000:022e
        mov bx,0x2314                           ; 0000:022f
        mov ds,bx                               ; 0000:0232
        mov bl,al                               ; 0000:0234
        add bl,0x30                             ; 0000:0236
        mov [0x13],bl                           ; 0000:0239
        mov dx,0x0                              ; 0000:023d
        mov ax,0x900                            ; 0000:0240
        int 0x21                                ; 0000:0243
        cmp bl,0x31                             ; 0000:0245
        jnz short l_0000_0254                   ; 0000:0248
        mov dx,0x18                             ; 0000:024a
        mov ax,0x900                            ; 0000:024d
        int 0x21                                ; 0000:0250
        jmp short l_0000_0272                   ; 0000:0252

l_0000_0254:
        cmp bl,0x32                             ; 0000:0254
        jnz short l_0000_0263                   ; 0000:0257
        mov dx,0x28                             ; 0000:0259
        mov ax,0x900                            ; 0000:025c
        int 0x21                                ; 0000:025f
        jmp short l_0000_0272                   ; 0000:0261

l_0000_0263:
        cmp bl,0x33                             ; 0000:0263
        jnz short l_0000_0272                   ; 0000:0266
        mov dx,0x37                             ; 0000:0268
        mov ax,0x900                            ; 0000:026b
        int 0x21                                ; 0000:026e
        jmp short l_0000_0272                   ; 0000:0270

l_0000_0272:
        mov sp,[0x849]                          ; 0000:0272
        mov ax,0x4c00                           ; 0000:0276
        int 0x21                                ; 0000:0279
; data 0000:027b (1 bytes)
        db 0x00

;======================================================================
; segment 0027  (image 0x0027c-0x00338)
; VGA mode setup (unchained / mode-X style: 3C4, 3CE, 3D4)
;======================================================================
section seg_0027 start=0x27c vstart=0xc

far_0027_000c:
        push ax                                 ; 0027:000c
        push dx                                 ; 0027:000d
        mov ax,0x13                             ; 0027:000e
        int 0x10                                ; 0027:0011
        mov dx,0x3c4                            ; 0027:0013
        mov ax,0x604                            ; 0027:0016
        out dx,ax                               ; 0027:0019
        mov dx,0x3d4                            ; 0027:001a
        mov ax,0x14                             ; 0027:001d
        out dx,ax                               ; 0027:0020
        mov ax,0xe317                           ; 0027:0021
        out dx,ax                               ; 0027:0024
        mov ax,0xa000                           ; 0027:0025
        mov gs,ax                               ; 0027:0028
        pop dx                                  ; 0027:002a
        pop ax                                  ; 0027:002b
        retf                                    ; 0027:002c

far_0027_002d:
        push ax                                 ; 0027:002d
        mov ax,gs                               ; 0027:002e
        xor ax,0x3e8                            ; 0027:0030
        mov gs,ax                               ; 0027:0033
        pop ax                                  ; 0027:0035
        retf                                    ; 0027:0036

far_0027_0037:
        push eax                                ; 0027:0037
        push cx                                 ; 0027:0039
        push dx                                 ; 0027:003a
        push di                                 ; 0027:003b
        push es                                 ; 0027:003c
        mov dx,0x3ce                            ; 0027:003d
        mov ax,0x4005                           ; 0027:0040
        out dx,ax                               ; 0027:0043
        mov dx,0x3c4                            ; 0027:0044
        mov ax,0xf02                            ; 0027:0047
        out dx,ax                               ; 0027:004a
        mov cx,0x4000                           ; 0027:004b
        mov ax,0xa000                           ; 0027:004e
        mov es,ax                               ; 0027:0051
        xor di,di                               ; 0027:0053
        xor eax,eax                             ; 0027:0055
        rep stosd                               ; 0027:0058
        pop es                                  ; 0027:005b
        pop di                                  ; 0027:005c
        pop dx                                  ; 0027:005d
        pop cx                                  ; 0027:005e
        pop eax                                 ; 0027:005f
        retf                                    ; 0027:0061

far_0027_0062:
        push eax                                ; 0027:0062
        push cx                                 ; 0027:0064
        push dx                                 ; 0027:0065
        push di                                 ; 0027:0066
        push es                                 ; 0027:0067
        mov dx,0x3ce                            ; 0027:0068
        mov ax,0x4005                           ; 0027:006b
        out dx,ax                               ; 0027:006e
        mov dx,0x3c4                            ; 0027:006f
        mov ax,0xf02                            ; 0027:0072
        out dx,ax                               ; 0027:0075
        mov cx,0xfa0                            ; 0027:0076
        mov ax,gs                               ; 0027:0079
        mov es,ax                               ; 0027:007b
        xor di,di                               ; 0027:007d
        xor eax,eax                             ; 0027:007f
        rep stosd                               ; 0027:0082
        pop es                                  ; 0027:0085
        pop di                                  ; 0027:0086
        pop dx                                  ; 0027:0087
        pop cx                                  ; 0027:0088
        pop eax                                 ; 0027:0089
        retf                                    ; 0027:008b

far_0027_008c:
        push ax                                 ; 0027:008c
        mov ax,gs                               ; 0027:008d
        sub ax,0xa000                           ; 0027:008f
        shl ax,byte 0x4                         ; 0027:0092
        call 0x003d:far_003d_0161               ; 0027:0095
        pop ax                                  ; 0027:009a
        retf                                    ; 0027:009b

far_0027_009c:
        push ax                                 ; 0027:009c
        push bx                                 ; 0027:009d
        push cx                                 ; 0027:009e
        push dx                                 ; 0027:009f
        shl bx,byte 0x4                         ; 0027:00a0
        mov cx,bx                               ; 0027:00a3
        shl bx,byte 0x2                         ; 0027:00a5
        add bx,cx                               ; 0027:00a8
        mov cl,al                               ; 0027:00aa
        mov ch,dl                               ; 0027:00ac
        and cl,0x3                              ; 0027:00ae
        shr ax,byte 0x2                         ; 0027:00b1
        add bx,ax                               ; 0027:00b4
        mov ax,0x1102                           ; 0027:00b6
        rol ah,cl                               ; 0027:00b9
        mov dx,0x3c4                            ; 0027:00bb
        out dx,ax                               ; 0027:00be
        mov [gs:bx],ch                          ; 0027:00bf
        pop dx                                  ; 0027:00c2
        pop cx                                  ; 0027:00c3
        pop bx                                  ; 0027:00c4
        pop ax                                  ; 0027:00c5
        retf                                    ; 0027:00c6
; data 0027:00c7 (1 bytes)
        db 0x00

;======================================================================
; segment 0033  (image 0x00338-0x0046d)
; palette upload / fades (3C7-3C9)
;======================================================================
section seg_0033 start=0x338 vstart=0x8

far_0033_0008:
        push ax                                 ; 0033:0008
        push bx                                 ; 0033:0009
        push dx                                 ; 0033:000a
        push si                                 ; 0033:000b
        mov dx,0x3c8                            ; 0033:000c
        mov al,bl                               ; 0033:000f
        out dx,al                               ; 0033:0011
        inc dx                                  ; 0033:0012

l_0033_0013:
        lodsb                                   ; 0033:0013
        out dx,al                               ; 0033:0014
        lodsb                                   ; 0033:0015
        out dx,al                               ; 0033:0016
        lodsb                                   ; 0033:0017
        out dx,al                               ; 0033:0018
        inc bl                                  ; 0033:0019
        jz short l_0033_0021                    ; 0033:001b
        cmp bl,bh                               ; 0033:001d
        jna short l_0033_0013                   ; 0033:001f

l_0033_0021:
        pop si                                  ; 0033:0021
        pop dx                                  ; 0033:0022
        pop bx                                  ; 0033:0023
        pop ax                                  ; 0033:0024
        retf                                    ; 0033:0025

far_0033_0026:
        push ax                                 ; 0033:0026
        push bx                                 ; 0033:0027
        push dx                                 ; 0033:0028
        push di                                 ; 0033:0029
        mov dx,0x3c7                            ; 0033:002a
        xor al,al                               ; 0033:002d
        out dx,al                               ; 0033:002f
        add dx,byte +0x2                        ; 0033:0030
        mov bx,0x300                            ; 0033:0033

l_0033_0036:
        in al,dx                                ; 0033:0036
        and al,0x3f                             ; 0033:0037
        stosb                                   ; 0033:0039
        dec bx                                  ; 0033:003a
        jnz short l_0033_0036                   ; 0033:003b
        pop di                                  ; 0033:003d
        pop dx                                  ; 0033:003e
        pop bx                                  ; 0033:003f
        pop ax                                  ; 0033:0040
        retf                                    ; 0033:0041

far_0033_0042:
        push ax                                 ; 0033:0042
        push bx                                 ; 0033:0043
        push cx                                 ; 0033:0044
        push dx                                 ; 0033:0045
        push si                                 ; 0033:0046
        mov dx,0x3c8                            ; 0033:0047
        mov al,bl                               ; 0033:004a
        out dx,al                               ; 0033:004c
        inc dx                                  ; 0033:004d

l_0033_004e:
        mov cx,0x3                              ; 0033:004e

l_0033_0051:
        lodsb                                   ; 0033:0051
        sub al,ah                               ; 0033:0052
        jnc short l_0033_0058                   ; 0033:0054
        xor al,al                               ; 0033:0056

l_0033_0058:
        out dx,al                               ; 0033:0058
        loop l_0033_0051                        ; 0033:0059
        inc bl                                  ; 0033:005b
        jz short l_0033_0063                    ; 0033:005d
        cmp bl,bh                               ; 0033:005f
        jna short l_0033_004e                   ; 0033:0061

l_0033_0063:
        pop si                                  ; 0033:0063
        pop dx                                  ; 0033:0064
        pop cx                                  ; 0033:0065
        pop bx                                  ; 0033:0066
        pop ax                                  ; 0033:0067
        retf                                    ; 0033:0068

far_0033_0069:
        push ax                                 ; 0033:0069
        push bx                                 ; 0033:006a
        push cx                                 ; 0033:006b
        push dx                                 ; 0033:006c
        push si                                 ; 0033:006d
        push di                                 ; 0033:006e
        mov dx,0x3c8                            ; 0033:006f
        mov al,bl                               ; 0033:0072
        out dx,al                               ; 0033:0074
        inc dx                                  ; 0033:0075

l_0033_0076:
        mov cl,0x3                              ; 0033:0076

l_0033_0078:
        lodsb                                   ; 0033:0078
        mov ch,al                               ; 0033:0079
        sub ch,[es:di]                          ; 0033:007b
        jc short l_0033_0088                    ; 0033:007e
        sub ch,ah                               ; 0033:0080
        jc short l_0033_0092                    ; 0033:0082
        sub al,ah                               ; 0033:0084
        jmp short l_0033_0095                   ; 0033:0086

l_0033_0088:
        neg ch                                  ; 0033:0088
        sub ch,ah                               ; 0033:008a
        jc short l_0033_0092                    ; 0033:008c
        add al,ah                               ; 0033:008e
        jmp short l_0033_0095                   ; 0033:0090

l_0033_0092:
        mov al,[es:di]                          ; 0033:0092

l_0033_0095:
        out dx,al                               ; 0033:0095
        inc di                                  ; 0033:0096
        dec cl                                  ; 0033:0097
        jnz short l_0033_0078                   ; 0033:0099
        inc bl                                  ; 0033:009b
        jz short l_0033_00a3                    ; 0033:009d
        cmp bl,bh                               ; 0033:009f
        jna short l_0033_0076                   ; 0033:00a1

l_0033_00a3:
        pop di                                  ; 0033:00a3
        pop si                                  ; 0033:00a4
        pop dx                                  ; 0033:00a5
        pop cx                                  ; 0033:00a6
        pop bx                                  ; 0033:00a7
        pop ax                                  ; 0033:00a8
        retf                                    ; 0033:00a9
; data 0033:00aa (147 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
        db 0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
        db 0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
        db 0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
        db 0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
        db 0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x01

;======================================================================
; segment 003d  (image 0x0046d-0x0071c)
; timer interrupt (INT 8) handler + vertical retrace sync (3DA)
;======================================================================
section seg_003d start=0x46d vstart=0x9d

sub_003d_009d:
        push ax                                 ; 003d:009d
        mov al,0x36                             ; 003d:009e
        out 0x43,al                             ; 003d:00a0
        mov al,[cs:0x8e]                        ; 003d:00a2
        out 0x40,al                             ; 003d:00a6
        mov al,[cs:0x8f]                        ; 003d:00a8
        out 0x40,al                             ; 003d:00ac
        pop ax                                  ; 003d:00ae
        ret                                     ; 003d:00af

sub_003d_00b0:
        mov word [cs:0x90],0x0                  ; 003d:00b0
        mov [cs:0x8e],ax                        ; 003d:00b7
        call sub_003d_009d                      ; 003d:00bb
        ret                                     ; 003d:00be

sub_003d_00bf:
        xor al,al                               ; 003d:00bf
        out 0x43,al                             ; 003d:00c1
        in al,0x40                              ; 003d:00c3
        mov ah,al                               ; 003d:00c5
        in al,0x40                              ; 003d:00c7
        xchg ah,al                              ; 003d:00c9
        neg ax                                  ; 003d:00cb
        add ax,[cs:0x8e]                        ; 003d:00cd
        ret                                     ; 003d:00d2

irq_003d_00d3:
        push eax                                ; 003d:00d3
        push cx                                 ; 003d:00d5
        push dx                                 ; 003d:00d6
        push di                                 ; 003d:00d7
        mov al,0x20                             ; 003d:00d8
        out 0x20,al                             ; 003d:00da
        sti                                     ; 003d:00dc
        inc byte [cs:0x9a]                      ; 003d:00dd
        test byte [cs:0x9a],0xf                 ; 003d:00e2
        jnz short l_003d_0128                   ; 003d:00e8
        cmp byte [cs:0x9c],0x0                  ; 003d:00ea
        jz short l_003d_0128                    ; 003d:00f0
        cli                                     ; 003d:00f2
        mov dx,0x3d4                            ; 003d:00f3
        mov al,0xd                              ; 003d:00f6
        mov ah,[cs:0x98]                        ; 003d:00f8
        out dx,ax                               ; 003d:00fd
        mov al,0xc                              ; 003d:00fe
        mov ah,[cs:0x99]                        ; 003d:0100
        out dx,ax                               ; 003d:0105
        inc dword [cs:0x94]                     ; 003d:0106
        mov dx,0x3da                            ; 003d:010c
        mov dword [cs:0x86],0xffffffff          ; 003d:010f

l_003d_0119:
        in al,dx                                ; 003d:0119
        inc dword [cs:0x86]                     ; 003d:011a
        test al,0x8                             ; 003d:0120
        jz short l_003d_0119                    ; 003d:0122
        call sub_003d_009d                      ; 003d:0124
        sti                                     ; 003d:0127

l_003d_0128:
        mov cx,0xa                              ; 003d:0128
        xor di,di                               ; 003d:012b

l_003d_012d:
        cmp dword [word cs:di+0xa],byte +0x0    ; 003d:012d
        jz short l_003d_0156                    ; 003d:0134
        mov eax,[word cs:di+0x5a]               ; 003d:0136
        sub eax,[cs:0x8e]                       ; 003d:013c
        ja short l_003d_0150                    ; 003d:0142
        pushf                                   ; 003d:0144
        call far [word cs:di+0xa]               ; 003d:0145
        add eax,[word cs:di+0x32]               ; 003d:014a

l_003d_0150:
        mov [word cs:di+0x5a],eax               ; 003d:0150

l_003d_0156:
        add di,byte +0x4                        ; 003d:0156
        loop l_003d_012d                        ; 003d:0159
        pop di                                  ; 003d:015b
        pop dx                                  ; 003d:015c
        pop cx                                  ; 003d:015d
        pop eax                                 ; 003d:015e
        iret                                    ; 003d:0160

far_003d_0161:
        mov [cs:0x98],ax                        ; 003d:0161
        retf                                    ; 003d:0165

far_003d_0166:
        mov ax,[cs:0x8e]                        ; 003d:0166
        retf                                    ; 003d:016a

far_003d_016b:
        push eax                                ; 003d:016b
        push ecx                                ; 003d:016d
        push dx                                 ; 003d:016f
        push ds                                 ; 003d:0170
        push es                                 ; 003d:0171
        mov ax,0x3508                           ; 003d:0172
        int 0x21                                ; 003d:0175
        mov [cs:0x84],es                        ; 003d:0177
        mov [cs:0x82],bx                        ; 003d:017c
        mov [cs:0xc],es                         ; 003d:0181
        mov [cs:0xa],bx                         ; 003d:0186
        mov eax,0x10000                         ; 003d:018b
        mov [cs:0x32],eax                       ; 003d:0191
        mov [cs:0x5a],eax                       ; 003d:0196
        mov ax,0x3d                             ; 003d:019b
        mov ds,ax                               ; 003d:019e
        mov dx,0xd3                             ; 003d:01a0
        mov ax,0x2508                           ; 003d:01a3
        int 0x21                                ; 003d:01a6
        mov ax,0xffff                           ; 003d:01a8
        call sub_003d_00b0                      ; 003d:01ab
        mov dx,0x4                              ; 003d:01ae
        xor ecx,ecx                             ; 003d:01b1

l_003d_01b4:
        push ax                                 ; 003d:01b4
        push dx                                 ; 003d:01b5
        mov dx,0x3da                            ; 003d:01b6

l_003d_01b9:
        in al,dx                                ; 003d:01b9
        test al,0x8                             ; 003d:01ba
        jnz short l_003d_01b9                   ; 003d:01bc

l_003d_01be:
        in al,dx                                ; 003d:01be
        test al,0x8                             ; 003d:01bf
        jz short l_003d_01be                    ; 003d:01c1
        pop dx                                  ; 003d:01c3
        pop ax                                  ; 003d:01c4
        call sub_003d_009d                      ; 003d:01c5
        push ax                                 ; 003d:01c8
        push dx                                 ; 003d:01c9
        mov dx,0x3da                            ; 003d:01ca

l_003d_01cd:
        in al,dx                                ; 003d:01cd
        test al,0x8                             ; 003d:01ce
        jnz short l_003d_01cd                   ; 003d:01d0

l_003d_01d2:
        in al,dx                                ; 003d:01d2
        test al,0x8                             ; 003d:01d3
        jz short l_003d_01d2                    ; 003d:01d5
        pop dx                                  ; 003d:01d7
        pop ax                                  ; 003d:01d8
        call sub_003d_00bf                      ; 003d:01d9
        movzx eax,ax                            ; 003d:01dc
        add ecx,eax                             ; 003d:01e0
        dec dx                                  ; 003d:01e3
        jnz short l_003d_01b4                   ; 003d:01e4
        shr ecx,byte 0x7                        ; 003d:01e6
        mov dx,cx                               ; 003d:01ea
        shr cx,byte 0x6                         ; 003d:01ec
        sub dx,cx                               ; 003d:01ef
        mov [cs:0x92],dx                        ; 003d:01f1
        mov ax,dx                               ; 003d:01f6
        push ax                                 ; 003d:01f8
        push dx                                 ; 003d:01f9
        mov dx,0x3da                            ; 003d:01fa

l_003d_01fd:
        in al,dx                                ; 003d:01fd
        test al,0x8                             ; 003d:01fe
        jnz short l_003d_01fd                   ; 003d:0200

l_003d_0202:
        in al,dx                                ; 003d:0202
        test al,0x8                             ; 003d:0203
        jz short l_003d_0202                    ; 003d:0205
        pop dx                                  ; 003d:0207
        pop ax                                  ; 003d:0208
        mov cx,0x14                             ; 003d:0209
        mov dword [cs:0x8a],0x7fffffff          ; 003d:020c

l_003d_0216:
        mov ax,[cs:0x92]                        ; 003d:0216
        call sub_003d_00b0                      ; 003d:021a
        sti                                     ; 003d:021d
        mov dword [cs:0x86],0xffffffff          ; 003d:021e

l_003d_0228:
        mov eax,[cs:0x86]                       ; 003d:0228
        cmp eax,byte -0x1                       ; 003d:022d
        jz short l_003d_0228                    ; 003d:0231
        cli                                     ; 003d:0233
        sub [cs:0x8a],eax                       ; 003d:0234
        cmp dword [cs:0x8a],0xfffffe0c          ; 003d:023a
        jg short l_003d_0264                    ; 003d:0244
        sub [cs:0x92],cx                        ; 003d:0246
        sub [cs:0x92],cx                        ; 003d:024b
        cmp cx,byte +0x14                       ; 003d:0250
        jnz short l_003d_0277                   ; 003d:0253
        mov cx,0x1                              ; 003d:0255
        mov dword [cs:0x8a],0x7fffffff          ; 003d:0258
        jmp short l_003d_0216                   ; 003d:0262

l_003d_0264:
        mov [cs:0x8a],eax                       ; 003d:0264
        add [cs:0x92],cx                        ; 003d:0269
        jnc short l_003d_0216                   ; 003d:026e
        mov word [cs:0x92],0xffff               ; 003d:0270

l_003d_0277:
        sti                                     ; 003d:0277
        mov ax,[cs:0x92]                        ; 003d:0278
        sub ax,0x1                              ; 003d:027c
        call sub_003d_00b0                      ; 003d:027f
        pop es                                  ; 003d:0282
        pop ds                                  ; 003d:0283
        pop dx                                  ; 003d:0284
        pop ecx                                 ; 003d:0285
        pop eax                                 ; 003d:0287
        retf                                    ; 003d:0289

far_003d_028a:
        push ax                                 ; 003d:028a
        push dx                                 ; 003d:028b
        push ds                                 ; 003d:028c
        mov ax,0x2508                           ; 003d:028d
        lds dx,[cs:0x82]                        ; 003d:0290
        int 0x21                                ; 003d:0295
        xor ax,ax                               ; 003d:0297
        call sub_003d_00b0                      ; 003d:0299
        pop ds                                  ; 003d:029c
        pop dx                                  ; 003d:029d
        pop ax                                  ; 003d:029e
        retf                                    ; 003d:029f

far_003d_02a0:
        push cx                                 ; 003d:02a0
        push edx                                ; 003d:02a1
        push di                                 ; 003d:02a3
        xor di,di                               ; 003d:02a4
        mov cx,0xa                              ; 003d:02a6

l_003d_02a9:
        cmp dword [word cs:di+0xa],byte +0x0    ; 003d:02a9
        jz short l_003d_02bc                    ; 003d:02b0
        add di,byte +0x4                        ; 003d:02b2
        dec cx                                  ; 003d:02b5
        jnz short l_003d_02a9                   ; 003d:02b6
        xor ax,ax                               ; 003d:02b8
        jmp short l_003d_02ed                   ; 003d:02ba

l_003d_02bc:
        cli                                     ; 003d:02bc
        mov [word cs:di+0xc],ds                 ; 003d:02bd
        mov [word cs:di+0xa],dx                 ; 003d:02c2
        xor edx,edx                             ; 003d:02c7
        cmp bx,byte +0x0                        ; 003d:02ca
        jnz short l_003d_02d8                   ; 003d:02cd
        mul word [cs:0x8e]                      ; 003d:02cf
        shl edx,byte 0x10                       ; 003d:02d4

l_003d_02d8:
        mov dx,ax                               ; 003d:02d8
        mov [word cs:di+0x32],edx               ; 003d:02da
        mov [word cs:di+0x5a],edx               ; 003d:02e0
        sti                                     ; 003d:02e6
        shr di,byte 0x2                         ; 003d:02e7
        inc di                                  ; 003d:02ea
        mov ax,di                               ; 003d:02eb

l_003d_02ed:
        pop di                                  ; 003d:02ed
        pop edx                                 ; 003d:02ee
        pop cx                                  ; 003d:02f0
        retf                                    ; 003d:02f1

far_003d_02f2:
        push ax                                 ; 003d:02f2
        push di                                 ; 003d:02f3
        mov di,ax                               ; 003d:02f4
        dec di                                  ; 003d:02f6
        shl di,byte 0x2                         ; 003d:02f7
        cli                                     ; 003d:02fa
        mov dword [word cs:di+0xa],0x0          ; 003d:02fb
        mov dword [word cs:di+0x32],0xffffffff  ; 003d:0305
        mov dword [word cs:di+0x5a],0xffffffff  ; 003d:030f
        sti                                     ; 003d:0319
        pop di                                  ; 003d:031a
        pop ax                                  ; 003d:031b
        retf                                    ; 003d:031c

far_003d_031d:
        mov eax,[cs:0x94]                       ; 003d:031d
        retf                                    ; 003d:0322

far_003d_0323:
        sti                                     ; 003d:0323
        mov eax,[cs:0x94]                       ; 003d:0324

l_003d_0329:
        cmp [cs:0x94],eax                       ; 003d:0329
        jz short l_003d_0329                    ; 003d:032f
        mov eax,[cs:0x94]                       ; 003d:0331
        mov dword [cs:0x94],0x0                 ; 003d:0336
        retf                                    ; 003d:0340

far_003d_0341:
        mov byte [cs:0x9c],0x0                  ; 003d:0341
        retf                                    ; 003d:0347
; data 003d:0348 (4 bytes)
        db 0x00,0x00,0x00,0x00

;======================================================================
; segment 0071  (image 0x0071c-0x00766)
; keyboard interrupt (INT 9) handler
;======================================================================
section seg_0071 start=0x71c vstart=0xc

far_0071_000c:
        push ax                                 ; 0071:000c
        push di                                 ; 0071:000d
        push ds                                 ; 0071:000e
        push es                                 ; 0071:000f
        mov ax,0x3509                           ; 0071:0010
        int 0x21                                ; 0071:0013
        mov [cs:0x8],bx                         ; 0071:0015
        mov [cs:0xa],es                         ; 0071:001a
        mov ax,0x71                             ; 0071:001f
        mov ds,ax                               ; 0071:0022
        mov dx,0x40                             ; 0071:0024
        mov ax,0x2509                           ; 0071:0027
        int 0x21                                ; 0071:002a
        pop es                                  ; 0071:002c
        pop ds                                  ; 0071:002d
        pop di                                  ; 0071:002e
        pop ax                                  ; 0071:002f
        retf                                    ; 0071:0030

far_0071_0031:
        push ax                                 ; 0071:0031
        push ds                                 ; 0071:0032
        lds dx,[cs:0x8]                         ; 0071:0033
        mov ax,0x2509                           ; 0071:0038
        int 0x21                                ; 0071:003b
        pop ds                                  ; 0071:003d
        pop ax                                  ; 0071:003e
        retf                                    ; 0071:003f

irq_0071_0040:
        push ax                                 ; 0071:0040
        in al,0x60                              ; 0071:0041
        in al,0x61                              ; 0071:0043
        mov ah,al                               ; 0071:0045
        or al,0x80                              ; 0071:0047
        out 0x61,al                             ; 0071:0049
        xchg al,ah                              ; 0071:004b
        out 0x61,al                             ; 0071:004d
        mov al,0x20                             ; 0071:004f
        out 0x20,al                             ; 0071:0051
        pop ax                                  ; 0071:0053
        iret                                    ; 0071:0054
; data 0071:0055 (1 bytes)
        db 0x00

;======================================================================
; segment 0076  (image 0x00766-0x01136)
; effect code: screen setup, copy loops (3C4/3D4)
;======================================================================
section seg_0076 start=0x766 vstart=0x6

far_0076_0006:
        mov bx,0x5c1                            ; 0076:0006
        call 0x027c:far_027c_0002               ; 0076:0009
        shl eax,byte 0x10                       ; 0076:000e
        mov bx,0x2314                           ; 0076:0012
        mov es,bx                               ; 0076:0015
        mov [0xb737],eax                        ; 0076:0017
        call 0x0738:far_0738_0591               ; 0076:001b
        retf                                    ; 0076:0020

far_0076_0021:
        mov ax,0x2314                           ; 0076:0021
        mov es,ax                               ; 0076:0024
        mov es,[es:0xb739]                      ; 0076:0026
        mov ah,0x49                             ; 0076:002b
        int 0x21                                ; 0076:002d
        call 0x0738:far_0738_0640               ; 0076:002f
        retf                                    ; 0076:0034
        incbin "data/d_00795.bin"   ; 0x302 bytes of data at 0076:0035

sub_0076_0337:
        cmp byte [cs:0x36],0x2                  ; 0076:0337
        jz short l_0076_03a5                    ; 0076:033d
        cmp byte [cs:0x36],0x1                  ; 0076:033f
        jz short l_0076_0358                    ; 0076:0345
        call 0x20c1:far_20c1_2423               ; 0076:0347
        cmp al,0xe                              ; 0076:034c
        jnz short l_0076_03a5                   ; 0076:034e
        mov byte [cs:0x36],0x1                  ; 0076:0350
        jmp short l_0076_03a5                   ; 0076:0356

l_0076_0358:
        push ds                                 ; 0076:0358
        mov bx,cs                               ; 0076:0359
        mov es,bx                               ; 0076:035b
        mov bx,0x2314                           ; 0076:035d
        mov ds,bx                               ; 0076:0360
        mov ah,[cs:0x35]                        ; 0076:0362
        mov bx,0x7f00                           ; 0076:0367
        mov di,0x37                             ; 0076:036a
        mov si,0xc9                             ; 0076:036d
        call 0x0033:far_0033_0069               ; 0076:0370
        pop ds                                  ; 0076:0375
        mov ax,[0x24f0]                         ; 0076:0376
        shl al,1                                ; 0076:0379
        add [cs:0x35],al                        ; 0076:037b
        cmp byte [cs:0x35],0x3f                 ; 0076:0380
        jc short l_0076_03a5                    ; 0076:0386
        mov byte [cs:0x35],0x3f                 ; 0076:0388
        mov byte [cs:0x36],0x2                  ; 0076:038e
        push ds                                 ; 0076:0394
        mov bx,cs                               ; 0076:0395
        mov ds,bx                               ; 0076:0397
        mov bx,0x7f00                           ; 0076:0399
        mov si,0x37                             ; 0076:039c
        call 0x0033:far_0033_0008               ; 0076:039f
        pop ds                                  ; 0076:03a4

l_0076_03a5:
        ret                                     ; 0076:03a5
; data 0076:03a6 (2 bytes)
        db 0x00,0x00

far_0076_03a8:
        push ds                                 ; 0076:03a8
        call 0x0027:far_0027_0037               ; 0076:03a9
        call sub_0076_08a0                      ; 0076:03ae
        mov ax,cs                               ; 0076:03b1
        mov es,ax                               ; 0076:03b3
        mov di,0x37                             ; 0076:03b5
        call 0x0033:far_0033_0026               ; 0076:03b8
        mov ax,0x0                              ; 0076:03bd
        call 0x003d:far_003d_0161               ; 0076:03c0
        mov dx,0x3c4                            ; 0076:03c5
        mov ax,0xe04                            ; 0076:03c8
        out dx,ax                               ; 0076:03cb
        mov ax,0xf02                            ; 0076:03cc
        out dx,ax                               ; 0076:03cf
        mov dx,0x3d4                            ; 0076:03d0
        mov ax,0xa317                           ; 0076:03d3
        out dx,ax                               ; 0076:03d6
        mov ax,0x4014                           ; 0076:03d7
        out dx,ax                               ; 0076:03da
        mov dword [cs:0x78c],0xa000053a         ; 0076:03db
        mov word [cs:0x794],0xc8                ; 0076:03e5
        mov word [cs:0x796],0xc0                ; 0076:03ec
        mov word [cs:0x790],0x38                ; 0076:03f3
        mov word [cs:0x792],0x78                ; 0076:03fa
        call 0x003d:far_003d_0323               ; 0076:0401

l_0076_0406:
        call 0x003d:far_003d_0323               ; 0076:0406
        mov [0x24f0],ax                         ; 0076:040b
        call sub_0076_0337                      ; 0076:040e
        push cs                                 ; 0076:0411
        call sub_0076_0831                      ; 0076:0412
        call 0x20c1:far_20c1_2423               ; 0076:0415
        cmp al,0x9                              ; 0076:041a
        jnz short l_0076_0406                   ; 0076:041c

l_0076_041e:
        call 0x003d:far_003d_0323               ; 0076:041e
        mov [0x24f0],ax                         ; 0076:0423
        push cs                                 ; 0076:0426
        call sub_0076_0831                      ; 0076:0427
        call 0x003d:far_003d_0323               ; 0076:042a
        mov [0x24f0],ax                         ; 0076:042f
        call sub_0076_0730                      ; 0076:0432
        add dword [cs:0x78c],0x282              ; 0076:0435
        sub word [cs:0x794],byte +0x4           ; 0076:043f
        sub word [cs:0x796],byte +0x4           ; 0076:0445
        add word [cs:0x790],byte +0x4           ; 0076:044b
        add word [cs:0x792],byte +0x4           ; 0076:0451
        push cs                                 ; 0076:0457
        call sub_0076_0831                      ; 0076:0458
        cmp word [cs:0x794],byte +0x64          ; 0076:045b
        jnz short l_0076_041e                   ; 0076:0461
        call 0x003d:far_003d_0323               ; 0076:0463
        mov dx,0x3c4                            ; 0076:0468
        mov ax,0x604                            ; 0076:046b
        out dx,ax                               ; 0076:046e
        mov dx,0x3d4                            ; 0076:046f
        mov ax,0xe317                           ; 0076:0472
        out dx,ax                               ; 0076:0475
        mov ax,0x14                             ; 0076:0476
        out dx,ax                               ; 0076:0479
        mov ax,0xa000                           ; 0076:047a
        mov gs,ax                               ; 0076:047d
        call 0x0027:far_0027_008c               ; 0076:047f
        mov word [cs:0x794],0x64                ; 0076:0484
        mov word [cs:0x796],0x5c                ; 0076:048b
        mov word [cs:0x790],0x9c                ; 0076:0492
        mov word [cs:0x792],0x9c                ; 0076:0499
        mov eax,[0xb737]                        ; 0076:04a0
        mov [cs:0x78c],eax                      ; 0076:04a4
        mov si,0x2506                           ; 0076:04a9
        mov di,si                               ; 0076:04ac
        add di,byte +0x53                       ; 0076:04ae
        mov dword [byte si+0x14],0x67c          ; 0076:04b1
        mov dword [byte di+0x14],0x672          ; 0076:04b9
        mov dword [byte di+0x10],0xfffffd44     ; 0076:04c1
        mov dword [byte di+0x1c],0x0            ; 0076:04c9
        mov dword [byte si+0x20],0x0            ; 0076:04d1
        mov dword [byte di+0x20],0x0            ; 0076:04d9
        mov cx,0xdac                            ; 0076:04e1
        mov bl,0xa                              ; 0076:04e4
        call sub_0076_0698                      ; 0076:04e6
        mov dword [byte di+0x1c],0x5            ; 0076:04e9
        mov dword [byte si+0x20],0xffffffff     ; 0076:04f1
        mov dword [byte di+0x20],0xffffffff     ; 0076:04f9
        mov cx,0x8c                             ; 0076:0501
        xor bl,bl                               ; 0076:0504
        call sub_0076_0698                      ; 0076:0506
        mov dword [byte di+0x1c],0x0            ; 0076:0509
        add cx,0x230                            ; 0076:0511
        xor bl,bl                               ; 0076:0515
        call sub_0076_0698                      ; 0076:0517
        mov dword [byte di+0x20],0x0            ; 0076:051a
        mov dword [byte si+0x20],0x0            ; 0076:0522
        add cx,0x118                            ; 0076:052a
        xor bl,bl                               ; 0076:052e
        call sub_0076_0698                      ; 0076:0530
        mov dword [byte si+0x1c],0x0            ; 0076:0533
        mov dword [byte si+0x18],0x0            ; 0076:053b
        mov dword [byte di+0x20],0x1            ; 0076:0543
        mov dword [byte si+0x20],0x5            ; 0076:054b
        add cx,0x8c                             ; 0076:0553
        call sub_0076_0698                      ; 0076:0557
        mov dword [byte di+0x20],0x0            ; 0076:055a
        add si,byte +0x53                       ; 0076:0562
        add di,byte +0x53                       ; 0076:0565
        mov dword [byte di+0xc],0x0             ; 0076:0568
        mov dword [byte di+0x10],0x0            ; 0076:0570
        mov dword [byte di+0x14],0x6fe          ; 0076:0578
        mov dword [byte di+0x20],0xfffffffb     ; 0076:0580
        mov word [byte di+0x24],0x0             ; 0076:0588
        mov word [byte di+0x28],0x0             ; 0076:058d
        mov word [byte di+0x26],0x0             ; 0076:0592
        mov word [byte di+0x2a],0x50            ; 0076:0597
        mov word [byte di+0x2e],0x50            ; 0076:059c
        mov word [byte di+0x2c],0x50            ; 0076:05a1
        add cx,0x8c                             ; 0076:05a6
        xor bl,bl                               ; 0076:05aa
        call sub_0076_06e6                      ; 0076:05ac
        mov dword [byte di+0x20],0x0            ; 0076:05af
        mov dword [byte si+0x20],0x0            ; 0076:05b7
        mov cx,0x8c                             ; 0076:05bf
        xor bl,bl                               ; 0076:05c2
        call sub_0076_06e6                      ; 0076:05c4
        mov dword [byte di+0x20],0x0            ; 0076:05c7
        mov dword [byte si+0x20],0x0            ; 0076:05cf
        mov word [byte di+0x2e],0x64            ; 0076:05d7
        mov word [byte di+0x2a],0xaa            ; 0076:05dc
        mov word [byte si+0x2c],0xff9c          ; 0076:05e1
        mov word [byte si+0x2e],0xff7e          ; 0076:05e6
        mov word [byte si+0x2a],0x46            ; 0076:05eb
        mov cx,0x230                            ; 0076:05f0
        xor bl,bl                               ; 0076:05f3
        call sub_0076_06e6                      ; 0076:05f5
        mov dword [byte si+0x1c],0x5            ; 0076:05f8
        mov dword [byte si+0x20],0x0            ; 0076:0600
        add cx,0x8c                             ; 0076:0608
        xor bl,bl                               ; 0076:060c
        call sub_0076_06e6                      ; 0076:060e
        add si,byte +0x53                       ; 0076:0611
        add di,byte +0x53                       ; 0076:0614
        mov dword [byte di+0xc],0x0             ; 0076:0617
        mov dword [byte di+0x10],0x2bc          ; 0076:061f
        mov dword [byte di+0x14],0x4d8          ; 0076:0627
        mov dword [byte di+0x1c],0xfffffffb     ; 0076:062f
        mov dword [byte di+0x20],0x0            ; 0076:0637
        mov word [byte di+0x2e],0xb4            ; 0076:063f
        mov word [byte di+0x2c],0x78            ; 0076:0644
        add cx,0x8c                             ; 0076:0649
        xor bl,bl                               ; 0076:064d
        call sub_0076_06e6                      ; 0076:064f
        mov dword [byte di+0x1c],0x0            ; 0076:0652
        mov dword [byte si+0x20],0x0            ; 0076:065a
        mov word [byte di+0x2e],0xb4            ; 0076:0662
        mov word [byte di+0x2c],0x78            ; 0076:0667
        mov cx,0xdac                            ; 0076:066c
        mov bl,0xb                              ; 0076:066f
        call sub_0076_06e6                      ; 0076:0671
        mov dword [byte si+0x20],0xffffffff     ; 0076:0674
        mov dword [byte di+0x20],0xfffffffa     ; 0076:067c
        mov word [byte di+0x2e],0xb4            ; 0076:0684
        mov word [byte di+0x2c],0x78            ; 0076:0689
        mov cx,0x8c                             ; 0076:068e
        xor bl,bl                               ; 0076:0691
        call sub_0076_06e6                      ; 0076:0693
        pop ds                                  ; 0076:0696
        retf                                    ; 0076:0697

sub_0076_0698:
        jmp short l_0076_06b3                   ; 0076:0698

l_0076_069a:
        call 0x003d:far_003d_0323               ; 0076:069a
        mov [0x24f0],ax                         ; 0076:069f
        sub cx,ax                               ; 0076:06a2
        js short l_0076_06e5                    ; 0076:06a4
        or bl,bl                                ; 0076:06a6
        jz short l_0076_06b3                    ; 0076:06a8
        call 0x20c1:far_20c1_2423               ; 0076:06aa
        cmp al,bl                               ; 0076:06af
        jz short l_0076_06e5                    ; 0076:06b1

l_0076_06b3:
        call 0x0027:far_0027_002d               ; 0076:06b3
        call 0x0027:far_0027_0062               ; 0076:06b8
        push cs                                 ; 0076:06bd
        call sub_0076_0831                      ; 0076:06be
        call 0x03e6:far_03e6_1e34               ; 0076:06c1
        call 0x03e6:far_03e6_20e3               ; 0076:06c6
        call 0x03e6:far_03e6_22d7               ; 0076:06cb
        push si                                 ; 0076:06d0
        mov si,di                               ; 0076:06d1
        call 0x03e6:far_03e6_22d7               ; 0076:06d3
        pop si                                  ; 0076:06d8
        call 0x03e6:far_03e6_2bf2               ; 0076:06d9
        call 0x0027:far_0027_008c               ; 0076:06de
        jmp short l_0076_069a                   ; 0076:06e3

l_0076_06e5:
        ret                                     ; 0076:06e5

sub_0076_06e6:
        jmp short l_0076_0701                   ; 0076:06e6

l_0076_06e8:
        call 0x003d:far_003d_0323               ; 0076:06e8
        mov [0x24f0],ax                         ; 0076:06ed
        sub cx,ax                               ; 0076:06f0
        js short l_0076_06e5                    ; 0076:06f2
        or bl,bl                                ; 0076:06f4
        jz short l_0076_06b3                    ; 0076:06f6
        call 0x20c1:far_20c1_2423               ; 0076:06f8
        cmp al,bl                               ; 0076:06fd
        jz short l_0076_072f                    ; 0076:06ff

l_0076_0701:
        call 0x0027:far_0027_002d               ; 0076:0701
        call 0x0027:far_0027_0062               ; 0076:0706
        call 0x03e6:far_03e6_1e34               ; 0076:070b
        call 0x03e6:far_03e6_20e3               ; 0076:0710
        call 0x03e6:far_03e6_22d7               ; 0076:0715
        push si                                 ; 0076:071a
        mov si,di                               ; 0076:071b
        call 0x03e6:far_03e6_22d7               ; 0076:071d
        pop si                                  ; 0076:0722
        call 0x03e6:far_03e6_2bf2               ; 0076:0723
        call 0x0027:far_0027_008c               ; 0076:0728
        jmp short l_0076_06e8                   ; 0076:072d

l_0076_072f:
        ret                                     ; 0076:072f

sub_0076_0730:
        push ax                                 ; 0076:0730
        les di,[cs:0x78c]                       ; 0076:0731
        xor eax,eax                             ; 0076:0736
        mov cx,[cs:0x794]                       ; 0076:0739
        shr cx,byte 0x2                         ; 0076:073e
        inc cx                                  ; 0076:0741
        mov dx,cx                               ; 0076:0742
        mov bx,[cs:0x792]                       ; 0076:0744
        sub bx,byte +0x4                        ; 0076:0749
        rep stosd                               ; 0076:074c
        add di,bx                               ; 0076:074f
        mov cx,dx                               ; 0076:0751
        rep stosd                               ; 0076:0753
        add di,bx                               ; 0076:0756
        mov ax,[cs:0x796]                       ; 0076:0758
        sub ax,0x4                              ; 0076:075c
        shl ax,byte 0x6                         ; 0076:075f
        add di,ax                               ; 0076:0762
        shl ax,byte 0x2                         ; 0076:0764
        add di,ax                               ; 0076:0767
        xor eax,eax                             ; 0076:0769
        mov cx,dx                               ; 0076:076c
        rep stosd                               ; 0076:076e
        add di,bx                               ; 0076:0771
        mov cx,dx                               ; 0076:0773
        rep stosd                               ; 0076:0775
        pop ax                                  ; 0076:0778
        ret                                     ; 0076:0779
; data 0076:077a (30 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x32,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

far_0076_0798:
        mov bx,0x1000                           ; 0076:0798
        call 0x027c:far_027c_0002               ; 0076:079b
        mov [cs:0x77a],ax                       ; 0076:07a0
        mov bx,0x268                            ; 0076:07a4
        call 0x027c:far_027c_0002               ; 0076:07a7
        mov [cs:0x77c],ax                       ; 0076:07ac
        mov es,[cs:0x77a]                       ; 0076:07b0
        mov bx,0xff                             ; 0076:07b5

l_0076_07b8:
        mov ax,0xff                             ; 0076:07b8

l_0076_07bb:
        call sub_0076_08e0                      ; 0076:07bb
        sub ax,0x1                              ; 0076:07be
        jnc short l_0076_07bb                   ; 0076:07c1
        sub bx,byte +0x1                        ; 0076:07c3
        jnc short l_0076_07b8                   ; 0076:07c6
        mov es,[cs:0x77c]                       ; 0076:07c8
        xor di,di                               ; 0076:07cd
        xor ax,ax                               ; 0076:07cf
        mov cx,0x1a9                            ; 0076:07d1
        rep stosw                               ; 0076:07d4
        xor cx,cx                               ; 0076:07d6
        xor bx,bx                               ; 0076:07d8
        push bx                                 ; 0076:07da

l_0076_07db:
        mov ax,bx                               ; 0076:07db
        call 0x02ca:far_02ca_006a               ; 0076:07dd
        imul cx                                 ; 0076:07e2
        shrd ax,dx,0x15                         ; 0076:07e4
        xor ah,ah                               ; 0076:07e8
        pop si                                  ; 0076:07ea
        push ax                                 ; 0076:07eb
        sub ax,si                               ; 0076:07ec
        stosw                                   ; 0076:07ee
        add bx,0x280                            ; 0076:07ef
        add cx,byte +0x2                        ; 0076:07f3
        cmp cx,0xbb8                            ; 0076:07f6
        jc short l_0076_07db                    ; 0076:07fa
        push bp                                 ; 0076:07fc
        mov bp,0xbb8                            ; 0076:07fd

l_0076_0800:
        mov ax,bx                               ; 0076:0800
        call 0x02ca:far_02ca_006a               ; 0076:0802
        imul cx                                 ; 0076:0807
        shrd ax,dx,0x15                         ; 0076:0809
        xor ah,ah                               ; 0076:080d
        pop si                                  ; 0076:080f
        push ax                                 ; 0076:0810
        sub ax,si                               ; 0076:0811
        stosw                                   ; 0076:0813
        add bx,0x280                            ; 0076:0814
        dec bp                                  ; 0076:0818
        jnz short l_0076_0800                   ; 0076:0819
        pop ax                                  ; 0076:081b
        pop bp                                  ; 0076:081c
        retf                                    ; 0076:081d

far_0076_081e:
        mov es,[cs:0x77c]                       ; 0076:081e
        mov ah,0x49                             ; 0076:0823
        int 0x21                                ; 0076:0825
        mov es,[cs:0x77a]                       ; 0076:0827
        mov ah,0x49                             ; 0076:082c
        int 0x21                                ; 0076:082e
        retf                                    ; 0076:0830

sub_0076_0831:
        mov ax,[cs:0x782]                       ; 0076:0831
        call 0x02ca:far_02ca_006a               ; 0076:0835
        sar ax,byte 0xa                         ; 0076:083a
        add al,0x20                             ; 0076:083d
        mov [cs:0x77f],al                       ; 0076:083f
        mov ax,[cs:0x782]                       ; 0076:0843
        call 0x02ca:far_02ca_007e               ; 0076:0847
        sar ax,byte 0x8                         ; 0076:084c
        mov [cs:0x77e],al                       ; 0076:084f
        mov ax,[cs:0x784]                       ; 0076:0853
        call 0x02ca:far_02ca_006a               ; 0076:0857
        sar ax,byte 0xb                         ; 0076:085c
        add al,0x20                             ; 0076:085f
        mov [cs:0x781],al                       ; 0076:0861
        mov ax,[cs:0x784]                       ; 0076:0865
        call 0x02ca:far_02ca_007e               ; 0076:0869
        sar ax,byte 0x7                         ; 0076:086e
        mov [cs:0x780],al                       ; 0076:0871
        call sub_0076_0932                      ; 0076:0875
        mov ax,0x30                             ; 0076:0878
        mul word [0x24f0]                       ; 0076:087b
        add [cs:0x782],ax                       ; 0076:087f
        mov ax,0x40                             ; 0076:0884
        mul word [0x24f0]                       ; 0076:0887
        sub [cs:0x784],ax                       ; 0076:088b
        mov ax,[0x24f0]                         ; 0076:0890
        shl ax,1                                ; 0076:0893
        add [cs:0x786],ax                       ; 0076:0895
        add [cs:0x788],ax                       ; 0076:089a
        retf                                    ; 0076:089f

sub_0076_08a0:
        push ax                                 ; 0076:08a0
        push bx                                 ; 0076:08a1
        push cx                                 ; 0076:08a2
        push dx                                 ; 0076:08a3
        mov dx,0x3c8                            ; 0076:08a4
        xor al,al                               ; 0076:08a7
        out dx,al                               ; 0076:08a9
        inc dx                                  ; 0076:08aa
        mov cx,0x20                             ; 0076:08ab
        xor al,al                               ; 0076:08ae

l_0076_08b0:
        out dx,al                               ; 0076:08b0
        out dx,al                               ; 0076:08b1
        out dx,al                               ; 0076:08b2
        loop l_0076_08b0                        ; 0076:08b3
        xor bx,bx                               ; 0076:08b5
        mov cx,0x40                             ; 0076:08b7

l_0076_08ba:
        inc bl                                  ; 0076:08ba
        xor al,al                               ; 0076:08bc
        out dx,al                               ; 0076:08be
        out dx,al                               ; 0076:08bf
        mov al,bl                               ; 0076:08c0
        out dx,al                               ; 0076:08c2
        loop l_0076_08ba                        ; 0076:08c3
        mov cx,0x20                             ; 0076:08c5
        xor bx,bx                               ; 0076:08c8

l_0076_08ca:
        inc bl                                  ; 0076:08ca
        mov al,bl                               ; 0076:08cc
        shr al,1                                ; 0076:08ce
        out dx,al                               ; 0076:08d0
        mov al,bl                               ; 0076:08d1
        shr al,1                                ; 0076:08d3
        out dx,al                               ; 0076:08d5
        mov al,0x3f                             ; 0076:08d6
        out dx,al                               ; 0076:08d8
        loop l_0076_08ca                        ; 0076:08d9
        pop dx                                  ; 0076:08db
        pop cx                                  ; 0076:08dc
        pop bx                                  ; 0076:08dd
        pop ax                                  ; 0076:08de
        ret                                     ; 0076:08df

sub_0076_08e0:
        push ax                                 ; 0076:08e0
        push bx                                 ; 0076:08e1
        push ecx                                ; 0076:08e2
        push edx                                ; 0076:08e4
        push ax                                 ; 0076:08e6
        sub ax,0x80                             ; 0076:08e7
        imul ax                                 ; 0076:08ea
        mov cx,dx                               ; 0076:08ec
        shl ecx,byte 0x10                       ; 0076:08ee
        mov cx,ax                               ; 0076:08f2
        sub bx,0x80                             ; 0076:08f4
        mov ax,bx                               ; 0076:08f8
        imul bx                                 ; 0076:08fa
        add bx,0x80                             ; 0076:08fc
        shl edx,byte 0x10                       ; 0076:0900
        mov dx,ax                               ; 0076:0904
        add edx,ecx                             ; 0076:0906
        mov eax,edx                             ; 0076:0909
        shl eax,byte 0x2                        ; 0076:090c
        call 0x07bf:far_07bf_001a               ; 0076:0910
        test al,0x8                             ; 0076:0915
        jnz short l_0076_091b                   ; 0076:0917
        xor al,al                               ; 0076:0919

l_0076_091b:
        shr al,byte 0x3                         ; 0076:091b
        and al,0x1f                             ; 0076:091e
        add al,0x10                             ; 0076:0920
        shl bx,byte 0x8                         ; 0076:0922
        pop cx                                  ; 0076:0925
        add bx,cx                               ; 0076:0926
        mov [es:bx],al                          ; 0076:0928
        pop edx                                 ; 0076:092b
        pop ecx                                 ; 0076:092d
        pop bx                                  ; 0076:092f
        pop ax                                  ; 0076:0930
        ret                                     ; 0076:0931

sub_0076_0932:
        push eax                                ; 0076:0932
        push bx                                 ; 0076:0934
        push cx                                 ; 0076:0935
        push dx                                 ; 0076:0936
        push si                                 ; 0076:0937
        push di                                 ; 0076:0938
        push bp                                 ; 0076:0939
        push ds                                 ; 0076:093a
        push es                                 ; 0076:093b
        push fs                                 ; 0076:093c
        mov ds,[cs:0x77a]                       ; 0076:093e
        mov fs,[cs:0x77c]                       ; 0076:0943
        les di,[cs:0x78c]                       ; 0076:0948
        mov bh,[cs:0x77f]                       ; 0076:094d
        mov bl,[cs:0x77e]                       ; 0076:0952
        mov si,bx                               ; 0076:0957
        mov bh,[cs:0x781]                       ; 0076:0959
        mov bl,[cs:0x780]                       ; 0076:095e
        mov ax,[cs:0x796]                       ; 0076:0963
        mov [cs:0x78a],ax                       ; 0076:0967
        movzx edx,word [cs:0x786]               ; 0076:096b
        mov bp,[cs:0x788]                       ; 0076:0972

l_0076_0977:
        mov cx,[cs:0x794]                       ; 0076:0977
        shr cx,byte 0x2                         ; 0076:097c
        mov word [es:di],0x0                    ; 0076:097f
        add di,byte +0x2                        ; 0076:0984

l_0076_0987:
        mov eax,[si]                            ; 0076:0987
        add eax,[bx]                            ; 0076:098a
        mov [es:di],eax                         ; 0076:098d
        add si,byte +0x4                        ; 0076:0991
        add bx,byte +0x4                        ; 0076:0994
        add di,byte +0x4                        ; 0076:0997
        dec cx                                  ; 0076:099a
        jnz short l_0076_0987                   ; 0076:099b
        mov word [es:di],0x0                    ; 0076:099d
        sub di,byte +0x2                        ; 0076:09a2
        add si,[cs:0x790]                       ; 0076:09a5
        add bx,[cs:0x790]                       ; 0076:09aa
        add di,[cs:0x792]                       ; 0076:09af
        add si,[fs:edx]                         ; 0076:09b4
        add bx,[byte fs:bp+0x0]                 ; 0076:09b8
        add dx,byte +0x2                        ; 0076:09bc
        add bp,byte +0x2                        ; 0076:09bf
        dec word [cs:0x78a]                     ; 0076:09c2
        jnz short l_0076_0977                   ; 0076:09c7
        pop fs                                  ; 0076:09c9
        pop es                                  ; 0076:09cb
        pop ds                                  ; 0076:09cc
        pop bp                                  ; 0076:09cd
        pop di                                  ; 0076:09ce
        pop si                                  ; 0076:09cf
        pop dx                                  ; 0076:09d0
        pop cx                                  ; 0076:09d1
        pop bx                                  ; 0076:09d2
        pop eax                                 ; 0076:09d3
        ret                                     ; 0076:09d5

;======================================================================
; segment 0113  (image 0x01136-0x0206e)
; effect code: fixed-point math, planar drawing (FS/GS)
;======================================================================
section seg_0113 start=0x1136 vstart=0x6

far_0113_0006:
        mov ax,0x2314                           ; 0113:0006
        mov ds,ax                               ; 0113:0009
        mov bx,0x1000                           ; 0113:000b
        call 0x027c:far_027c_0002               ; 0113:000e
        mov [0xa2c],ax                          ; 0113:0013
        mov bx,0x1000                           ; 0113:0016
        call 0x027c:far_027c_0002               ; 0113:0019
        mov [0xa2e],ax                          ; 0113:001e
        mov bx,0x1000                           ; 0113:0021
        call 0x027c:far_027c_0002               ; 0113:0024
        mov [0xa30],ax                          ; 0113:0029
        call sub_0113_074e                      ; 0113:002c
        retf                                    ; 0113:002f

far_0113_0030:
        call sub_0113_0782                      ; 0113:0030
        mov es,[0xa30]                          ; 0113:0033
        call 0x027c:far_027c_0010               ; 0113:0037
        mov bx,0xf79                            ; 0113:003c
        call 0x027c:far_027c_0002               ; 0113:003f
        mov [0xa32],ax                          ; 0113:0044
        mov bx,0xdc1                            ; 0113:0047
        call 0x027c:far_027c_0002               ; 0113:004a
        mov [0xa34],ax                          ; 0113:004f
        call sub_0113_0cd6                      ; 0113:0052
        call 0x0738:far_0738_064a               ; 0113:0055
        retf                                    ; 0113:005a

far_0113_005b:
        push es                                 ; 0113:005b
        mov es,[0xa2c]                          ; 0113:005c
        call 0x027c:far_027c_0010               ; 0113:0060
        mov es,[0xa2e]                          ; 0113:0065
        call 0x027c:far_027c_0010               ; 0113:0069
        mov es,[0xa32]                          ; 0113:006e
        call 0x027c:far_027c_0010               ; 0113:0072
        mov es,[0xa34]                          ; 0113:0077
        call 0x027c:far_027c_0010               ; 0113:007b
        call 0x0738:far_0738_0786               ; 0113:0080
        pop es                                  ; 0113:0085
        retf                                    ; 0113:0086
; data 0113:0087 (3 bytes)
        db 0x00,0x3f,0x00

sub_0113_008a:
        push ax                                 ; 0113:008a
        push bx                                 ; 0113:008b
        push dx                                 ; 0113:008c
        push si                                 ; 0113:008d
        push di                                 ; 0113:008e
        push ds                                 ; 0113:008f
        push es                                 ; 0113:0090
        cmp byte [cs:0x87],0x6                  ; 0113:0091
        jz near l_0113_01be                     ; 0113:0097
        cmp byte [cs:0x87],0x0                  ; 0113:009b
        jnz short l_0113_00d8                   ; 0113:00a1
        mov bx,0x2314                           ; 0113:00a3
        mov ds,bx                               ; 0113:00a6
        mov ah,[cs:0x88]                        ; 0113:00a8
        mov bx,0x7f00                           ; 0113:00ad
        call 0x0033:far_0033_0042               ; 0113:00b0
        mov bx,0xff80                           ; 0113:00b5
        call 0x0033:far_0033_0042               ; 0113:00b8
        mov ax,[0xa99]                          ; 0113:00bd
        sub [cs:0x88],al                        ; 0113:00c0
        jnc near l_0113_01be                    ; 0113:00c5
        mov byte [cs:0x88],0x0                  ; 0113:00c9
        mov byte [cs:0x87],0x1                  ; 0113:00cf
        jmp near l_0113_01be                    ; 0113:00d5

l_0113_00d8:
        cmp byte [cs:0x87],0x1                  ; 0113:00d8
        jnz short l_0113_00fa                   ; 0113:00de
        call 0x20c1:far_20c1_2423               ; 0113:00e0
        cmp al,0x5                              ; 0113:00e5
        jnz near l_0113_01be                    ; 0113:00e7
        mov byte [cs:0x89],0x1                  ; 0113:00eb
        mov byte [cs:0x87],0x2                  ; 0113:00f1
        jmp near l_0113_01be                    ; 0113:00f7

l_0113_00fa:
        cmp byte [cs:0x87],0x2                  ; 0113:00fa
        jnz short l_0113_0148                   ; 0113:0100
        mov ax,[0xa99]                          ; 0113:0102
        add [cs:0x88],al                        ; 0113:0105
        cmp byte [cs:0x88],0x78                 ; 0113:010a
        jc short l_0113_0118                    ; 0113:0110
        mov byte [cs:0x88],0x78                 ; 0113:0112

l_0113_0118:
        mov bx,0x2314                           ; 0113:0118
        mov ds,bx                               ; 0113:011b
        mov es,bx                               ; 0113:011d
        mov si,0xab1                            ; 0113:011f
        mov di,0xc9                             ; 0113:0122
        mov bx,0xff80                           ; 0113:0125
        mov ah,[cs:0x88]                        ; 0113:0128
        shr ah,byte 0x2                         ; 0113:012d
        call 0x0033:far_0033_0069               ; 0113:0130
        cmp byte [cs:0x88],0x78                 ; 0113:0135
        jc near l_0113_01be                     ; 0113:013b
        mov byte [cs:0x87],0x3                  ; 0113:013f
        jmp short l_0113_01be                   ; 0113:0145
; data 0113:0147 (1 bytes)
        db 0x90

l_0113_0148:
        cmp byte [cs:0x87],0x3                  ; 0113:0148
        jnz short l_0113_0161                   ; 0113:014e
        call 0x20c1:far_20c1_2423               ; 0113:0150
        cmp al,0x6                              ; 0113:0155
        jnz short l_0113_01be                   ; 0113:0157
        mov byte [cs:0x87],0x4                  ; 0113:0159
        jmp short l_0113_01be                   ; 0113:015f

l_0113_0161:
        cmp byte [cs:0x87],0x4                  ; 0113:0161
        jnz short l_0113_01a5                   ; 0113:0167
        mov bx,0x2314                           ; 0113:0169
        mov ds,bx                               ; 0113:016c
        mov es,bx                               ; 0113:016e
        mov si,0xab1                            ; 0113:0170
        mov di,0xc9                             ; 0113:0173
        mov bx,0xff80                           ; 0113:0176
        mov ah,[cs:0x88]                        ; 0113:0179
        shr ah,byte 0x2                         ; 0113:017e
        call 0x0033:far_0033_0069               ; 0113:0181
        mov ax,[0xa99]                          ; 0113:0186
        sub [cs:0x88],al                        ; 0113:0189
        jnc short l_0113_01be                   ; 0113:018e
        mov dx,0x3ce                            ; 0113:0190
        mov ax,0xff08                           ; 0113:0193
        out dx,ax                               ; 0113:0196
        mov byte [cs:0x89],0x0                  ; 0113:0197
        mov byte [cs:0x87],0x5                  ; 0113:019d
        jmp short l_0113_01be                   ; 0113:01a3

l_0113_01a5:
        cmp byte [cs:0x87],0x5                  ; 0113:01a5
        jnz short l_0113_01be                   ; 0113:01ab
        mov bx,0xff80                           ; 0113:01ad
        mov si,0x3c9                            ; 0113:01b0
        call 0x0033:far_0033_0008               ; 0113:01b3
        mov byte [cs:0x87],0x6                  ; 0113:01b8

l_0113_01be:
        pop es                                  ; 0113:01be
        pop ds                                  ; 0113:01bf
        pop di                                  ; 0113:01c0
        pop si                                  ; 0113:01c1
        pop dx                                  ; 0113:01c2
        pop bx                                  ; 0113:01c3
        pop ax                                  ; 0113:01c4
        ret                                     ; 0113:01c5

far_0113_01c6:
        pusha                                   ; 0113:01c6
        push ds                                 ; 0113:01c7
        mov ax,0x2314                           ; 0113:01c8
        mov ds,ax                               ; 0113:01cb
        mov si,0xab1                            ; 0113:01cd
        mov bx,0x7f00                           ; 0113:01d0
        mov ah,0x3f                             ; 0113:01d3
        call 0x0033:far_0033_0042               ; 0113:01d5
        mov bx,0xff80                           ; 0113:01da
        call 0x0033:far_0033_0042               ; 0113:01dd
        call sub_0113_0258                      ; 0113:01e2
        mov dx,0x3c4                            ; 0113:01e5
        mov al,0x2                              ; 0113:01e8
        out dx,al                               ; 0113:01ea
        call 0x003d:far_003d_0323               ; 0113:01eb

l_0113_01f0:
        call 0x003d:far_003d_0323               ; 0113:01f0
        mov [0xa99],eax                         ; 0113:01f5
        call sub_0113_008a                      ; 0113:01f9
        call sub_0113_0e22                      ; 0113:01fc
        cmp word [cs:0xcd4],0xdc00              ; 0113:01ff
        jnc short l_0113_021a                   ; 0113:0206
        call 0x0027:far_0027_002d               ; 0113:0208
        call sub_0113_0258                      ; 0113:020d
        call sub_0113_0227                      ; 0113:0210
        call 0x0027:far_0027_008c               ; 0113:0213
        jmp short l_0113_01f0                   ; 0113:0218

l_0113_021a:
        call 0x0027:far_0027_0062               ; 0113:021a
        call 0x0027:far_0027_008c               ; 0113:021f
        pop ds                                  ; 0113:0224
        popa                                    ; 0113:0225
        retf                                    ; 0113:0226

sub_0113_0227:
        cmp byte [cs:0x89],0x0                  ; 0113:0227
        jz short l_0113_0257                    ; 0113:022d
        push ax                                 ; 0113:022f
        push dx                                 ; 0113:0230
        mov dx,0x3ce                            ; 0113:0231
        mov ax,0x8008                           ; 0113:0234
        out dx,ax                               ; 0113:0237
        push byte +0x1                          ; 0113:0238
        push byte +0x7f                         ; 0113:023a
        push byte +0x3d                         ; 0113:023c
        push word 0xd1                          ; 0113:023e
        push byte +0x46                         ; 0113:0241
        push byte +0x37                         ; 0113:0243
        push ds                                 ; 0113:0245
        push word 0xc31                         ; 0113:0246
        call 0x07cc:far_07cc_009e               ; 0113:0249
        add sp,byte +0x10                       ; 0113:024e
        mov ax,0xff08                           ; 0113:0251
        out dx,ax                               ; 0113:0254
        pop dx                                  ; 0113:0255
        pop ax                                  ; 0113:0256

l_0113_0257:
        ret                                     ; 0113:0257

sub_0113_0258:
        pusha                                   ; 0113:0258
        push ds                                 ; 0113:0259
        push es                                 ; 0113:025a
        push fs                                 ; 0113:025b
        call sub_0113_0f30                      ; 0113:025d
        mov ecx,0x46                            ; 0113:0260
        mov ax,[0xa42]                          ; 0113:0266
        sub ax,0x2278                           ; 0113:0269
        push ax                                 ; 0113:026c
        call 0x02ca:far_02ca_006a               ; 0113:026d
        cwde                                    ; 0113:0272
        shl eax,byte 0x2                        ; 0113:0274
        mov [0xa6c],eax                         ; 0113:0278
        imul ecx                                ; 0113:027c
        add eax,[0xa36]                         ; 0113:027f
        mov [0xa64],eax                         ; 0113:0284
        pop ax                                  ; 0113:0288
        call 0x02ca:far_02ca_007e               ; 0113:0289
        cwde                                    ; 0113:028e
        shl eax,byte 0x2                        ; 0113:0290
        mov [0xa70],eax                         ; 0113:0294
        imul ecx                                ; 0113:0298
        add eax,[0xa3a]                         ; 0113:029b
        mov [0xa68],eax                         ; 0113:02a0
        mov ebx,0x25a                           ; 0113:02a4
        mov ax,[0xa42]                          ; 0113:02aa
        add ax,0x4000                           ; 0113:02ad
        push ax                                 ; 0113:02b0
        call 0x02ca:far_02ca_006a               ; 0113:02b1
        mov [0xa60],ax                          ; 0113:02b6
        cwde                                    ; 0113:02b9
        imul ebx                                ; 0113:02bb
        shrd eax,edx,0xe                        ; 0113:02be
        mov [0xa74],eax                         ; 0113:02c3
        imul ecx                                ; 0113:02c7
        mov [0xa7c],eax                         ; 0113:02ca
        pop ax                                  ; 0113:02ce
        call 0x02ca:far_02ca_007e               ; 0113:02cf
        neg ax                                  ; 0113:02d4
        mov [0xa5e],ax                          ; 0113:02d6
        neg ax                                  ; 0113:02d9
        cwde                                    ; 0113:02db
        imul ebx                                ; 0113:02dd
        shrd eax,edx,0xe                        ; 0113:02e0
        mov [0xa78],eax                         ; 0113:02e5
        imul ecx                                ; 0113:02e9
        mov [0xa80],eax                         ; 0113:02ec
        push cx                                 ; 0113:02f0
        mov eax,[0xa4c]                         ; 0113:02f1
        sub eax,[0xa36]                         ; 0113:02f5
        movsx ebx,word [0xa5e]                  ; 0113:02fa
        imul ebx                                ; 0113:0300
        shrd eax,edx,0x1e                       ; 0113:0303
        mov cx,ax                               ; 0113:0308
        mov eax,[0xa50]                         ; 0113:030a
        sub eax,[0xa3a]                         ; 0113:030e
        movsx ebx,word [0xa60]                  ; 0113:0313
        imul ebx                                ; 0113:0319
        shrd eax,edx,0x1e                       ; 0113:031c
        add ax,cx                               ; 0113:0321
        mov cx,ax                               ; 0113:0323
        shr cx,1                                ; 0113:0325
        add ax,cx                               ; 0113:0327
        mov [0xa62],ax                          ; 0113:0329
        pop cx                                  ; 0113:032c
        mov ax,[0xa44]                          ; 0113:032d
        call 0x02ca:far_02ca_007e               ; 0113:0330
        movsx ebx,ax                            ; 0113:0335
        mov ax,[0xa44]                          ; 0113:0339
        call 0x02ca:far_02ca_006a               ; 0113:033c
        cwde                                    ; 0113:0341
        shl eax,byte 0xe                        ; 0113:0343
        cdq                                     ; 0113:0347
        idiv ebx                                ; 0113:0349
        neg eax                                 ; 0113:034c
        push eax                                ; 0113:034f
        cwde                                    ; 0113:0351
        mov bx,0xa0                             ; 0113:0353
        imul bx                                 ; 0113:0356
        shrd ax,dx,0xf                          ; 0113:0358
        mov [0xa46],ax                          ; 0113:035c
        pop eax                                 ; 0113:035f
        shl eax,byte 0x2                        ; 0113:0361
        ror eax,byte 0x10                       ; 0113:0365
        mov [0xa48],eax                         ; 0113:0369
        call sub_0113_0ec8                      ; 0113:036d

l_0113_0370:
        mov edx,[0xa3e]                         ; 0113:0370
        mov eax,0x47                            ; 0113:0375
        imul edx                                ; 0113:037b
        idiv ecx                                ; 0113:037e
        shr eax,byte 0x10                       ; 0113:0381
        mov [0xa92],ax                          ; 0113:0385
        shr ax,byte 0x2                         ; 0113:0388
        add ax,[0xa46]                          ; 0113:038b
        sub [0xa92],ax                          ; 0113:038f
        mov word [0xa94],0x0                    ; 0113:0393
        mov ax,0x13f8                           ; 0113:0399
        xor dx,dx                               ; 0113:039c
        div cx                                  ; 0113:039e
        mov [0xa90],ax                          ; 0113:03a0
        mov ax,cx                               ; 0113:03a3
        sub ax,0x2a                             ; 0113:03a5
        jns short l_0113_03ac                   ; 0113:03a8
        xor ax,ax                               ; 0113:03aa

l_0113_03ac:
        cmp ax,0x20                             ; 0113:03ac
        jng short l_0113_03b4                   ; 0113:03af
        mov ax,0x20                             ; 0113:03b1

l_0113_03b4:
        mov [0x1284],al                         ; 0113:03b4
        cmp cx,byte +0x46                       ; 0113:03b7
        jz short l_0113_03c1                    ; 0113:03ba
        call sub_0113_0466                      ; 0113:03bc
        jmp short l_0113_03c4                   ; 0113:03bf

l_0113_03c1:
        call sub_0113_0404                      ; 0113:03c1

l_0113_03c4:
        cmp cx,[0xa62]                          ; 0113:03c4
        jnz short l_0113_03cf                   ; 0113:03c8
        call 0x0738:far_0738_06c7               ; 0113:03ca

l_0113_03cf:
        mov eax,[0xa6c]                         ; 0113:03cf
        sub [0xa64],eax                         ; 0113:03d3
        mov eax,[0xa70]                         ; 0113:03d8
        sub [0xa68],eax                         ; 0113:03dc
        mov eax,[0xa74]                         ; 0113:03e1
        sub [0xa7c],eax                         ; 0113:03e5
        mov eax,[0xa78]                         ; 0113:03ea
        sub [0xa80],eax                         ; 0113:03ee
        dec cx                                  ; 0113:03f3
        cmp cx,byte +0x3                        ; 0113:03f4
        ja near l_0113_0370                     ; 0113:03f7
        call sub_0113_0efc                      ; 0113:03fb
        pop fs                                  ; 0113:03fe
        pop es                                  ; 0113:0400
        pop ds                                  ; 0113:0401
        popa                                    ; 0113:0402
        ret                                     ; 0113:0403

sub_0113_0404:
        push cx                                 ; 0113:0404
        push bp                                 ; 0113:0405
        mov es,[0xa2c]                          ; 0113:0406
        mov fs,[0xa2e]                          ; 0113:040a
        mov si,0x84c                            ; 0113:040e
        mov di,0x98c                            ; 0113:0411
        mov word [0xa84],0xa0                   ; 0113:0414
        mov cx,[0xa65]                          ; 0113:041a
        mov bp,[0xa69]                          ; 0113:041e

l_0113_0422:
        mov bx,bp                               ; 0113:0422
        mov bl,ch                               ; 0113:0424
        mov al,[fs:bx]                          ; 0113:0426
        add al,[0x1284]                         ; 0113:0429
        mov [di],al                             ; 0113:042d
        inc di                                  ; 0113:042f
        movzx ax,[es:bx]                        ; 0113:0430
        mul word [0xa90]                        ; 0113:0434
        shrd ax,dx,0x8                          ; 0113:0438
        mov dx,[0xa92]                          ; 0113:043c
        sub dx,ax                               ; 0113:0440
        mov [si],dx                             ; 0113:0442
        add si,byte +0x2                        ; 0113:0444
        add cx,[0xa7d]                          ; 0113:0447
        add bp,[0xa81]                          ; 0113:044b
        mov eax,[0xa48]                         ; 0113:044f
        add [0xa92],eax                         ; 0113:0453
        adc word [0xa92],byte +0x0              ; 0113:0458
        dec word [0xa84]                        ; 0113:045d
        jnz short l_0113_0422                   ; 0113:0461
        pop bp                                  ; 0113:0463
        pop cx                                  ; 0113:0464
        ret                                     ; 0113:0465

sub_0113_0466:
        push cx                                 ; 0113:0466
        push bp                                 ; 0113:0467
        mov es,[0xa2c]                          ; 0113:0468
        mov fs,[0xa2e]                          ; 0113:046c
        mov si,0x84c                            ; 0113:0470
        mov di,0x98c                            ; 0113:0473
        mov word [0xa84],0xa0                   ; 0113:0476
        mov word [0xa96],0x0                    ; 0113:047c
        mov byte [0xa98],0x33                   ; 0113:0482
        mov eax,[0xa64]                         ; 0113:0487
        mov [0xa88],eax                         ; 0113:048b
        mov eax,[0xa68]                         ; 0113:048f
        mov [0xa8c],eax                         ; 0113:0493

l_0113_0497:
        mov bl,[0xa8a]                          ; 0113:0497
        mov bh,[0xa8e]                          ; 0113:049b
        movzx ax,[es:bx]                        ; 0113:049f
        mul word [0xa90]                        ; 0113:04a3
        shrd ax,dx,0x8                          ; 0113:04a7
        mov cx,[0xa92]                          ; 0113:04ab
        sub cx,ax                               ; 0113:04af
        mov ax,[si]                             ; 0113:04b1
        mov [si],cx                             ; 0113:04b3
        add si,byte +0x2                        ; 0113:04b5
        mov dx,cx                               ; 0113:04b8
        sub cx,ax                               ; 0113:04ba
        jng short l_0113_052f                   ; 0113:04bc
        mov [0xa86],cx                          ; 0113:04be
        add ax,0x64                             ; 0113:04c2
        mov bp,ax                               ; 0113:04c5
        add bp,cx                               ; 0113:04c7
        js short l_0113_052f                    ; 0113:04c9
        cmp ax,0xc8                             ; 0113:04cb
        jnl short l_0113_052f                   ; 0113:04ce
        sub dx,byte +0x64                       ; 0113:04d0
        jng short l_0113_04d7                   ; 0113:04d3
        sub cx,dx                               ; 0113:04d5

l_0113_04d7:
        shl ax,byte 0x4                         ; 0113:04d7
        mov bp,ax                               ; 0113:04da
        shl ax,byte 0x2                         ; 0113:04dc
        add bp,ax                               ; 0113:04df
        add bp,[0xa96]                          ; 0113:04e1
        mov al,[0xa98]                          ; 0113:04e5
        mov dx,0x3c5                            ; 0113:04e8
        out dx,al                               ; 0113:04eb
        mov ah,[fs:bx]                          ; 0113:04ec
        add ah,[0x1284]                         ; 0113:04ef
        mov bh,[di]                             ; 0113:04f3
        mov [di],ah                             ; 0113:04f5
        inc di                                  ; 0113:04f7
        cmp cx,byte +0x3                        ; 0113:04f8
        jl short l_0113_0522                    ; 0113:04fb
        sub ah,bh                               ; 0113:04fd
        jz short l_0113_0517                    ; 0113:04ff
        cwd                                     ; 0113:0501
        xor al,al                               ; 0113:0502
        idiv word [0xa86]                       ; 0113:0504
        mov bl,0x80                             ; 0113:0508

l_0113_050a:
        mov [byte gs:bp+0x0],bh                 ; 0113:050a
        add bp,byte +0x50                       ; 0113:050e
        add bx,ax                               ; 0113:0511
        loop l_0113_050a                        ; 0113:0513
        jmp short l_0113_0539                   ; 0113:0515

l_0113_0517:
        mov [byte gs:bp+0x0],bh                 ; 0113:0517
        add bp,byte +0x50                       ; 0113:051b
        loop l_0113_0517                        ; 0113:051e
        jmp short l_0113_0539                   ; 0113:0520

l_0113_0522:
        mov [byte gs:bp+0x0],bh                 ; 0113:0522
        dec cx                                  ; 0113:0526
        jz short l_0113_0539                    ; 0113:0527
        mov [byte gs:bp+0x50],ah                ; 0113:0529
        jmp short l_0113_0539                   ; 0113:052d

l_0113_052f:
        mov al,[fs:bx]                          ; 0113:052f
        add al,[0x1284]                         ; 0113:0532
        mov [di],al                             ; 0113:0536
        inc di                                  ; 0113:0538

l_0113_0539:
        rol byte [0xa98],byte 0x2               ; 0113:0539
        adc word [0xa96],byte +0x0              ; 0113:053e
        mov eax,[0xa7c]                         ; 0113:0543
        add [0xa88],eax                         ; 0113:0547
        mov eax,[0xa80]                         ; 0113:054c
        add [0xa8c],eax                         ; 0113:0550
        mov eax,[0xa48]                         ; 0113:0555
        add [0xa92],eax                         ; 0113:0559
        adc word [0xa92],byte +0x0              ; 0113:055e
        dec word [0xa84]                        ; 0113:0563
        jnz near l_0113_0497                    ; 0113:0567
        pop bp                                  ; 0113:056b
        pop cx                                  ; 0113:056c
        ret                                     ; 0113:056d

sub_0113_056e:
        push ax                                 ; 0113:056e
        push bx                                 ; 0113:056f
        push si                                 ; 0113:0570
        push di                                 ; 0113:0571
        xor si,si                               ; 0113:0572
        xor ah,ah                               ; 0113:0574

l_0113_0576:
        xor di,di                               ; 0113:0576
        mov bx,si                               ; 0113:0578
        dec bh                                  ; 0113:057a
        dec bl                                  ; 0113:057c
        mov al,[es:bx]                          ; 0113:057e
        add di,ax                               ; 0113:0581
        inc bl                                  ; 0113:0583
        mov al,[es:bx]                          ; 0113:0585
        add di,ax                               ; 0113:0588
        inc bl                                  ; 0113:058a
        mov al,[es:bx]                          ; 0113:058c
        add di,ax                               ; 0113:058f
        inc bh                                  ; 0113:0591
        sub bl,0x2                              ; 0113:0593
        mov al,[es:bx]                          ; 0113:0596
        add di,ax                               ; 0113:0599
        inc bl                                  ; 0113:059b
        mov al,[es:bx]                          ; 0113:059d
        add di,ax                               ; 0113:05a0
        inc bl                                  ; 0113:05a2
        mov al,[es:bx]                          ; 0113:05a4
        add di,ax                               ; 0113:05a7
        inc bh                                  ; 0113:05a9
        sub bl,0x2                              ; 0113:05ab
        mov al,[es:bx]                          ; 0113:05ae
        add di,ax                               ; 0113:05b1
        inc bl                                  ; 0113:05b3
        mov al,[es:bx]                          ; 0113:05b5
        add ax,di                               ; 0113:05b8
        shr ax,byte 0x3                         ; 0113:05ba
        cmp al,0xff                             ; 0113:05bd
        jnz short l_0113_05c3                   ; 0113:05bf
        mov al,0xfe                             ; 0113:05c1

l_0113_05c3:
        mov [fs:si],al                          ; 0113:05c3
        add si,byte +0x1                        ; 0113:05c6
        jnc short l_0113_0576                   ; 0113:05c9
        pop di                                  ; 0113:05cb
        pop si                                  ; 0113:05cc
        pop bx                                  ; 0113:05cd
        pop ax                                  ; 0113:05ce
        retf                                    ; 0113:05cf

sub_0113_05d0:
        mov es,[0xa2c]                          ; 0113:05d0
        mov fs,[0xa30]                          ; 0113:05d4
        push cs                                 ; 0113:05d8
        call sub_0113_056e                      ; 0113:05d9
        mov [0xa2c],fs                          ; 0113:05dc
        mov [0xa30],es                          ; 0113:05e0
        ret                                     ; 0113:05e4

sub_0113_05e5:
        mov es,[0xa2e]                          ; 0113:05e5
        mov fs,[0xa30]                          ; 0113:05e9
        push cs                                 ; 0113:05ed
        call sub_0113_056e                      ; 0113:05ee
        mov [0xa2e],fs                          ; 0113:05f1
        mov [0xa30],es                          ; 0113:05f5
        ret                                     ; 0113:05f9

sub_0113_05fa:
        push bx                                 ; 0113:05fa
        push cx                                 ; 0113:05fb
        push dx                                 ; 0113:05fc
        mov ax,[0xa9d]                          ; 0113:05fd
        mov bx,[0xa9f]                          ; 0113:0600
        mov cx,[0xaa1]                          ; 0113:0604
        mov dx,[0xaa3]                          ; 0113:0608
        add ax,bx                               ; 0113:060c
        rol ax,cl                               ; 0113:060e
        xor ax,dx                               ; 0113:0610
        xchg cl,ch                              ; 0113:0612
        add bx,cx                               ; 0113:0614
        add dx,bx                               ; 0113:0616
        add cx,ax                               ; 0113:0618
        ror bx,1                                ; 0113:061a
        sbb ax,dx                               ; 0113:061c
        mov [0xaa3],dx                          ; 0113:061e
        mov [0xaa1],dx                          ; 0113:0622
        mov [0xa9f],dx                          ; 0113:0626
        mov [0xa9d],ax                          ; 0113:062a
        pop dx                                  ; 0113:062d
        pop cx                                  ; 0113:062e
        pop bx                                  ; 0113:062f
        ret                                     ; 0113:0630

sub_0113_0631:
        mov cx,ax                               ; 0113:0631
        call sub_0113_05fa                      ; 0113:0633
        imul word [0xaad]                       ; 0113:0636
        shrd ax,dx,0x1d                         ; 0113:063a
        add cx,ax                               ; 0113:063e
        mov ax,cx                               ; 0113:0640
        js short l_0113_064e                    ; 0113:0642
        cmp ax,0x100                            ; 0113:0644
        jl short l_0113_0650                    ; 0113:0647
        mov ax,0xff                             ; 0113:0649
        jmp short l_0113_0650                   ; 0113:064c

l_0113_064e:
        xor ax,ax                               ; 0113:064e

l_0113_0650:
        ret                                     ; 0113:0650

sub_0113_0651:
        enter 0x2,0x0                           ; 0113:0651
        push ax                                 ; 0113:0655
        push dx                                 ; 0113:0656
        mov [0xaad],ax                          ; 0113:0657
        mov bx,ax                               ; 0113:065a
        shr bx,1                                ; 0113:065c
        mov [byte bp-0x2],bx                    ; 0113:065e
        mov [0xaa5],dx                          ; 0113:0661
        add dl,al                               ; 0113:0665
        mov [0xaa7],dx                          ; 0113:0667
        add dh,al                               ; 0113:066b
        mov [0xaab],dx                          ; 0113:066d
        sub dl,al                               ; 0113:0671
        mov [0xaa9],dx                          ; 0113:0673
        mov bx,[0xaa5]                          ; 0113:0677
        movzx ax,[es:bx]                        ; 0113:067b
        mov [0xaaf],ax                          ; 0113:067f
        mov bx,[0xaa7]                          ; 0113:0682
        add al,[es:bx]                          ; 0113:0686
        adc ah,0x0                              ; 0113:0689
        shr ax,1                                ; 0113:068c
        call sub_0113_0631                      ; 0113:068e
        sub bl,[byte bp-0x2]                    ; 0113:0691
        cmp byte [es:bx],0x0                    ; 0113:0694
        jnz short l_0113_069d                   ; 0113:0698
        mov [es:bx],al                          ; 0113:069a

l_0113_069d:
        mov bx,[0xaa7]                          ; 0113:069d
        movzx ax,[es:bx]                        ; 0113:06a1
        add [0xaaf],ax                          ; 0113:06a5
        mov bx,[0xaab]                          ; 0113:06a9
        add al,[es:bx]                          ; 0113:06ad
        adc ah,0x0                              ; 0113:06b0
        shr ax,1                                ; 0113:06b3
        call sub_0113_0631                      ; 0113:06b5
        sub bh,[byte bp-0x2]                    ; 0113:06b8
        cmp byte [es:bx],0x0                    ; 0113:06bb
        jnz short l_0113_06c4                   ; 0113:06bf
        mov [es:bx],al                          ; 0113:06c1

l_0113_06c4:
        mov bx,[0xaab]                          ; 0113:06c4
        movzx ax,[es:bx]                        ; 0113:06c8
        add [0xaaf],ax                          ; 0113:06cc
        mov bx,[0xaa9]                          ; 0113:06d0
        add al,[es:bx]                          ; 0113:06d4
        adc ah,0x0                              ; 0113:06d7
        shr ax,1                                ; 0113:06da
        call sub_0113_0631                      ; 0113:06dc
        add bl,[byte bp-0x2]                    ; 0113:06df
        cmp byte [es:bx],0x0                    ; 0113:06e2
        jnz short l_0113_06eb                   ; 0113:06e6
        mov [es:bx],al                          ; 0113:06e8

l_0113_06eb:
        mov bx,[0xaa9]                          ; 0113:06eb
        movzx ax,[es:bx]                        ; 0113:06ef
        add [0xaaf],ax                          ; 0113:06f3
        mov bx,[0xaa5]                          ; 0113:06f7
        add al,[es:bx]                          ; 0113:06fb
        adc ah,0x0                              ; 0113:06fe
        shr ax,1                                ; 0113:0701
        call sub_0113_0631                      ; 0113:0703
        add bh,[byte bp-0x2]                    ; 0113:0706
        cmp byte [es:bx],0x0                    ; 0113:0709
        jnz short l_0113_0712                   ; 0113:070d
        mov [es:bx],al                          ; 0113:070f

l_0113_0712:
        mov ax,[0xaaf]                          ; 0113:0712
        shr ax,byte 0x2                         ; 0113:0715
        call sub_0113_0631                      ; 0113:0718
        add bl,[byte bp-0x2]                    ; 0113:071b
        cmp byte [es:bx],0x0                    ; 0113:071e
        jnz short l_0113_0727                   ; 0113:0722
        mov [es:bx],al                          ; 0113:0724

l_0113_0727:
        mov ax,[0xaad]                          ; 0113:0727
        shr ax,1                                ; 0113:072a
        cmp ax,0x1                              ; 0113:072c
        jz short l_0113_074a                    ; 0113:072f
        mov dx,[0xaa5]                          ; 0113:0731
        call sub_0113_0651                      ; 0113:0735
        add dl,[byte bp-0x2]                    ; 0113:0738
        call sub_0113_0651                      ; 0113:073b
        add dh,[byte bp-0x2]                    ; 0113:073e
        call sub_0113_0651                      ; 0113:0741
        sub dl,[byte bp-0x2]                    ; 0113:0744
        call sub_0113_0651                      ; 0113:0747

l_0113_074a:
        pop dx                                  ; 0113:074a
        pop ax                                  ; 0113:074b
        leave                                   ; 0113:074c
        ret                                     ; 0113:074d

sub_0113_074e:
        push ax                                 ; 0113:074e
        push bx                                 ; 0113:074f
        push cx                                 ; 0113:0750
        push di                                 ; 0113:0751
        push es                                 ; 0113:0752
        mov es,[0xa2c]                          ; 0113:0753
        xor di,di                               ; 0113:0757
        xor ax,ax                               ; 0113:0759
        mov cx,0x8000                           ; 0113:075b
        rep stosw                               ; 0113:075e
        call sub_0113_05fa                      ; 0113:0760
        xor bx,bx                               ; 0113:0763
        mov [es:bx],ah                          ; 0113:0765
        mov ax,0x100                            ; 0113:0768
        xor dx,dx                               ; 0113:076b
        call sub_0113_0651                      ; 0113:076d
        call sub_0113_05d0                      ; 0113:0770
        call sub_0113_05d0                      ; 0113:0773
        call sub_0113_05d0                      ; 0113:0776
        call sub_0113_05d0                      ; 0113:0779
        pop es                                  ; 0113:077c
        pop di                                  ; 0113:077d
        pop cx                                  ; 0113:077e
        pop bx                                  ; 0113:077f
        pop ax                                  ; 0113:0780
        ret                                     ; 0113:0781

sub_0113_0782:
        push ax                                 ; 0113:0782
        push bx                                 ; 0113:0783
        push cx                                 ; 0113:0784
        push dx                                 ; 0113:0785
        push si                                 ; 0113:0786
        push di                                 ; 0113:0787
        push es                                 ; 0113:0788
        push fs                                 ; 0113:0789
        mov es,[0xa2e]                          ; 0113:078b
        mov fs,[0xa2c]                          ; 0113:078f
        xor di,di                               ; 0113:0793
        xor cx,cx                               ; 0113:0795

l_0113_0797:
        mov al,[fs:di]                          ; 0113:0797
        cmp al,0x19                             ; 0113:079a
        ja short l_0113_07ac                    ; 0113:079c
        mov ah,[byte fs:di+0x1]                 ; 0113:079e
        cmp ah,0x19                             ; 0113:07a2
        ja short l_0113_07ac                    ; 0113:07a5
        mov al,0x52                             ; 0113:07a7
        stosb                                   ; 0113:07a9
        loop l_0113_0797                        ; 0113:07aa

l_0113_07ac:
        sub al,[byte fs:di+0x1]                 ; 0113:07ac
        jc short l_0113_07bc                    ; 0113:07b0
        shl al,1                                ; 0113:07b2
        cmp al,0x8                              ; 0113:07b4
        jna short l_0113_07c4                   ; 0113:07b6
        mov al,0x8                              ; 0113:07b8
        jmp short l_0113_07c4                   ; 0113:07ba

l_0113_07bc:
        shl al,1                                ; 0113:07bc
        cmp al,0xf8                             ; 0113:07be
        jg short l_0113_07c4                    ; 0113:07c0
        mov al,0xf8                             ; 0113:07c2

l_0113_07c4:
        add al,0x28                             ; 0113:07c4
        stosb                                   ; 0113:07c6
        loop l_0113_0797                        ; 0113:07c7
        call sub_0113_05e5                      ; 0113:07c9
        pop fs                                  ; 0113:07cc
        pop es                                  ; 0113:07ce
        pop di                                  ; 0113:07cf
        pop si                                  ; 0113:07d0
        pop dx                                  ; 0113:07d1
        pop cx                                  ; 0113:07d2
        pop bx                                  ; 0113:07d3
        pop ax                                  ; 0113:07d4
        ret                                     ; 0113:07d5
        incbin "data/d_01906.bin"   ; 0x500 bytes of data at 0113:07d6

sub_0113_0cd6:
        push ax                                 ; 0113:0cd6
        push cx                                 ; 0113:0cd7
        push si                                 ; 0113:0cd8
        push di                                 ; 0113:0cd9
        push ds                                 ; 0113:0cda
        push es                                 ; 0113:0cdb
        mov ax,0xc                              ; 0113:0cdc
        call 0x0206:far_0206_000e               ; 0113:0cdf
        mov ax,0x12                             ; 0113:0ce4
        call 0x0206:far_0206_0013               ; 0113:0ce7
        mov es,[0xa32]                          ; 0113:0cec
        push word [0xa34]                       ; 0113:0cf0
        xor di,di                               ; 0113:0cf4
        push cs                                 ; 0113:0cf6
        pop ds                                  ; 0113:0cf7
        mov si,0x7d6                            ; 0113:0cf8
        mov cx,0x37                             ; 0113:0cfb
        call 0x0206:far_0206_0018               ; 0113:0cfe

l_0113_0d03:
        call 0x0206:far_0206_0023               ; 0113:0d03
        add si,byte +0xc                        ; 0113:0d08
        loop l_0113_0d03                        ; 0113:0d0b
        mov di,0x4                              ; 0113:0d0d
        mov si,0x7d8                            ; 0113:0d10
        mov cx,0x37                             ; 0113:0d13
        call 0x0206:far_0206_0018               ; 0113:0d16

l_0113_0d1b:
        call 0x0206:far_0206_0023               ; 0113:0d1b
        add si,byte +0xc                        ; 0113:0d20
        loop l_0113_0d1b                        ; 0113:0d23
        mov di,0x8                              ; 0113:0d25
        mov si,0x7da                            ; 0113:0d28
        mov cx,0x37                             ; 0113:0d2b
        call 0x0206:far_0206_0018               ; 0113:0d2e

l_0113_0d33:
        call 0x0206:far_0206_0023               ; 0113:0d33
        add si,byte +0xc                        ; 0113:0d38
        loop l_0113_0d33                        ; 0113:0d3b
        mov di,0xc                              ; 0113:0d3d
        mov si,0x7dc                            ; 0113:0d40
        mov cx,0x37                             ; 0113:0d43
        call 0x0206:far_0206_0018               ; 0113:0d46

l_0113_0d4b:
        call 0x0206:far_0206_00c8               ; 0113:0d4b
        add si,byte +0xc                        ; 0113:0d50
        loop l_0113_0d4b                        ; 0113:0d53
        mov di,0xe                              ; 0113:0d55
        mov si,0x7de                            ; 0113:0d58
        mov cx,0x37                             ; 0113:0d5b
        call 0x0206:far_0206_0018               ; 0113:0d5e

l_0113_0d63:
        call 0x0206:far_0206_00c8               ; 0113:0d63
        add si,byte +0xc                        ; 0113:0d68
        loop l_0113_0d63                        ; 0113:0d6b
        mov di,0x10                             ; 0113:0d6d
        mov si,0x7e0                            ; 0113:0d70
        mov cx,0x37                             ; 0113:0d73
        call 0x0206:far_0206_0018               ; 0113:0d76

l_0113_0d7b:
        call 0x0206:far_0206_00c8               ; 0113:0d7b
        add si,byte +0xc                        ; 0113:0d80
        loop l_0113_0d7b                        ; 0113:0d83
        mov word [cs:0xcd2],0x0                 ; 0113:0d85
        mov ax,0xa                              ; 0113:0d8c
        call 0x0206:far_0206_000e               ; 0113:0d8f
        mov ax,0x10                             ; 0113:0d94
        call 0x0206:far_0206_0013               ; 0113:0d97
        pop es                                  ; 0113:0d9c
        xor di,di                               ; 0113:0d9d
        mov si,0xa8e                            ; 0113:0d9f
        mov cx,0x37                             ; 0113:0da2
        call 0x0206:far_0206_0018               ; 0113:0da5

l_0113_0daa:
        call 0x0206:far_0206_0023               ; 0113:0daa
        add si,byte +0xa                        ; 0113:0daf
        loop l_0113_0daa                        ; 0113:0db2
        mov di,0x4                              ; 0113:0db4
        mov si,0xa90                            ; 0113:0db7
        mov cx,0x37                             ; 0113:0dba
        call 0x0206:far_0206_0018               ; 0113:0dbd

l_0113_0dc2:
        call 0x0206:far_0206_0023               ; 0113:0dc2
        add si,byte +0xa                        ; 0113:0dc7
        loop l_0113_0dc2                        ; 0113:0dca
        mov di,0x8                              ; 0113:0dcc
        mov si,0xa92                            ; 0113:0dcf
        mov cx,0x37                             ; 0113:0dd2
        call 0x0206:far_0206_0018               ; 0113:0dd5

l_0113_0dda:
        call 0x0206:far_0206_0023               ; 0113:0dda
        add si,byte +0xa                        ; 0113:0ddf
        loop l_0113_0dda                        ; 0113:0de2
        mov di,0xc                              ; 0113:0de4
        mov si,0xa94                            ; 0113:0de7
        mov cx,0x37                             ; 0113:0dea
        call 0x0206:far_0206_0018               ; 0113:0ded

l_0113_0df2:
        call 0x0206:far_0206_00c8               ; 0113:0df2
        add si,byte +0xa                        ; 0113:0df7
        loop l_0113_0df2                        ; 0113:0dfa
        mov di,0xe                              ; 0113:0dfc
        mov si,0xa96                            ; 0113:0dff
        mov cx,0x37                             ; 0113:0e02
        call 0x0206:far_0206_0018               ; 0113:0e05

l_0113_0e0a:
        call 0x0206:far_0206_00c8               ; 0113:0e0a
        add si,byte +0xa                        ; 0113:0e0f
        loop l_0113_0e0a                        ; 0113:0e12
        mov word [cs:0xcd4],0x0                 ; 0113:0e14
        pop es                                  ; 0113:0e1b
        pop ds                                  ; 0113:0e1c
        pop di                                  ; 0113:0e1d
        pop si                                  ; 0113:0e1e
        pop cx                                  ; 0113:0e1f
        pop ax                                  ; 0113:0e20
        ret                                     ; 0113:0e21

sub_0113_0e22:
        push eax                                ; 0113:0e22
        push dx                                 ; 0113:0e24
        push di                                 ; 0113:0e25
        push es                                 ; 0113:0e26
        mov ax,[0xa99]                          ; 0113:0e27
        mov dx,0x12                             ; 0113:0e2a
        mul dx                                  ; 0113:0e2d
        add [cs:0xcd2],ax                       ; 0113:0e2f
        mov di,[cs:0xcd2]                       ; 0113:0e34
        mov es,[0xa32]                          ; 0113:0e39
        mov eax,[es:di]                         ; 0113:0e3d
        add di,byte +0x4                        ; 0113:0e41
        mov [0xa4c],eax                         ; 0113:0e44
        mov eax,[es:di]                         ; 0113:0e48
        add di,byte +0x4                        ; 0113:0e4c
        mov [0xa50],eax                         ; 0113:0e4f
        mov eax,[es:di]                         ; 0113:0e53
        add di,byte +0x4                        ; 0113:0e57
        mov [0xa54],eax                         ; 0113:0e5a
        mov ax,[es:di]                          ; 0113:0e5e
        add di,byte +0x2                        ; 0113:0e61
        mov [0xa58],ax                          ; 0113:0e64
        mov ax,[es:di]                          ; 0113:0e67
        add di,byte +0x2                        ; 0113:0e6a
        mov [0xa5a],ax                          ; 0113:0e6d
        mov ax,[es:di]                          ; 0113:0e70
        add di,byte +0x2                        ; 0113:0e73
        mov [0xa5c],ax                          ; 0113:0e76
        mov ax,[0xa99]                          ; 0113:0e79
        mov dx,0x10                             ; 0113:0e7c
        mul dx                                  ; 0113:0e7f
        add [cs:0xcd4],ax                       ; 0113:0e81
        mov di,[cs:0xcd4]                       ; 0113:0e86
        mov es,[0xa34]                          ; 0113:0e8b
        mov eax,[es:di]                         ; 0113:0e8f
        add di,byte +0x4                        ; 0113:0e93
        mov [0xa36],eax                         ; 0113:0e96
        mov eax,[es:di]                         ; 0113:0e9a
        add di,byte +0x4                        ; 0113:0e9e
        mov [0xa3a],eax                         ; 0113:0ea1
        mov eax,[es:di]                         ; 0113:0ea5
        add di,byte +0x4                        ; 0113:0ea9
        mov [0xa3e],eax                         ; 0113:0eac
        mov ax,[es:di]                          ; 0113:0eb0
        add di,byte +0x2                        ; 0113:0eb3
        mov [0xa44],ax                          ; 0113:0eb6
        mov ax,[es:di]                          ; 0113:0eb9
        add di,byte +0x2                        ; 0113:0ebc
        mov [0xa42],ax                          ; 0113:0ebf
        pop es                                  ; 0113:0ec2
        pop di                                  ; 0113:0ec3
        pop dx                                  ; 0113:0ec4
        pop eax                                 ; 0113:0ec5
        ret                                     ; 0113:0ec7

sub_0113_0ec8:
        push bx                                 ; 0113:0ec8
        push cx                                 ; 0113:0ec9
        push si                                 ; 0113:0eca
        push es                                 ; 0113:0ecb
        mov es,[0xa2e]                          ; 0113:0ecc
        mov ch,0x5                              ; 0113:0ed0
        mov bh,[0xa52]                          ; 0113:0ed2
        sub bh,0x2                              ; 0113:0ed6
        mov si,0x126b                           ; 0113:0ed9

l_0113_0edc:
        mov cl,0x5                              ; 0113:0edc
        mov bl,[0xa4e]                          ; 0113:0ede
        sub bl,0x2                              ; 0113:0ee2

l_0113_0ee5:
        mov al,[si]                             ; 0113:0ee5
        add [es:bx],al                          ; 0113:0ee7
        inc si                                  ; 0113:0eea
        inc bl                                  ; 0113:0eeb
        dec cl                                  ; 0113:0eed
        jnz short l_0113_0ee5                   ; 0113:0eef
        inc bh                                  ; 0113:0ef1
        dec ch                                  ; 0113:0ef3
        jnz short l_0113_0edc                   ; 0113:0ef5
        pop es                                  ; 0113:0ef7
        pop si                                  ; 0113:0ef8
        pop cx                                  ; 0113:0ef9
        pop bx                                  ; 0113:0efa
        ret                                     ; 0113:0efb

sub_0113_0efc:
        push bx                                 ; 0113:0efc
        push cx                                 ; 0113:0efd
        push si                                 ; 0113:0efe
        push es                                 ; 0113:0eff
        mov es,[0xa2e]                          ; 0113:0f00
        mov ch,0x5                              ; 0113:0f04
        mov bh,[0xa52]                          ; 0113:0f06
        sub bh,0x2                              ; 0113:0f0a
        mov si,0x126b                           ; 0113:0f0d

l_0113_0f10:
        mov cl,0x5                              ; 0113:0f10
        mov bl,[0xa4e]                          ; 0113:0f12
        sub bl,0x2                              ; 0113:0f16

l_0113_0f19:
        mov al,[si]                             ; 0113:0f19
        sub [es:bx],al                          ; 0113:0f1b
        inc si                                  ; 0113:0f1e
        inc bl                                  ; 0113:0f1f
        dec cl                                  ; 0113:0f21
        jnz short l_0113_0f19                   ; 0113:0f23
        inc bh                                  ; 0113:0f25
        dec ch                                  ; 0113:0f27
        jnz short l_0113_0f10                   ; 0113:0f29
        pop es                                  ; 0113:0f2b
        pop si                                  ; 0113:0f2c
        pop cx                                  ; 0113:0f2d
        pop bx                                  ; 0113:0f2e
        ret                                     ; 0113:0f2f

sub_0113_0f30:
        call 0x0027:far_0027_0062               ; 0113:0f30
        ret                                     ; 0113:0f35
; data 0113:0f36 (8 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

;======================================================================
; segment 0206  (image 0x0206e-0x021d4)
;======================================================================
section seg_0206 start=0x206e vstart=0xe

far_0206_000e:
        mov [cs:0x6],ax                         ; 0206:000e
        retf                                    ; 0206:0012

far_0206_0013:
        mov [cs:0x8],ax                         ; 0206:0013
        retf                                    ; 0206:0017

far_0206_0018:
        mov dword [cs:0xa],0x0                  ; 0206:0018
        retf                                    ; 0206:0022

far_0206_0023:
        push eax                                ; 0206:0023
        push ebx                                ; 0206:0025
        push ecx                                ; 0206:0027
        push edx                                ; 0206:0029
        push si                                 ; 0206:002b
        push ebp                                ; 0206:002c
        mov ax,[si]                             ; 0206:002e
        add si,[cs:0x6]                         ; 0206:0030
        mov bx,[si]                             ; 0206:0035
        add si,[cs:0x6]                         ; 0206:0037
        mov cx,[si]                             ; 0206:003c
        add si,[cs:0x6]                         ; 0206:003e
        mov dx,[si]                             ; 0206:0043
        add si,[cs:0x6]                         ; 0206:0045
        push bx                                 ; 0206:004a
        sub dx,cx                               ; 0206:004b
        sub cx,bx                               ; 0206:004d
        sub bx,ax                               ; 0206:004f
        movsx eax,cx                            ; 0206:0051
        sub dx,cx                               ; 0206:0055
        sub cx,bx                               ; 0206:0057
        shl eax,byte 0xa                        ; 0206:0059
        add dx,cx                               ; 0206:005d
        shl edx,byte 0x10                       ; 0206:005f
        mov ecx,edx                             ; 0206:0063
        sar ecx,byte 0x6                        ; 0206:0066
        cmp dword [cs:0xa],byte +0x0            ; 0206:006a
        jz short l_0206_0085                    ; 0206:0071
        mov ebx,eax                             ; 0206:0073
        sub ebx,[cs:0xa]                        ; 0206:0076
        shl ebx,1                               ; 0206:007c
        add ecx,ebx                             ; 0206:007f
        sar ecx,1                               ; 0206:0082

l_0206_0085:
        mov edx,ecx                             ; 0206:0085
        shl edx,byte 0x5                        ; 0206:0088
        pop bx                                  ; 0206:008c
        shl ebx,byte 0x10                       ; 0206:008d
        mov si,0x40                             ; 0206:0091

l_0206_0094:
        mov [es:di],ebx                         ; 0206:0094
        add di,[cs:0x8]                         ; 0206:0098
        add ebx,eax                             ; 0206:009d
        mov ebp,edx                             ; 0206:00a0
        sar ebp,byte 0x6                        ; 0206:00a3
        sub ebx,ebp                             ; 0206:00a7
        sub edx,ecx                             ; 0206:00aa
        dec si                                  ; 0206:00ad
        jnz short l_0206_0094                   ; 0206:00ae
        sar edx,byte 0x6                        ; 0206:00b0
        sub eax,edx                             ; 0206:00b4
        mov [cs:0xa],eax                        ; 0206:00b7
        pop ebp                                 ; 0206:00bc
        pop si                                  ; 0206:00be
        pop edx                                 ; 0206:00bf
        pop ecx                                 ; 0206:00c1
        pop ebx                                 ; 0206:00c3
        pop eax                                 ; 0206:00c5
        retf                                    ; 0206:00c7

far_0206_00c8:
        push eax                                ; 0206:00c8
        push ebx                                ; 0206:00ca
        push ecx                                ; 0206:00cc
        push edx                                ; 0206:00ce
        push si                                 ; 0206:00d0
        push ebp                                ; 0206:00d1
        mov ax,[si]                             ; 0206:00d3
        add si,[cs:0x6]                         ; 0206:00d5
        mov bx,[si]                             ; 0206:00da
        add si,[cs:0x6]                         ; 0206:00dc
        mov cx,[si]                             ; 0206:00e1
        add si,[cs:0x6]                         ; 0206:00e3
        mov dx,[si]                             ; 0206:00e8
        add si,[cs:0x6]                         ; 0206:00ea
        push bx                                 ; 0206:00ef
        sub dx,cx                               ; 0206:00f0
        sub cx,bx                               ; 0206:00f2
        sub bx,ax                               ; 0206:00f4
        movsx eax,cx                            ; 0206:00f6
        sub dx,cx                               ; 0206:00fa
        sub cx,bx                               ; 0206:00fc
        shl eax,byte 0x2                        ; 0206:00fe
        add dx,cx                               ; 0206:0102
        movsx edx,dx                            ; 0206:0104
        shl edx,byte 0x8                        ; 0206:0108
        mov ecx,edx                             ; 0206:010c
        sar ecx,byte 0x6                        ; 0206:010f
        cmp dword [cs:0xa],byte +0x0            ; 0206:0113
        jz short l_0206_012e                    ; 0206:011a
        mov ebx,eax                             ; 0206:011c
        sub ebx,[cs:0xa]                        ; 0206:011f
        shl ebx,1                               ; 0206:0125
        add ecx,ebx                             ; 0206:0128
        sar ecx,1                               ; 0206:012b

l_0206_012e:
        mov edx,ecx                             ; 0206:012e
        shl edx,byte 0x5                        ; 0206:0131
        pop bx                                  ; 0206:0135
        movsx ebx,bx                            ; 0206:0136
        shl ebx,byte 0x8                        ; 0206:013a
        mov si,0x40                             ; 0206:013e

l_0206_0141:
        mov [es:di],bx                          ; 0206:0141
        add di,[cs:0x8]                         ; 0206:0144
        add ebx,eax                             ; 0206:0149
        mov ebp,edx                             ; 0206:014c
        sar ebp,byte 0x6                        ; 0206:014f
        sub ebx,ebp                             ; 0206:0153
        sub edx,ecx                             ; 0206:0156
        dec si                                  ; 0206:0159
        jnz short l_0206_0141                   ; 0206:015a
        sar edx,byte 0x6                        ; 0206:015c
        sub eax,edx                             ; 0206:0160
        mov [cs:0xa],eax                        ; 0206:0163
        pop ebp                                 ; 0206:0168
        pop si                                  ; 0206:016a
        pop edx                                 ; 0206:016b
        pop ecx                                 ; 0206:016d
        pop ebx                                 ; 0206:016f
        pop eax                                 ; 0206:0171
        retf                                    ; 0206:0173

;======================================================================
; segment 021d  (image 0x021d4-0x02496)
;======================================================================
section seg_021d start=0x21d4 vstart=0x4

far_021d_0004:
        push ds                                 ; 021d:0004
        call 0x003d:far_003d_0323               ; 021d:0005
        mov ax,0x2314                           ; 021d:000a
        mov ds,ax                               ; 021d:000d
        mov si,0x1286                           ; 021d:000f
        mov bx,0xff00                           ; 021d:0012
        call 0x0033:far_0033_0008               ; 021d:0015
        mov dx,0x3ce                            ; 021d:001a
        mov ax,0x4105                           ; 021d:001d
        out dx,ax                               ; 021d:0020
        mov dx,0x3c4                            ; 021d:0021
        mov ax,0xf02                            ; 021d:0024
        out dx,ax                               ; 021d:0027
        mov ax,0xa000                           ; 021d:0028
        mov ds,ax                               ; 021d:002b

l_021d_002d:
        call 0x0027:far_0027_008c               ; 021d:002d
        call 0x003d:far_003d_0323               ; 021d:0032

l_021d_0037:
        call sub_021d_011b                      ; 021d:0037
        dec ax                                  ; 021d:003a
        jnz short l_021d_0037                   ; 021d:003b
        call 0x0027:far_0027_002d               ; 021d:003d
        call sub_021d_01de                      ; 021d:0042
        call 0x20c1:far_20c1_2423               ; 021d:0045
        cmp al,0x8                              ; 021d:004a
        jnz short l_021d_002d                   ; 021d:004c
        mov cx,0x23                             ; 021d:004e
        mov dword [cs:0x117],0xbb0000           ; 021d:0051

l_021d_005b:
        call 0x0027:far_0027_008c               ; 021d:005b
        call 0x003d:far_003d_0323               ; 021d:0060
        sub cx,ax                               ; 021d:0065
        js short l_021d_0079                    ; 021d:0067

l_021d_0069:
        call sub_021d_011b                      ; 021d:0069
        dec ax                                  ; 021d:006c
        jnz short l_021d_0069                   ; 021d:006d
        call 0x0027:far_0027_002d               ; 021d:006f
        call sub_021d_01de                      ; 021d:0074
        jmp short l_021d_005b                   ; 021d:0077

l_021d_0079:
        mov cx,0x46                             ; 021d:0079
        mov dword [cs:0x117],0x1f40000          ; 021d:007c

l_021d_0086:
        call 0x0027:far_0027_008c               ; 021d:0086
        call 0x003d:far_003d_0323               ; 021d:008b
        sub cx,ax                               ; 021d:0090
        js short l_021d_00a4                    ; 021d:0092

l_021d_0094:
        call sub_021d_011b                      ; 021d:0094
        dec ax                                  ; 021d:0097
        jnz short l_021d_0094                   ; 021d:0098
        call 0x0027:far_0027_002d               ; 021d:009a
        call sub_021d_01de                      ; 021d:009f
        jmp short l_021d_0086                   ; 021d:00a2

l_021d_00a4:
        pop ds                                  ; 021d:00a4
        retf                                    ; 021d:00a5
; data 021d:00a6 (4 bytes)
        db 0x00,0x00,0x00,0x00

far_021d_00aa:
        push gs                                 ; 021d:00aa
        mov ecx,0x9c40                          ; 021d:00ac
        mov ax,0xa7d0                           ; 021d:00b2
        mov gs,ax                               ; 021d:00b5
        mov bx,0x0                              ; 021d:00b7

l_021d_00ba:
        xor edx,edx                             ; 021d:00ba
        mov bp,0xa0                             ; 021d:00bd
        push ecx                                ; 021d:00c0
        rol ecx,byte 0x10                       ; 021d:00c2

l_021d_00c6:
        mov ax,bp                               ; 021d:00c6
        call 0x0027:far_0027_009c               ; 021d:00c8
        mov ax,0x13f                            ; 021d:00cd
        sub ax,bp                               ; 021d:00d0
        call 0x0027:far_0027_009c               ; 021d:00d2
        add edx,ecx                             ; 021d:00d7
        adc dx,byte +0x0                        ; 021d:00da
        inc bp                                  ; 021d:00dd
        cmp bp,0x140                            ; 021d:00de
        jnz short l_021d_00c6                   ; 021d:00e2
        pop ecx                                 ; 021d:00e4
        sub ecx,0x300                           ; 021d:00e6
        inc bx                                  ; 021d:00ed
        cmp bx,0x100                            ; 021d:00ee
        jna short l_021d_00ba                   ; 021d:00f2
        pop gs                                  ; 021d:00f4
        retf                                    ; 021d:00f6
; data 021d:00f7 (36 bytes)
        db 0x00,0x00,0x9c,0xff,0x00,0x00,0x00,0x00,0x33,0x33,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0xc8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0xc8,0x00

sub_021d_011b:
        push eax                                ; 021d:011b
        push edx                                ; 021d:011d
        push esi                                ; 021d:011f
        push edi                                ; 021d:0121
        mov eax,[cs:0xf7]                       ; 021d:0123
        mov [cs:0x103],eax                      ; 021d:0128
        mov eax,[cs:0x107]                      ; 021d:012d
        mov [cs:0x113],eax                      ; 021d:0132
        mov esi,[cs:0xfb]                       ; 021d:0137
        add esi,[cs:0xff]                       ; 021d:013d
        add esi,[cs:0xf7]                       ; 021d:0143
        mov edi,[cs:0x10b]                      ; 021d:0149
        add edi,[cs:0x10f]                      ; 021d:014f
        mov edx,edi                             ; 021d:0155
        add edi,[cs:0x107]                      ; 021d:0158
        cmp edi,0xc80000                        ; 021d:015e
        jl short l_021d_0173                    ; 021d:0165
        neg edx                                 ; 021d:0167
        sar edx,1                               ; 021d:016a
        mov edi,0xc80000                        ; 021d:016d

l_021d_0173:
        mov eax,edi                             ; 021d:0173
        sar eax,1                               ; 021d:0176
        add eax,esi                             ; 021d:0179
        sub eax,[cs:0x117]                      ; 021d:017c
        jng short l_021d_018d                   ; 021d:0182
        sub edi,eax                             ; 021d:0184
        sar eax,1                               ; 021d:0187
        sub esi,eax                             ; 021d:018a

l_021d_018d:
        mov eax,0xc80000                        ; 021d:018d
        sub eax,edi                             ; 021d:0193
        sar eax,byte 0x5                        ; 021d:0196
        mov [cs:0x10f],eax                      ; 021d:019a
        mov eax,esi                             ; 021d:019f
        sub eax,[cs:0x103]                      ; 021d:01a2
        mov [cs:0xfb],eax                       ; 021d:01a8
        cmp edi,0xc80000                        ; 021d:01ad
        jz short l_021d_01bf                    ; 021d:01b4
        mov edx,edi                             ; 021d:01b6
        sub edx,[cs:0x113]                      ; 021d:01b9

l_021d_01bf:
        mov [cs:0xf7],esi                       ; 021d:01bf
        mov [cs:0x107],edi                      ; 021d:01c5
        mov [cs:0x10b],edx                      ; 021d:01cb
        pop edi                                 ; 021d:01d1
        pop esi                                 ; 021d:01d3
        pop edx                                 ; 021d:01d5
        pop eax                                 ; 021d:01d7
        ret                                     ; 021d:01d9
; data 021d:01da (4 bytes)
        db 0x00,0x00,0x00,0x00

sub_021d_01de:
        pusha                                   ; 021d:01de
        push es                                 ; 021d:01df
        mov ax,gs                               ; 021d:01e0
        mov es,ax                               ; 021d:01e2
        mov ax,0xc8                             ; 021d:01e4
        sub ax,[cs:0x109]                       ; 021d:01e7
        mov dx,0x51                             ; 021d:01ec
        imul dx                                 ; 021d:01ef
        call 0x02ca:far_02ca_006a               ; 021d:01f1
        mov dx,0x21                             ; 021d:01f6
        imul dx                                 ; 021d:01f9
        shrd ax,dx,0x6                          ; 021d:01fb
        mov bp,ax                               ; 021d:01ff
        mov dx,0x1                              ; 021d:0201
        mov ax,0x8000                           ; 021d:0204
        mov esi,[cs:0x107]                      ; 021d:0207
        sar esi,byte 0x10                       ; 021d:020d
        mov [cs:0x1da],si                       ; 021d:0211
        idiv si                                 ; 021d:0216
        mov [cs:0x1dc],ax                       ; 021d:0218
        mov eax,[cs:0xf7]                       ; 021d:021c
        mov esi,[cs:0x107]                      ; 021d:0221
        sar esi,1                               ; 021d:0227
        sub eax,esi                             ; 021d:022a
        sar eax,byte 0x10                       ; 021d:022d
        shl ax,byte 0x4                         ; 021d:0231
        mov di,ax                               ; 021d:0234
        shl ax,byte 0x2                         ; 021d:0236
        add di,ax                               ; 021d:0239
        js short l_021d_0261                    ; 021d:023b
        cmp di,0x3e80                           ; 021d:023d
        jc short l_021d_0246                    ; 021d:0241
        mov di,0x3e80                           ; 021d:0243

l_021d_0246:
        mov cx,di                               ; 021d:0246
        shr cx,byte 0x2                         ; 021d:0248
        mov dx,0x3ce                            ; 021d:024b
        mov ax,0x4005                           ; 021d:024e
        out dx,ax                               ; 021d:0251
        xor eax,eax                             ; 021d:0252
        xor di,di                               ; 021d:0255
        rep stosd                               ; 021d:0257
        mov dx,0x3ce                            ; 021d:025a
        mov ax,0x4105                           ; 021d:025d
        out dx,ax                               ; 021d:0260

l_021d_0261:
        xor bx,bx                               ; 021d:0261

l_021d_0263:
        cmp di,0x3e80                           ; 021d:0263
        jnc short l_021d_0291                   ; 021d:0267
        mov ax,bx                               ; 021d:0269
        call 0x02ca:far_02ca_006a               ; 021d:026b
        imul bp                                 ; 021d:0270
        shrd ax,dx,0x15                         ; 021d:0272
        add ax,0x80                             ; 021d:0276
        and ax,0xff                             ; 021d:0279
        shl ax,byte 0x4                         ; 021d:027c
        mov si,ax                               ; 021d:027f
        shl ax,byte 0x2                         ; 021d:0281
        add si,ax                               ; 021d:0284
        add si,0x7d00                           ; 021d:0286
        mov cx,0x50                             ; 021d:028a
        rep movsb                               ; 021d:028d
        jmp short l_021d_0294                   ; 021d:028f

l_021d_0291:
        add di,byte +0x50                       ; 021d:0291

l_021d_0294:
        add bx,[cs:0x1dc]                       ; 021d:0294
        dec word [cs:0x1da]                     ; 021d:0299
        jnz short l_021d_0263                   ; 021d:029e
        cmp di,0x3e80                           ; 021d:02a0
        ja short l_021d_02c2                    ; 021d:02a4
        mov cx,0x3e80                           ; 021d:02a6
        sub cx,di                               ; 021d:02a9
        shr cx,byte 0x2                         ; 021d:02ab
        mov dx,0x3ce                            ; 021d:02ae
        mov ax,0x4005                           ; 021d:02b1
        out dx,ax                               ; 021d:02b4
        xor eax,eax                             ; 021d:02b5
        rep stosd                               ; 021d:02b8
        mov dx,0x3ce                            ; 021d:02bb
        mov ax,0x4105                           ; 021d:02be
        out dx,ax                               ; 021d:02c1

l_021d_02c2:
        pop es                                  ; 021d:02c2
        popa                                    ; 021d:02c3
        ret                                     ; 021d:02c4
; data 021d:02c5 (1 bytes)
        db 0x00

;======================================================================
; segment 0249  (image 0x02496-0x027c2)
; effect code: retrace-synced screen effects, text mode/scroller
;======================================================================
section seg_0249 start=0x2496 vstart=0x6

far_0249_0006:
        push ax                                 ; 0249:0006
        push dx                                 ; 0249:0007
        mov dx,0x3da                            ; 0249:0008

l_0249_000b:
        in al,dx                                ; 0249:000b
        test al,0x8                             ; 0249:000c
        jnz short l_0249_000b                   ; 0249:000e

l_0249_0010:
        in al,dx                                ; 0249:0010
        test al,0x8                             ; 0249:0011
        jz short l_0249_0010                    ; 0249:0013
        pop dx                                  ; 0249:0015
        pop ax                                  ; 0249:0016
        mov ax,0xe                              ; 0249:0017
        int 0x10                                ; 0249:001a
        mov dx,0x3d4                            ; 0249:001c
        mov ax,0x4009                           ; 0249:001f
        out dx,ax                               ; 0249:0022
        mov ax,0xa000                           ; 0249:0023
        mov gs,ax                               ; 0249:0026
        mov ax,0xa7d5                           ; 0249:0028
        mov fs,ax                               ; 0249:002b
        mov dx,0x3ce                            ; 0249:002d
        mov ax,0x205                            ; 0249:0030
        out dx,ax                               ; 0249:0033
        mov si,0x1806                           ; 0249:0034
        mov cx,0x10                             ; 0249:0037

l_0249_003a:
        mov dx,0x3c8                            ; 0249:003a
        outsb                                   ; 0249:003d
        inc dx                                  ; 0249:003e
        outsb                                   ; 0249:003f
        outsb                                   ; 0249:0040
        outsb                                   ; 0249:0041
        loop l_0249_003a                        ; 0249:0042
        mov ax,0x0                              ; 0249:0044
        call 0x07cc:far_07cc_0021               ; 0249:0047
        retf                                    ; 0249:004c

far_0249_004d:
        push ds                                 ; 0249:004d
        pop es                                  ; 0249:004e
        mov di,0x1586                           ; 0249:004f
        mov si,0x1846                           ; 0249:0052
        call sub_0249_0154                      ; 0249:0055
        mov word [0x24bb],0x50                  ; 0249:0058
        mov word [0x24bd],0x0                   ; 0249:005e
        mov al,0x8                              ; 0249:0064
        mov dx,0x3ce                            ; 0249:0066
        out dx,al                               ; 0249:0069

l_0249_006a:
        mov dx,0x3d4                            ; 0249:006a
        mov al,0xd                              ; 0249:006d
        mov ah,[0x24bb]                         ; 0249:006f
        out dx,ax                               ; 0249:0073
        mov al,0xc                              ; 0249:0074
        mov ah,[0x24bc]                         ; 0249:0076
        out dx,ax                               ; 0249:007a
        push ax                                 ; 0249:007b
        push dx                                 ; 0249:007c
        mov dx,0x3da                            ; 0249:007d

l_0249_0080:
        in al,dx                                ; 0249:0080
        test al,0x8                             ; 0249:0081
        jnz short l_0249_0080                   ; 0249:0083

l_0249_0085:
        in al,dx                                ; 0249:0085
        test al,0x8                             ; 0249:0086
        jz short l_0249_0085                    ; 0249:0088
        pop dx                                  ; 0249:008a
        pop ax                                  ; 0249:008b
        call sub_0249_019b                      ; 0249:008c
        cmp al,0xfe                             ; 0249:008f
        jz short l_0249_00fa                    ; 0249:0091
        mov al,0x80                             ; 0249:0093
        push ax                                 ; 0249:0095
        push dx                                 ; 0249:0096
        mov dx,0x3da                            ; 0249:0097

l_0249_009a:
        in al,dx                                ; 0249:009a
        test al,0x8                             ; 0249:009b
        jnz short l_0249_009a                   ; 0249:009d

l_0249_009f:
        in al,dx                                ; 0249:009f
        test al,0x8                             ; 0249:00a0
        jz short l_0249_009f                    ; 0249:00a2
        pop dx                                  ; 0249:00a4
        pop ax                                  ; 0249:00a5
        mov cx,0x280                            ; 0249:00a6
        mov si,di                               ; 0249:00a9
        mov bx,[0x24bd]                         ; 0249:00ab

l_0249_00af:
        mov dx,0x3cf                            ; 0249:00af
        out dx,al                               ; 0249:00b2
        mov dl,[si]                             ; 0249:00b3
        inc si                                  ; 0249:00b5
        mov ah,[gs:bx]                          ; 0249:00b6
        mov [gs:bx],dl                          ; 0249:00b9
        mov [fs:bx],dl                          ; 0249:00bc
        ror al,1                                ; 0249:00bf
        adc bx,byte +0x0                        ; 0249:00c1
        loop l_0249_00af                        ; 0249:00c4
        add word [0x24bd],byte +0x50            ; 0249:00c6
        cmp word [0x24bd],0x7d50                ; 0249:00cb
        jnz short l_0249_00e1                   ; 0249:00d1
        mov word [0x24bd],0x0                   ; 0249:00d3
        mov word [0x24bb],0x50                  ; 0249:00d9
        jmp short l_0249_00e6                   ; 0249:00df

l_0249_00e1:
        add word [0x24bb],byte +0x50            ; 0249:00e1

l_0249_00e6:
        mov ah,0xb                              ; 0249:00e6
        int 0x21                                ; 0249:00e8
        or al,al                                ; 0249:00ea
        jz near l_0249_006a                     ; 0249:00ec
        mov ah,0x7                              ; 0249:00f0
        int 0x21                                ; 0249:00f2
        cmp al,0x1b                             ; 0249:00f4
        jnz near l_0249_006a                    ; 0249:00f6

l_0249_00fa:
        retf                                    ; 0249:00fa
; data 0249:00fb (20 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00

sub_0249_010f:
        push ax                                 ; 0249:010f
        push cx                                 ; 0249:0110
        mov cl,[cs:0x10a]                       ; 0249:0111
        mov ax,0xff                             ; 0249:0116
        shl ax,cl                               ; 0249:0119
        mov [cs:0x10b],ah                       ; 0249:011b
        mov byte [cs:0x10c],0x0                 ; 0249:0120
        pop cx                                  ; 0249:0126
        pop ax                                  ; 0249:0127
        ret                                     ; 0249:0128

sub_0249_0129:
        push cx                                 ; 0249:0129
        mov dl,[fs:si]                          ; 0249:012a
        and dl,[cs:0x10b]                       ; 0249:012d
        mov cl,[cs:0x10a]                       ; 0249:0132
        rol byte [cs:0x10b],cl                  ; 0249:0137
        adc si,byte +0x0                        ; 0249:013c
        mov ch,cl                               ; 0249:013f
        mov cl,[cs:0x10c]                       ; 0249:0141
        shr dl,cl                               ; 0249:0146
        add cl,ch                               ; 0249:0148
        and cl,0x7                              ; 0249:014a
        mov [cs:0x10c],cl                       ; 0249:014d
        pop cx                                  ; 0249:0152
        ret                                     ; 0249:0153

sub_0249_0154:
        push ax                                 ; 0249:0154
        push si                                 ; 0249:0155
        push ds                                 ; 0249:0156
        mov word [cs:0xfb],0x280                ; 0249:0157
        mov [cs:0xfd],si                        ; 0249:015e
        mov [cs:0xff],si                        ; 0249:0163
        mov [cs:0x101],ds                       ; 0249:0168
        mov [cs:0x103],di                       ; 0249:016d
        mov [cs:0x105],es                       ; 0249:0172
        mov byte [cs:0x107],0x0                 ; 0249:0177
        mov byte [cs:0x10d],0x0                 ; 0249:017d
        call 0x07cc:far_07cc_001b               ; 0249:0183
        mov al,[si]                             ; 0249:0188
        mov [cs:0x108],al                       ; 0249:018a
        mov al,[byte si+0x1]                    ; 0249:018e
        mov [cs:0x10a],al                       ; 0249:0191
        pop ds                                  ; 0249:0195
        pop si                                  ; 0249:0196
        pop ax                                  ; 0249:0197
        ret                                     ; 0249:0198
; data 0249:0199 (2 bytes)
        db 0x00,0x00

sub_0249_019b:
        push bx                                 ; 0249:019b
        push cx                                 ; 0249:019c
        push dx                                 ; 0249:019d
        push si                                 ; 0249:019e
        push di                                 ; 0249:019f
        push ds                                 ; 0249:01a0
        push es                                 ; 0249:01a1
        push fs                                 ; 0249:01a2
        mov byte [cs:0x10e],0x0                 ; 0249:01a4
        cmp byte [cs:0x109],0x0                 ; 0249:01aa
        jz short l_0249_01c3                    ; 0249:01b0
        dec byte [cs:0x109]                     ; 0249:01b2
        mov cx,[cs:0xfb]                        ; 0249:01b7
        xor al,al                               ; 0249:01bc
        rep stosb                               ; 0249:01be
        jmp near l_0249_02d7                    ; 0249:01c0

l_0249_01c3:
        lds si,[cs:0xff]                        ; 0249:01c3
        les di,[cs:0x103]                       ; 0249:01c8
        call sub_0249_02e5                      ; 0249:01cd
        mov cx,[cs:0xfb]                        ; 0249:01d0
        sub cx,ax                               ; 0249:01d5
        mov ax,cx                               ; 0249:01d7
        shr ax,1                                ; 0249:01d9
        sub cx,ax                               ; 0249:01db
        mov [cs:0x199],ax                       ; 0249:01dd
        mov al,[cs:0x10d]                       ; 0249:01e1
        rep stosb                               ; 0249:01e5
        mov al,[si]                             ; 0249:01e7
        or al,al                                ; 0249:01e9
        jz near l_0249_02ac                     ; 0249:01eb

l_0249_01ef:
        cmp al,0xff                             ; 0249:01ef
        jnz short l_0249_0223                   ; 0249:01f1
        inc si                                  ; 0249:01f3
        mov al,[si]                             ; 0249:01f4
        cmp al,0xff                             ; 0249:01f6
        jnz short l_0249_0213                   ; 0249:01f8
        mov si,[cs:0xfd]                        ; 0249:01fa
        mov [cs:0xff],si                        ; 0249:01ff
        mov byte [cs:0x107],0x0                 ; 0249:0204
        mov byte [cs:0x10d],0x0                 ; 0249:020a
        jmp near l_0249_02d7                    ; 0249:0210

l_0249_0213:
        cmp al,0xf                              ; 0249:0213
        ja short l_0249_021d                    ; 0249:0215
        mov [cs:0x10d],al                       ; 0249:0217
        jmp short l_0249_0295                   ; 0249:021b

l_0249_021d:
        mov [cs:0x10e],al                       ; 0249:021d
        jmp short l_0249_0295                   ; 0249:0221

l_0249_0223:
        push ds                                 ; 0249:0223
        push si                                 ; 0249:0224
        call 0x07cc:far_07cc_001b               ; 0249:0225
        push ds                                 ; 0249:022a
        push si                                 ; 0249:022b
        pop bx                                  ; 0249:022c
        pop fs                                  ; 0249:022d
        pop si                                  ; 0249:022f
        pop ds                                  ; 0249:0230
        xor ah,ah                               ; 0249:0231
        add bx,ax                               ; 0249:0233
        mov cl,[byte fs:bx+0x2]                 ; 0249:0235
        or cl,cl                                ; 0249:0239
        jz short l_0249_0295                    ; 0249:023b
        add bx,ax                               ; 0249:023d
        push si                                 ; 0249:023f
        mov si,[word fs:bx+0x102]               ; 0249:0240
        sub bx,ax                               ; 0249:0245
        sub bx,ax                               ; 0249:0247
        lea bx,[word bx+0x302]                  ; 0249:0249
        add si,bx                               ; 0249:024d
        mov al,[cs:0x107]                       ; 0249:024f
        mul cl                                  ; 0249:0253
        mov bl,cl                               ; 0249:0255
        movzx cx,[cs:0x10a]                     ; 0249:0257
        mul cx                                  ; 0249:025d
        mov cl,al                               ; 0249:025f
        shrd ax,dx,0x3                          ; 0249:0261
        and cl,0x7                              ; 0249:0265
        add si,ax                               ; 0249:0268
        movzx ax,cl                             ; 0249:026a
        div byte [cs:0x10a]                     ; 0249:026d
        mov cl,al                               ; 0249:0272
        call sub_0249_010f                      ; 0249:0274
        mov dh,[cs:0x10d]                       ; 0249:0277
        or cl,cl                                ; 0249:027c

l_0249_027e:
        jz short l_0249_0287                    ; 0249:027e
        call sub_0249_0129                      ; 0249:0280
        dec cl                                  ; 0249:0283
        jmp short l_0249_027e                   ; 0249:0285

l_0249_0287:
        call sub_0249_0129                      ; 0249:0287
        add dl,dh                               ; 0249:028a
        mov [es:di],dl                          ; 0249:028c
        inc di                                  ; 0249:028f
        dec bl                                  ; 0249:0290
        jnz short l_0249_0287                   ; 0249:0292
        pop si                                  ; 0249:0294

l_0249_0295:
        inc si                                  ; 0249:0295
        mov al,[si]                             ; 0249:0296
        or al,al                                ; 0249:0298
        jz short l_0249_02ac                    ; 0249:029a
        mov cx,0x0                              ; 0249:029c
        mov ah,al                               ; 0249:029f
        mov al,[cs:0x10d]                       ; 0249:02a1
        rep stosb                               ; 0249:02a5
        mov al,ah                               ; 0249:02a7
        jmp near l_0249_01ef                    ; 0249:02a9

l_0249_02ac:
        mov cx,[cs:0x199]                       ; 0249:02ac
        mov al,[cs:0x10d]                       ; 0249:02b1
        rep stosb                               ; 0249:02b5
        mov al,[cs:0x107]                       ; 0249:02b7
        inc al                                  ; 0249:02bb
        cmp [cs:0x108],al                       ; 0249:02bd
        ja short l_0249_02d3                    ; 0249:02c2
        inc si                                  ; 0249:02c4
        mov al,[si]                             ; 0249:02c5
        mov [cs:0x109],al                       ; 0249:02c7
        inc si                                  ; 0249:02cb
        mov [cs:0xff],si                        ; 0249:02cc
        xor al,al                               ; 0249:02d1

l_0249_02d3:
        mov [cs:0x107],al                       ; 0249:02d3

l_0249_02d7:
        mov al,[cs:0x10e]                       ; 0249:02d7
        pop fs                                  ; 0249:02db
        pop es                                  ; 0249:02dd
        pop ds                                  ; 0249:02de
        pop di                                  ; 0249:02df
        pop si                                  ; 0249:02e0
        pop dx                                  ; 0249:02e1
        pop cx                                  ; 0249:02e2
        pop bx                                  ; 0249:02e3
        ret                                     ; 0249:02e4

sub_0249_02e5:
        push bx                                 ; 0249:02e5
        push si                                 ; 0249:02e6
        push di                                 ; 0249:02e7
        push es                                 ; 0249:02e8
        xor ax,ax                               ; 0249:02e9
        xor bh,bh                               ; 0249:02eb
        push si                                 ; 0249:02ed
        push ds                                 ; 0249:02ee
        call 0x07cc:far_07cc_001b               ; 0249:02ef
        push si                                 ; 0249:02f4
        push ds                                 ; 0249:02f5
        pop es                                  ; 0249:02f6
        pop di                                  ; 0249:02f7
        pop ds                                  ; 0249:02f8
        pop si                                  ; 0249:02f9
        add di,byte +0x2                        ; 0249:02fa
        mov bl,[si]                             ; 0249:02fd
        inc si                                  ; 0249:02ff
        or bl,bl                                ; 0249:0300
        jz short l_0249_032c                    ; 0249:0302
        cmp bl,0xff                             ; 0249:0304
        jnz short l_0249_030c                   ; 0249:0307
        inc si                                  ; 0249:0309
        jmp short l_0249_0312                   ; 0249:030a

l_0249_030c:
        add al,[es:bx+di]                       ; 0249:030c
        adc ah,0x0                              ; 0249:030f

l_0249_0312:
        mov bl,[si]                             ; 0249:0312
        inc si                                  ; 0249:0314
        or bl,bl                                ; 0249:0315
        jz short l_0249_032c                    ; 0249:0317
        cmp bl,0xff                             ; 0249:0319
        jnz short l_0249_0321                   ; 0249:031c
        inc si                                  ; 0249:031e
        jmp short l_0249_0312                   ; 0249:031f

l_0249_0321:
        add al,[es:bx+di]                       ; 0249:0321
        adc ah,0x0                              ; 0249:0324
        add ax,0x0                              ; 0249:0327
        jmp short l_0249_0312                   ; 0249:032a

l_0249_032c:
        pop es                                  ; 0249:032c
        pop di                                  ; 0249:032d
        pop si                                  ; 0249:032e
        pop bx                                  ; 0249:032f
        ret                                     ; 0249:0330
; data 0249:0331 (1 bytes)
        db 0x00

;======================================================================
; segment 027c  (image 0x027c2-0x02817)
;======================================================================
section seg_027c start=0x27c2 vstart=0x2

far_027c_0002:
        mov ah,0x48                             ; 027c:0002
        int 0x21                                ; 027c:0004
        jnc short l_027c_000f                   ; 027c:0006
        mov al,0x1                              ; 027c:0008
        jmp 0x0000:far_0000_0219                ; 027c:000a

l_027c_000f:
        retf                                    ; 027c:000f

far_027c_0010:
        push ax                                 ; 027c:0010
        mov ah,0x49                             ; 027c:0011
        int 0x21                                ; 027c:0013
        jnc short l_027c_001e                   ; 027c:0015
        mov al,0x2                              ; 027c:0017
        jmp 0x0000:far_0000_0219                ; 027c:0019

l_027c_001e:
        pop ax                                  ; 027c:001e
        retf                                    ; 027c:001f
; data 027c:0020 (55 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00

;======================================================================
; segment 027e  (image 0x02817-0x02cae)
;======================================================================
section seg_027e start=0x2817 vstart=0x37

far_027e_0037:
        pushad                                  ; 027e:0037
        push ds                                 ; 027e:0039
        push es                                 ; 027e:003a
        mov eax,[byte si+0xe]                   ; 027e:003b
        mov [cs:0x18],eax                       ; 027e:003f
        mov bx,[si]                             ; 027e:0044
        shl bx,byte 0x2                         ; 027e:0046
        mov [cs:0x1c],bx                        ; 027e:0049
        mov dl,[byte si+0x12]                   ; 027e:004e
        mov [cs:0x36],dl                        ; 027e:0051
        lds si,[byte si+0x2]                    ; 027e:0056
        or bx,bx                                ; 027e:0059
        jz near l_027e_0301                     ; 027e:005b
        mov ax,[bx+si]                          ; 027e:005f
        mov dx,ax                               ; 027e:0061
        mov [cs:0x0],bx                         ; 027e:0063
        mov [cs:0x2],bx                         ; 027e:0068
        sub bx,byte +0x4                        ; 027e:006d

l_027e_0070:
        mov cx,[bx+si]                          ; 027e:0070
        cmp dx,cx                               ; 027e:0072
        jng short l_027e_007f                   ; 027e:0074
        mov dx,cx                               ; 027e:0076
        mov [cs:0x2],bx                         ; 027e:0078
        jmp short l_027e_008a                   ; 027e:007d

l_027e_007f:
        cmp ax,cx                               ; 027e:007f
        jnl short l_027e_008a                   ; 027e:0081
        mov ax,cx                               ; 027e:0083
        mov [cs:0x0],bx                         ; 027e:0085

l_027e_008a:
        sub bx,byte +0x4                        ; 027e:008a
        jnc short l_027e_0070                   ; 027e:008d
        cmp ax,dx                               ; 027e:008f
        jz near l_027e_0301                     ; 027e:0091
        cmp ax,0x0                              ; 027e:0095
        jng near l_027e_0301                    ; 027e:0098
        cmp dx,0x140                            ; 027e:009c
        jnl near l_027e_0301                    ; 027e:00a0
        cmp ax,0x140                            ; 027e:00a4
        jng short l_027e_00ac                   ; 027e:00a7
        mov ax,0x140                            ; 027e:00a9

l_027e_00ac:
        mov [cs:0x6],ax                         ; 027e:00ac
        mov [cs:0x8],dx                         ; 027e:00b0
        movzx ebx,word [cs:0x2]                 ; 027e:00b5

l_027e_00bc:
        cmp dx,[bx+si]                          ; 027e:00bc
        jnz short l_027e_00cf                   ; 027e:00be
        add bx,byte +0x4                        ; 027e:00c0
        cmp bx,[cs:0x1c]                        ; 027e:00c3
        jna short l_027e_00cd                   ; 027e:00c8
        mov bx,0x0                              ; 027e:00ca

l_027e_00cd:
        jmp short l_027e_00bc                   ; 027e:00cd

l_027e_00cf:
        sub bx,byte +0x4                        ; 027e:00cf
        jnc short l_027e_00d9                   ; 027e:00d2
        mov bx,[cs:0x1c]                        ; 027e:00d4

l_027e_00d9:
        movzx esi,si                            ; 027e:00d9
        movzx eax,word [cs:0x2]                 ; 027e:00dd

l_027e_00e4:
        cmp dx,[esi+eax*1]                      ; 027e:00e4
        jnz short l_027e_00f5                   ; 027e:00e8
        sub ax,0x4                              ; 027e:00ea
        jnc short l_027e_00f3                   ; 027e:00ed
        mov ax,[cs:0x1c]                        ; 027e:00ef

l_027e_00f3:
        jmp short l_027e_00e4                   ; 027e:00f3

l_027e_00f5:
        add ax,0x4                              ; 027e:00f5
        cmp ax,[cs:0x1c]                        ; 027e:00f8
        jna short l_027e_0102                   ; 027e:00fd
        mov ax,0x0                              ; 027e:00ff

l_027e_0102:
        mov word [cs:0xa],0xfffc                ; 027e:0102
        mov cx,[byte esi+eax*1+0x2]             ; 027e:0109
        cmp cx,[byte esi+ebx*1+0x2]             ; 027e:010e
        jz short l_027e_0124                    ; 027e:0113
        jl near l_027e_01a8                     ; 027e:0115
        mov word [cs:0xa],0x4                   ; 027e:0119
        xchg ax,bx                              ; 027e:0120
        jmp near l_027e_01a8                    ; 027e:0121

l_027e_0124:
        mov edx,ebx                             ; 027e:0124
        add dx,byte +0x4                        ; 027e:0127
        cmp dx,[cs:0x1c]                        ; 027e:012a
        jna short l_027e_0134                   ; 027e:012f
        mov dx,0x0                              ; 027e:0131

l_027e_0134:
        mov ecx,eax                             ; 027e:0134
        sub cx,byte +0x4                        ; 027e:0137
        jnc short l_027e_0141                   ; 027e:013a
        mov cx,[cs:0x1c]                        ; 027e:013c

l_027e_0141:
        mov di,[esi+edx*1]                      ; 027e:0141
        sub di,[esi+eax*1]                      ; 027e:0145
        movsx edi,di                            ; 027e:0149
        mov [cs:0xc],edi                        ; 027e:014d
        mov di,[byte esi+edx*1+0x2]             ; 027e:0153
        sub di,[byte esi+eax*1+0x2]             ; 027e:0158
        movsx edi,di                            ; 027e:015d
        mov [cs:0x10],edi                       ; 027e:0161
        mov di,[esi+ecx*1]                      ; 027e:0167
        sub di,[esi+eax*1]                      ; 027e:016b
        movsx edi,di                            ; 027e:016f
        mov [cs:0x14],edi                       ; 027e:0173
        mov dx,[byte esi+ecx*1+0x2]             ; 027e:0179
        sub dx,[byte esi+eax*1+0x2]             ; 027e:017e
        movsx edx,dx                            ; 027e:0183
        imul edx,[cs:0xc]                       ; 027e:0187
        mov ecx,[cs:0x14]                       ; 027e:018e
        imul ecx,[cs:0x10]                      ; 027e:0194
        cmp edx,ecx                             ; 027e:019b
        jl short l_027e_01a8                    ; 027e:019e
        mov word [cs:0xa],0x4                   ; 027e:01a0
        xchg ax,bx                              ; 027e:01a7

l_027e_01a8:
        mov [cs:0x2],ax                         ; 027e:01a8
        mov [cs:0x4],bx                         ; 027e:01ac
        mov ax,[cs:0x6]                         ; 027e:01b1
        sub ax,[cs:0x8]                         ; 027e:01b5
        jng near l_027e_0301                    ; 027e:01ba
        mov bx,[cs:0x8]                         ; 027e:01be
        cmp bx,byte +0x0                        ; 027e:01c3
        jnl short l_027e_01d0                   ; 027e:01c6
        sub bx,byte +0x0                        ; 027e:01c8
        add ax,bx                               ; 027e:01cb
        mov bx,0x0                              ; 027e:01cd

l_027e_01d0:
        cmp ax,0x0                              ; 027e:01d0
        jng near l_027e_0301                    ; 027e:01d3
        mov [cs:0x20],bx                        ; 027e:01d7
        mov [cs:0x1e],ax                        ; 027e:01dc
        sub sp,0xa00                            ; 027e:01e0
        mov ax,ss                               ; 027e:01e4
        shl eax,byte 0x10                       ; 027e:01e6
        mov ax,sp                               ; 027e:01ea
        mov [cs:0x22],eax                       ; 027e:01ec
        mov [cs:0x32],eax                       ; 027e:01f1
        movzx eax,word [cs:0x2]                 ; 027e:01f6
        mov bx,ax                               ; 027e:01fd
        xor edi,edi                             ; 027e:01ff
        les di,[cs:0x18]                        ; 027e:0202

l_027e_0207:
        add bx,[cs:0xa]                         ; 027e:0207
        jns short l_027e_0213                   ; 027e:020c
        mov bx,[cs:0x1c]                        ; 027e:020e

l_027e_0213:
        cmp bx,[cs:0x1c]                        ; 027e:0213
        jna short l_027e_021c                   ; 027e:0218
        xor bx,bx                               ; 027e:021a

l_027e_021c:
        mov cx,[esi+eax*1]                      ; 027e:021c
        mov [cs:0x26],cx                        ; 027e:0220
        mov cx,[byte esi+eax*1+0x2]             ; 027e:0225
        mov [cs:0x28],cx                        ; 027e:022a
        mov cx,[esi+ebx*1]                      ; 027e:022f
        mov [cs:0x2a],cx                        ; 027e:0233
        mov cx,[byte esi+ebx*1+0x2]             ; 027e:0238
        mov [cs:0x2c],cx                        ; 027e:023d
        mov edx,eax                             ; 027e:0242
        shr edx,byte 0x2                        ; 027e:0245
        mov cl,[es:edi+edx*1]                   ; 027e:0249
        mov [cs:0x2e],cl                        ; 027e:024e
        mov edx,ebx                             ; 027e:0253
        shr edx,byte 0x2                        ; 027e:0256
        mov cl,[es:edi+edx*1]                   ; 027e:025a
        mov [cs:0x2f],cl                        ; 027e:025f
        mov word [cs:0x30],0x0                  ; 027e:0264
        call sub_027e_030c                      ; 027e:026b
        mov ax,bx                               ; 027e:026e
        cmp bx,[cs:0x0]                         ; 027e:0270
        jnz short l_027e_0207                   ; 027e:0275
        mov eax,[cs:0x22]                       ; 027e:0277
        mov [cs:0x32],eax                       ; 027e:027c
        xor eax,eax                             ; 027e:0281
        mov ax,[cs:0x4]                         ; 027e:0284
        mov bx,ax                               ; 027e:0288

l_027e_028a:
        sub bx,[cs:0xa]                         ; 027e:028a
        jns short l_027e_0296                   ; 027e:028f
        mov bx,[cs:0x1c]                        ; 027e:0291

l_027e_0296:
        cmp bx,[cs:0x1c]                        ; 027e:0296
        jna short l_027e_029f                   ; 027e:029b
        xor bx,bx                               ; 027e:029d

l_027e_029f:
        mov cx,[esi+eax*1]                      ; 027e:029f
        mov [cs:0x26],cx                        ; 027e:02a3
        mov cx,[byte esi+eax*1+0x2]             ; 027e:02a8
        mov [cs:0x28],cx                        ; 027e:02ad
        mov cx,[esi+ebx*1]                      ; 027e:02b2
        mov [cs:0x2a],cx                        ; 027e:02b6
        mov cx,[byte esi+ebx*1+0x2]             ; 027e:02bb
        mov [cs:0x2c],cx                        ; 027e:02c0
        mov edx,eax                             ; 027e:02c5
        shr edx,byte 0x2                        ; 027e:02c8
        mov cl,[es:edi+edx*1]                   ; 027e:02cc
        mov [cs:0x2e],cl                        ; 027e:02d1
        mov edx,ebx                             ; 027e:02d6
        shr edx,byte 0x2                        ; 027e:02d9
        mov cl,[es:edi+edx*1]                   ; 027e:02dd
        mov [cs:0x2f],cl                        ; 027e:02e2
        mov word [cs:0x30],0x4                  ; 027e:02e7
        call sub_027e_030c                      ; 027e:02ee
        mov ax,bx                               ; 027e:02f1
        cmp bx,[cs:0x0]                         ; 027e:02f3
        jnz short l_027e_028a                   ; 027e:02f8
        call sub_027e_0403                      ; 027e:02fa
        add sp,0xa00                            ; 027e:02fd

l_027e_0301:
        pop es                                  ; 027e:0301
        pop ds                                  ; 027e:0302
        popad                                   ; 027e:0303
        retf                                    ; 027e:0305
; data 027e:0306 (6 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00

sub_027e_030c:
        pushad                                  ; 027e:030c
        push ds                                 ; 027e:030e
        mov bx,[cs:0x2a]                        ; 027e:030f
        cmp bx,byte +0x0                        ; 027e:0314
        jng near l_027e_03fc                    ; 027e:0317
        mov cx,[cs:0x26]                        ; 027e:031b
        cmp cx,0x140                            ; 027e:0320
        jnl near l_027e_03fc                    ; 027e:0324
        sub bx,cx                               ; 027e:0328
        jng near l_027e_03fc                    ; 027e:032a
        mov ax,[cs:0x2c]                        ; 027e:032e
        sub ax,[cs:0x28]                        ; 027e:0332
        movsx ebx,bx                            ; 027e:0337
        shl eax,byte 0x10                       ; 027e:033b
        cdq                                     ; 027e:033f
        idiv ebx                                ; 027e:0341
        mov [cs:0x306],eax                      ; 027e:0344
        mov ah,[cs:0x2f]                        ; 027e:0349
        sub ah,[cs:0x2e]                        ; 027e:034e
        xor al,al                               ; 027e:0353
        cwd                                     ; 027e:0355
        idiv bx                                 ; 027e:0356
        mov [cs:0x30a],ax                       ; 027e:0358
        sub cx,byte +0x0                        ; 027e:035c
        jnl short l_027e_039c                   ; 027e:035f
        neg cx                                  ; 027e:0361
        sub bx,cx                               ; 027e:0363
        movzx ecx,cx                            ; 027e:0365
        mov esi,ecx                             ; 027e:0369
        imul esi,[cs:0x306]                     ; 027e:036c
        rol esi,byte 0x10                       ; 027e:0373
        add esi,0x80000000                      ; 027e:0377
        adc si,[cs:0x28]                        ; 027e:037e
        mov ax,cx                               ; 027e:0383
        imul word [cs:0x30a]                    ; 027e:0385
        mov cx,ax                               ; 027e:038a
        add ch,[cs:0x36]                        ; 027e:038c
        add ch,[cs:0x2e]                        ; 027e:0391
        add cx,0x80                             ; 027e:0396
        jmp short l_027e_03b5                   ; 027e:039a

l_027e_039c:
        mov esi,0x80000000                      ; 027e:039c
        mov si,[cs:0x28]                        ; 027e:03a2
        xor cx,cx                               ; 027e:03a7
        mov ch,[cs:0x36]                        ; 027e:03a9
        add ch,[cs:0x2e]                        ; 027e:03ae
        mov cl,0x80                             ; 027e:03b3

l_027e_03b5:
        lds di,[cs:0x32]                        ; 027e:03b5
        add di,[cs:0x30]                        ; 027e:03ba
        rol dword [cs:0x306],byte 0x10          ; 027e:03bf
        mov dx,[cs:0x2a]                        ; 027e:03c6
        sub dx,0x13f                            ; 027e:03cb
        jng short l_027e_03d4                   ; 027e:03cf
        sub bx,dx                               ; 027e:03d1
        inc bx                                  ; 027e:03d3

l_027e_03d4:
        cmp bx,byte +0x0                        ; 027e:03d4
        jng short l_027e_03fc                   ; 027e:03d7

l_027e_03d9:
        mov [di],si                             ; 027e:03d9
        mov [byte di+0x2],cx                    ; 027e:03db
        add di,byte +0x8                        ; 027e:03de
        add esi,[cs:0x306]                      ; 027e:03e1
        adc si,byte +0x0                        ; 027e:03e7
        add cx,[cs:0x30a]                       ; 027e:03ea
        dec bx                                  ; 027e:03ef
        jnz short l_027e_03d9                   ; 027e:03f0
        sub di,[cs:0x30]                        ; 027e:03f2
        mov [cs:0x32],di                        ; 027e:03f7

l_027e_03fc:
        pop ds                                  ; 027e:03fc
        popad                                   ; 027e:03fd
        ret                                     ; 027e:03ff
; data 027e:0400 (3 bytes)
        db 0x00,0x00,0x00

sub_027e_0403:
        lds si,[cs:0x22]                        ; 027e:0403
        mov dx,0x3c4                            ; 027e:0408
        mov al,0x2                              ; 027e:040b
        out dx,al                               ; 027e:040d
        mov cx,[cs:0x20]                        ; 027e:040e
        mov bx,cx                               ; 027e:0413
        shr bx,byte 0x2                         ; 027e:0415
        mov [cs:0x400],bx                       ; 027e:0418
        and cl,0x3                              ; 027e:041d
        mov al,0x11                             ; 027e:0420
        rol al,cl                               ; 027e:0422
        inc dx                                  ; 027e:0424
        out dx,al                               ; 027e:0425
        mov [cs:0x402],al                       ; 027e:0426

l_027e_042a:
        movzx ebx,word [si]                     ; 027e:042a
        movzx ecx,word [byte si+0x4]            ; 027e:042e
        cmp bx,0xc8                             ; 027e:0433
        jnl short l_027e_04ab                   ; 027e:0437
        cmp cx,byte +0x0                        ; 027e:0439
        jl short l_027e_04ab                    ; 027e:043c
        sub cx,bx                               ; 027e:043e
        jl short l_027e_04ab                    ; 027e:0440
        inc cx                                  ; 027e:0442
        mov ax,[byte si+0x6]                    ; 027e:0443
        sub ax,[byte si+0x2]                    ; 027e:0446
        shl eax,byte 0x10                       ; 027e:0449
        cdq                                     ; 027e:044d
        idiv ecx                                ; 027e:044f
        mov ebp,eax                             ; 027e:0452
        sub bx,byte +0x0                        ; 027e:0455
        jnl short l_027e_046f                   ; 027e:0458
        neg bx                                  ; 027e:045a
        sub cx,bx                               ; 027e:045c
        mov word [si],0x0                       ; 027e:045e
        imul ebx                                ; 027e:0462
        mov ebx,eax                             ; 027e:0465
        rol ebx,byte 0x10                       ; 027e:0468
        add [byte si+0x2],bx                    ; 027e:046c

l_027e_046f:
        mov bx,[byte si+0x4]                    ; 027e:046f
        sub bx,0xc7                             ; 027e:0472
        jng short l_027e_047a                   ; 027e:0476
        sub cx,bx                               ; 027e:0478

l_027e_047a:
        rol ebp,byte 0x8                        ; 027e:047a
        movzx edi,word [si]                     ; 027e:047e
        shl edi,byte 0x4                        ; 027e:0482
        lea edi,[edi+edi*4]                     ; 027e:0486
        add di,[cs:0x400]                       ; 027e:048b
        mov bx,[byte si+0x2]                    ; 027e:0490
        ror ebx,byte 0x8                        ; 027e:0493
        push ds                                 ; 027e:0497
        mov ax,gs                               ; 027e:0498
        mov ds,ax                               ; 027e:049a

l_027e_049c:
        add ebx,ebp                             ; 027e:049c
        adc bl,0x0                              ; 027e:049f
        mov [di],bl                             ; 027e:04a2
        add di,byte +0x50                       ; 027e:04a4
        dec cx                                  ; 027e:04a7
        jnz short l_027e_049c                   ; 027e:04a8
        pop ds                                  ; 027e:04aa

l_027e_04ab:
        add si,byte +0x8                        ; 027e:04ab
        mov al,[cs:0x402]                       ; 027e:04ae
        rol al,1                                ; 027e:04b2
        mov [cs:0x402],al                       ; 027e:04b4
        adc word [cs:0x400],byte +0x0           ; 027e:04b8
        mov dx,0x3c5                            ; 027e:04be
        out dx,al                               ; 027e:04c1
        dec word [cs:0x1e]                      ; 027e:04c2
        jnz near l_027e_042a                    ; 027e:04c7
        ret                                     ; 027e:04cb
; data 027e:04cc (2 bytes)
        db 0x00,0x00

;======================================================================
; segment 02ca  (image 0x02cae-0x0316b)
;======================================================================
section seg_02ca start=0x2cae vstart=0xe

far_02ca_000e:
        push ax                                 ; 02ca:000e
        push bx                                 ; 02ca:000f
        push cx                                 ; 02ca:0010
        push si                                 ; 02ca:0011
        push di                                 ; 02ca:0012
        push ds                                 ; 02ca:0013
        push es                                 ; 02ca:0014
        mov bx,0x101                            ; 02ca:0015
        call 0x027c:far_027c_0002               ; 02ca:0018
        mov es,ax                               ; 02ca:001d
        mov [cs:0xc],ax                         ; 02ca:001f
        xor di,di                               ; 02ca:0023
        mov si,cs                               ; 02ca:0025
        mov ds,si                               ; 02ca:0027
        mov si,0x97                             ; 02ca:0029
        mov cx,0x200                            ; 02ca:002c
        rep movsw                               ; 02ca:002f
        mov cx,0x200                            ; 02ca:0031

l_02ca_0034:
        mov ax,[si]                             ; 02ca:0034
        sub si,byte +0x2                        ; 02ca:0036
        stosw                                   ; 02ca:0039
        loop l_02ca_0034                        ; 02ca:003a
        mov cx,0x200                            ; 02ca:003c

l_02ca_003f:
        lodsw                                   ; 02ca:003f
        neg ax                                  ; 02ca:0040
        stosw                                   ; 02ca:0042
        loop l_02ca_003f                        ; 02ca:0043
        mov cx,0x200                            ; 02ca:0045

l_02ca_0048:
        mov ax,[si]                             ; 02ca:0048
        sub si,byte +0x2                        ; 02ca:004a
        neg ax                                  ; 02ca:004d
        stosw                                   ; 02ca:004f
        loop l_02ca_0048                        ; 02ca:0050
        clc                                     ; 02ca:0052
        pop es                                  ; 02ca:0053
        pop ds                                  ; 02ca:0054
        pop di                                  ; 02ca:0055
        pop si                                  ; 02ca:0056
        pop cx                                  ; 02ca:0057
        pop bx                                  ; 02ca:0058
        pop ax                                  ; 02ca:0059
        retf                                    ; 02ca:005a

far_02ca_005b:
        push ax                                 ; 02ca:005b
        push es                                 ; 02ca:005c
        mov es,[cs:0xc]                         ; 02ca:005d
        call 0x027c:far_027c_0010               ; 02ca:0062
        pop es                                  ; 02ca:0067
        pop ax                                  ; 02ca:0068
        retf                                    ; 02ca:0069

far_02ca_006a:
        push si                                 ; 02ca:006a
        push ds                                 ; 02ca:006b
        and ax,0xffe0                           ; 02ca:006c
        shr ax,byte 0x4                         ; 02ca:006f
        mov si,ax                               ; 02ca:0072
        mov ds,[cs:0xc]                         ; 02ca:0074
        mov ax,[si]                             ; 02ca:0079
        pop ds                                  ; 02ca:007b
        pop si                                  ; 02ca:007c
        retf                                    ; 02ca:007d

far_02ca_007e:
        push si                                 ; 02ca:007e
        push ds                                 ; 02ca:007f
        sub ax,0x4000                           ; 02ca:0080
        neg ax                                  ; 02ca:0083
        and ax,0xffe0                           ; 02ca:0085
        shr ax,byte 0x4                         ; 02ca:0088
        mov si,ax                               ; 02ca:008b
        mov ds,[cs:0xc]                         ; 02ca:008d
        mov ax,[si]                             ; 02ca:0092
        pop ds                                  ; 02ca:0094
        pop si                                  ; 02ca:0095
        retf                                    ; 02ca:0096
        incbin "data/d_02d37.bin"   ; 0x434 bytes of data at 02ca:0097

;======================================================================
; segment 0313  (image 0x0316b-0x0358f)
;======================================================================
section seg_0313 start=0x316b vstart=0x3b

far_0313_003b:
        pushad                                  ; 0313:003b
        push ds                                 ; 0313:003d
        mov bx,[si]                             ; 0313:003e
        shl bx,byte 0x2                         ; 0313:0040
        mov [cs:0x39],bx                        ; 0313:0043
        mov dl,[byte si+0x12]                   ; 0313:0048
        mov [cs:0x38],dl                        ; 0313:004b
        lds si,[byte si+0x2]                    ; 0313:0050
        or bx,bx                                ; 0313:0053
        jz near l_0313_02ac                     ; 0313:0055
        mov ax,[byte bx+si+0x2]                 ; 0313:0059
        mov dx,ax                               ; 0313:005c
        mov [cs:0xa],bx                         ; 0313:005e
        mov [cs:0xc],bx                         ; 0313:0063
        sub bx,byte +0x4                        ; 0313:0068

l_0313_006b:
        mov cx,[byte bx+si+0x2]                 ; 0313:006b
        cmp dx,cx                               ; 0313:006e
        jng short l_0313_007b                   ; 0313:0070
        mov dx,cx                               ; 0313:0072
        mov [cs:0xc],bx                         ; 0313:0074
        jmp short l_0313_0086                   ; 0313:0079

l_0313_007b:
        cmp ax,cx                               ; 0313:007b
        jnl short l_0313_0086                   ; 0313:007d
        mov ax,cx                               ; 0313:007f
        mov [cs:0xa],bx                         ; 0313:0081

l_0313_0086:
        sub bx,byte +0x4                        ; 0313:0086
        jnc short l_0313_006b                   ; 0313:0089
        cmp ax,dx                               ; 0313:008b
        jz near l_0313_02ac                     ; 0313:008d
        cmp ax,0x0                              ; 0313:0091
        jng near l_0313_02ac                    ; 0313:0094
        cmp dx,0xc8                             ; 0313:0098
        jnl near l_0313_02ac                    ; 0313:009c
        cmp ax,0xc8                             ; 0313:00a0
        jng short l_0313_00a8                   ; 0313:00a3
        mov ax,0xc8                             ; 0313:00a5

l_0313_00a8:
        mov [cs:0x10],ax                        ; 0313:00a8
        mov [cs:0x12],dx                        ; 0313:00ac
        movzx ebx,word [cs:0xc]                 ; 0313:00b1

l_0313_00b8:
        cmp dx,[byte bx+si+0x2]                 ; 0313:00b8
        jnz short l_0313_00cc                   ; 0313:00bb
        add bx,byte +0x4                        ; 0313:00bd
        cmp bx,[cs:0x39]                        ; 0313:00c0
        jna short l_0313_00ca                   ; 0313:00c5
        mov bx,0x0                              ; 0313:00c7

l_0313_00ca:
        jmp short l_0313_00b8                   ; 0313:00ca

l_0313_00cc:
        sub bx,byte +0x4                        ; 0313:00cc
        jnc short l_0313_00d6                   ; 0313:00cf
        mov bx,[cs:0x39]                        ; 0313:00d1

l_0313_00d6:
        movzx esi,si                            ; 0313:00d6
        movzx eax,word [cs:0xc]                 ; 0313:00da

l_0313_00e1:
        cmp dx,[byte esi+eax*1+0x2]             ; 0313:00e1
        jnz short l_0313_00f3                   ; 0313:00e6
        sub ax,0x4                              ; 0313:00e8
        jnc short l_0313_00f1                   ; 0313:00eb
        mov ax,[cs:0x39]                        ; 0313:00ed

l_0313_00f1:
        jmp short l_0313_00e1                   ; 0313:00f1

l_0313_00f3:
        add ax,0x4                              ; 0313:00f3
        cmp ax,[cs:0x39]                        ; 0313:00f6
        jna short l_0313_0100                   ; 0313:00fb
        mov ax,0x0                              ; 0313:00fd

l_0313_0100:
        mov word [cs:0x14],0xfffc               ; 0313:0100
        mov cx,[esi+eax*1]                      ; 0313:0107
        cmp cx,[esi+ebx*1]                      ; 0313:010b
        jz short l_0313_0120                    ; 0313:010f
        jl near l_0313_01a4                     ; 0313:0111
        mov word [cs:0x14],0x4                  ; 0313:0115
        xchg ax,bx                              ; 0313:011c
        jmp near l_0313_01a4                    ; 0313:011d

l_0313_0120:
        mov edx,ebx                             ; 0313:0120
        add dx,byte +0x4                        ; 0313:0123
        cmp dx,[cs:0x39]                        ; 0313:0126
        jna short l_0313_0130                   ; 0313:012b
        mov dx,0x0                              ; 0313:012d

l_0313_0130:
        mov ecx,eax                             ; 0313:0130
        sub cx,byte +0x4                        ; 0313:0133
        jnc short l_0313_013d                   ; 0313:0136
        mov cx,[cs:0x39]                        ; 0313:0138

l_0313_013d:
        mov di,[esi+edx*1]                      ; 0313:013d
        sub di,[esi+eax*1]                      ; 0313:0141
        movsx edi,di                            ; 0313:0145
        mov [cs:0x16],edi                       ; 0313:0149
        mov di,[byte esi+edx*1+0x2]             ; 0313:014f
        sub di,[byte esi+eax*1+0x2]             ; 0313:0154
        movsx edi,di                            ; 0313:0159
        mov [cs:0x1a],edi                       ; 0313:015d
        mov di,[esi+ecx*1]                      ; 0313:0163
        sub di,[esi+eax*1]                      ; 0313:0167
        movsx edi,di                            ; 0313:016b
        mov [cs:0x1e],edi                       ; 0313:016f
        mov dx,[byte esi+ecx*1+0x2]             ; 0313:0175
        sub dx,[byte esi+eax*1+0x2]             ; 0313:017a
        movsx edx,dx                            ; 0313:017f
        imul edx,[cs:0x16]                      ; 0313:0183
        mov ecx,[cs:0x1e]                       ; 0313:018a
        imul ecx,[cs:0x1a]                      ; 0313:0190
        cmp edx,ecx                             ; 0313:0197
        jnl short l_0313_01a4                   ; 0313:019a
        mov word [cs:0x14],0x4                  ; 0313:019c
        xchg ax,bx                              ; 0313:01a3

l_0313_01a4:
        mov [cs:0xc],ax                         ; 0313:01a4
        mov [cs:0xe],bx                         ; 0313:01a8
        mov ax,[cs:0x10]                        ; 0313:01ad
        sub ax,[cs:0x12]                        ; 0313:01b1
        jng near l_0313_02ac                    ; 0313:01b6
        mov bx,[cs:0x12]                        ; 0313:01ba
        cmp bx,byte +0x0                        ; 0313:01bf
        jnl short l_0313_01cc                   ; 0313:01c2
        sub bx,byte +0x0                        ; 0313:01c4
        add ax,bx                               ; 0313:01c7
        mov bx,0x0                              ; 0313:01c9

l_0313_01cc:
        mov [cs:0x24],bx                        ; 0313:01cc
        mov [cs:0x22],ax                        ; 0313:01d1
        sub sp,0x320                            ; 0313:01d5
        mov ax,ss                               ; 0313:01d9
        shl eax,byte 0x10                       ; 0313:01db
        mov ax,sp                               ; 0313:01df
        mov [cs:0x26],eax                       ; 0313:01e1
        mov [cs:0x34],eax                       ; 0313:01e6
        xor eax,eax                             ; 0313:01eb
        mov ax,[cs:0xc]                         ; 0313:01ee
        mov bx,ax                               ; 0313:01f2

l_0313_01f4:
        add bx,[cs:0x14]                        ; 0313:01f4
        jns short l_0313_0200                   ; 0313:01f9
        mov bx,[cs:0x39]                        ; 0313:01fb

l_0313_0200:
        cmp bx,[cs:0x39]                        ; 0313:0200
        jna short l_0313_0209                   ; 0313:0205
        xor bx,bx                               ; 0313:0207

l_0313_0209:
        mov cx,[esi+eax*1]                      ; 0313:0209
        mov [cs:0x2a],cx                        ; 0313:020d
        mov cx,[byte esi+eax*1+0x2]             ; 0313:0212
        mov [cs:0x2c],cx                        ; 0313:0217
        mov cx,[esi+ebx*1]                      ; 0313:021c
        mov [cs:0x2e],cx                        ; 0313:0220
        mov cx,[byte esi+ebx*1+0x2]             ; 0313:0225
        mov [cs:0x30],cx                        ; 0313:022a
        mov word [cs:0x32],0x0                  ; 0313:022f
        call sub_0313_02b0                      ; 0313:0236
        mov ax,bx                               ; 0313:0239
        cmp bx,[cs:0xa]                         ; 0313:023b
        jnz short l_0313_01f4                   ; 0313:0240
        mov eax,[cs:0x26]                       ; 0313:0242
        mov [cs:0x34],eax                       ; 0313:0247
        xor eax,eax                             ; 0313:024c
        mov ax,[cs:0xe]                         ; 0313:024f
        mov bx,ax                               ; 0313:0253

l_0313_0255:
        sub bx,[cs:0x14]                        ; 0313:0255
        jns short l_0313_0261                   ; 0313:025a
        mov bx,[cs:0x39]                        ; 0313:025c

l_0313_0261:
        cmp bx,[cs:0x39]                        ; 0313:0261
        jna short l_0313_026a                   ; 0313:0266
        xor bx,bx                               ; 0313:0268

l_0313_026a:
        mov cx,[esi+eax*1]                      ; 0313:026a
        dec cx                                  ; 0313:026e
        mov [cs:0x2a],cx                        ; 0313:026f
        mov cx,[byte esi+eax*1+0x2]             ; 0313:0274
        mov [cs:0x2c],cx                        ; 0313:0279
        mov cx,[esi+ebx*1]                      ; 0313:027e
        dec cx                                  ; 0313:0282
        mov [cs:0x2e],cx                        ; 0313:0283
        mov cx,[byte esi+ebx*1+0x2]             ; 0313:0288
        mov [cs:0x30],cx                        ; 0313:028d
        mov word [cs:0x32],0x2                  ; 0313:0292
        call sub_0313_02b0                      ; 0313:0299
        mov ax,bx                               ; 0313:029c
        cmp bx,[cs:0xa]                         ; 0313:029e
        jnz short l_0313_0255                   ; 0313:02a3
        call sub_0313_0362                      ; 0313:02a5
        add sp,0x320                            ; 0313:02a8

l_0313_02ac:
        pop ds                                  ; 0313:02ac
        popad                                   ; 0313:02ad
        retf                                    ; 0313:02af

sub_0313_02b0:
        push eax                                ; 0313:02b0
        push ebx                                ; 0313:02b2
        push ecx                                ; 0313:02b4
        push di                                 ; 0313:02b6
        push ds                                 ; 0313:02b7
        mov bx,[cs:0x30]                        ; 0313:02b8
        cmp bx,byte +0x0                        ; 0313:02bd
        jng near l_0313_034c                    ; 0313:02c0
        mov cx,[cs:0x2c]                        ; 0313:02c4
        cmp cx,0xc8                             ; 0313:02c9
        jnl short l_0313_034c                   ; 0313:02cd
        nop                                     ; 0313:02cf
        nop                                     ; 0313:02d0
        sub bx,cx                               ; 0313:02d1
        jng short l_0313_034c                   ; 0313:02d3
        lds di,[cs:0x34]                        ; 0313:02d5
        add di,[cs:0x32]                        ; 0313:02da
        mov ax,[cs:0x2e]                        ; 0313:02df
        sub ax,[cs:0x2a]                        ; 0313:02e3
        shl eax,byte 0x10                       ; 0313:02e8
        cdq                                     ; 0313:02ec
        movsx ebx,bx                            ; 0313:02ee
        idiv ebx                                ; 0313:02f2
        sub cx,byte +0x0                        ; 0313:02f5
        jnl short l_0313_0318                   ; 0313:02f8
        neg cx                                  ; 0313:02fa
        sub bx,cx                               ; 0313:02fc
        movzx ecx,cx                            ; 0313:02fe
        imul ecx,eax                            ; 0313:0302
        rol ecx,byte 0x10                       ; 0313:0306
        add ecx,0x80000000                      ; 0313:030a
        adc cx,[cs:0x2a]                        ; 0313:0311
        jmp short l_0313_0323                   ; 0313:0316

l_0313_0318:
        mov ecx,0x80000000                      ; 0313:0318
        mov cx,[cs:0x2a]                        ; 0313:031e

l_0313_0323:
        rol eax,byte 0x10                       ; 0313:0323
        mov dx,[cs:0x30]                        ; 0313:0327
        sub dx,0xc8                             ; 0313:032c
        jng short l_0313_0334                   ; 0313:0330
        sub bx,dx                               ; 0313:0332

l_0313_0334:
        mov [di],cx                             ; 0313:0334
        add di,byte +0x4                        ; 0313:0336
        add ecx,eax                             ; 0313:0339
        adc cx,byte +0x0                        ; 0313:033c
        dec bx                                  ; 0313:033f
        jnz short l_0313_0334                   ; 0313:0340
        sub di,[cs:0x32]                        ; 0313:0342
        mov [cs:0x34],di                        ; 0313:0347

l_0313_034c:
        pop ds                                  ; 0313:034c
        pop di                                  ; 0313:034d
        pop ecx                                 ; 0313:034e
        pop ebx                                 ; 0313:0350
        pop eax                                 ; 0313:0352
        ret                                     ; 0313:0354
; data 0313:0355 (9 bytes)
        db 0x0f,0x0e,0x0c,0x08,0x01,0x03,0x07,0x0f,0x90

l_0313_035e:
        jmp near l_0313_0409                    ; 0313:035e
; data 0313:0361 (1 bytes)
        db 0x90

sub_0313_0362:
        push bp                                 ; 0313:0362
        mov bp,sp                               ; 0313:0363
        push ds                                 ; 0313:0365
        push es                                 ; 0313:0366
        cld                                     ; 0313:0367
        mov dx,0x3c4                            ; 0313:0368
        mov al,0x2                              ; 0313:036b
        out dx,al                               ; 0313:036d
        mov ax,gs                               ; 0313:036e
        mov es,ax                               ; 0313:0370
        lds bx,[cs:0x26]                        ; 0313:0372
        movzx edx,word [cs:0x24]                ; 0313:0377
        mov si,[cs:0x22]                        ; 0313:037e
        cmp si,byte +0x0                        ; 0313:0383
        jng short l_0313_035e                   ; 0313:0386
        shl dx,byte 0x4                         ; 0313:0388
        lea edx,[edx+edx*4]                     ; 0313:038b
        mov ah,[cs:0x38]                        ; 0313:0390

l_0313_0395:
        push bx                                 ; 0313:0395
        push dx                                 ; 0313:0396
        push si                                 ; 0313:0397
        mov di,[bx]                             ; 0313:0398
        cmp di,byte +0x0                        ; 0313:039a
        jnl short l_0313_03a2                   ; 0313:039d
        mov di,0x0                              ; 0313:039f

l_0313_03a2:
        mov si,di                               ; 0313:03a2
        mov cx,[byte bx+0x2]                    ; 0313:03a4
        cmp cx,0x140                            ; 0313:03a7
        jl short l_0313_03b1                    ; 0313:03ab
        mov cx,0x140                            ; 0313:03ad
        dec cx                                  ; 0313:03b0

l_0313_03b1:
        cmp cx,di                               ; 0313:03b1
        jl short l_0313_03fd                    ; 0313:03b3
        shr di,1                                ; 0313:03b5
        shr di,1                                ; 0313:03b7
        add di,dx                               ; 0313:03b9
        mov dx,si                               ; 0313:03bb
        and si,byte +0x3                        ; 0313:03bd
        mov bh,[word cs:si+0x355]               ; 0313:03c0
        mov si,cx                               ; 0313:03c5
        and si,byte +0x3                        ; 0313:03c7
        mov bl,[word cs:si+0x359]               ; 0313:03ca
        and dx,byte -0x4                        ; 0313:03cf
        sub cx,dx                               ; 0313:03d2
        shr cx,1                                ; 0313:03d4
        shr cx,1                                ; 0313:03d6
        jnz short l_0313_03dc                   ; 0313:03d8
        and bh,bl                               ; 0313:03da

l_0313_03dc:
        mov dx,0x3c5                            ; 0313:03dc
        mov al,bh                               ; 0313:03df
        out dx,al                               ; 0313:03e1
        mov al,ah                               ; 0313:03e2
        stosb                                   ; 0313:03e4
        dec cx                                  ; 0313:03e5
        js short l_0313_03fd                    ; 0313:03e6
        jz short l_0313_03f7                    ; 0313:03e8
        mov al,0xf                              ; 0313:03ea
        out dx,al                               ; 0313:03ec
        mov al,ah                               ; 0313:03ed
        shr cx,1                                ; 0313:03ef
        rep stosw                               ; 0313:03f1
        adc cx,cx                               ; 0313:03f3
        rep stosb                               ; 0313:03f5

l_0313_03f7:
        mov al,bl                               ; 0313:03f7
        out dx,al                               ; 0313:03f9
        mov al,ah                               ; 0313:03fa
        stosb                                   ; 0313:03fc

l_0313_03fd:
        pop si                                  ; 0313:03fd
        pop dx                                  ; 0313:03fe
        pop bx                                  ; 0313:03ff
        add dx,byte +0x50                       ; 0313:0400
        add bx,byte +0x4                        ; 0313:0403
        dec si                                  ; 0313:0406
        jnz short l_0313_0395                   ; 0313:0407

l_0313_0409:
        pop es                                  ; 0313:0409
        pop ds                                  ; 0313:040a
        pop bp                                  ; 0313:040b
        ret                                     ; 0313:040c
; data 0313:040d (82 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00

;======================================================================
; segment 0353  (image 0x0358f-0x05c94)
; 3D: transformations (heavy IMUL)
;======================================================================
section seg_0353 start=0x358f vstart=0x5f

far_0353_005f:
        pushad                                  ; 0353:005f
        push ds                                 ; 0353:0061
        push es                                 ; 0353:0062
        mov eax,[byte si+0x6]                   ; 0353:0063
        mov [cs:0x36],eax                       ; 0353:0067
        mov eax,[byte si+0xa]                   ; 0353:006c
        mov [cs:0x3a],eax                       ; 0353:0070
        mov bx,[si]                             ; 0353:0075
        shl bx,byte 0x2                         ; 0353:0077
        mov [cs:0x3e],bx                        ; 0353:007a
        mov dl,[byte si+0x12]                   ; 0353:007f
        mov [cs:0x5e],dl                        ; 0353:0082
        lds si,[byte si+0x2]                    ; 0353:0087
        or bx,bx                                ; 0353:008a
        jz near l_0353_0342                     ; 0353:008c
        mov ax,[bx+si]                          ; 0353:0090
        mov dx,ax                               ; 0353:0092
        mov [cs:0x1e],bx                        ; 0353:0094
        mov [cs:0x20],bx                        ; 0353:0099
        sub bx,byte +0x4                        ; 0353:009e

l_0353_00a1:
        mov cx,[bx+si]                          ; 0353:00a1
        cmp dx,cx                               ; 0353:00a3
        jng short l_0353_00b0                   ; 0353:00a5
        mov dx,cx                               ; 0353:00a7
        mov [cs:0x20],bx                        ; 0353:00a9
        jmp short l_0353_00bb                   ; 0353:00ae

l_0353_00b0:
        cmp ax,cx                               ; 0353:00b0
        jnl short l_0353_00bb                   ; 0353:00b2
        mov ax,cx                               ; 0353:00b4
        mov [cs:0x1e],bx                        ; 0353:00b6

l_0353_00bb:
        sub bx,byte +0x4                        ; 0353:00bb
        jnc short l_0353_00a1                   ; 0353:00be
        cmp ax,dx                               ; 0353:00c0
        jz near l_0353_0342                     ; 0353:00c2
        cmp ax,0x0                              ; 0353:00c6
        jng near l_0353_0342                    ; 0353:00c9
        cmp dx,0x140                            ; 0353:00cd
        jnl near l_0353_0342                    ; 0353:00d1
        cmp ax,0x140                            ; 0353:00d5
        jng short l_0353_00dd                   ; 0353:00d8
        mov ax,0x140                            ; 0353:00da

l_0353_00dd:
        mov [cs:0x24],ax                        ; 0353:00dd
        mov [cs:0x26],dx                        ; 0353:00e1
        movzx ebx,word [cs:0x20]                ; 0353:00e6

l_0353_00ed:
        cmp dx,[bx+si]                          ; 0353:00ed
        jnz short l_0353_0100                   ; 0353:00ef
        add bx,byte +0x4                        ; 0353:00f1
        cmp bx,[cs:0x3e]                        ; 0353:00f4
        jna short l_0353_00fe                   ; 0353:00f9
        mov bx,0x0                              ; 0353:00fb

l_0353_00fe:
        jmp short l_0353_00ed                   ; 0353:00fe

l_0353_0100:
        sub bx,byte +0x4                        ; 0353:0100
        jnc short l_0353_010a                   ; 0353:0103
        mov bx,[cs:0x3e]                        ; 0353:0105

l_0353_010a:
        movzx esi,si                            ; 0353:010a
        movzx eax,word [cs:0x20]                ; 0353:010e

l_0353_0115:
        cmp dx,[esi+eax*1]                      ; 0353:0115
        jnz short l_0353_0126                   ; 0353:0119
        sub ax,0x4                              ; 0353:011b
        jnc short l_0353_0124                   ; 0353:011e
        mov ax,[cs:0x3e]                        ; 0353:0120

l_0353_0124:
        jmp short l_0353_0115                   ; 0353:0124

l_0353_0126:
        add ax,0x4                              ; 0353:0126
        cmp ax,[cs:0x3e]                        ; 0353:0129
        jna short l_0353_0133                   ; 0353:012e
        mov ax,0x0                              ; 0353:0130

l_0353_0133:
        mov word [cs:0x28],0xfffc               ; 0353:0133
        mov cx,[byte esi+eax*1+0x2]             ; 0353:013a
        cmp cx,[byte esi+ebx*1+0x2]             ; 0353:013f
        jz short l_0353_0155                    ; 0353:0144
        jl near l_0353_01d9                     ; 0353:0146
        mov word [cs:0x28],0x4                  ; 0353:014a
        xchg ax,bx                              ; 0353:0151
        jmp near l_0353_01d9                    ; 0353:0152

l_0353_0155:
        mov edx,ebx                             ; 0353:0155
        add dx,byte +0x4                        ; 0353:0158
        cmp dx,[cs:0x3e]                        ; 0353:015b
        jna short l_0353_0165                   ; 0353:0160
        mov dx,0x0                              ; 0353:0162

l_0353_0165:
        mov ecx,eax                             ; 0353:0165
        sub cx,byte +0x4                        ; 0353:0168
        jnc short l_0353_0172                   ; 0353:016b
        mov cx,[cs:0x3e]                        ; 0353:016d

l_0353_0172:
        mov di,[esi+edx*1]                      ; 0353:0172
        sub di,[esi+eax*1]                      ; 0353:0176
        movsx edi,di                            ; 0353:017a
        mov [cs:0x2a],edi                       ; 0353:017e
        mov di,[byte esi+edx*1+0x2]             ; 0353:0184
        sub di,[byte esi+eax*1+0x2]             ; 0353:0189
        movsx edi,di                            ; 0353:018e
        mov [cs:0x2e],edi                       ; 0353:0192
        mov di,[esi+ecx*1]                      ; 0353:0198
        sub di,[esi+eax*1]                      ; 0353:019c
        movsx edi,di                            ; 0353:01a0
        mov [cs:0x32],edi                       ; 0353:01a4
        mov dx,[byte esi+ecx*1+0x2]             ; 0353:01aa
        sub dx,[byte esi+eax*1+0x2]             ; 0353:01af
        movsx edx,dx                            ; 0353:01b4
        imul edx,[cs:0x2a]                      ; 0353:01b8
        mov ecx,[cs:0x32]                       ; 0353:01bf
        imul ecx,[cs:0x2e]                      ; 0353:01c5
        cmp edx,ecx                             ; 0353:01cc
        jl short l_0353_01d9                    ; 0353:01cf
        mov word [cs:0x28],0x4                  ; 0353:01d1
        xchg ax,bx                              ; 0353:01d8

l_0353_01d9:
        mov [cs:0x20],ax                        ; 0353:01d9
        mov [cs:0x22],bx                        ; 0353:01dd
        mov ax,[cs:0x24]                        ; 0353:01e2
        sub ax,[cs:0x26]                        ; 0353:01e6
        jng near l_0353_0342                    ; 0353:01eb
        mov bx,[cs:0x26]                        ; 0353:01ef
        cmp bx,byte +0x0                        ; 0353:01f4
        jnl short l_0353_0201                   ; 0353:01f7
        sub bx,byte +0x0                        ; 0353:01f9
        add ax,bx                               ; 0353:01fc
        mov bx,0x0                              ; 0353:01fe

l_0353_0201:
        cmp ax,0x0                              ; 0353:0201
        jng near l_0353_0342                    ; 0353:0204
        mov [cs:0x42],bx                        ; 0353:0208
        mov [cs:0x40],ax                        ; 0353:020d
        sub sp,0xf00                            ; 0353:0211
        mov ax,ss                               ; 0353:0215
        shl eax,byte 0x10                       ; 0353:0217
        mov ax,sp                               ; 0353:021b
        mov [cs:0x44],eax                       ; 0353:021d
        mov [cs:0x5a],eax                       ; 0353:0222
        movzx eax,word [cs:0x20]                ; 0353:0227
        mov bx,ax                               ; 0353:022e
        xor edi,edi                             ; 0353:0230
        les di,[cs:0x3a]                        ; 0353:0233

l_0353_0238:
        add bx,[cs:0x28]                        ; 0353:0238
        jns short l_0353_0244                   ; 0353:023d
        mov bx,[cs:0x3e]                        ; 0353:023f

l_0353_0244:
        cmp bx,[cs:0x3e]                        ; 0353:0244
        jna short l_0353_024d                   ; 0353:0249
        xor bx,bx                               ; 0353:024b

l_0353_024d:
        mov cx,[esi+eax*1]                      ; 0353:024d
        mov [cs:0x48],cx                        ; 0353:0251
        mov cx,[byte esi+eax*1+0x2]             ; 0353:0256
        mov [cs:0x4a],cx                        ; 0353:025b
        mov cx,[esi+ebx*1]                      ; 0353:0260
        mov [cs:0x4c],cx                        ; 0353:0264
        mov cx,[byte esi+ebx*1+0x2]             ; 0353:0269
        mov [cs:0x4e],cx                        ; 0353:026e
        mov cx,[es:edi+eax*1]                   ; 0353:0273
        mov [cs:0x50],cx                        ; 0353:0278
        mov cx,[byte es:edi+eax*1+0x2]          ; 0353:027d
        mov [cs:0x52],cx                        ; 0353:0283
        mov cx,[es:edi+ebx*1]                   ; 0353:0288
        mov [cs:0x54],cx                        ; 0353:028d
        mov cx,[byte es:edi+ebx*1+0x2]          ; 0353:0292
        mov [cs:0x56],cx                        ; 0353:0298
        mov word [cs:0x58],0x0                  ; 0353:029d
        call sub_0353_0353                      ; 0353:02a4
        mov ax,bx                               ; 0353:02a7
        cmp bx,[cs:0x1e]                        ; 0353:02a9
        jnz short l_0353_0238                   ; 0353:02ae
        mov eax,[cs:0x44]                       ; 0353:02b0
        mov [cs:0x5a],eax                       ; 0353:02b5
        xor eax,eax                             ; 0353:02ba
        mov ax,[cs:0x22]                        ; 0353:02bd
        mov bx,ax                               ; 0353:02c1

l_0353_02c3:
        sub bx,[cs:0x28]                        ; 0353:02c3
        jns short l_0353_02cf                   ; 0353:02c8
        mov bx,[cs:0x3e]                        ; 0353:02ca

l_0353_02cf:
        cmp bx,[cs:0x3e]                        ; 0353:02cf
        jna short l_0353_02d8                   ; 0353:02d4
        xor bx,bx                               ; 0353:02d6

l_0353_02d8:
        mov cx,[esi+eax*1]                      ; 0353:02d8
        mov [cs:0x48],cx                        ; 0353:02dc
        mov cx,[byte esi+eax*1+0x2]             ; 0353:02e1
        mov [cs:0x4a],cx                        ; 0353:02e6
        mov cx,[esi+ebx*1]                      ; 0353:02eb
        mov [cs:0x4c],cx                        ; 0353:02ef
        mov cx,[byte esi+ebx*1+0x2]             ; 0353:02f4
        mov [cs:0x4e],cx                        ; 0353:02f9
        mov cx,[es:edi+eax*1]                   ; 0353:02fe
        mov [cs:0x50],cx                        ; 0353:0303
        mov cx,[byte es:edi+eax*1+0x2]          ; 0353:0308
        mov [cs:0x52],cx                        ; 0353:030e
        mov cx,[es:edi+ebx*1]                   ; 0353:0313
        mov [cs:0x54],cx                        ; 0353:0318
        mov cx,[byte es:edi+ebx*1+0x2]          ; 0353:031d
        mov [cs:0x56],cx                        ; 0353:0323
        mov word [cs:0x58],0x6                  ; 0353:0328
        call sub_0353_0353                      ; 0353:032f
        mov ax,bx                               ; 0353:0332
        cmp bx,[cs:0x1e]                        ; 0353:0334
        jnz short l_0353_02c3                   ; 0353:0339
        call sub_0353_04a5                      ; 0353:033b
        add sp,0xf00                            ; 0353:033e

l_0353_0342:
        pop es                                  ; 0353:0342
        pop ds                                  ; 0353:0343
        popad                                   ; 0353:0344
        retf                                    ; 0353:0346
; data 0353:0347 (12 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

sub_0353_0353:
        pushad                                  ; 0353:0353
        push ds                                 ; 0353:0355
        mov bx,[cs:0x4c]                        ; 0353:0356
        cmp bx,byte +0x0                        ; 0353:035b
        jng near l_0353_049e                    ; 0353:035e
        mov cx,[cs:0x48]                        ; 0353:0362
        cmp cx,0x140                            ; 0353:0367
        jnl near l_0353_049e                    ; 0353:036b
        sub bx,cx                               ; 0353:036f
        jng near l_0353_049e                    ; 0353:0371
        mov ax,[cs:0x4e]                        ; 0353:0375
        sub ax,[cs:0x4a]                        ; 0353:0379
        movsx ebx,bx                            ; 0353:037e
        shl eax,byte 0x10                       ; 0353:0382
        cdq                                     ; 0353:0386
        idiv ebx                                ; 0353:0388
        mov [cs:0x347],eax                      ; 0353:038b
        mov ax,[cs:0x54]                        ; 0353:0390
        sub ax,[cs:0x50]                        ; 0353:0394
        shl eax,byte 0x10                       ; 0353:0399
        cdq                                     ; 0353:039d
        idiv ebx                                ; 0353:039f
        mov [cs:0x34b],eax                      ; 0353:03a2
        mov ax,[cs:0x56]                        ; 0353:03a7
        sub ax,[cs:0x52]                        ; 0353:03ab
        shl eax,byte 0x10                       ; 0353:03b0
        cdq                                     ; 0353:03b4
        idiv ebx                                ; 0353:03b6
        mov [cs:0x34f],eax                      ; 0353:03b9
        sub cx,byte +0x0                        ; 0353:03be
        jnl short l_0353_0418                   ; 0353:03c1
        neg cx                                  ; 0353:03c3
        sub bx,cx                               ; 0353:03c5
        movzx ecx,cx                            ; 0353:03c7
        mov esi,ecx                             ; 0353:03cb
        imul esi,[cs:0x347]                     ; 0353:03ce
        rol esi,byte 0x10                       ; 0353:03d5
        add esi,0x80000000                      ; 0353:03d9
        adc si,[cs:0x4a]                        ; 0353:03e0
        mov edx,ecx                             ; 0353:03e5
        imul edx,[cs:0x34f]                     ; 0353:03e8
        rol edx,byte 0x10                       ; 0353:03ef
        add edx,0x80000000                      ; 0353:03f3
        adc dx,[cs:0x52]                        ; 0353:03fa
        imul ecx,[cs:0x34b]                     ; 0353:03ff
        rol ecx,byte 0x10                       ; 0353:0406
        add ecx,0x80000000                      ; 0353:040a
        adc cx,[cs:0x50]                        ; 0353:0411
        jmp short l_0353_0439                   ; 0353:0416

l_0353_0418:
        mov esi,0x80000000                      ; 0353:0418
        mov si,[cs:0x4a]                        ; 0353:041e
        mov ecx,0x80000000                      ; 0353:0423
        mov cx,[cs:0x50]                        ; 0353:0429
        mov edx,0x80000000                      ; 0353:042e
        mov dx,[cs:0x52]                        ; 0353:0434

l_0353_0439:
        lds di,[cs:0x5a]                        ; 0353:0439
        add di,[cs:0x58]                        ; 0353:043e
        rol dword [cs:0x347],byte 0x10          ; 0353:0443
        rol dword [cs:0x34b],byte 0x10          ; 0353:044a
        rol dword [cs:0x34f],byte 0x10          ; 0353:0451
        sub word [cs:0x4c],0x13f                ; 0353:0458
        jng short l_0353_0466                   ; 0353:045f
        sub bx,[cs:0x4c]                        ; 0353:0461

l_0353_0466:
        cmp bx,byte +0x0                        ; 0353:0466
        jng short l_0353_049e                   ; 0353:0469

l_0353_046b:
        mov [di],si                             ; 0353:046b
        mov [byte di+0x2],cx                    ; 0353:046d
        mov [byte di+0x4],dx                    ; 0353:0470
        add di,byte +0xc                        ; 0353:0473
        add esi,[cs:0x347]                      ; 0353:0476
        adc si,byte +0x0                        ; 0353:047c
        add ecx,[cs:0x34b]                      ; 0353:047f
        adc cx,byte +0x0                        ; 0353:0485
        add edx,[cs:0x34f]                      ; 0353:0488
        adc dx,byte +0x0                        ; 0353:048e
        dec bx                                  ; 0353:0491
        jnz short l_0353_046b                   ; 0353:0492
        sub di,[cs:0x58]                        ; 0353:0494
        mov [cs:0x5a],di                        ; 0353:0499

l_0353_049e:
        pop ds                                  ; 0353:049e
        popad                                   ; 0353:049f
        ret                                     ; 0353:04a1
; data 0353:04a2 (3 bytes)
        db 0x00,0x00,0x00

sub_0353_04a5:
        lds si,[cs:0x44]                        ; 0353:04a5
        mov dx,0x3c4                            ; 0353:04aa
        mov al,0x2                              ; 0353:04ad
        out dx,al                               ; 0353:04af
        mov cx,[cs:0x42]                        ; 0353:04b0
        mov bx,cx                               ; 0353:04b5
        shr bx,byte 0x2                         ; 0353:04b7
        mov [cs:0x4a2],bx                       ; 0353:04ba
        and cl,0x3                              ; 0353:04bf
        mov al,0x11                             ; 0353:04c2
        rol al,cl                               ; 0353:04c4
        inc dx                                  ; 0353:04c6
        out dx,al                               ; 0353:04c7
        mov [cs:0x4a4],al                       ; 0353:04c8

l_0353_04cc:
        movzx ebx,word [si]                     ; 0353:04cc
        movzx ecx,word [byte si+0x6]            ; 0353:04d0
        cmp bx,0xc8                             ; 0353:04d5
        jnl near l_0353_05a8                    ; 0353:04d9
        cmp cx,byte +0x0                        ; 0353:04dd
        jl near l_0353_05a8                     ; 0353:04e0
        sub cx,bx                               ; 0353:04e4
        jl near l_0353_05a8                     ; 0353:04e6
        inc cx                                  ; 0353:04ea
        mov ax,[byte si+0xa]                    ; 0353:04eb
        sub ax,[byte si+0x4]                    ; 0353:04ee
        shl eax,byte 0x10                       ; 0353:04f1
        cdq                                     ; 0353:04f5
        idiv ecx                                ; 0353:04f7
        mov ebp,eax                             ; 0353:04fa
        mov ax,[byte si+0x8]                    ; 0353:04fd
        sub ax,[byte si+0x2]                    ; 0353:0500
        shl eax,byte 0x10                       ; 0353:0503
        cdq                                     ; 0353:0507
        idiv ecx                                ; 0353:0509
        or ecx,0x80000000                       ; 0353:050c
        sub bx,byte +0x0                        ; 0353:0513
        jnl short l_0353_0553                   ; 0353:0516
        push eax                                ; 0353:0518
        neg bx                                  ; 0353:051a
        sub cx,bx                               ; 0353:051c
        mov word [si],0x0                       ; 0353:051e
        imul ebx                                ; 0353:0522
        rol eax,byte 0x10                       ; 0353:0525
        add eax,0x80000000                      ; 0353:0529
        adc ax,0x0                              ; 0353:052f
        add [byte si+0x2],al                    ; 0353:0532
        imul ebx,ebp                            ; 0353:0535
        rol ebx,byte 0x10                       ; 0353:0539
        add ebx,0x80000000                      ; 0353:053d
        adc bx,byte +0x0                        ; 0353:0544
        add [byte si+0x4],bl                    ; 0353:0547
        mov bx,cx                               ; 0353:054a
        mov ecx,eax                             ; 0353:054c
        mov cx,bx                               ; 0353:054f
        pop eax                                 ; 0353:0551

l_0353_0553:
        mov bx,[byte si+0x6]                    ; 0353:0553
        sub bx,0xc7                             ; 0353:0556
        jng short l_0353_055e                   ; 0353:055a
        sub cx,bx                               ; 0353:055c

l_0353_055e:
        rol eax,byte 0x10                       ; 0353:055e
        rol ebp,byte 0x10                       ; 0353:0562
        mov dx,bp                               ; 0353:0566
        mov bp,ax                               ; 0353:0568
        movzx edi,word [si]                     ; 0353:056a
        shl edi,byte 0x4                        ; 0353:056e
        lea edi,[edi+edi*4]                     ; 0353:0572
        add di,[cs:0x4a2]                       ; 0353:0577
        mov bh,[byte si+0x4]                    ; 0353:057c
        mov bl,[byte si+0x2]                    ; 0353:057f
        xor ax,ax                               ; 0353:0582
        mov ch,[cs:0x5e]                        ; 0353:0584
        push si                                 ; 0353:0589
        push ds                                 ; 0353:058a
        lds si,[cs:0x36]                        ; 0353:058b

l_0353_0590:
        add ecx,eax                             ; 0353:0590
        adc ebx,ebp                             ; 0353:0593
        adc bh,dl                               ; 0353:0596
        mov dh,[bx+si]                          ; 0353:0598
        add dh,ch                               ; 0353:059a
        mov [gs:di],dh                          ; 0353:059c
        add di,byte +0x50                       ; 0353:059f
        dec cl                                  ; 0353:05a2
        jnz short l_0353_0590                   ; 0353:05a4
        pop ds                                  ; 0353:05a6
        pop si                                  ; 0353:05a7

l_0353_05a8:
        add si,byte +0xc                        ; 0353:05a8
        mov al,[cs:0x4a4]                       ; 0353:05ab
        rol al,1                                ; 0353:05af
        mov [cs:0x4a4],al                       ; 0353:05b1
        adc word [cs:0x4a2],byte +0x0           ; 0353:05b5
        mov dx,0x3c5                            ; 0353:05bb
        out dx,al                               ; 0353:05be
        dec word [cs:0x40]                      ; 0353:05bf
        jnz near l_0353_04cc                    ; 0353:05c4
        ret                                     ; 0353:05c8
; data 0353:05c9 (25 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

sub_0353_05e2:
        push ds                                 ; 0353:05e2
        push di                                 ; 0353:05e3
        push eax                                ; 0353:05e4
        mov ax,[cs:0x5de]                       ; 0353:05e6
        imul word [cs:0x5da]                    ; 0353:05ea
        shrd ax,dx,0xe                          ; 0353:05ef
        mov cx,ax                               ; 0353:05f3
        mov ax,[cs:0x5ca]                       ; 0353:05f5
        imul word [cs:0x5ce]                    ; 0353:05f9
        shrd ax,dx,0xe                          ; 0353:05fe
        mov bx,ax                               ; 0353:0602
        imul word [cs:0x5d2]                    ; 0353:0604
        shrd ax,dx,0xe                          ; 0353:0609
        neg ax                                  ; 0353:060d
        add ax,cx                               ; 0353:060f
        cwde                                    ; 0353:0611
        mov [di],eax                            ; 0353:0613
        add di,byte +0x4                        ; 0353:0616
        mov ax,[cs:0x5d2]                       ; 0353:0619
        imul word [cs:0x5da]                    ; 0353:061d
        shrd ax,dx,0xe                          ; 0353:0622
        mov si,ax                               ; 0353:0626
        mov ax,[cs:0x5de]                       ; 0353:0628
        imul bx                                 ; 0353:062c
        shrd ax,dx,0xe                          ; 0353:062e
        add ax,si                               ; 0353:0632
        neg ax                                  ; 0353:0634
        cwde                                    ; 0353:0636
        mov [di],eax                            ; 0353:0638
        add di,byte +0x4                        ; 0353:063b
        mov ax,[cs:0x5d6]                       ; 0353:063e
        imul word [cs:0x5ce]                    ; 0353:0642
        shrd ax,dx,0xe                          ; 0353:0647
        neg ax                                  ; 0353:064b
        cwde                                    ; 0353:064d
        mov [di],eax                            ; 0353:064f
        add di,byte +0x4                        ; 0353:0652
        mov ax,[cs:0x5d2]                       ; 0353:0655
        imul word [cs:0x5d6]                    ; 0353:0659
        shrd ax,dx,0xe                          ; 0353:065e
        cwde                                    ; 0353:0662
        mov [di],eax                            ; 0353:0664
        add di,byte +0x4                        ; 0353:0667
        mov ax,[cs:0x5d6]                       ; 0353:066a
        imul word [cs:0x5de]                    ; 0353:066e
        shrd ax,dx,0xe                          ; 0353:0673
        cwde                                    ; 0353:0677
        mov [di],eax                            ; 0353:0679
        add di,byte +0x4                        ; 0353:067c
        mov ax,[cs:0x5ca]                       ; 0353:067f
        neg ax                                  ; 0353:0683
        cwde                                    ; 0353:0685
        mov [di],eax                            ; 0353:0687
        add di,byte +0x4                        ; 0353:068a
        neg ax                                  ; 0353:068d
        imul si                                 ; 0353:068f
        shrd ax,dx,0xe                          ; 0353:0691
        mov bx,ax                               ; 0353:0695
        mov ax,[cs:0x5de]                       ; 0353:0697
        imul word [cs:0x5ce]                    ; 0353:069b
        shrd ax,dx,0xe                          ; 0353:06a0
        add ax,bx                               ; 0353:06a4
        cwde                                    ; 0353:06a6
        mov [di],eax                            ; 0353:06a8
        add di,byte +0x4                        ; 0353:06ab
        mov ax,[cs:0x5ca]                       ; 0353:06ae
        imul cx                                 ; 0353:06b2
        shrd ax,dx,0xe                          ; 0353:06b4
        mov cx,ax                               ; 0353:06b8
        mov ax,[cs:0x5ce]                       ; 0353:06ba
        imul word [cs:0x5d2]                    ; 0353:06be
        shrd ax,dx,0xe                          ; 0353:06c3
        neg ax                                  ; 0353:06c7
        add ax,cx                               ; 0353:06c9
        cwde                                    ; 0353:06cb
        mov [di],eax                            ; 0353:06cd
        add di,byte +0x4                        ; 0353:06d0
        mov ax,[cs:0x5d6]                       ; 0353:06d3
        imul word [cs:0x5da]                    ; 0353:06d7
        shrd ax,dx,0xe                          ; 0353:06dc
        cwde                                    ; 0353:06e0
        mov [di],eax                            ; 0353:06e2
        pop eax                                 ; 0353:06e5
        pop di                                  ; 0353:06e7
        pop ds                                  ; 0353:06e8
        ret                                     ; 0353:06e9

far_0353_06ea:
        pusha                                   ; 0353:06ea
        mov ax,[si]                             ; 0353:06eb
        call 0x02ca:far_02ca_006a               ; 0353:06ed
        mov [cs:0x5ca],ax                       ; 0353:06f2
        mov ax,[si]                             ; 0353:06f6
        call 0x02ca:far_02ca_007e               ; 0353:06f8
        mov [cs:0x5d6],ax                       ; 0353:06fd
        mov ax,[byte si+0x2]                    ; 0353:0701
        call 0x02ca:far_02ca_006a               ; 0353:0704
        mov [cs:0x5ce],ax                       ; 0353:0709
        mov ax,[byte si+0x2]                    ; 0353:070d
        call 0x02ca:far_02ca_007e               ; 0353:0710
        mov [cs:0x5da],ax                       ; 0353:0715
        mov ax,[byte si+0x4]                    ; 0353:0719
        call 0x02ca:far_02ca_006a               ; 0353:071c
        mov [cs:0x5d2],ax                       ; 0353:0721
        mov ax,[byte si+0x4]                    ; 0353:0725
        call 0x02ca:far_02ca_007e               ; 0353:0728
        mov [cs:0x5de],ax                       ; 0353:072d
        push ds                                 ; 0353:0731
        mov ax,es                               ; 0353:0732
        mov ds,ax                               ; 0353:0734
        mov di,bx                               ; 0353:0736
        call sub_0353_05e2                      ; 0353:0738
        pop ds                                  ; 0353:073b
        popa                                    ; 0353:073c
        retf                                    ; 0353:073d

far_0353_073e:
        push eax                                ; 0353:073e
        push cx                                 ; 0353:0740
        push dx                                 ; 0353:0741
        push bp                                 ; 0353:0742
        mov ax,[si]                             ; 0353:0743
        imul word [fs:di]                       ; 0353:0745
        mov cx,ax                               ; 0353:0748
        mov bp,dx                               ; 0353:074a
        mov ax,[byte si+0x4]                    ; 0353:074c
        imul word [byte fs:di+0x4]              ; 0353:074f
        add cx,ax                               ; 0353:0753
        adc bp,dx                               ; 0353:0755
        mov ax,[byte si+0x8]                    ; 0353:0757
        imul word [byte fs:di+0x8]              ; 0353:075a
        add ax,cx                               ; 0353:075e
        adc dx,bp                               ; 0353:0760
        shrd ax,dx,0xe                          ; 0353:0762
        cwde                                    ; 0353:0766
        mov [es:bx],eax                         ; 0353:0768
        mov ax,[byte si+0xc]                    ; 0353:076c
        imul word [fs:di]                       ; 0353:076f
        mov cx,ax                               ; 0353:0772
        mov bp,dx                               ; 0353:0774
        mov ax,[byte si+0x10]                   ; 0353:0776
        imul word [byte fs:di+0x4]              ; 0353:0779
        add cx,ax                               ; 0353:077d
        adc bp,dx                               ; 0353:077f
        mov ax,[byte si+0x14]                   ; 0353:0781
        imul word [byte fs:di+0x8]              ; 0353:0784
        add ax,cx                               ; 0353:0788
        adc dx,bp                               ; 0353:078a
        shrd ax,dx,0xe                          ; 0353:078c
        cwde                                    ; 0353:0790
        mov [byte es:bx+0x4],eax                ; 0353:0792
        mov ax,[byte si+0x18]                   ; 0353:0797
        imul word [fs:di]                       ; 0353:079a
        mov cx,ax                               ; 0353:079d
        mov bp,dx                               ; 0353:079f
        mov ax,[byte si+0x1c]                   ; 0353:07a1
        imul word [byte fs:di+0x4]              ; 0353:07a4
        add cx,ax                               ; 0353:07a8
        adc bp,dx                               ; 0353:07aa
        mov ax,[byte si+0x20]                   ; 0353:07ac
        imul word [byte fs:di+0x8]              ; 0353:07af
        add ax,cx                               ; 0353:07b3
        adc dx,bp                               ; 0353:07b5
        shrd ax,dx,0xe                          ; 0353:07b7
        cwde                                    ; 0353:07bb
        mov [byte es:bx+0x8],eax                ; 0353:07bd
        pop bp                                  ; 0353:07c2
        pop dx                                  ; 0353:07c3
        pop cx                                  ; 0353:07c4
        pop eax                                 ; 0353:07c5
        retf                                    ; 0353:07c7

far_0353_07c8:
        push eax                                ; 0353:07c8
        push cx                                 ; 0353:07ca
        push dx                                 ; 0353:07cb
        push bp                                 ; 0353:07cc
        mov ax,[si]                             ; 0353:07cd
        imul word [di]                          ; 0353:07cf
        mov cx,ax                               ; 0353:07d1
        mov bp,dx                               ; 0353:07d3
        mov ax,[byte si+0xc]                    ; 0353:07d5
        imul word [byte di+0xc]                 ; 0353:07d8
        add cx,ax                               ; 0353:07db
        adc bp,dx                               ; 0353:07dd
        mov ax,[byte si+0x18]                   ; 0353:07df
        imul word [byte di+0x18]                ; 0353:07e2
        add ax,cx                               ; 0353:07e5
        adc dx,bp                               ; 0353:07e7
        shrd ax,dx,0xe                          ; 0353:07e9
        cwde                                    ; 0353:07ed
        mov [bx],eax                            ; 0353:07ef
        mov ax,[byte si+0x4]                    ; 0353:07f2
        imul word [di]                          ; 0353:07f5
        mov cx,ax                               ; 0353:07f7
        mov bp,dx                               ; 0353:07f9
        mov ax,[byte si+0x10]                   ; 0353:07fb
        imul word [byte di+0xc]                 ; 0353:07fe
        add cx,ax                               ; 0353:0801
        adc bp,dx                               ; 0353:0803
        mov ax,[byte si+0x1c]                   ; 0353:0805
        imul word [byte di+0x18]                ; 0353:0808
        add ax,cx                               ; 0353:080b
        adc dx,bp                               ; 0353:080d
        shrd ax,dx,0xe                          ; 0353:080f
        cwde                                    ; 0353:0813
        mov [byte bx+0x4],eax                   ; 0353:0815
        mov ax,[byte si+0x8]                    ; 0353:0819
        imul word [di]                          ; 0353:081c
        mov cx,ax                               ; 0353:081e
        mov bp,dx                               ; 0353:0820
        mov ax,[byte si+0x14]                   ; 0353:0822
        imul word [byte di+0xc]                 ; 0353:0825
        add cx,ax                               ; 0353:0828
        adc bp,dx                               ; 0353:082a
        mov ax,[byte si+0x20]                   ; 0353:082c
        imul word [byte di+0x18]                ; 0353:082f
        add ax,cx                               ; 0353:0832
        adc dx,bp                               ; 0353:0834
        shrd ax,dx,0xe                          ; 0353:0836
        cwde                                    ; 0353:083a
        mov [byte bx+0x8],eax                   ; 0353:083c
        mov ax,[si]                             ; 0353:0840
        imul word [byte di+0x4]                 ; 0353:0842
        mov cx,ax                               ; 0353:0845
        mov bp,dx                               ; 0353:0847
        mov ax,[byte si+0xc]                    ; 0353:0849
        imul word [byte di+0x10]                ; 0353:084c
        add cx,ax                               ; 0353:084f
        adc bp,dx                               ; 0353:0851
        mov ax,[byte si+0x18]                   ; 0353:0853
        imul word [byte di+0x1c]                ; 0353:0856
        add ax,cx                               ; 0353:0859
        adc dx,bp                               ; 0353:085b
        shrd ax,dx,0xe                          ; 0353:085d
        cwde                                    ; 0353:0861
        mov [byte bx+0xc],eax                   ; 0353:0863
        mov ax,[byte si+0x4]                    ; 0353:0867
        imul word [byte di+0x4]                 ; 0353:086a
        mov cx,ax                               ; 0353:086d
        mov bp,dx                               ; 0353:086f
        mov ax,[byte si+0x10]                   ; 0353:0871
        imul word [byte di+0x10]                ; 0353:0874
        add cx,ax                               ; 0353:0877
        adc bp,dx                               ; 0353:0879
        mov ax,[byte si+0x1c]                   ; 0353:087b
        imul word [byte di+0x1c]                ; 0353:087e
        add ax,cx                               ; 0353:0881
        adc dx,bp                               ; 0353:0883
        shrd ax,dx,0xe                          ; 0353:0885
        cwde                                    ; 0353:0889
        mov [byte bx+0x10],eax                  ; 0353:088b
        mov ax,[byte si+0x8]                    ; 0353:088f
        imul word [byte di+0x4]                 ; 0353:0892
        mov cx,ax                               ; 0353:0895
        mov bp,dx                               ; 0353:0897
        mov ax,[byte si+0x14]                   ; 0353:0899
        imul word [byte di+0x10]                ; 0353:089c
        add cx,ax                               ; 0353:089f
        adc bp,dx                               ; 0353:08a1
        mov ax,[byte si+0x20]                   ; 0353:08a3
        imul word [byte di+0x1c]                ; 0353:08a6
        add ax,cx                               ; 0353:08a9
        adc dx,bp                               ; 0353:08ab
        shrd ax,dx,0xe                          ; 0353:08ad
        cwde                                    ; 0353:08b1
        mov [byte bx+0x14],eax                  ; 0353:08b3
        mov ax,[si]                             ; 0353:08b7
        imul word [byte di+0x8]                 ; 0353:08b9
        mov cx,ax                               ; 0353:08bc
        mov bp,dx                               ; 0353:08be
        mov ax,[byte si+0xc]                    ; 0353:08c0
        imul word [byte di+0x14]                ; 0353:08c3
        add cx,ax                               ; 0353:08c6
        adc bp,dx                               ; 0353:08c8
        mov ax,[byte si+0x18]                   ; 0353:08ca
        imul word [byte di+0x20]                ; 0353:08cd
        add ax,cx                               ; 0353:08d0
        adc dx,bp                               ; 0353:08d2
        shrd ax,dx,0xe                          ; 0353:08d4
        cwde                                    ; 0353:08d8
        mov [byte bx+0x18],eax                  ; 0353:08da
        mov ax,[byte si+0x4]                    ; 0353:08de
        imul word [byte di+0x8]                 ; 0353:08e1
        mov cx,ax                               ; 0353:08e4
        mov bp,dx                               ; 0353:08e6
        mov ax,[byte si+0x10]                   ; 0353:08e8
        imul word [byte di+0x14]                ; 0353:08eb
        add cx,ax                               ; 0353:08ee
        adc bp,dx                               ; 0353:08f0
        mov ax,[byte si+0x1c]                   ; 0353:08f2
        imul word [byte di+0x20]                ; 0353:08f5
        add ax,cx                               ; 0353:08f8
        adc dx,bp                               ; 0353:08fa
        shrd ax,dx,0xe                          ; 0353:08fc
        cwde                                    ; 0353:0900
        mov [byte bx+0x1c],eax                  ; 0353:0902
        mov ax,[byte si+0x8]                    ; 0353:0906
        imul word [byte di+0x8]                 ; 0353:0909
        mov cx,ax                               ; 0353:090c
        mov bp,dx                               ; 0353:090e
        mov ax,[byte si+0x14]                   ; 0353:0910
        imul word [byte di+0x14]                ; 0353:0913
        add cx,ax                               ; 0353:0916
        adc bp,dx                               ; 0353:0918
        mov ax,[byte si+0x20]                   ; 0353:091a
        imul word [byte di+0x20]                ; 0353:091d
        add ax,cx                               ; 0353:0920
        adc dx,bp                               ; 0353:0922
        shrd ax,dx,0xe                          ; 0353:0924
        cwde                                    ; 0353:0928
        mov [byte bx+0x20],eax                  ; 0353:092a
        pop bp                                  ; 0353:092e
        pop dx                                  ; 0353:092f
        pop cx                                  ; 0353:0930
        pop eax                                 ; 0353:0931
        retf                                    ; 0353:0933
        incbin "data/d_03e64.bin"   ; 0x1e30 bytes of data at 0353:0934

;======================================================================
; segment 03e6  (image 0x05c94-0x0739c)
; 3D: projection / polygon setup and filling (IMUL/IDIV)
;======================================================================
section seg_03e6 start=0x5c94 vstart=0x1e34

far_03e6_1e34:
        mov word [cs:0x1df2],0x0                ; 03e6:1e34
        mov word [cs:0x1dcc],0x0                ; 03e6:1e3b
        retf                                    ; 03e6:1e42

far_03e6_1e43:
        mov [byte si+0x41],cs                   ; 03e6:1e43
        mov word [byte si+0x3f],0xb8            ; 03e6:1e46
        mov [cs:0x1e06],si                      ; 03e6:1e4b
        retf                                    ; 03e6:1e50

far_03e6_1e51:
        movzx eax,ax                            ; 03e6:1e51
        mov [cs:0x1e14],eax                     ; 03e6:1e55
        retf                                    ; 03e6:1e5a

far_03e6_1e5b:
        mov [cs:0x1e18],ax                      ; 03e6:1e5b
        retf                                    ; 03e6:1e5f

far_03e6_1e60:
        movzx eax,ax                            ; 03e6:1e60
        mov [cs:0x1e1c],eax                     ; 03e6:1e64
        retf                                    ; 03e6:1e69

far_03e6_1e6a:
        mov [cs:0x1e1a],ax                      ; 03e6:1e6a
        retf                                    ; 03e6:1e6e

far_03e6_1e6f:
        mov [cs:0x1e2a],eax                     ; 03e6:1e6f
        retf                                    ; 03e6:1e74

far_03e6_1e75:
        mov [cs:0x1e2e],ax                      ; 03e6:1e75
        retf                                    ; 03e6:1e79

sub_03e6_1e7a:
        push edi                                ; 03e6:1e7a
        mov eax,[cs:0x70]                       ; 03e6:1e7c
        imul ebx                                ; 03e6:1e81
        shrd eax,edx,0xe                        ; 03e6:1e84
        mov edi,eax                             ; 03e6:1e89
        mov eax,[cs:0x7c]                       ; 03e6:1e8c
        imul ecx                                ; 03e6:1e91
        shrd eax,edx,0xe                        ; 03e6:1e94
        add edi,eax                             ; 03e6:1e99
        mov eax,[cs:0x88]                       ; 03e6:1e9c
        imul ebp                                ; 03e6:1ea1
        shrd eax,edx,0xe                        ; 03e6:1ea4
        add eax,edi                             ; 03e6:1ea9
        mov [byte si+0xc],eax                   ; 03e6:1eac
        mov eax,[cs:0x74]                       ; 03e6:1eb0
        imul ebx                                ; 03e6:1eb5
        shrd eax,edx,0xe                        ; 03e6:1eb8
        mov edi,eax                             ; 03e6:1ebd
        mov eax,[cs:0x80]                       ; 03e6:1ec0
        imul ecx                                ; 03e6:1ec5
        shrd eax,edx,0xe                        ; 03e6:1ec8
        add edi,eax                             ; 03e6:1ecd
        mov eax,[cs:0x8c]                       ; 03e6:1ed0
        imul ebp                                ; 03e6:1ed5
        shrd eax,edx,0xe                        ; 03e6:1ed8
        add eax,edi                             ; 03e6:1edd
        mov [byte si+0x10],eax                  ; 03e6:1ee0
        mov eax,[cs:0x78]                       ; 03e6:1ee4
        imul ebx                                ; 03e6:1ee9
        shrd eax,edx,0xe                        ; 03e6:1eec
        mov edi,eax                             ; 03e6:1ef1
        mov eax,[cs:0x84]                       ; 03e6:1ef4
        imul ecx                                ; 03e6:1ef9
        shrd eax,edx,0xe                        ; 03e6:1efc
        add edi,eax                             ; 03e6:1f01
        mov eax,[cs:0x90]                       ; 03e6:1f04
        imul ebp                                ; 03e6:1f09
        shrd eax,edx,0xe                        ; 03e6:1f0c
        add eax,edi                             ; 03e6:1f11
        mov [byte si+0x14],eax                  ; 03e6:1f14
        pop edi                                 ; 03e6:1f18
        ret                                     ; 03e6:1f1a

far_03e6_1f1b:
        pushad                                  ; 03e6:1f1b
        push fs                                 ; 03e6:1f1d
        mov si,[cs:0x1df4]                      ; 03e6:1f1f
        lfs ax,[cs:0x1db6]                      ; 03e6:1f24
        les di,[cs:0x1db2]                      ; 03e6:1f2a
        mov ax,[cs:0x1dca]                      ; 03e6:1f2f
        mov [cs:0x1dac],ax                      ; 03e6:1f33
        xor edx,edx                             ; 03e6:1f37

l_03e6_1f3a:
        mov ebx,[si]                            ; 03e6:1f3a
        sub ebx,[0x24c0]                        ; 03e6:1f3d
        mov ecx,[byte si+0x4]                   ; 03e6:1f42
        sub ecx,[0x24c4]                        ; 03e6:1f46
        mov ebp,[byte si+0x8]                   ; 03e6:1f4b
        sub ebp,[0x24c8]                        ; 03e6:1f4f
        call sub_03e6_1e7a                      ; 03e6:1f54
        test byte [byte si+0x3e],0x2            ; 03e6:1f57
        jnz near l_03e6_2032                    ; 03e6:1f5b
        mov eax,[byte si+0x14]                  ; 03e6:1f5f
        mov edx,[cs:0x1e2a]                     ; 03e6:1f63
        cmp eax,edx                             ; 03e6:1f69
        jg near l_03e6_2082                     ; 03e6:1f6c
        neg edx                                 ; 03e6:1f70
        cmp eax,edx                             ; 03e6:1f73
        jl near l_03e6_2082                     ; 03e6:1f76
        mov ebp,eax                             ; 03e6:1f7a
        add ebp,[byte si+0x32]                  ; 03e6:1f7d
        cmp ebp,byte +0x64                      ; 03e6:1f81
        jng near l_03e6_2082                    ; 03e6:1f85
        mov eax,[byte si+0x10]                  ; 03e6:1f89
        cmp eax,edx                             ; 03e6:1f8d
        jl near l_03e6_2082                     ; 03e6:1f90
        neg edx                                 ; 03e6:1f94
        cmp eax,edx                             ; 03e6:1f97
        jg near l_03e6_2082                     ; 03e6:1f9a
        cmp eax,byte +0x0                       ; 03e6:1f9e
        jg short l_03e6_1fa7                    ; 03e6:1fa2
        neg eax                                 ; 03e6:1fa4

l_03e6_1fa7:
        sub ax,[byte si+0x32]                   ; 03e6:1fa7
        mov cx,[byte si+0x14]                   ; 03e6:1faa
        mov dx,[cs:0x1e14]                      ; 03e6:1fad
        add dx,byte +0x64                       ; 03e6:1fb2
        cmp cx,dx                               ; 03e6:1fb5
        jl short l_03e6_2000                    ; 03e6:1fb7
        add cx,[cs:0x1e14]                      ; 03e6:1fb9
        mov bp,[cs:0x1e14]                      ; 03e6:1fbe
        imul bp                                 ; 03e6:1fc3
        idiv cx                                 ; 03e6:1fc5
        cmp ax,0x64                             ; 03e6:1fc7
        jnl near l_03e6_2082                    ; 03e6:1fca
        mov eax,[byte si+0xc]                   ; 03e6:1fce
        mov edx,[cs:0x1e2a]                     ; 03e6:1fd2
        cmp eax,edx                             ; 03e6:1fd8
        jg near l_03e6_2082                     ; 03e6:1fdb
        neg edx                                 ; 03e6:1fdf
        cmp eax,edx                             ; 03e6:1fe2
        jl near l_03e6_2082                     ; 03e6:1fe5
        cmp ax,0x0                              ; 03e6:1fe9
        jg short l_03e6_1ff0                    ; 03e6:1fec
        neg ax                                  ; 03e6:1fee

l_03e6_1ff0:
        sub ax,[byte si+0x32]                   ; 03e6:1ff0
        imul bp                                 ; 03e6:1ff3
        idiv cx                                 ; 03e6:1ff5
        cmp ax,0xa0                             ; 03e6:1ff7
        jnl near l_03e6_2082                    ; 03e6:1ffa
        jmp short l_03e6_2032                   ; 03e6:1ffe

l_03e6_2000:
        mov eax,[byte si+0x32]                  ; 03e6:2000
        add eax,0xa0                            ; 03e6:2004
        mov ebx,[byte si+0xc]                   ; 03e6:200a
        cmp ebx,byte +0x0                       ; 03e6:200e
        jg short l_03e6_2017                    ; 03e6:2012
        neg ebx                                 ; 03e6:2014

l_03e6_2017:
        cmp eax,ebx                             ; 03e6:2017
        jl short l_03e6_2082                    ; 03e6:201a
        add eax,byte -0x3c                      ; 03e6:201c
        mov ebx,[byte si+0x10]                  ; 03e6:2020
        cmp ebx,byte +0x0                       ; 03e6:2024
        jg short l_03e6_202d                    ; 03e6:2028
        neg ebx                                 ; 03e6:202a

l_03e6_202d:
        cmp eax,ebx                             ; 03e6:202d
        jl short l_03e6_2082                    ; 03e6:2030

l_03e6_2032:
        mov di,[cs:0x1df2]                      ; 03e6:2032
        mov eax,[byte si+0x14]                  ; 03e6:2037
        imul eax                                ; 03e6:203b
        mov ecx,eax                             ; 03e6:203e
        mov eax,[byte si+0x10]                  ; 03e6:2041
        imul eax                                ; 03e6:2045
        add ecx,eax                             ; 03e6:2048
        mov eax,[byte si+0xc]                   ; 03e6:204b
        imul eax                                ; 03e6:204f
        add eax,ecx                             ; 03e6:2052
        call 0x07bf:far_07bf_001a               ; 03e6:2055
        or dword [byte si+0x14],byte +0x0       ; 03e6:205a
        jns short l_03e6_2064                   ; 03e6:205f
        neg eax                                 ; 03e6:2061

l_03e6_2064:
        test byte [byte si+0x3e],0x8            ; 03e6:2064
        jz short l_03e6_2070                    ; 03e6:2068
        mov eax,0xc350                          ; 03e6:206a

l_03e6_2070:
        mov [es:di],eax                         ; 03e6:2070
        movzx eax,si                            ; 03e6:2074
        mov [fs:di],eax                         ; 03e6:2078
        add word [cs:0x1df2],byte +0x4          ; 03e6:207c

l_03e6_2082:
        add si,byte +0x53                       ; 03e6:2082
        dec word [cs:0x1dac]                    ; 03e6:2085
        jnz near l_03e6_1f3a                    ; 03e6:208a
        mov ax,fs                               ; 03e6:208e
        mov es,ax                               ; 03e6:2090
        pop fs                                  ; 03e6:2092
        popad                                   ; 03e6:2094
        mov ax,[cs:0x1df2]                      ; 03e6:2096
        mov bx,ax                               ; 03e6:209a
        sub bx,byte +0x4                        ; 03e6:209c
        shr ax,byte 0x2                         ; 03e6:209f
        mov cx,ax                               ; 03e6:20a2
        retf                                    ; 03e6:20a4

far_03e6_20a5:
        push ecx                                ; 03e6:20a5
        push ax                                 ; 03e6:20a7
        push ebx                                ; 03e6:20a8
        push fs                                 ; 03e6:20aa
        push es                                 ; 03e6:20ac
        push edi                                ; 03e6:20ad
        push esi                                ; 03e6:20af
        mov ax,[cs:0x1df2]                      ; 03e6:20b1
        shr ax,byte 0x2                         ; 03e6:20b5
        dec ax                                  ; 03e6:20b8
        js short l_03e6_20d6                    ; 03e6:20b9
        movzx ebx,ax                            ; 03e6:20bb
        mov ax,[cs:0x1db8]                      ; 03e6:20bf
        mov fs,ax                               ; 03e6:20c3
        mov ax,[cs:0x1db4]                      ; 03e6:20c5
        mov es,ax                               ; 03e6:20c9
        xor esi,esi                             ; 03e6:20cb
        xor edi,edi                             ; 03e6:20ce
        call 0x07b1:far_07b1_0006               ; 03e6:20d1

l_03e6_20d6:
        pop esi                                 ; 03e6:20d6
        pop edi                                 ; 03e6:20d8
        pop es                                  ; 03e6:20da
        pop fs                                  ; 03e6:20db
        pop ebx                                 ; 03e6:20dd
        pop ax                                  ; 03e6:20df
        pop ecx                                 ; 03e6:20e0
        retf                                    ; 03e6:20e2

far_03e6_20e3:
        push si                                 ; 03e6:20e3
        push bx                                 ; 03e6:20e4
        push eax                                ; 03e6:20e5
        mov si,[cs:0x1df4]                      ; 03e6:20e7
        mov bx,[cs:0x1dca]                      ; 03e6:20ec

l_03e6_20f1:
        test byte [byte si+0x3e],0x1            ; 03e6:20f1
        jnz short l_03e6_214a                   ; 03e6:20f5
        mov ax,[byte si+0x2a]                   ; 03e6:20f7
        imul word [0x24f0]                      ; 03e6:20fa
        add [byte si+0x24],ax                   ; 03e6:20fe
        mov ax,[byte si+0x2c]                   ; 03e6:2101
        imul word [0x24f0]                      ; 03e6:2104
        add [byte si+0x26],ax                   ; 03e6:2108
        mov ax,[byte si+0x2e]                   ; 03e6:210b
        imul word [0x24f0]                      ; 03e6:210e
        add [byte si+0x28],ax                   ; 03e6:2112
        movsx eax,word [0x24f0]                 ; 03e6:2115
        imul dword [byte si+0x18]               ; 03e6:211b
        add [si],eax                            ; 03e6:211f
        add [byte si+0xc],eax                   ; 03e6:2122
        movsx eax,word [0x24f0]                 ; 03e6:2126
        imul dword [byte si+0x1c]               ; 03e6:212c
        add [byte si+0x4],eax                   ; 03e6:2130
        add [byte si+0x10],eax                  ; 03e6:2134
        movsx eax,word [0x24f0]                 ; 03e6:2138
        imul dword [byte si+0x20]               ; 03e6:213e
        add [byte si+0x8],eax                   ; 03e6:2142
        add [byte si+0x14],eax                  ; 03e6:2146

l_03e6_214a:
        add si,byte +0x53                       ; 03e6:214a
        dec bx                                  ; 03e6:214d
        jnz short l_03e6_20f1                   ; 03e6:214e
        pop eax                                 ; 03e6:2150
        pop bx                                  ; 03e6:2152
        pop si                                  ; 03e6:2153
        retf                                    ; 03e6:2154

far_03e6_2155:
        push eax                                ; 03e6:2155
        push ebx                                ; 03e6:2157
        push ecx                                ; 03e6:2159
        push edx                                ; 03e6:215b
        push si                                 ; 03e6:215d
        push es                                 ; 03e6:215e
        movsx eax,word [0x24f0]                 ; 03e6:215f
        imul dword [0x24cc]                     ; 03e6:2165
        add [0x24c0],eax                        ; 03e6:216a
        movsx eax,word [0x24f0]                 ; 03e6:216f
        imul dword [0x24d0]                     ; 03e6:2175
        add [0x24c4],eax                        ; 03e6:217a
        movsx eax,word [0x24f0]                 ; 03e6:217f
        imul dword [0x24d4]                     ; 03e6:2185
        add [0x24c8],eax                        ; 03e6:218a
        mov ax,[0x24de]                         ; 03e6:218f
        imul word [0x24f0]                      ; 03e6:2192
        add [0x24d8],ax                         ; 03e6:2196
        mov ax,[0x24e0]                         ; 03e6:219a
        imul word [0x24f0]                      ; 03e6:219d
        add [0x24da],ax                         ; 03e6:21a1
        mov ax,[0x24e2]                         ; 03e6:21a5
        imul word [0x24f0]                      ; 03e6:21a8
        add [0x24dc],ax                         ; 03e6:21ac
        mov ax,cs                               ; 03e6:21b0
        mov es,ax                               ; 03e6:21b2
        mov bx,0x70                             ; 03e6:21b4
        mov si,0x24d8                           ; 03e6:21b7
        call 0x0353:far_0353_06ea               ; 03e6:21ba
        push si                                 ; 03e6:21bf
        push di                                 ; 03e6:21c0
        push ds                                 ; 03e6:21c1
        mov bx,0x28                             ; 03e6:21c2
        mov di,0x70                             ; 03e6:21c5
        mov si,0x4                              ; 03e6:21c8
        mov ax,cs                               ; 03e6:21cb
        mov ds,ax                               ; 03e6:21cd
        call 0x0353:far_0353_07c8               ; 03e6:21cf
        pop ds                                  ; 03e6:21d4
        pop di                                  ; 03e6:21d5
        pop si                                  ; 03e6:21d6
        pop es                                  ; 03e6:21d7
        pop si                                  ; 03e6:21d8
        pop edx                                 ; 03e6:21d9
        pop ecx                                 ; 03e6:21db
        pop ebx                                 ; 03e6:21dd
        pop eax                                 ; 03e6:21df
        retf                                    ; 03e6:21e1

sub_03e6_21e2:
        push fs                                 ; 03e6:21e2
        push es                                 ; 03e6:21e4
        push ds                                 ; 03e6:21e5
        push si                                 ; 03e6:21e6
        push bx                                 ; 03e6:21e7
        push bx                                 ; 03e6:21e8
        mov ax,ds                               ; 03e6:21e9
        mov fs,ax                               ; 03e6:21eb
        les bx,[byte si+0x3a]                   ; 03e6:21ed
        mov eax,[byte si+0xc]                   ; 03e6:21f0
        mov edx,[byte si+0x10]                  ; 03e6:21f4
        mov ebp,[byte si+0x14]                  ; 03e6:21f8
        pop si                                  ; 03e6:21fc
        push cs                                 ; 03e6:21fd
        pop ds                                  ; 03e6:21fe

l_03e6_21ff:
        call 0x0353:far_0353_073e               ; 03e6:21ff
        add [es:bx],eax                         ; 03e6:2204
        add [byte es:bx+0x4],edx                ; 03e6:2208
        add [byte es:bx+0x8],ebp                ; 03e6:220d
        add bx,byte +0xc                        ; 03e6:2212
        add di,byte +0xc                        ; 03e6:2215
        dec cx                                  ; 03e6:2218
        jnz short l_03e6_21ff                   ; 03e6:2219
        pop bx                                  ; 03e6:221b
        pop si                                  ; 03e6:221c
        pop ds                                  ; 03e6:221d
        pop es                                  ; 03e6:221e
        pop fs                                  ; 03e6:221f
        ret                                     ; 03e6:2221

sub_03e6_2222:
        push es                                 ; 03e6:2222
        push fs                                 ; 03e6:2223
        push ds                                 ; 03e6:2225
        push si                                 ; 03e6:2226
        push bx                                 ; 03e6:2227
        push bx                                 ; 03e6:2228
        les bx,[byte si+0x47]                   ; 03e6:2229
        mov di,[byte si+0x38]                   ; 03e6:222c
        mov cx,[byte di-0x2]                    ; 03e6:222f
        lfs di,[byte si+0x43]                   ; 03e6:2232
        push cs                                 ; 03e6:2236
        pop ds                                  ; 03e6:2237
        pop si                                  ; 03e6:2238

l_03e6_2239:
        call 0x0353:far_0353_073e               ; 03e6:2239
        add bx,byte +0xc                        ; 03e6:223e
        add di,byte +0xc                        ; 03e6:2241
        dec cx                                  ; 03e6:2244
        jnz short l_03e6_2239                   ; 03e6:2245
        pop bx                                  ; 03e6:2247
        pop si                                  ; 03e6:2248
        pop ds                                  ; 03e6:2249
        pop fs                                  ; 03e6:224a
        pop es                                  ; 03e6:224c
        retf                                    ; 03e6:224d

sub_03e6_224e:
        push es                                 ; 03e6:224e
        push fs                                 ; 03e6:224f
        push ds                                 ; 03e6:2251
        push si                                 ; 03e6:2252
        push bx                                 ; 03e6:2253
        les bx,[byte si+0x4f]                   ; 03e6:2254
        mov di,[byte si+0x36]                   ; 03e6:2257
        mov cx,[byte di-0x2]                    ; 03e6:225a
        lfs di,[byte si+0x4b]                   ; 03e6:225d
        push cs                                 ; 03e6:2261
        pop ds                                  ; 03e6:2262
        pop si                                  ; 03e6:2263

l_03e6_2264:
        call 0x0353:far_0353_073e               ; 03e6:2264
        add bx,byte +0xc                        ; 03e6:2269
        add di,byte +0xc                        ; 03e6:226c
        dec cx                                  ; 03e6:226f
        jnz short l_03e6_2264                   ; 03e6:2270
        pop si                                  ; 03e6:2272
        pop ds                                  ; 03e6:2273
        pop fs                                  ; 03e6:2274
        pop es                                  ; 03e6:2276
        retf                                    ; 03e6:2277

far_03e6_2278:
        push es                                 ; 03e6:2278
        pushad                                  ; 03e6:2279
        mov ax,cs                               ; 03e6:227b
        mov es,ax                               ; 03e6:227d
        mov bx,0x4c                             ; 03e6:227f
        test byte [byte si+0x3e],0x1            ; 03e6:2282
        jz short l_03e6_2293                    ; 03e6:2286
        mov bx,0x28                             ; 03e6:2288
        mov di,[byte si+0x36]                   ; 03e6:228b
        mov cx,[byte di-0x2]                    ; 03e6:228e
        jmp short l_03e6_22c2                   ; 03e6:2291

l_03e6_2293:
        add si,byte +0x24                       ; 03e6:2293
        call 0x0353:far_0353_06ea               ; 03e6:2296
        sub si,byte +0x24                       ; 03e6:229b
        mov di,[byte si+0x36]                   ; 03e6:229e
        mov cx,[byte di-0x2]                    ; 03e6:22a1
        push si                                 ; 03e6:22a4
        push di                                 ; 03e6:22a5
        push ds                                 ; 03e6:22a6
        mov bx,[byte si+0x3f]                   ; 03e6:22a7
        mov di,0x70                             ; 03e6:22aa
        mov si,0x4c                             ; 03e6:22ad
        mov ax,cs                               ; 03e6:22b0
        mov ds,ax                               ; 03e6:22b2
        call 0x0353:far_0353_07c8               ; 03e6:22b4
        pop ds                                  ; 03e6:22b9
        pop di                                  ; 03e6:22ba
        pop si                                  ; 03e6:22bb
        test byte [byte si+0x3e],0x2            ; 03e6:22bc
        jnz short l_03e6_22d3                   ; 03e6:22c0

l_03e6_22c2:
        call sub_03e6_21e2                      ; 03e6:22c2
        push cs                                 ; 03e6:22c5
        call sub_03e6_2222                      ; 03e6:22c6
        test byte [byte si+0x3e],0x4            ; 03e6:22c9
        jz short l_03e6_22d3                    ; 03e6:22cd
        push cs                                 ; 03e6:22cf
        call sub_03e6_224e                      ; 03e6:22d0

l_03e6_22d3:
        popad                                   ; 03e6:22d3
        pop es                                  ; 03e6:22d5
        retf                                    ; 03e6:22d6

far_03e6_22d7:
        push es                                 ; 03e6:22d7
        pushad                                  ; 03e6:22d8
        les bx,[byte si+0x3f]                   ; 03e6:22da
        add si,byte +0x24                       ; 03e6:22dd
        call 0x0353:far_0353_06ea               ; 03e6:22e0
        sub si,byte +0x24                       ; 03e6:22e5
        mov di,[byte si+0x36]                   ; 03e6:22e8
        mov cx,[byte di-0x2]                    ; 03e6:22eb
        call sub_03e6_21e2                      ; 03e6:22ee
        push cs                                 ; 03e6:22f1
        call sub_03e6_2222                      ; 03e6:22f2
        test byte [byte si+0x3e],0x4            ; 03e6:22f5
        jz short l_03e6_22ff                    ; 03e6:22f9
        push cs                                 ; 03e6:22fb
        call sub_03e6_224e                      ; 03e6:22fc

l_03e6_22ff:
        popad                                   ; 03e6:22ff
        pop es                                  ; 03e6:2301
        retf                                    ; 03e6:2302

sub_03e6_2303:
        pusha                                   ; 03e6:2303
        push fs                                 ; 03e6:2304
        push es                                 ; 03e6:2306
        mov di,[byte si+0x38]                   ; 03e6:2307
        les bx,[byte si+0x3a]                   ; 03e6:230a
        lfs si,[byte si+0x47]                   ; 03e6:230d
        mov ax,[byte di-0x2]                    ; 03e6:2311
        mov [cs:0x1dac],ax                      ; 03e6:2314
        mov word [cs:0x1db0],0x0                ; 03e6:2318

l_03e6_231f:
        mov ax,[byte di+0x8]                    ; 03e6:231f
        dec ax                                  ; 03e6:2322
        mov bx,ax                               ; 03e6:2323
        shl ax,byte 0x2                         ; 03e6:2325
        shl bx,byte 0x3                         ; 03e6:2328
        add bx,ax                               ; 03e6:232b
        mov ax,[fs:si]                          ; 03e6:232d
        imul word [es:bx]                       ; 03e6:2330
        mov cx,ax                               ; 03e6:2333
        mov bp,dx                               ; 03e6:2335
        mov ax,[byte fs:si+0x4]                 ; 03e6:2337
        imul word [byte es:bx+0x4]              ; 03e6:233b
        add cx,ax                               ; 03e6:233f
        adc bp,dx                               ; 03e6:2341
        mov ax,[byte fs:si+0x8]                 ; 03e6:2343
        imul word [byte es:bx+0x8]              ; 03e6:2347
        add ax,cx                               ; 03e6:234b
        adc dx,bp                               ; 03e6:234d
        shrd ax,dx,0xe                          ; 03e6:234f
        mov cx,[byte di+0x6]                    ; 03e6:2353
        dec cx                                  ; 03e6:2356
        mov bx,cx                               ; 03e6:2357
        shl cx,byte 0x2                         ; 03e6:2359
        shl bx,byte 0x3                         ; 03e6:235c
        add bx,cx                               ; 03e6:235f
        mov cx,[byte es:bx+0x8]                 ; 03e6:2361
        mov bx,[cs:0x1db0]                      ; 03e6:2365
        test byte [byte di+0x4],0x2             ; 03e6:236a
        jz short l_03e6_2377                    ; 03e6:236e
        or ax,0x0                               ; 03e6:2370
        js short l_03e6_2377                    ; 03e6:2373
        neg ax                                  ; 03e6:2375

l_03e6_2377:
        mov [word cs:bx+0xb67],ax               ; 03e6:2377
        mov [word cs:bx+0xf4f],cx               ; 03e6:237c
        mov [word cs:bx+0x1337],di              ; 03e6:2381
        mov ax,[di]                             ; 03e6:2386
        shl ax,1                                ; 03e6:2388
        add ax,0x6                              ; 03e6:238a
        add di,ax                               ; 03e6:238d
        add si,byte +0xc                        ; 03e6:238f
        add word [cs:0x1db0],byte +0x2          ; 03e6:2392
        dec word [cs:0x1dac]                    ; 03e6:2398
        jnz short l_03e6_231f                   ; 03e6:239d
        pop es                                  ; 03e6:239f
        pop fs                                  ; 03e6:23a0
        popa                                    ; 03e6:23a2
        ret                                     ; 03e6:23a3

sub_03e6_23a4:
        pusha                                   ; 03e6:23a4
        push es                                 ; 03e6:23a5
        push fs                                 ; 03e6:23a6
        mov bx,[byte si+0x38]                   ; 03e6:23a8
        mov cx,[byte bx-0x2]                    ; 03e6:23ab
        lfs ax,[cs:0x1dbe]                      ; 03e6:23ae
        les ax,[cs:0x1dba]                      ; 03e6:23b4
        xor bx,bx                               ; 03e6:23b9
        xor si,si                               ; 03e6:23bb
        xor bp,bp                               ; 03e6:23bd
        xor dx,dx                               ; 03e6:23bf

l_03e6_23c1:
        mov ax,[word cs:bx+0xb67]               ; 03e6:23c1
        or ax,0x0                               ; 03e6:23c6
        jns short l_03e6_23e9                   ; 03e6:23c9
        inc bp                                  ; 03e6:23cb
        movsx eax,word [word cs:bx+0xf4f]       ; 03e6:23cc
        mov [es:si],eax                         ; 03e6:23d3
        mov ax,[word cs:bx+0x1337]              ; 03e6:23d7
        shl eax,byte 0x10                       ; 03e6:23dc
        mov ax,dx                               ; 03e6:23e0
        mov [fs:si],eax                         ; 03e6:23e2
        add si,byte +0x4                        ; 03e6:23e6

l_03e6_23e9:
        add bx,byte +0x2                        ; 03e6:23e9
        inc dx                                  ; 03e6:23ec
        dec cx                                  ; 03e6:23ed
        jnz short l_03e6_23c1                   ; 03e6:23ee
        mov [cs:0x1dce],bp                      ; 03e6:23f0
        dec bp                                  ; 03e6:23f5
        cmp bp,byte +0x0                        ; 03e6:23f6
        jng short l_03e6_240a                   ; 03e6:23f9
        movzx ebx,bp                            ; 03e6:23fb
        xor edi,edi                             ; 03e6:23ff
        xor esi,esi                             ; 03e6:2402
        call 0x07b1:far_07b1_0006               ; 03e6:2405

l_03e6_240a:
        pop fs                                  ; 03e6:240a
        pop es                                  ; 03e6:240c
        popa                                    ; 03e6:240d
        ret                                     ; 03e6:240e

sub_03e6_240f:
        pusha                                   ; 03e6:240f
        push fs                                 ; 03e6:2410
        push es                                 ; 03e6:2412
        mov bx,[byte si+0x38]                   ; 03e6:2413
        mov cx,[byte bx-0x2]                    ; 03e6:2416
        lfs ax,[cs:0x1dc6]                      ; 03e6:2419
        les ax,[cs:0x1dc2]                      ; 03e6:241f
        xor bx,bx                               ; 03e6:2424
        xor si,si                               ; 03e6:2426
        xor bp,bp                               ; 03e6:2428

l_03e6_242a:
        movsx eax,word [word cs:bx+0xf4f]       ; 03e6:242a
        mov [es:si],eax                         ; 03e6:2431
        mov ax,[word cs:bx+0x1337]              ; 03e6:2435
        shl eax,byte 0x10                       ; 03e6:243a
        mov ax,bp                               ; 03e6:243e
        mov [fs:si],eax                         ; 03e6:2440
        add si,byte +0x4                        ; 03e6:2444
        add bx,byte +0x2                        ; 03e6:2447
        inc bp                                  ; 03e6:244a
        dec cx                                  ; 03e6:244b
        jnz short l_03e6_242a                   ; 03e6:244c
        mov [cs:0x1dd0],bp                      ; 03e6:244e
        dec bp                                  ; 03e6:2453
        movzx ebx,bp                            ; 03e6:2454
        xor edi,edi                             ; 03e6:2458
        xor esi,esi                             ; 03e6:245b
        call 0x07b1:far_07b1_0006               ; 03e6:245e
        pop es                                  ; 03e6:2463
        pop fs                                  ; 03e6:2464
        popa                                    ; 03e6:2466
        ret                                     ; 03e6:2467

sub_03e6_2468:
        pusha                                   ; 03e6:2468
        push fs                                 ; 03e6:2469
        push es                                 ; 03e6:246b
        mov [cs:0x1dac],ax                      ; 03e6:246c
        lfs si,[byte si+0x47]                   ; 03e6:2470

l_03e6_2474:
        mov si,[es:bx]                          ; 03e6:2474
        mov ax,si                               ; 03e6:2477
        shl ax,byte 0x2                         ; 03e6:2479
        shl si,byte 0x3                         ; 03e6:247c
        add si,ax                               ; 03e6:247f
        mov ax,[cs:0xc0]                        ; 03e6:2481
        imul word [fs:si]                       ; 03e6:2485
        mov cx,ax                               ; 03e6:2488
        mov bp,dx                               ; 03e6:248a
        mov ax,[cs:0xcc]                        ; 03e6:248c
        imul word [byte fs:si+0x4]              ; 03e6:2490
        add cx,ax                               ; 03e6:2494
        adc bp,dx                               ; 03e6:2496
        mov ax,[cs:0xd8]                        ; 03e6:2498
        imul word [byte fs:si+0x8]              ; 03e6:249c
        add ax,cx                               ; 03e6:24a0
        adc dx,bp                               ; 03e6:24a2
        shrd ax,dx,0xe                          ; 03e6:24a4
        imul word [cs:0x1e1a]                   ; 03e6:24a8
        shrd ax,dx,0xe                          ; 03e6:24ad
        mov si,[es:bx]                          ; 03e6:24b1
        add di,si                               ; 03e6:24b4
        mov [cs:di],al                          ; 03e6:24b6
        sub di,si                               ; 03e6:24b9
        add bx,byte +0x4                        ; 03e6:24bb
        dec word [cs:0x1dac]                    ; 03e6:24be
        jnz short l_03e6_2474                   ; 03e6:24c3
        pop es                                  ; 03e6:24c5
        pop fs                                  ; 03e6:24c6
        popa                                    ; 03e6:24c8
        ret                                     ; 03e6:24c9

sub_03e6_24ca:
        pushad                                  ; 03e6:24ca
        push es                                 ; 03e6:24cc
        les bx,[byte si+0x3a]                   ; 03e6:24cd
        mov si,[byte si+0x36]                   ; 03e6:24d0
        mov cx,[byte si-0x2]                    ; 03e6:24d3
        mov si,ax                               ; 03e6:24d6

l_03e6_24d8:
        mov ebp,[byte es:bx+0x8]                ; 03e6:24d8
        cmp ebp,byte +0x64                      ; 03e6:24dd
        jl short l_03e6_2506                    ; 03e6:24e1
        mov ax,[es:bx]                          ; 03e6:24e3
        mov di,[cs:0x1e14]                      ; 03e6:24e6
        imul di                                 ; 03e6:24eb
        idiv bp                                 ; 03e6:24ed
        add ax,0xa0                             ; 03e6:24ef
        mov [cs:si],ax                          ; 03e6:24f2
        mov ax,[byte es:bx+0x4]                 ; 03e6:24f5
        neg ax                                  ; 03e6:24f9
        imul di                                 ; 03e6:24fb
        idiv bp                                 ; 03e6:24fd
        add ax,0x64                             ; 03e6:24ff
        mov [byte cs:si+0x2],ax                 ; 03e6:2502

l_03e6_2506:
        add si,byte +0x4                        ; 03e6:2506
        add bx,byte +0xc                        ; 03e6:2509
        dec cx                                  ; 03e6:250c
        jnz short l_03e6_24d8                   ; 03e6:250d
        pop es                                  ; 03e6:250f
        popad                                   ; 03e6:2510
        retf                                    ; 03e6:2512

sub_03e6_2513:
        push ax                                 ; 03e6:2513
        mov ax,[byte si+0x14]                   ; 03e6:2514
        imul word [cs:0x1e2e]                   ; 03e6:2517
        idiv word [cs:0x1e2a]                   ; 03e6:251c
        neg al                                  ; 03e6:2521
        mov [cs:0x1d74],al                      ; 03e6:2523
        pop ax                                  ; 03e6:2527
        ret                                     ; 03e6:2528

far_03e6_2529:
        test word [byte si+0x3e],0x2            ; 03e6:2529
        jnz near l_03e6_26be                    ; 03e6:252e
        pushad                                  ; 03e6:2532
        push es                                 ; 03e6:2534
        push fs                                 ; 03e6:2535
        call sub_03e6_2513                      ; 03e6:2537
        mov ax,0x1a3                            ; 03e6:253a
        push cs                                 ; 03e6:253d
        call sub_03e6_24ca                      ; 03e6:253e
        call sub_03e6_2303                      ; 03e6:2541
        call sub_03e6_23a4                      ; 03e6:2544
        or word [cs:0x1dce],byte +0x0           ; 03e6:2547
        jz near l_03e6_26b9                     ; 03e6:254d
        mov di,0x58b                            ; 03e6:2551
        mov ax,[cs:0x1dce]                      ; 03e6:2554
        les bx,[cs:0x1dbe]                      ; 03e6:2558
        call sub_03e6_2468                      ; 03e6:255d
        les bx,[byte si+0x3a]                   ; 03e6:2560
        xor edi,edi                             ; 03e6:2563
        lfs di,[cs:0x1dbe]                      ; 03e6:2566
        movsx esi,word [cs:0x1dce]              ; 03e6:256c
        dec esi                                 ; 03e6:2573
        shl esi,byte 0x2                        ; 03e6:2575

l_03e6_2579:
        push esi                                ; 03e6:2579
        push edi                                ; 03e6:257b
        mov edi,[fs:edi+esi*1]                  ; 03e6:257d
        mov si,di                               ; 03e6:2583
        shr edi,byte 0x10                       ; 03e6:2585
        mov ax,[di]                             ; 03e6:2589
        mov word [cs:0x1d7e],0x0                ; 03e6:258b
        mov [cs:0x1dac],ax                      ; 03e6:2592
        mov ax,[byte di+0x2]                    ; 03e6:2596
        mov [cs:0x1d80],ax                      ; 03e6:2599
        mov al,[word cs:si+0x58b]               ; 03e6:259d
        sub al,[cs:0x1d74]                      ; 03e6:25a2
        mov [cs:0x1d82],al                      ; 03e6:25a7
        mov ax,[byte di+0x4]                    ; 03e6:25ab
        mov [cs:0x1dd2],ax                      ; 03e6:25ae
        test ax,0x1                             ; 03e6:25b2
        jz short l_03e6_25bf                    ; 03e6:25b5
        add di,byte +0x2                        ; 03e6:25b7
        dec word [cs:0x1dac]                    ; 03e6:25ba

l_03e6_25bf:
        add di,byte +0x6                        ; 03e6:25bf
        xor ecx,ecx                             ; 03e6:25c2
        mov ax,[di]                             ; 03e6:25c5
        dec ax                                  ; 03e6:25c7
        mov si,ax                               ; 03e6:25c8
        shl ax,byte 0x2                         ; 03e6:25ca
        shl si,byte 0x3                         ; 03e6:25cd
        add si,ax                               ; 03e6:25d0
        mov ax,[byte es:bx+si+0x8]              ; 03e6:25d2
        sub ax,0x64                             ; 03e6:25d6
        mov [cs:0x1df0],ax                      ; 03e6:25d9
        mov [cs:0x1dee],si                      ; 03e6:25dd

l_03e6_25e2:
        mov si,[di]                             ; 03e6:25e2
        dec si                                  ; 03e6:25e4
        mov [cs:0x1dec],si                      ; 03e6:25e5
        mov ax,si                               ; 03e6:25ea
        shl ax,byte 0x2                         ; 03e6:25ec
        shl si,byte 0x3                         ; 03e6:25ef
        add si,ax                               ; 03e6:25f2
        cmp dword [byte es:bx+si+0x8],byte +0x64; 03e6:25f4
        jnl short l_03e6_2654                   ; 03e6:25fa
        or word [cs:0x1d7e],byte +0x0           ; 03e6:25fc
        jz short l_03e6_2619                    ; 03e6:2602
        movzx bp,[byte di-0x2]                  ; 03e6:2604
        dec bp                                  ; 03e6:2608
        mov ax,bp                               ; 03e6:2609
        shl ax,byte 0x2                         ; 03e6:260b
        shl bp,byte 0x3                         ; 03e6:260e
        add bp,ax                               ; 03e6:2611
        call sub_03e6_281f                      ; 03e6:2613
        add cx,byte +0x4                        ; 03e6:2616

l_03e6_2619:
        dec word [cs:0x1dac]                    ; 03e6:2619
        jz short l_03e6_2685                    ; 03e6:261e
        add di,byte +0x2                        ; 03e6:2620
        mov si,[di]                             ; 03e6:2623
        dec si                                  ; 03e6:2625
        mov ax,si                               ; 03e6:2626
        shl ax,byte 0x2                         ; 03e6:2628
        shl si,byte 0x3                         ; 03e6:262b
        add si,ax                               ; 03e6:262e
        cmp dword [byte es:bx+si+0x8],byte +0x64; 03e6:2630
        jl short l_03e6_2619                    ; 03e6:2636
        movzx bp,[byte di-0x2]                  ; 03e6:2638
        dec bp                                  ; 03e6:263c
        mov ax,bp                               ; 03e6:263d
        shl ax,byte 0x2                         ; 03e6:263f
        shl bp,byte 0x3                         ; 03e6:2642
        add bp,ax                               ; 03e6:2645
        call sub_03e6_281f                      ; 03e6:2647
        add cx,byte +0x4                        ; 03e6:264a
        mov ax,[di]                             ; 03e6:264d
        dec ax                                  ; 03e6:264f
        mov [cs:0x1dec],ax                      ; 03e6:2650

l_03e6_2654:
        mov si,[cs:0x1dec]                      ; 03e6:2654
        shl si,byte 0x2                         ; 03e6:2659
        mov eax,[word cs:si+0x1a3]              ; 03e6:265c
        mov [dword cs:ecx+0xef],eax             ; 03e6:2662
        inc word [cs:0x1d7e]                    ; 03e6:266b
        add cx,byte +0x4                        ; 03e6:2670
        add di,byte +0x2                        ; 03e6:2673
        dec word [cs:0x1dac]                    ; 03e6:2676
        jnz near l_03e6_25e2                    ; 03e6:267b
        mov ax,si                               ; 03e6:267f
        shl ax,1                                ; 03e6:2681
        add si,ax                               ; 03e6:2683

l_03e6_2685:
        mov ax,[byte es:bx+si+0x8]              ; 03e6:2685
        sub ax,0x64                             ; 03e6:2689
        xor ax,[cs:0x1df0]                      ; 03e6:268c
        jns short l_03e6_269d                   ; 03e6:2691
        mov bp,[cs:0x1dee]                      ; 03e6:2693
        call sub_03e6_281f                      ; 03e6:2698
        jmp short l_03e6_269d                   ; 03e6:269b

l_03e6_269d:
        cmp word [cs:0x1d7e],byte +0x2          ; 03e6:269d
        jng short l_03e6_26a8                   ; 03e6:26a3
        call sub_03e6_28dd                      ; 03e6:26a5

l_03e6_26a8:
        pop edi                                 ; 03e6:26a8
        pop esi                                 ; 03e6:26aa
        sub esi,byte +0x4                       ; 03e6:26ac
        dec word [cs:0x1dce]                    ; 03e6:26b0
        jnz near l_03e6_2579                    ; 03e6:26b5

l_03e6_26b9:
        pop fs                                  ; 03e6:26b9
        pop es                                  ; 03e6:26bb
        popad                                   ; 03e6:26bc

l_03e6_26be:
        retf                                    ; 03e6:26be

sub_03e6_26bf:
        pusha                                   ; 03e6:26bf
        push es                                 ; 03e6:26c0
        mov di,[byte si+0x36]                   ; 03e6:26c1
        mov ax,[byte di-0x2]                    ; 03e6:26c4
        mov [cs:0x1dac],ax                      ; 03e6:26c7
        les di,[byte si+0x4f]                   ; 03e6:26cb
        xor bx,bx                               ; 03e6:26ce

l_03e6_26d0:
        mov ax,[cs:0xc0]                        ; 03e6:26d0
        imul word [es:di]                       ; 03e6:26d4
        mov cx,ax                               ; 03e6:26d7
        mov bp,dx                               ; 03e6:26d9
        mov ax,[cs:0xcc]                        ; 03e6:26db
        imul word [byte es:di+0x4]              ; 03e6:26df
        add cx,ax                               ; 03e6:26e3
        adc bp,dx                               ; 03e6:26e5
        mov ax,[cs:0xd8]                        ; 03e6:26e7
        imul word [byte es:di+0x8]              ; 03e6:26eb
        add ax,cx                               ; 03e6:26ef
        adc dx,bp                               ; 03e6:26f1
        shrd ax,dx,0xe                          ; 03e6:26f3
        imul word [cs:0x1e1a]                   ; 03e6:26f7
        shrd ax,dx,0xe                          ; 03e6:26fc
        neg ax                                  ; 03e6:2700
        mov [word cs:bx+0x77f],ax               ; 03e6:2702
        add bx,byte +0x2                        ; 03e6:2707
        add di,byte +0xc                        ; 03e6:270a
        dec word [cs:0x1dac]                    ; 03e6:270d
        jnz short l_03e6_26d0                   ; 03e6:2712
        pop es                                  ; 03e6:2714
        popa                                    ; 03e6:2715
        ret                                     ; 03e6:2716

far_03e6_2717:
        test word [byte si+0x3e],0x2            ; 03e6:2717
        jnz near l_03e6_281e                    ; 03e6:271c
        pushad                                  ; 03e6:2720
        push es                                 ; 03e6:2722
        push fs                                 ; 03e6:2723
        call sub_03e6_2513                      ; 03e6:2725
        mov ax,0x1a3                            ; 03e6:2728
        push cs                                 ; 03e6:272b
        call sub_03e6_24ca                      ; 03e6:272c
        call sub_03e6_2303                      ; 03e6:272f
        call sub_03e6_23a4                      ; 03e6:2732
        mov di,0x58b                            ; 03e6:2735
        call sub_03e6_26bf                      ; 03e6:2738
        xor edi,edi                             ; 03e6:273b
        lfs di,[cs:0x1dbe]                      ; 03e6:273e
        movsx esi,word [cs:0x1dce]              ; 03e6:2744
        dec esi                                 ; 03e6:274b
        js near l_03e6_2819                     ; 03e6:274d
        shl esi,byte 0x2                        ; 03e6:2751

l_03e6_2755:
        push esi                                ; 03e6:2755
        push edi                                ; 03e6:2757
        mov edi,[fs:edi+esi*1]                  ; 03e6:2759
        mov si,di                               ; 03e6:275f
        shr edi,byte 0x10                       ; 03e6:2761
        mov ax,[di]                             ; 03e6:2765
        mov word [cs:0x1d7e],0x0                ; 03e6:2767
        mov [cs:0x1dac],ax                      ; 03e6:276e
        mov ax,[byte di+0x2]                    ; 03e6:2772
        mov [cs:0x1d80],ax                      ; 03e6:2775
        mov al,[word cs:si+0x58b]               ; 03e6:2779
        sub al,[cs:0x1d74]                      ; 03e6:277e
        mov [cs:0x1d82],al                      ; 03e6:2783
        mov ax,[byte di+0x4]                    ; 03e6:2787
        mov [cs:0x1dd2],ax                      ; 03e6:278a
        test ax,0x1                             ; 03e6:278e
        jz short l_03e6_279b                    ; 03e6:2791
        add di,byte +0x2                        ; 03e6:2793
        dec word [cs:0x1dac]                    ; 03e6:2796

l_03e6_279b:
        add di,byte +0x6                        ; 03e6:279b
        xor ecx,ecx                             ; 03e6:279e

l_03e6_27a1:
        mov si,[di]                             ; 03e6:27a1
        dec si                                  ; 03e6:27a3
        shl si,1                                ; 03e6:27a4
        mov ax,[word cs:si+0x77f]               ; 03e6:27a6
        add ax,[cs:0x1d80]                      ; 03e6:27ab
        shr ecx,byte 0x2                        ; 03e6:27b0
        mov [dword cs:ecx+0x167],al             ; 03e6:27b4
        shl ecx,byte 0x2                        ; 03e6:27bc
        shl si,1                                ; 03e6:27c0
        mov eax,[word cs:si+0x1a3]              ; 03e6:27c2
        mov [dword cs:ecx+0xef],eax             ; 03e6:27c8
        inc word [cs:0x1d7e]                    ; 03e6:27d1
        add cx,byte +0x4                        ; 03e6:27d6
        add di,byte +0x2                        ; 03e6:27d9
        dec word [cs:0x1dac]                    ; 03e6:27dc
        jnz short l_03e6_27a1                   ; 03e6:27e1
        cmp word [cs:0x1d7e],byte +0x2          ; 03e6:27e3
        jng short l_03e6_2808                   ; 03e6:27e9
        push si                                 ; 03e6:27eb
        push ax                                 ; 03e6:27ec
        push ds                                 ; 03e6:27ed
        mov si,0xdc                             ; 03e6:27ee
        mov ax,cs                               ; 03e6:27f1
        mov ds,ax                               ; 03e6:27f3
        mov ax,[cs:0x1d7e]                      ; 03e6:27f5
        dec ax                                  ; 03e6:27f9
        mov [si],ax                             ; 03e6:27fa
        mov byte [byte si+0x12],0x0             ; 03e6:27fc
        call 0x027e:far_027e_0037               ; 03e6:2800
        pop ds                                  ; 03e6:2805
        pop ax                                  ; 03e6:2806
        pop si                                  ; 03e6:2807

l_03e6_2808:
        pop edi                                 ; 03e6:2808
        pop esi                                 ; 03e6:280a
        sub esi,byte +0x4                       ; 03e6:280c
        dec word [cs:0x1dce]                    ; 03e6:2810
        jnz near l_03e6_2755                    ; 03e6:2815

l_03e6_2819:
        pop fs                                  ; 03e6:2819
        pop es                                  ; 03e6:281b
        popad                                   ; 03e6:281c

l_03e6_281e:
        retf                                    ; 03e6:281e

sub_03e6_281f:
        pushad                                  ; 03e6:281f
        mov di,bp                               ; 03e6:2821
        mov eax,[es:bx+si]                      ; 03e6:2823
        sub eax,[es:bx+di]                      ; 03e6:2827
        mov ebp,0x64                            ; 03e6:282b
        sub ebp,[byte es:bx+di+0x8]             ; 03e6:2831
        mov [cs:0x1d8c],ebp                     ; 03e6:2836
        imul ebp                                ; 03e6:283c
        mov ebp,[byte es:bx+si+0x8]             ; 03e6:283f
        sub ebp,[byte es:bx+di+0x8]             ; 03e6:2844
        or ebp,byte +0x0                        ; 03e6:2849
        jnz short l_03e6_2855                   ; 03e6:284d
        mov ebp,0x1                             ; 03e6:284f

l_03e6_2855:
        mov [cs:0x1d90],ebp                     ; 03e6:2855
        idiv ebp                                ; 03e6:285b
        add eax,[es:bx+di]                      ; 03e6:285e
        mov [cs:0x1d94],eax                     ; 03e6:2862
        mov eax,[byte es:bx+si+0x4]             ; 03e6:2867
        sub eax,[byte es:bx+di+0x4]             ; 03e6:286c
        imul dword [cs:0x1d8c]                  ; 03e6:2871
        idiv dword [cs:0x1d90]                  ; 03e6:2877
        add eax,[byte es:bx+di+0x4]             ; 03e6:287d
        mov [cs:0x1d98],eax                     ; 03e6:2882
        mov dword [cs:0x1d9c],0x64              ; 03e6:2887
        mov ebp,[cs:0x1d9c]                     ; 03e6:2891
        mov eax,[cs:0x1d94]                     ; 03e6:2897
        mov edx,[cs:0x1e14]                     ; 03e6:289c
        imul edx                                ; 03e6:28a2
        idiv ebp                                ; 03e6:28a5
        add eax,0xa0                            ; 03e6:28a8
        mov [dword cs:ecx+0xef],ax              ; 03e6:28ae
        mov eax,[cs:0x1d98]                     ; 03e6:28b6
        neg eax                                 ; 03e6:28bb
        mov edx,[cs:0x1e14]                     ; 03e6:28be
        imul edx                                ; 03e6:28c4
        idiv ebp                                ; 03e6:28c7
        add ax,0x64                             ; 03e6:28ca
        mov [dword cs:ecx+0xf1],ax              ; 03e6:28cd
        inc word [cs:0x1d7e]                    ; 03e6:28d5
        popad                                   ; 03e6:28da
        ret                                     ; 03e6:28dc

sub_03e6_28dd:
        push si                                 ; 03e6:28dd
        push ax                                 ; 03e6:28de
        push ds                                 ; 03e6:28df
        mov si,0xdc                             ; 03e6:28e0
        mov ax,cs                               ; 03e6:28e3
        mov ds,ax                               ; 03e6:28e5
        test word [cs:0x1dd2],0x4               ; 03e6:28e7
        jnz short l_03e6_290a                   ; 03e6:28ee
        mov ax,[cs:0x1d7e]                      ; 03e6:28f0
        dec ax                                  ; 03e6:28f4
        mov [si],ax                             ; 03e6:28f5
        mov al,[cs:0x1d80]                      ; 03e6:28f7
        sub al,[cs:0x1d82]                      ; 03e6:28fb
        mov [byte si+0x12],al                   ; 03e6:2900
        call 0x0313:far_0313_003b               ; 03e6:2903
        jmp short l_03e6_2946                   ; 03e6:2908

l_03e6_290a:
        push bx                                 ; 03e6:290a
        push es                                 ; 03e6:290b
        push di                                 ; 03e6:290c
        mov bx,[cs:0x1d80]                      ; 03e6:290d
        dec bx                                  ; 03e6:2912
        shl bx,byte 0x3                         ; 03e6:2913
        les di,[cs:0x1df6]                      ; 03e6:2916
        mov eax,[es:bx+di]                      ; 03e6:291b
        mov [byte si+0x6],eax                   ; 03e6:291f
        mov eax,[byte es:bx+di+0x4]             ; 03e6:2923
        mov [byte si+0xa],eax                   ; 03e6:2928
        mov ax,[cs:0x1d7e]                      ; 03e6:292c
        dec ax                                  ; 03e6:2930
        mov [si],ax                             ; 03e6:2931
        mov al,[cs:0x1d82]                      ; 03e6:2933
        neg al                                  ; 03e6:2937
        mov [byte si+0x12],al                   ; 03e6:2939
        call 0x0353:far_0353_005f               ; 03e6:293c
        pop di                                  ; 03e6:2941
        pop es                                  ; 03e6:2942
        pop bx                                  ; 03e6:2943
        jmp short l_03e6_2946                   ; 03e6:2944

l_03e6_2946:
        pop ds                                  ; 03e6:2946
        pop ax                                  ; 03e6:2947
        pop si                                  ; 03e6:2948
        ret                                     ; 03e6:2949

sub_03e6_294a:
        push ecx                                ; 03e6:294a
        push edx                                ; 03e6:294c
        mov eax,[es:bx+si]                      ; 03e6:294e
        sub eax,[cs:0x1da0]                     ; 03e6:2952
        imul dword [cs:0x1d88]                  ; 03e6:2958
        shrd eax,edx,0xa                        ; 03e6:295e
        mov ecx,eax                             ; 03e6:2963
        mov eax,[byte es:bx+si+0x4]             ; 03e6:2966
        sub eax,[cs:0x1da4]                     ; 03e6:296b
        imul dword [cs:0x1d8c]                  ; 03e6:2971
        shrd eax,edx,0xa                        ; 03e6:2977
        add ecx,eax                             ; 03e6:297c
        mov eax,[byte es:bx+si+0x8]             ; 03e6:297f
        sub eax,[cs:0x1da8]                     ; 03e6:2984
        imul dword [cs:0x1d90]                  ; 03e6:298a
        shrd eax,edx,0xa                        ; 03e6:2990
        add eax,ecx                             ; 03e6:2995
        add eax,byte +0x5                       ; 03e6:2998
        pop edx                                 ; 03e6:299c
        pop ecx                                 ; 03e6:299e
        ret                                     ; 03e6:29a0

sub_03e6_29a1:
        pushad                                  ; 03e6:29a1
        call sub_03e6_294a                      ; 03e6:29a3
        mov [cs:0x1dfe],ax                      ; 03e6:29a6
        mov di,si                               ; 03e6:29aa
        mov si,bp                               ; 03e6:29ac
        call sub_03e6_294a                      ; 03e6:29ae
        mov [cs:0x1e00],ax                      ; 03e6:29b1
        xchg si,di                              ; 03e6:29b5
        cmp word [cs:0x1dfe],byte +0x0          ; 03e6:29b7
        jg short l_03e6_29c4                    ; 03e6:29bd
        neg word [cs:0x1dfe]                    ; 03e6:29bf

l_03e6_29c4:
        cmp word [cs:0x1e00],byte +0x0          ; 03e6:29c4
        jg short l_03e6_29d1                    ; 03e6:29ca
        neg word [cs:0x1e00]                    ; 03e6:29cc

l_03e6_29d1:
        movsx eax,word [cs:0x1e00]              ; 03e6:29d1
        movsx ebp,word [cs:0x1dfe]              ; 03e6:29d8
        add ebp,eax                             ; 03e6:29df
        shl eax,byte 0xa                        ; 03e6:29e2
        cdq                                     ; 03e6:29e6
        idiv ebp                                ; 03e6:29e8
        mov [cs:0x1e02],eax                     ; 03e6:29eb
        mov eax,[es:bx+si]                      ; 03e6:29f0
        sub eax,[es:bx+di]                      ; 03e6:29f4
        imul dword [cs:0x1e02]                  ; 03e6:29f8
        shrd eax,edx,0xa                        ; 03e6:29fe
        add eax,[es:bx+di]                      ; 03e6:2a03
        mov [cs:0x1d94],eax                     ; 03e6:2a07
        mov eax,[byte es:bx+si+0x4]             ; 03e6:2a0c
        sub eax,[byte es:bx+di+0x4]             ; 03e6:2a11
        imul dword [cs:0x1e02]                  ; 03e6:2a16
        shrd eax,edx,0xa                        ; 03e6:2a1c
        add eax,[byte es:bx+di+0x4]             ; 03e6:2a21
        mov [cs:0x1d98],eax                     ; 03e6:2a26
        mov eax,[byte es:bx+si+0x8]             ; 03e6:2a2b
        sub eax,[byte es:bx+di+0x8]             ; 03e6:2a30
        imul dword [cs:0x1e02]                  ; 03e6:2a35
        shrd eax,edx,0xa                        ; 03e6:2a3b
        add eax,[byte es:bx+di+0x8]             ; 03e6:2a40
        mov [cs:0x1d9c],eax                     ; 03e6:2a45
        mov ebp,[cs:0x1d9c]                     ; 03e6:2a4a
        mov eax,[cs:0x1d94]                     ; 03e6:2a50
        mov edx,[cs:0x1e14]                     ; 03e6:2a55
        imul edx                                ; 03e6:2a5b
        idiv ebp                                ; 03e6:2a5e
        add eax,0xa0                            ; 03e6:2a61
        mov [dword cs:ecx+0xef],ax              ; 03e6:2a67
        mov eax,[cs:0x1d98]                     ; 03e6:2a6f
        neg eax                                 ; 03e6:2a74
        mov edx,[cs:0x1e14]                     ; 03e6:2a77
        imul edx                                ; 03e6:2a7d
        idiv ebp                                ; 03e6:2a80
        add ax,0x64                             ; 03e6:2a83
        mov [dword cs:ecx+0xf1],ax              ; 03e6:2a86
        inc word [cs:0x1d7e]                    ; 03e6:2a8e
        popad                                   ; 03e6:2a93
        retf                                    ; 03e6:2a95

sub_03e6_2a96:
        les bx,[byte si+0x3a]                   ; 03e6:2a96
        lfs di,[cs:0x1dbe]                      ; 03e6:2a99
        movsx esi,word [cs:0x1dce]              ; 03e6:2a9f
        push si                                 ; 03e6:2aa6
        dec esi                                 ; 03e6:2aa7
        js near l_03e6_2bec                     ; 03e6:2aa9
        shl esi,byte 0x2                        ; 03e6:2aad

l_03e6_2ab1:
        push esi                                ; 03e6:2ab1
        push edi                                ; 03e6:2ab3
        mov edi,[fs:edi+esi*1]                  ; 03e6:2ab5
        mov si,di                               ; 03e6:2abb
        shr edi,byte 0x10                       ; 03e6:2abd
        mov ax,[di]                             ; 03e6:2ac1
        mov word [cs:0x1d7e],0x0                ; 03e6:2ac3
        mov [cs:0x1dac],ax                      ; 03e6:2aca
        mov ax,[byte di+0x2]                    ; 03e6:2ace
        mov [cs:0x1d80],ax                      ; 03e6:2ad1
        mov al,[word cs:si+0x58b]               ; 03e6:2ad5
        sub al,[cs:0x1d74]                      ; 03e6:2ada
        mov [cs:0x1d82],al                      ; 03e6:2adf
        mov ax,[byte di+0x4]                    ; 03e6:2ae3
        mov [cs:0x1dd2],ax                      ; 03e6:2ae6
        test ax,0x1                             ; 03e6:2aea
        jz short l_03e6_2af7                    ; 03e6:2aed
        add di,byte +0x2                        ; 03e6:2aef
        dec word [cs:0x1dac]                    ; 03e6:2af2

l_03e6_2af7:
        add di,byte +0x6                        ; 03e6:2af7
        xor ecx,ecx                             ; 03e6:2afa
        mov ax,[di]                             ; 03e6:2afd
        dec ax                                  ; 03e6:2aff
        mov si,ax                               ; 03e6:2b00
        shl ax,byte 0x2                         ; 03e6:2b02
        shl si,byte 0x3                         ; 03e6:2b05
        add si,ax                               ; 03e6:2b08
        call sub_03e6_294a                      ; 03e6:2b0a
        mov [cs:0x1df0],ax                      ; 03e6:2b0d
        mov [cs:0x1dee],si                      ; 03e6:2b11

l_03e6_2b16:
        mov si,[di]                             ; 03e6:2b16
        dec si                                  ; 03e6:2b18
        mov [cs:0x1dec],si                      ; 03e6:2b19
        mov ax,si                               ; 03e6:2b1e
        shl ax,byte 0x2                         ; 03e6:2b20
        shl si,byte 0x3                         ; 03e6:2b23
        add si,ax                               ; 03e6:2b26
        call sub_03e6_294a                      ; 03e6:2b28
        cmp ax,0x0                              ; 03e6:2b2b
        jnl short l_03e6_2b8a                   ; 03e6:2b2e
        or word [cs:0x1d7e],byte +0x0           ; 03e6:2b30
        jz short l_03e6_2b4e                    ; 03e6:2b36
        movzx bp,[byte di-0x2]                  ; 03e6:2b38
        dec bp                                  ; 03e6:2b3c
        mov ax,bp                               ; 03e6:2b3d
        shl ax,byte 0x2                         ; 03e6:2b3f
        shl bp,byte 0x3                         ; 03e6:2b42
        add bp,ax                               ; 03e6:2b45
        push cs                                 ; 03e6:2b47
        call sub_03e6_29a1                      ; 03e6:2b48
        add cx,byte +0x4                        ; 03e6:2b4b

l_03e6_2b4e:
        dec word [cs:0x1dac]                    ; 03e6:2b4e
        jz short l_03e6_2bbb                    ; 03e6:2b53
        add di,byte +0x2                        ; 03e6:2b55
        mov si,[di]                             ; 03e6:2b58
        dec si                                  ; 03e6:2b5a
        mov ax,si                               ; 03e6:2b5b
        shl ax,byte 0x2                         ; 03e6:2b5d
        shl si,byte 0x3                         ; 03e6:2b60
        add si,ax                               ; 03e6:2b63
        call sub_03e6_294a                      ; 03e6:2b65
        cmp ax,0x0                              ; 03e6:2b68
        jl short l_03e6_2b4e                    ; 03e6:2b6b
        movzx bp,[byte di-0x2]                  ; 03e6:2b6d
        dec bp                                  ; 03e6:2b71
        mov ax,bp                               ; 03e6:2b72
        shl ax,byte 0x2                         ; 03e6:2b74
        shl bp,byte 0x3                         ; 03e6:2b77
        add bp,ax                               ; 03e6:2b7a
        push cs                                 ; 03e6:2b7c
        call sub_03e6_29a1                      ; 03e6:2b7d
        add cx,byte +0x4                        ; 03e6:2b80
        mov ax,[di]                             ; 03e6:2b83
        dec ax                                  ; 03e6:2b85
        mov [cs:0x1dec],ax                      ; 03e6:2b86

l_03e6_2b8a:
        mov si,[cs:0x1dec]                      ; 03e6:2b8a
        shl si,byte 0x2                         ; 03e6:2b8f
        mov eax,[word cs:si+0x1a3]              ; 03e6:2b92
        mov [dword cs:ecx+0xef],eax             ; 03e6:2b98
        inc word [cs:0x1d7e]                    ; 03e6:2ba1
        add cx,byte +0x4                        ; 03e6:2ba6
        add di,byte +0x2                        ; 03e6:2ba9
        dec word [cs:0x1dac]                    ; 03e6:2bac
        jnz near l_03e6_2b16                    ; 03e6:2bb1
        mov ax,si                               ; 03e6:2bb5
        shl ax,1                                ; 03e6:2bb7
        add si,ax                               ; 03e6:2bb9

l_03e6_2bbb:
        call sub_03e6_294a                      ; 03e6:2bbb
        xor ax,[cs:0x1df0]                      ; 03e6:2bbe
        jns short l_03e6_2bd0                   ; 03e6:2bc3
        mov bp,[cs:0x1dee]                      ; 03e6:2bc5
        push cs                                 ; 03e6:2bca
        call sub_03e6_29a1                      ; 03e6:2bcb
        jmp short l_03e6_2bd0                   ; 03e6:2bce

l_03e6_2bd0:
        cmp word [cs:0x1d7e],byte +0x2          ; 03e6:2bd0
        jng short l_03e6_2bdb                   ; 03e6:2bd6
        call sub_03e6_28dd                      ; 03e6:2bd8

l_03e6_2bdb:
        pop edi                                 ; 03e6:2bdb
        pop esi                                 ; 03e6:2bdd
        sub esi,byte +0x4                       ; 03e6:2bdf
        dec word [cs:0x1dce]                    ; 03e6:2be3
        jnz near l_03e6_2ab1                    ; 03e6:2be8

l_03e6_2bec:
        pop ax                                  ; 03e6:2bec
        mov [cs:0x1dce],ax                      ; 03e6:2bed
        retf                                    ; 03e6:2bf1

far_03e6_2bf2:
        pushad                                  ; 03e6:2bf2
        push es                                 ; 03e6:2bf4
        push fs                                 ; 03e6:2bf5
        mov [cs:0x1dfa],si                      ; 03e6:2bf7
        mov [cs:0x1dfc],di                      ; 03e6:2bfc
        mov si,[cs:0x1dfc]                      ; 03e6:2c01
        call sub_03e6_2513                      ; 03e6:2c06
        les bx,[byte si+0x3a]                   ; 03e6:2c09
        mov ax,0x1a3                            ; 03e6:2c0c
        push cs                                 ; 03e6:2c0f
        call sub_03e6_24ca                      ; 03e6:2c10
        call sub_03e6_2303                      ; 03e6:2c13
        call sub_03e6_23a4                      ; 03e6:2c16
        mov di,0x58b                            ; 03e6:2c19
        mov ax,[cs:0x1dce]                      ; 03e6:2c1c
        les bx,[cs:0x1dbe]                      ; 03e6:2c20
        call sub_03e6_2468                      ; 03e6:2c25
        mov si,[cs:0x1dfa]                      ; 03e6:2c28
        mov al,[cs:0x1d74]                      ; 03e6:2c2d
        call sub_03e6_2513                      ; 03e6:2c31
        xchg al,[cs:0x1d74]                     ; 03e6:2c34
        mov [cs:0x1d75],al                      ; 03e6:2c39
        mov ax,0x1797                           ; 03e6:2c3d
        push cs                                 ; 03e6:2c40
        call sub_03e6_24ca                      ; 03e6:2c41
        call sub_03e6_2303                      ; 03e6:2c44
        call sub_03e6_240f                      ; 03e6:2c47
        mov di,0x1b7f                           ; 03e6:2c4a
        mov ax,[cs:0x1dd0]                      ; 03e6:2c4d
        les bx,[cs:0x1dc6]                      ; 03e6:2c51
        call sub_03e6_2468                      ; 03e6:2c56
        les bx,[byte si+0x3a]                   ; 03e6:2c59
        lfs di,[cs:0x1dc6]                      ; 03e6:2c5c
        movsx esi,word [cs:0x1dd0]              ; 03e6:2c62
        dec esi                                 ; 03e6:2c69
        js near l_03e6_2d38                     ; 03e6:2c6b
        shl esi,byte 0x2                        ; 03e6:2c6f

l_03e6_2c73:
        push esi                                ; 03e6:2c73
        push edi                                ; 03e6:2c75
        mov edi,[fs:edi+esi*1]                  ; 03e6:2c77
        mov si,di                               ; 03e6:2c7d
        mov [cs:0x1e28],si                      ; 03e6:2c7f
        shr edi,byte 0x10                       ; 03e6:2c84
        mov ax,[di]                             ; 03e6:2c88
        mov word [cs:0x1d7e],0x0                ; 03e6:2c8a
        mov [cs:0x1db0],ax                      ; 03e6:2c91
        mov ax,[byte di+0x2]                    ; 03e6:2c95
        mov [cs:0x1d80],ax                      ; 03e6:2c98
        mov al,[word cs:si+0x1b7f]              ; 03e6:2c9c
        mov [cs:0x1d82],al                      ; 03e6:2ca1
        mov ax,[byte di+0x4]                    ; 03e6:2ca5
        mov [cs:0x1dd2],ax                      ; 03e6:2ca8
        test ax,0x1                             ; 03e6:2cac
        jz short l_03e6_2cb9                    ; 03e6:2caf
        add di,byte +0x2                        ; 03e6:2cb1
        dec word [cs:0x1db0]                    ; 03e6:2cb4

l_03e6_2cb9:
        add di,byte +0x6                        ; 03e6:2cb9
        mov [cs:0x1da0],di                      ; 03e6:2cbc
        xor ecx,ecx                             ; 03e6:2cc1

l_03e6_2cc4:
        mov si,[di]                             ; 03e6:2cc4
        dec si                                  ; 03e6:2cc6
        shl si,byte 0x2                         ; 03e6:2cc7
        mov eax,[word cs:si+0x1797]             ; 03e6:2cca
        mov [dword cs:ecx+0xef],eax             ; 03e6:2cd0
        inc word [cs:0x1d7e]                    ; 03e6:2cd9
        add cx,byte +0x4                        ; 03e6:2cde
        add di,byte +0x2                        ; 03e6:2ce1
        dec word [cs:0x1db0]                    ; 03e6:2ce4
        jnz short l_03e6_2cc4                   ; 03e6:2ce9
        mov si,[cs:0x1e28]                      ; 03e6:2ceb
        shl si,1                                ; 03e6:2cf0
        or word [word cs:si+0xb67],byte +0x0    ; 03e6:2cf2
        jns short l_03e6_2cfd                   ; 03e6:2cf8
        call sub_03e6_28dd                      ; 03e6:2cfa

l_03e6_2cfd:
        pushad                                  ; 03e6:2cfd
        push ds                                 ; 03e6:2cff
        push es                                 ; 03e6:2d00
        push gs                                 ; 03e6:2d01
        push fs                                 ; 03e6:2d03
        mov di,[cs:0x1da0]                      ; 03e6:2d05
        sub di,byte +0x2                        ; 03e6:2d0a
        mov si,[cs:0x1dfa]                      ; 03e6:2d0d
        push cs                                 ; 03e6:2d12
        call sub_03e6_2d3e                      ; 03e6:2d13
        mov si,[cs:0x1dfc]                      ; 03e6:2d16
        push cs                                 ; 03e6:2d1b
        call sub_03e6_2a96                      ; 03e6:2d1c
        pop fs                                  ; 03e6:2d1f
        pop gs                                  ; 03e6:2d21
        pop es                                  ; 03e6:2d23
        pop ds                                  ; 03e6:2d24
        popad                                   ; 03e6:2d25
        pop edi                                 ; 03e6:2d27
        pop esi                                 ; 03e6:2d29
        sub esi,byte +0x4                       ; 03e6:2d2b
        dec word [cs:0x1dd0]                    ; 03e6:2d2f
        jnz near l_03e6_2c73                    ; 03e6:2d34

l_03e6_2d38:
        pop fs                                  ; 03e6:2d38
        pop es                                  ; 03e6:2d3a
        popad                                   ; 03e6:2d3b
        retf                                    ; 03e6:2d3d

sub_03e6_2d3e:
        mov bx,[di]                             ; 03e6:2d3e
        dec bx                                  ; 03e6:2d40
        mov ax,bx                               ; 03e6:2d41
        shl ax,byte 0x2                         ; 03e6:2d43
        shl bx,byte 0x3                         ; 03e6:2d46
        add bx,ax                               ; 03e6:2d49
        mov eax,[es:bx]                         ; 03e6:2d4b
        mov ecx,[byte es:bx+0x4]                ; 03e6:2d4f
        mov ebp,[byte es:bx+0x8]                ; 03e6:2d54
        mov [cs:0x1da0],eax                     ; 03e6:2d59
        mov [cs:0x1da4],ecx                     ; 03e6:2d5e
        mov [cs:0x1da8],ebp                     ; 03e6:2d64
        les bx,[byte si+0x47]                   ; 03e6:2d6a
        mov ax,[cs:0x1e28]                      ; 03e6:2d6d
        mov cx,ax                               ; 03e6:2d71
        shl cx,byte 0x2                         ; 03e6:2d73
        shl ax,byte 0x3                         ; 03e6:2d76
        add ax,cx                               ; 03e6:2d79
        add bx,ax                               ; 03e6:2d7b
        mov eax,[es:bx]                         ; 03e6:2d7d
        mov [cs:0x1d88],eax                     ; 03e6:2d81
        mov eax,[byte es:bx+0x4]                ; 03e6:2d86
        mov [cs:0x1d8c],eax                     ; 03e6:2d8b
        mov eax,[byte es:bx+0x8]                ; 03e6:2d90
        mov [cs:0x1d90],eax                     ; 03e6:2d95
        retf                                    ; 03e6:2d9a

far_03e6_2d9b:
        push ax                                 ; 03e6:2d9b
        mov ax,[si]                             ; 03e6:2d9c
        mov [cs:0x1de8],ax                      ; 03e6:2d9e
        mov ax,[byte si+0x4]                    ; 03e6:2da2
        mov [cs:0x1de4],ax                      ; 03e6:2da5
        mov ax,[byte si+0x2]                    ; 03e6:2da9
        mov [cs:0x1dea],ax                      ; 03e6:2dac
        mov ax,[byte si+0x6]                    ; 03e6:2db0
        mov [cs:0x1de6],ax                      ; 03e6:2db3
        mov ax,[byte si+0x8]                    ; 03e6:2db7
        mov [cs:0x1dda],ax                      ; 03e6:2dba
        mov ax,[byte si+0xa]                    ; 03e6:2dbe
        mov [cs:0x1ddc],ax                      ; 03e6:2dc1
        mov ax,[byte si+0xc]                    ; 03e6:2dc5
        mov [cs:0x1dde],ax                      ; 03e6:2dc8
        mov ax,[byte si+0xe]                    ; 03e6:2dcc
        mov [cs:0x1de0],ax                      ; 03e6:2dcf
        mov eax,[byte si+0x10]                  ; 03e6:2dd3
        mov [cs:0x1df6],eax                     ; 03e6:2dd7
        pop ax                                  ; 03e6:2ddc
        retf                                    ; 03e6:2ddd

far_03e6_2dde:
        pushad                                  ; 03e6:2dde
        push es                                 ; 03e6:2de0
        mov [cs:0x1dca],cx                      ; 03e6:2de1
        mov [cs:0x1df4],si                      ; 03e6:2de6
        mov di,[cs:0x1de8]                      ; 03e6:2deb
        mov bx,[cs:0x1de4]                      ; 03e6:2df0
        mov bp,sp                               ; 03e6:2df5
        mov ax,ss                               ; 03e6:2df7
        mov es,ax                               ; 03e6:2df9

l_03e6_2dfb:
        mov cx,[di]                             ; 03e6:2dfb
        add di,byte +0x2                        ; 03e6:2dfd
        push di                                 ; 03e6:2e00

l_03e6_2e01:
        mov ax,[di]                             ; 03e6:2e01
        shl ax,1                                ; 03e6:2e03
        add di,byte +0x6                        ; 03e6:2e05
        add di,ax                               ; 03e6:2e08
        dec cx                                  ; 03e6:2e0a
        jnz short l_03e6_2e01                   ; 03e6:2e0b
        cmp di,[cs:0x1dea]                      ; 03e6:2e0d
        jc short l_03e6_2dfb                    ; 03e6:2e12
        mov cx,[cs:0x1dca]                      ; 03e6:2e14

l_03e6_2e19:
        test word [byte si+0x3e],0x2            ; 03e6:2e19
        jnz near l_03e6_2ebe                    ; 03e6:2e1e
        mov bx,[byte si+0x30]                   ; 03e6:2e22
        inc bx                                  ; 03e6:2e25
        shl bx,1                                ; 03e6:2e26
        neg bx                                  ; 03e6:2e28
        mov di,bp                               ; 03e6:2e2a
        xor eax,eax                             ; 03e6:2e2c
        mov ax,[es:bx+di]                       ; 03e6:2e2f
        mov [byte si+0x38],ax                   ; 03e6:2e32
        mov dx,[byte si+0x30]                   ; 03e6:2e35
        mov bx,[cs:0x1de4]                      ; 03e6:2e38

l_03e6_2e3d:
        mov ax,[bx]                             ; 03e6:2e3d
        mov [cs:0x1dac],ax                      ; 03e6:2e3f
        add bx,byte +0x2                        ; 03e6:2e43
        mov di,bx                               ; 03e6:2e46
        push ebp                                ; 03e6:2e48
        push dx                                 ; 03e6:2e4a
        mov dword [byte si+0x32],0x0            ; 03e6:2e4b

l_03e6_2e53:
        mov eax,[bx]                            ; 03e6:2e53
        imul eax                                ; 03e6:2e56
        mov ebp,eax                             ; 03e6:2e59
        add bx,byte +0x4                        ; 03e6:2e5c
        mov eax,[bx]                            ; 03e6:2e5f
        imul eax                                ; 03e6:2e62
        add ebp,eax                             ; 03e6:2e65
        add bx,byte +0x4                        ; 03e6:2e68
        mov eax,[bx]                            ; 03e6:2e6b
        imul eax                                ; 03e6:2e6e
        add eax,ebp                             ; 03e6:2e71
        add bx,byte +0x4                        ; 03e6:2e74
        call 0x07bf:far_07bf_001a               ; 03e6:2e77
        cmp eax,[byte si+0x32]                  ; 03e6:2e7c
        jl short l_03e6_2e86                    ; 03e6:2e80
        mov [byte si+0x32],eax                  ; 03e6:2e82

l_03e6_2e86:
        dec word [cs:0x1dac]                    ; 03e6:2e86
        jnz short l_03e6_2e53                   ; 03e6:2e8b
        pop dx                                  ; 03e6:2e8d
        pop ebp                                 ; 03e6:2e8e
        dec dx                                  ; 03e6:2e90
        jns short l_03e6_2e3d                   ; 03e6:2e91
        mov [byte si+0x36],di                   ; 03e6:2e93
        mov bx,[byte di-0x2]                    ; 03e6:2e96
        mov ax,bx                               ; 03e6:2e99
        shl ax,byte 0x2                         ; 03e6:2e9b
        shl bx,byte 0x3                         ; 03e6:2e9e
        add bx,ax                               ; 03e6:2ea1
        add bx,byte +0xf                        ; 03e6:2ea3
        shr bx,byte 0x4                         ; 03e6:2ea6
        call 0x027c:far_027c_0002               ; 03e6:2ea9
        shl eax,byte 0x10                       ; 03e6:2eae
        mov [byte si+0x3a],eax                  ; 03e6:2eb2
        push cs                                 ; 03e6:2eb6
        call sub_03e6_32b9                      ; 03e6:2eb7
        push cs                                 ; 03e6:2eba
        call sub_03e6_3216                      ; 03e6:2ebb

l_03e6_2ebe:
        mov [byte si+0x41],cs                   ; 03e6:2ebe
        test byte [byte si+0x3e],0x0            ; 03e6:2ec1
        jnz short l_03e6_2ece                   ; 03e6:2ec5
        mov word [byte si+0x3f],0x94            ; 03e6:2ec7
        jmp short l_03e6_2ed3                   ; 03e6:2ecc

l_03e6_2ece:
        mov word [byte si+0x3f],0x28            ; 03e6:2ece

l_03e6_2ed3:
        add si,byte +0x53                       ; 03e6:2ed3
        dec cx                                  ; 03e6:2ed6
        jnz near l_03e6_2e19                    ; 03e6:2ed7
        mov [cs:0xe0],cs                        ; 03e6:2edb
        mov word [cs:0xde],0xef                 ; 03e6:2ee0
        mov [cs:0xec],cs                        ; 03e6:2ee7
        mov word [cs:0xea],0x167                ; 03e6:2eec
        mov [cs:0xe8],cs                        ; 03e6:2ef3
        mov bx,0x1f4                            ; 03e6:2ef8
        shr bx,byte 0x2                         ; 03e6:2efb
        inc bx                                  ; 03e6:2efe
        call 0x027c:far_027c_0002               ; 03e6:2eff
        shl eax,byte 0x10                       ; 03e6:2f04
        mov [cs:0x1db2],eax                     ; 03e6:2f08
        mov bx,0x1f4                            ; 03e6:2f0d
        shr bx,byte 0x2                         ; 03e6:2f10
        inc bx                                  ; 03e6:2f13
        call 0x027c:far_027c_0002               ; 03e6:2f14
        shl eax,byte 0x10                       ; 03e6:2f19
        mov [cs:0x1db6],eax                     ; 03e6:2f1d
        mov bx,0x1f4                            ; 03e6:2f22
        shr bx,byte 0x2                         ; 03e6:2f25
        inc bx                                  ; 03e6:2f28
        call 0x027c:far_027c_0002               ; 03e6:2f29
        shl eax,byte 0x10                       ; 03e6:2f2e
        mov [cs:0x1dba],eax                     ; 03e6:2f32
        mov bx,0x1f4                            ; 03e6:2f37
        shr bx,byte 0x2                         ; 03e6:2f3a
        inc bx                                  ; 03e6:2f3d
        call 0x027c:far_027c_0002               ; 03e6:2f3e
        shl eax,byte 0x10                       ; 03e6:2f43
        mov [cs:0x1dbe],eax                     ; 03e6:2f47
        mov bx,0x1f4                            ; 03e6:2f4c
        shr bx,byte 0x2                         ; 03e6:2f4f
        inc bx                                  ; 03e6:2f52
        call 0x027c:far_027c_0002               ; 03e6:2f53
        shl eax,byte 0x10                       ; 03e6:2f58
        mov [cs:0x1dc2],eax                     ; 03e6:2f5c
        mov bx,0x1f4                            ; 03e6:2f61
        shr bx,byte 0x2                         ; 03e6:2f64
        inc bx                                  ; 03e6:2f67
        call 0x027c:far_027c_0002               ; 03e6:2f68
        shl eax,byte 0x10                       ; 03e6:2f6d
        mov [cs:0x1dc6],eax                     ; 03e6:2f71
        mov sp,bp                               ; 03e6:2f76
        pop es                                  ; 03e6:2f78
        popad                                   ; 03e6:2f79
        retf                                    ; 03e6:2f7b

far_03e6_2f7c:
        pushad                                  ; 03e6:2f7c
        push es                                 ; 03e6:2f7e
        mov es,[cs:0x1db4]                      ; 03e6:2f7f
        call 0x027c:far_027c_0010               ; 03e6:2f84
        mov es,[cs:0x1dbc]                      ; 03e6:2f89
        call 0x027c:far_027c_0010               ; 03e6:2f8e
        mov es,[cs:0x1db8]                      ; 03e6:2f93
        call 0x027c:far_027c_0010               ; 03e6:2f98
        mov es,[cs:0x1dc0]                      ; 03e6:2f9d
        call 0x027c:far_027c_0010               ; 03e6:2fa2
        mov es,[cs:0x1dc4]                      ; 03e6:2fa7
        call 0x027c:far_027c_0010               ; 03e6:2fac
        mov es,[cs:0x1dc8]                      ; 03e6:2fb1
        call 0x027c:far_027c_0010               ; 03e6:2fb6
        mov cx,[cs:0x1dca]                      ; 03e6:2fbb
        mov si,[cs:0x1df4]                      ; 03e6:2fc0

l_03e6_2fc5:
        test byte [byte si+0x3e],0x2            ; 03e6:2fc5
        jnz short l_03e6_2ff3                   ; 03e6:2fc9
        mov es,[byte si+0x3c]                   ; 03e6:2fcb
        call 0x027c:far_027c_0010               ; 03e6:2fce
        mov es,[byte si+0x45]                   ; 03e6:2fd3
        call 0x027c:far_027c_0010               ; 03e6:2fd6
        mov es,[byte si+0x49]                   ; 03e6:2fdb
        call 0x027c:far_027c_0010               ; 03e6:2fde
        mov es,[byte si+0x4d]                   ; 03e6:2fe3
        call 0x027c:far_027c_0010               ; 03e6:2fe6
        mov es,[byte si+0x51]                   ; 03e6:2feb
        call 0x027c:far_027c_0010               ; 03e6:2fee

l_03e6_2ff3:
        add si,byte +0x53                       ; 03e6:2ff3
        loop l_03e6_2fc5                        ; 03e6:2ff6
        pop es                                  ; 03e6:2ff8
        popad                                   ; 03e6:2ff9
        retf                                    ; 03e6:2ffb

sub_03e6_2ffc:
        push ds                                 ; 03e6:2ffc
        push es                                 ; 03e6:2ffd
        push cx                                 ; 03e6:2ffe
        push eax                                ; 03e6:2fff
        mov ax,ds                               ; 03e6:3001
        mov es,ax                               ; 03e6:3003

l_03e6_3005:
        lodsw                                   ; 03e6:3005
        cwde                                    ; 03e6:3006
        stosd                                   ; 03e6:3008
        lodsw                                   ; 03e6:300a
        cwde                                    ; 03e6:300b
        stosd                                   ; 03e6:300d
        lodsw                                   ; 03e6:300f
        cwde                                    ; 03e6:3010
        stosd                                   ; 03e6:3012
        loop l_03e6_3005                        ; 03e6:3014
        pop eax                                 ; 03e6:3016
        pop cx                                  ; 03e6:3018
        pop es                                  ; 03e6:3019
        pop ds                                  ; 03e6:301a
        retf                                    ; 03e6:301b

sub_03e6_301c:
        push si                                 ; 03e6:301c
        push ds                                 ; 03e6:301d
        push es                                 ; 03e6:301e
        push cx                                 ; 03e6:301f
        push eax                                ; 03e6:3020
        push dx                                 ; 03e6:3022
        mov ax,ds                               ; 03e6:3023
        mov es,ax                               ; 03e6:3025

l_03e6_3027:
        lodsw                                   ; 03e6:3027
        imul bp                                 ; 03e6:3028
        shrd ax,dx,0xa                          ; 03e6:302a
        cwde                                    ; 03e6:302e
        stosd                                   ; 03e6:3030
        lodsw                                   ; 03e6:3032
        add ax,bx                               ; 03e6:3033
        cwde                                    ; 03e6:3035
        stosd                                   ; 03e6:3037
        lodsw                                   ; 03e6:3039
        imul bp                                 ; 03e6:303a
        shrd ax,dx,0xa                          ; 03e6:303c
        cwde                                    ; 03e6:3040
        stosd                                   ; 03e6:3042
        loop l_03e6_3027                        ; 03e6:3044
        pop dx                                  ; 03e6:3046
        pop eax                                 ; 03e6:3047
        pop cx                                  ; 03e6:3049
        pop es                                  ; 03e6:304a
        pop ds                                  ; 03e6:304b
        pop si                                  ; 03e6:304c
        retf                                    ; 03e6:304d

sub_03e6_304e:
        mov ax,[cs:0x1dd6]                      ; 03e6:304e
        mov [di],ax                             ; 03e6:3052
        add di,byte +0x2                        ; 03e6:3054
        mov ax,[byte si+0x4]                    ; 03e6:3057
        mov [di],ax                             ; 03e6:305a
        add di,byte +0x2                        ; 03e6:305c
        mov ax,[byte si+0x6]                    ; 03e6:305f
        mov [di],ax                             ; 03e6:3062
        add di,byte +0x2                        ; 03e6:3064
        sub bp,[cs:0x1dd6]                      ; 03e6:3067
        mov cx,[cs:0x1dd6]                      ; 03e6:306c

l_03e6_3071:
        mov [di],bp                             ; 03e6:3071
        add di,byte +0x2                        ; 03e6:3073
        inc bp                                  ; 03e6:3076
        loop l_03e6_3071                        ; 03e6:3077
        retf                                    ; 03e6:3079

sub_03e6_307a:
        mov ax,[cs:0x1dd6]                      ; 03e6:307a
        mov [di],ax                             ; 03e6:307e
        add di,byte +0x2                        ; 03e6:3080
        mov ax,[byte si+0x4]                    ; 03e6:3083
        mov [di],ax                             ; 03e6:3086
        add di,byte +0x2                        ; 03e6:3088
        mov ax,[byte si+0x6]                    ; 03e6:308b
        mov [di],ax                             ; 03e6:308e
        add di,byte +0x2                        ; 03e6:3090
        mov bp,[cs:0x1dd6]                      ; 03e6:3093
        mov cx,[cs:0x1dd6]                      ; 03e6:3098

l_03e6_309d:
        mov [di],bp                             ; 03e6:309d
        add di,byte +0x2                        ; 03e6:309f
        dec bp                                  ; 03e6:30a2
        loop l_03e6_309d                        ; 03e6:30a3
        mov bp,[cs:0x1dd6]                      ; 03e6:30a5
        inc bp                                  ; 03e6:30aa
        retf                                    ; 03e6:30ab

far_03e6_30ac:
        pushad                                  ; 03e6:30ac
        push es                                 ; 03e6:30ae
        mov si,[cs:0x1dda]                      ; 03e6:30af
        mov ax,[cs:0x1ddc]                      ; 03e6:30b4
        mov di,[cs:0x1dde]                      ; 03e6:30b8
        mov bx,[cs:0x1de0]                      ; 03e6:30bd
        mov ax,ds                               ; 03e6:30c2
        mov es,ax                               ; 03e6:30c4

l_03e6_30c6:
        cmp si,[cs:0x1ddc]                      ; 03e6:30c6
        jnc near l_03e6_3212                    ; 03e6:30cb
        mov bx,[cs:0x1dea]                      ; 03e6:30cf
        mov di,[cs:0x1de6]                      ; 03e6:30d4
        mov cx,[si]                             ; 03e6:30d9
        mov [cs:0x1dd6],cx                      ; 03e6:30db
        add si,byte +0x2                        ; 03e6:30e0
        mov ax,[byte si+0x2]                    ; 03e6:30e3
        rcr ax,1                                ; 03e6:30e6
        adc ax,0x0                              ; 03e6:30e8
        neg ax                                  ; 03e6:30eb
        add ax,[si]                             ; 03e6:30ed
        mov [cs:0x1dd8],ax                      ; 03e6:30ef
        inc ax                                  ; 03e6:30f3
        imul word [cs:0x1dd6]                   ; 03e6:30f4
        stosw                                   ; 03e6:30f9
        add si,byte +0x2                        ; 03e6:30fa
        mov dx,si                               ; 03e6:30fd
        mov ax,[si]                             ; 03e6:30ff
        mov [cs:0x1de2],ax                      ; 03e6:3101
        add si,byte +0x2                        ; 03e6:3105
        mov dx,si                               ; 03e6:3108
        push cs                                 ; 03e6:310a
        call sub_03e6_2ffc                      ; 03e6:310b
        push si                                 ; 03e6:310e
        test word [cs:0x1de2],0x1               ; 03e6:310f
        jz short l_03e6_311b                    ; 03e6:3116
        add si,byte +0x8                        ; 03e6:3118

l_03e6_311b:
        mov cx,[cs:0x1dd8]                      ; 03e6:311b
        or cx,byte +0x0                         ; 03e6:3120
        jz short l_03e6_3142                    ; 03e6:3123

l_03e6_3125:
        push si                                 ; 03e6:3125
        push cx                                 ; 03e6:3126
        push bx                                 ; 03e6:3127
        mov cx,[cs:0x1dd6]                      ; 03e6:3128
        mov bp,[byte si+0x2]                    ; 03e6:312d
        mov ax,[si]                             ; 03e6:3130
        mov si,dx                               ; 03e6:3132
        mov bx,ax                               ; 03e6:3134
        push cs                                 ; 03e6:3136
        call sub_03e6_301c                      ; 03e6:3137
        pop bx                                  ; 03e6:313a
        pop cx                                  ; 03e6:313b
        pop si                                  ; 03e6:313c
        add si,byte +0x8                        ; 03e6:313d
        loop l_03e6_3125                        ; 03e6:3140

l_03e6_3142:
        mov [cs:0x1de6],di                      ; 03e6:3142
        pop si                                  ; 03e6:3147
        mov bp,[cs:0x1dd6]                      ; 03e6:3148
        inc bp                                  ; 03e6:314d
        mov di,bx                               ; 03e6:314e
        mov ax,[cs:0x1dd6]                      ; 03e6:3150
        imul word [cs:0x1dd8]                   ; 03e6:3154
        mov dx,[cs:0x1de2]                      ; 03e6:3159
        rcr dx,1                                ; 03e6:315e
        adc ax,dx                               ; 03e6:3160
        stosw                                   ; 03e6:3162
        test word [cs:0x1de2],0x1               ; 03e6:3163
        jz short l_03e6_3173                    ; 03e6:316a
        push cs                                 ; 03e6:316c
        call sub_03e6_307a                      ; 03e6:316d
        add si,byte +0x8                        ; 03e6:3170

l_03e6_3173:
        mov cx,[cs:0x1dd8]                      ; 03e6:3173
        or cx,byte +0x0                         ; 03e6:3178
        jz short l_03e6_31f8                    ; 03e6:317b

l_03e6_317d:
        push cx                                 ; 03e6:317d
        mov cx,[cs:0x1dd6]                      ; 03e6:317e
        dec cx                                  ; 03e6:3183

l_03e6_3184:
        mov word [di],0x4                       ; 03e6:3184
        add di,byte +0x2                        ; 03e6:3188
        mov ax,[byte si+0x4]                    ; 03e6:318b
        mov [di],ax                             ; 03e6:318e
        add di,byte +0x2                        ; 03e6:3190
        mov ax,[byte si+0x6]                    ; 03e6:3193
        mov [di],ax                             ; 03e6:3196
        add di,byte +0x2                        ; 03e6:3198
        mov [di],bp                             ; 03e6:319b
        mov ax,bp                               ; 03e6:319d
        sub ax,[cs:0x1dd6]                      ; 03e6:319f
        mov [byte di+0x2],ax                    ; 03e6:31a4
        inc ax                                  ; 03e6:31a7
        mov [byte di+0x4],ax                    ; 03e6:31a8
        add ax,[cs:0x1dd6]                      ; 03e6:31ab
        mov [byte di+0x6],ax                    ; 03e6:31b0
        add di,byte +0x8                        ; 03e6:31b3
        inc bp                                  ; 03e6:31b6
        loop l_03e6_3184                        ; 03e6:31b7
        mov word [di],0x4                       ; 03e6:31b9
        add di,byte +0x2                        ; 03e6:31bd
        mov ax,[byte si+0x4]                    ; 03e6:31c0
        mov [di],ax                             ; 03e6:31c3
        add di,byte +0x2                        ; 03e6:31c5
        mov ax,[byte si+0x6]                    ; 03e6:31c8
        mov [di],ax                             ; 03e6:31cb
        add di,byte +0x2                        ; 03e6:31cd
        mov [di],bp                             ; 03e6:31d0
        mov ax,bp                               ; 03e6:31d2
        sub ax,[cs:0x1dd6]                      ; 03e6:31d4
        mov [byte di+0x2],ax                    ; 03e6:31d9
        sub ax,[cs:0x1dd6]                      ; 03e6:31dc
        inc ax                                  ; 03e6:31e1
        mov [byte di+0x4],ax                    ; 03e6:31e2
        add ax,[cs:0x1dd6]                      ; 03e6:31e5
        mov [byte di+0x6],ax                    ; 03e6:31ea
        add si,byte +0x8                        ; 03e6:31ed
        add di,byte +0x8                        ; 03e6:31f0
        inc bp                                  ; 03e6:31f3
        pop cx                                  ; 03e6:31f4
        dec cx                                  ; 03e6:31f5
        jnz short l_03e6_317d                   ; 03e6:31f6

l_03e6_31f8:
        test word [cs:0x1de2],0x2               ; 03e6:31f8
        jz short l_03e6_3208                    ; 03e6:31ff
        push cs                                 ; 03e6:3201
        call sub_03e6_304e                      ; 03e6:3202
        add si,byte +0x8                        ; 03e6:3205

l_03e6_3208:
        mov bx,di                               ; 03e6:3208
        mov [cs:0x1dea],bx                      ; 03e6:320a
        jmp near l_03e6_30c6                    ; 03e6:320f

l_03e6_3212:
        pop es                                  ; 03e6:3212
        popad                                   ; 03e6:3213
        retf                                    ; 03e6:3215

sub_03e6_3216:
        pushad                                  ; 03e6:3216
        push es                                 ; 03e6:3218
        mov di,[byte si+0x36]                   ; 03e6:3219
        mov bx,[byte di-0x2]                    ; 03e6:321c
        mov [cs:0x1dac],bx                      ; 03e6:321f
        mov ax,bx                               ; 03e6:3224
        shl ax,byte 0x3                         ; 03e6:3226
        shl bx,byte 0x2                         ; 03e6:3229
        add bx,ax                               ; 03e6:322c
        add bx,byte +0xf                        ; 03e6:322e
        shr bx,byte 0x4                         ; 03e6:3231
        call 0x027c:far_027c_0002               ; 03e6:3234
        mov es,ax                               ; 03e6:3239
        shl eax,byte 0x10                       ; 03e6:323b
        mov [byte si+0x4b],eax                  ; 03e6:323f
        call 0x027c:far_027c_0002               ; 03e6:3243
        shl eax,byte 0x10                       ; 03e6:3248
        mov [byte si+0x4f],eax                  ; 03e6:324c
        xor si,si                               ; 03e6:3250
        mov ebx,0x4000                          ; 03e6:3252

l_03e6_3258:
        mov eax,[di]                            ; 03e6:3258
        imul eax                                ; 03e6:325b
        mov ecx,eax                             ; 03e6:325e
        mov eax,[byte di+0x4]                   ; 03e6:3261
        imul eax                                ; 03e6:3265
        add ecx,eax                             ; 03e6:3268
        mov eax,[byte di+0x8]                   ; 03e6:326b
        imul eax                                ; 03e6:326f
        add eax,ecx                             ; 03e6:3272
        call 0x07bf:far_07bf_001a               ; 03e6:3275
        mov ebp,eax                             ; 03e6:327a
        mov eax,[di]                            ; 03e6:327d
        imul ebx                                ; 03e6:3280
        idiv ebp                                ; 03e6:3283
        mov [es:si],eax                         ; 03e6:3286
        mov eax,[byte di+0x4]                   ; 03e6:328a
        imul ebx                                ; 03e6:328e
        idiv ebp                                ; 03e6:3291
        mov [byte es:si+0x4],eax                ; 03e6:3294
        mov eax,[byte di+0x8]                   ; 03e6:3299
        imul ebx                                ; 03e6:329d
        idiv ebp                                ; 03e6:32a0
        mov [byte es:si+0x8],eax                ; 03e6:32a3
        add di,byte +0xc                        ; 03e6:32a8
        add si,byte +0xc                        ; 03e6:32ab
        dec word [cs:0x1dac]                    ; 03e6:32ae
        jnz short l_03e6_3258                   ; 03e6:32b3
        pop es                                  ; 03e6:32b5
        popad                                   ; 03e6:32b6
        retf                                    ; 03e6:32b8

sub_03e6_32b9:
        pushad                                  ; 03e6:32b9
        push es                                 ; 03e6:32bb
        mov di,[byte si+0x38]                   ; 03e6:32bc
        mov bx,[byte di-0x2]                    ; 03e6:32bf
        mov [cs:0x1dac],bx                      ; 03e6:32c2
        mov ax,bx                               ; 03e6:32c7
        shl ax,byte 0x3                         ; 03e6:32c9
        shl bx,byte 0x2                         ; 03e6:32cc
        add bx,ax                               ; 03e6:32cf
        add bx,byte +0xf                        ; 03e6:32d1
        shr bx,byte 0x4                         ; 03e6:32d4
        call 0x027c:far_027c_0002               ; 03e6:32d7
        mov es,ax                               ; 03e6:32dc
        shl eax,byte 0x10                       ; 03e6:32de
        mov [byte si+0x43],eax                  ; 03e6:32e2
        call 0x027c:far_027c_0002               ; 03e6:32e6
        shl eax,byte 0x10                       ; 03e6:32eb
        mov [byte si+0x47],eax                  ; 03e6:32ef
        xor ebp,ebp                             ; 03e6:32f3

l_03e6_32f6:
        mov dx,[di]                             ; 03e6:32f6
        shl dx,1                                ; 03e6:32f8
        test word [byte di+0x4],0x1             ; 03e6:32fa
        jz short l_03e6_3307                    ; 03e6:32ff
        add di,byte +0x2                        ; 03e6:3301
        sub dx,byte +0x2                        ; 03e6:3304

l_03e6_3307:
        add di,byte +0x6                        ; 03e6:3307
        mov bx,[di]                             ; 03e6:330a
        dec bx                                  ; 03e6:330c
        mov ax,bx                               ; 03e6:330d
        shl bx,byte 0x2                         ; 03e6:330f
        shl ax,byte 0x3                         ; 03e6:3312
        add bx,ax                               ; 03e6:3315
        add bx,[byte si+0x36]                   ; 03e6:3317
        mov eax,[bx]                            ; 03e6:331a
        mov [cs:0x1da0],eax                     ; 03e6:331d
        mov eax,[byte bx+0x4]                   ; 03e6:3322
        mov [cs:0x1da4],eax                     ; 03e6:3326
        mov eax,[byte bx+0x8]                   ; 03e6:332b
        mov [cs:0x1da8],eax                     ; 03e6:332f
        mov bx,[byte di+0x2]                    ; 03e6:3334
        dec bx                                  ; 03e6:3337
        mov ax,bx                               ; 03e6:3338
        shl bx,byte 0x2                         ; 03e6:333a
        shl ax,byte 0x3                         ; 03e6:333d
        add bx,ax                               ; 03e6:3340
        add bx,[byte si+0x36]                   ; 03e6:3342
        mov eax,[bx]                            ; 03e6:3345
        sub eax,[cs:0x1da0]                     ; 03e6:3348
        mov [cs:0x1d88],eax                     ; 03e6:334e
        mov eax,[byte bx+0x4]                   ; 03e6:3353
        sub eax,[cs:0x1da4]                     ; 03e6:3357
        mov [cs:0x1d8c],eax                     ; 03e6:335d
        mov eax,[byte bx+0x8]                   ; 03e6:3362
        sub eax,[cs:0x1da8]                     ; 03e6:3366
        mov [cs:0x1d90],eax                     ; 03e6:336c
        add di,dx                               ; 03e6:3371
        mov bx,[byte di-0x2]                    ; 03e6:3373
        dec bx                                  ; 03e6:3376
        mov ax,bx                               ; 03e6:3377
        shl bx,byte 0x2                         ; 03e6:3379
        shl ax,byte 0x3                         ; 03e6:337c
        add bx,ax                               ; 03e6:337f
        add bx,[byte si+0x36]                   ; 03e6:3381
        mov eax,[bx]                            ; 03e6:3384
        sub eax,[cs:0x1da0]                     ; 03e6:3387
        mov [cs:0x1d94],eax                     ; 03e6:338d
        mov eax,[byte bx+0x4]                   ; 03e6:3392
        sub eax,[cs:0x1da4]                     ; 03e6:3396
        mov [cs:0x1d98],eax                     ; 03e6:339c
        mov eax,[byte bx+0x8]                   ; 03e6:33a1
        sub eax,[cs:0x1da8]                     ; 03e6:33a5
        mov [cs:0x1d9c],eax                     ; 03e6:33ab
        mov eax,[cs:0x1d88]                     ; 03e6:33b0
        imul eax                                ; 03e6:33b5
        mov ecx,eax                             ; 03e6:33b8
        mov eax,[cs:0x1d8c]                     ; 03e6:33bb
        imul eax                                ; 03e6:33c0
        add ecx,eax                             ; 03e6:33c3
        mov eax,[cs:0x1d90]                     ; 03e6:33c6
        imul eax                                ; 03e6:33cb
        add eax,ecx                             ; 03e6:33ce
        call 0x07bf:far_07bf_001a               ; 03e6:33d1
        mov [cs:0x1e20],eax                     ; 03e6:33d6
        mov eax,[cs:0x1d94]                     ; 03e6:33db
        imul eax                                ; 03e6:33e0
        mov ecx,eax                             ; 03e6:33e3
        mov eax,[cs:0x1d98]                     ; 03e6:33e6
        imul eax                                ; 03e6:33eb
        add ecx,eax                             ; 03e6:33ee
        mov eax,[cs:0x1d9c]                     ; 03e6:33f1
        imul eax                                ; 03e6:33f6
        add eax,ecx                             ; 03e6:33f9
        call 0x07bf:far_07bf_001a               ; 03e6:33fc
        mov [cs:0x1e24],eax                     ; 03e6:3401
        mov dword [cs:0x1e30],0x4000            ; 03e6:3406
        mov eax,[cs:0x1d90]                     ; 03e6:3410
        imul dword [cs:0x1d98]                  ; 03e6:3415
        mov ecx,eax                             ; 03e6:341b
        mov eax,[cs:0x1d9c]                     ; 03e6:341e
        imul dword [cs:0x1d8c]                  ; 03e6:3423
        sub eax,ecx                             ; 03e6:3429
        imul dword [cs:0x1e30]                  ; 03e6:342c
        idiv dword [cs:0x1e20]                  ; 03e6:3432
        cdq                                     ; 03e6:3438
        idiv dword [cs:0x1e24]                  ; 03e6:343a
        mov [cs:0x1da0],eax                     ; 03e6:3440
        mov eax,[cs:0x1d88]                     ; 03e6:3445
        imul dword [cs:0x1d9c]                  ; 03e6:344a
        mov ecx,eax                             ; 03e6:3450
        mov eax,[cs:0x1d94]                     ; 03e6:3453
        imul dword [cs:0x1d90]                  ; 03e6:3458
        sub eax,ecx                             ; 03e6:345e
        imul dword [cs:0x1e30]                  ; 03e6:3461
        idiv dword [cs:0x1e20]                  ; 03e6:3467
        cdq                                     ; 03e6:346d
        idiv dword [cs:0x1e24]                  ; 03e6:346f
        mov [cs:0x1da4],eax                     ; 03e6:3475
        mov eax,[cs:0x1d8c]                     ; 03e6:347a
        imul dword [cs:0x1d94]                  ; 03e6:347f
        mov ecx,eax                             ; 03e6:3485
        mov eax,[cs:0x1d98]                     ; 03e6:3488
        imul dword [cs:0x1d88]                  ; 03e6:348d
        sub eax,ecx                             ; 03e6:3493
        imul dword [cs:0x1e30]                  ; 03e6:3496
        idiv dword [cs:0x1e20]                  ; 03e6:349c
        cdq                                     ; 03e6:34a2
        idiv dword [cs:0x1e24]                  ; 03e6:34a4
        mov [cs:0x1da8],eax                     ; 03e6:34aa
        mov eax,[cs:0x1da0]                     ; 03e6:34af
        imul eax                                ; 03e6:34b4
        mov ecx,eax                             ; 03e6:34b7
        mov eax,[cs:0x1da4]                     ; 03e6:34ba
        imul eax                                ; 03e6:34bf
        add ecx,eax                             ; 03e6:34c2
        mov eax,[cs:0x1da8]                     ; 03e6:34c5
        imul eax                                ; 03e6:34ca
        add eax,ecx                             ; 03e6:34cd
        call 0x07bf:far_07bf_001a               ; 03e6:34d0
        mov ecx,eax                             ; 03e6:34d5
        mov eax,[cs:0x1da0]                     ; 03e6:34d8
        imul dword [cs:0x1e30]                  ; 03e6:34dd
        idiv ecx                                ; 03e6:34e3
        mov [byte es:ebp+0x0],eax               ; 03e6:34e6
        mov eax,[cs:0x1da4]                     ; 03e6:34ec
        imul dword [cs:0x1e30]                  ; 03e6:34f1
        idiv ecx                                ; 03e6:34f7
        mov [byte es:ebp+0x4],eax               ; 03e6:34fa
        mov eax,[cs:0x1da8]                     ; 03e6:3500
        imul dword [cs:0x1e30]                  ; 03e6:3505
        idiv ecx                                ; 03e6:350b
        mov [byte es:ebp+0x8],eax               ; 03e6:350e
        add ebp,byte +0xc                       ; 03e6:3514
        dec word [cs:0x1dac]                    ; 03e6:3518
        jnz near l_03e6_32f6                    ; 03e6:351d
        pop es                                  ; 03e6:3521
        popad                                   ; 03e6:3522
        retf                                    ; 03e6:3524
; data 03e6:3525 (23 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
        db 0x00,0x00,0x00,0x00,0x00,0x00,0x00

;======================================================================
; segment 0738  (image 0x0739c-0x07b16)
; drawing routines using FS/GS buffers
;======================================================================
section seg_0738 start=0x739c vstart=0x1c

far_0738_001c:
        pushad                                  ; 0738:001c
        push ds                                 ; 0738:001e
        mov ax,0x2314                           ; 0738:001f
        mov ds,ax                               ; 0738:0022
        mov si,0x446f                           ; 0738:0024
        mov cx,[si]                             ; 0738:0027
        mov ax,cx                               ; 0738:0029
        shl ax,1                                ; 0738:002b
        add cx,ax                               ; 0738:002d
        add si,byte +0x2                        ; 0738:002f
        mov ebp,0x1388                          ; 0738:0032
        mov ebx,0x7d0                           ; 0738:0038

l_0738_003e:
        mov eax,[si]                            ; 0738:003e
        imul ebx                                ; 0738:0041
        idiv ebp                                ; 0738:0044
        mov [si],eax                            ; 0738:0047
        add si,byte +0x4                        ; 0738:004a
        loop l_0738_003e                        ; 0738:004d
        mov ax,ds                               ; 0738:004f
        shl eax,byte 0x10                       ; 0738:0051
        mov ax,0xb737                           ; 0738:0055
        mov [0x2502],eax                        ; 0738:0058
        mov word [0x24f2],0x79b3                ; 0738:005c
        mov word [0x24f4],0x81eb                ; 0738:0062
        mov word [0x24f6],0x41e1                ; 0738:0068
        mov word [0x24f8],0x4ad3                ; 0738:006e
        mov word [0x24fa],0xb0cb                ; 0738:0074
        mov word [0x24fc],0xb737                ; 0738:007a
        mov word [0x24fe],0x4ad3                ; 0738:0080
        mov word [0x2500],0x81eb                ; 0738:0086
        mov si,0x24f2                           ; 0738:008c
        call 0x03e6:far_03e6_2d9b               ; 0738:008f
        call 0x03e6:far_03e6_30ac               ; 0738:0094
        mov si,0x2652                           ; 0738:0099
        mov cx,0x55                             ; 0738:009c
        call 0x03e6:far_03e6_2dde               ; 0738:009f
        mov word [0x2676],0x1000                ; 0738:00a4
        mov word [0x2678],0x1000                ; 0738:00aa
        mov word [0x267a],0x0                   ; 0738:00b0
        mov word [0x24d8],0x0                   ; 0738:00b6
        mov word [0x24da],0x0                   ; 0738:00bc
        mov word [0x24dc],0x0                   ; 0738:00c2
        call sub_0738_0492                      ; 0738:00c8
        mov si,0x2652                           ; 0738:00cb
        call 0x03e6:far_03e6_1e43               ; 0738:00ce
        call 0x03e6:far_03e6_2155               ; 0738:00d3
        call 0x03e6:far_03e6_2278               ; 0738:00d8
        mov ax,0x14                             ; 0738:00dd
        call 0x03e6:far_03e6_1e5b               ; 0738:00e0
        mov ax,0xfa0                            ; 0738:00e5
        call 0x03e6:far_03e6_1e60               ; 0738:00e8
        mov ax,0x8                              ; 0738:00ed
        call 0x03e6:far_03e6_1e6a               ; 0738:00f0
        mov ax,0x7                              ; 0738:00f5
        call 0x03e6:far_03e6_1e75               ; 0738:00f8
        mov ax,0x12c                            ; 0738:00fd
        call 0x03e6:far_03e6_1e51               ; 0738:0100
        mov eax,0x6d60                          ; 0738:0105
        call 0x03e6:far_03e6_1e6f               ; 0738:010b
        mov bx,0x8d0                            ; 0738:0110
        call 0x027c:far_027c_0002               ; 0738:0113
        mov es,ax                               ; 0738:0118
        shl eax,byte 0x10                       ; 0738:011a
        mov [0xb737],eax                        ; 0738:011e
        mov dword [0xb73b],0xb767               ; 0738:0122
        o32 mov [0xb73d],ds                     ; 0738:012b
        mov [0xb73f],eax                        ; 0738:0130
        mov dword [0xb743],0xb777               ; 0738:0134
        o32 mov [0xb745],ds                     ; 0738:013d
        mov [0xb747],eax                        ; 0738:0142
        mov dword [0xb74b],0xb787               ; 0738:0146
        o32 mov [0xb74d],ds                     ; 0738:014f
        mov [0xb74f],eax                        ; 0738:0154
        mov dword [0xb753],0xb797               ; 0738:0158
        o32 mov [0xb755],ds                     ; 0738:0161
        xor di,di                               ; 0738:0166
        mov si,0xc31                            ; 0738:0168
        call 0x07cc:far_07cc_0026               ; 0738:016b
        pop ds                                  ; 0738:0170
        popad                                   ; 0738:0171
        retf                                    ; 0738:0173

far_0738_0174:
        pushad                                  ; 0738:0174
        push ds                                 ; 0738:0176
        mov word [cs:0x18],0x0                  ; 0738:0177
        mov word [cs:0x16],0x0                  ; 0738:017e
        call sub_0738_03e8                      ; 0738:0185
        call sub_0738_0356                      ; 0738:0188
        push ds                                 ; 0738:018b
        pop es                                  ; 0738:018c
        mov si,0xc9                             ; 0738:018d
        mov di,0xbe7f                           ; 0738:0190
        mov bx,0x7f00                           ; 0738:0193
        mov cx,0x1f                             ; 0738:0196
        xor ah,ah                               ; 0738:0199

l_0738_019b:
        push ax                                 ; 0738:019b
        call 0x003d:far_003d_0323               ; 0738:019c
        pop ax                                  ; 0738:01a1
        add ah,0x2                              ; 0738:01a2
        call 0x0033:far_0033_0069               ; 0738:01a5
        loop l_0738_019b                        ; 0738:01aa
        call 0x003d:far_003d_0323               ; 0738:01ac
        mov ah,0x3f                             ; 0738:01b1
        call 0x0033:far_0033_0069               ; 0738:01b3
        call 0x003d:far_003d_0323               ; 0738:01b8
        mov si,0x3c9                            ; 0738:01bd
        mov bx,0xff80                           ; 0738:01c0
        call 0x0033:far_0033_0008               ; 0738:01c3
        mov word [cs:0x18],0x0                  ; 0738:01c8
        mov ax,0x2314                           ; 0738:01cf
        mov ds,ax                               ; 0738:01d2
        call 0x003d:far_003d_0323               ; 0738:01d4

l_0738_01d9:
        call 0x003d:far_003d_0323               ; 0738:01d9
        mov [0x24f0],ax                         ; 0738:01de
        mov dx,ax                               ; 0738:01e1
        shl dx,byte 0x2                         ; 0738:01e3
        shl ax,byte 0x3                         ; 0738:01e6
        add ax,dx                               ; 0738:01e9
        add [cs:0x18],ax                        ; 0738:01eb
        mov ax,[cs:0x1a]                        ; 0738:01f0
        cmp [cs:0x18],ax                        ; 0738:01f4
        jnc short l_0738_0261                   ; 0738:01f9
        nop                                     ; 0738:01fb
        nop                                     ; 0738:01fc
        call 0x0027:far_0027_002d               ; 0738:01fd
        call 0x0027:far_0027_0062               ; 0738:0202
        mov si,0x2652                           ; 0738:0207
        call 0x03e6:far_03e6_1e34               ; 0738:020a
        call 0x03e6:far_03e6_20e3               ; 0738:020f
        call sub_0738_03e8                      ; 0738:0214
        call 0x03e6:far_03e6_2155               ; 0738:0217
        mov si,0x2652                           ; 0738:021c
        call 0x03e6:far_03e6_1f1b               ; 0738:021f
        call 0x03e6:far_03e6_20a5               ; 0738:0224
        mov si,0x2652                           ; 0738:0229
        call 0x03e6:far_03e6_2278               ; 0738:022c
        or cx,byte +0x0                         ; 0738:0231
        jz short l_0738_0259                    ; 0738:0234
        nop                                     ; 0738:0236
        nop                                     ; 0738:0237

l_0738_0238:
        mov si,[es:bx]                          ; 0738:0238
        call 0x03e6:far_03e6_2278               ; 0738:023b
        test byte [byte si+0x3e],0x4            ; 0738:0240
        jz short l_0738_024f                    ; 0738:0244
        nop                                     ; 0738:0246
        nop                                     ; 0738:0247
        call 0x03e6:far_03e6_2717               ; 0738:0248
        jmp short l_0738_0254                   ; 0738:024d

l_0738_024f:
        call 0x03e6:far_03e6_2529               ; 0738:024f

l_0738_0254:
        sub bx,byte +0x4                        ; 0738:0254
        loop l_0738_0238                        ; 0738:0257

l_0738_0259:
        call 0x0027:far_0027_008c               ; 0738:0259
        jmp near l_0738_01d9                    ; 0738:025e

l_0738_0261:
        mov word [0x24e2],0x1d                  ; 0738:0261
        mov dword [0x24d0],0xfffffffe           ; 0738:0267
        mov word [0x26cf],0x0                   ; 0738:0270
        mov word [0x26d1],0x0                   ; 0738:0276
        mov word [0x26d3],0x0                   ; 0738:027c
        mov word [cs:0x18],0x0                  ; 0738:0282
        mov word [0x2870],0x3a                  ; 0738:0289
        mov word [0x28c3],0x3a                  ; 0738:028f
        mov word [0x2916],0x3a                  ; 0738:0295
        mov word [0x2969],0x3a                  ; 0738:029b
        mov word [cs:0x16],0x118                ; 0738:02a1
        call sub_0738_0356                      ; 0738:02a8
        mov word [cs:0x18],0x0                  ; 0738:02ab
        mov word [0x2870],0x0                   ; 0738:02b2
        mov word [0x28c3],0x0                   ; 0738:02b8
        mov word [0x2916],0x0                   ; 0738:02be
        mov word [0x2969],0x0                   ; 0738:02c4
        mov word [0x286a],0x8000                ; 0738:02ca
        mov word [0x28bd],0x4000                ; 0738:02d0
        mov word [0x2910],0x0                   ; 0738:02d6
        mov word [0x2963],0xc000                ; 0738:02dc
        mov word [cs:0x16],0xaf0                ; 0738:02e2
        call sub_0738_0356                      ; 0738:02e9
        pop ds                                  ; 0738:02ec
        popad                                   ; 0738:02ed
        retf                                    ; 0738:02ef
; data 0738:02f0 (2 bytes)
        db 0x00,0x00

sub_0738_02f2:
        push ax                                 ; 0738:02f2
        push bx                                 ; 0738:02f3
        push si                                 ; 0738:02f4
        cmp byte [cs:0x2f0],0x1                 ; 0738:02f5
        jnz short l_0738_0337                   ; 0738:02fb
        nop                                     ; 0738:02fd
        nop                                     ; 0738:02fe
        mov si,0xbe7f                           ; 0738:02ff
        mov ah,[cs:0x2f1]                       ; 0738:0302
        shr ah,1                                ; 0738:0307
        mov bx,0x7f00                           ; 0738:0309
        call 0x0033:far_0033_0042               ; 0738:030c
        mov si,0x3c9                            ; 0738:0311
        mov bx,0xff80                           ; 0738:0314
        call 0x0033:far_0033_0042               ; 0738:0317
        mov ax,[0x24f0]                         ; 0738:031c
        add [cs:0x2f1],al                       ; 0738:031f
        cmp byte [cs:0x2f1],0x80                ; 0738:0324
        jc short l_0738_0352                    ; 0738:032a
        nop                                     ; 0738:032c
        nop                                     ; 0738:032d
        mov byte [cs:0x2f0],0x2                 ; 0738:032e
        jmp short l_0738_0352                   ; 0738:0334
; data 0738:0336 (1 bytes)
        db 0x90

l_0738_0337:
        cmp byte [cs:0x2f0],0x0                 ; 0738:0337
        jnz short l_0738_0352                   ; 0738:033d
        nop                                     ; 0738:033f
        nop                                     ; 0738:0340
        call 0x20c1:far_20c1_2423               ; 0738:0341
        cmp al,0xf                              ; 0738:0346
        jnz short l_0738_0352                   ; 0738:0348
        nop                                     ; 0738:034a
        nop                                     ; 0738:034b
        mov byte [cs:0x2f0],0x1                 ; 0738:034c

l_0738_0352:
        pop si                                  ; 0738:0352
        pop bx                                  ; 0738:0353
        pop ax                                  ; 0738:0354
        ret                                     ; 0738:0355

sub_0738_0356:
        jmp short l_0738_0380                   ; 0738:0356
; data 0738:0358 (1 bytes)
        db 0x90

l_0738_0359:
        call 0x003d:far_003d_0323               ; 0738:0359
        call sub_0738_02f2                      ; 0738:035e
        mov [0x24f0],ax                         ; 0738:0361
        add [cs:0x18],ax                        ; 0738:0364
        mov ax,[cs:0x18]                        ; 0738:0369
        cmp ax,[cs:0x16]                        ; 0738:036d
        ja short l_0738_03e1                    ; 0738:0372
        nop                                     ; 0738:0374
        nop                                     ; 0738:0375
        cmp byte [cs:0x2f0],0x2                 ; 0738:0376
        jz short l_0738_03e1                    ; 0738:037c
        nop                                     ; 0738:037e
        nop                                     ; 0738:037f

l_0738_0380:
        call 0x0027:far_0027_002d               ; 0738:0380
        call 0x0027:far_0027_0062               ; 0738:0385
        mov si,0x2652                           ; 0738:038a
        call 0x03e6:far_03e6_1e34               ; 0738:038d
        call 0x03e6:far_03e6_20e3               ; 0738:0392
        call 0x03e6:far_03e6_2155               ; 0738:0397
        mov si,0x2652                           ; 0738:039c
        call 0x03e6:far_03e6_1f1b               ; 0738:039f
        call 0x03e6:far_03e6_20a5               ; 0738:03a4
        mov si,0x2652                           ; 0738:03a9
        call 0x03e6:far_03e6_2278               ; 0738:03ac
        or cx,byte +0x0                         ; 0738:03b1
        jz short l_0738_03d9                    ; 0738:03b4
        nop                                     ; 0738:03b6
        nop                                     ; 0738:03b7

l_0738_03b8:
        mov si,[es:bx]                          ; 0738:03b8
        call 0x03e6:far_03e6_2278               ; 0738:03bb
        test byte [byte si+0x3e],0x4            ; 0738:03c0
        jz short l_0738_03cf                    ; 0738:03c4
        nop                                     ; 0738:03c6
        nop                                     ; 0738:03c7
        call 0x03e6:far_03e6_2717               ; 0738:03c8
        jmp short l_0738_03d4                   ; 0738:03cd

l_0738_03cf:
        call 0x03e6:far_03e6_2529               ; 0738:03cf

l_0738_03d4:
        sub bx,byte +0x4                        ; 0738:03d4
        loop l_0738_03b8                        ; 0738:03d7

l_0738_03d9:
        call 0x0027:far_0027_008c               ; 0738:03d9
        jmp near l_0738_0359                    ; 0738:03de

l_0738_03e1:
        ret                                     ; 0738:03e1

far_0738_03e2:
        call 0x03e6:far_03e6_2f7c               ; 0738:03e2
        retf                                    ; 0738:03e7

sub_0738_03e8:
        push eax                                ; 0738:03e8
        push bx                                 ; 0738:03ea
        push fs                                 ; 0738:03eb
        push si                                 ; 0738:03ed
        lfs bx,[cs:0x6]                         ; 0738:03ee
        add bx,[cs:0x18]                        ; 0738:03f4
        mov si,0x26a5                           ; 0738:03f9
        movzx eax,word [byte fs:bx+0x2]         ; 0738:03fc
        mov [si],eax                            ; 0738:0402
        movzx eax,word [byte fs:bx+0x6]         ; 0738:0405
        mov [byte si+0x4],eax                   ; 0738:040b
        movzx eax,word [byte fs:bx+0xa]         ; 0738:040f
        mov [byte si+0x8],eax                   ; 0738:0415
        lfs bx,[cs:0xa]                         ; 0738:0419
        add bx,[cs:0x18]                        ; 0738:041f
        shr bx,1                                ; 0738:0424
        mov ax,[fs:bx]                          ; 0738:0426
        neg ax                                  ; 0738:0429
        mov [byte si+0x24],ax                   ; 0738:042b
        mov ax,[byte fs:bx+0x2]                 ; 0738:042e
        add ax,0x8000                           ; 0738:0432
        mov [byte si+0x26],ax                   ; 0738:0435
        mov ax,[byte fs:bx+0x4]                 ; 0738:0438
        neg ax                                  ; 0738:043c
        mov [byte si+0x28],ax                   ; 0738:043e
        lfs bx,[cs:0xe]                         ; 0738:0441
        add bx,[cs:0x18]                        ; 0738:0447
        movzx eax,word [byte fs:bx+0x2]         ; 0738:044c
        mov [0x24c0],eax                        ; 0738:0452
        movzx eax,word [byte fs:bx+0x6]         ; 0738:0456
        mov [0x24c4],eax                        ; 0738:045c
        movzx eax,word [byte fs:bx+0xa]         ; 0738:0460
        mov [0x24c8],eax                        ; 0738:0466
        lfs bx,[cs:0x12]                        ; 0738:046a
        add bx,[cs:0x18]                        ; 0738:0470
        shr bx,1                                ; 0738:0475
        mov ax,[fs:bx]                          ; 0738:0477
        mov [0x24d8],ax                         ; 0738:047a
        mov ax,[byte fs:bx+0x2]                 ; 0738:047d
        mov [0x24da],ax                         ; 0738:0481
        mov ax,[byte fs:bx+0x4]                 ; 0738:0484
        mov [0x24dc],ax                         ; 0738:0488
        pop si                                  ; 0738:048b
        pop fs                                  ; 0738:048c
        pop bx                                  ; 0738:048e
        pop eax                                 ; 0738:048f
        ret                                     ; 0738:0491

sub_0738_0492:
        pushad                                  ; 0738:0492
        mov ax,0xc                              ; 0738:0494
        call 0x0206:far_0206_000e               ; 0738:0497
        mov bx,0xd20                            ; 0738:049c
        call 0x027c:far_027c_0002               ; 0738:049f
        mov es,ax                               ; 0738:04a4
        mov di,0x0                              ; 0738:04a6
        shl eax,byte 0x10                       ; 0738:04a9
        mov [cs:0xe],eax                        ; 0738:04ad
        mov si,0xb7a7                           ; 0738:04b2
        mov bx,0x690                            ; 0738:04b5
        call 0x027c:far_027c_0002               ; 0738:04b8
        shl eax,byte 0x10                       ; 0738:04bd
        mov [cs:0x12],eax                       ; 0738:04c1
        les di,[cs:0xe]                         ; 0738:04c6
        mov si,0xb7a7                           ; 0738:04cb
        mov cx,0x46                             ; 0738:04ce
        mov ax,0xc                              ; 0738:04d1
        call 0x0206:far_0206_0013               ; 0738:04d4
        call sub_0738_054d                      ; 0738:04d9
        les di,[cs:0x12]                        ; 0738:04dc
        mov ax,0x6                              ; 0738:04e1
        call 0x0206:far_0206_0013               ; 0738:04e4
        call sub_0738_056f                      ; 0738:04e9
        mov bx,0xd20                            ; 0738:04ec
        mov word [cs:0x1a],0xd200               ; 0738:04ef
        call 0x027c:far_027c_0002               ; 0738:04f6
        mov es,ax                               ; 0738:04fb
        mov di,0x0                              ; 0738:04fd
        shl eax,byte 0x10                       ; 0738:0500
        mov [cs:0x6],eax                        ; 0738:0504
        mov bx,0x690                            ; 0738:0509
        call 0x027c:far_027c_0002               ; 0738:050c
        shl eax,byte 0x10                       ; 0738:0511
        mov [cs:0xa],eax                        ; 0738:0515
        les di,[cs:0x6]                         ; 0738:051a
        mov si,0xbb13                           ; 0738:051f
        mov cx,0x46                             ; 0738:0522
        mov ax,0xc                              ; 0738:0525
        call 0x0206:far_0206_0013               ; 0738:0528
        call sub_0738_054d                      ; 0738:052d
        les di,[cs:0xa]                         ; 0738:0530
        mov cx,0x46                             ; 0738:0535
        mov ax,0x6                              ; 0738:0538
        call 0x0206:far_0206_0013               ; 0738:053b
        call sub_0738_056f                      ; 0738:0540
        mov word [cs:0x18],0x0                  ; 0738:0543
        popad                                   ; 0738:054a
        ret                                     ; 0738:054c

sub_0738_054d:
        mov dx,0x3                              ; 0738:054d

l_0738_0550:
        push si                                 ; 0738:0550
        push di                                 ; 0738:0551
        push cx                                 ; 0738:0552
        call 0x0206:far_0206_0018               ; 0738:0553

l_0738_0558:
        call 0x0206:far_0206_0023               ; 0738:0558
        add si,byte +0xc                        ; 0738:055d
        loop l_0738_0558                        ; 0738:0560
        pop cx                                  ; 0738:0562
        pop di                                  ; 0738:0563
        pop si                                  ; 0738:0564
        add si,byte +0x2                        ; 0738:0565
        add di,byte +0x4                        ; 0738:0568
        dec dx                                  ; 0738:056b
        jnz short l_0738_0550                   ; 0738:056c
        ret                                     ; 0738:056e

sub_0738_056f:
        mov dx,0x3                              ; 0738:056f

l_0738_0572:
        push di                                 ; 0738:0572
        push si                                 ; 0738:0573
        push cx                                 ; 0738:0574
        call 0x0206:far_0206_0018               ; 0738:0575

l_0738_057a:
        call 0x0206:far_0206_00c8               ; 0738:057a
        add si,byte +0xc                        ; 0738:057f
        loop l_0738_057a                        ; 0738:0582
        pop cx                                  ; 0738:0584
        pop si                                  ; 0738:0585
        pop di                                  ; 0738:0586
        add si,byte +0x2                        ; 0738:0587
        add di,byte +0x2                        ; 0738:058a
        dec dx                                  ; 0738:058d
        jnz short l_0738_0572                   ; 0738:058e
        ret                                     ; 0738:0590

far_0738_0591:
        pusha                                   ; 0738:0591
        push ds                                 ; 0738:0592
        mov ax,0x2314                           ; 0738:0593
        mov ds,ax                               ; 0738:0596
        mov ax,ds                               ; 0738:0598
        shl eax,byte 0x10                       ; 0738:059a
        mov ax,0xb737                           ; 0738:059e
        mov [0x2502],eax                        ; 0738:05a1
        mov word [0x24f2],0x79b3                ; 0738:05a5
        mov word [0x24f4],0x81eb                ; 0738:05ab
        mov word [0x24f6],0x41e1                ; 0738:05b1
        mov word [0x24f8],0x4ad3                ; 0738:05b7
        mov word [0x24fa],0xb0cb                ; 0738:05bd
        mov word [0x24fc],0xb737                ; 0738:05c3
        mov word [0x24fe],0x4ad3                ; 0738:05c9
        mov word [0x2500],0x81eb                ; 0738:05cf
        mov si,0x24f2                           ; 0738:05d5
        call 0x03e6:far_03e6_2d9b               ; 0738:05d8
        call 0x03e6:far_03e6_30ac               ; 0738:05dd
        mov si,0x2506                           ; 0738:05e2
        mov cx,0x6                              ; 0738:05e5
        call 0x03e6:far_03e6_2dde               ; 0738:05e8
        mov [0xb73d],ds                         ; 0738:05ed
        mov word [0xb73b],0xb757                ; 0738:05f1
        mov word [0x2676],0x0                   ; 0738:05f7
        mov word [0x2678],0x4000                ; 0738:05fd
        mov word [0x267a],0x0                   ; 0738:0603
        mov word [0x24d8],0x0                   ; 0738:0609
        mov word [0x24da],0x0                   ; 0738:060f
        mov word [0x24dc],0x0                   ; 0738:0615
        mov si,0x2652                           ; 0738:061b
        call 0x03e6:far_03e6_1e43               ; 0738:061e
        call 0x03e6:far_03e6_2155               ; 0738:0623
        call 0x03e6:far_03e6_2278               ; 0738:0628
        mov ax,0x1f4                            ; 0738:062d
        call 0x03e6:far_03e6_1e51               ; 0738:0630
        mov ax,0x19                             ; 0738:0635
        call 0x03e6:far_03e6_1e6a               ; 0738:0638
        pop ds                                  ; 0738:063d
        popa                                    ; 0738:063e
        retf                                    ; 0738:063f

far_0738_0640:
        call 0x03e6:far_03e6_2f7c               ; 0738:0640
        retf                                    ; 0738:0645
; data 0738:0646 (4 bytes)
        db 0x00,0x00,0x00,0x00

far_0738_064a:
        push cx                                 ; 0738:064a
        push si                                 ; 0738:064b
        push eax                                ; 0738:064c
        mov ax,0x2314                           ; 0738:064e
        mov ds,ax                               ; 0738:0651
        mov word [0x24f2],0x79b3                ; 0738:0653
        mov word [0x24f4],0x81eb                ; 0738:0659
        mov word [0x24f6],0x41e1                ; 0738:065f
        mov word [0x24f8],0x4ad3                ; 0738:0665
        mov si,0x24f2                           ; 0738:066b
        call 0x03e6:far_03e6_2d9b               ; 0738:066e
        mov si,0x2652                           ; 0738:0673
        mov cx,0x2                              ; 0738:0676
        call 0x03e6:far_03e6_2dde               ; 0738:0679
        mov ax,ds                               ; 0738:067e
        shl eax,byte 0x10                       ; 0738:0680
        mov ax,0x26a5                           ; 0738:0684
        mov [cs:0x646],eax                      ; 0738:0687
        mov word [0x24d8],0x0                   ; 0738:068c
        mov word [0x24dc],0x0                   ; 0738:0692
        mov ax,0x82                             ; 0738:0698
        call 0x03e6:far_03e6_1e51               ; 0738:069b
        mov si,0x2652                           ; 0738:06a0
        call 0x03e6:far_03e6_1e43               ; 0738:06a3
        mov ax,0x0                              ; 0738:06a8
        call 0x03e6:far_03e6_1e5b               ; 0738:06ab
        mov word [0x2676],0x0                   ; 0738:06b0
        mov word [0x2678],0xc000                ; 0738:06b6
        mov word [0x267a],0x0                   ; 0738:06bc
        pop eax                                 ; 0738:06c2
        pop si                                  ; 0738:06c4
        pop cx                                  ; 0738:06c5
        retf                                    ; 0738:06c6

far_0738_06c7:
        push ds                                 ; 0738:06c7
        push es                                 ; 0738:06c8
        pushad                                  ; 0738:06c9
        mov ax,0x2314                           ; 0738:06cb
        mov ds,ax                               ; 0738:06ce
        lds si,[cs:0x646]                       ; 0738:06d0
        call 0x03e6:far_03e6_1e34               ; 0738:06d5
        mov eax,[0xa36]                         ; 0738:06da
        sar eax,byte 0x8                        ; 0738:06de
        mov [0x24c0],eax                        ; 0738:06e2
        mov eax,[0xa3a]                         ; 0738:06e6
        sar eax,byte 0x8                        ; 0738:06ea
        mov [0x24c8],eax                        ; 0738:06ee
        mov eax,[0xa3e]                         ; 0738:06f2
        sar eax,byte 0xa                        ; 0738:06f6
        mov edx,eax                             ; 0738:06fa
        sar eax,byte 0x6                        ; 0738:06fd
        add eax,edx                             ; 0738:0701
        mov [0x24c4],eax                        ; 0738:0704
        mov eax,[0xa4c]                         ; 0738:0708
        sar eax,byte 0x8                        ; 0738:070c
        mov [si],eax                            ; 0738:0710
        mov eax,[0xa50]                         ; 0738:0713
        sar eax,byte 0x8                        ; 0738:0717
        mov [byte si+0x8],eax                   ; 0738:071b
        mov eax,[0xa54]                         ; 0738:071f
        sar eax,byte 0xa                        ; 0738:0723
        mov edx,eax                             ; 0738:0727
        sar eax,byte 0x6                        ; 0738:072a
        add eax,edx                             ; 0738:072e
        mov [byte si+0x4],eax                   ; 0738:0731
        mov ax,[0xa58]                          ; 0738:0735
        mov [byte si+0x24],ax                   ; 0738:0738
        mov ax,[0xa5a]                          ; 0738:073b
        mov [byte si+0x28],ax                   ; 0738:073e
        mov ax,0x8000                           ; 0738:0741
        sub ax,[0xa5c]                          ; 0738:0744
        mov [byte si+0x26],ax                   ; 0738:0748
        mov ax,[0xa42]                          ; 0738:074b
        neg ax                                  ; 0738:074e
        mov [0x24da],ax                         ; 0738:0750
        mov ax,[0xa44]                          ; 0738:0753
        neg ax                                  ; 0738:0756
        mov [0x24dc],ax                         ; 0738:0758
        call 0x03e6:far_03e6_2155               ; 0738:075b
        call 0x03e6:far_03e6_1f1b               ; 0738:0760
        or cx,byte +0x0                         ; 0738:0765
        jz short l_0738_0781                    ; 0738:0768
        nop                                     ; 0738:076a
        nop                                     ; 0738:076b
        mov si,0x2652                           ; 0738:076c
        call 0x03e6:far_03e6_2278               ; 0738:076f
        mov si,0x26a5                           ; 0738:0774
        call 0x03e6:far_03e6_2278               ; 0738:0777
        call 0x03e6:far_03e6_2717               ; 0738:077c

l_0738_0781:
        popad                                   ; 0738:0781
        pop es                                  ; 0738:0783
        pop ds                                  ; 0738:0784
        retf                                    ; 0738:0785

far_0738_0786:
        push ds                                 ; 0738:0786
        push si                                 ; 0738:0787
        lds si,[cs:0x646]                       ; 0738:0788
        call 0x03e6:far_03e6_2f7c               ; 0738:078d
        pop si                                  ; 0738:0792
        pop ds                                  ; 0738:0793
        retf                                    ; 0738:0794
; data 0738:0795 (1 bytes)
        db 0x00

;======================================================================
; segment 07b1  (image 0x07b16-0x07c0a)
;======================================================================
section seg_07b1 start=0x7b16 vstart=0x6

far_07b1_0006:
        push eax                                ; 07b1:0006
        push ebx                                ; 07b1:0008
        shl ebx,byte 0x2                        ; 07b1:000a
        xor eax,eax                             ; 07b1:000e
        call sub_07b1_0019                      ; 07b1:0011
        pop ebx                                 ; 07b1:0014
        pop eax                                 ; 07b1:0016
        retf                                    ; 07b1:0018

sub_07b1_0019:
        enter 0x14,0x0                          ; 07b1:0019
        mov [byte bp-0x4],eax                   ; 07b1:001d
        mov [byte bp-0xc],eax                   ; 07b1:0021
        mov [byte bp-0x8],ebx                   ; 07b1:0025
        mov [byte bp-0x10],ebx                  ; 07b1:0029
        add ebx,eax                             ; 07b1:002d
        shr ebx,1                               ; 07b1:0030
        and ebx,byte -0x4                       ; 07b1:0033
        mov eax,[es:esi+ebx*1]                  ; 07b1:0037
        mov [byte bp-0x14],eax                  ; 07b1:003d

l_07b1_0041:
        mov ebx,[byte bp-0x4]                   ; 07b1:0041
        mov eax,[byte bp-0x14]                  ; 07b1:0045

l_07b1_0049:
        cmp [es:esi+ebx*1],eax                  ; 07b1:0049
        jnl short l_07b1_0057                   ; 07b1:004f
        add ebx,byte +0x4                       ; 07b1:0051
        jmp short l_07b1_0049                   ; 07b1:0055

l_07b1_0057:
        mov [byte bp-0x4],ebx                   ; 07b1:0057
        mov ebx,[byte bp-0x8]                   ; 07b1:005b

l_07b1_005f:
        cmp [es:esi+ebx*1],eax                  ; 07b1:005f
        jng short l_07b1_006d                   ; 07b1:0065
        sub ebx,byte +0x4                       ; 07b1:0067
        jmp short l_07b1_005f                   ; 07b1:006b

l_07b1_006d:
        mov [byte bp-0x8],ebx                   ; 07b1:006d
        cmp ebx,[byte bp-0x4]                   ; 07b1:0071
        jl short l_07b1_00b5                    ; 07b1:0075
        mov ecx,ebx                             ; 07b1:0077
        mov eax,[es:esi+ebx*1]                  ; 07b1:007a
        mov edx,[fs:edi+ebx*1]                  ; 07b1:0080
        mov ebx,[byte bp-0x4]                   ; 07b1:0086
        xchg eax,[es:esi+ebx*1]                 ; 07b1:008a
        xchg edx,[fs:edi+ebx*1]                 ; 07b1:0090
        xchg ebx,ecx                            ; 07b1:0096
        mov [es:esi+ebx*1],eax                  ; 07b1:0099
        mov [fs:edi+ebx*1],edx                  ; 07b1:009f
        add ecx,byte +0x4                       ; 07b1:00a5
        sub ebx,byte +0x4                       ; 07b1:00a9
        mov [byte bp-0x4],ecx                   ; 07b1:00ad
        mov [byte bp-0x8],ebx                   ; 07b1:00b1

l_07b1_00b5:
        cmp ebx,[byte bp-0x4]                   ; 07b1:00b5
        jnl short l_07b1_0041                   ; 07b1:00b9
        mov eax,[byte bp-0xc]                   ; 07b1:00bb
        cmp ebx,eax                             ; 07b1:00bf
        jng short l_07b1_00d7                   ; 07b1:00c2
        push dword [byte bp-0x4]                ; 07b1:00c4
        push dword [byte bp-0x10]               ; 07b1:00c8
        call sub_07b1_0019                      ; 07b1:00cc
        pop dword [byte bp-0x10]                ; 07b1:00cf
        pop dword [byte bp-0x4]                 ; 07b1:00d3

l_07b1_00d7:
        mov eax,[byte bp-0x4]                   ; 07b1:00d7
        mov ebx,[byte bp-0x10]                  ; 07b1:00db
        cmp ebx,eax                             ; 07b1:00df
        jng short l_07b1_00e7                   ; 07b1:00e2
        call sub_07b1_0019                      ; 07b1:00e4

l_07b1_00e7:
        leave                                   ; 07b1:00e7
        ret                                     ; 07b1:00e8
; data 07b1:00e9 (17 bytes)
        db 0x00,0x00,0x01,0x04,0x09,0x10,0x19,0x24,0x31,0x40,0x51,0x64,0x79,0x90,0xa9,0xc4
        db 0xe1

;======================================================================
; segment 07bf  (image 0x07c0a-0x07cd0)
;======================================================================
section seg_07bf start=0x7c0a vstart=0x1a

far_07bf_001a:
        push ebp                                ; 07bf:001a
        push ebx                                ; 07bf:001c
        push ecx                                ; 07bf:001e
        push edx                                ; 07bf:0020
        push esi                                ; 07bf:0022
        push edi                                ; 07bf:0024
        push es                                 ; 07bf:0026
        mov ebp,eax                             ; 07bf:0027
        bsr ebx,eax                             ; 07bf:002a
        jnz short l_07bf_0033                   ; 07bf:002e
        xor ebx,ebx                             ; 07bf:0030

l_07bf_0033:
        shr ebx,byte 0x3                        ; 07bf:0033
        lea eax,[ebx*8+0x0]                     ; 07bf:0037
        mov cl,0x20                             ; 07bf:0040
        sub cl,al                               ; 07bf:0042
        rol ebp,cl                              ; 07bf:0044
        mov eax,ebp                             ; 07bf:0047
        movzx eax,al                            ; 07bf:004a
        mov di,0x7bf                            ; 07bf:004e
        mov es,di                               ; 07bf:0051
        mov edi,0xa                             ; 07bf:0053
        mov ecx,0x10                            ; 07bf:0059

l_07bf_005f:
        scasb                                   ; 07bf:005f
        jz short l_07bf_006c                    ; 07bf:0060
        jc short l_07bf_0068                    ; 07bf:0062
        loop l_07bf_005f                        ; 07bf:0064
        inc edi                                 ; 07bf:0066

l_07bf_0068:
        dec edi                                 ; 07bf:0068
        inc cl                                  ; 07bf:006a

l_07bf_006c:
        movzx edx,byte [byte es:di-0x1]         ; 07bf:006c
        dec cl                                  ; 07bf:0072
        xor cl,0xf                              ; 07bf:0074
        mov edi,ecx                             ; 07bf:0077
        mov ecx,ebx                             ; 07bf:007a
        jecxz l_07bf_00b7                       ; 07bf:007d
        sub eax,edx                             ; 07bf:0080

l_07bf_0083:
        shld eax,ebp,0x8                        ; 07bf:0083
        rol ebp,byte 0x8                        ; 07bf:0088
        mov ebx,edi                             ; 07bf:008c
        shl ebx,byte 0x5                        ; 07bf:008f
        xor edx,edx                             ; 07bf:0093
        mov esi,eax                             ; 07bf:0096
        div ebx                                 ; 07bf:0099
        rol edi,byte 0x4                        ; 07bf:009c
        add edi,eax                             ; 07bf:00a0
        add ebx,eax                             ; 07bf:00a3

l_07bf_00a6:
        imul eax,ebx                            ; 07bf:00a6
        mov edx,eax                             ; 07bf:00aa
        mov eax,esi                             ; 07bf:00ad
        sub eax,edx                             ; 07bf:00b0
        jc short l_07bf_00c8                    ; 07bf:00b3
        loop l_07bf_0083                        ; 07bf:00b5

l_07bf_00b7:
        mov eax,edi                             ; 07bf:00b7
        pop es                                  ; 07bf:00ba
        pop edi                                 ; 07bf:00bb
        pop esi                                 ; 07bf:00bd
        pop edx                                 ; 07bf:00bf
        pop ecx                                 ; 07bf:00c1
        pop ebx                                 ; 07bf:00c3
        pop ebp                                 ; 07bf:00c5
        retf                                    ; 07bf:00c7

l_07bf_00c8:
        dec ebx                                 ; 07bf:00c8
        dec edi                                 ; 07bf:00ca
        movzx eax,bl                            ; 07bf:00cc
        and al,0x1f                             ; 07bf:00d0
        jmp short l_07bf_00a6                   ; 07bf:00d2
; data 07bf:00d4 (12 bytes)
        db 0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x01,0x00,0x00,0x00

;======================================================================
; segment 07cc  (image 0x07cd0-0x22a54)
; text / font output
;======================================================================
section seg_07cc start=0x7cd0 vstart=0x10

far_07cc_0010:
        mov [cs:0x4],si                         ; 07cc:0010
        mov [cs:0x6],ds                         ; 07cc:0015
        retf                                    ; 07cc:001a

far_07cc_001b:
        lds si,[cs:0x4]                         ; 07cc:001b
        retf                                    ; 07cc:0020

far_07cc_0021:
        mov [cs:0x8],ax                         ; 07cc:0021
        retf                                    ; 07cc:0025

far_07cc_0026:
        enter 0x2,0x0                           ; 07cc:0026
        pusha                                   ; 07cc:002a
        mov al,0x1e                             ; 07cc:002b
        mov cx,0x2700                           ; 07cc:002d
        rep stosb                               ; 07cc:0030
        mov word [byte bp-0x2],0x1              ; 07cc:0032
        push ax                                 ; 07cc:0037
        mov cl,[byte bp-0x2]                    ; 07cc:0038
        mov ax,0xff                             ; 07cc:003b
        shl ax,cl                               ; 07cc:003e
        mov [cs:0xd],ah                         ; 07cc:0040
        mov byte [cs:0xf],0x0                   ; 07cc:0045
        pop ax                                  ; 07cc:004b
        mov dx,0x3d                             ; 07cc:004c

l_07cc_004f:
        mov cx,0x17                             ; 07cc:004f
        rep stosb                               ; 07cc:0052
        mov cx,0xd1                             ; 07cc:0054

l_07cc_0057:
        push cx                                 ; 07cc:0057
        mov ah,[si]                             ; 07cc:0058
        and ah,[cs:0xd]                         ; 07cc:005a
        mov cl,[byte bp-0x2]                    ; 07cc:005f
        rol byte [cs:0xd],cl                    ; 07cc:0062
        adc si,byte +0x0                        ; 07cc:0067
        mov ch,cl                               ; 07cc:006a
        mov cl,[cs:0xf]                         ; 07cc:006c
        shr ah,cl                               ; 07cc:0071
        add cl,ch                               ; 07cc:0073
        and cl,0x7                              ; 07cc:0075
        mov [cs:0xf],cl                         ; 07cc:0078
        pop cx                                  ; 07cc:007d
        or ah,ah                                ; 07cc:007e
        jnz short l_07cc_0086                   ; 07cc:0080
        mov ah,0x1e                             ; 07cc:0082
        jmp short l_07cc_0088                   ; 07cc:0084

l_07cc_0086:
        mov ah,0x50                             ; 07cc:0086

l_07cc_0088:
        mov [es:di],ah                          ; 07cc:0088
        inc di                                  ; 07cc:008b
        loop l_07cc_0057                        ; 07cc:008c
        mov cx,0x18                             ; 07cc:008e
        rep stosb                               ; 07cc:0091
        dec dx                                  ; 07cc:0093
        jnz short l_07cc_004f                   ; 07cc:0094
        mov cx,0x2700                           ; 07cc:0096
        rep stosb                               ; 07cc:0099
        popa                                    ; 07cc:009b
        leave                                   ; 07cc:009c
        retf                                    ; 07cc:009d

far_07cc_009e:
        enter 0x10,0x0                          ; 07cc:009e
        pusha                                   ; 07cc:00a2
        push ds                                 ; 07cc:00a3
        lds si,[byte bp+0x6]                    ; 07cc:00a4
        mov ax,[byte bp+0xc]                    ; 07cc:00a7
        shl ax,byte 0x4                         ; 07cc:00aa
        mov bx,ax                               ; 07cc:00ad
        shl ax,byte 0x2                         ; 07cc:00af
        add bx,ax                               ; 07cc:00b2
        mov ax,[byte bp+0xa]                    ; 07cc:00b4
        mov cl,al                               ; 07cc:00b7
        shr ax,byte 0x2                         ; 07cc:00b9
        add bx,ax                               ; 07cc:00bc
        mov [cs:0xa],bx                         ; 07cc:00be
        and cl,0x3                              ; 07cc:00c3
        mov dx,0x3ce                            ; 07cc:00c6
        mov ax,0x4005                           ; 07cc:00c9
        out dx,ax                               ; 07cc:00cc
        mov dx,0x3c4                            ; 07cc:00cd
        mov al,0x2                              ; 07cc:00d0
        out dx,al                               ; 07cc:00d2
        inc dx                                  ; 07cc:00d3
        mov al,0x11                             ; 07cc:00d4
        rol al,cl                               ; 07cc:00d6
        mov [cs:0xe],al                         ; 07cc:00d8
        push ax                                 ; 07cc:00dc
        mov cl,[byte bp+0x14]                   ; 07cc:00dd
        mov ax,0xff                             ; 07cc:00e0
        shl ax,cl                               ; 07cc:00e3
        mov [cs:0xd],ah                         ; 07cc:00e5
        mov byte [cs:0xf],0x0                   ; 07cc:00ea
        pop ax                                  ; 07cc:00f0
        mov bx,[byte bp+0x12]                   ; 07cc:00f1
        cmp byte [cs:0xc],0x0                   ; 07cc:00f4
        jnz short l_07cc_014b                   ; 07cc:00fa

l_07cc_00fc:
        mov al,[cs:0xe]                         ; 07cc:00fc
        mov cx,[byte bp+0xe]                    ; 07cc:0100
        mov di,[cs:0xa]                         ; 07cc:0103
        out dx,al                               ; 07cc:0108

l_07cc_0109:
        out dx,al                               ; 07cc:0109
        push cx                                 ; 07cc:010a
        mov ah,[si]                             ; 07cc:010b
        and ah,[cs:0xd]                         ; 07cc:010d
        mov cl,[byte bp+0x14]                   ; 07cc:0112
        rol byte [cs:0xd],cl                    ; 07cc:0115
        adc si,byte +0x0                        ; 07cc:011a
        mov ch,cl                               ; 07cc:011d
        mov cl,[cs:0xf]                         ; 07cc:011f
        shr ah,cl                               ; 07cc:0124
        add cl,ch                               ; 07cc:0126
        and cl,0x7                              ; 07cc:0128
        mov [cs:0xf],cl                         ; 07cc:012b
        pop cx                                  ; 07cc:0130
        add ah,bl                               ; 07cc:0131
        mov [gs:di],ah                          ; 07cc:0133
        rol al,1                                ; 07cc:0136
        adc di,byte +0x0                        ; 07cc:0138
        dec cx                                  ; 07cc:013b
        jnz short l_07cc_0109                   ; 07cc:013c
        add word [cs:0xa],byte +0x50            ; 07cc:013e
        dec byte [byte bp+0x10]                 ; 07cc:0144
        jnz short l_07cc_00fc                   ; 07cc:0147
        jmp short l_07cc_019e                   ; 07cc:0149

l_07cc_014b:
        mov al,[cs:0xe]                         ; 07cc:014b
        mov cx,[byte bp+0xe]                    ; 07cc:014f
        mov di,[cs:0xa]                         ; 07cc:0152

l_07cc_0157:
        out dx,al                               ; 07cc:0157
        push cx                                 ; 07cc:0158
        mov ah,[si]                             ; 07cc:0159
        and ah,[cs:0xd]                         ; 07cc:015b
        mov cl,[byte bp+0x14]                   ; 07cc:0160
        rol byte [cs:0xd],cl                    ; 07cc:0163
        adc si,byte +0x0                        ; 07cc:0168
        mov ch,cl                               ; 07cc:016b
        mov cl,[cs:0xf]                         ; 07cc:016d
        shr ah,cl                               ; 07cc:0172
        add cl,ch                               ; 07cc:0174
        and cl,0x7                              ; 07cc:0176
        mov [cs:0xf],cl                         ; 07cc:0179
        pop cx                                  ; 07cc:017e
        or ah,ah                                ; 07cc:017f
        jz short l_07cc_018b                    ; 07cc:0181
        add ah,bl                               ; 07cc:0183
        mov bh,[gs:di]                          ; 07cc:0185
        mov [gs:di],ah                          ; 07cc:0188

l_07cc_018b:
        rol al,1                                ; 07cc:018b
        adc di,byte +0x0                        ; 07cc:018d
        dec cx                                  ; 07cc:0190
        jnz short l_07cc_0157                   ; 07cc:0191
        add word [cs:0xa],byte +0x50            ; 07cc:0193
        dec byte [byte bp+0x10]                 ; 07cc:0199
        jnz short l_07cc_014b                   ; 07cc:019c

l_07cc_019e:
        pop ds                                  ; 07cc:019e
        popa                                    ; 07cc:019f
        leave                                   ; 07cc:01a0
        retf                                    ; 07cc:01a1
; data 07cc:01a2 (6 bytes)
        db 0x00,0x00,0x00,0x00,0x00,0x00

sub_07cc_01a8:
        push bx                                 ; 07cc:01a8
        push cx                                 ; 07cc:01a9
        push dx                                 ; 07cc:01aa
        push si                                 ; 07cc:01ab
        push di                                 ; 07cc:01ac
        push ds                                 ; 07cc:01ad
        lds si,[cs:0x4]                         ; 07cc:01ae
        movzx cx,[si]                           ; 07cc:01b3
        mov [cs:0x1a4],cx                       ; 07cc:01b6
        movzx cx,[byte si+0x1]                  ; 07cc:01bb
        mov [cs:0x1a6],cx                       ; 07cc:01bf
        mov di,bx                               ; 07cc:01c4
        movzx bx,dl                             ; 07cc:01c6
        movzx cx,[byte bx+si+0x2]               ; 07cc:01c9
        mov [cs:0x1a2],cx                       ; 07cc:01cd
        and cl,cl                               ; 07cc:01d2
        jz short l_07cc_0204                    ; 07cc:01d4
        add cx,ax                               ; 07cc:01d6
        push cx                                 ; 07cc:01d8
        shl bx,1                                ; 07cc:01d9
        mov cx,[word bx+si+0x102]               ; 07cc:01db
        lea si,[word si+0x302]                  ; 07cc:01df
        add si,cx                               ; 07cc:01e3
        movzx dx,dh                             ; 07cc:01e5
        push word [cs:0x1a6]                    ; 07cc:01e8
        push dx                                 ; 07cc:01ed
        push word [cs:0x1a4]                    ; 07cc:01ee
        push word [cs:0x1a2]                    ; 07cc:01f3
        push di                                 ; 07cc:01f8
        push ax                                 ; 07cc:01f9
        push ds                                 ; 07cc:01fa
        push si                                 ; 07cc:01fb
        push cs                                 ; 07cc:01fc
        call far_07cc_009e                      ; 07cc:01fd
        add sp,byte +0x10                       ; 07cc:0200
        pop ax                                  ; 07cc:0203

l_07cc_0204:
        pop ds                                  ; 07cc:0204
        pop di                                  ; 07cc:0205
        pop si                                  ; 07cc:0206
        pop dx                                  ; 07cc:0207
        pop cx                                  ; 07cc:0208
        pop bx                                  ; 07cc:0209
        retf                                    ; 07cc:020a

far_07cc_020b:
        push dx                                 ; 07cc:020b
        push si                                 ; 07cc:020c
        mov dh,dl                               ; 07cc:020d

l_07cc_020f:
        mov dl,[si]                             ; 07cc:020f
        inc si                                  ; 07cc:0211
        or dl,dl                                ; 07cc:0212
        jz short l_07cc_0221                    ; 07cc:0214
        push cs                                 ; 07cc:0216
        call sub_07cc_01a8                      ; 07cc:0217
        add ax,[cs:0x8]                         ; 07cc:021a
        jmp short l_07cc_020f                   ; 07cc:021f

l_07cc_0221:
        pop si                                  ; 07cc:0221
        pop dx                                  ; 07cc:0222
        retf                                    ; 07cc:0223
        incbin "data/d_07ee4.bin"   ; 0x1ab70 bytes of data at 07cc:0224

;======================================================================
; segment 20c1  (image 0x22a54-0x31140)
; Gravis Ultrasound music player (base+103h/105h/107h, DRAM upload)
;======================================================================
section seg_20c1 start=0x22a54 vstart=0x1e44

far_20c1_1e44:
        pusha                                   ; 20c1:1e44
        push ds                                 ; 20c1:1e45
        push es                                 ; 20c1:1e46
        mov di,0x1252                           ; 20c1:1e47
        mov cx,[cs:0xaf8]                       ; 20c1:1e4a

l_20c1_1e4f:
        mov word [byte cs:di+0x4],0x0           ; 20c1:1e4f
        mov word [byte cs:di+0x6],0x0           ; 20c1:1e55
        add di,byte +0x34                       ; 20c1:1e5b
        loop l_20c1_1e4f                        ; 20c1:1e5e
        push cs                                 ; 20c1:1e60
        pop ds                                  ; 20c1:1e61
        mov dx,0x13f2                           ; 20c1:1e62
        push dx                                 ; 20c1:1e65
        call 0x003d:far_003d_0166               ; 20c1:1e66
        mov bx,0xc10                            ; 20c1:1e6b
        mul bx                                  ; 20c1:1e6e
        mov bx,0x448                            ; 20c1:1e70
        div bx                                  ; 20c1:1e73
        mov bx,0x1                              ; 20c1:1e75
        pop dx                                  ; 20c1:1e78
        call 0x003d:far_003d_02a0               ; 20c1:1e79
        mov [cs:0x123e],ax                      ; 20c1:1e7e
        mov word [cs:0x1244],0x2000             ; 20c1:1e82
        mov word [cs:0x1248],0x0                ; 20c1:1e89
        mov word [cs:0x124a],0x0                ; 20c1:1e90
        mov word [cs:0x124c],0x14               ; 20c1:1e97
        mov word [cs:0x124e],0x0                ; 20c1:1e9e
        mov word [cs:0x1250],0x0                ; 20c1:1ea5
        cmp word [cs:0xaf4],byte +0x0           ; 20c1:1eac
        jz short l_20c1_1ebc                    ; 20c1:1eb2
        mov dx,[cs:0xaf4]                       ; 20c1:1eb4
        mov al,0x1                              ; 20c1:1eb9
        out dx,al                               ; 20c1:1ebb

l_20c1_1ebc:
        pop es                                  ; 20c1:1ebc
        pop ds                                  ; 20c1:1ebd
        popa                                    ; 20c1:1ebe
        retf                                    ; 20c1:1ebf

far_20c1_1ec0:
        pusha                                   ; 20c1:1ec0
        push ds                                 ; 20c1:1ec1
        push es                                 ; 20c1:1ec2
        mov ax,[cs:0x123e]                      ; 20c1:1ec3
        call 0x003d:far_003d_02f2               ; 20c1:1ec7
        cmp word [cs:0xaf4],byte +0x0           ; 20c1:1ecc
        jz short l_20c1_1f08                    ; 20c1:1ed2
        mov dx,[cs:0xaf4]                       ; 20c1:1ed4
        mov al,0x3                              ; 20c1:1ed9
        out dx,al                               ; 20c1:1edb
        mov dx,[cs:0xaf4]                       ; 20c1:1edc
        add dx,0x102                            ; 20c1:1ee1
        mov cx,0x14                             ; 20c1:1ee5

l_20c1_1ee8:
        mov al,cl                               ; 20c1:1ee8
        dec al                                  ; 20c1:1eea
        out dx,al                               ; 20c1:1eec
        inc dx                                  ; 20c1:1eed
        mov al,0x0                              ; 20c1:1eee
        out dx,al                               ; 20c1:1ef0
        add dx,byte +0x2                        ; 20c1:1ef1
        mov al,0x3                              ; 20c1:1ef4
        out dx,al                               ; 20c1:1ef6
        sub dx,byte +0x2                        ; 20c1:1ef7
        mov al,0xd                              ; 20c1:1efa
        out dx,al                               ; 20c1:1efc
        add dx,byte +0x2                        ; 20c1:1efd
        mov al,0x3                              ; 20c1:1f00
        out dx,al                               ; 20c1:1f02
        sub dx,byte +0x3                        ; 20c1:1f03
        loop l_20c1_1ee8                        ; 20c1:1f06

l_20c1_1f08:
        pop es                                  ; 20c1:1f08
        pop ds                                  ; 20c1:1f09
        popa                                    ; 20c1:1f0a
        retf                                    ; 20c1:1f0b

far_20c1_1f0c:
        pusha                                   ; 20c1:1f0c
        push es                                 ; 20c1:1f0d
        push ds                                 ; 20c1:1f0e
        push si                                 ; 20c1:1f0f
        mov word [cs:0xb02],0x40                ; 20c1:1f10
        mov word [cs:0xb06],0x0                 ; 20c1:1f17
        mov word [cs:0xafe],0x6                 ; 20c1:1f1e
        mov word [cs:0xb00],0x1                 ; 20c1:1f25
        push cs                                 ; 20c1:1f2c
        call sub_20c1_1f39                      ; 20c1:1f2d
        pop dx                                  ; 20c1:1f30
        pop ds                                  ; 20c1:1f31
        push cs                                 ; 20c1:1f32
        call sub_20c1_2091                      ; 20c1:1f33
        pop es                                  ; 20c1:1f36
        popa                                    ; 20c1:1f37
        retf                                    ; 20c1:1f38

sub_20c1_1f39:
        cmp word [cs:0xaf4],byte +0x0           ; 20c1:1f39
        jnz short l_20c1_1f42                   ; 20c1:1f3f
        retf                                    ; 20c1:1f41

l_20c1_1f42:
        pusha                                   ; 20c1:1f42
        push ds                                 ; 20c1:1f43
        push es                                 ; 20c1:1f44
        mov si,0xd8                             ; 20c1:1f45
        mov bp,0x6c                             ; 20c1:1f48
        mov cx,0x321                            ; 20c1:1f4b

l_20c1_1f4e:
        mov dx,0x36                             ; 20c1:1f4e
        mov ax,0x9de4                           ; 20c1:1f51
        div bp                                  ; 20c1:1f54
        mov dx,0x64                             ; 20c1:1f56
        mul dx                                  ; 20c1:1f59
        mov bx,0xbd6                            ; 20c1:1f5b
        div bx                                  ; 20c1:1f5e
        shr bx,1                                ; 20c1:1f60
        adc bx,byte +0x0                        ; 20c1:1f62
        cmp dx,bx                               ; 20c1:1f65
        jc short l_20c1_1f6a                    ; 20c1:1f67
        inc ax                                  ; 20c1:1f69

l_20c1_1f6a:
        mov [word cs:si+0xb10],ax               ; 20c1:1f6a
        inc bp                                  ; 20c1:1f6f
        add si,byte +0x2                        ; 20c1:1f70
        loop l_20c1_1f4e                        ; 20c1:1f73
        mov bx,[cs:0xaf4]                       ; 20c1:1f75
        mov cx,bx                               ; 20c1:1f7a
        add bx,0x103                            ; 20c1:1f7c
        add cx,0x105                            ; 20c1:1f80
        mov dx,bx                               ; 20c1:1f84
        mov al,0x4c                             ; 20c1:1f86
        out dx,al                               ; 20c1:1f88
        mov dx,cx                               ; 20c1:1f89
        mov al,0x0                              ; 20c1:1f8b
        out dx,al                               ; 20c1:1f8d
        mov dx,[cs:0xaf4]                       ; 20c1:1f8e
        in al,dx                                ; 20c1:1f93
        in al,dx                                ; 20c1:1f94
        in al,dx                                ; 20c1:1f95
        in al,dx                                ; 20c1:1f96
        in al,dx                                ; 20c1:1f97
        in al,dx                                ; 20c1:1f98
        mov dx,bx                               ; 20c1:1f99
        mov al,0x4c                             ; 20c1:1f9b
        out dx,al                               ; 20c1:1f9d
        mov dx,cx                               ; 20c1:1f9e
        mov al,0x1                              ; 20c1:1fa0
        out dx,al                               ; 20c1:1fa2
        mov dx,[cs:0xaf4]                       ; 20c1:1fa3
        in al,dx                                ; 20c1:1fa8
        in al,dx                                ; 20c1:1fa9
        in al,dx                                ; 20c1:1faa
        in al,dx                                ; 20c1:1fab
        in al,dx                                ; 20c1:1fac
        in al,dx                                ; 20c1:1fad
        mov dx,bx                               ; 20c1:1fae
        mov al,0x41                             ; 20c1:1fb0
        out dx,al                               ; 20c1:1fb2
        mov dx,cx                               ; 20c1:1fb3
        mov al,0x0                              ; 20c1:1fb5
        out dx,al                               ; 20c1:1fb7
        mov dx,bx                               ; 20c1:1fb8
        mov al,0x45                             ; 20c1:1fba
        out dx,al                               ; 20c1:1fbc
        mov dx,cx                               ; 20c1:1fbd
        mov al,0x0                              ; 20c1:1fbf
        out dx,al                               ; 20c1:1fc1
        mov dx,bx                               ; 20c1:1fc2
        mov al,0x49                             ; 20c1:1fc4
        out dx,al                               ; 20c1:1fc6
        mov dx,cx                               ; 20c1:1fc7
        mov al,0x0                              ; 20c1:1fc9
        out dx,al                               ; 20c1:1fcb
        mov dx,bx                               ; 20c1:1fcc
        mov al,0xe                              ; 20c1:1fce
        out dx,al                               ; 20c1:1fd0
        mov dx,cx                               ; 20c1:1fd1
        mov al,0x14                             ; 20c1:1fd3
        dec al                                  ; 20c1:1fd5
        or al,0xc0                              ; 20c1:1fd7
        out dx,al                               ; 20c1:1fd9
        mov dx,[cs:0xaf4]                       ; 20c1:1fda
        add dx,byte +0x6                        ; 20c1:1fdf
        in al,dx                                ; 20c1:1fe2
        mov dx,bx                               ; 20c1:1fe3
        mov al,0x41                             ; 20c1:1fe5
        out dx,al                               ; 20c1:1fe7
        mov dx,cx                               ; 20c1:1fe8
        in al,dx                                ; 20c1:1fea
        mov dx,bx                               ; 20c1:1feb
        mov al,0x49                             ; 20c1:1fed
        out dx,al                               ; 20c1:1fef
        mov dx,cx                               ; 20c1:1ff0
        in al,dx                                ; 20c1:1ff2
        mov dx,bx                               ; 20c1:1ff3
        mov al,0x8f                             ; 20c1:1ff5
        out dx,al                               ; 20c1:1ff7
        mov dx,cx                               ; 20c1:1ff8
        in al,dx                                ; 20c1:1ffa
        push cx                                 ; 20c1:1ffb
        mov cx,0x20                             ; 20c1:1ffc

l_20c1_1fff:
        mov dx,[cs:0xaf4]                       ; 20c1:1fff
        add dx,0x102                            ; 20c1:2004
        mov al,cl                               ; 20c1:2008
        dec al                                  ; 20c1:200a
        out dx,al                               ; 20c1:200c
        inc dx                                  ; 20c1:200d
        mov al,0x0                              ; 20c1:200e
        out dx,al                               ; 20c1:2010
        add dx,byte +0x2                        ; 20c1:2011
        mov al,0x3                              ; 20c1:2014
        out dx,al                               ; 20c1:2016
        sub dx,byte +0x2                        ; 20c1:2017
        mov al,0xd                              ; 20c1:201a
        out dx,al                               ; 20c1:201c
        add dx,byte +0x2                        ; 20c1:201d
        mov al,0x3                              ; 20c1:2020
        out dx,al                               ; 20c1:2022
        loop l_20c1_1fff                        ; 20c1:2023
        pop cx                                  ; 20c1:2025
        mov dx,bx                               ; 20c1:2026
        mov al,0x41                             ; 20c1:2028
        out dx,al                               ; 20c1:202a
        mov dx,cx                               ; 20c1:202b
        in al,dx                                ; 20c1:202d
        mov dx,bx                               ; 20c1:202e
        mov al,0x49                             ; 20c1:2030
        out dx,al                               ; 20c1:2032
        mov dx,cx                               ; 20c1:2033
        in al,dx                                ; 20c1:2035
        mov dx,bx                               ; 20c1:2036
        mov al,0x8f                             ; 20c1:2038
        out dx,al                               ; 20c1:203a
        mov dx,cx                               ; 20c1:203b
        in al,dx                                ; 20c1:203d
        mov dx,bx                               ; 20c1:203e
        mov al,0x4c                             ; 20c1:2040
        out dx,al                               ; 20c1:2042
        mov dx,cx                               ; 20c1:2043
        mov al,0x7                              ; 20c1:2045
        out dx,al                               ; 20c1:2047
        mov cx,0x14                             ; 20c1:2048

l_20c1_204b:
        mov dx,[cs:0xaf4]                       ; 20c1:204b
        add dx,0x102                            ; 20c1:2050
        mov al,0x14                             ; 20c1:2054
        sub al,cl                               ; 20c1:2056
        out dx,al                               ; 20c1:2058
        mov dx,[cs:0xaf4]                       ; 20c1:2059
        add dx,0x103                            ; 20c1:205e
        mov al,0x6                              ; 20c1:2062
        out dx,al                               ; 20c1:2064
        mov al,0x3f                             ; 20c1:2065
        mov dx,[cs:0xaf4]                       ; 20c1:2067
        add dx,0x105                            ; 20c1:206c
        out dx,al                               ; 20c1:2070
        mov dx,[cs:0xaf4]                       ; 20c1:2071
        add dx,0x103                            ; 20c1:2076
        mov al,0x9                              ; 20c1:207a
        out dx,al                               ; 20c1:207c
        mov ax,[cs:0x8c2]                       ; 20c1:207d
        mov dx,[cs:0xaf4]                       ; 20c1:2081
        add dx,0x104                            ; 20c1:2086
        out dx,ax                               ; 20c1:208a
        loop l_20c1_204b                        ; 20c1:208b
        pop es                                  ; 20c1:208d
        pop ds                                  ; 20c1:208e
        popa                                    ; 20c1:208f
        retf                                    ; 20c1:2090

sub_20c1_2091:
        pushad                                  ; 20c1:2091
        push ds                                 ; 20c1:2093
        push es                                 ; 20c1:2094
        mov word [cs:0xb0a],0x40                ; 20c1:2095
        xor eax,eax                             ; 20c1:209c
        mov ax,ds                               ; 20c1:209f
        shl eax,byte 0x4                        ; 20c1:20a1
        movzx edx,dx                            ; 20c1:20a5
        add eax,edx                             ; 20c1:20a9
        mov [cs:0x1230],eax                     ; 20c1:20ac
        mov edx,eax                             ; 20c1:20b1
        shr edx,byte 0x4                        ; 20c1:20b4
        mov ds,dx                               ; 20c1:20b8
        mov dx,ax                               ; 20c1:20ba
        and dx,byte +0xf                        ; 20c1:20bc
        mov [cs:0x122c],dx                      ; 20c1:20bf
        mov word [cs:0xaf8],0x4                 ; 20c1:20c4
        mov bp,dx                               ; 20c1:20cb
        add bp,0x438                            ; 20c1:20cd
        mov bx,0x0                              ; 20c1:20d1
        mov cx,0x4                              ; 20c1:20d4

l_20c1_20d7:
        mov al,[byte ds:bp+0x0]                 ; 20c1:20d7
        cmp al,[word cs:bx+0x0]                 ; 20c1:20db
        jnz short l_20c1_20ff                   ; 20c1:20e0
        inc bp                                  ; 20c1:20e2
        inc bx                                  ; 20c1:20e3
        loop l_20c1_20d7                        ; 20c1:20e4
        mov si,dx                               ; 20c1:20e6
        add si,0x3b8                            ; 20c1:20e8
        add dword [cs:0x1230],0x43c             ; 20c1:20ec
        mov byte [cs:0x14],0x1                  ; 20c1:20f6
        jmp near l_20c1_220d                    ; 20c1:20fc

l_20c1_20ff:
        mov bp,dx                               ; 20c1:20ff
        add bp,0x438                            ; 20c1:2101
        mov bx,0x4                              ; 20c1:2105
        mov cx,0x4                              ; 20c1:2108

l_20c1_210b:
        mov al,[byte ds:bp+0x0]                 ; 20c1:210b
        cmp al,[word cs:bx+0x0]                 ; 20c1:210f
        jnz short l_20c1_2133                   ; 20c1:2114
        inc bp                                  ; 20c1:2116
        inc bx                                  ; 20c1:2117
        loop l_20c1_210b                        ; 20c1:2118
        mov si,dx                               ; 20c1:211a
        add si,0x3b8                            ; 20c1:211c
        add dword [cs:0x1230],0x43c             ; 20c1:2120
        mov byte [cs:0x14],0x1                  ; 20c1:212a
        jmp near l_20c1_220d                    ; 20c1:2130

l_20c1_2133:
        mov bp,dx                               ; 20c1:2133
        add bp,0x438                            ; 20c1:2135
        mov bx,0x8                              ; 20c1:2139
        mov cx,0x4                              ; 20c1:213c

l_20c1_213f:
        mov al,[byte ds:bp+0x0]                 ; 20c1:213f
        cmp al,[word cs:bx+0x0]                 ; 20c1:2143
        jnz short l_20c1_2175                   ; 20c1:2148
        inc bp                                  ; 20c1:214a
        inc bx                                  ; 20c1:214b
        loop l_20c1_213f                        ; 20c1:214c
        mov word [cs:0xb0a],0x30                ; 20c1:214e
        mov word [cs:0xaf8],0x6                 ; 20c1:2155
        mov si,dx                               ; 20c1:215c
        add si,0x3b8                            ; 20c1:215e
        add dword [cs:0x1230],0x43c             ; 20c1:2162
        mov byte [cs:0x14],0x1                  ; 20c1:216c
        jmp near l_20c1_220d                    ; 20c1:2172

l_20c1_2175:
        mov bp,dx                               ; 20c1:2175
        add bp,0x438                            ; 20c1:2177
        mov bx,0xc                              ; 20c1:217b
        mov cx,0x4                              ; 20c1:217e

l_20c1_2181:
        mov al,[byte ds:bp+0x0]                 ; 20c1:2181
        cmp al,[word cs:bx+0x0]                 ; 20c1:2185
        jnz short l_20c1_21b6                   ; 20c1:218a
        inc bp                                  ; 20c1:218c
        inc bx                                  ; 20c1:218d
        loop l_20c1_2181                        ; 20c1:218e
        mov word [cs:0xb0a],0x20                ; 20c1:2190
        mov word [cs:0xaf8],0x8                 ; 20c1:2197
        mov si,dx                               ; 20c1:219e
        add si,0x3b8                            ; 20c1:21a0
        add dword [cs:0x1230],0x43c             ; 20c1:21a4
        mov byte [cs:0x14],0x1                  ; 20c1:21ae
        jmp short l_20c1_220d                   ; 20c1:21b4

l_20c1_21b6:
        mov bp,dx                               ; 20c1:21b6
        add bp,0x438                            ; 20c1:21b8
        mov bx,0x10                             ; 20c1:21bc
        mov cx,0x4                              ; 20c1:21bf

l_20c1_21c2:
        mov al,[byte ds:bp+0x0]                 ; 20c1:21c2
        cmp al,[word cs:bx+0x0]                 ; 20c1:21c6
        jnz short l_20c1_21f7                   ; 20c1:21cb
        inc bp                                  ; 20c1:21cd
        inc bx                                  ; 20c1:21ce
        loop l_20c1_21c2                        ; 20c1:21cf
        mov word [cs:0xb0a],0x20                ; 20c1:21d1
        mov word [cs:0xaf8],0x8                 ; 20c1:21d8
        mov si,dx                               ; 20c1:21df
        add si,0x3b8                            ; 20c1:21e1
        add dword [cs:0x1230],0x43c             ; 20c1:21e5
        mov byte [cs:0x14],0x1                  ; 20c1:21ef
        jmp short l_20c1_220d                   ; 20c1:21f5

l_20c1_21f7:
        mov si,dx                               ; 20c1:21f7
        add si,0x1d8                            ; 20c1:21f9
        add dword [cs:0x1230],0x258             ; 20c1:21fd
        mov byte [cs:0x14],0x0                  ; 20c1:2207

l_20c1_220d:
        mov ax,[byte si-0x2]                    ; 20c1:220d
        mov [cs:0x16],ax                        ; 20c1:2210
        mov di,0x18                             ; 20c1:2214
        mov cx,0x80                             ; 20c1:2217

l_20c1_221a:
        mov al,[si]                             ; 20c1:221a
        mov [cs:di],al                          ; 20c1:221c
        inc si                                  ; 20c1:221f
        inc di                                  ; 20c1:2220
        loop l_20c1_221a                        ; 20c1:2221
        mov [cs:0x1238],ds                      ; 20c1:2223
        add dx,0x43c                            ; 20c1:2228
        mov [cs:0x123a],dx                      ; 20c1:222c
        mov si,0x18                             ; 20c1:2231
        mov cx,0x80                             ; 20c1:2234
        mov ax,0x0                              ; 20c1:2237

l_20c1_223a:
        mov al,[cs:si]                          ; 20c1:223a
        cmp al,ah                               ; 20c1:223d
        jc short l_20c1_2243                    ; 20c1:223f
        xchg ah,al                              ; 20c1:2241

l_20c1_2243:
        inc si                                  ; 20c1:2243
        loop l_20c1_223a                        ; 20c1:2244
        inc ah                                  ; 20c1:2246
        xor al,al                               ; 20c1:2248
        mov bx,[cs:0xaf8]                       ; 20c1:224a
        mul bx                                  ; 20c1:224f
        shl edx,byte 0x10                       ; 20c1:2251
        mov dx,ax                               ; 20c1:2255
        add [cs:0x1230],edx                     ; 20c1:2257
        mov edx,[cs:0x1230]                     ; 20c1:225d
        mov [cs:0x1234],edx                     ; 20c1:2263
        mov cx,0xf                              ; 20c1:2269
        cmp byte [cs:0x14],0x1                  ; 20c1:226c
        jnz short l_20c1_2277                   ; 20c1:2272
        mov cx,0x1f                             ; 20c1:2274

l_20c1_2277:
        cmp word [cs:0xaf4],byte +0x0           ; 20c1:2277
        jz near l_20c1_241e                     ; 20c1:227d
        mov word [cs:0x1240],0x0                ; 20c1:2281
        mov word [cs:0x1242],0x0                ; 20c1:2288
        mov si,[cs:0x122c]                      ; 20c1:228f
        add si,byte +0x2a                       ; 20c1:2294
        mov bp,0x0                              ; 20c1:2297

l_20c1_229a:
        push cx                                 ; 20c1:229a
        mov word [word cs:bp+0x9be],0x0         ; 20c1:229b
        mov cx,[si]                             ; 20c1:22a2
        add si,byte +0x2                        ; 20c1:22a4
        xchg ch,cl                              ; 20c1:22a7
        cmp cx,byte +0x2                        ; 20c1:22a9
        jna near l_20c1_2382                    ; 20c1:22ac
        shl cx,1                                ; 20c1:22b0
        mov [word cs:bp+0x9be],cx               ; 20c1:22b2
        movzx ecx,cx                            ; 20c1:22b7
        mov eax,[cs:0x1230]                     ; 20c1:22bb
        mov [cs:0x1234],eax                     ; 20c1:22c0
        add [cs:0x1230],ecx                     ; 20c1:22c5
        push bp                                 ; 20c1:22cb
        mov cx,[word cs:bp+0x9be]               ; 20c1:22cc
        shl bp,1                                ; 20c1:22d1
        mov di,[cs:0x1240]                      ; 20c1:22d3
        mov bl,[cs:0x1242]                      ; 20c1:22d8
        mov [word cs:bp+0x942],di               ; 20c1:22dd
        mov [word cs:bp+0x944],bl               ; 20c1:22e2
        mov bp,di                               ; 20c1:22e7
        mov di,0x0                              ; 20c1:22e9
        mov dx,[cs:0xaf4]                       ; 20c1:22ec
        add dx,0x103                            ; 20c1:22f1

l_20c1_22f5:
        mov al,0x43                             ; 20c1:22f5
        out dx,al                               ; 20c1:22f7
        inc dx                                  ; 20c1:22f8
        mov ax,bp                               ; 20c1:22f9
        out dx,ax                               ; 20c1:22fb
        dec dx                                  ; 20c1:22fc
        mov al,0x44                             ; 20c1:22fd
        out dx,al                               ; 20c1:22ff
        add dx,byte +0x2                        ; 20c1:2300
        mov al,bl                               ; 20c1:2303
        out dx,al                               ; 20c1:2305
        add dx,byte +0x2                        ; 20c1:2306
        push edx                                ; 20c1:2309
        push di                                 ; 20c1:230b
        push ds                                 ; 20c1:230c
        mov edx,[cs:0x1234]                     ; 20c1:230d
        mov di,dx                               ; 20c1:2313
        shr edx,byte 0x4                        ; 20c1:2315
        mov ds,dx                               ; 20c1:2319
        and di,byte +0xf                        ; 20c1:231b
        mov al,[di]                             ; 20c1:231e
        pop ds                                  ; 20c1:2320
        pop di                                  ; 20c1:2321
        pop edx                                 ; 20c1:2322
        out dx,al                               ; 20c1:2324
        sub dx,byte +0x4                        ; 20c1:2325
        inc di                                  ; 20c1:2328
        inc dword [cs:0x1234]                   ; 20c1:2329
        add bp,byte +0x1                        ; 20c1:232f
        adc bl,0x0                              ; 20c1:2332
        loop l_20c1_22f5                        ; 20c1:2335
        dec di                                  ; 20c1:2337
        dec dword [cs:0x1234]                   ; 20c1:2338
        mov al,0x43                             ; 20c1:233e
        out dx,al                               ; 20c1:2340
        inc dx                                  ; 20c1:2341
        mov ax,bp                               ; 20c1:2342
        out dx,ax                               ; 20c1:2344
        dec dx                                  ; 20c1:2345
        mov al,0x44                             ; 20c1:2346
        out dx,al                               ; 20c1:2348
        add dx,byte +0x2                        ; 20c1:2349
        mov al,bl                               ; 20c1:234c
        out dx,al                               ; 20c1:234e
        add dx,byte +0x2                        ; 20c1:234f
        push edx                                ; 20c1:2352
        push di                                 ; 20c1:2354
        push ds                                 ; 20c1:2355
        mov edx,[cs:0x1234]                     ; 20c1:2356
        mov di,dx                               ; 20c1:235c
        shr edx,byte 0x4                        ; 20c1:235e
        mov ds,dx                               ; 20c1:2362
        and di,byte +0xf                        ; 20c1:2364
        mov al,[di]                             ; 20c1:2367
        pop ds                                  ; 20c1:2369
        pop di                                  ; 20c1:236a
        pop edx                                 ; 20c1:236b
        out dx,al                               ; 20c1:236d
        sub dx,byte +0x4                        ; 20c1:236e
        add bp,byte +0x1                        ; 20c1:2371
        adc bl,0x0                              ; 20c1:2374
        mov [cs:0x1240],bp                      ; 20c1:2377
        mov [cs:0x1242],bl                      ; 20c1:237c
        pop bp                                  ; 20c1:2381

l_20c1_2382:
        mov ah,0x0                              ; 20c1:2382
        mov al,[si]                             ; 20c1:2384
        inc si                                  ; 20c1:2386
        mov [word cs:bp+0xa3a],ax               ; 20c1:2387
        mov al,[si]                             ; 20c1:238c
        inc si                                  ; 20c1:238e
        mov [word cs:bp+0x9fc],al               ; 20c1:238f
        mov dx,[word cs:bp+0x9be]               ; 20c1:2394
        mov ax,[si]                             ; 20c1:2399
        add si,byte +0x2                        ; 20c1:239b
        xchg ah,al                              ; 20c1:239e
        mov cx,[si]                             ; 20c1:23a0
        add si,byte +0x2                        ; 20c1:23a2
        xchg ch,cl                              ; 20c1:23a5
        cmp byte [cs:0x14],0x1                  ; 20c1:23a7
        jnz short l_20c1_23b3                   ; 20c1:23ad
        shl ax,1                                ; 20c1:23af
        shl cx,1                                ; 20c1:23b1

l_20c1_23b3:
        mov [word cs:bp+0xab6],cx               ; 20c1:23b3
        add cx,ax                               ; 20c1:23b8
        cmp cx,dx                               ; 20c1:23ba
        jna short l_20c1_23c7                   ; 20c1:23bc
        mov cx,dx                               ; 20c1:23be
        sub cx,ax                               ; 20c1:23c0
        mov [word cs:bp+0xab6],cx               ; 20c1:23c2

l_20c1_23c7:
        mov [word cs:bp+0xa78],ax               ; 20c1:23c7
        add si,byte +0x16                       ; 20c1:23cc
        add bp,byte +0x2                        ; 20c1:23cf
        pop cx                                  ; 20c1:23d2
        dec cx                                  ; 20c1:23d3
        jz short l_20c1_23d9                    ; 20c1:23d4
        jmp near l_20c1_229a                    ; 20c1:23d6

l_20c1_23d9:
        mov word [cs:0xb0e],0x0                 ; 20c1:23d9
        clc                                     ; 20c1:23e0
        mov cx,[cs:0xaf8]                       ; 20c1:23e1
        mov bx,cx                               ; 20c1:23e6
        shr bx,1                                ; 20c1:23e8
        sub bx,byte +0x2                        ; 20c1:23ea
        shl bx,byte 0x4                         ; 20c1:23ed

l_20c1_23f0:
        mov dx,[cs:0xaf4]                       ; 20c1:23f0
        add dx,0x102                            ; 20c1:23f5
        mov al,[cs:0xaf8]                       ; 20c1:23f9
        sub al,cl                               ; 20c1:23fd
        out dx,al                               ; 20c1:23ff
        mov dx,[cs:0xaf4]                       ; 20c1:2400
        add dx,0x103                            ; 20c1:2405
        mov al,0xc                              ; 20c1:2409
        out dx,al                               ; 20c1:240b
        mov dx,[cs:0xaf4]                       ; 20c1:240c
        add dx,0x105                            ; 20c1:2411
        mov al,[word cs:bx+0x411]               ; 20c1:2415
        out dx,al                               ; 20c1:241a
        inc bx                                  ; 20c1:241b
        loop l_20c1_23f0                        ; 20c1:241c

l_20c1_241e:
        pop es                                  ; 20c1:241e
        pop ds                                  ; 20c1:241f
        popad                                   ; 20c1:2420
        retf                                    ; 20c1:2422

far_20c1_2423:
        mov al,[cs:0x15]                        ; 20c1:2423
        retf                                    ; 20c1:2427

far_20c1_2428:
        push ax                                 ; 20c1:2428
        push bx                                 ; 20c1:2429
        push cx                                 ; 20c1:242a
        mov cl,al                               ; 20c1:242b
        call 0x003d:far_003d_031d               ; 20c1:242d
        mov bx,ax                               ; 20c1:2432

l_20c1_2434:
        call 0x003d:far_003d_031d               ; 20c1:2434
        sub ax,bx                               ; 20c1:2439
        cmp ax,0x2bc                            ; 20c1:243b
        jg short l_20c1_244b                    ; 20c1:243e
        cmp [cs:0x15],cl                        ; 20c1:2440
        jnz short l_20c1_2434                   ; 20c1:2445
        pop cx                                  ; 20c1:2447
        pop bx                                  ; 20c1:2448
        pop ax                                  ; 20c1:2449
        retf                                    ; 20c1:244a

l_20c1_244b:
        mov al,0x3                              ; 20c1:244b
        jmp 0x0000:far_0000_0219                ; 20c1:244d

far_20c1_2452:
        push bx                                 ; 20c1:2452
        mov bx,0x210                            ; 20c1:2453

l_20c1_2456:
        call sub_20c1_2470                      ; 20c1:2456
        jnc short l_20c1_2468                   ; 20c1:2459
        add bx,byte +0x10                       ; 20c1:245b
        cmp bx,0x260                            ; 20c1:245e
        jna short l_20c1_2456                   ; 20c1:2462
        xor ax,ax                               ; 20c1:2464
        jmp short l_20c1_246a                   ; 20c1:2466

l_20c1_2468:
        mov ax,bx                               ; 20c1:2468

l_20c1_246a:
        mov [cs:0xaf4],ax                       ; 20c1:246a
        pop bx                                  ; 20c1:246e
        retf                                    ; 20c1:246f

sub_20c1_2470:
        push ax                                 ; 20c1:2470
        push cx                                 ; 20c1:2471
        push dx                                 ; 20c1:2472
        mov dx,bx                               ; 20c1:2473
        add dx,0x103                            ; 20c1:2475
        mov al,0x4c                             ; 20c1:2479
        out dx,al                               ; 20c1:247b
        add dx,byte +0x2                        ; 20c1:247c
        sub al,al                               ; 20c1:247f
        out dx,al                               ; 20c1:2481
        call sub_20c1_2510                      ; 20c1:2482
        sub dx,byte +0x2                        ; 20c1:2485
        mov al,0x4c                             ; 20c1:2488
        out dx,al                               ; 20c1:248a
        add dx,byte +0x2                        ; 20c1:248b
        mov al,0x1                              ; 20c1:248e
        out dx,al                               ; 20c1:2490
        call sub_20c1_2510                      ; 20c1:2491
        xor ax,ax                               ; 20c1:2494
        call sub_20c1_24d8                      ; 20c1:2496
        call sub_20c1_24fc                      ; 20c1:2499
        mov cl,al                               ; 20c1:249c
        not al                                  ; 20c1:249e
        call sub_20c1_2506                      ; 20c1:24a0
        mov ax,0x1                              ; 20c1:24a3
        call sub_20c1_24d8                      ; 20c1:24a6
        call sub_20c1_24fc                      ; 20c1:24a9
        mov ch,al                               ; 20c1:24ac
        not al                                  ; 20c1:24ae
        call sub_20c1_2506                      ; 20c1:24b0
        xor ax,ax                               ; 20c1:24b3
        call sub_20c1_24d8                      ; 20c1:24b5
        call sub_20c1_24fc                      ; 20c1:24b8
        not al                                  ; 20c1:24bb
        cmp cl,al                               ; 20c1:24bd
        jnz short l_20c1_24d3                   ; 20c1:24bf
        mov ax,0x1                              ; 20c1:24c1
        call sub_20c1_24d8                      ; 20c1:24c4
        call sub_20c1_24fc                      ; 20c1:24c7
        not al                                  ; 20c1:24ca
        cmp ch,al                               ; 20c1:24cc
        jnz short l_20c1_24d3                   ; 20c1:24ce
        clc                                     ; 20c1:24d0
        jmp short l_20c1_24d4                   ; 20c1:24d1

l_20c1_24d3:
        stc                                     ; 20c1:24d3

l_20c1_24d4:
        pop dx                                  ; 20c1:24d4
        pop cx                                  ; 20c1:24d5
        pop ax                                  ; 20c1:24d6
        ret                                     ; 20c1:24d7

sub_20c1_24d8:
        push ax                                 ; 20c1:24d8
        push cx                                 ; 20c1:24d9
        push dx                                 ; 20c1:24da
        mov dx,bx                               ; 20c1:24db
        mov cx,ax                               ; 20c1:24dd
        add dx,0x103                            ; 20c1:24df
        mov al,0x44                             ; 20c1:24e3
        out dx,al                               ; 20c1:24e5
        add dx,byte +0x2                        ; 20c1:24e6
        mov al,ch                               ; 20c1:24e9
        out dx,al                               ; 20c1:24eb
        sub dx,byte +0x2                        ; 20c1:24ec
        mov al,0x43                             ; 20c1:24ef
        out dx,al                               ; 20c1:24f1
        add dx,byte +0x2                        ; 20c1:24f2
        mov al,cl                               ; 20c1:24f5
        out dx,al                               ; 20c1:24f7
        pop dx                                  ; 20c1:24f8
        pop cx                                  ; 20c1:24f9
        pop ax                                  ; 20c1:24fa
        ret                                     ; 20c1:24fb

sub_20c1_24fc:
        push dx                                 ; 20c1:24fc
        mov dx,bx                               ; 20c1:24fd
        add dx,0x107                            ; 20c1:24ff
        in al,dx                                ; 20c1:2503
        pop dx                                  ; 20c1:2504
        ret                                     ; 20c1:2505

sub_20c1_2506:
        push dx                                 ; 20c1:2506
        mov dx,bx                               ; 20c1:2507
        add dx,0x107                            ; 20c1:2509
        out dx,al                               ; 20c1:250d
        pop dx                                  ; 20c1:250e
        ret                                     ; 20c1:250f

sub_20c1_2510:
        push ax                                 ; 20c1:2510
        push cx                                 ; 20c1:2511
        push dx                                 ; 20c1:2512
        mov dx,bx                               ; 20c1:2513
        add dx,0x107                            ; 20c1:2515
        mov cx,0x46                             ; 20c1:2519

l_20c1_251c:
        in al,dx                                ; 20c1:251c
        loop l_20c1_251c                        ; 20c1:251d
        pop dx                                  ; 20c1:251f
        pop cx                                  ; 20c1:2520
        pop ax                                  ; 20c1:2521
        ret                                     ; 20c1:2522
        incbin "data/d_23133.bin"   ; 0xe00d bytes of data at 20c1:2523
