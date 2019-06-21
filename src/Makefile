# Set rpath Article: The inside history on shared libraries and dinamic loading
#					 

#Dependency path:
PATH_TO_GSL=/opt/apps/gsl/2.5-gcc-5.4.0

CC=gcc
CFLAGS= -std=c99 -c -fPIC -I./
LDFLAGS= -lm -shared
CFLAGS+= -I$(PATH_TO_GSL)/include
LDFLAGS+= $(PATH_TO_GSL)/lib/libgsl.a
LDFLAGS+= $(PATH_TO_GSL)/lib/libgslcblas.a

#LDFLAGS=-g -L../../../build-gcc-5.4.0 -lopper -lm

SOURCES=region1.c \
region2.c \
region3.c \
region4.c \
steam_ph.c \
steam.c \
backwards.c \
b23.c \
common.c \
derivs.c \
zeroin.c \
steam_ps.c \
solver2.c \
steam_pT.c \
steam_pu.c \
steam_Ts.c \
steam_Tx.c \
surftens.c \
bounds.c \
steam_pv.c \
viscosity.c \
thcond.c 

OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=libfreesteam.so

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@


clean:
	rm -f *.o
	rm -f $(EXECUTABLE)
