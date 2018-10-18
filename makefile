all: clean README.md

README.md: guessinggame.sh
	echo "# The Great How-Much-Files-Are-In-Your-Directory Game" > README.md
	echo "" >> README.md
	echo "## by Fränki" >> README.md
	echo "" >> README.md
	echo "" >> README.md
	echo "creation date" && date +%F%t%:z | cat >> README.md
	echo "Number of lines used: " >> README.md
	cat guessinggame.sh | wc -l >> README.md 
	
clean:
	rm README.md
