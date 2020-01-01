area concateString,code
CR EQU 0x0D
 entry
 ldr r0,=data
 ldr r1,=data1
 ldr r5,=0x40000000
 mov r4,#00
 
up ldrb r2,[r0],#1
 strb r2,[r5],#1
 cmp r2,#CR
 BNE up
 ;BEQ down
 
down ldrb r2,[r1],#1
 strb r2,[r5],#1
 cmp r2,#CR
 BNE down
 
stop b stop
data dcb "Vidya",CR
data1 dcb "K",CR
 end
