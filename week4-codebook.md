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

## **Summary Statistics**  

### **1. General Overview**  
- **Total Records:** `r nrow(reshape_travel_data)`  
- **Unique Destination Regions:** `r n_distinct(reshape_travel_data$首站抵達地)`  
- **Unique Countries/Territories:** `r n_distinct(reshape_travel_data$細分)`  
- **Year Range:** `r min(reshape_travel_data$Year, na.rm = TRUE)` - `r max(reshape_travel_data$Year, na.rm = TRUE)`  
- **Missing Values in Number_of_Travelers:** `r sum(is.na(reshape_travel_data$Number_of_Travelers))`  

### **2. Yearly Travel Trends**  
The number of travelers varies significantly across different years, affected by various global events. Below are the key observations:  
- **2008-2019:** A steady increase in outbound travel, with Japan, Korea, and Hong Kong among the most popular destinations.  
- **2020-2021:** A sharp decline due to the COVID-19 pandemic, with travel numbers dropping drastically in 2020 and 2021.  
- **2022-2024:** A gradual recovery, with 2023 and 2024 seeing a strong rebound in travel numbers.  

### **3. Top Travel Destinations (2008-2024)**
| Destination | Peak Number of Travelers | Year of Peak |
|------------|------------------------|-------------|
| **Japan**  | 6,006,116 | 2024 |
| **Korea**  | 1,429,398 | 2024 |
| **Hong Kong** | 2,851,170 | 2008 |

---

## Notes
  - The dataset uses "NA" to indicate missing or unrecorded values.
- Some destinations may have missing values for certain years, indicating either unrecorded data or no travelers recorded for that destination.
- The dataset captures the first arrival destination, meaning that travelers may visit additional destinations afterward.
- The number of travelers can be influenced by various factors, including political relations, travel restrictions, economic conditions, and global events such as the COVID-19 pandemic (notable declines in 2020 and 2021).

