#./latency 1

for i in $( seq 0 1 63); do
	for j in $( seq 64 1 127); do
		./latency 2 $i $j
	done
done

