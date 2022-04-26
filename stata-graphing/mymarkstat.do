* render document using markstat

* change to correct directory

clear all

cd "/Users/agrogan/Desktop/GitHub/Stata/stata-graphing" // bilingual

doedit index.stmd

* render in different formats

markstat using index.stmd  // HTML

graph close _all

* markstat using index.stmd, slides(santiago+) bundle  // slides

* graph close _all

markstat using index.stmd, pdf // pdf

graph close _all

* cleanup

rm index.do

rm index.log

rm index.pdx

rm index.smcl

rm index.synctex.gz

rm index.tex

rm index.md

* pandoc

* ! C:\Users\agrogan\AppData\Local\Pandoc\pandoc.exe -s --mathjax -i -t slidy --css "UMslidy.css" --slide-level=1 "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\index.html" -o "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\index-slidy.html" 

! /Applications/quarto/bin/pandoc -s --webtex -i -t slidy --slide-level=2 --css UMslidy.css "/Users/agrogan/Desktop/GitHub/Stata/stata-graphing/index.html" -o "/Users/agrogan/Desktop/GitHub/Stata/stata-graphing/index-slidy.html" 









