
/* FreeRTOS kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

#include <stdbool.h>

/* Freescale includes. */
#include "fsl_device_registers.h"
#include "fsl_debug_console.h"
#include "board.h"

#include "com_wrap.h"
#include "com_task.h"
#include "clock_config.h"


//flags to check if there's data to send
//cdh receives these data and sends the data to radio which to
bool command_request = false;
bool payload_check = false;
bool image_check = false;
bool beacon_check = false;

extern TaskHandle_t TaskHandler_img;

void com_task(void *pvParameters)
{
	extern bool g_comActive;
	// variables to use with imag task

	// variable to store ticks equivalent to 500 ms
	const TickType_t xDelayms = pdMS_TO_TICKS( 500 );
	PRINTF("\ninitialize comm.\r\n");

	int count = 0;

	for (;;) {

		TickType_t xLastWakeTime = xTaskGetTickCount();
		PRINTF("\ncomm work.\r\n");

		if(g_comActive == true){
//			com_getCommands();
		}
		count++;
		PRINTF("count = %d\n", count);
		if (count >= 5){ //later: receive a command to take a pic
			vTaskResume(TaskHandler_img);
			count = 0;
			PRINTF("resuming img task\r\n");
		}

//
//		if(g_comActive == true){
//			//checking if getting a command request
//			if (command_request){
//				//sending data based on priority
//				if (payload_check) {
//					com_sendPayloads();
//				} else if (image_check) {
//					com_sendImages();
//				} else if(xTaskGetTickCount() - xLastWakeTime >= 60*1000){ //check if 60 secs have passed
//					com_sendBeacons();
//				}
//			}
//
//		}
//		else{
//
//		}



		vTaskDelayUntil(&xLastWakeTime, xDelayms);

	}
}
