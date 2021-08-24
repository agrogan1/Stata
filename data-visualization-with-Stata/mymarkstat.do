* Data Visualization With Stata

clear all

cd "/Users/agrogan/Desktop/newstuff/data-visualization-with-Stata"

doedit data-visualization-with-Stata.stmd

* doedit stata.sty

markstat using data-visualization-with-Stata.stmd, mathjax // HTML

graph close _all

* markstat using data-visualization-with-Stata.stmd, slides(+) // Slides

* graph close _all

markstat using data-visualization-with-Stata.stmd, pdf // PDF

graph close _all

* pandoc

doedit spruceslidy.css

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "spruceslidy.css" --slide-level=2 "/Users/agrogan/Desktop/newstuff/data-visualization-with-Stata/data-visualization-with-Stata.html" -o "/Users/agrogan/Desktop/newstuff/data-visualization-with-Stata/data-visualization-with-Stata-slidy.html" 



