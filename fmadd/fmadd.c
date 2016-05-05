#define _GNU_SOURCE

#include <stddef.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
#include <sys/time.h>
#include <pthread.h>
#include <sched.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include "immintrin.h"
#ifndef DOUBLE
#define ONE {a=_mm512_fmadd_ps(a,b,c);b=_mm512_fmadd_ps(a,b,c);c=_mm512_fmadd_ps(a,b,c);}
#else
#define ONE {a=_mm512_fmadd_pd(a,b,c);b=_mm512_fmadd_pd(a,b,c);c=_mm512_fmadd_pd(a,b,c);}
#endif
#define TEN ONE ONE ONE ONE ONE ONE ONE ONE ONE ONE
#define HUN TEN TEN TEN TEN TEN TEN TEN TEN TEN TEN
#define THO HUN HUN HUN HUN HUN HUN HUN HUN HUN HUN

double d_bi_start_sec; /**< start time */
static double bi_gettimeofday() {
	struct timeval time;
	gettimeofday(&time, (struct timezone *) 0);
	return (double) time.tv_sec + (double) time.tv_usec * 1.0e-6;
}
static double bi_gettimeofday_improved() {
	struct timeval time;
	gettimeofday(&time, (struct timezone *) 0);
	return ((double) time.tv_sec - d_bi_start_sec) + (double) time.tv_usec * 1.0e-6;
}
double (*bi_gettime)() = bi_gettimeofday_improved;

double mysecond()
{
	struct timeval tp;
	struct timezone tzp;
	int i;

	i = gettimeofday(&tp,&tzp);
	return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
}
typedef struct 
{
	float *mem;
	void **ptr_per_core;
	int tid;
	int threads;
	long size;
	double time;
	pthread_barrier_t *barrier;
}argc_t;

void *thread (void *parm)
{
	argc_t *arg=(argc_t*)parm;
	double results[2];

	double start, stop;
	int i;
	#ifndef DOUBLE
	__m512 a, b, c, d;
	a=_mm512_set4_ps(1.1, 2.1, 3.1, 4.1);
	b=_mm512_set4_ps(1.2, 2.2, 3.2, 4.2);
	c=_mm512_set4_ps(1.3, 2.3, 3.3, 4.3);
	#else
	__m512d a, b, c, d;
	a=_mm512_set4_pd(1.1, 2.1, 3.1, 4.1);
	b=_mm512_set4_pd(1.2, 2.2, 3.2, 4.2);
	c=_mm512_set4_pd(1.3, 2.3, 3.3, 4.3);
	#endif
	start=mysecond();
        //pthread_barrier_wait(arg->barrier);
 	//#pragma unroll
 	for (i=0;i<100;++i)
 	{
		HUN
 	}
        //pthread_barrier_wait(arg->barrier);
	stop=mysecond();
	#ifndef DOUBLE
	_mm512_store_ps(arg->mem,c);
	#else
	_mm512_store_pd(arg->mem,c);
	#endif
	if(arg->tid==0)
	{
		#ifndef DOUBLE
		results[1]=arg->threads*100*100*3*2*16/(double)(stop-start);
		#else
		results[1]=arg->threads*100*100*3*2*8/(double)(stop-start);
		#endif
		printf ("GFLOPS %f \n", results[1]/1000000000);
	}	

}

int main (int argc, char **argv)
{
	int threads;
	pthread_t tid[500];
	pthread_attr_t attr;
	pthread_barrier_t barrier;
	cpu_set_t set;
	int i,tt;
	threads=atoll(argv[1]);
	argc_t info[500];
	float mem[8000] __attribute__((aligned(64)));
	pthread_barrier_init(&barrier, NULL, threads);
	
	for ( i=0;i<threads;++i)
	{	
		info[i].tid=i;
		info[i].threads=threads;
		info[i].barrier=&barrier;
		info[i].mem=&mem[i*16];
		pthread_attr_init(&attr);
		CPU_ZERO(&set);
		CPU_SET((i+1)%240, &set);//pin the thread to the coresponding core
		pthread_attr_setaffinity_np(&attr, sizeof(cpu_set_t), &set);
		pthread_create(&tid[i], &attr, thread, (void*) &info[i]);	
	}
	for ( i=0;i<threads;++i)
	{
		pthread_join(tid[i], NULL);
	}
	return 0;
}
