#include "hc_define.h"
#include "key.h"
#include "variable.h"
#include "function.h"
#include "Led.h"

WORD  longpress_cnt = 0;
BYTE clink_event = 0;
BYTE long_f = 0;
BYTE holdOn_f = 0;
void ScanKey(void)
{	

	if(PORT_KEY_1 == 0 || PORT_KEY_2 == 0 || PORT_KEY_3 == 1 )
	{
		
		if(longpress_cnt < 0xffff) {
			longpress_cnt++;

			SleepCount = 0;
		}
		
		if(longpress_cnt < 80){


			if(PORT_KEY_1 == 0) {

				clink_event = 1;  

			} else if(PORT_KEY_2 == 0) {

				clink_event = 2; 

			} else if(PORT_KEY_3 == 1) {

				clink_event = 3; 

			}


		}

		if(longpress_cnt >= 100){

			clink_event = 0;
		
			if(PORT_KEY_3 == 1){
				long_f = 1;

				if(g_ucTimerWorkCount <  0xff) {
						g_ucTimerWorkCount++;
				}
				PowOn();
			}
		
		}

	}else{


		longpress_cnt = 0;
		
		if(clink_event == 1){

			clink_event = 0;
			

			MotoSwitch();
		} else if(clink_event == 2){
			clink_event = 0;
			
			
			LedSwitch();
			
		} else if(clink_event == 3){

			clink_event = 0;
			
			PowOn();
			g_ucTimerWorkCount++;  //10ms
			holdOn_f = 1;

			
		}


		if(holdOn_f) {

			if(g_ucTimerWorkCount <  60) {
				g_ucTimerWorkCount++;
			} else {
				holdOn_f = 0;
				g_ucTimerWorkCount = 0;
				PowOff();
			}


		}



		if(long_f){
			
			if(g_ucTimerWorkCount <  60) {

				g_ucTimerWorkCount++;

			} else {

				long_f = 0;
				g_ucTimerWorkCount = 0;
				PowOff();
			}
		}





	}

}







