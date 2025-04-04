## code to prepare `chaburankingsdata` dataset goes here

# Read data ---------------------------------------------------------------
library(readr)

chaburankingsdata <- read_csv("data-raw/rankings_ties_long.csv")

chaburankingsmetadata <- read_csv("data-raw/chabuleadershipdata2016.csv")




# End ---------------------------------------------------------------------

usethis::use_data(chaburankingsdata, chaburankingsmetadata, overwrite = TRUE)
