assume cs:code, ds:data, ss:stack

; ---------------------------
; DATA SEGMENT
; ---------------------------

data segment
    
    line1 db '  oooOOOOOO"', '$'                            ; ASCII Art Line 1
    line2 db ' o   ____       :::::::: _|--|_', '$'         ; ASCII Art Line 2
    line3 db ' Y_,_|[]| --+++ |[][][]| | [] |', '$'         ; ASCII Art Line 3
    line4 db '{|_|_|__|;|___|;|______|;|____|;', '$'        ; ASCII Art Line 4
    line5 db ' /oo--OO   o o   oo  oo   o  o', '$'          ; ASCII Art Line 5

    ; line6 db '+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+', '$'
    
    linegateclose db '----CLOSE----- $'                      ; Gate closed message
    linegateopen db '----OPEN----- $'                        ; Gate open message
    signal_red db '----RED---- $'                            ; Red signal
    signal_green db '----GREEN---- $'                        ; Green signal
    signal_Yellow db '----YELLOW---- $'                      ; Yellow signal
    train_signal db '-Train Signal- $'                       ; Train signal
    vehicle_signal db '-Vehicle Signal- $'                   ; Vehicle signal
   
   
    ; India's fastest train (as of 2025) is Vande Bharat Express
    ; In 5 minutes, Vande Bharat Express covers approximately 13.35 kilometers.
    
data ends

; ---------------------------
; STACK SEGMENT
; ---------------------------

stack segment
    dw 128 dup(0)                                            ; Reserve 128 words (256 bytes) for stack
stack ends

; ---------------------------
; CODE SEGMENT
; ---------------------------

code segment
    
start:

    ; Clear screen using BIOS interrupt 10h, function 06h
    mov ah, 06h  
    mov al, 0             ; Number of lines to scroll (0 = clear entire area)
    mov bh, 07h           ; Text attribute (gray on black)
    mov cx, 0000h         ; Top-left corner (row 0, col 0)
    mov dx, 184fh         ; Bottom-right corner (row 24, col 79)
    int 10h

f1:
    mov bl,80             ; Initial horizontal (column) position for train
    mov bh,0              ; Unused here
    mov si,bx             ; Copy BL to SI for loop counter

li:
    ; Initialize Data Segment
    mov ax, data
    mov ds, ax
    mov es, ax

    ; Set cursor position for first gate message
    mov ah, 02h
    mov dl, 18
    mov dh, 16
    int 10h

    ; Display '----CLOSE-----' at (16,18)
    mov ah, 09h
    mov dx, offset linegateclose
    int 21h

    ; Display second gate message at (5,18)
    mov ah, 02h
    mov dl,18
    mov dh,5
    int 10h

    mov ah, 09h
    mov dx, offset linegateclose
    int 21h

    ; Display Vehicle signal at (2,18)
    mov ah, 02h
    mov dl,5
    mov dh,2
    int 10h

    mov ah, 09h
    mov dx, offset vehicle_signal
    int 21h

    ; Display RED signal at (3,18)
    mov ah, 02h
    mov dl,5
    mov dh,3
    int 10h

    mov ah, 09h
    mov dx, offset signal_red
    int 21h

    ; Display Train signal at (2,45)
    mov ah, 02h
    mov dl,45
    mov dh,2
    int 10h

    mov ah, 09h
    mov dx, offset train_signal
    int 21h

    ; Display GREEN signal at (3,45)
    mov ah, 02h
    mov dl,45
    mov dh,3
    int 10h

    mov ah, 09h
    mov dx, offset signal_green
    int 21h

    
    
    ; Display train lines starting from (8,BL)
    mov ah, 02h
    mov dl,bl
    mov dh, 8
    int 10h

    mov ah, 09h
    mov dx, offset line1
    int 21h

    mov ah, 02h
    mov dl,bl
    mov dh, 9
    int 10h

    mov ah, 09h
    mov dx, offset line2
    int 21h

    mov ah, 02h
    mov dl,bl
    mov dh, 10
    int 10h

    mov ah, 09h
    mov dx, offset line3
    int 21h

    jmp f1_no             ; Jump to draw line4

f1_between:
    jmp f1                ; If train has reached starting point, restart

f1_no:
    ; Draw train line 4
    mov ah, 02h
    mov dl,bl
    mov dh, 11
    int 10h

    mov ah, 09h
    mov dx, offset line4
    int 21h

    jmp li_no

li_between:
    jmp li                ; Loop continues

li_no:
    ; Draw final train line
    mov ah, 02h
    mov dl,bl
    mov dh, 12
    int 10h

    mov ah, 09h
    mov dx, offset line5
    int 21h

    
    cmp si,47             ; If train has reached column 47, stop
    je stop

not_stop:
    ; Clear the previous train position using BIOS interrupt 10h
    ; Clear the previous train graphics
    mov ah, 06h
    mov al, 0
    mov bh, 07h
    mov cx, 0800h         ; Top-left (row 8, col 0)
    mov dx, 127Fh         ; Bottom-right (row 12, col 79)
    int 10h

    ; Update train position by decrementing
    mov bx,si
    dec bl
    mov si,bx 
    
    cmp bl,0              ; If BL == 0, reset to f1
    jz f1_between

    jmp li_between        ; Otherwise, continue looping

stop: 
    ; Open gate and display red signal when train reaches destination

    ; Show 'OPEN' gate message at (16,18)
    mov ah, 02h
    mov dl, 18
    mov dh, 16
    int 10h

    mov ah, 09h
    mov dx, offset linegateopen
    int 21h
    
    ; Show 'OPEN' gate message at (5,18)
    mov ah, 02h
    mov dl,18
    mov dh,5
    int 10h

    mov ah, 09h
    mov dx, offset linegateopen
    int 21h


    ; Display Vehicle signal at (2,18)
    mov ah, 02h
    mov dl,5
    mov dh,2
    int 10h

    mov ah, 09h
    mov dx, offset vehicle_signal
    int 21h

    ; Display Green signal at (3,18)
    mov ah, 02h
    mov dl,5
    mov dh,3
    int 10h

    mov ah, 09h
    mov dx, offset signal_green
    int 21h


    ; Show RED signal at (3,45)
    mov ah, 02h
    mov dl,45
    mov dh,3
    int 10h

    mov ah, 09h
    mov dx, offset signal_red
    int 21h

    ; BELL SOUND HERE 🔔
    mov ax,0
    mov dx,0
    mov ah, 02h
    mov dl, 07h
    int 21h
                      
    ; Wait for a key press to restart animation
    mov ah,01
    int 21h

    cmp al, 'q'           ; Check if the key is 'q'
    je exit_program

    jmp not_stop          ; Repeat the cycle

exit_program:

    ; Clear screen using BIOS interrupt 10h, function 06h
    mov ah, 06h  
    mov al, 0             ; Number of lines to scroll (0 = clear entire area)
    mov bh, 07h           ; Text attribute (gray on black)
    mov cx, 0000h         ; Top-left corner (row 0, col 0)
    mov dx, 184fh         ; Bottom-right corner (row 24, col 79)
    int 10h

    mov ax, 4C00h         
    int 21h
code ends

end start
