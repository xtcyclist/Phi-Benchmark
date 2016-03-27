# Phi-Benchmark

Phi-Benchmark is a preliminary benchmark to measure hardware characteristics on Xeon Phi. Currently, the implementation includes 
  - the main memory access latency measurement;
  - L2 cache access latency measurement.

Parts of the codes are adopted from STREAM and BENCHIT. 

Phi-Benchmark is coded for the KNC architecture. To compile and run it on KNL, modifications may be needed. 

### Compile
All codes are cross-compiled to run natively on Xeon Phi. To compile, run

```sh
$ make
```

Two executables will be generated:
  - bandwidth
  - latency

### Upload excutables to Xeon Phi

The executables need to be uploaded to the Xeon Phi manually. 

```sh
$ scp ./bandwidth mic#:/your_folder
$ scp ./latency mic#:/your_folder
$ scp ./*.sh mic#:/your_folder
```

### Execution

To execute, simply run:
```sh
$ sh run.sh [The total number of hardware threads]
```

This script takes the total number of hardware threads availiable on Xeon Phi as its input. On KNC, this parameter is 240. On KNL, it is 288. The results are stored in bandwidth.log and latency.log.


### Contact
Xuntao Cheng, xcheng002@ntu.edu.sg
