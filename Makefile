## Copyright 2024 Michael M. Hoffman <michael.hoffman@utoronto.ca>

bindir = $(HOME)/.local/bin

scripts = bin/gcaledit bin/gcaledit-deadlines bin/gcaledit-meals bin/gcaledit-zoom bin/gcal-tab2xlsx bin/gcal-xlsx2tab

install:
	install --target-directory=$(bindir) $(scripts)

install-prereqs:
	pip install gcalcli pandas XlsxWriter

.PHONY: install install-prereqs
