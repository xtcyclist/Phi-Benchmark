#define _GNU_SOURCE
#include "interface.h"

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
#define ONE {ptr=(void **) *ptr;}
#define TEN ONE ONE ONE ONE ONE ONE ONE ONE ONE ONE
#define HUN TEN TEN TEN TEN TEN TEN TEN TEN TEN TEN
#define THO HUN HUN HUN HUN HUN HUN HUN HUN HUN HUN

#define MEMORY_MAX_ACCESS_LENGTH (1024*1024)		//total length of memory space for the memory latency measurement, the actual size is MEMORY_MAX_ACCESS_LENGTH * sizeof(double)
#define MEMORY_NUMBER_OF_JUMPS (1024*1024)			//total number of jumps for the memory latency measurement
#define L2_CACHE_MAX_ACCESS_LENGTH 512*1024				//total length of memory space for L2 latency measurement, the actual size is L2_CACHE_MAX_ACCESS_LENGTH * sizeof(double)
#define L2_CACHE_NUMBER_OF_JUMPS 512*1024				//total number of jumps for L2 latency measurement

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

unsigned int random_number(unsigned long max);
void make_linked_memory(void *mem, long count);

long numjumps;

int NUM_COUNTERS;

/** generates a random number between 0 and (max-1)
 *  @param  max maximum random number
 *  @return a random number between 0 and (max-1)
 */
unsigned int random_number(unsigned long max)
{
  return (unsigned int) (((double)max)*rand()/(RAND_MAX+1.0));
}
double mysecond()
{
	struct timeval tp;
	struct timezone tzp;
	int i;

	i = gettimeofday(&tp,&tzp);
	return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
}

/** creates a memory are that is randomly linked 
 *  @param mem     the memory area to be used
 *  @param length  the number of bytes that should be used
 */
void make_linked_memory(void *mem, long length) {

  /* some pointers to generate the list */
  void **ptr, **first;
  /** how many ptr we create within the memory */
  long num_ptr=length;///sizeof(void *);
  /** the list for all memory locations that are linked */
  long *ptr_numbers;
  /** for the loops */
  long loop_ptrs;
  /** actual random number */
  long act_num;

  /* allocate memory for ptr numbers */
  ptr_numbers=(long *) malloc(num_ptr*sizeof(long));
  if(num_ptr>0 && ptr_numbers==NULL)
    {
      printf("no more core in make_linked_mem()\n");
      bi_cleanup(mem);
      exit(1);
    }
  /* initialize ptr numbers, the 0 is used as the first
   * number
   */
  for(loop_ptrs=1; loop_ptrs<num_ptr; loop_ptrs++)
    ptr_numbers[loop_ptrs-1]=loop_ptrs;

  /* init first ptr with first memory location */
  ptr=(void **)mem;
  first=ptr;
   
  num_ptr--;

  while(num_ptr>1) {
    /* get a random position within the
       remaining list */
    act_num=random_number(num_ptr);
    /* create a link from the last ptr 
       to this ptr */
    *ptr=(void *) (first+ptr_numbers[act_num]);
    /* move pointer to new memory location */
    ptr=first+ptr_numbers[act_num];
    /* remove used ptr number from list of
       pointer numbers, just copies the last 
       number to the actual position */
    ptr_numbers[act_num]=ptr_numbers[num_ptr-1];
    num_ptr--;
  }

  /* the last number is linked to the first */
  *ptr=(void *) first;

  /* free the ptr list */
  free(ptr_numbers);
}
/* Conducts pointer chasing
*  @mem, the memory space to chase pointers
*  @n, the total number of jumps
*/
void *jump_around(void *mem, long n) {
	void **ptr;
	long a;

	ptr=(void **) mem;

	/* numjump Sprnge im Kreis :-) */
	for(a=0;a<n/100;a++){
		HUN
	}
	return (void *) ptr;
}

void bi_cleanup(void *mcb){
  free(mcb);
  return;
}
typedef struct 
{
	void *mem;
	void **ptr_per_core;
	int tid;
	int threads;
	int *pos;
	long size;
	double time;
	pthread_barrier_t *barrier;
}argc_t;
/* 
*	The function for each thread to measure the memory access latency
*/
void *thread (void *parm)
{
	argc_t *arg=(argc_t*)parm;
	double results[2];
	numjumps=MEMORY_NUMBER_OF_JUMPS;
	d_bi_start_sec = (double) ((long long) bi_gettimeofday());
	
	double start, stop;
	int i;

	long length;
	void *ptr;
	
	length = MEMORY_MAX_ACCESS_LENGTH;

	results[0]=(double) length;

	make_linked_memory(arg->mem, length);						//generate the memory space residing in the memory
	ptr = jump_around(arg->mem, numjumps);						//a pre-run
 	start=mysecond();
	ptr = jump_around(arg->mem, numjumps);						//conduct pointer chasing
	stop=mysecond();
	
	results[1]=1000000000*(double)(stop-start)/((double)numjumps);
	printf ("Average memory latency %f ns\n", results[1]);
	
}
/* 
*	The function for a thread to measure its access latency to the L2 cache of a remote core
*	Only the local and remote threads are involved. The number of threads is two. 
*/
void *thread_remote_l2 (void *parm)
{
	argc_t *arg=(argc_t*)parm;
	double results[2],start,stop;
	void *self, *remote;
	int tid=arg->tid;
	int i;
	
	make_linked_memory(arg->mem, arg->size);							//both thread generate data for their L2 caches
	pthread_barrier_wait(arg->barrier);
	
	arg->ptr_per_core[tid]=arg->mem;									//update the global pointer directory
	jump_around(arg->mem, arg->size);					//pre-run to load the memory into local caches	
	self=arg->ptr_per_core[tid];										//udpate the pointer to its own memory sapce
	
	pthread_barrier_wait(arg->barrier);
	
	if (tid==0)
	{
		for (i=0;i<arg->threads;++i)
		{
			if (i!=tid && arg->ptr_per_core[i]!=NULL)
			{
				remote=arg->ptr_per_core[i];							//the local thread finds the remote thread, and update the remote ptr
				break;
			}
		}
		
		d_bi_start_sec = (double) ((long long) bi_gettimeofday());
		numjumps=L2_CACHE_NUMBER_OF_JUMPS;								//a smaller number of jumps for jumps in L2 caches
		
		start=mysecond();
		jump_around(remote, numjumps);									//conducts pointer chasing
		stop=mysecond();
		
		results[1]=1000000000*(double)(stop-start)/((double)numjumps);
		printf ("From %d to %d:\t", arg->pos[tid], arg->pos[i]);
		printf ("L2 latency %f ns\n", results[1]);		
	}
}
#define MAX_NUM_THREADS 288
int main (int argc, char **argv)
{
	int threads;
	pthread_t tid[MAX_NUM_THREADS];
	pthread_attr_t attr;
	pthread_barrier_t barrier;
	cpu_set_t set;
	int i,tt;
	threads=atoll(argv[1]);
	void *mem;
	argc_t info[MAX_NUM_THREADS];
	void *ptr_per_core[MAX_NUM_THREADS];
	pthread_barrier_init(&barrier, NULL, threads);
	
	if (threads==1)
	{
		//measure the memory latency of a single thread
		mem=(void*)malloc(MEMORY_MAX_ACCESS_LENGTH*sizeof(double));
		pthread_attr_init(&attr);
		CPU_ZERO(&set);
		CPU_SET(threads, &set);//pin the thread to the coresponding core
		pthread_attr_setaffinity_np(&attr, sizeof(cpu_set_t), &set);
		info[0].mem=&mem[0*((MEMORY_MAX_ACCESS_LENGTH/threads)& ~15)];
		pthread_create(&tid[0], &attr, thread, (void*) &info[0]);		
		pthread_join(tid[0], NULL);
	}
	else if (threads==2)
	{
		//measure the remote L2 access latency
		threads=2;
		int pos[2];
		//the location of the local thread
		pos[0]=atoll(argv[2]);
		//the location of the remote thread
		pos[1]=atoll(argv[3]);
		if (pos[1]==pos[0])
			pos[1]=pos[0]-1;
		mem=(void*)malloc(L2_CACHE_MAX_ACCESS_LENGTH*sizeof(double)*threads);
		for (tt=0;tt<threads;++tt)
		{
			ptr_per_core[tt]=NULL;
			pthread_attr_init(&attr);
			CPU_ZERO(&set);
			CPU_SET(pos[tt], &set);
			info[tt].pos=pos;
			pthread_attr_setaffinity_np(&attr, sizeof(cpu_set_t), &set);
			info[tt].size=L2_CACHE_MAX_ACCESS_LENGTH;
			info[tt].mem=&mem[tt*info[tt].size];
			info[tt].ptr_per_core=ptr_per_core;
			info[tt].tid=tt;
			info[tt].threads=threads;
			info[tt].barrier=&barrier;
			pthread_create(&tid[tt], &attr, thread_remote_l2, (void*) &info[tt]);		
		}	
		for (tt = 0 ; tt != threads ; ++tt)
		{
			pthread_join(tid[tt], NULL);
		}
	}
	free (mem);
	return 0;
}
