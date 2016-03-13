///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      28/Dec/2015  21:59:50
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Bryant\STM32F746-IAR\Code\STM32F7xx_HAL_Driver\Src\stm32f7xx_hal_irda.c
//    Command line =  
//        E:\Bryant\STM32F746-IAR\Code\STM32F7xx_HAL_Driver\Src\stm32f7xx_hal_irda.c
//        -D USE_HAL_DRIVER -D STM32F746xx -D NDEBUG -lb
//        E:\Bryant\STM32F746-IAR\Code\IAR\Debug\List -o
//        E:\Bryant\STM32F746-IAR\Code\IAR\Debug\Obj --no_cse --no_unroll
//        --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M7 -e
//        --fpu=VFPv5_sp --dlib_config "D:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 7.3\arm\INC\c\DLib_Config_Full.h" -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\User\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\BSP\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\BSP\led\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\BSP\CMSIS\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\BSP\IAR\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\CMSIS\Device\ST\STM32F7xx\Include\
//        -I E:\Bryant\STM32F746-IAR\Code\IAR\..\STM32F7xx_HAL_Driver\Inc\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\STM32F7xx_HAL_Driver\Inc\Legacy\
//        -I E:\Bryant\STM32F746-IAR\Code\IAR\..\STM32F7xx_HAL_Driver\Src\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\uCOS-III\uC-CPU\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\uCOS-III\uC-CPU\ARM-Cortex-M7\IAR\
//        -I E:\Bryant\STM32F746-IAR\Code\IAR\..\uCOS-III\uC-LIB\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\uCOS-III\uC-LIB\Ports\ARM-Cortex-M7\IAR\
//        -I E:\Bryant\STM32F746-IAR\Code\IAR\..\uCOS-III\uCOS-III\Source\ -I
//        E:\Bryant\STM32F746-IAR\Code\IAR\..\uCOS-III\uCOS-III\Ports\ARM-Cortex-M7\Generic\IAR\
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.3\arm\CMSIS\Include\"
//    List file    =  
//        E:\Bryant\STM32F746-IAR\Code\IAR\Debug\List\stm32f7xx_hal_irda.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN HAL_DMA_Abort
        EXTERN HAL_DMA_Start_IT
        EXTERN HAL_GetTick
        EXTERN HAL_RCC_GetPCLK1Freq
        EXTERN HAL_RCC_GetPCLK2Freq
        EXTERN HAL_RCC_GetSysClockFreq

        PUBLIC HAL_IRDA_DMAPause
        PUBLIC HAL_IRDA_DMAResume
        PUBLIC HAL_IRDA_DMAStop
        PUBLIC HAL_IRDA_DeInit
        PUBWEAK HAL_IRDA_ErrorCallback
        PUBLIC HAL_IRDA_GetError
        PUBLIC HAL_IRDA_GetState
        PUBLIC HAL_IRDA_IRQHandler
        PUBLIC HAL_IRDA_Init
        PUBWEAK HAL_IRDA_MspDeInit
        PUBWEAK HAL_IRDA_MspInit
        PUBLIC HAL_IRDA_Receive
        PUBLIC HAL_IRDA_Receive_DMA
        PUBLIC HAL_IRDA_Receive_IT
        PUBWEAK HAL_IRDA_RxCpltCallback
        PUBWEAK HAL_IRDA_RxHalfCpltCallback
        PUBLIC HAL_IRDA_Transmit
        PUBLIC HAL_IRDA_Transmit_DMA
        PUBLIC HAL_IRDA_Transmit_IT
        PUBWEAK HAL_IRDA_TxCpltCallback
        PUBWEAK HAL_IRDA_TxHalfCpltCallback


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BNE.N    ??HAL_IRDA_Init_0
        MOVS     R0,#+1
        B.N      ??HAL_IRDA_Init_1
??HAL_IRDA_Init_0:
        LDRB     R0,[R4, #+53]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Init_2
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,R4
        BL       HAL_IRDA_MspInit
??HAL_IRDA_Init_2:
        MOVS     R0,#+2
        STRB     R0,[R4, #+53]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        MOVS     R0,R4
        BL       IRDA_SetConfig
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        BICS     R0,R0,#0x7800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x28
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x2
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        MOVS     R0,R4
        BL       IRDA_CheckIdleState
??HAL_IRDA_Init_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BNE.N    ??HAL_IRDA_DeInit_0
        MOVS     R0,#+1
        B.N      ??HAL_IRDA_DeInit_1
??HAL_IRDA_DeInit_0:
        MOVS     R0,#+2
        STRB     R0,[R4, #+53]
        MOVS     R0,R4
        BL       HAL_IRDA_MspDeInit
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
        MOVS     R0,#+0
        STRB     R0,[R4, #+53]
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,#+0
??HAL_IRDA_DeInit_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_MspInit:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_MspDeInit:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_Transmit:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDRB     R0,[R4, #+53]
        CMP      R0,#+1
        BEQ.N    ??HAL_IRDA_Transmit_0
        LDRB     R0,[R4, #+53]
        CMP      R0,#+34
        BNE.N    ??HAL_IRDA_Transmit_1
??HAL_IRDA_Transmit_0:
        CMP      R5,#+0
        BEQ.N    ??HAL_IRDA_Transmit_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BNE.N    ??HAL_IRDA_Transmit_3
??HAL_IRDA_Transmit_2:
        MOVS     R0,#+1
        B.N      ??HAL_IRDA_Transmit_4
??HAL_IRDA_Transmit_3:
        LDRB     R0,[R4, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_IRDA_Transmit_5
        MOVS     R0,#+2
        B.N      ??HAL_IRDA_Transmit_4
??HAL_IRDA_Transmit_5:
        MOVS     R0,#+1
        STRB     R0,[R4, #+52]
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
        LDRB     R0,[R4, #+53]
        CMP      R0,#+34
        BNE.N    ??HAL_IRDA_Transmit_6
        MOVS     R0,#+50
        STRB     R0,[R4, #+53]
        B.N      ??HAL_IRDA_Transmit_7
??HAL_IRDA_Transmit_6:
        MOVS     R0,#+18
        STRB     R0,[R4, #+53]
??HAL_IRDA_Transmit_7:
        STRH     R6,[R4, #+28]
        STRH     R6,[R4, #+30]
??HAL_IRDA_Transmit_8:
        LDRH     R0,[R4, #+30]
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_Transmit_9
        LDRH     R0,[R4, #+30]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+30]
        MOVS     R3,R7
        MOVS     R2,#+0
        MOVS     R1,#+128
        MOVS     R0,R4
        BL       IRDA_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_Transmit_10
        MOVS     R0,#+3
        B.N      ??HAL_IRDA_Transmit_4
??HAL_IRDA_Transmit_10:
        LDR      R0,[R4, #+8]
        CMP      R0,#+4096
        BNE.N    ??HAL_IRDA_Transmit_11
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Transmit_11
        MOV      R8,R5
        LDRH     R0,[R8, #+0]
        LSLS     R0,R0,#+23       ;; ZeroExtS R0,R0,#+23,#+23
        LSRS     R0,R0,#+23
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+40]
        ADDS     R5,R5,#+2
        B.N      ??HAL_IRDA_Transmit_8
??HAL_IRDA_Transmit_11:
        LDRB     R0,[R5, #+0]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+40]
        ADDS     R5,R5,#+1
        B.N      ??HAL_IRDA_Transmit_8
??HAL_IRDA_Transmit_9:
        MOVS     R3,R7
        MOVS     R2,#+0
        MOVS     R1,#+64
        MOVS     R0,R4
        BL       IRDA_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_Transmit_12
        MOVS     R0,#+3
        B.N      ??HAL_IRDA_Transmit_4
??HAL_IRDA_Transmit_12:
        LDRB     R0,[R4, #+53]
        CMP      R0,#+50
        BNE.N    ??HAL_IRDA_Transmit_13
        MOVS     R0,#+34
        STRB     R0,[R4, #+53]
        B.N      ??HAL_IRDA_Transmit_14
??HAL_IRDA_Transmit_13:
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??HAL_IRDA_Transmit_14:
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,#+0
        B.N      ??HAL_IRDA_Transmit_4
??HAL_IRDA_Transmit_1:
        MOVS     R0,#+2
??HAL_IRDA_Transmit_4:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_Receive:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDRB     R0,[R4, #+53]
        CMP      R0,#+1
        BEQ.N    ??HAL_IRDA_Receive_0
        LDRB     R0,[R4, #+53]
        CMP      R0,#+18
        BNE.N    ??HAL_IRDA_Receive_1
??HAL_IRDA_Receive_0:
        CMP      R5,#+0
        BEQ.N    ??HAL_IRDA_Receive_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BNE.N    ??HAL_IRDA_Receive_3
??HAL_IRDA_Receive_2:
        MOVS     R0,#+1
        B.N      ??HAL_IRDA_Receive_4
??HAL_IRDA_Receive_3:
        LDRB     R0,[R4, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_IRDA_Receive_5
        MOVS     R0,#+2
        B.N      ??HAL_IRDA_Receive_4
??HAL_IRDA_Receive_5:
        MOVS     R0,#+1
        STRB     R0,[R4, #+52]
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
        LDRB     R0,[R4, #+53]
        CMP      R0,#+18
        BNE.N    ??HAL_IRDA_Receive_6
        MOVS     R0,#+50
        STRB     R0,[R4, #+53]
        B.N      ??HAL_IRDA_Receive_7
??HAL_IRDA_Receive_6:
        MOVS     R0,#+34
        STRB     R0,[R4, #+53]
??HAL_IRDA_Receive_7:
        STRH     R6,[R4, #+36]
        STRH     R6,[R4, #+38]
        LDR      R0,[R4, #+8]
        CMP      R0,#+4096
        BNE.N    ??HAL_IRDA_Receive_8
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_9
        MOVW     R0,#+511
        STRH     R0,[R4, #+40]
        B.N      ??HAL_IRDA_Receive_10
??HAL_IRDA_Receive_9:
        MOVS     R0,#+255
        STRH     R0,[R4, #+40]
        B.N      ??HAL_IRDA_Receive_10
??HAL_IRDA_Receive_8:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_11
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_12
        MOVS     R0,#+255
        STRH     R0,[R4, #+40]
        B.N      ??HAL_IRDA_Receive_10
??HAL_IRDA_Receive_12:
        MOVS     R0,#+127
        STRH     R0,[R4, #+40]
        B.N      ??HAL_IRDA_Receive_10
??HAL_IRDA_Receive_11:
        LDR      R0,[R4, #+8]
        CMP      R0,#+268435456
        BNE.N    ??HAL_IRDA_Receive_10
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_13
        MOVS     R0,#+127
        STRH     R0,[R4, #+40]
        B.N      ??HAL_IRDA_Receive_10
??HAL_IRDA_Receive_13:
        MOVS     R0,#+63
        STRH     R0,[R4, #+40]
??HAL_IRDA_Receive_10:
        LDRH     R0,[R4, #+40]
        MOV      R9,R0
??HAL_IRDA_Receive_14:
        LDRH     R0,[R4, #+38]
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_Receive_15
        LDRH     R0,[R4, #+38]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+38]
        MOVS     R3,R7
        MOVS     R2,#+0
        MOVS     R1,#+32
        MOVS     R0,R4
        BL       IRDA_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_Receive_16
        MOVS     R0,#+3
        B.N      ??HAL_IRDA_Receive_4
??HAL_IRDA_Receive_16:
        LDR      R0,[R4, #+8]
        CMP      R0,#+4096
        BNE.N    ??HAL_IRDA_Receive_17
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_17
        MOV      R8,R5
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+36]
        ANDS     R0,R9,R0
        STRH     R0,[R8, #+0]
        ADDS     R5,R5,#+2
        B.N      ??HAL_IRDA_Receive_14
??HAL_IRDA_Receive_17:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+36]
        ANDS     R0,R9,R0
        STRB     R0,[R5, #+0]
        ADDS     R5,R5,#+1
        B.N      ??HAL_IRDA_Receive_14
??HAL_IRDA_Receive_15:
        LDRB     R0,[R4, #+53]
        CMP      R0,#+50
        BNE.N    ??HAL_IRDA_Receive_18
        MOVS     R0,#+18
        STRB     R0,[R4, #+53]
        B.N      ??HAL_IRDA_Receive_19
??HAL_IRDA_Receive_18:
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??HAL_IRDA_Receive_19:
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,#+0
        B.N      ??HAL_IRDA_Receive_4
??HAL_IRDA_Receive_1:
        MOVS     R0,#+2
??HAL_IRDA_Receive_4:
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_Transmit_IT:
        PUSH     {R4}
        MOVS     R3,R0
        LDRB     R0,[R3, #+53]
        CMP      R0,#+1
        BEQ.N    ??HAL_IRDA_Transmit_IT_0
        LDRB     R0,[R3, #+53]
        CMP      R0,#+34
        BNE.N    ??HAL_IRDA_Transmit_IT_1
??HAL_IRDA_Transmit_IT_0:
        CMP      R1,#+0
        BEQ.N    ??HAL_IRDA_Transmit_IT_2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_IRDA_Transmit_IT_3
??HAL_IRDA_Transmit_IT_2:
        MOVS     R0,#+1
        B.N      ??HAL_IRDA_Transmit_IT_4
??HAL_IRDA_Transmit_IT_3:
        LDRB     R0,[R3, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_IRDA_Transmit_IT_5
        MOVS     R0,#+2
        B.N      ??HAL_IRDA_Transmit_IT_4
??HAL_IRDA_Transmit_IT_5:
        MOVS     R0,#+1
        STRB     R0,[R3, #+52]
        STR      R1,[R3, #+24]
        STRH     R2,[R3, #+28]
        STRH     R2,[R3, #+30]
        MOVS     R0,#+0
        STR      R0,[R3, #+56]
        LDRB     R0,[R3, #+53]
        CMP      R0,#+34
        BNE.N    ??HAL_IRDA_Transmit_IT_6
        MOVS     R0,#+50
        STRB     R0,[R3, #+53]
        B.N      ??HAL_IRDA_Transmit_IT_7
??HAL_IRDA_Transmit_IT_6:
        MOVS     R0,#+18
        STRB     R0,[R3, #+53]
??HAL_IRDA_Transmit_IT_7:
        LDR      R0,[R3, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x1
        LDR      R4,[R3, #+0]
        STR      R0,[R4, #+8]
        MOVS     R0,#+0
        STRB     R0,[R3, #+52]
        LDR      R0,[R3, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR      R4,[R3, #+0]
        STR      R0,[R4, #+0]
        MOVS     R0,#+0
        B.N      ??HAL_IRDA_Transmit_IT_4
??HAL_IRDA_Transmit_IT_1:
        MOVS     R0,#+2
??HAL_IRDA_Transmit_IT_4:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_Receive_IT:
        PUSH     {R4}
        MOVS     R3,R0
        LDRB     R0,[R3, #+53]
        CMP      R0,#+1
        BEQ.N    ??HAL_IRDA_Receive_IT_0
        LDRB     R0,[R3, #+53]
        CMP      R0,#+18
        BNE.N    ??HAL_IRDA_Receive_IT_1
??HAL_IRDA_Receive_IT_0:
        CMP      R1,#+0
        BEQ.N    ??HAL_IRDA_Receive_IT_2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_IRDA_Receive_IT_3
??HAL_IRDA_Receive_IT_2:
        MOVS     R0,#+1
        B.N      ??HAL_IRDA_Receive_IT_4
??HAL_IRDA_Receive_IT_3:
        LDRB     R0,[R3, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_IRDA_Receive_IT_5
        MOVS     R0,#+2
        B.N      ??HAL_IRDA_Receive_IT_4
??HAL_IRDA_Receive_IT_5:
        MOVS     R0,#+1
        STRB     R0,[R3, #+52]
        STR      R1,[R3, #+32]
        STRH     R2,[R3, #+36]
        STRH     R2,[R3, #+38]
        LDR      R0,[R3, #+8]
        CMP      R0,#+4096
        BNE.N    ??HAL_IRDA_Receive_IT_6
        LDR      R0,[R3, #+12]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_IT_7
        MOVW     R0,#+511
        STRH     R0,[R3, #+40]
        B.N      ??HAL_IRDA_Receive_IT_8
??HAL_IRDA_Receive_IT_7:
        MOVS     R0,#+255
        STRH     R0,[R3, #+40]
        B.N      ??HAL_IRDA_Receive_IT_8
??HAL_IRDA_Receive_IT_6:
        LDR      R0,[R3, #+8]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_IT_9
        LDR      R0,[R3, #+12]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_IT_10
        MOVS     R0,#+255
        STRH     R0,[R3, #+40]
        B.N      ??HAL_IRDA_Receive_IT_8
??HAL_IRDA_Receive_IT_10:
        MOVS     R0,#+127
        STRH     R0,[R3, #+40]
        B.N      ??HAL_IRDA_Receive_IT_8
??HAL_IRDA_Receive_IT_9:
        LDR      R0,[R3, #+8]
        CMP      R0,#+268435456
        BNE.N    ??HAL_IRDA_Receive_IT_8
        LDR      R0,[R3, #+12]
        CMP      R0,#+0
        BNE.N    ??HAL_IRDA_Receive_IT_11
        MOVS     R0,#+127
        STRH     R0,[R3, #+40]
        B.N      ??HAL_IRDA_Receive_IT_8
??HAL_IRDA_Receive_IT_11:
        MOVS     R0,#+63
        STRH     R0,[R3, #+40]
??HAL_IRDA_Receive_IT_8:
        MOVS     R0,#+0
        STR      R0,[R3, #+56]
        LDRB     R0,[R3, #+53]
        CMP      R0,#+18
        BNE.N    ??HAL_IRDA_Receive_IT_12
        MOVS     R0,#+50
        STRB     R0,[R3, #+53]
        B.N      ??HAL_IRDA_Receive_IT_13
??HAL_IRDA_Receive_IT_12:
        MOVS     R0,#+34
        STRB     R0,[R3, #+53]
??HAL_IRDA_Receive_IT_13:
        LDR      R0,[R3, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R4,[R3, #+0]
        STR      R0,[R4, #+0]
        LDR      R0,[R3, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x1
        LDR      R4,[R3, #+0]
        STR      R0,[R4, #+8]
        MOVS     R0,#+0
        STRB     R0,[R3, #+52]
        LDR      R0,[R3, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR      R4,[R3, #+0]
        STR      R0,[R4, #+0]
        MOVS     R0,#+0
        B.N      ??HAL_IRDA_Receive_IT_4
??HAL_IRDA_Receive_IT_1:
        MOVS     R0,#+2
??HAL_IRDA_Receive_IT_4:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_Transmit_DMA:
        PUSH     {R0,R1,R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        LDRB     R0,[R4, #+53]
        CMP      R0,#+1
        BEQ.N    ??HAL_IRDA_Transmit_DMA_0
        LDRB     R0,[R4, #+53]
        CMP      R0,#+34
        BNE.N    ??HAL_IRDA_Transmit_DMA_1
??HAL_IRDA_Transmit_DMA_0:
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_Transmit_DMA_2
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??HAL_IRDA_Transmit_DMA_3
??HAL_IRDA_Transmit_DMA_2:
        MOVS     R0,#+1
        B.N      ??HAL_IRDA_Transmit_DMA_4
??HAL_IRDA_Transmit_DMA_3:
        LDRB     R0,[R4, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_IRDA_Transmit_DMA_5
        MOVS     R0,#+2
        B.N      ??HAL_IRDA_Transmit_DMA_4
??HAL_IRDA_Transmit_DMA_5:
        MOVS     R0,#+1
        STRB     R0,[R4, #+52]
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+24]
        STRH     R5,[R4, #+28]
        STRH     R5,[R4, #+30]
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
        LDRB     R0,[R4, #+53]
        CMP      R0,#+34
        BNE.N    ??HAL_IRDA_Transmit_DMA_6
        MOVS     R0,#+50
        STRB     R0,[R4, #+53]
        B.N      ??HAL_IRDA_Transmit_DMA_7
??HAL_IRDA_Transmit_DMA_6:
        MOVS     R0,#+18
        STRB     R0,[R4, #+53]
??HAL_IRDA_Transmit_DMA_7:
        ADR.W    R0,IRDA_DMATransmitCplt
        LDR      R1,[R4, #+44]
        STR      R0,[R1, #+60]
        ADR.W    R0,IRDA_DMATransmitHalfCplt
        LDR      R1,[R4, #+44]
        STR      R0,[R1, #+64]
        ADR.W    R0,IRDA_DMAError
        LDR      R1,[R4, #+44]
        STR      R0,[R1, #+72]
        ADD      R0,SP,#+4
        MOVS     R6,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R3,R5
        LDR      R0,[R4, #+0]
        ADDS     R2,R0,#+40
        LDR      R1,[R6, #+0]
        LDR      R0,[R4, #+44]
        BL       HAL_DMA_Start_IT
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+32]
        ORRS     R0,R0,#0x40
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+32]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,#+0
        B.N      ??HAL_IRDA_Transmit_DMA_4
??HAL_IRDA_Transmit_DMA_1:
        MOVS     R0,#+2
??HAL_IRDA_Transmit_DMA_4:
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_Receive_DMA:
        PUSH     {R0,R1,R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        LDRB     R0,[R4, #+53]
        CMP      R0,#+1
        BEQ.N    ??HAL_IRDA_Receive_DMA_0
        LDRB     R0,[R4, #+53]
        CMP      R0,#+18
        BNE.N    ??HAL_IRDA_Receive_DMA_1
??HAL_IRDA_Receive_DMA_0:
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_Receive_DMA_2
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??HAL_IRDA_Receive_DMA_3
??HAL_IRDA_Receive_DMA_2:
        MOVS     R0,#+1
        B.N      ??HAL_IRDA_Receive_DMA_4
??HAL_IRDA_Receive_DMA_3:
        LDRB     R0,[R4, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_IRDA_Receive_DMA_5
        MOVS     R0,#+2
        B.N      ??HAL_IRDA_Receive_DMA_4
??HAL_IRDA_Receive_DMA_5:
        MOVS     R0,#+1
        STRB     R0,[R4, #+52]
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+32]
        STRH     R5,[R4, #+36]
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
        LDRB     R0,[R4, #+53]
        CMP      R0,#+18
        BNE.N    ??HAL_IRDA_Receive_DMA_6
        MOVS     R0,#+50
        STRB     R0,[R4, #+53]
        B.N      ??HAL_IRDA_Receive_DMA_7
??HAL_IRDA_Receive_DMA_6:
        MOVS     R0,#+34
        STRB     R0,[R4, #+53]
??HAL_IRDA_Receive_DMA_7:
        ADR.W    R0,IRDA_DMAReceiveCplt
        LDR      R1,[R4, #+48]
        STR      R0,[R1, #+60]
        ADR.W    R0,IRDA_DMAReceiveHalfCplt
        LDR      R1,[R4, #+48]
        STR      R0,[R1, #+64]
        ADR.W    R0,IRDA_DMAError
        LDR      R1,[R4, #+48]
        STR      R0,[R1, #+72]
        ADD      R0,SP,#+4
        MOVS     R6,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R3,R5
        LDR      R2,[R6, #+0]
        LDR      R0,[R4, #+0]
        ADDS     R1,R0,#+36
        LDR      R0,[R4, #+48]
        BL       HAL_DMA_Start_IT
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x40
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,#+0
        B.N      ??HAL_IRDA_Receive_DMA_4
??HAL_IRDA_Receive_DMA_1:
        MOVS     R0,#+2
??HAL_IRDA_Receive_DMA_4:
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_DMAPause:
        MOVS     R1,R0
        LDRB     R0,[R1, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_IRDA_DMAPause_0
        MOVS     R0,#+2
        B.N      ??HAL_IRDA_DMAPause_1
??HAL_IRDA_DMAPause_0:
        MOVS     R0,#+1
        STRB     R0,[R1, #+52]
        LDRB     R0,[R1, #+53]
        CMP      R0,#+18
        BNE.N    ??HAL_IRDA_DMAPause_2
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x80
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+8]
        B.N      ??HAL_IRDA_DMAPause_3
??HAL_IRDA_DMAPause_2:
        LDRB     R0,[R1, #+53]
        CMP      R0,#+34
        BNE.N    ??HAL_IRDA_DMAPause_4
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x40
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+8]
        B.N      ??HAL_IRDA_DMAPause_3
??HAL_IRDA_DMAPause_4:
        LDRB     R0,[R1, #+53]
        CMP      R0,#+50
        BNE.N    ??HAL_IRDA_DMAPause_3
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x80
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+8]
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x40
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+8]
??HAL_IRDA_DMAPause_3:
        MOVS     R0,#+0
        STRB     R0,[R1, #+52]
        MOVS     R0,#+0
??HAL_IRDA_DMAPause_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_DMAResume:
        MOVS     R1,R0
        LDRB     R0,[R1, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_IRDA_DMAResume_0
        MOVS     R0,#+2
        B.N      ??HAL_IRDA_DMAResume_1
??HAL_IRDA_DMAResume_0:
        MOVS     R0,#+1
        STRB     R0,[R1, #+52]
        LDRB     R0,[R1, #+53]
        CMP      R0,#+18
        BNE.N    ??HAL_IRDA_DMAResume_2
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x80
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+8]
        B.N      ??HAL_IRDA_DMAResume_3
??HAL_IRDA_DMAResume_2:
        LDRB     R0,[R1, #+53]
        CMP      R0,#+34
        BNE.N    ??HAL_IRDA_DMAResume_4
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+32]
        ORRS     R0,R0,#0x8
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+32]
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x40
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+8]
        B.N      ??HAL_IRDA_DMAResume_3
??HAL_IRDA_DMAResume_4:
        LDRB     R0,[R1, #+53]
        CMP      R0,#+50
        BNE.N    ??HAL_IRDA_DMAResume_3
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+32]
        ORRS     R0,R0,#0x8
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+32]
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x80
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+8]
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x40
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+8]
??HAL_IRDA_DMAResume_3:
        MOVS     R0,#+0
        STRB     R0,[R1, #+52]
        MOVS     R0,#+0
??HAL_IRDA_DMAResume_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_DMAStop:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x40
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        LDR      R0,[R4, #+44]
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_DMAStop_0
        LDR      R0,[R4, #+44]
        BL       HAL_DMA_Abort
??HAL_IRDA_DMAStop_0:
        LDR      R0,[R4, #+48]
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_DMAStop_1
        LDR      R0,[R4, #+48]
        BL       HAL_DMA_Abort
??HAL_IRDA_DMAStop_1:
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_IRQHandler:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_IRDA_IRQHandler_0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BPL.N    ??HAL_IRDA_IRQHandler_0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+32]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+32]
        LDR      R0,[R4, #+56]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+56]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??HAL_IRDA_IRQHandler_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_IRDA_IRQHandler_1
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_IRDA_IRQHandler_1
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+32]
        ORRS     R0,R0,#0x2
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+32]
        LDR      R0,[R4, #+56]
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+56]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??HAL_IRDA_IRQHandler_1:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_IRDA_IRQHandler_2
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_IRDA_IRQHandler_2
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+32]
        ORRS     R0,R0,#0x4
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+32]
        LDR      R0,[R4, #+56]
        ORRS     R0,R0,#0x2
        STR      R0,[R4, #+56]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??HAL_IRDA_IRQHandler_2:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+28
        BPL.N    ??HAL_IRDA_IRQHandler_3
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_IRDA_IRQHandler_3
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+32]
        ORRS     R0,R0,#0x8
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+32]
        LDR      R0,[R4, #+56]
        ORRS     R0,R0,#0x8
        STR      R0,[R4, #+56]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??HAL_IRDA_IRQHandler_3:
        LDR      R0,[R4, #+56]
        CMP      R0,#+0
        BEQ.N    ??HAL_IRDA_IRQHandler_4
        MOVS     R0,R4
        BL       HAL_IRDA_ErrorCallback
??HAL_IRDA_IRQHandler_4:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+26
        BPL.N    ??HAL_IRDA_IRQHandler_5
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??HAL_IRDA_IRQHandler_5
        MOVS     R0,R4
        BL       IRDA_Receive_IT
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        ORRS     R0,R0,#0x8
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+24]
??HAL_IRDA_IRQHandler_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+24
        BPL.N    ??HAL_IRDA_IRQHandler_6
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??HAL_IRDA_IRQHandler_6
        MOVS     R0,R4
        BL       IRDA_Transmit_IT
??HAL_IRDA_IRQHandler_6:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+25
        BPL.N    ??HAL_IRDA_IRQHandler_7
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??HAL_IRDA_IRQHandler_7
        MOVS     R0,R4
        BL       IRDA_EndTransmit_IT
??HAL_IRDA_IRQHandler_7:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_TxHalfCpltCallback:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_TxCpltCallback:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_RxHalfCpltCallback:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_RxCpltCallback:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_ErrorCallback:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_GetState:
        LDRB     R0,[R0, #+53]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HAL_IRDA_GetError:
        LDR      R0,[R0, #+56]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
IRDA_SetConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        LDR      R0,[R4, #+8]
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDRH     R1,[R4, #+16]
        ORRS     R0,R1,R0
        MOVS     R5,R0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable0  ;; 0xefffe9f3
        ANDS     R0,R1,R0
        ORRS     R0,R5,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x4
        LDRH     R1,[R4, #+20]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        LSRS     R0,R0,#+8
        LSLS     R0,R0,#+8
        LDRB     R1,[R4, #+18]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable0_1  ;; 0x40011000
        CMP      R0,R1
        BNE.N    ??IRDA_SetConfig_0
        LDR.N    R0,??DataTable0_2  ;; 0x40023890
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3
        CMP      R0,#+0
        BEQ.N    ??IRDA_SetConfig_1
        CMP      R0,#+2
        BEQ.N    ??IRDA_SetConfig_2
        BCC.N    ??IRDA_SetConfig_3
        CMP      R0,#+3
        BEQ.N    ??IRDA_SetConfig_4
        B.N      ??IRDA_SetConfig_5
??IRDA_SetConfig_1:
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_2:
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_3:
        MOVS     R0,#+4
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_4:
        MOVS     R0,#+8
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_5:
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_0:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable0_3  ;; 0x40004400
        CMP      R0,R1
        BNE.N    ??IRDA_SetConfig_7
        LDR.N    R0,??DataTable0_2  ;; 0x40023890
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+0
        BEQ.N    ??IRDA_SetConfig_8
        CMP      R0,#+4
        BEQ.N    ??IRDA_SetConfig_9
        CMP      R0,#+8
        BEQ.N    ??IRDA_SetConfig_10
        CMP      R0,#+12
        BEQ.N    ??IRDA_SetConfig_11
        B.N      ??IRDA_SetConfig_12
??IRDA_SetConfig_8:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_10:
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_9:
        MOVS     R0,#+4
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_11:
        MOVS     R0,#+8
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_12:
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_7:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable0_4  ;; 0x40004800
        CMP      R0,R1
        BNE.N    ??IRDA_SetConfig_13
        LDR.N    R0,??DataTable0_2  ;; 0x40023890
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x30
        CMP      R0,#+0
        BEQ.N    ??IRDA_SetConfig_14
        CMP      R0,#+16
        BEQ.N    ??IRDA_SetConfig_15
        CMP      R0,#+32
        BEQ.N    ??IRDA_SetConfig_16
        CMP      R0,#+48
        BEQ.N    ??IRDA_SetConfig_17
        B.N      ??IRDA_SetConfig_18
??IRDA_SetConfig_14:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_16:
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_15:
        MOVS     R0,#+4
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_17:
        MOVS     R0,#+8
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_18:
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_13:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable0_5  ;; 0x40011400
        CMP      R0,R1
        BNE.N    ??IRDA_SetConfig_6
        LDR.N    R0,??DataTable0_2  ;; 0x40023890
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC00
        CMP      R0,#+0
        BEQ.N    ??IRDA_SetConfig_19
        CMP      R0,#+1024
        BEQ.N    ??IRDA_SetConfig_20
        CMP      R0,#+2048
        BEQ.N    ??IRDA_SetConfig_21
        CMP      R0,#+3072
        BEQ.N    ??IRDA_SetConfig_22
        B.N      ??IRDA_SetConfig_23
??IRDA_SetConfig_19:
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_21:
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_20:
        MOVS     R0,#+4
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_22:
        MOVS     R0,#+8
        MOVS     R6,R0
        B.N      ??IRDA_SetConfig_6
??IRDA_SetConfig_23:
??IRDA_SetConfig_6:
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??IRDA_SetConfig_24
        CMP      R0,#+1
        BEQ.N    ??IRDA_SetConfig_25
        CMP      R0,#+2
        BEQ.N    ??IRDA_SetConfig_26
        CMP      R0,#+4
        BEQ.N    ??IRDA_SetConfig_27
        CMP      R0,#+8
        BEQ.N    ??IRDA_SetConfig_28
        B.N      ??IRDA_SetConfig_29
??IRDA_SetConfig_24:
        BL       HAL_RCC_GetPCLK1Freq
        LDR      R1,[R4, #+4]
        UDIV     R0,R0,R1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
        B.N      ??IRDA_SetConfig_30
??IRDA_SetConfig_25:
        BL       HAL_RCC_GetPCLK2Freq
        LDR      R1,[R4, #+4]
        UDIV     R0,R0,R1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
        B.N      ??IRDA_SetConfig_30
??IRDA_SetConfig_26:
        LDR.N    R0,??DataTable0_6  ;; 0xf42400
        LDR      R1,[R4, #+4]
        UDIV     R0,R0,R1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
        B.N      ??IRDA_SetConfig_30
??IRDA_SetConfig_27:
        BL       HAL_RCC_GetSysClockFreq
        LDR      R1,[R4, #+4]
        UDIV     R0,R0,R1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
        B.N      ??IRDA_SetConfig_30
??IRDA_SetConfig_28:
        MOV      R0,#+32768
        LDR      R1,[R4, #+4]
        UDIV     R0,R0,R1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
        B.N      ??IRDA_SetConfig_30
??IRDA_SetConfig_29:
??IRDA_SetConfig_30:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0xefffe9f3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     0x40023890

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     0x40011400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     0xf42400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
IRDA_CheckIdleState:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??IRDA_CheckIdleState_0
        MOV      R3,#+1000
        MOVS     R2,#+0
        MOVS     R1,#+2097152
        MOVS     R0,R4
        BL       IRDA_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??IRDA_CheckIdleState_0
        MOVS     R0,#+3
        STRB     R0,[R4, #+53]
        MOVS     R0,#+3
        B.N      ??IRDA_CheckIdleState_1
??IRDA_CheckIdleState_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??IRDA_CheckIdleState_2
        MOV      R3,#+1000
        MOVS     R2,#+0
        MOVS     R1,#+4194304
        MOVS     R0,R4
        BL       IRDA_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??IRDA_CheckIdleState_2
        MOVS     R0,#+3
        STRB     R0,[R4, #+53]
        MOVS     R0,#+3
        B.N      ??IRDA_CheckIdleState_1
??IRDA_CheckIdleState_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
        MOVS     R0,#+0
??IRDA_CheckIdleState_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
IRDA_WaitOnFlagUntilTimeout:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        BL       HAL_GetTick
        MOV      R8,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??IRDA_WaitOnFlagUntilTimeout_0
??IRDA_WaitOnFlagUntilTimeout_1:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        ANDS     R0,R5,R0
        CMP      R0,R5
        BEQ.N    ??IRDA_WaitOnFlagUntilTimeout_2
        CMN      R7,#+1
        BEQ.N    ??IRDA_WaitOnFlagUntilTimeout_1
        CMP      R7,#+0
        BEQ.N    ??IRDA_WaitOnFlagUntilTimeout_3
        BL       HAL_GetTick
        SUBS     R0,R0,R8
        CMP      R7,R0
        BCS.N    ??IRDA_WaitOnFlagUntilTimeout_1
??IRDA_WaitOnFlagUntilTimeout_3:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,#+3
        B.N      ??IRDA_WaitOnFlagUntilTimeout_4
??IRDA_WaitOnFlagUntilTimeout_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        ANDS     R0,R5,R0
        CMP      R0,R5
        BNE.N    ??IRDA_WaitOnFlagUntilTimeout_2
        CMN      R7,#+1
        BEQ.N    ??IRDA_WaitOnFlagUntilTimeout_0
        CMP      R7,#+0
        BEQ.N    ??IRDA_WaitOnFlagUntilTimeout_5
        BL       HAL_GetTick
        SUBS     R0,R0,R8
        CMP      R7,R0
        BCS.N    ??IRDA_WaitOnFlagUntilTimeout_0
??IRDA_WaitOnFlagUntilTimeout_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
        MOVS     R0,#+3
        B.N      ??IRDA_WaitOnFlagUntilTimeout_4
??IRDA_WaitOnFlagUntilTimeout_2:
        MOVS     R0,#+0
??IRDA_WaitOnFlagUntilTimeout_4:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
IRDA_Transmit_IT:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDRB     R0,[R4, #+53]
        CMP      R0,#+18
        BEQ.N    ??IRDA_Transmit_IT_0
        LDRB     R0,[R4, #+53]
        CMP      R0,#+50
        BNE.N    ??IRDA_Transmit_IT_1
??IRDA_Transmit_IT_0:
        LDRH     R0,[R4, #+30]
        CMP      R0,#+0
        BNE.N    ??IRDA_Transmit_IT_2
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+53]
        CMP      R0,#+50
        BNE.N    ??IRDA_Transmit_IT_3
        MOVS     R0,#+34
        STRB     R0,[R4, #+53]
        B.N      ??IRDA_Transmit_IT_4
??IRDA_Transmit_IT_3:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??IRDA_Transmit_IT_4:
        MOVS     R0,R4
        BL       HAL_IRDA_TxCpltCallback
        MOVS     R0,#+0
        B.N      ??IRDA_Transmit_IT_5
??IRDA_Transmit_IT_2:
        LDR      R0,[R4, #+8]
        CMP      R0,#+4096
        BNE.N    ??IRDA_Transmit_IT_6
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??IRDA_Transmit_IT_6
        LDR      R0,[R4, #+24]
        MOVS     R5,R0
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+23       ;; ZeroExtS R0,R0,#+23,#+23
        LSRS     R0,R0,#+23
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+40]
        LDR      R0,[R4, #+24]
        ADDS     R0,R0,#+2
        STR      R0,[R4, #+24]
        B.N      ??IRDA_Transmit_IT_7
??IRDA_Transmit_IT_6:
        LDR      R0,[R4, #+24]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+24]
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+40]
??IRDA_Transmit_IT_7:
        LDRH     R0,[R4, #+30]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+30]
        MOVS     R0,#+0
        B.N      ??IRDA_Transmit_IT_5
??IRDA_Transmit_IT_1:
        MOVS     R0,#+2
??IRDA_Transmit_IT_5:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
IRDA_EndTransmit_IT:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+53]
        CMP      R0,#+50
        BNE.N    ??IRDA_EndTransmit_IT_0
        MOVS     R0,#+34
        STRB     R0,[R4, #+53]
        B.N      ??IRDA_EndTransmit_IT_1
??IRDA_EndTransmit_IT_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??IRDA_EndTransmit_IT_1:
        MOVS     R0,R4
        BL       HAL_IRDA_TxCpltCallback
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
IRDA_Receive_IT:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        LDRH     R6,[R4, #+40]
        LDRB     R0,[R4, #+53]
        CMP      R0,#+34
        BEQ.N    ??IRDA_Receive_IT_0
        LDRB     R0,[R4, #+53]
        CMP      R0,#+50
        BNE.N    ??IRDA_Receive_IT_1
??IRDA_Receive_IT_0:
        LDR      R0,[R4, #+8]
        CMP      R0,#+4096
        BNE.N    ??IRDA_Receive_IT_2
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??IRDA_Receive_IT_2
        LDR      R0,[R4, #+32]
        MOVS     R5,R0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+36]
        ANDS     R0,R6,R0
        STRH     R0,[R5, #+0]
        LDR      R0,[R4, #+32]
        ADDS     R0,R0,#+2
        STR      R0,[R4, #+32]
        B.N      ??IRDA_Receive_IT_3
??IRDA_Receive_IT_2:
        LDR      R0,[R4, #+32]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+32]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+36]
        ANDS     R1,R6,R1
        STRB     R1,[R0, #+0]
??IRDA_Receive_IT_3:
        LDRH     R0,[R4, #+38]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+38]
        LDRH     R0,[R4, #+38]
        CMP      R0,#+0
        BNE.N    ??IRDA_Receive_IT_4
??IRDA_Receive_IT_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+26
        BMI.N    ??IRDA_Receive_IT_5
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+53]
        CMP      R0,#+50
        BNE.N    ??IRDA_Receive_IT_6
        MOVS     R0,#+18
        STRB     R0,[R4, #+53]
        B.N      ??IRDA_Receive_IT_7
??IRDA_Receive_IT_6:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
??IRDA_Receive_IT_7:
        MOVS     R0,R4
        BL       HAL_IRDA_RxCpltCallback
        MOVS     R0,#+0
        B.N      ??IRDA_Receive_IT_8
??IRDA_Receive_IT_4:
        MOVS     R0,#+0
        B.N      ??IRDA_Receive_IT_8
??IRDA_Receive_IT_1:
        MOVS     R0,#+2
??IRDA_Receive_IT_8:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
IRDA_DMATransmitCplt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR      R5,[R4, #+56]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??IRDA_DMATransmitCplt_0
        MOVS     R0,#+0
        STRH     R0,[R5, #+30]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+8]
        BICS     R0,R0,#0x80
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+8]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
        B.N      ??IRDA_DMATransmitCplt_1
??IRDA_DMATransmitCplt_0:
        MOVS     R0,R5
        BL       HAL_IRDA_TxCpltCallback
??IRDA_DMATransmitCplt_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
IRDA_DMATransmitHalfCplt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR      R5,[R4, #+56]
        MOVS     R0,R5
        BL       HAL_IRDA_TxHalfCpltCallback
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
IRDA_DMAReceiveCplt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR      R5,[R4, #+56]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??IRDA_DMAReceiveCplt_0
        MOVS     R0,#+0
        STRH     R0,[R5, #+38]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+8]
        MOVW     R1,#+65471
        ANDS     R0,R1,R0
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+8]
        LDRB     R0,[R5, #+53]
        CMP      R0,#+50
        BNE.N    ??IRDA_DMAReceiveCplt_1
        MOVS     R0,#+18
        STRB     R0,[R5, #+53]
        B.N      ??IRDA_DMAReceiveCplt_0
??IRDA_DMAReceiveCplt_1:
        MOVS     R0,#+1
        STRB     R0,[R5, #+53]
??IRDA_DMAReceiveCplt_0:
        MOVS     R0,R5
        BL       HAL_IRDA_RxCpltCallback
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
IRDA_DMAReceiveHalfCplt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR      R5,[R4, #+56]
        MOVS     R0,R5
        BL       HAL_IRDA_RxHalfCpltCallback
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
IRDA_DMAError:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR      R5,[R4, #+56]
        MOVS     R0,#+0
        STRH     R0,[R5, #+38]
        MOVS     R0,#+0
        STRH     R0,[R5, #+30]
        MOVS     R0,#+1
        STRB     R0,[R5, #+53]
        LDR      R0,[R5, #+56]
        ORRS     R0,R0,#0x10
        STR      R0,[R5, #+56]
        MOVS     R0,R5
        BL       HAL_IRDA_ErrorCallback
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 3 256 bytes in section .text
// 
// 3 256 bytes of CODE memory
//
//Errors: none
//Warnings: none
