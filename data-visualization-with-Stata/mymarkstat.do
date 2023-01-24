* Data Visualization With Stata

clear all

cd "/Users/agrogan/Desktop/GitHub/Stata/data-visualization-with-Stata" // bilingual!

doedit data-visualization-with-Stata.stmd

* doedit stata.sty

markstat using data-visualization-with-Stata.stmd, mathjax // HTML

graph close _all

* markstat using data-visualization-with-Stata.stmd, slides(+) // Slides

* graph close _all

markstat using data-visualization-with-Stata.stmd, pdf // PDF

graph close _all

* cleanup

rm data-visualization-with-Stata.do

rm data-visualization-with-Stata.smcl

rm data-visualization-with-Stata.tex

rm data-visualization-with-Stata.pdx

rm data-visualization-with-Stata.log

rm data-visualization-with-Stata.md

rm data-visualization-with-Stata.synctex.gz

* pandoc

* doedit spruceslidy.css

! /Applications/quarto/bin/tools/pandoc -s --mathjax -i -t slidy --css "spruceslidy.css" --slide-level=2 "/Users/agrogan/Desktop/GitHub/Stata/data-visualization-with-Stata/data-visualization-with-Stata.html" -o "/Users/agrogan/Desktop/GitHub/Stata/data-visualization-with-Stata/data-visualization-with-Stata-slidy.html" 






