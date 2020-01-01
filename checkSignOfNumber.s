area checkSign ,code
 entry
 ldr r0,= myNumbers
 ldr r1,[r0]
 cmp r1,#00
 bgt positive
 
negative
 mov r3,#01
 b prgmEnd
 
positive
 mov r3,#02
 b prgmEnd
 
prgmEnd
stop b stop
myNumbers dcd 1
 end
