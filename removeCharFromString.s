area charRemoveInString,code
CR EQU 0x0D
 entry
 ldr r9,= 0x40000000
 ldr r6,= 0x40000020
 ldr r0,= data
 ldr r10,= data
 ldr r1,= remChar
 ldrb r7,[r1]
 mov r4,#00
 
first ldrb r5,[r0],#1
 cmp r5,#CR
 strb r5,[r9],#1
 BNE first
 BEQ up

up ldrb r5,[r10],#1
 cmp r5,#CR
 BNE remove
 BEQ endPrgm
 
remove cmp r5,r7
 BNE putchar
 cmp r5,#CR
 BNE up
 
putchar
 strb r5,[r6],#1
 cmp r5,#CR
 BNE up
 
endPrgm
stop b stop

data dcb "Vijay",CR
remChar dcb "a",CR
 end
