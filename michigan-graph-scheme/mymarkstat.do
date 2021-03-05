* markstat for Michigan graph scheme

clear all

cd "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\michigan-graph-scheme" // Windows

cd "/Users/agrogan/Box Sync/GitHub/Stata/michigan-graph-scheme" // Mac

doedit index.stmd

markstat using index.stmd

* markstat using index.stmd, pdf

* markstat using index.stmd, slides(santiago+) bundle

graph close _all
