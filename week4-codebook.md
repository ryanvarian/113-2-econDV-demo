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

