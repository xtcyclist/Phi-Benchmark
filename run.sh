#!/bin/sh

sh bandwidth.sh $1 >> bandwidth.log
sh latency.sh $1 >> latency.log
sh fmadd.sh $1 >> fmadd.log
