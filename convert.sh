xx=$(find -name "*.i")

for i in $xx
do
	echo ${i%.*}
	mv ${i%.*}.{i,c}
done
