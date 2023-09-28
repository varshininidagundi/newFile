declare -A countries
countries[bye]="hii"
countries[ok]="notok"
countries[why]="ifykyk"
countries[abc]="ack"
echo ${countries[abc]}
echo ${countries[@]}
echo "/n print key"
for key in "${!countries[@]}";
do
	echo $key;
done

echo "values"
for value in "${countries[@]}";
do
	echo $value;
done

echo"finding file"
if [ ${countries[FOF]+_} ];
then
	echo "found";
else
	echo "no";
fi
countries+=( [bbb]=[ccc] )
echo "${countries[bbb]}"
echo "${countries[*]}"
echo "${#countries[@]}"


unset countries[bbb]
echo "${countries[@]}"

