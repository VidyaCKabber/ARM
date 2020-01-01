//port 16 to 23
#include <lpc21xx.h>
void delay(void);
int main(){
    
    IODIR0 = 0x00ff0000;
    IOCLR0 = 0x00ff0000;
    
    while(1){
        IOSET0 = 0x0ff0000;
        delay();
        IOCLR0 = 0x0ff0000;
        delay();
    }
}

void delay(){
    int i;
    for(i=0;i<50000;i++);
}
