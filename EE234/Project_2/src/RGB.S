/*
 * RGB.S
 *
 *  Created on: Sep 15, 2018
 *      Author: Necryotiks
 */


.text
.global main

.set RGB_ADDR, 0x4BB01000
.set LED_ADDR,0x4BB00000
main:
LDR r12,=RGB_ADDR
LDR r0, =LED_ADDR
loop:
BL clear_leds
BL enable_rgb
B loop

clear_leds:
MOV r1,#0x0
STR r1, [r0] //Reset LEDs
BX LR
enable_rgb:
MOV r6, #0x0F //01111
STR r6, [r12]
MOV r6, #0x07
STR r6, [r12,#0x04] //rgb0, white
MOV r6, #0x01
STR r6, [r12,#0x08] //rgb1, red
MOV r6, #0x02
STR r6, [r12,#0x0C] //rgb2, green
MOV r6, #0x04
STR r6, [r12,#0x10] //rgb3, blue
BX LR
