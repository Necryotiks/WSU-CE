/*
 * P1.S
 *
 *  Created on: Aug 20, 2018
 *      Author: Elliott Villars
 */


.text
.global main

.set MYLED_BASEADDR, 0x4BB00000
.set MY_SW_BTNS_BASEADDR, 0x4BB02000
.set MY_SSD, 0X4BB03000

main:
    /* First two lines are known as Pseudo Instructions (loading a constant value) */
    LDR r0, =MYLED_BASEADDR @ Load MYLED enable baseaddress into r0
    LDR r1, =MY_SW_BTNS_BASEADDR @ Load Switches and Buttons baseaddress into r1
    LDR r4, =MY_SSD @Loads Seven-segment display
enable_LEDs:
	MOV r5, #0x01 @enables SSD
	//MOV r5, #0x11 @enables SSD(Custom Mode)
	STR r5, [r4]
    MOV r2, #0x0F @ Let r2 = 0x0F
    STR r2, [r0] @ Store r2 in mem32[r0]  (enable all LEDs)
always_loop:
    LDR r3, [r1] @ Load the values of switches (mem32[r1]) to r3
    LDR r6, [r1, #0x04] @loads the values of buttons
    @MVN r3,r3 @Switch activates LED's on 0;
    @STR r3, [r0, #0x4] @ Store the values in r3 to mem32[r0+0x4] (the LEDs)
    //MOV r3, #70
    //STR r3, [r4, #0x10] @ Store the values in r3 to mem32[r4+0x10] (the SSDs rightmost digit)
	//LSR r3,r3, #0x04 @
	//STR r3,[r4, #0x0C]
    @STR r6, [r4, #0x10] @ Store the values in r3 to mem32[r4+0x10] (the SSDs rightmost digit)

    //Challenge 1.1
    check:
    ADD r3,r3,r6 //Read values from switches and buttons
    CMP r3,#0x0F //If greater than 15 set overflow bit.
	BGT overflow
	STR r3, [r4, #0x10]
	MOV r7, #0x00
	STR r7,[r4, #0x0C] //disable overflow
	b always_loop
	overflow:
	SUB r3,r3, #0x0F
	STR r3, [r4, #0x10]
	MOV r3, #0x01
	STR r3, [r4, #0x0C] //enable overflow

	//Challenge 1.2
	//Custom mode allows direct controlling of cathodes.
	//Common anode SSDs are active low.
	//MOV r3, #70 //C-1000110
    //STR r3, [r4, #0x04]
    //MOV r3, #64 //O-1000000
    //STR r3, [r4, #0x08]
    //MOV r3, #65 //U-1000001
    //STR r3, [r4, #0x0C]
    //MOV r3, #2  //G-0000010
    //STR r3, [r4, #0x10]

	//Lab1
    //MOV r3, #1
    //STR r3, [r4, #0x04]
    //MOV r3, #2
    //STR r3, [r4, #0x08]
    //MOV r3, #3
    //STR r3, [r4, #0x0C]
    //MOV r3, #4
    //STR r3, [r4, #0x10]
    b always_loop @ Branch back to always_loop:
.end
