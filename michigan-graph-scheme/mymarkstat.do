* markstat for Michigan graph scheme

clear all

cd "C:\Users\agrogan\Desktop\GitHub\Stata\michigan-graph-scheme" // Windows

cd "/Users/agrogan/Desktop/GitHub/Stata/michigan-graph-scheme" // Mac

doedit index.stmd

markstat using index.stmd // HTML

* markstat using index.stmd, pdf // PDF

* markstat using index.stmd, slides(santiago+) bundle

graph close _all
