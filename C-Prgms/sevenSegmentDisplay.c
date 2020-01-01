//Working 7segment P0.16 to P0.23 connected to 7 segments(a to h) and P0.28 to P0.31 connected four 7 segment devices ( in order select any device logic ‘1’ should be sent on respective
#include <lpc21xx.h>
void delay(void);
unsigned char i;
unsigned int Disp[16]={
                0x003F0000, 0x00060000, 0x005B0000,
                0x004F0000,0x00660000,0x006D0000,
                0x007D0000, 0x00070000, 0x007F0000,
                0x006F0000,0x00770000,0x007C0000,
                0x00390000, 0x005E0000, 0x00790000,
                0x00710000};

int main()
{
    IODIR0=0xf0ff0000; // making po.16 to p0.23 and p0.28 p0.31 output lines
    IOSET0=0xf0000000;
    IOCLR0=0x00ff0000;
        
    while(1)
    {
        for(i=0;i<10;i++)
        {
        IOSET0=Disp[i];
            for(i=0;i<7;i++)
            {
                delay();
            }
        IOCLR0=0x00ff0000;
        }
    }
}

void delay(void)
{
    unsigned long int j;
    for(j=0;j<65000;j++);
}
