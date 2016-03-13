/************************************************************************************************************************
 * Filename           : app.c
 * Description        : Configure the port connect with all the LEDs
 * Experiment platform: Stm32f746-discovery-board
 * Cpu                : Stm32f746NGH
 * Library Version    : ST 1.0
 * Author             : Bryant
 * Create Date        : Jan/12/2016
*************************************************************************************************************************/
/* Includes ------------------------------------------------------------------------------------------------------------*/
#include  <stdarg.h>
#include  <stdio.h>
#include  <math.h>
#include  <stm32f7xx_hal.h>

#include  <cpu.h>
#include  <lib_math.h>
#include  <lib_mem.h>
#include  <os.h>
#include  <os_app_hooks.h>

#include  <app_cfg.h>
#include  <bsp.h>
#include "bsp_led.h"
#include "bsp_button.h"

/* Private typedef -----------------------------------------------------------------------------------------------------*/
/* Private define ------------------------------------------------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------------------------------------------------*/
/* Start task tcb and stack                                                                                             */
static OS_TCB   AppTaskStartTCB;
static CPU_STK  AppTaskStartStk[APP_CFG_TASK_START_STK_SIZE];   

/* Led task tcb and stack                                                                                               */
static OS_TCB   g_ledTaskTCB;
static CPU_STK  g_ledTaskStk[APP_CFG_TASK_LED_STK_SIZE];

/* Button task tcb and stack                                                                                            */
static OS_TCB   g_buttonTaskTCB;
static CPU_STK  g_buttonTaskStk[APP_CFG_TASK_BUTTON_STK_SIZE];

static OS_TCB   g_buttonScanTaskTCB;
static CPU_STK  g_buttonScanTaskStk[APP_CFG_TASK_BUTTON_SCAN_STK_SIZE];


/* Private function prototypes -----------------------------------------------------------------------------------------*/

static void app_LedTask(void *p_arg);
static void app_ButtonTask(void *p_arg);
static void app_TaskStart (void  *p_arg);
static void app_ButtonScanTask(void *p_arg);


/* Private functions ---------------------------------------------------------------------------------------------------*/


/************************************************************************************************************************
 * Function Name   : main
 * Description     : This is the standard entry point for C code.  It is assumed that your code will call
 *                   main() once you have performed all necessary initialization.
 * Input Variable  : None
 * Return Variable : None
 * Author          : Bryant
 * Create Date     : Jan/12/2016
 * Call            : Outside
*************************************************************************************************************************/
int main(void)
{
    OS_ERR   err;
#if (CPU_CFG_NAME_EN == DEF_ENABLED)
    CPU_ERR  cpu_err;
#endif

    HAL_Init();                                                 /* See Note 1.                                          */

    Mem_Init();                                                 /* Initialize Memory Managment Module                   */
    Math_Init();                                                /* Initialize Mathematical Module                       */

#if (CPU_CFG_NAME_EN == DEF_ENABLED)
    CPU_NameSet((CPU_CHAR *)"STM32F746xx",
                (CPU_ERR  *)&cpu_err);
#endif

    BSP_IntDisAll();                                            /* Disable all Interrupts.                              */

    OSInit(&err);                                               /* Init uC/OS-III.                                      */
    App_OS_SetAllHooks();

    /* Create the start task                                                                                            */                
    OSTaskCreate((OS_TCB       *)&AppTaskStartTCB,             
                 (CPU_CHAR     *)"App Task Start",
                 (OS_TASK_PTR   )app_TaskStart, 
                 (void         *)0,
                 (OS_PRIO       )APP_CFG_TASK_START_PRIO,
                 (CPU_STK      *)&AppTaskStartStk[0],
                 (CPU_STK_SIZE  )APP_CFG_TASK_START_STK_SIZE / 10,
                 (CPU_STK_SIZE  )APP_CFG_TASK_START_STK_SIZE,
                 (OS_MSG_QTY    )0,
                 (OS_TICK       )0,
                 (void         *)0,
                 (OS_OPT        )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR),
                 (OS_ERR       *)&err);
    OSStart(&err);                                              /* Start multitasking (i.e. give control to uC/OS-III). */

    while (DEF_ON) {                                            /* Should Never Get Here.                               */
        ;
    }
}


/***********************************************************************************************************************
 * Function Name   : app_TaskStart
 * Description     : start all the application task
 * Input Variable  : *p_arg : Task parameter
 * Return Variable : None
 * Author          : Bryant
 * Create Date     : Jun-20-2015
 * Priority        : 2 
 * Call            : Outside
*************************************************************************************************************************/
static void app_TaskStart (void *p_arg)
{
    OS_ERR      err;

   (void)p_arg;

    bsp_Init();                                                 /* Initialize BSP functions                             */
    CPU_Init();                                                 /* Initialize the uC/CPU services                       */

#if OS_CFG_STAT_TASK_EN > 0u
    OSStatTaskCPUUsageInit(&err);                               /* Compute CPU capacity with no task running            */
#endif

#ifdef CPU_CFG_INT_DIS_MEAS_EN
    CPU_IntDisMeasMaxCurReset();
#endif

    OSTaskCreate((OS_TCB     *)&g_buttonTaskTCB,                           \
                 (CPU_CHAR   *)"Button Task",                              \
                 (OS_TASK_PTR )app_ButtonTask,                             \
                 (void       *)0,                                          \
                 (OS_PRIO     )APP_CFG_TASK_BUTTON_PRIO,                   \
                 (CPU_STK    *)&g_buttonTaskStk[0],                        \
                 (CPU_STK_SIZE)APP_CFG_TASK_BUTTON_STK_SIZE/10,            \
                 (CPU_STK_SIZE)APP_CFG_TASK_BUTTON_STK_SIZE,               \
                 (OS_MSG_QTY  )1,                                          \
                 (OS_TICK     )0,                                          \
                 (void       *)0,                                          \
                 (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR),\
                 (OS_ERR     *)&err);

    OSTaskCreate((OS_TCB     *)&g_buttonScanTaskTCB,                       \
                 (CPU_CHAR   *)"Button Scan Task",                         \
                 (OS_TASK_PTR )app_ButtonScanTask,                         \
                 (void       *)0,                                          \
                 (OS_PRIO     )APP_CFG_TASK_BUTTON_SCAN_PRIO,              \
                 (CPU_STK    *)&g_buttonScanTaskStk[0],                    \
                 (CPU_STK_SIZE)APP_CFG_TASK_BUTTON_SCAN_STK_SIZE/10,       \
                 (CPU_STK_SIZE)APP_CFG_TASK_BUTTON_SCAN_STK_SIZE,          \
                 (OS_MSG_QTY  )1,                                          \
                 (OS_TICK     )0,                                          \
                 (void       *)0,                                          \
                 (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR),\
                 (OS_ERR     *)&err);
        
    

    /* After finish creating the task, delete itself                                                                    */
    OSTaskDel((OS_TCB *)&AppTaskStartTCB,(OS_ERR *)&err);
}



/************************************************************************************************************************
 * Function Name   : app_LedTask
 * Description     : Create a LED blink task
 * Input Variable  : *p_arg : Task parameter
 * Return Variable : None
 * Author          : Bryant
 * Create Date     : Jan-12-2016
 * Priority        : 4
 * Call            : Inside
*************************************************************************************************************************/
static void app_LedTask(void *p_arg)
{
    OS_ERR err;
   
    (void)p_arg;
    while(DEF_ON)
    {
        bsp_LedToggle(LED_GREEN);
        
        OSTimeDlyHMSM(0u, 0u, 0u, 500u,
                      OS_OPT_TIME_HMSM_STRICT,
                      &err);
    }
}



/************************************************************************************************************************
 * Function Name   : app_ButtonScanTask
 * Description     : Scan the button to check if there is events occur in the button
 * Input Variable  : *p_arg : Task parameter
 * Return Variable : None
 * Author          : Bryant
 * Create Date     : Jan-12-2016
 * Priority        : 3
 * Call            : Inside
*************************************************************************************************************************/
static void app_ButtonScanTask(void *p_arg)
{
    OS_ERR err;
    static BUTTON_EventTypeDef buttonEvent;
    
    (void)p_arg;

    while(DEF_ON)
    {
        buttonEvent = bsp_ButtonScan(1);
        if (buttonEvent != BUTTON_NONE_CLICK)
        {
            OSTaskQPost((OS_TCB *)&g_buttonTaskTCB,(void *)&buttonEvent,(OS_MSG_SIZE) 1,(OS_OPT)OS_OPT_POST_FIFO,(OS_ERR *)&err);
        }
        
        /*Scan all the keys at each 20ms(At this 20ms must release CPU to other task)                                   */
        OSTimeDlyHMSM(0u,0u,0u,20u,OS_OPT_TIME_HMSM_STRICT,(OS_ERR *)&err);
    }
}


/************************************************************************************************************************
 * Function Name   : app_ButtonTask
 * Description     : Create a task to check if a event has occured in a specific button
 * Input Variable  : *p_arg : Task parameter
 * Return Variable : None
 * Author          : Bryant
 * Create Date     : Jan-12-2016
 * Priority        : 5
 * Call            : Inside
*************************************************************************************************************************/
static void app_ButtonTask(void *p_arg)
{
    CPU_INT08U   err;
    OS_MSG_SIZE msgSize;
    void        *p_msg;
    
    
    (void)p_arg;

    while(DEF_ON)
    {
       p_msg = OSTaskQPend((OS_TICK)0u,(OS_OPT)OS_OPT_PEND_BLOCKING,(OS_MSG_SIZE *)&msgSize,(CPU_TS *)NULL,(OS_ERR *)&err);

        /*Indicate that a mbox message received                                   */
        if (err == OS_ERR_NONE)
        {
            switch (*(BUTTON_EventTypeDef *)p_msg)
            {
                case BUTTON_SINGLE_CLICK : 
                case BUTTON_DOUBLE_CLICK :   
                     OSTaskCreate((OS_TCB     *)&g_ledTaskTCB,                              \
                                  (CPU_CHAR   *)"LED Task",                                 \
                                  (OS_TASK_PTR )app_LedTask,                                \
                                  (void       *)0,                                          \
                                  (OS_PRIO     )APP_CFG_TASK_LED_PRIO,                      \
                                  (CPU_STK    *)&g_ledTaskStk[0],                           \
                                  (CPU_STK_SIZE)APP_CFG_TASK_LED_STK_SIZE/10,               \
                                  (CPU_STK_SIZE)APP_CFG_TASK_LED_STK_SIZE,                  \
                                  (OS_MSG_QTY  )1,                                          \
                                  (OS_TICK     )0,                                          \
                                  (void       *)0,                                          \
                                  (OS_OPT      )(OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR),\
                                  (OS_ERR     *)&err);

       
                     

                     break;
                case BUTTON_LONG_CLICK : 
                    
                     OSTaskDel((OS_TCB *)&g_ledTaskTCB,(OS_ERR *)&err);
                     
                     break;
            }
        }
        *(CPU_INT08U *)p_msg = BUTTON_NONE_CLICK;
    }
}








/*************************************************END OF FILE***************************************************/

