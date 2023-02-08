setwd("C:/Users/almo/OneDrive - World Health Organization/Downloads")

library(readxl)
library(purrr)
library(writexl)
library(dplyr)

file <- 'latihan.xlsx'
sheets <- excel_sheets(file)
jumlah <- as.data.frame(sheets)
data_dasar <- map_df(sheets, ~ read_excel(file, sheet = .x))
m <-rep(sheets,each=nrow(jumlah))  %>% cbind()
m <- as.data.frame(m)
data_dasar$sheet_baru <- m$.
data_dasar <- rename(data_dasar, nama_sheet = "sheet_baru")
write_xlsx(data_dasar,"hasil latihan.xlsx")
