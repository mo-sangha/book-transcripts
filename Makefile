# By default, build all the various output formats.
.PHONY: all
all: transcripts.pdf transcripts.html transcripts.epub

# For development, ask Typst to rebuild the PDF output when anything changes.
.PHONY: watch
watch:
	typst watch main.typ transcripts.pdf --features html --font-path ./fonts

transcripts.pdf: $(wildcard *.typ chapters/*.typ images/* bib.yml)
	# The HTML feature is required for the "target()" function to exist.
	typst compile main.typ transcripts.pdf --features html --font-path ./fonts

transcripts.html: $(wildcard *.typ chapters/*.typ images/* bib.yml)
	typst compile main.typ transcripts.html --features html --font-path ./fonts

transcripts.epub: transcripts.html
	pandoc --from html --to epub --output transcripts.epub transcripts.html

# Runs a spellchecker over source files, using "dictionary.txt" for project-specific vocabulary.
# Adding terms in aspell will automatically add to dictionary.txt.
.PHONY: spell
spell: chapters/*
	for file in $^; do \
		LANG=en_US.utf8 aspell --home-dir=. --personal=dictionary.txt check "$${file}"; \
	done

.PHONY: clean
clean:
	rm -f transcripts.pdf transcripts.html transcripts.epub  # Target output files.
	rm -f .aspell.en.prepl  # aspell nonsense.
	rm -f chapters/*.bak  # aspell nonsense.
	rm -f chapters/*.new  # aspell nonsense.
