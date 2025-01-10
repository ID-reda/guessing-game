all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "**Date and Time:** $$(date)" >> README.md
	@echo "" >> README.md
	@echo "**Number of lines in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## Project Description" >> README.md
	@echo "This project is a simple guessing game script that prompts the user to guess how many files are in the current directory. The user receives feedback if their guess is too high or too low until they guess correctly." >> README.md

clean:
	rm -f README.md
