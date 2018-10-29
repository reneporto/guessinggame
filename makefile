README.md:
	echo "# Project: " *.sh  >> README.md
	date  >> README.md
	cat guessinggame.sh | wc -l  >> README.md

clean: 
	rm README.md
