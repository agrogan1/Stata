* markstat for SSWPEG graph scheme

clear all

cd "/Users/agrogan/Desktop/GitHub/Stata/SSWPEG-graph-scheme" // bilingual :-0

doedit index.stmd

markstat using index.stmd // HTML

graph close _all

markstat using index.stmd, pdf // PDF

graph close _all
