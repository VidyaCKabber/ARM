area sumOfSquareOfNumbers ,code
 entry
 
 mov r0,#03   ;total numbers
 mov r2,#00   ; sum=00
 
up mul r3,r0,r0
 add r2,r2,r3
 subs r0,r0,#1
 BNE up
 
stop b stop
 end
