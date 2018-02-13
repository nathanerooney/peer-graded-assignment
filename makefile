README.md:
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
	echo "## Created On: $$(date '+%F %T')" >> README.md
	echo 
	echo "Number of lines in my guessing game: $$(wc -l guessinggame.sh | grep -o '[0-9]*')" >> README.md
