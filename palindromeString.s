area palindrome,code
CR EQU 0x0D
 entry
 ldr r0,=data
 ldr r2,=0x40000000
 ldr r6,=0x40000000
 ldr r3,=0x40000020
 mov r4,#00
 mov r1,#00
 mov r8,#00
 
up ldrb r5,[r0],#1
 cmp r5,#CR
 strb r5,[r2],#1
 add r4,r4,#1
 BNE up
 sub r4,r4,#1
 mov r4,r4,ASR #1
 sub r2,r2,#2
 BEQ down

down ldrb r5,[r2]
 strb r5,[r3],#1
 ldrb r7,[r6]
 strb r7,[r3],#1
 cmp r5,r7
 BNE check
 add r8,r8,#1
 sub r2,r2,#1
 add r6,r6,#1
 cmp r8,r4
 BNE down
 ;BEQ pal
 
pal
 mov r1,#01
 b Prgm

check
 mov r1,#00
 b Prgm

Prgm
stop b stop
    
data dcb "VidiV",CR
 end
