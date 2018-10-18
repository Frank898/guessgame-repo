#!/usr/bin/env bash
# Step 1: File counting section

function lsnum {
ls_num=0

for i in *     # * gives array with all names in current directory

do
	if [[  -f $i ]]   #-f : check if ... is a file

		then
		let ls_num++

	fi
done
}
# echo $ls_num

# Step 2: Game section

echo "What do you think?"
echo "How many Files (not Directories) are in the Current Directory"
echo "Take a guess:"
lsnum

read  guess

while [[ $guess -ne $ls_num ]]
	do
	if [[ $guess -lt $ls_num ]]
	then
		echo "Your number is too low. Please Try again:"
	elif [[ $guess -gt $ls_num ]]
	then
		echo "Your number is too high. Please Try again:"

	fi
	read guess
	done

echo "Congratulation you guessed the right number: "$ls_num
