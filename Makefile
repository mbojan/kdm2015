files=kdm2015

.PHONY: default
default: $(files:=.html)

%.html: %.md
	Rscript -e 'rmarkdown::render("$<")'
