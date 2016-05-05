echo "Single precision"
for (( i=4;i<=$1;i=i+4))
do
./fmadd-ps $i
done
echo "Double precision"
for (( i=4;i<=$1;i=i+4))
do
./fmadd-pd $i
done
