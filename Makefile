# IO

JOBNAME        = logique
DEBUG_JOBNAME  = debug

TEX_INPUT      = main.tex

CONTENT_FILES  = $(shell find ./content -type f)
IMAGES_FILES   = $(shell find ./images -type f)
PREAMBLE_FILES = $(shell find ./preamble -type f)
TEX_DEPS       = $(TEX_INPUT) .latexmkrc $(CONTENT_FILES) $(IMAGES_FILES) $(PREAMBLE_FILES)

PACKAGES_DIR   = ./preamble/packages/

BUILD_DIR      = ./build/

MINTED_DIR     = ./_minted-main/
INKSCAPE_DIR   = ./svg-inkscape/


# LaTeX COMPILER

LATEXMK       = latexmk
LATEXMK_FLAGS = -pdf -outdir=$(BUILD_DIR) -shell-escape


# RULES FORCED TO BE REPLAYES EVERY TIME

.PHONY: all debug format clean mrproper


# PRODUCTION RULES

all: $(JOBNAME).pdf

debug: $(DEBUG_JOBNAME).pdf

$(JOBNAME).pdf: $(BUILD_DIR)$(JOBNAME).pdf
	cp $(BUILD_DIR)$(JOBNAME).pdf ./

$(DEBUG_JOBNAME).pdf: $(BUILD_DIR)$(DEBUG_JOBNAME).pdf
	cp $(BUILD_DIR)$(DEBUG_JOBNAME).pdf ./

$(BUILD_DIR)$(JOBNAME).pdf: $(TEX_DEPS)
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(JOBNAME) $(TEX_INPUT)

$(BUILD_DIR)$(DEBUG_JOBNAME).pdf: $(TEX_DEPS)
	$(LATEXMK) $(LATEXMK_FLAGS) \
		-jobname=$(DEBUG_JOBNAME) \
		-pretex="\AtBeginDocument{\debugtrue}" -usepretex \
		$(TEX_INPUT)


# FORMATING SOURCE CODE RULES

format:
	@echo TODO
# équilibre à 80 caractères chaque ligne
# remplace les indentations par des vrais tab (ou 4 caractères, mais faut s'y coller)


# CLEANING PROJECT RULES

clean:
	$(RM) -r $(BUILD_DIR) $(MINTED_DIR) $(INKSCAPE_DIR)

mrproper: clean
	$(RM) $(JOBNAME).pdf $(DEBUG_JOBNAME).pdf
	find . -name "*.log" -type f -delete
	find . -name "*~" -type f -delete
