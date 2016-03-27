CC = icc
CFLAGS = -mmic -g -openmp -D_OPENMP 
LDFLAGS= -lpthread -lrt -openmp -lstdc++

all: bandwidth latency

bandwidth: bandwidth.c
	icc $(CFLAGS) bandwidth.c -o bandwidth $(LDFLAGS)

latency: latency.c
	icc $(CFLAGS) latency.c -o latency $(LDFLAGS)

clean:
	rm -f *.o bandwidth latency
