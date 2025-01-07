README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "### Details" >> README.md
	echo "- **Date and Time**: $$(date)" >> README.md
	echo "- **Lines**: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
