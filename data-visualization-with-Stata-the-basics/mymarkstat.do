* Data Visualization With Stata The Basics

clear all

cd "C:\Users\agrogan\Desktop\GitHub\Stata\data-visualization-with-Stata-the-basics" // Windows

cd "/Users/agrogan/Desktop/Github/Stata/data-visualization-with-Stata-the-basics" // Mac

doedit data-visualization-with-Stata-the-basics.stmd

markstat using data-visualization-with-Stata-the-basics.stmd, mathjax // HTML

graph close _all

markstat using data-visualization-with-Stata-the-basics.stmd, docx // MS Wor

graph close _all

markstat using data-visualization-with-Stata-the-basics.stmd, pdf // PDF

graph close _all


