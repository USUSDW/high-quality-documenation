#!/bin/sh

INPUT_FILE='SOURCE.md'
OUTPUT_FILE='OUTPUT.html'

# The most basic form of the command that converts Markdown -> HTML
#
# pandoc --from markdown --to html -o OUTPUT.html SOURCE.md

# By adding the `-s` option, it makes it so the output is standalone HTML, including head and body tags
#
# pandoc --from markdown --to html -s -o OUTPUT.html SOURCE.md

# Making it so you can use "GitHub Flavored Markdown" Markdown features, instead of *just* vanilla Markdown 
# Note: Pandoc's Markdown processor seems to enable *most* features of GitHub Flavored Markdown by default.
#
# pandoc --from gfm --to html -s -o OUTPUT.html SOURCE.md

# Making a LaTeX supported html document by enabling MathJax. Note, the `-s` flag *must* be provided.
# Note: You can create a MathJax.js file to configure MathJax, and specify the path to it 
#   with --mathjax=path/to/MathJax.js
# You can also select other online LaTeX parsers if desired. MathJax is quite feature rich, and I 
#   find it works quite well
# 
# pandoc --from markdown --to html --mathjax -s -o OUTPUT.html SOURCE.md

 
