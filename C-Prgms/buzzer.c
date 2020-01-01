//buzzer connected to p0.9
#include <lpc21xx.h>;
void delay(void);

int main(){
    IODIR0 = 0x00000200;
    IOCLR0 = 0x00000200;
    
    while(1){
        IOSET0 = 0x00000200;
        delay();
        IOCLR0 = 0x00000200;
        delay();
    }
}

void delay(){
    int i;
    for(i=0;i<5000;i++);
}
