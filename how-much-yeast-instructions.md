% How to use how-much-yeast.R to calculate yeast culture dilutions
% Nicholas McGlincy
% October 11th, 2016
---
header-includes:
    - \usepackage{setspace}
    - \doublespacing
---

1. Make a 1:8 dilution of your overnight culture in 1 mL by adding 125 µL culture to 875 µL YEPD.
2. Measure the OD~600~ of the dilution relative to YEPD using the spectrophotometer.
3. Download the repository from <https://github.com/nmcglincy/how-much-yeast>.
4. The "_repo_" contains a number of files:
    1. `2015-09-03-yeast-ODs.csv` -- an example output file containing the volume of media and culture to add for each strain.
    2. `how-much-yeast.R` -- the R script that actually does the calculations.
    3. `sample-bash-command` -- a text file containing an example of how to invoke `how-much-yeast.R` from the command line.
    4. `tfrmn-graph-template.R` -- a template for plotting OD~600~ readings in R.
    5. `yeast.csv` -- an example how the overnight culture OD~600~ measurements should be recorded in order to be used by `how-much-yeast.R`.
5. Open Terminal and use the `cd` command to navigate to the folder containing your OD readings in csv format.
6. Invoke how-much-yeast.R thus:

```{bash, eval=FALSE}
Rscript /path-to/how-much-yeast.R <CSV file with ODs> \
    <dilution factor> \
    <desired OD> \
    <desired volume>
```

For example:

```{bash, eval=FALSE}
Rscript /path-to/how-much-yeast.R yeast.csv 8 0.1 100
```

`how-much-yeast.R` will print the result to the standard out (the screen), and write a csv containing the results.
