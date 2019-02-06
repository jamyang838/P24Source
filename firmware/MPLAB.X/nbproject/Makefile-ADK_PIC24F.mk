#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-ADK_PIC24F.mk)" "nbproject/Makefile-local-ADK_PIC24F.mk"
include nbproject/Makefile-local-ADK_PIC24F.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=ADK_PIC24F
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/adk_pic24f/system.c ../src/main.c ../src/usb_config.c ../src/app_android_basic_io.c ../../../../../../bsp/adk_pic24f/adc.c ../../../../../../bsp/adk_pic24f/buttons.c ../../../../../../bsp/adk_pic24f/leds.c ../../../../../../bsp/adk_pic24f/timer_1ms.c ../../../../../../framework/usb/src/usb_host.c ../../../../../../framework/usb/src/usb_host_android.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1619470680/system.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/usb_config.o ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o ${OBJECTDIR}/_ext/1993221439/adc.o ${OBJECTDIR}/_ext/1993221439/buttons.o ${OBJECTDIR}/_ext/1993221439/leds.o ${OBJECTDIR}/_ext/1993221439/timer_1ms.o ${OBJECTDIR}/_ext/838585624/usb_host.o ${OBJECTDIR}/_ext/838585624/usb_host_android.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1619470680/system.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/usb_config.o.d ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o.d ${OBJECTDIR}/_ext/1993221439/adc.o.d ${OBJECTDIR}/_ext/1993221439/buttons.o.d ${OBJECTDIR}/_ext/1993221439/leds.o.d ${OBJECTDIR}/_ext/1993221439/timer_1ms.o.d ${OBJECTDIR}/_ext/838585624/usb_host.o.d ${OBJECTDIR}/_ext/838585624/usb_host_android.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1619470680/system.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/usb_config.o ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o ${OBJECTDIR}/_ext/1993221439/adc.o ${OBJECTDIR}/_ext/1993221439/buttons.o ${OBJECTDIR}/_ext/1993221439/leds.o ${OBJECTDIR}/_ext/1993221439/timer_1ms.o ${OBJECTDIR}/_ext/838585624/usb_host.o ${OBJECTDIR}/_ext/838585624/usb_host_android.o

# Source Files
SOURCEFILES=../src/system_config/adk_pic24f/system.c ../src/main.c ../src/usb_config.c ../src/app_android_basic_io.c ../../../../../../bsp/adk_pic24f/adc.c ../../../../../../bsp/adk_pic24f/buttons.c ../../../../../../bsp/adk_pic24f/leds.c ../../../../../../bsp/adk_pic24f/timer_1ms.c ../../../../../../framework/usb/src/usb_host.c ../../../../../../framework/usb/src/usb_host_android.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-ADK_PIC24F.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256DA206
MP_LINKER_FILE_OPTION=,--script=p24FJ256DA206.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1619470680/system.o: ../src/system_config/adk_pic24f/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1619470680" 
	@${RM} ${OBJECTDIR}/_ext/1619470680/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619470680/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/adk_pic24f/system.c  -o ${OBJECTDIR}/_ext/1619470680/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1619470680/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1619470680/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/usb_config.o: ../src/usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb_config.c  -o ${OBJECTDIR}/_ext/1360937237/usb_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/usb_config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/usb_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o: ../src/app_android_basic_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/app_android_basic_io.c  -o ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1993221439/adc.o: ../../../../../../bsp/adk_pic24f/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993221439" 
	@${RM} ${OBJECTDIR}/_ext/1993221439/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993221439/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../bsp/adk_pic24f/adc.c  -o ${OBJECTDIR}/_ext/1993221439/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1993221439/adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993221439/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1993221439/buttons.o: ../../../../../../bsp/adk_pic24f/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993221439" 
	@${RM} ${OBJECTDIR}/_ext/1993221439/buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993221439/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../bsp/adk_pic24f/buttons.c  -o ${OBJECTDIR}/_ext/1993221439/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1993221439/buttons.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993221439/buttons.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1993221439/leds.o: ../../../../../../bsp/adk_pic24f/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993221439" 
	@${RM} ${OBJECTDIR}/_ext/1993221439/leds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993221439/leds.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../bsp/adk_pic24f/leds.c  -o ${OBJECTDIR}/_ext/1993221439/leds.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1993221439/leds.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993221439/leds.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1993221439/timer_1ms.o: ../../../../../../bsp/adk_pic24f/timer_1ms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993221439" 
	@${RM} ${OBJECTDIR}/_ext/1993221439/timer_1ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993221439/timer_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../bsp/adk_pic24f/timer_1ms.c  -o ${OBJECTDIR}/_ext/1993221439/timer_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1993221439/timer_1ms.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993221439/timer_1ms.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/838585624/usb_host.o: ../../../../../../framework/usb/src/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/usb/src/usb_host.c  -o ${OBJECTDIR}/_ext/838585624/usb_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/838585624/usb_host.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/838585624/usb_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/838585624/usb_host_android.o: ../../../../../../framework/usb/src/usb_host_android.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_host_android.o.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_host_android.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/usb/src/usb_host_android.c  -o ${OBJECTDIR}/_ext/838585624/usb_host_android.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/838585624/usb_host_android.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/838585624/usb_host_android.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1619470680/system.o: ../src/system_config/adk_pic24f/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1619470680" 
	@${RM} ${OBJECTDIR}/_ext/1619470680/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619470680/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/adk_pic24f/system.c  -o ${OBJECTDIR}/_ext/1619470680/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1619470680/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1619470680/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/usb_config.o: ../src/usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb_config.c  -o ${OBJECTDIR}/_ext/1360937237/usb_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/usb_config.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/usb_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o: ../src/app_android_basic_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/app_android_basic_io.c  -o ${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_android_basic_io.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1993221439/adc.o: ../../../../../../bsp/adk_pic24f/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993221439" 
	@${RM} ${OBJECTDIR}/_ext/1993221439/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993221439/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../bsp/adk_pic24f/adc.c  -o ${OBJECTDIR}/_ext/1993221439/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1993221439/adc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993221439/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1993221439/buttons.o: ../../../../../../bsp/adk_pic24f/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993221439" 
	@${RM} ${OBJECTDIR}/_ext/1993221439/buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993221439/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../bsp/adk_pic24f/buttons.c  -o ${OBJECTDIR}/_ext/1993221439/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1993221439/buttons.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993221439/buttons.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1993221439/leds.o: ../../../../../../bsp/adk_pic24f/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993221439" 
	@${RM} ${OBJECTDIR}/_ext/1993221439/leds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993221439/leds.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../bsp/adk_pic24f/leds.c  -o ${OBJECTDIR}/_ext/1993221439/leds.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1993221439/leds.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993221439/leds.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1993221439/timer_1ms.o: ../../../../../../bsp/adk_pic24f/timer_1ms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1993221439" 
	@${RM} ${OBJECTDIR}/_ext/1993221439/timer_1ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1993221439/timer_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../bsp/adk_pic24f/timer_1ms.c  -o ${OBJECTDIR}/_ext/1993221439/timer_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1993221439/timer_1ms.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1993221439/timer_1ms.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/838585624/usb_host.o: ../../../../../../framework/usb/src/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/usb/src/usb_host.c  -o ${OBJECTDIR}/_ext/838585624/usb_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/838585624/usb_host.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/838585624/usb_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/838585624/usb_host_android.o: ../../../../../../framework/usb/src/usb_host_android.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_host_android.o.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_host_android.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../../../../framework/usb/src/usb_host_android.c  -o ${OBJECTDIR}/_ext/838585624/usb_host_android.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/838585624/usb_host_android.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I".." -I"../../../../../../framework" -I"../../../../../../framework/usb/inc" -I"../src/system_config/adk_pic24f" -I"../../../../../../bsp/adk_pic24f" -I"../src" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/838585624/usb_host_android.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--heap=3000,--no-check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_ADK_PIC24F=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=3000,--no-check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/ADK_PIC24F
	${RM} -r dist/ADK_PIC24F

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
