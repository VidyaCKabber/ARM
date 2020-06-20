#include<lpc21xx.h>
void delay(unsigned int);
void left_to_right(void);

int main()
	{
		PINSEL0 = 0X00000000;
		IODIR0 = 0X00FF0000;	 //Config P0.16 -P0.19 as output

		while(1){ 

		  IOCLR0  = 0X00FF0000; 
			delay(10000000);

			left_to_right();
		}
	}

	void delay(unsigned int j){
		unsigned int i;
		for(i=0; i<j; i++);
	}

	void left_to_right(void){
	
			IOSET0  = 0X00800000; 
			delay(1000000);

			IOSET0  = 0X00C00000; 
			delay(1000000);

		    IOSET0  = 0X00E00000; 
			delay(1000000);
			
			IOSET0  = 0X00F00000; 
			delay(1000000);
			
			IOSET0  = 0X00F80000; 
			delay(1000000);

			IOSET0  = 0X00FC0000; 
			delay(1000000);
			
			IOSET0  = 0X00FE0000; 
			delay(1000000);

			IOSET0  = 0X00FF0000; 
			delay(10000000);
	
	}



