CC = icc
CFLAGS = -mmic -openmp -D_OPENMP -DSCATTER
LDFLAGS= -lpthread -lrt -openmp -lstdc++ -lmemkind -L/usr/local/lib

all: bandwidth latency single double

bandwidth: bandwidth.c
	icc $(CFLAGS) -O2 bandwidth.c -o bandwidth $(LDFLAGS) 

latency: latency.c
	icc $(CFLAGS) -O0 latency.c -o latency $(LDFLAGS)

single: fmadd.c
	icc ./fmadd.c -O3 -o fmadd-ps -lpthread -mmic   

double: fmadd.c
	icc ./fmadd.c -O3 -o fmadd-pd -lpthread -mmic -DDOUBLE

clean:
	rm -f *.o bandwidth latency fmadd-ps fmadd-pd
