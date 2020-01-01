//Blink alternative ports

#include <lpc21xx.h>
void delay(void);
int main(){
	
	IODIR0 = 0x00ff0000;
	IOCLR0 = 0x00ff0000;
	
	while(1){
		IOSET0 = 0x0550000;
		delay();
		IOCLR0 = 0x0550000;
		delay();
		IOSET0 = 0x0AA0000;
		delay();
		IOCLR0 = 0x0AA0000;
		delay();
	}
}

void delay(){
	int i;
	for(i=0;i<50000;i++);
}
