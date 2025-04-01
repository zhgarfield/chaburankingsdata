## code to prepare `chaburankingsdata` dataset goes here

# Read data ---------------------------------------------------------------
library(readr)
library(dplyr)
chaburankingsdata <- read_csv("data-raw/raw_rankings.csv") %>%
  dplyr::select(-1)

chaburankingsmetadata <- read_csv("data-raw/chabuleadershipdata2016.csv")


# End ---------------------------------------------------------------------

usethis::use_data(chaburankingsdata, chaburankingsmetadata, overwrite = TRUE)
