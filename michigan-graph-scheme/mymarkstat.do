* markstat for Michigan graph scheme

clear all

cd "/Users/agrogan/Desktop/GitHub/Stata/michigan-graph-scheme" 

doedit index.stmd

markstat using index.stmd // HTML

graph close _all

markstat using index.stmd, pdf // PDF

graph close _all
