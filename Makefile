CC = icc
CFLAGS = -DSCATTER
LDFLAGS= -lpthread -lrt -lstdc++ -L/usr/local/lib
MCDRAM_LDFLAGS=-lmemkind

all: bandwidth latency single double

bandwidth: bandwidth.c
	icc $(CFLAGS) -O2 bandwidth.c -o bandwidth $(LDFLAGS)

MCDRAM: bandwidth.c
	icc $(CFLAGS) -O2 bandwidth.c -DMCDRAM -o bandwidth $(LDFLAGS) $(MCDRAM_LDFLAGS) 

latency: latency.c
	icc $(CFLAGS) -O0 latency.c -o latency $(LDFLAGS)

single: fmadd.c
	icc ./fmadd.c -O3 -o fmadd-ps -lpthread $(CFLAGS)   

double: fmadd.c
	icc ./fmadd.c -O3 -o fmadd-pd -lpthread $(CFLAGS) -DDOUBLE

clean:
	rm -f *.o bandwidth latency fmadd-ps fmadd-pd
