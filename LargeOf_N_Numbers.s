 area LargeOf_N_Numbers, code
 entry
 
 ldr r0, = data
 ldr r4, = 0x40000000 ; store output in this memory location
 ldr r1, = 0x05  ;N=5
 ldr r2,[r0],#4
 sub r1,r1,#1
 
loop ldr r3,[r0],#4
 cmp r2,r3
 bgt large
 mov r2,r3

large
 sub r1,r1,#1
 cmp r1,#0
 BNE loop
 str r2,[r4]
 
stop b stop
data dcd &6,&56,&86,&9,&18
 end
