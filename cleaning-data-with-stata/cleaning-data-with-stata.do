capture log close
log using "cleaning-data-with-stata", smcl replace
//_1
display c(current_date)
//_2
display c(current_time)
//_3
clear all 
//_4
set obs 100 // 100 observations
//_5
generate id = _n // random id 
//_6
generate age = rnormal(50,10) // random generated age
//_7
replace age = 200 in 1 // someone is 200 years old!
//_8
generate happy = runiformint(1,5) // randomly generated happiness
//_9
replace happy = 999 in 10 // simulate a missing value
//_10
generate somethingelse = rnormal(0, 1) // something else!
//_11
list in 1/10 // list first 10 observations
//_12
describe // describe the data
//_13
summarize // descriptive statistics
//_14
tabulate happy // tabulation of this particular categorical variable
//_15
codebook happy // VERY detailed view of this particular categorical variable
//_16
keep id age happy // keep only relevant variables
//_17
label variable id "ID" // label variable
//_18
label variable age "Age in Years" // label variable
//_19
label variable happy "Happiness Scale" // label variable
//_20
label define happy 1 "Rarely" 2 "Sometimes" 3 "Often" 4 "Always" // create value label
//_21
label values happy happy // attach VALUE LABEL happy to VARIABLE happy
//_22
recode happy (999 = .) // recode values as missing
//_23
recode age (100/max = 100) // age is topcoded at 100 (may or may not be plausible)
//_24
describe
//_25
summarize
//_^
log close
