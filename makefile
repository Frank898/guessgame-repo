all: README.md




README.md: guessinggame.sh
	echo -e "#The Great How-Much-Files-Are-In-Your-Directory Game\n\n" > README.md
	echo -e "##by Fränki\n\n" >> README.md
	echo "creation date" && date +%F%t%:z | cat >> README.md
	echo "Number of lines: used: " >> README.md
	 
