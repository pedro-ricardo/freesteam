# Set rpath Article: The inside history on shared libraries and dinamic loading
#					 

#Dependency path:
PATH_TO_GSL=/opt/apps/gsl/2.5-gcc-5.4.0

CC=gcc
FT=gfortran
COM_FLAGS= -c -I./ -fPIC

CFLAGS= $(COM_FLAGS) -std=c99 
CFLAGS+= -I$(PATH_TO_GSL)/include

FTFLAGS= $(COM_FLAGS) -ffree-line-length-none

LDFLAGS= -I./ -lm -shared
LDFLAGS+= -I$(PATH_TO_GSL)/include
LDFLAGS+= $(PATH_TO_GSL)/lib64/libgsl.a
LDFLAGS+= $(PATH_TO_GSL)/lib64/libgslcblas.a

#LDFLAGS=-g -L../../../build-gcc-5.4.0 -lopper -lm

OBJ=region1.o \
region2.o \
region3.o \
region4.o \
steam_ph.o \
steam.o \
backwards.o \
b23.o \
common.o \
derivs.o \
zeroin.o \
steam_ps.o \
solver2.o \
steam_pT.o \
steam_pu.o \
steam_Ts.o \
steam_Tx.o \
surftens.o \
bounds.o \
steam_pv.o \
viscosity.o \
thcond.o \
interface_f2008.o \
freesteam_interface.o

EXECUTABLE=libfreesteam.so

all: $(OBJ) $(EXECUTABLE)

$(EXECUTABLE): $(OBJ) 
	$(CC) $(OBJ) $(LDFLAGS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

%.o: %.f08
	$(FT) $(FTFLAGS) $< -o $@

clean:
	rm -f *.o
	rm -f *.mod
	rm -f $(EXECUTABLE)
