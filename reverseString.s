area reverseString,code
CR EQU 0x0D
 entry
 ldr r0,=data
 ldr r2,=0x40000000
 ldr r3,=0x40000020
 mov r4,#00
 
up ldrb r5,[r0],#1
 cmp r5,#CR
 strb r5,[r2],#1
 add r4,r4,#1
 BNE up
 sub r4,r4,#1
 sub r2,r2,#2 ;r2 = r2-2
 BNE down
 
down ldrb r6,[r2]
 strb r6,[r3],#1
 sub r2,r2,#1
 subs r4,r4,#1
 BNE down

 
stop b stop
data dcb "Hubli",CR
 end
