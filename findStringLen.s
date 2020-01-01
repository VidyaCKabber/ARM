area stringLen, code
CR EQU 0x0D    
 entry
 ldr r0,= data
 mov r1,#00

up ldrb r2,[r0],#1
 cmp r2,#CR
 add r1,r1,#1
 BNE up
 sub r1,r1,#1
 
stop b stop
data dcb "VidyaC",CR
 end
