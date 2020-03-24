#!/bin/bash

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
