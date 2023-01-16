read -p "Enter 1st Number: " a
read -p "Enter 2nd Number: " b
read -p "Enter 3rd Number: " c
compute1=$(($a+$b*$c))
echo $compute1
compute2=$(($a*$b+$c))
echo $compute2
compute3=$(($c+$a/$b))
echo $compute3
compute4=$(($a%$b+$c))
echo $compute4

declare -A result
result[0]="$compute1"
result[1]="$compute2"
result[2]="$compute3"
result[3]="$compute4"
 echo "result=${result[0]}"
for ((i=0; i<4; i++));
do
array [$i]=$(( ${result[$i]} ))
done
echo "array=${array[0]}"
echo "array=${array[@]}"

echo "Sorted Array Value in Descending Order"
printf '%s\n' "${array[@]}" | sort -nr
echo "Sorted Array Value in Descending Order"
printf '%s\n' "${array[@]}" | sort -nr

echo "Sorted Array Value in Descending Order"
printf '%s\n' "${array[@]}" | sort -n

