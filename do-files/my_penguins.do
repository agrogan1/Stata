******************************
* Penguin Analysis
* Demonstration Do File
******************************

* So many projects have the same, or similar, workflow.
* DO YOUR THINKING IN CODE!!!

* have a question -> 
* get data ->
* process and clean data ->
* analyze data ->
* visualize data ->
* make conclusions

/* do files are useful to preserve
a record of your work. They help
to keep an audit trail of the 
decisions that you have made. */

/* do files thus serve as a way of creating an 
automated, replicable and documented workflow 
as well as finding and minimizing errors */

* A `*` character at the beginning of a line makes that line a comment

/* You can also use asterisk slash to denote multiple lines of comment */

******************************
* get data
******************************

* a good workflow habit is to
* always--or at least frequently--
* work from your raw data.

* i.e. run your script so you are always--
* or at least often--opening your raw data, 
* cleaning the data, creating new variables, 
* and then running analyses.

clear all // clear the workspace

* get data from web

use "penguins.dta", clear 

******************************
* take a look at the data
******************************

* NB if you have a lot of variables, the commands below will produce a lot of (too much) output

* you may need to `describe` or `codebook` specific variables
* you might want to only `keep` certain variables so that you have a smaller working data set

describe // describe the variables

codebook // full descriptions of all the variables; produces a lot of output

******************************
* descriptive statistics
******************************

summarize // descriptive statistics for all variables

summarize body_mass_g // descriptive statistics for this variable

tabulate species // tabulate this categorical variable

* dtable is a useful new command
* for producing tables of descriptive statistics
* be sure to denote indicator variables with an `i.`

dtable culmen_length_mm body_mass_g i.species 

******************************
* data wrangling
******************************

* find variables of interest

lookfor mass // look for a variable w a particular keyword

* sometimes it is useful to `keep` only the variables in which you have an interest
* to reduce the size of the data set

* recode variables

generate big_penguin = body_mass_g > 4000 // create a big penguin variable

tabulate big_penguin

******************************
* ANOVA
******************************

oneway body_mass_g species, tabulate

******************************
* regression
******************************

regress culmen_length_mm body_mass_g 

est store M1 // store regression estimates

regress culmen_length_mm body_mass_g i.species

est store M2 // store regression estimates

* /// indicates that a command spans multiple lines

etable, estimates(M1 M2) /// nicely formatted table of regression estimates
cstat(_r_b) /// beta's only
showstars showstarsnote // show stars and note

******************************
* graph 
******************************

graph bar body_mass_g, over(species) // bar graph

twoway scatter culmen_length_mm body_mass_g // scatterplot





