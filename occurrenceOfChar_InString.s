area occurrenceOfChar, code
CR EQU 0x0D    
 entry
 ldr r0,= data
 ldr r3,= data1
 ldrb r5,[r3] 
 mov r1,#00
 mov r6,#12 ; string length
 mov r7,#00
 
up ldrb r2,[r0],#1
 cmp r2,r5
 add r7,r7,#1
 BNE up
 ;BEQ down

down add r1,r1,#1 
 cmp r7,r6
 BNE up
 
stop b stop
data dcb "himalaya",CR
data1 dcb "a",CR
 end
