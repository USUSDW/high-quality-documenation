#!/bin/sh 

# Declare input and output files
INPUT_FILE='SOURCE.md'
OUTPUT_FILE_HTML='OUTPUT.html'
OUTPUT_FILE_PDF='OUTPUT.pdf'
OUTPUT_FILE_TEX='OUTPUT.tex'

# Declare Colors
GREEN='\033[0;32m'
LY='\033[1;33m'
LR='\033[1;31m'
NC='\033[0m'

# Easy wrapper to print commands that are to be run 
prettyRun() {
    echo -en "\
${GREEN}\
$ $@
$NC"
    $@
}

helpMessage() {
    echo -en "\
${GREEN}\
Some detailed help message will be here at a later moment...

For now, all you need to know are these commands:
    [no arguments]  := Help Message
    html X          := Show example X in producing html documentation
                            The valid examples are currently 0-3 
    pdf X           := Show example X in producing PDF documenation
                            The valid examples aer currently 0-1
OPTIONS:
    -x              := Adding '-x' after the command will tell the build helper to 
                            execute the command it is providing information for 
                            **To execute these commands, your working directory must be 
                            within the project you are to compile.**
${LY}\
EXAMPLES:
    doc-build-helper.sh html 2      := produces html example 2
    doc-build-helper.sh html 2 -x   := produces html example 2 and runs the shown pandoc commands

$NC"
}

case $1 in
    html)
        case $2 in 
            0)
                echo -en "\
$LR\
# The most basic form of the command that converts Markdown -> HTML
#
# pandoc --from markdown --to html -o OUTPUT.html SOURCE.md
$NC"
                CMD="pandoc --from markdown --to html -o $OUTPUT_FILE_HTML $INPUT_FILE"
                ;;
            1)
                echo -en "\
$LR\
# By adding the \`-s\` option, it makes it so the output is standalone HTML, including head and body tags
#
# pandoc --from markdown --to html -s -o OUTPUT.html SOURCE.md
$NC"
                CMD="pandoc --from markdown --to html -s -o $OUTPUT_FILE_HTML $INPUT_FILE"
                ;; 
            2)
                echo -en "\
$LR\
# Making it so you can use \"GitHub Flavored Markdown\" Markdown features, instead of *just* vanilla Markdown 
# Note: Pandoc's Markdown processor seems to enable *most* features of GitHub Flavored Markdown by default.
#
# pandoc --from gfm --to html -s -o OUTPUT.html SOURCE.md
$NC"
                CMD="pandoc --from gfm --to html -s -o $OUTPUT_FILE_HTML $INPUT_FILE"
                ;;

            3)
                echo -en "\
$LR\
# Making a LaTeX supported html document by enabling MathJax. The \`-s\` flag *must* be provided.
# Note: You can create a MathJax.js file to configure MathJax, and specify the path to it 
#   with --mathjax=path/to/MathJax.js
# You can also select other online LaTeX parsers if desired. MathJax is quite feature rich, and I 
#   find it works quite well
# 
# pandoc --from markdown --to html --mathjax -s -o OUTPUT.html SOURCE.md
$NC"
                CMD="pandoc --from markdown --to html --mathjax -s -o $OUTPUT_FILE_HTML $INPUT_FILE"
                ;;
            *)
                helpMessage
                ;;

        esac
        ;;

    pdf)
        case $2 in 
            0)
                echo -en "\
$LR\
# The most basic form of the command that converts Markdown -> PDF
#
# pandoc --from markdown --pdf-engine=xelatex -o OUTPUT.pdf SOURCE.md
$NC"
                CMD="pandoc --from markdown --pdf-engine=xelatex -o $OUTPUT_FILE_PDF $INPUT_FILE"
                ;;
            1)
                echo -en "\
$LR\
# Add a custom LaTeX header to the TeX processed PDthe TeX processed PDF. Allows you to import select packages and set select options that will only be seen by the LaTeX processor before generating the PDF.
#   This is achieved by adding the `-H [HEADER FILE]` option
#
# pandoc --from markdown --pdf-engine=xelatex -H src/header.tex -o OUTPUT.pdf SOURCE.md
$NC"
                CMD="pandoc --from markdown --pdf-engine=xelatex -H src/header.tex -o $OUTPUT_FILE_PDF $INPUT_FILE"
                ;;
            *)
                helpMessage
                ;;
        esac
        ;;
    *)
        helpMessage
        ;;
esac


if [[ $3 == "-x" ]]; then
    # If the user wants us to e'x'ecute the command, we do it
    prettyRun $CMD
fi
