arr=(a b c d e f)

for i in "${arr[@]}"
do
	echo $i
done

#print all elements
echo "all elements"
echo "${arr[@]}"
echo "${arr[*]}"

#print 1st Element
echo "First element:"
echo "${arr[0]}"

#print a selected element
selected_index=2
echo "${arr[$selected_index]}"

#print element from range
echo "element from range"
echo "${arr[@]:2}"
