//Working Stepper Motor..... A=P0.0, B=P0.1, C=P0.3, D=P0.4

#include <lpc21xx.h>
void delay(unsigned int);

int main()
{
    PINSEL0=0X00000000;
    IODIR0=0XF0000000; //SET DIRECTION OF PIN FROM P0.0 TO P0.4 AS O/P
    
    while(1)
    {
        IOSET0=0X10000000; // clockwise

        delay(10);

        IOSET0=0X20000000;

        delay(10);

        IOSET0=0X40000000;

        delay(10);

        IOSET0=0X80000000;

        delay(10);
        delay(1000);
        
        IOCLR0 = 0XFFFF0000;
        delay(10);
        
        IOSET0=0X80000000;// Anticlockwise
        delay(10);
        
        IOSET0=0X40000000;
        delay(10);
        
        IOSET0=0X20000000;
        delay(10);
        
        IOSET0=0X10000000;
        delay(10);
    }
}

    void delay(unsigned int x)
    {
        unsigned int temp;
        for(temp=0;temp<x;temp++);
    }


