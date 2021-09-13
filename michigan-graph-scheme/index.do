capture log close
log using "index", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3q

clear all

quietly set obs 10

generate x = _n

graph bar (count), ///
over(x, axis(off)) asyvars ///
ytitle(" ") ylabel(none) ///
yscale(lcolor(none)) ///
title(Michigan Graph Scheme Colors) ///
scheme(michigan)
    
quietly graph export MichiganColorsStata.png, width(750) replace

//_4
clear all
    
use "iris.dta", clear

summarize
//_5
histogram Petal_Length, scheme(michigan)
//_6q
quietly graph export myhistogram.png, width(750) replace
//_7
histogram Petal_Length, fcolor(%50) scheme(michigan)
//_8q
quietly graph export myhistogram2.png, width(750) replace
//_9
graph bar Petal_Length, over(Species) scheme(michigan) asyvars
//_10q
quietly graph export mybargraph.png, width(750) replace
//_11
graph bar Petal_Length, over(Species) intensity(70) scheme(michigan) asyvars
//_12q
quietly graph export mybargraph2.png, width(750) replace
//_13
twoway (scatter Petal_Length Petal_Width) ///
(lfit Petal_Length Petal_Width), ///
scheme(michigan)
//_14q
quietly graph export myscatter.png, width(750) replace
//_15
twoway (scatter Petal_Length Petal_Width, mcolor(%30)) /// markers have 30% transparency
(lfit Petal_Length Petal_Width), ///
scheme(michigan)
//_16q
quietly graph export myscatter2.png, width(750) replace
//_17
graph bar Petal_Length, over(Species) scheme(michigan) asyvars legend(pos(6) rows(1))
//_18q
quietly graph export mybargraph3.png, width(750) replace
//_^
log close
