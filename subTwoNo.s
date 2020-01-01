area subTwoNo, code
 entry
 ldr r0,=0x40000000
 ldr r4,=0x00000050
 ldr r1,[r0]
 ldr r2,[r0,#2]
 sub r3,r1,r2
 str r3,[r4]
stop b stop  
 end
