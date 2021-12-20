clear all // clear workspace

* cd "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\putdocx-test" // Windows

cd "/Users/agrogan/Desktop/GitHub/Stata/putdocx-test" // Mac

use "https://github.com/agrogan1/multilevel/raw/master/mlm-R2-gutten/gutten.dta", clear

* start the Word document

putdocx begin 

putdocx paragraph, style(Title) // title style

putdocx text ("Multilevel Model With Gutten Tree Data") // title text

putdocx paragraph // new paragraph

* descriptive statistics

preserve // preserve prior data set

putdocx paragraph, style(Heading1) // heading 1 style

putdocx text ("Tree Height By Location")

putdocx paragraph // new paragraph

statsby Total=r(N) Average=r(mean) Max=r(max) Min=r(min), by(location): summarize height 

putdocx table tbl1 = data("location Total Average Max Min"), varnames ///
border(start, nil) border(insideV, nil) border(end, nil)

restore // restore prior data set

* graph (spaghetti plot)

putdocx paragraph, style(Heading1) // heading 1 style

putdocx text ("Spaghetti Plot")

spagplot height age_base, id(tree_ID) scheme(s1color) title("Tree Height By Age") // spaghetti plot

graph export myspaghetti.png, replace // export the graph to image

graph close _all // close all graphs

putdocx paragraph, halign(center) // need to add a paragraph before adding image

putdocx image myspaghetti.png, width(6) // add the image to the Word document

* multilevel model

putdocx paragraph, style(Heading1) // heading 1 style

putdocx text ("Multilevel Model")

mixed height age_base i.site || tree_ID: // mixed model

estat sd, variance post // post results as variance scale rather than log scale

est store model1 // store the estimates

estimates table model1, b(%9.3f) star // nicely formatted table of results

putdocx table tbl1 = etable // add results from last estimation command

putdocx save report1, replace // close Word document



