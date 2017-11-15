all: create_readme

create_readme: guessinggame.sh
	echo "# Guessing game" > README.md
	echo "**Date and time make was run:**" >> README.md
	date >> README.md
	echo "**The number of lines in guessinggame is:**" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md 
