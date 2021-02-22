% Installing and Using the Michigan Graph Scheme
% Andy Grogan-Kaylor
% {{.1}} {{.2}}


---
geometry: margin=1 in
---

<style>h1 {color: #00274C;} h2 {color: #2F65A7;} blockquote {border-left: 5px solid #ffcb05; margin: 1.5em 10px; padding: 0.5em 10px;} code {color: red;}</style>

# Introduction

Stata provides the use of graph schemes that improve the overall look of graphs.

See `help scheme`.

The *Michigan graph scheme* makes use of official University of Michigan colors.

# Installation

Use of the *Michigan graph scheme* depends on installation of the `lean2' graph scheme developed by Svend Juul.

Type `findit lean2` and click through on the install links to install `lean2`.
      
Then type `net from https://agrogan1.github.io/Stata` and click the links to install.

# Example Data

We are going to use the famous "iris" data collected by Edgar Anderson.


{{3}}


# Histogram


{{4}}



{{5}}

    
![Histogram Using Michigan Scheme](myhistogram.png)

# Scatterplot


{{6}}



{{7}}

    
![Scatterplot Using Michigan Scheme](myscatter.png)



