area charReplaceInString,code
CR EQU 0x0D
 entry
 ldr r9,= 0x40000000
 ldr r6,= 0x40000020
 ldr r0,= data
 ldr r10,= data
 ldr r1,= relChar
 ldr r3,= changeTo
 ldrb r8,[r3]
 ldrb r7,[r1]
 mov r4,#00
 
first ldrb r5,[r0],#1
 cmp r5,#CR
 strb r5,[r9],#1
 BNE first
 BEQ up

up ldrb r5,[r10],#1
 cmp r5,#CR
 BNE charReplace
 BEQ endPrgm
 
charReplace cmp r5,r7
 BEQ putChar
 strb r5,[r6],#1
 cmp r5,#CR
 BNE up
 
putChar
 strb r8,[r6],#1
 cmp r5,#CR
 BNE up
 
endPrgm
stop b stop

data dcb "Engineering",CR
relChar dcb "n",CR
changeTo dcb "A",CR
 End
