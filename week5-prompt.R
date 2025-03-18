library(tidyverse)

reshaped_travel_data %>%
  summarise(
    首站抵達地_unique = n_distinct(首站抵達地, na.rm = TRUE),
    首站抵達地_mode = 首站抵達地 %>% na.omit() %>% table() %>% which.max() %>% names(),
    首站抵達地_NA = sum(is.na(首站抵達地)),
    
    細分_unique = n_distinct(細分, na.rm = TRUE),
    細分_mode = 細分 %>% na.omit() %>% table() %>% which.max() %>% names(),
    細分_NA = sum(is.na(細分)),
    
    Year_min = min(Year, na.rm = TRUE),
    Year_max = max(Year, na.rm = TRUE),
    Year_unique = n_distinct(Year, na.rm = TRUE),
    Year_NA = sum(is.na(Year)),
    
    Travelers_mean = mean(Number_of_Travelers, na.rm = TRUE),
    Travelers_median = median(Number_of_Travelers, na.rm = TRUE),
    Travelers_min = min(Number_of_Travelers, na.rm = TRUE),
    Travelers_max = max(Number_of_Travelers, na.rm = TRUE),
    Travelers_sd = sd(Number_of_Travelers, na.rm = TRUE),
    Travelers_NA = sum(is.na(Number_of_Travelers))
  )

library(tidyverse)

summary_df <- reshaped_travel_data %>%
  summarise(
    # 首站抵達地
    main_region_unique = n_distinct(首站抵達地),
    main_region_freq = list(table(首站抵達地)),
    main_region_NA = mean(is.na(首站抵達地)) * 100,
    
    # 細分
    country_unique = n_distinct(細分),
    country_freq = list(table(細分)),
    country_NA = mean(is.na(細分)) * 100,
    
    # Year
    year_min = min(Year, na.rm = TRUE),
    year_max = max(Year, na.rm = TRUE),
    year_unique = n_distinct(Year),
    year_NA = mean(is.na(Year)) * 100,
    
    # Number_of_Travelers
    travelers_mean = mean(Number_of_Travelers, na.rm = TRUE),
    travelers_median = median(Number_of_Travelers, na.rm = TRUE),
    travelers_sd = sd(Number_of_Travelers, na.rm = TRUE),
    travelers_min = min(Number_of_Travelers, na.rm = TRUE),
    travelers_max = max(Number_of_Travelers, na.rm = TRUE),
    travelers_range = max(Number_of_Travelers, na.rm = TRUE) - min(Number_of_Travelers, na.rm = TRUE),
    travelers_NA = mean(is.na(Number_of_Travelers)) * 100
  )

print(summary_df)

