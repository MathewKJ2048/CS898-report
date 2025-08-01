
DOCUMENT = report

all: pdf

pdf: $(DOCUMENT).pdf

$(DOCUMENT).pdf: $(DOCUMENT).tex
    # Second pass - incorporate citations
	pdflatex $(DOCUMENT).tex
    # Third pass - resolve cross-references
	pdflatex $(DOCUMENT).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot $(DOCUMENT).pdf

.PHONY: all clean pdf