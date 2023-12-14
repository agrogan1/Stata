* render markdown

clear all

cd "/Users/agrogan/Desktop/GitHub/Stata/cleaning-data-with-stata" // bilingual!

doedit "cleaning-data-with-stata.stmd"

markstat using "cleaning-data-with-stata.stmd", mathjax // HTML

graph close _all

markstat using "cleaning-data-with-stata.stmd", pdf // PDF

graph close _all

markstat using "cleaning-data-with-stata.stmd", docx // MS Word

graph close _all
