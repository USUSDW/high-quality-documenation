#!/bin/sh

INPUT_FILE='SOURCE.md'
OUTPUT_FILE='OUTPUT.pdf'

# The most basic form of the command that converts Markdown -> PDF
#
# pandoc --from markdown --pdf-engine=xelatex -o OUTPUT.pdf SOURCE.md


# Add a custom LaTeX header to the TeX processed PDthe TeX processed PDF. Allows you to import select packages and set select options that will only be seen by the LaTeX processor before generating the PDF.
#   This is achieved by adding the `-H [HEADER FILE]` option
#
# pandoc --from markdown --pdf-engine=xelatex -H src/header.tex -o OUTPUT.pdf SOURCE.md
