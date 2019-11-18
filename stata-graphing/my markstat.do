* render document using markstat

markstat using index.stmd, bundle // HTML

markstat using index.stmd, slides(santiago+) bundle // slides

* CSS:  <style>.slide code {color: red;}</style>
* CSS:  <style> code {color: red;}</style>

graph close _all

markstat using index.stmd, pdf

graph close _all

* bundle using index.html
* rm index.html
* copy index-b.html index.html
* rm index-b.html





