# IO

PROJECT=logique
MAIN=main

TEX_INPUT=$(MAIN).tex
PDF_OUTPUT=$(MAIN).pdf

PACKAGES_DIR=./config/packages

BUILD_DIR=./build

MINTED_DIR=./_minted-main
INKSCAPE_DIR=./svg-inkscape


# GLOBAL RULES

all: pdf

pdf:
	latexmk -pdf -outdir=$(BUILD_DIR) -shell-escape $(TEX_INPUT)
	cp $(BUILD_DIR)/$(PDF_OUTPUT) $(PROJECT).pdf

# CLEANING

clean:
	$(RM) -r $(BUILD_DIR) $(MINTED_DIR) $(INKSCAPE_DIR)

mrproper: clean
	$(RM) $(PROJECT).pdf
	find . -name "*.log" -type f -delete
	find . -name "*~" -type f -delete


# SPECIAL BUILT-IN RULES

.PHONY: all pdf clean mrproper
