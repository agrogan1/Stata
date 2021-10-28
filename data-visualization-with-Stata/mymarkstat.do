* Data Visualization With Stata

clear all

cd "C:\Users\agrogan\Desktop\GitHub\Stata\data-visualization-with-Stata" // Windows

cd "/Users/agrogan/Desktop/GitHub/Stata/data-visualization-with-Stata" // Mac

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

! /Applications/RStudio.app/Contents/MacOS/pandoc/pandoc -s --mathjax -i -t slidy --css "spruceslidy.css" --slide-level=2 "/Users/agrogan/Desktop/GitHub/Stata/data-visualization-with-Stata/data-visualization-with-Stata.html" -o "/Users/agrogan/Desktop/GitHub/Stata/data-visualization-with-Stata/data-visualization-with-Stata-slidy.html" 
