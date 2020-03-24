#!/bin/bash -x

echo "welcome to arithemetic computation and sorting program"

#reading three inputs
echo "Enter three numbers: "
read -p "A: " a
read -p "B: " b
read -p "C: " c

#computing
echo "A+B*C: "$(($a+$(($b*$c)) ))
echo "A*B+C: "$(( $(($a*$b))+$c)) 
echo "C+A/B: "$(($c+$(($a/$b)) ))
echo "A%B+C: "$(( $(($a%$b))+$c)) 

#storing result of computation in dictionary
declare -A exprression
exprression[A+B*C]=$(($a+$(($b*$c)) ))
exprression[A*B+C]=$(( $(($a*$b))+$c)) 
exprression[C+A/B]=$(($c+$(($a/$b)) ))
exprression[A%B+C]=$(( $(($a%$b))+$c))

#reading values from dictionry into array
expr_ar[0]=${exprression[A+B*C]}
expr_ar[1]=${exprression[A*B+C]}
expr_ar[2]=${exprression[C+A/B]}
expr_ar[3]=${exprression[A%B+C]}

#sorting the results in descending order
echo "Array in original order"
echo ${expr_ar[@]} 
  
# Performing Bubble sort  
for ((i = 0; i<4; i++)) 
do 
    for((j=$i; j<4; j++)) 
    do
        if ((${expr_ar[$j]} <= ${expr_ar[$(($j+1))]})) 
        then
            temp=0;
            temp=${expr_ar[$j]} 
            expr_ar[$j]=${expr_ar[$(($j+1))]}   
            expr_ar[$(($j+1))]=$temp 
        fi
    done
done
  
echo "Array in descending order :"
echo ${expr_ar[@]} 

#sorting the results in ascending order
for ((i = 0; i<4; i++)) 
do 
    for((j=$i; j<4; j++)) 
    do
        if ((${expr_ar[$j]} >= ${expr_ar[$(($j+1))]})) 
        then
            temp=0;
            temp=${expr_ar[$j]} 
            expr_ar[$j]=${expr_ar[$(($j+1))]}   
            expr_ar[$(($j+1))]=$temp 
        fi
    done
done
  
echo "Array in ascending order :"
echo ${expr_ar[@]} 
