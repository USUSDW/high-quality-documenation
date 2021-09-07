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
Some detailed help message will be here...
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
                ;;
            *)
                helpMessage
                ;;

        esac
        ;;

    pdf)
        case $2 in 
            0)
                echo "case 0"
                ;;
            1)
                echo "case 1"
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
