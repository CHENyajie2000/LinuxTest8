#!/bin/bash
read -a arr
for ((i=0;i<${#arr[*]};i++))
do
   for((j=i+1;j<${#arr[@]};j++))
   do
      if [[ ${arr[i]} -gt ${arr[j]} ]] ; then
	    max=${arr[i]}
	    arr[i]=${arr[j]}
	    arr[j]=$max
	fi
    done
done
echo ${arr[*]}
