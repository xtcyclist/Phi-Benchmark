CC = icc
CFLAGS = -mmic -O0 -openmp -D_OPENMP 

all: bandwidth latency

bandwidth:
	icc -lpthread -lrt -O3 -mmic bandwidth.c -o bandwidth -openmp

latency:
	icc -lpthread -lrt -O0 -mmic latency.c -o latency -lstdc++

clean:
	rm -f *.o bandwidth latency
