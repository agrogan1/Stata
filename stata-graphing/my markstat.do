* render document using markstat

* change to correct directory

clear all

cd "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing" // Windows

cd "/Users/agrogan/Box Sync/GitHub/Stata/stata-graphing" // Mac

doedit index.stmd

* render in different formats

markstat using index.stmd, bundle  // HTML

graph close _all

* markstat using index.stmd, slides(santiago+) bundle  // slides

* graph close _all

markstat using index.stmd, pdf // pdf

graph close _all

* pandoc

! C:\Users\agrogan\AppData\Local\Pandoc\pandoc.exe -s --mathjax -i -t slidy --css "UMslidy.css" --slide-level=1 "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\index.html" -o "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\index-slidy.html" 
