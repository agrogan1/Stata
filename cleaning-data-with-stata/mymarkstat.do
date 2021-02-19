* render markdown

clear all

cd "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\cleaning-data-with-stata" // Windows

cd "/Users/agrogan/Box Sync/GitHub/Stata/cleaning-data-with-stata" // Mac

doedit "cleaning-data-with-stata.stmd"

markstat using "cleaning-data-with-stata.stmd", mathjax // HTML

graph close _all

markstat using "cleaning-data-with-stata.stmd", pdf // PDF

graph close _all

markstat using "cleaning-data-with-stata.stmd", docx // MS Word

graph close _all
