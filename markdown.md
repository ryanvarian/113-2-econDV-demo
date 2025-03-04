# Data Analysis in R

## Steps to Perform Data Analysis

1.  Import Data
2.  Clean the Data
3.  Analyze the Data
4.  Visualize the Results
5.  Share Insights

## Sample Data Table

| Name    | Age | City        |
|---------|-----|-------------|
| Alice   | 25  | New York    |
| Bob     | 30  | Los Angeles |
| Charlie | 35  | Chicago     |

## R Code for Basic Data Analysis

``` r
# Load necessary libraries
library(ggplot2)

# Sample data
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  City = c("New York", "Los Angeles", "Chicago")
)

# Plot Age vs City
ggplot(data, aes(x = City, y = Age)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Age Distribution by City")
```
