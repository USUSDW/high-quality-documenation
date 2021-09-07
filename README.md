# Rich Markdown Documentation With Pandoc
This repository is dedicated towards teaching how to create easy and high quality documentation with Markdown. Utilizing the Pandoc tool, we can integrate Markdown with LaTeX to produce HTML pages and quality PDFs. 

## Requirements
To follow along with this presentation, you will need the following tools:

0.  [Pandoc](https://pandoc.org/)
    Available on all operating systems
1.  A LaTeX Engine
    I recommend using [TeXLive](https://www.tug.org/texlive/), however many other LaTeX engines are out there. These instructions will utilize the `xelatex` LaTeX PDF engine, which can be substituted for alternative LaTeX engines if required.
2.  A text editor of your choice!

Please note that installing a LaTeX engine may take some time, dependent on the selected LaTeX system and the packages it installs.

## `doc-build-helper.sh`

**Usage of this tool is not required to learn from this presentation and repository. It serves as a presentation tool, and as a guided assistant to certain commands discussed in this presentation. This script will not work if you do not have a Bash/Zsh shell. You can follow along manually with the pandoc commands.**

This script will be used to help us build the documents with Pandoc, and will give additional information surrounding the commands we will be running while learning Pandoc's Markdown conversion tools. Invoke `doc-build-helper.sh` as an executable with `./doc-build-helper.sh` to view a help message regarding how to use this build assistant, and some brief information on each of the available documentation build's. The build assistant can provide more than just information: it can also invoke the `pandoc` commands it's telling you about as well!

For best usage of the `doc-build-helper.sh` script, ensure it is an executable and symlink to it in a location that belongs to your $PATH.

```
$ ln -s full/path/to/doc-build-helper.sh ~/.local/bin/doc-build-helper
``` 

As the `doc-build-helper.sh` script **requires your working directory to be in the directory you want to build**, having access to this script on your $PATH will save you from having to type a relative or absolute path to the script.


## Sources and References
*   [jdhao's Converting Markdwon to Beautiful PDF with Pandoc](https://jdhao.github.io/2019/05/30/markdown2pdf_pandoc/)
*   [Pandoc Manual](https://pandoc.org/MANUAL.html)
*   [Markdown Project](https://daringfireball.net/projects/markdown)