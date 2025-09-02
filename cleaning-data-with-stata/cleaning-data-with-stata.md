% Cleaning Data With Stata
% Andy Grogan-Kaylor
% {{.1}} {{.2}}

---
geometry: margin=1 in
---

<style>body {max-width: 90%;} h1 {color: #00274C;} h2 {color: #2F65A7;} p {font-size: 110%;} pre.stata {font-size: 110%; line-height: 115%;} blockquote {border-left: 5px solid #ffcb05; margin: 1.5em 10px; padding: 0.5em 10px;} code {color: red;}</style>

# Background

> It sometimes seems like 80% of our work as data analysts is cleaning the data, while only 20% is the actual analysis.  Here are some Stata commands that are useful in cleaning data.

First we simulate some data to work with, and to clean.

# Simulate Some Data

> This section is provided for illustration only, as it may be helpful to see *how* the data was simulated, and the decisions that went into simulating the data. You may also *safely ignore* this section if you like.

<button type="button" class="collapsible">Show / Hide Data Simulation Code</button>
<div class="content">


{{3}}



{{4}}



{{5}}



{{6}}



{{7}}



{{8}}

    

{{9}}

    

{{10}}


</div>

<style>
.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
}
</style>
<script>    
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
coll[i].addEventListener("click", function() {
this.classList.toggle("active");
var content = this.nextElementSibling;
if (content.style.display === "block") {
content.style.display = "none";
} else {
content.style.display = "block";
}
});
}
</script>

# Look At Some Of The Data


{{11}}


# Clean The Data!

## Look at The Data and Think About The Data (`describe`, `summarize`, `tabulate`, `codebook`, `browse`)

> When we look at variables we are looking for values that don't make sense, or that are outside the plausible range. As we are working with the data, it may sometimes be helpful to `browse` the data.


{{12}}



{{13}}

    

{{14}}

    

{{15}}


Notice that... 

* There are variables in which we may not have interest.
* None of the variables are labelled informatively.
* Variables do not seem to have informative value labels.
* Someone appears to 200 years old.
* There appear to be missing values in the variable `happy` that need to be recoded.


> Remember that the command `lookfor` is often very helpful in *looking for* a particular variable. e.g. `lookfor happy`.

## Only `keep` The Variables Of Interest

We may only be interested in keeping some variables to keep our analytic data set more manageable.  

For this particular analysis we may wish to drop the variable called `somethingelse`.


{{16}}

   
We could also have said `drop somethingelse`.
    
## Add *Variable* Labels (`label variable "..."`)


{{17}}



{{18}}



{{19}}


## Create *Value* Labels (`label define ...`)


{{20}}


## Attach *Value* Labels To *Variables* (`label values ...`)

*Variables* and *value labels* can have the same names but are different things.  We add the variable label `happy` to the variable named `happy`.


{{21}}


## Recode Outliers, Values That Are Errors, Or Values That Should Be Coded As Missing (`recode`)


{{22}}



{{23}}


# We `describe` and `summarize` The Data And See The Changes That Have Been Made


{{24}}

    

{{25}}

    
    
    







