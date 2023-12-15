# Load the packages
library(tidyverse); library(dplyr)

# Install the IDDA package from github
library(devtools)
devtools::install_github('FIRST-Data-Lab/IDDA')

# Load objects in I.county into my workspace
library(IDDA)
data(I.county)
# Make I.county a tibble with as_tibble()
I.county <- as_tibble(I.county)
# Preview the data
View(I.county)

# Install cdcfluview package to get ILI data:
install.packages("cdcfluview")
library(cdcfluview)
Ili.usa <- ilinet(region = "national", years = NULL)
# Make Ili.usa a tibble with as_tibble()
Ili.usa <- as_tibble(Ili.usa)
# Information dense summary of tbl data
dplyr::glimpse(Ili.usa)
