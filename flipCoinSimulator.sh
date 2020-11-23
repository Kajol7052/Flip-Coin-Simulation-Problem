#!/bin/bash/

echo "Welcome to Flip Coin Simulation Problem"
#UC-1 Flip a coin to display head or tail a Winner
heads=0
if [[ $((RANDOM%2)) -eq 0 ]]
then
       echo "Heads winner"
else
       echo "Tails winner"
fi

