# update data driven report

library(rmarkdown) # for most rendering

library(bookdown) # for epub

library(revealjs) # reveal.js

# render home page
# 
# render("TwoPageStata.Rmd",
#        output_format = "all")

# 
# bookdown::render_book("data-driven-report-demo.Rmd", 
#                       "bookdown::gitbook",
#                       # output_dir = "book"
#                       )
# 

render("TwoPageStata.Rmd",
       output_format = revealjs_presentation(css = "revealjs.css",
                                             fig_height = 3),
       output_file = "TwoPageStata-revealjs.html")

render("TwoPageStata.Rmd",
       output_format = slidy_presentation(),
       output_file = "TwoPageStata-slidy.html")






