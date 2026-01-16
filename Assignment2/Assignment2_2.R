library(dplyr)
library(tidyr)
library(readr)
library(ggplot2)

# Reads in a data frame from the RDS file and stores it to a df
df <- read_rds("Formatted_Data.rds")

# Makes a box and whisker plot for the slopes of each protein by assay type
ggplot(data = df, mapping = aes(x = protein, y = slope, color = assay)) +
  geom_boxplot()


