area addNegPosNumberSeparately ,code
 entry
 ldr r0,= myNumbers
 mov r4,#05         ;total number
 mov r3,#00         ;initial sum of positive numbers=0
 mov r5,#00         ;initial sum of negative numbers=0
 
test ldr r1,[r0],#4
 cmp r1,#00
 bgt positive
 sub r5,r5,r1    ; sum of negative numbers Note : Answer stored in positive number only ex : for -11 , r5= B and negative flag set in the cpsr register
 subs r4,r4,#1
 bne test
 beq prgmEnd
 
positive
 add r3,r3,r1  ;sum of positive numbers
 subs r4,r4,#1
 bne test
 beq prgmEnd
 

prgmEnd
stop b stop

myNumbers dcd 1,-5,4,-1,-8
end
