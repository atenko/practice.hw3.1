<<dd_version: 2>>     
<<dd_include: header.txt>>

A <u>user</u> initialized a dataset with 30 observations. Distribution of $$\{Age, years \sim Normal \; (\mu=57,\sigma^2=225)}$$     

```
<<dd_do:nooutput>>
*1. data simulation
set obs 30 //initialize your dataset with 30 observations usin the command
*2. variable generation
gen age=(rnormal()*15)+57 //normal distribution 
gen age_t=(rt(_N)*15)+57 //instead of normal distribution, t-distribution, _N means degrees of freedom
*3. Graphical representation
hist age, ///
   fcolor(orange%40) /// simulated normal 
   addplot(hist age_t, fcolor(midblue%50)) /// simulated t-distribution 
   normal /// theoretical normal
   legend(on ///
      lab(1 "Sampled from Normal") ///
	  lab(2 "Theoretical Normal") ///
	  lab(3 "Sampled from t-distribution") ///
	  )
graph export histogram_age_age_t.png, replace


<</dd_do>>
```

<<dd_graph>>

```
