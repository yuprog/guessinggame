# makefile for README.md
all :
	echo "# This is guessing game project" > README.md
	echo "## This project demonstrates script" >> README.md
	echo -n "- .sh file contains line(s): " >> README.md | wc -l guessinggame.sh >> README.md
	date --rfc-3339=second >> README.md | echo -n "- Make date and time: " >> README.md
