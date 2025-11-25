# Nom du fichier cible
README.md: 
	@echo "# Guessing game" > README.md
	@echo "Date: $$(date '+%Y-%m-%d')" >> README.md
	@echo "Number of lines: $$(wc -l < guessinggame.sh)" >> README.md
