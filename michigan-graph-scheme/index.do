capture log close
log using "index", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3q

clear all

quietly set obs 9

generate x = _n
    
quietly save "graphdemo.dta", replace

graph bar (count), ///
over(x, axis(off)) asyvars ///
ytitle(" ") ylabel(none) ///
yscale(lcolor(none)) ///
title(Michigan Graph Scheme Colors) ///
scheme(michigan) ///
ysize(1.5) scale(2) ///
name(michigan, replace)
    
quietly graph export MichiganColorsStata.png, name("michigan") width(2000) replace

//_4
clear all
    
use "iris.dta", clear

summarize
//_5
histogram Petal_Length, scheme(michigan)
//_6q
quietly graph export myhistogram.png, width(1500) replace
//_7
histogram Petal_Length, fcolor(%50) scheme(michigan)
//_8q
quietly graph export myhistogram2.png, width(1500) replace
//_9
graph bar Petal_Length, over(Species) scheme(michigan) asyvars
//_10q
quietly graph export mybargraph.png, width(1500) replace
//_11
graph bar Petal_Length, over(Species) intensity(70) scheme(michigan) asyvars
//_12q
quietly graph export mybargraph2.png, width(1500) replace
//_13
twoway (scatter Petal_Length Petal_Width) ///
(lfit Petal_Length Petal_Width), ///
scheme(michigan)
//_14q
quietly graph export myscatter.png, width(1500) replace
//_15
twoway (scatter Petal_Length Petal_Width, mcolor(%30)) /// markers have 30% transparency
(lfit Petal_Length Petal_Width), ///
scheme(michigan)
//_16q
quietly graph export myscatter2.png, width(1500) replace
//_17
graph bar Petal_Length, over(Species) scheme(michigan) asyvars legend(pos(6) rows(1))
//_18q
quietly graph export mybargraph3.png, width(1500) replace
//_19
twoway (scatter Petal_Length Petal_Width, mcolor("112 32 130 %30")) /// markers are Amethyst with 30% transparency
(lfit Petal_Length Petal_Width, lcolor("87 82 148")), /// Violet line
scheme(michigan)
//_20q
quietly graph export myscatter3.png, width(1500) replace
//_21q

use "graphdemo.dta", clear
    
graph bar (count), ///
over(x, axis(off)) asyvars ///
ytitle(" ") ylabel(none) ///
yscale(lcolor(none)) ///
title(Michigan Graph Scheme Colors) ///
scheme(michigan) ///
ysize(1.5) scale(2) ///
name(michigan, replace)

graph bar (count), ///
over(x, axis(off)) asyvars ///
ytitle(" ") ylabel(none) ///
yscale(lcolor(none)) ///
title(Michigan2 Graph Scheme Colors) ///
scheme(michigan2) ///
ysize(1.5) scale(2) ///
name(michigan2, replace)
    
quietly graph export MichiganColorsStata2.png, ///
name("michigan2") width(1500) replace
    
quietly graph combine michigan michigan2, ///
colfirst cols(1) ///
scale(.5) scheme(michigan) ///
name(michigancombined, replace)
    
quietly graph export MichiganColorsStata3.png, ///
name("michigancombined") width(1500) replace
    
//_^
log close
