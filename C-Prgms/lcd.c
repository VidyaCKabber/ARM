//Working lcd D0 TO D7= P0.0 TO P0.7 ,RS=P0.8, RW=P0.9 , EN=P0.10

#include <lpc21xx.h>

void cmdfun(unsigned int);
void datafun(unsigned int);
void delay(unsigned int);

int main(){
    unsigned int c[] = {0x38,0x06,0x0e,0x80};
    unsigned char msg[] = {"KLETECH"};
    unsigned int i,j;
    
    PINSEL0 = 0x00000000;
    IODIR0 = 0x00000007FF; // set direction of pin from p0.0 to pin p0.10 as o/p
    
    for(i=0;i<4;i++){
        cmdfun(c[i]);
        delay(10000);
    }
    
    while(1){
        cmdfun(0x80);
        delay(1000);
        
        for(j=0;j<7;j++){
            datafun(msg[j]);
            delay(1000);
        }
        
        delay(1000);
        delay(1000);
        
        cmdfun(0x01);
        
        delay(1000);
        delay(1000);
    }
}


void cmdfun(unsigned int value){
    unsigned int y;
    y = value;
    IOCLR0 = 0x00000300;//RW=0, RS=0
    IOSET0 = y;
    IOSET0 = 0x00000400;//EN=1
    delay(10);
    IOCLR0 = 0x00000400;//EN=0
}

void datafun(unsigned int value)
{
    unsigned int y;
    y=value;
    IOCLR0=0x00000200; //RW=0
    IOSET0=0x00000100;// RS=1
    IOSET0=y;
    IOSET0=0x00000400; //EN=1
    delay(10);
    IOCLR0=0x00000400; //EN=0
}

void delay(unsigned int x)
{
    unsigned int temp;
    for(temp=0;temp<x;temp++);
}
