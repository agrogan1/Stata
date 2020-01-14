* render document using markstat

markstat using index.stmd, bundle // HTML

graph close _all

markstat using index.stmd, slides(santiago+) bundle // slides

graph close _all

markstat using index.stmd, docx // Word

graph close _all

* CSS:  <style>.slide code {color: red;}</style>
* CSS:  <style> code {color: red;}</style>

markstat using index.stmd, pdf

graph close _all

// bundle using index.html
// rm index.html
// copy index-b.html index.html
// rm index-b.html

// C:\Program Files\RStudio\bin\pandoc\ 

// pandoc -s --webtex -i -t slidy "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\index.html" -o "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\slidy.html"

// pandoc -s --mathml -i -t dzslides "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\index.html" -o "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\dzslides.html"

// pandoc -s --mathjax -i -t revealjs "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\index.html" -o "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\stata-graphing\revealjs.html"
