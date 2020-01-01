area avg_double, code
 entry
 ldr r0,=data
 ldr r1,[r0],#4
 ldr r2,[r0]
 adds r3,r1,r2
 mov r4,r3, ASR #1 //avg
 mov r5,r3, ASL #1 //double the number
stop b stop
data dcd &4,&2
 end
