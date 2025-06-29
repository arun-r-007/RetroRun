section .data
pixel_data db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 03h, 00h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 03h, 00h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 03h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 04h, 03h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 04h, 03h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 04h, 03h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 04h, 03h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 04h, 03h, 00h, 00h, 00h, 00h, 03h, 04h, 04h, 04h, 04h, 03h, 00h, 00h ; Pixel representation


section .text
; Assembly code to display in graphics mode
mov ah, 0x0C  ; Set graphics mode
int 10h
; Loop through pixel_data and draw pixels here...
