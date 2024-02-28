# IO

PROJECT=logique
MAIN=main

TEX_INPUT=$(MAIN).tex
PDF_OUTPUT=$(MAIN).pdf

PACKAGES_DIR=./config/packages

BUILD_DIR=./build

MINTED_DIR=./_minted-main
INKSCAPE_DIR=./svg-inkscape


# PRODUCTION RULES

all: pdf

pdf:
	latexmk -pdf -outdir=$(BUILD_DIR) -shell-escape $(TEX_INPUT)
	cp $(BUILD_DIR)/$(PDF_OUTPUT) $(PROJECT).pdf

debug:
	echo TODO
# ajouter overfullrule=2cm pour rendre visible les overfullbox
# rendre visible les liens cassés


# FORMATING SOURCE CODE RULES

format:
	echo TODO
# équilibre à 80 caractères chaque ligne
# remplace les indentations par des vrais tab (ou 4 caractères, mais faut s'y coller)


# CLEANING PROJECT RULES

clean:
	$(RM) -r $(BUILD_DIR) $(MINTED_DIR) $(INKSCAPE_DIR)

mrproper: clean
	$(RM) $(PROJECT).pdf
	find . -name "*.log" -type f -delete
	find . -name "*~" -type f -delete


# SPECIAL BUILT-IN RULES

.PHONY: all pdf clean mrproper
