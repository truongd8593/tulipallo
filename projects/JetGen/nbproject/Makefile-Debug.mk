#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/JetGen.o \
	${OBJECTDIR}/Object.o \
	${OBJECTDIR}/Point3d.o \
	${OBJECTDIR}/Subject.o \
	${OBJECTDIR}/Target.o \
	${OBJECTDIR}/Triangle.o \
	${OBJECTDIR}/predicates.o \
	${OBJECTDIR}/tetgen.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libJetGen.${CND_DLIB_EXT}

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libJetGen.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libJetGen.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -shared -fPIC

${OBJECTDIR}/JetGen.o: JetGen.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/lib/jvm/java-7-openjdk-armhf/include -I/usr/lib/jvm/java-7-openjdk-armhf/include/linux -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/JetGen.o JetGen.cpp

${OBJECTDIR}/Object.o: Object.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/lib/jvm/java-7-openjdk-armhf/include -I/usr/lib/jvm/java-7-openjdk-armhf/include/linux -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/Object.o Object.cpp

${OBJECTDIR}/Point3d.o: Point3d.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/lib/jvm/java-7-openjdk-armhf/include -I/usr/lib/jvm/java-7-openjdk-armhf/include/linux -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/Point3d.o Point3d.cpp

${OBJECTDIR}/Subject.o: Subject.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/lib/jvm/java-7-openjdk-armhf/include -I/usr/lib/jvm/java-7-openjdk-armhf/include/linux -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/Subject.o Subject.cpp

${OBJECTDIR}/Target.o: Target.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/lib/jvm/java-7-openjdk-armhf/include -I/usr/lib/jvm/java-7-openjdk-armhf/include/linux -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/Target.o Target.cpp

${OBJECTDIR}/Triangle.o: Triangle.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/lib/jvm/java-7-openjdk-armhf/include -I/usr/lib/jvm/java-7-openjdk-armhf/include/linux -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/Triangle.o Triangle.cpp

${OBJECTDIR}/predicates.o: predicates.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/lib/jvm/java-7-openjdk-armhf/include -I/usr/lib/jvm/java-7-openjdk-armhf/include/linux -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/predicates.o predicates.cpp

${OBJECTDIR}/tetgen.o: tetgen.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I/usr/lib/jvm/java-7-openjdk-armhf/include -I/usr/lib/jvm/java-7-openjdk-armhf/include/linux -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/tetgen.o tetgen.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libJetGen.${CND_DLIB_EXT}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
