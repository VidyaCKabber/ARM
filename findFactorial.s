area findFactorial ,code
 entry
 ldr r7,= 0x40000000
 ldr r0,[r7]
 mov r1,#01 ; fact
 
up mul r3,r1,r0
 mov r1,r3
 subs r0,r0,#1
 BNE up
stop b stop
 end
