./bandwidth 1
for (( i=4;i<=$1;i=i+4))
do
./bandwidth $i
done
./bandwidth 255
