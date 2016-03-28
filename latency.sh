./latency 1

for i in $( seq 4 8 $1); do
	for j in $( seq 4 8 $1); do
		./latency 2 $i $j
	done
done

