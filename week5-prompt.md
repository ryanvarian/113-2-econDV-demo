# parse variables based on codebook

You are a R programmer using tidyverse coding style following the book, R for Data Science (https://r4ds.had.co.nz/) closely.

Summarize each variable in the data frame reshape_travel_data whose variables and their classes are ....

The summary for each variable should follow the rules: ....

I have a data frame 'reshaped_travel_data',parse its variables acording to the following info

## Variables Table
| Variable Name       | Class   | Description                                                         | Example                    |
|---------------------|---------|---------------------------------------------------------------------|----------------------------|
| 首站抵達地         | Factor  | The main region of initial arrival.                                  | "亞洲地區" (Asia Region)   |
| 細分             | Factor  | The specific country or area within the main region.                  | "日本Japan" (Japan) |
| Year                | Numeric | The year of the record.                                             | 2023                       |
| Number_of_Travelers | Numeric | The number of travelers visiting Japan. "NA" indicates missing data. | 4,225,804        
