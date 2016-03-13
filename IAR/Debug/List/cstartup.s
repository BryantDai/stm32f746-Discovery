///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      28/Feb/2016  14:41:26
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\BSP\IAR\cstartup.c
//    Command line =  
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\BSP\IAR\cstartup.c" -D
//        USE_HAL_DRIVER -D STM32F746xx -D NDEBUG -lb
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\Debug\List" -o
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\Debug\Obj" --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M7 -e
//        --fpu=VFPv5_sp --dlib_config "D:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 7.3\arm\INC\c\DLib_Config_Full.h" -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\User\" -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\BSP\" -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\BSP\led\" -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\BSP\button\" -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\BSP\CMSIS\" -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\BSP\IAR\" -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\CMSIS\Device\ST\STM32F7xx\Include\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\STM32F7xx_HAL_Driver\Inc\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\STM32F7xx_HAL_Driver\Inc\Legacy\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\STM32F7xx_HAL_Driver\Src\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\uCOS-III\uC-CPU\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\uCOS-III\uC-CPU\ARM-Cortex-M7\IAR\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\uCOS-III\uC-LIB\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\uCOS-III\uC-LIB\Ports\ARM-Cortex-M7\IAR\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\uCOS-III\uCOS-III\Source\"
//        -I
//        "E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\..\uCOS-III\uCOS-III\Ports\ARM-Cortex-M7\Generic\IAR\"
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.3\arm\CMSIS\Include\"
//    List file    =  
//        E:\Bryant\STM32F746(uCOS-III-BUTTON)\Code\IAR\Debug\List\cstartup.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        SECTION CSTACK:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN BSP_IntHandlerADC
        EXTERN BSP_IntHandlerCAN1_RX0
        EXTERN BSP_IntHandlerCAN1_RX1
        EXTERN BSP_IntHandlerCAN1_SCE
        EXTERN BSP_IntHandlerCAN1_TX
        EXTERN BSP_IntHandlerCAN2_RX0
        EXTERN BSP_IntHandlerCAN2_RX1
        EXTERN BSP_IntHandlerCAN2_SCE
        EXTERN BSP_IntHandlerCAN2_TX
        EXTERN BSP_IntHandlerCRYP
        EXTERN BSP_IntHandlerDCMI
        EXTERN BSP_IntHandlerDMA1_CH0
        EXTERN BSP_IntHandlerDMA1_CH1
        EXTERN BSP_IntHandlerDMA1_CH2
        EXTERN BSP_IntHandlerDMA1_CH3
        EXTERN BSP_IntHandlerDMA1_CH4
        EXTERN BSP_IntHandlerDMA1_CH5
        EXTERN BSP_IntHandlerDMA1_CH6
        EXTERN BSP_IntHandlerDMA1_STREAM7
        EXTERN BSP_IntHandlerDMA2D
        EXTERN BSP_IntHandlerDMA2_CH0
        EXTERN BSP_IntHandlerDMA2_CH1
        EXTERN BSP_IntHandlerDMA2_CH2
        EXTERN BSP_IntHandlerDMA2_CH3
        EXTERN BSP_IntHandlerDMA2_CH4
        EXTERN BSP_IntHandlerDMA2_CH5
        EXTERN BSP_IntHandlerDMA2_CH6
        EXTERN BSP_IntHandlerDMA2_CH7
        EXTERN BSP_IntHandlerETH
        EXTERN BSP_IntHandlerETHWakeup
        EXTERN BSP_IntHandlerEXTI0
        EXTERN BSP_IntHandlerEXTI1
        EXTERN BSP_IntHandlerEXTI15_10
        EXTERN BSP_IntHandlerEXTI2
        EXTERN BSP_IntHandlerEXTI3
        EXTERN BSP_IntHandlerEXTI4
        EXTERN BSP_IntHandlerEXTI9_5
        EXTERN BSP_IntHandlerFLASH
        EXTERN BSP_IntHandlerFPU
        EXTERN BSP_IntHandlerFSMC
        EXTERN BSP_IntHandlerHASH_RNG
        EXTERN BSP_IntHandlerI2C1_ER
        EXTERN BSP_IntHandlerI2C1_EV
        EXTERN BSP_IntHandlerI2C2_ER
        EXTERN BSP_IntHandlerI2C2_EV
        EXTERN BSP_IntHandlerI2C3_ER
        EXTERN BSP_IntHandlerI2C3_EV
        EXTERN BSP_IntHandlerI2C4_ER
        EXTERN BSP_IntHandlerLCD_TFT
        EXTERN BSP_IntHandlerLCD_TFT_ERR
        EXTERN BSP_IntHandlerLP_TIMER1
        EXTERN BSP_IntHandlerOTG_FS
        EXTERN BSP_IntHandlerOTG_FS_WKUP
        EXTERN BSP_IntHandlerOTG_HS
        EXTERN BSP_IntHandlerOTG_HS_EP1_IN
        EXTERN BSP_IntHandlerOTG_HS_EP1_OUT
        EXTERN BSP_IntHandlerOTG_HS_WKUP
        EXTERN BSP_IntHandlerPVD
        EXTERN BSP_IntHandlerQUAD_SPI
        EXTERN BSP_IntHandlerRCC
        EXTERN BSP_IntHandlerRTCAlarm
        EXTERN BSP_IntHandlerRTC_WKUP
        EXTERN BSP_IntHandlerSAI1
        EXTERN BSP_IntHandlerSAI2
        EXTERN BSP_IntHandlerSDMMC1
        EXTERN BSP_IntHandlerSPDIFRX
        EXTERN BSP_IntHandlerSPI1
        EXTERN BSP_IntHandlerSPI2
        EXTERN BSP_IntHandlerSPI3
        EXTERN BSP_IntHandlerSPI4
        EXTERN BSP_IntHandlerSPI5
        EXTERN BSP_IntHandlerSPI6
        EXTERN BSP_IntHandlerTAMP_STAMP
        EXTERN BSP_IntHandlerTIM1_BRK_TIM9
        EXTERN BSP_IntHandlerTIM1_CC
        EXTERN BSP_IntHandlerTIM1_TRG_COM_TIM11
        EXTERN BSP_IntHandlerTIM1_UP_TIM10
        EXTERN BSP_IntHandlerTIM2
        EXTERN BSP_IntHandlerTIM3
        EXTERN BSP_IntHandlerTIM4
        EXTERN BSP_IntHandlerTIM5
        EXTERN BSP_IntHandlerTIM6_DAC
        EXTERN BSP_IntHandlerTIM7
        EXTERN BSP_IntHandlerTIM8_BRK_TIM12
        EXTERN BSP_IntHandlerTIM8_CC
        EXTERN BSP_IntHandlerTIM8_TRG_COM_TIM14
        EXTERN BSP_IntHandlerTIM8_UP_TIM13
        EXTERN BSP_IntHandlerUART7
        EXTERN BSP_IntHandlerUART8
        EXTERN BSP_IntHandlerUSART1
        EXTERN BSP_IntHandlerUSART2
        EXTERN BSP_IntHandlerUSART3
        EXTERN BSP_IntHandlerUSART4
        EXTERN BSP_IntHandlerUSART5
        EXTERN BSP_IntHandlerUSART6
        EXTERN BSP_IntHandlerWWDG
        EXTERN OS_CPU_PendSVHandler
        EXTERN OS_CPU_SysTickHandler
        EXTERN SystemInit
        EXTERN __iar_program_start

        PUBLIC __vector_table


        SECTION `.intvec`:CONST:REORDER:ROOT(2)
        DATA
__vector_table:
        DC32 SFE(CSTACK), App_Reset_ISR, App_NMI_ISR, App_Fault_ISR
        DC32 App_MemFault_ISR, App_BusFault_ISR, App_UsageFault_ISR
        DC32 App_Spurious_ISR, App_Spurious_ISR, App_Spurious_ISR
        DC32 App_Spurious_ISR, App_Spurious_ISR, App_Spurious_ISR
        DC32 App_Spurious_ISR, OS_CPU_PendSVHandler, OS_CPU_SysTickHandler
        DC32 BSP_IntHandlerWWDG, BSP_IntHandlerPVD, BSP_IntHandlerTAMP_STAMP
        DC32 BSP_IntHandlerRTC_WKUP, BSP_IntHandlerFLASH, BSP_IntHandlerRCC
        DC32 BSP_IntHandlerEXTI0, BSP_IntHandlerEXTI1, BSP_IntHandlerEXTI2
        DC32 BSP_IntHandlerEXTI3, BSP_IntHandlerEXTI4, BSP_IntHandlerDMA1_CH0
        DC32 BSP_IntHandlerDMA1_CH1, BSP_IntHandlerDMA1_CH2
        DC32 BSP_IntHandlerDMA1_CH3, BSP_IntHandlerDMA1_CH4
        DC32 BSP_IntHandlerDMA1_CH5, BSP_IntHandlerDMA1_CH6, BSP_IntHandlerADC
        DC32 BSP_IntHandlerCAN1_TX, BSP_IntHandlerCAN1_RX0
        DC32 BSP_IntHandlerCAN1_RX1, BSP_IntHandlerCAN1_SCE
        DC32 BSP_IntHandlerEXTI9_5, BSP_IntHandlerTIM1_BRK_TIM9
        DC32 BSP_IntHandlerTIM1_UP_TIM10, BSP_IntHandlerTIM1_TRG_COM_TIM11
        DC32 BSP_IntHandlerTIM1_CC, BSP_IntHandlerTIM2, BSP_IntHandlerTIM3
        DC32 BSP_IntHandlerTIM4, BSP_IntHandlerI2C1_EV, BSP_IntHandlerI2C1_ER
        DC32 BSP_IntHandlerI2C2_EV, BSP_IntHandlerI2C2_ER, BSP_IntHandlerSPI1
        DC32 BSP_IntHandlerSPI2, BSP_IntHandlerUSART1, BSP_IntHandlerUSART2
        DC32 BSP_IntHandlerUSART3, BSP_IntHandlerEXTI15_10
        DC32 BSP_IntHandlerRTCAlarm, BSP_IntHandlerOTG_FS_WKUP
        DC32 BSP_IntHandlerTIM8_BRK_TIM12, BSP_IntHandlerTIM8_UP_TIM13
        DC32 BSP_IntHandlerTIM8_TRG_COM_TIM14, BSP_IntHandlerTIM8_CC
        DC32 BSP_IntHandlerDMA1_STREAM7, BSP_IntHandlerFSMC
        DC32 BSP_IntHandlerSDMMC1, BSP_IntHandlerTIM5, BSP_IntHandlerSPI3
        DC32 BSP_IntHandlerUSART4, BSP_IntHandlerUSART5, BSP_IntHandlerTIM6_DAC
        DC32 BSP_IntHandlerTIM7, BSP_IntHandlerDMA2_CH0, BSP_IntHandlerDMA2_CH1
        DC32 BSP_IntHandlerDMA2_CH2, BSP_IntHandlerDMA2_CH3
        DC32 BSP_IntHandlerDMA2_CH4, BSP_IntHandlerETH, BSP_IntHandlerETHWakeup
        DC32 BSP_IntHandlerCAN2_TX, BSP_IntHandlerCAN2_RX0
        DC32 BSP_IntHandlerCAN2_RX1, BSP_IntHandlerCAN2_SCE
        DC32 BSP_IntHandlerOTG_FS, BSP_IntHandlerDMA2_CH5
        DC32 BSP_IntHandlerDMA2_CH6, BSP_IntHandlerDMA2_CH7
        DC32 BSP_IntHandlerUSART6, BSP_IntHandlerI2C3_EV, BSP_IntHandlerI2C3_ER
        DC32 BSP_IntHandlerOTG_HS_EP1_OUT, BSP_IntHandlerOTG_HS_EP1_IN
        DC32 BSP_IntHandlerOTG_HS_WKUP, BSP_IntHandlerOTG_HS
        DC32 BSP_IntHandlerDCMI, BSP_IntHandlerCRYP, BSP_IntHandlerHASH_RNG
        DC32 BSP_IntHandlerFPU, BSP_IntHandlerUART7, BSP_IntHandlerUART8
        DC32 BSP_IntHandlerSPI4, BSP_IntHandlerSPI5, BSP_IntHandlerSPI6
        DC32 BSP_IntHandlerSAI1, BSP_IntHandlerLCD_TFT
        DC32 BSP_IntHandlerLCD_TFT_ERR, BSP_IntHandlerDMA2D, BSP_IntHandlerSAI2
        DC32 BSP_IntHandlerQUAD_SPI, BSP_IntHandlerLP_TIMER1
        DC32 BSP_IntHandlerI2C4_ER, BSP_IntHandlerSPDIFRX

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
App_Reset_ISR:
        PUSH     {R7,LR}
        BL       SystemInit
        MOVS     R0,#+15728640
        LDR.N    R1,??DataTable0  ;; 0xe000ed88
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable0_1  ;; 0xe000ef34
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1        ;; ZeroExtS R0,R0,#+1,#+1
        LSRS     R0,R0,#+1
        LDR.N    R1,??DataTable0_1  ;; 0xe000ef34
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable0_1  ;; 0xe000ef34
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000000
        LDR.N    R1,??DataTable0_1  ;; 0xe000ef34
        STR      R0,[R1, #+0]
        BL       __iar_program_start
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0xe000ed88

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0xe000ef34

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
App_NMI_ISR:
??App_NMI_ISR_0:
        B.N      ??App_NMI_ISR_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
App_Fault_ISR:
??App_Fault_ISR_0:
        B.N      ??App_Fault_ISR_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
App_BusFault_ISR:
??App_BusFault_ISR_0:
        B.N      ??App_BusFault_ISR_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
App_UsageFault_ISR:
??App_UsageFault_ISR_0:
        B.N      ??App_UsageFault_ISR_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
App_MemFault_ISR:
??App_MemFault_ISR_0:
        B.N      ??App_MemFault_ISR_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
App_Spurious_ISR:
??App_Spurious_ISR_0:
        B.N      ??App_Spurious_ISR_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION CSTACK:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 448 bytes in section .intvec
//  64 bytes in section .text
// 
//  64 bytes of CODE  memory
// 448 bytes of CONST memory
//
//Errors: none
//Warnings: none
