#!/usr/bin/Rscript

## create the skeleton for a new R-package
# using devtools

# read command line arguments
args = commandArgs(trailingOnly=TRUE)
# check if 2 arguments where given
if (length(args)==0) {
  stop("Two arguments must be supplied (name, path)", call.=FALSE)
}
print(args)

# set working directory
setwd(args[2])

# load library
library(devtools)

# create empty package
devtools::create(args[1])

setwd(paste0(args[2],"/",args[1]))
# remove unwanted files (automatically created)
# this serves mostly for Rstudio user
files_to_remove = c(paste0(args[1],".Rproj"),
                           ".gitignore",
                           ".Rbuildignore")
for(frm in files_to_remove){
  file.remove(frm)
}

