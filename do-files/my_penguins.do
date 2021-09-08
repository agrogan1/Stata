* Penguin Analysis
* Demonstration Do File

/* do files are useful to preserve
a record of your work. They help
to keep an audit trail of the 
decisions that you have made. */

/* this is a 
longer note where 
I say what I am doing */

* A `*` character at the beginning of a line makes that line a comment

/* You can also use asterisk slash to denote multiple lines of comment */

* get data

use "https://github.com/agrogan1/newstuff/raw/master/categorical/glm/penguins.dta", clear

* recode variables

generate big_penguin = body_mass_g > 4201.754 

tabulate big_penguin

* descriptive statistics

summ body_mass_g

tabulate species

* ANOVA

oneway body_mass_g species

* regression

regress body_mass_g i.species

* graph 

graph bar body_mass_g, over(species)


