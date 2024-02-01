# IO

MAIN=main
INPUT=$(MAIN).tex

PACKAGES_DIR=./config/packages

BUILD_DIR=./build
OUTPUT=$(MAIN).pdf

PROJECT=logique

MINTED_DIR=./_minted-main
INKSCAPE_DIR=./svg-inkscape


# GLOBAL RULES

all: $(OUTPUT)

$(OUTPUT):
	latexmk -pdf -outdir=$(BUILD_DIR) -shell-escape $(INPUT)
	makeglossaries -d $(BUILD_DIR) $(MAIN)
	latexmk -pdf -outdir=$(BUILD_DIR) -shell-escape $(INPUT)
	cp $(BUILD_DIR)/$(OUTPUT) $(PROJECT).pdf


# CLEANING

clean:
	$(RM) -r $(BUILD_DIR) $(MINTED_DIR) $(INKSCAPE_DIR)

mrproper: clean
	$(RM) $(PROJECT).pdf
	find . -name "*.log" -type f -delete
	find . -name "*~" -type f -delete


# SPECIAL BUILT-IN RULES

.PHONY: all $(OUTPUT) clean mrproper

