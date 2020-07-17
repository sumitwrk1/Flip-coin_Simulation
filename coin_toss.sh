#Flip Coin Simulator.

#!/bin/bash -x

hwin=0

twin=0


flip(){

toss=$((RANDOM%2))

if [ $toss -eq 1 ]

then

	echo "HEAD"

	((hwin++))

else

	echo "TAILS"

	((twin++))

fi

}

#loop For Simulator

while [ $hwin -lt 21 ] && [ $twin -lt 21 ]

do

    flip

done

echo "NO OF TIME HEAD WIN"$hwin

echo "NO OF TIME TAIL WIN"$twin



if [ $hwin -eq $twin ]

then

	flip

else



if [ $hwin -gt $twin ]

	then

		echo "head won by"$((hwin-twin))

	else

		echo "tails won by"$((hwin-twin))

	fi

fi

