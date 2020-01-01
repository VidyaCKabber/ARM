area addTwoNo_64Bit, code
 entry
 ldr r0,=0x40000000
 ldr r4,=0x40000020
 ldr r1,[r0]
 ldr r2,[r0,#4]
 adds r3,r1,r2
 str r3,[r4],#4
 ldr r5,[r0,#4]
 ldr r6,[r0,#4]
 adc r7,r6,r5
 str r7,[r4]
stop b stop  
 end
