* how to choose a chart a visual guide with Stata

clear all

cd "/Users/agrogan/Desktop/GitHub/Stata/how-to-choose-a-chart-a-visual-guide-with-Stata"

set obs 100

set seed 1234

generate x = rnormal(100, 10) // standardized normal variable

generate z = rnormal(100, 10) // standardized normal variable

generate w = rbinomial(1, .25) // binomial variable

generate e = rnormal(0, .1) // normally distributed random error

generate y = x + z + w + e // generate y from other variables

egen u = cut(y), group(2) // divide into groups

egen v = cut(y), group(3) // divide into more groups

save "how-to-choose-a-chart-a-visual-guide-with-Stata.dta", replace // save data

set scheme stcolor // use a nice graph scheme

* Continuous

histogram x, ///
title("histogram") ///
caption("{stMono:histogram x}", size(large)) ///
name(myhistogram, replace)

kdensity x, ///
title("density") lwidth(thick) ///
note(" ") ///
caption("{stMono:kdensity x}", size(large)) ///
name(mydensity, replace)

graph bar x, ///
title("bar graph of mean") ///
caption("{stMono:graph bar x}", size(large)) ///
name(mybar, replace)

dotplot x, ///
title("dotplot") ///
caption("{stMono:dotplot x}", size(large)) ///
name(mydotplot, replace)

/*
graph combine myhistogram mydensity mybar mydotplot, ///
cols(1) ///
title(Continuous) ///
name(continuous, replace) ///
xsize(2)
*/

* Continuous by Categorical

histogram x, ///
by(u, rows(2) ///
title("histogram") ///
caption("{stMono:histogram x, by(u) rows(2)}", size(large)) ///
note(" ")) ///
name(myhistogram2, replace)

twoway (kdensity x, lwidth(thick)), ///
by(u, rows(2) ///
title("density") ///
note(" ") ///
caption("{stMono:twoway (kdensity x), by(u) ///}" "{stMono:rows(2)}", size(large))) ///
name(mydensity2, replace)

graph bar x, over(u) asyvars ///
title("bar graph of mean") ///
caption("{stMono:graph bar x, over(u) asyvars}", size(large)) ///
name(mybar2, replace)

dotplot x, over(u) ///
title("dotplot") ///
caption("{stMono:dotplot x, over(u)}", size(large)) ///
name(mydotplot2, replace)

/*
graph combine myhistogram2 mydensity2 mybar2 mydotplot2, ///
cols(1) ///
title(Continuous by Categorical) ///
name(continuousXcategorical, replace) ///
xsize(2)
*/

* Categorical

graph bar, over(w) asyvars ///
title("bar graph") ///
caption("{stMono:graph bar, over(w) asyvars}", size(large)) ///
name(mybar3, replace)

graph hbar, over(w) asyvars ///
title("horizontal bar graph") ///
caption("{stMono:graph hbar, over(w) asyvars}", size(large)) ///
name(mybar4, replace)

graph pie, over(w) ///
title("pie graph") ///
caption("{stMono:graph pie, over(w)}", size(large)) ///
name(mypie, replace)

twoway (scatter y x, mcolor(none)), ///
ytitle(" ") yscale(noline) ylabel(none) ymtick(none) ///
xtitle(" ") xscale(noline) xlabel(none) xmtick(none) ///
name(myblank, replace)

/*
graph combine mybar3 mybar4 mypie myblank, ///
cols(1) ///
title("Categorical") ///
name(categorical, replace) ///
xsize(2)
*/

* Categorical by Categorical

graph bar, over(w) over(u) asyvars ///
title("bar graph by group") ///
caption("{stMono:graph bar, over(w) over(u) ///}" "{stMono:asyvars}", size(large)) ///
name(mybar5, replace)

graph hbar, over(w) over(u) asyvars ///
title("horizontal bar graph by group") ///
caption("{stMono:graph hbar, over(w) over(u) ///}" "{stMono:asyvars}", size(large)) ///
name(mybar6, replace)

graph pie, over(w) by(u, imargin(zero) ///
title("pie graph by group") ///
caption("{stMono:graph pie, over(w) by(u)}", size(large)) ///
legend(off)) ///
name(mypie2, replace)

spineplot w u, ///
title("spine plot") ///
caption("{stMono:spineplot w u}", size(large)) ///
note("{stMono:spineplot} is a user written command: {stMono:ssc install spineplot}") ///
name(myspineplot, replace)

/*
graph combine mybar5 mybar6 mypie2 myspineplot, ///
cols(1) ///
title("Categorical by Categorical") ///
name(categoricalXcategorical, replace) ///
xsize(2)
*/

* Continuous by Continuous

twoway scatter y x, ///
title("scatterplot") ///
caption("{stMono:twoway scatter y x}", size(large)) ///
name(myscatter, replace)

heatplot y x, ///
title("heatplot") ///
caption("{stMono:heatplot y x}", size(large)) ///
note("{stMono:heatplot} is a user written command: {stMono:ssc install heatplot}") ///
name(myheatplot, replace)

twoway (scatter y x) (lfit y x, lwidth(thick)),  ///
title("scatterplot with linear fit") ///
caption("{stMono:twoway (scatter y x) (lfit y x)}", size(large)) ///
name(myscatter2, replace)

twoway (scatter y x) (lowess y x, lwidth(thick)),  ///
title("scatterplot with smoother") ///
caption("{stMono:twoway (scatter y x) (lowess y x)}", size(large)) ///
name(myscatter3, replace)


* assemble the final graph

* v1

/* 
graph combine continuous continuousXcategorical categorical categoricalXcategorical,  ///
title("How To Choose A Chart - A Visual Guide") ///
subtitle("With Stata Commands") ///
note("Stata commands are in {stMono:monospaced font}" ///
"https://agrogan1.github.io/" ///
"agrogan@umich.edu" ///
"I do try to present the simplest version of a command, " ///
"but in fact make use of options like {stMono:fcolor}, {stMono:mcolor}, and {stMono:lcolor}," ///
"to tweak the color and appearance of graphs." ///
"Option {stMono:asyvars} is not strictly necessary, but means that bar graphs" ///
"will have bars of different colors.") /// 
scheme(michigan) ///
commonscheme ///
cols(4) ///
scale(.6) ///
/* xsize(6) */ ///
name(combined, replace)
*/

* v2

graph combine ///
myhistogram mydensity mybar mydotplot ///
myhistogram2 mydensity2 mybar2 mydotplot2 ///
mybar3 mybar4 mypie myblank ///
mybar5 mybar6 mypie2 myspineplot ///
myscatter myheatplot myscatter2 myscatter3, ///
title("How To Choose A Chart - A Statistically Informed Visual Guide With Stata Commands") ///
subtitle("Continuous                    Continuous by Categorical       Categorical    Categorical by Categorical    Continuous by Continuous", pos(11)) ///
note("Stata is usually very intuitive. The general idea of most Stata commands is {stMono:command variable(s), options}." ///
"Often it is not necessary to use any options since the authors of Stata have done such a good job of thinking about the defaults." ///
"Stata commands are in {stMono:monospaced font}." ///
"I try to present the simplest version of a command, but this handout occasionally makes use of the option {stMono:lwidth(thick)} " ///
"to tweak the line width. I use {stMono:imargin(zero)} to tweak the placement of the pie graph." ///
"I use the {stMono:stcolor} graph scheme, available in the newest version of Stata." /// 
"{stMono:set scheme s1color} would also work well. " ///
"Option {stMono:asyvars} is not strictly necessary, but means that bar graphs will have bars of different colors." ///
"{stMono:///} represents a line break. On the command line, do not use {stMono:///} and type the command on a single line.")  ///
caption("$S_DATE, https://agrogan1.github.io/, agrogan@umich.edu",  ///
size(vsmall)) ///
colfirst ///
cols(5) ///
commonscheme ///
xsize(11) ysize(8.5) ///
name(combined, replace) ///
scale(.6)

* export

graph display combined

graph export how-to-choose-a-chart-a-visual-guide-with-Stata.pdf, replace 

graph export how-to-choose-a-chart-a-visual-guide-with-Stata.png, replace



