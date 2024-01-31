# IO

MAIN=main
INPUT=$(MAIN).tex

PACKAGES_DIR=./config/packages

BUILD_DIR=./build
OUTPUT=$(MAIN).pdf


# GLOBAL RULES

all: $(OUTPUT)

$(OUTPUT):
	latexmk -pdf -outdir=$(BUILD_DIR) -shell-escape $(INPUT)


# CLEANING

clean:
	$(RM) -r $(BUILD_DIR)

mrproper: clean
	find . -name "*.log" -type f -delete
	find . -name "*~" -type f -delete


# SPECIAL BUILT-IN RULES

.PHONY: $(OUTPUT) clean mrproper

