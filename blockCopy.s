area blockCopy, code
 entry
 ldr r0,= 0x40000000
 ldr r1,= 0x40000020
 mov r4,#5
 
up ldr r3,[r0],#4
 str r3,[r1],#4
 subs r4,r4,#1
 BNE up
 
stop b stop
 end
