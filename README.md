# Phi-Benchmark

Phi-Benchmark is a preliminary benchmark to measure hardware characteristics on Xeon Phi. Currently, the implementation includes four components
  - Floting-point arthmetic computation throughput (single-precision and double-precision); 
  - Main memory bandwidth;
  - The main memory access latency measurement;
  - L2 cache access latency measurement.

Parts of the codes are adopted from STREAM and BENCHIT. 

Phi-Benchmark is coded for the KNC architecture. To compile and run it on KNL, modifications are needed. 

### Compile
All codes are cross-compiled to run natively on Xeon Phi. To compile, run

```sh
$ make
```
to compile all components, or,

```sh
$ make single
$ make double
$ make benchmark
$ make latency
```
to compile each individual component seperately. 

Four executables will be generated in total:
  - fmadd-ps
  - fmadd-pd
  - bandwidth
  - latency

fmadd-ps and fmadd-pd are to measure the floting-point arthmetic computation throughput of single-precision and double-precision, respectively. bandwidth, and latency are to measure the main memory bandwidth and latency. 

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

This script takes the total number of hardware threads availiable on Xeon Phi as its input. On KNC, this parameter is 240. On KNL, it is 288. The results are stored in fmadd.log, bandwidth.log and latency.log.


### Contact
Xuntao Cheng, xcheng002@ntu.edu.sg
