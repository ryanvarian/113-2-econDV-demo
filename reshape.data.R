# 載入必要套件
library(tidyverse)

# 讀取 CSV 檔案
df <- read.csv("歷年中華民國國民出國目的地人數統計2002-2024.csv", stringsAsFactors = FALSE)

# 轉換為長格式
df_long <- df %>%
  pivot_longer(
    cols = -c(首站抵達地, 細分),  # 排除分類變數，轉換其餘欄位
    names_to = "年份",           # 轉換後的新欄位名稱
    values_to = "人數"           # 數值存放的新欄位名稱
  ) %>%
  mutate(年份 = as.integer(年份),  # 確保年份是數值型態
         人數 = as.numeric(gsub(",", "", 人數)))  # 移除千分位逗號，轉為數值

# 查看轉換後的數據
head(df_long)

