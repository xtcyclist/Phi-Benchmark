# Phi-Benchmark

Phi-Benchmark is a preliminary benchmark to measure hardware characteristics on Xeon Phi. Currently, the implementation includes three components
  - fmadd.c, floting-point arthmetic computation throughput (single-precision and double-precision); 
  - bandwidth.c, Main memory bandwidth (DDR or MCDRAM);
  - latency.c, memory access latency measurement (to L2 caches or the main memory)

Parts of the codes are adopted from STREAM and BENCHIT. 

Phi-Benchmark is coded for the KNC architecture. To compile and run it on KNL, modifications are needed. 

### Bandwidth (DDR or MCDRAM)

With the 'MCDRAM' macro defined, the code in bandwidth.c tests whether MCDRAM is availiable by calling APIs from the memkind library (lines 281 - 298). If it is availiable, spaces would be allocated in the MCDRAM for the bandwidth measurement. If 'MCDRAM' is not defined, DDR would be used. 

In the Makefile, we have specified the target 'MCDRAM' to make the code with 'MCDRAM' defined, and the target 'bandwidth' for the normal DDR. 

### Prerequisites

The memkind library is needed to test bandwidth on MCDRAM. 

All components require pthread. 

### Compile
All codes are cross-compiled to run natively on Xeon Phi. To compile, run

```sh
$ make
```
to compile all components, or,

```sh
$ make single
$ make double
$ make bandwidth
$ make MCDRAM
$ make latency
```
to compile each individual component seperately. 

Four executables will be generated in total:
  - fmadd-ps
  - fmadd-pd
  - bandwidth
  - latency

fmadd-ps and fmadd-pd are to measure the floting-point arthmetic computation throughput of single-precision and double-precision, respectively. bandwidth, and latency are to measure the main memory bandwidth and latency. 

### Modifications to compile the codes for KNL

To the best of our knowledge, the compilation flag '-mmic' needs to be removed for KNL. Please do so in the Makefile by deleting it in the 'CFLAGS'. 

### Upload excutables to Xeon Phi

The executables and scripts need to be uploaded to the Xeon Phi manually. 

```sh
$ scp ./fmadd* mic#:/your_folder
$ scp ./bandwidth mic#:/your_folder
$ scp ./latency mic#:/your_folder
$ scp ./*.sh mic#:/your_folder
```

### Execution

To execute, simply run:
```sh
$ sh run.sh [The total number of hardware threads]
```

to run all scripts, or, 

```sh
$ sh bandwidth.sh [The total number of hardware threads]
$ sh latency.sh [The total number of hardware threads]
$ sh fmadd.sh [The total number of hardware threads]
```

to run each individual script. 

This script takes the total number of hardware threads availiable on Xeon Phi as its input. On KNC, this parameter is 240. On KNL, it is 288. The results are stored in fmadd.log, bandwidth.log and latency.log.


### Contact
Xuntao Cheng, xcheng002@ntu.edu.sg
