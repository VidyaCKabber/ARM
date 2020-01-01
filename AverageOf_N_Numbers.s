area avg_N, code
 entry
 ldr r0,= data
 ldr r1,[r0],#4
 mov r3,#04
 mov r4,#04
 mov r5,#0
 sub r3,r3,#1
 
loop ldr r2,[r0],#4
 add r1,r1,r2
 sub r3,r3,#1
 cmp r3,#0
 BNE loop
 
avg
 subs r1, r1, r4
 addge r5, r5, #1
 bge avg
 add r7, r1, r4

stop b stop
data dcd &5,&5,&5,&3
 end
