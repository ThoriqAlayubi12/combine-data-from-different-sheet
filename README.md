# combine data from different sheet

the script that will help you to combine data excel from different sheet into one sheet

as we know, sometimes we get the task of combining data from many data sheets into one data sheet. the following script can help to complete your work concisely and easily. as usual, I attached the dummy data for your reference and practice. 
so, here we go!

## set working directory
this set up use to lock your data directory

```
setwd("C:/Users/almo/OneDrive - World Health Organization/Downloads")
```

## install and call the packages
in this instruction, we will use some packages: readxl, purrr, writexl, and dplyr. make sure that you have to install these packages first

```
install.packages ("readxl")
install.packages ("purrr")
install.packages ("writexl")
install.packages ("dplyr")
```

then, we will call these packages

```
library(readxl)
library(purrr)
library(writexl)
library(dplyr)
```

## set up the file name
```
file <- 'latihan.xlsx'
```

## this is the main topic

```
sheets <- excel_sheets(file)
jumlah <- as.data.frame(sheets)
data_dasar <- map_df(sheets, ~ read_excel(file, sheet = .x))
m <-rep(sheets,each=nrow(jumlah))  %>% cbind()
m <- as.data.frame(m)
data_dasar$sheet_baru <- m$.
data_dasar <- rename(data_dasar, nama_sheet = "sheet_baru")
```

## export the result into new datafile in excel format

```
write_xlsx(data_dasar,"hasil latihan.xlsx")
```

and, congratulation, its done!
