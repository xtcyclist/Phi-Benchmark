CC = icc
CFLAGS = -mmic -openmp -D_OPENMP -DSCATTER
LDFLAGS= -lpthread -lrt -openmp -lstdc++ -lmemkind -L/usr/local/lib

all: bandwidth latency

bandwidth: bandwidth.c
	icc $(CFLAGS) -O2 bandwidth.c -o bandwidth $(LDFLAGS) 

latency: latency.c
	icc $(CFLAGS) -O0 latency.c -o latency $(LDFLAGS)

clean:
	rm -f *.o bandwidth latency
