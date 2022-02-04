capture log close
log using "data-visualization-with-Stata-the-basics", smcl replace
//_1
display c(current_date)
//_2
clear all

use "https://github.com/agrogan1/Stata/raw/master/data-visualization-with-Stata-the-basics/penguins.dta", clear
//_3
set scheme s1color // use s1color scheme
//_4
histogram body_mass_g, title("Body Mass of Penguins") xtitle("Body Mass")
//_5q
quietly: graph export myhistogram.png, width(1000) replace
//_6
graph bar, over(species) title("Penguin Species")
//_7q
quietly: graph export mybar1.png, width(1000) replace
//_8
graph bar body_mass_g, over(species) title("Body Mass of Penguin Species")
//_9q
quietly: graph export mybar2.png, width(1000) replace
//_10
twoway scatter culmen_length_mm body_mass_g, title("Penguin Culmen Length by Body Mass") xtitle("Body Mass") ytitle("Culmen Length")
//_11q
quietly: graph export myscatter.png, width(1000) replace
//_12
twoway lfit culmen_length_mm body_mass_g, title("Penguin Culmen Length by Body Mass") xtitle("Body Mass") ytitle("Culmen Length")
//_13q
quietly: graph export mylinear.png, width(1000) replace
//_^
log close
