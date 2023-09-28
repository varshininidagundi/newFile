numbers=()

for((i=0; i<10; i++))
do
	x=$(( (RANDOM % 900) + 100 ))
	numbers+=($x)
done

echo " ${numbers[*]}"

l=${numbers[0]}
s_l=${numbers[0]}
s=${numbers[0]}
s_s=${numbers[0]}

for i in "${numbers[@]}"
do
	if [ "$i" -gt "$l" ]; then
		s_l=$l
		l=$i
	fi

	if [ "$i" -lt "$s" ]; then
		s_s=$s
		s=$i
	fi
done
echo "random no generated are :${numbers[*]}"
echo "largest :$l"
echo "second largest :$s_l"
echo "smallest :$s"
echo "second smallest :$s_s"
