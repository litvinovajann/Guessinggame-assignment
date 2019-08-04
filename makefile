readme.md: guessinggame.sh
	touch readme.md 

	echo "# The title of the project is **guessing game**" > readme.md
#
#
	echo "## The make was run at: " >> readme.md
	date >> readme.md
#
#
	echo "## The number of lines contained: " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
clean:
	rm readme.md
	
