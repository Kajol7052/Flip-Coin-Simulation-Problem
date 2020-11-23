#!/bin/bash/

echo "Welcome to Flip Coin Simulation Problem"

heads=0         # initially heads is 0
tails=0         # initially tails is 0

#UC-3 Continue Loop till Head or Tail wins 21 times

while [[ $heads -lt 21 && $tails -lt 21 ]] # run the while loop till heads and tails are less then 11
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

echo "No. of times Heads wins : $heads "
echo "No. of times Tails wins : $tails "

if [[ $heads -gt $tails ]]
then
        echo "Heads wins 21 times first"
        echo "Heads wins by $((heads-tails))"
elif [[ $tails -gt $heads ]]
then
        echo "Tails wins 21 times first"
        echo "Tails wins by $((tails-heads))"
else
#UC-4 If match tie then the game continues till the difference of minimum 2 points is achieved
        diff1=$((heads-tails))
        diff2=$((tails-heads))
        while [[ $diff1 -ne 2 && $diff2 -ne 2 ]]
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
        diff1=$((heads-tails))
        diff2=$((tails-heads))
done

echo "No. of Heads wins : $heads"
echo "No. of Tails wins : $tails"

        if [[ $heads -gt $tails ]]
        then
                echo "Head wins by 2"
        elif [[ $tails -gt $heads ]]
        then
                echo "Tails wins by 2"
        fi
fi

