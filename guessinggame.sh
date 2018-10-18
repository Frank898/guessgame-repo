# Step 1: File counting section


ls_num=0

for i in *     # * gives array with all names in current directory

do
	if [[  -f $i ]]   #-f : check if ... is a file

		then
		let ls_num++

	fi
done

# echo $ls_num

# Step 2: Game section


