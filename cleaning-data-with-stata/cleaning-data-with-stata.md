% Cleaning Data With Stata
% Andy Grogan-Kaylor
% {{.1}} {{.2}}

---
geometry: margin=1 in
---

<style>h1 {color: #00274C;} h2 {color: #2F65A7;} blockquote {border-left: 5px solid #ffcb05; margin: 1.5em 10px; padding: 0.5em 10px;} code {color: red;}</style>

# Background

It sometimes seems like 80% of our work as data analysts is cleaning the data, while only 20% is the actual analysis.  Here are some Stata commands that are useful in cleaning data.

> First we simulate some data to work with, and to clean.

# Simulate Some Data


{{3}}



{{4}}



{{5}}



{{6}}



{{7}}



{{8}}

    

{{9}}

    

{{10}}


# Look At Some Of The Data


{{11}}


# Clean The Data!

## Look at Variables

When we look at variables we are looking for values that don't make sense, or that are outside the plausible range.


{{12}}



{{13}}

    

{{14}}


Notice that... 

* There are variables in which we may not have interest.
* None of the variables are labelled informatively.
* Variables do not seem to have informative value labels.
* Someone appears to 200 years old.
* There appear to be missing values in the variable `happy` that need to be recoded.

## Only `keep` The Variables Of Interest

We may only be interested in keeping some variables to keep our analytic data set more manageable.  

For this particular analysis we may wish to drop the variable called `somethingelse`.


{{15}}

   
We could also have said `drop somethingelse`.
    
## Add *Variable* Labels


{{16}}



{{17}}



{{18}}


## Create *Value* Labels


{{19}}


## Attach *Value* Labels To *Variables*

*Variables* and *value labels* can have the same names but are different things.  We add the variable label `happy` to the variable named `happy`.


{{20}}


## Recode Outliers or Values That Are Errors (`recode`)


{{21}}



{{22}}


# We `describe` and `summarize` The Data And See The Changes That Have Been Made


{{23}}

    

{{24}}

    
    
    







