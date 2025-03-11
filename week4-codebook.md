# Codebook for Japan Travelers Dataset

## Dataset Description
This dataset captures the number of travelers visiting Japan from 2002 to 2024. The data is categorized by the primary arrival region, with specific information on Japan under the Asian region. The dataset includes annual records and reflects the impact of various global events on travel patterns, such as the 2020 COVID-19 pandemic.

## Variables Table
| Variable Name       | Class   | Description                                                         | Example                    |
|---------------------|---------|---------------------------------------------------------------------|----------------------------|
| 首站抵達地         | Factor  | The main region of initial arrival.                                  | "亞洲地區" (Asia Region)   |
| 細分             | Factor  | The specific country or area within the main region.                  | "日本Japan" (Japan) |
| Year                | Integer | The year of the record.                                             | 2023                       |
| Number_of_Travelers | Integer | The number of travelers visiting Japan. "NA" indicates missing data. | 4,225,804                  |

## Notes
- "NA" in the `Number_of_Travelers` column denotes missing or unavailable data for that year.
- The significant drop in travelers in 2020 and 2021 aligns with the COVID-19 pandemic and related travel restrictions.
- The dataset shows a gradual recovery in traveler numbers in 2022 and 2023, with a substantial increase projected for 2024.

# To get the structure of the dataset
> str(reshaped_travel_data)
spc_tbl_ [943 × 4] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
 $ 首站抵達地         : chr [1:943] "亞洲地區" "亞洲地區" "亞洲地區" "亞洲地區" ...
 $ 細分               : chr [1:943] "日本Japan" "日本Japan" "日本Japan" "日本Japan" ...
 $ Year               : num [1:943] 2002 2003 2004 2005 2006 ...
 $ Number_of_Travelers: num [1:943] NA NA NA NA NA ...
 - attr(*, "spec")=
  .. cols(
  ..   首站抵達地 = col_character(),
  ..   細分 = col_character(),
  ..   Year = col_double(),
  ..   Number_of_Travelers = col_double()
  .. )
 - attr(*, "problems")=<externalptr> 
> # Get a more specific summary of each variable (including counts for NA)
> reshaped_travel_data %>%
+   summarise(
+     total_records = n(),
+     unique_regions = n_distinct(首站抵達地),
+     unique_subregions = n_distinct(細分),
+     unique_years = n_distinct(Year),
+     missing_values = sum(is.na(Number_of_Travelers)),
+     min_year = min(Year),
+     max_year = max(Year),
+     total_travelers = sum(Number_of_Travelers, na.rm = TRUE)
+   )
# A tibble: 1 × 8
  total_records unique_regions unique_subregions unique_years missing_values min_year max_year total_travelers
          <int>          <int>             <int>        <int>          <int>    <dbl>    <dbl>           <dbl>
1           943              6                41           23            201     2002     2024       535342704
> 