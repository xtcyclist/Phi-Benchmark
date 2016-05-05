all: single double

single:
	icc ./fmadd.c -O3 -o fmadd-ps -lpthread -mmic	
	scp ./fmadd-ps mic0:/home/xuntao

double:
	icc ./fmadd.c -O3 -o fmadd-pd -lpthread -mmic -DDOUBLE
	scp ./fmadd-pd mic0:/home/xuntao

	
