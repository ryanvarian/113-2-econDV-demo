# Load necessary libraries
library(tidyverse)

# Summarize the dataset
summary(reshaped_travel_data)

# To get the structure of the dataset
str(reshaped_travel_data)

# Get a more specific summary of each variable (including counts for NA)
reshaped_travel_data %>%
  summarise(
    total_records = n(),
    unique_regions = n_distinct(首站抵達地),
    unique_subregions = n_distinct(細分),
    unique_years = n_distinct(Year),
    missing_values = sum(is.na(Number_of_Travelers)),
    min_year = min(Year),
    max_year = max(Year),
    total_travelers = sum(Number_of_Travelers, na.rm = TRUE)
  )


