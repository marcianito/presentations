######################
## WritingRpackages ##
######################

## prior to this you can:
# create directory with package name
# create description file
# create a directory for scripts (must be named 'R')
# or use the function below

library(devtools)

## create your package
create("./reseaRch")

## load your package
load_all("./reseaRch")

## -> create functions and store them in the 'R' folder

## create docu
library(roxygen2)
document("./reseaRch")

sums(2,3)
sums()

# use help from 'sums'-function

## -> create MORE functions and store them in the 'R' folder

plotsums(2,5)

# to update (create) helpfiles just run again:
document("./reseaRch")

# ...
