******************************
* Penguin Analysis
* Demonstration Do File
******************************

* A great deal of research consists of the following steps:
* have a question -> get data -> process and clean data ->
* visualize data -> analyze data -> make conclusions

/* do files are useful to preserve
a record of your work. They help
to keep an audit trail of the 
decisions that you have made. */

/* do files thus serve as a way of creating an 
automated, replicable and documented workflow 
as well as finding and minimizing errors */

/* this is a longer note where I say what I am doing */

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

use "https://github.com/agrogan1/Stata/raw/master/do-files/penguins.dta", clear 

******************************
* take a look at the data
******************************


* NB if you have a lot of variables, the commands below will produce a lot of (too much) output

* you may need to describe specific variables

describe

******************************
* data wrangling
******************************

* find variables of interest

lookfor mass // look for a variable w a particular keyword

* sometimes it is useful to `keep` only the variables in which you have an interest
* to reduce the size of the data set

* recode variables

generate big_penguin = body_mass_g > 4201.754 // create a big penguin variable

tabulate big_penguin

******************************
* descriptive statistics
******************************

summarize body_mass_g

tabulate species

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

est table M1 M2, b(%7.4f) star // nicely formatted table of regression estimates

******************************
* graph 
******************************

graph bar body_mass_g, over(species) scheme(s1color)







