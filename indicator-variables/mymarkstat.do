* render markdown

clear all

cd "..." // Windows

cd "/Users/agrogan/Box Sync/GitHub/Stata/indicator-variables" // Mac

doedit "indicator-variables.stmd"

markstat using "indicator-variables.stmd", mathjax // HTML

graph close _all

markstat using "indicator-variables.stmd", pdf // PDF

graph close _all

markstat using "indicator-variables.stmd", docx // MS Word

graph close _all
