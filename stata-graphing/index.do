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
histogram Petal_Length
//_5q
quietly graph export myhistogram.png, width(500) replace
//_6
graph bar, over(Species)
//_7q
quietly graph export mybargraph.png, width(500) replace
//_8
twoway scatter Petal_Length Petal_Width
//_9q
quietly graph export myscatter.png, width(500) replace
//_10
recode Petal_Length ///
(min/3.758 = 0 "below mean") ///
(3.758/max = 1 "above mean"), ///
generate(Petal_Group) // dichotomize Petal_Length
    
graph bar, over(Species) over(Petal_Group)
//_11q
quietly graph export mybargraph2.png, width(500) replace
//_12
graph bar Petal_Length, over(Species)
//_13q
quietly graph export mybargraph3.png, width(500) replace
//_14
twoway scatter Petal_Length Petal_Width, scheme(s1rcolor) ///
title("Petal Length by Petal Width") ///
xtitle("Petal Width") ytitle("Petal Width") ///
caption("Iris Data") 
//_15q
quietly graph export graphtitleslabels.png, width(500) replace
//_16
twoway scatter Petal_Length Petal_Width, scheme(economist)
//_17q
quietly graph export econscatter.png, width(500) replace
//_18
twoway scatter Petal_Length Petal_Width, scheme(sj)
//_19q
quietly graph export sjscatter.png, width(500) replace
//_20
twoway scatter Petal_Length Petal_Width, scheme(s1color)
//_21q
quietly graph export s1colorscatter.png, width(500) replace
//_22
twoway scatter Petal_Length Petal_Width, scheme(s1rcolor)
//_23q
quietly graph export s1rcolorscatter.png, width(500) replace
//_24
twoway scatter Petal_Length Petal_Width, scheme(lean2)
//_25q
quietly graph export lean2scatter.png, width(500) replace
//_26
twoway (scatter Petal_Length Petal_Width) /// 
(lfit Petal_Length Petal_Width), scheme(michigan)
//_27q
quietly graph export michiganscatter.png, width(500) replace
//_28
twoway (scatter Petal_Length Petal_Width, msymbol(0) mcolor(red)) ///
(lfit Petal_Length Petal_Width), ///
scheme(lean2) 
//_29q
quietly graph export lean2Ascatter.png, width(500) replace
//_30
twoway scatter Sepal_Length Sepal_Width Petal_Width Petal_Length, /// 
color(%50 %50 %50) /// transparency 
title("Multiple Iris Characteristics") /// title
scheme(s1rcolor) // scheme
//_31q
quietly graph export s1rcolorAscatter.png, width(500) replace
//_^
log close
