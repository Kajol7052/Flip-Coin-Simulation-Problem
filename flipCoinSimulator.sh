#!/bin/bash/

echo "Welcome to Flip Coin Simulation Problem"

#UC-2 Using Loop Show number of times Head and Tail won
heads=0         # initially heads is 0
tails=0         # initially tails is 0
echo -n "Enter number of times to flip the coin: "
read n
for (( i=0;i<n;i++ )) # run the while loop till heads and tails are less then 11
do
        temp=$((1+RANDOM%2)); # randomly generating heads or tails
        if [ $temp -eq 1 ]      # if temp is equal to 1
        then
        heads=$((heads+1))      # then increment heads
        fi
        if [ $temp -eq 2 ]      # if temp is equal to 2
        then
        tails=$((tails+1))      # then increment tails
        fi
done
echo "Head count : $heads"
echo "Tail count : $tails"
