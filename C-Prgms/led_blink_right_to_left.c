#include<lpc21xx.h>
void delay(unsigned int);
void right_to_left(void);

int main()
	{
		PINSEL0 = 0X00000000;
		IODIR0 = 0X00FF0000;	 //Config P0.16 -P0.19 as output

		while(1){

			IOCLR0  = 0X00FF0000; 
			delay(10000000);

			right_to_left();
		}
	}

	void delay(unsigned int j){
		unsigned int i;
		for(i=0; i<j; i++);
	}
	
	void right_to_left(void){
	
			IOSET0  = 0X00010000; 
			delay(1000000);

			IOSET0  = 0X00030000; 
			delay(1000000);

		    IOSET0  = 0X00070000; 
			delay(1000000);
			
			IOSET0  = 0X000F0000; 
			delay(1000000);
			
			IOSET0  = 0X001F0000; 
			delay(1000000);

			IOSET0  = 0X003F0000; 
			delay(1000000);
			
			IOSET0  = 0X007F0000; 
			delay(1000000);

			IOSET0  = 0X00FF0000; 
			delay(10000000);
	
	}
