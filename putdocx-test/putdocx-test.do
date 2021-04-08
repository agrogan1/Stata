clear all // clear workspace

cd "C:\Users\agrogan\Box Sync\Box Sync\GitHub\Stata\putdocx-test" // Windows

cd "/Users/agrogan/Box Sync/GitHub/Stata/putdocx-test" // Mac

use "https://github.com/agrogan1/newstuff/raw/master/mlm-R2-gutten/gutten.dta", clear

putdocx begin // start the Word document

spagplot height age_base, id(tree_ID) scheme(s1color) title("Tree Height By Age") // spaghetti plot

graph export myspaghetti.png, replace // export the graph to image

graph close _all // close all graphs

putdocx paragraph, halign(center) // need to add a paragraph before adding image

putdocx image myspaghetti.png // add the image to the Word document

mixed height age_base i.site || tree_ID: // mixed model

est store model1 // store the estimates

estimates table model1, b(%9.3f) star // nicely formatted table of results

putdocx table tbl1 = etable // add results from last estimation command

putdocx save report1, replace // close Word document



