#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a pre- and a post- target defined where you can add customization code.
#
# This makefile implements macros and targets common to all configurations.
#
# NOCDDL


# Building and Cleaning subprojects are done by default, but can be controlled with the SUB
# macro. If SUB=no, subprojects will not be built or cleaned. The following macro
# statements set BUILD_SUB-CONF and CLEAN_SUB-CONF to .build-reqprojects-conf
# and .clean-reqprojects-conf unless SUB has the value 'no'
SUB_no=NO
SUBPROJECTS=${SUB_${SUB}}
BUILD_SUBPROJECTS_=.build-subprojects
BUILD_SUBPROJECTS_NO=
BUILD_SUBPROJECTS=${BUILD_SUBPROJECTS_${SUBPROJECTS}}
CLEAN_SUBPROJECTS_=.clean-subprojects
CLEAN_SUBPROJECTS_NO=
CLEAN_SUBPROJECTS=${CLEAN_SUBPROJECTS_${SUBPROJECTS}}


# Project Name
PROJECTNAME=MPLAB.X

# Active Configuration
DEFAULTCONF=ADK_PIC24F
CONF=${DEFAULTCONF}

# All Configurations
ALLCONFS=ADK_PIC24F PIC24FJ256GB110_PIM PIC24FJ64GB004_PIM PIC24FJ256GB210_PIM PIC24F_Starter_Kit 


# build
.build-impl: .build-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf


# clean
.clean-impl: .clean-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .clean-conf

# clobber
.clobber-impl: .clobber-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=ADK_PIC24F clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ256GB110_PIM clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ64GB004_PIM clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ256GB210_PIM clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24F_Starter_Kit clean



# all
.all-impl: .all-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=ADK_PIC24F build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ256GB110_PIM build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ64GB004_PIM build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ256GB210_PIM build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24F_Starter_Kit build



# dependency checking support
.depcheck-impl:
#	@echo "# This code depends on make tool being used" >.dep.inc
#	@if [ -n "${MAKE_VERSION}" ]; then \
#	    echo "DEPFILES=\$$(wildcard \$$(addsuffix .d, \$${OBJECTFILES}))" >>.dep.inc; \
#	    echo "ifneq (\$${DEPFILES},)" >>.dep.inc; \
#	    echo "include \$${DEPFILES}" >>.dep.inc; \
#	    echo "endif" >>.dep.inc; \
#	else \
#	    echo ".KEEP_STATE:" >>.dep.inc; \
#	    echo ".KEEP_STATE_FILE:.make.state.\$${CONF}" >>.dep.inc; \
#	fi
