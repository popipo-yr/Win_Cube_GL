#
# $Copyright: 
# ----------------------------------------------------------------
# This confidential and proprietary software may be used only as
# authorised by a licensing agreement from ARM Limited
#   (C) COPYRIGHT 2008 - 2011 ARM Limited
#       ALL RIGHTS RESERVED
# The entire notice above must be reproduced on all authorised
# copies and copies may only be made to the extent permitted
# by a licensing agreement from ARM Limited.
# $
#

KHRONOS_HEADERS ?= ..
GLES_LIB_PATH ?= ../bin
EGL_LIB_PATH ?= ../bin

INCLUDES = include/
SOURCES  = src/cube.c src/shader.c src/window.c src/matrix.c

LIBPATHS = -L$(GLES_LIB_PATH) -L$(EGL_LIB_PATH) -L/usr/X11R6/lib
LIBPATHS += -Wl,-rpath=/home/popipo/gles
LIBS     = -lX11 -lGLESv2 -lEGL -lm
 
 
cube:
	gcc -o cube $(SOURCES) -I$(KHRONOS_HEADERS) -I$(INCLUDES) $(LIBPATHS) $(LIBS)

debug:
	gcc -o cube $(SOURCES) -I$(KHRONOS_HEADERS) -I$(INCLUDES) $(LIBPATHS) $(LIBS) -g -DDEBUG

run:
	./cube	

clean:
	rm -rf cube
