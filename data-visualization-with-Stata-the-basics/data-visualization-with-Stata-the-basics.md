% Data Visualization With Stata (The Basics)
% Andy Grogan-Kaylor
% {{.1}}

---
geometry: margin=.5in
---

# Introduction 

<style>body {max-width: 90%;} h1 {color: #00274C;} h2 {color: #2F65A7;} blockquote {border-left: 5px solid #ffcb05; margin: 1.5em 10px; padding: 0.5em 10px;} code {color: red;}</style>

99% of data visualization work seems to consist of creating bar graphs (`graph bar y, over(x)`) and scatterplots (`twoway scatter y x`). (For the sake of completeness, I am also going to mention histograms (`histogram x`).)  

This is a quick guide to these ideas using the [Palmer Penguins Data](https://github.com/allisonhorst/palmerpenguins/blob/master/README.md).

![Palmer Penguins Illustration from @allison_horst](lter_penguins.png){width=20%}  ![Culmen Depth from @allison_horst](culmen_depth.png){width=20%}


{{2}}


I am not a particular fan of Stata's default graph schemes, so I am going to make use of the graph scheme entitled `s1color`.


{{3}}

    
# Histogram: `histogram x`


{{4}}



{{5}}


![histogram](myhistogram.png){width=25%}

\newpage
# Bar Graph: `graph bar`

## Counting Up Numbers In Each Group: `graph bar, over(x)`


{{6}}



{{7}}

![bar graph](mybar1.png){width=30%}

## Average Of A Continuous Variable Across Groups: `graph bar y, over(x)`


{{8}}



{{9}}


![bar graph](mybar2.png){width=30%}

# Scatterplot: `twoway scatter y x`


{{10}}



{{11}}


![scatterplot](myscatter.png){width=30%}

# Linear Fit: `twoway lfit y x`


{{12}}



{{13}}


![scatterplot](mylinear.png){width=30%}
