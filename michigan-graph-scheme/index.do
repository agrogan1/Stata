capture log close
log using "index", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3

use "iris.dta", clear

summarize

//_4

histogram Petal_Length, scheme(michigan)

//_5q
    
quietly graph export myhistogram.png, width(750) replace

//_6

twoway (scatter Petal_Length Petal_Width) ///
(lfit Petal_Length Petal_Width), ///
scheme(michigan)

//_7q
    
quietly graph export myscatter.png, width(750) replace

//_^
log close
