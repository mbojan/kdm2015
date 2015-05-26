files=kdm2015

.PHONY: default
default: $(files:=.html)

%.html: %.md
	pandoc -s -t slidy $< -o $@
