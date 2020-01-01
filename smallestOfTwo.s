area smallestOfTwo, code
 entry
 
 ldr r0,=0x40000020   ;Input the values
 ldr r3,=0x40000000   ;Store the smallest number in the memory location pointed by r3

 ldr r2,[r0],#4
 ldr r5,[r0]
 cmp r2,r5
 bls small
 mov r2,r5
 
small str r2,[r3]
stop b stop
