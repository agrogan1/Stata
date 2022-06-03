* Data Visualization With Stata The Basics

clear all

cd "/Users/agrogan/Desktop/Github/Stata/data-visualization-with-Stata-the-basics" 

doedit data-visualization-with-Stata-the-basics.stmd

markstat using data-visualization-with-Stata-the-basics.stmd, mathjax // HTML

graph close _all

markstat using data-visualization-with-Stata-the-basics.stmd, docx // MS Word

graph close _all

markstat using data-visualization-with-Stata-the-basics.stmd, pdf // PDF

graph close _all


